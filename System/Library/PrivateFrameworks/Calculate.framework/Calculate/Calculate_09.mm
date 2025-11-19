void functionLeftRotate(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionLeftRotate_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionLeftRotate_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (a2[19])
  {
    goto LABEL_7;
  }

  v5 = -1;
  v6 = 21;
  while (v5 != 14)
  {
    v7 = a2[v6];
    ++v5;
    v6 += 2;
    if (v7)
    {
      if (v5 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v10 = -1;
  v11 = 21;
  while (v10 != 14)
  {
    v12 = a3[v11];
    ++v10;
    v11 += 2;
    if (v12)
    {
      if (v10 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v8 = *(result + 32);
    if (g_GeneratingConvertTerm)
    {
      v9 = 11;
    }

    else
    {
      v9 = 9;
    }

    *(v8 + 204) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else if (v13 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v21 = 0;
      v14 = __bid128_to_uint64_int(v15, v16, &v21);
    }

    else if (v13 == 4)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    v17 = *a3;
    if (*a3 == 1)
    {
      result = rint(*(a3 + 4));
    }

    else if (v17 == 2)
    {
      v18 = *(a3 + 6);
      v19 = *(a3 + 7);
      v22 = 0;
      result = __bid128_to_uint64_int(v18, v19, &v22);
    }

    else if (v17 == 4)
    {
      result = *(a3 + 8);
    }

    else
    {
      result = 0;
    }

    v20 = *(v3 + 32);
    *v20 = 4;
    *(v20 + 64) = __ROR8__(v14, -result);
  }

  return result;
}

void functionRightRotate(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionRightRotate_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

unint64_t __functionRightRotate_block_invoke(unint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (a2[19])
  {
    goto LABEL_7;
  }

  v5 = -1;
  v6 = 21;
  while (v5 != 14)
  {
    v7 = a2[v6];
    ++v5;
    v6 += 2;
    if (v7)
    {
      if (v5 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (a3[19])
  {
    goto LABEL_7;
  }

  v10 = -1;
  v11 = 21;
  while (v10 != 14)
  {
    v12 = a3[v11];
    ++v10;
    v11 += 2;
    if (v12)
    {
      if (v10 < 0xF)
      {
        goto LABEL_7;
      }

      break;
    }
  }

  if (g_GeneratingConvertTerm == 1)
  {
LABEL_7:
    v8 = *(result + 32);
    if (g_GeneratingConvertTerm)
    {
      v9 = 11;
    }

    else
    {
      v9 = 9;
    }

    *(v8 + 204) = v9;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else if (v13 == 2)
    {
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v21 = 0;
      v14 = __bid128_to_uint64_int(v15, v16, &v21);
    }

    else if (v13 == 4)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 0;
    }

    v17 = *a3;
    if (*a3 == 1)
    {
      result = rint(*(a3 + 4));
    }

    else if (v17 == 2)
    {
      v18 = *(a3 + 6);
      v19 = *(a3 + 7);
      v22 = 0;
      result = __bid128_to_uint64_int(v18, v19, &v22);
    }

    else if (v17 == 4)
    {
      result = *(a3 + 8);
    }

    else
    {
      result = 0;
    }

    v20 = *(v3 + 32);
    *v20 = 4;
    *(v20 + 64) = __ROR8__(v14, result);
  }

  return result;
}

void functionNOT(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionNOT_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionNOT_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 9;
    goto LABEL_12;
  }

  v5 = -1;
  v6 = 21;
  do
  {
    if (v5 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_15:
      g_isTrivial = 0;
      v9 = *a2;
      if (*a2 == 1)
      {
        v10 = rint(*(a2 + 4));
      }

      else if (v9 == 2)
      {
        v11 = *(a2 + 6);
        v12 = *(a2 + 7);
        v20 = 0;
        v10 = __bid128_to_uint64_int(v11, v12, &v20);
      }

      else if (v9 == 4)
      {
        v10 = *(a2 + 8);
      }

      else
      {
        v10 = 0;
      }

      v13 = *(a1 + 32);
      *v13 = 4;
      *(v13 + 64) = ~v10;
      v14 = *(a2 + 38);
      v15 = *(a2 + 42);
      v16 = *(a2 + 46);
      *(v13 + 136) = *(a2 + 34);
      *(v13 + 184) = v16;
      *(v13 + 168) = v15;
      *(v13 + 152) = v14;
      result = *(a2 + 18);
      v18 = *(a2 + 22);
      v19 = *(a2 + 26);
      *(v13 + 120) = *(a2 + 30);
      *(v13 + 104) = v19;
      *(v13 + 88) = v18;
      *(v13 + 72) = result;
      return result;
    }

    v7 = a2[v6];
    ++v5;
    v6 += 2;
  }

  while (!v7);
  if (v5 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v3 = 11;
LABEL_12:
  v8 = *(a1 + 32);
  *(v8 + 204) = v3;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x7C00000000000000;
  return result;
}

void functionNEG(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionNEG_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionNEG_block_invoke(uint64_t a1, int *a2)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 9;
    goto LABEL_12;
  }

  v5 = -1;
  v6 = 21;
  do
  {
    if (v5 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

LABEL_15:
      g_isTrivial = 0;
      v9 = *a2;
      if (*a2 == 1)
      {
        v10 = rint(*(a2 + 4));
      }

      else if (v9 == 2)
      {
        v11 = *(a2 + 6);
        v12 = *(a2 + 7);
        v20 = 0;
        v10 = __bid128_to_uint64_int(v11, v12, &v20);
      }

      else if (v9 == 4)
      {
        v10 = *(a2 + 8);
      }

      else
      {
        v10 = 0;
      }

      v13 = *(a1 + 32);
      *v13 = 4;
      *(v13 + 64) = -v10;
      v14 = *(a2 + 38);
      v15 = *(a2 + 42);
      v16 = *(a2 + 46);
      *(v13 + 136) = *(a2 + 34);
      *(v13 + 184) = v16;
      *(v13 + 168) = v15;
      *(v13 + 152) = v14;
      result = *(a2 + 18);
      v18 = *(a2 + 22);
      v19 = *(a2 + 26);
      *(v13 + 120) = *(a2 + 30);
      *(v13 + 104) = v19;
      *(v13 + 88) = v18;
      *(v13 + 72) = result;
      return result;
    }

    v7 = a2[v6];
    ++v5;
    v6 += 2;
  }

  while (!v7);
  if (v5 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v3 = 11;
LABEL_12:
  v8 = *(a1 + 32);
  *(v8 + 204) = v3;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x7C00000000000000;
  return result;
}

void functionFlip(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionFlip_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

__n128 __functionFlip_block_invoke(uint64_t a1, int *a2, int *a3)
{
  if (!a3[19])
  {
    v5 = -1;
    v6 = 21;
    while (v5 != 14)
    {
      v7 = a3[v6];
      ++v5;
      v6 += 2;
      if (v7)
      {
        if (v5 < 0xF)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    if (!a2[19])
    {
      v10 = -1;
      v11 = 21;
      while (v10 != 14)
      {
        v12 = a2[v11];
        ++v10;
        v11 += 2;
        if (v12)
        {
          if (v10 < 0xF)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      if (g_GeneratingConvertTerm != 1)
      {
        g_isTrivial = 0;
        v13 = *a2;
        if (*a2 == 1)
        {
          result.n128_f64[0] = rint(*(a2 + 4));
          v14 = result.n128_f64[0];
        }

        else if (v13 == 2)
        {
          v15 = *(a2 + 6);
          v16 = *(a2 + 7);
          v33 = 0;
          v14 = __bid128_to_uint64_int(v15, v16, &v33);
        }

        else if (v13 == 4)
        {
          v14 = *(a2 + 8);
        }

        else
        {
          v14 = 0;
        }

        v18 = *a3;
        if (*a3 == 1)
        {
          result.n128_f64[0] = rint(*(a3 + 4));
          v19 = result.n128_f64[0];
        }

        else if (v18 == 2)
        {
          v20 = *(a3 + 6);
          v21 = *(a3 + 7);
          v34 = 0;
          v19 = __bid128_to_uint64_int(v20, v21, &v34);
        }

        else if (v18 == 4)
        {
          v19 = *(a3 + 8);
        }

        else
        {
          v19 = 0;
        }

        if (v14 == 8)
        {
          if (v19)
          {
            v25 = 0;
            do
            {
              v23 = v19 | (v25 << 8);
              v25 = v23;
              v24 = v19 >= 0x100;
              v19 >>= 8;
            }

            while (v24);
            goto LABEL_43;
          }
        }

        else
        {
          if (v14 != 16)
          {
            v26 = *(a1 + 32);
            *v26 = 2;
            *(v26 + 48) = 0;
            *(v26 + 56) = 0x7C00000000000000;
            return result;
          }

          if (v19)
          {
            v22 = 0;
            do
            {
              v23 = v19 | (v22 << 16);
              v22 = v23;
              v24 = v19 >= 0x10000;
              v19 >>= 16;
            }

            while (v24);
            goto LABEL_43;
          }
        }

        v23 = 0;
LABEL_43:
        v27 = *(a1 + 32);
        *v27 = 4;
        *(v27 + 64) = v23;
        v28 = *(a3 + 38);
        v29 = *(a3 + 42);
        v30 = *(a3 + 46);
        *(v27 + 136) = *(a3 + 34);
        *(v27 + 184) = v30;
        *(v27 + 168) = v29;
        *(v27 + 152) = v28;
        result = *(a3 + 18);
        v31 = *(a3 + 22);
        v32 = *(a3 + 26);
        *(v27 + 120) = *(a3 + 30);
        *(v27 + 104) = v32;
        *(v27 + 88) = v31;
        *(v27 + 72) = result;
        return result;
      }
    }
  }

LABEL_7:
  v8 = *(a1 + 32);
  if (g_GeneratingConvertTerm)
  {
    v9 = 11;
  }

  else
  {
    v9 = 9;
  }

  *(v8 + 204) = v9;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x7C00000000000000;
  return result;
}

void functionCompose(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionCompose_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionCompose_block_invoke(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *(a1 + 32);
  *v5 = *a2;
  v16 = 0;
  if (v4 == 1)
  {
    if (my_rnd_mode)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v6 = __binary64_to_bid128(v8, my_fpsf, *(a2 + 4));
  }

  else if (v4 == 2)
  {
    v6 = *(a2 + 6);
    v7 = *(a2 + 7);
  }

  else
  {
    if (v4 == 4)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = 0x3040000000000000;
  }

  v9 = UnitCountCompose(v6, v7, (a2 + 18), (v5 + 72), &v16);
  v11 = v10;
  v17 = 0;
  v12 = __bid128_to_uint64_int(v9, v10, &v17);
  v13 = *(a1 + 32);
  *(v13 + 64) = v12;
  if (my_rnd_mode)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  *(v13 + 32) = __bid128_to_binary64(v9, v11, v14, my_fpsf);
  *(v13 + 48) = v9;
  *(v13 + 56) = v11;
  if (v16)
  {
    v15 = *(a1 + 32);
    *(v15 + 204) = v16;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0x7C00000000000000;
  }
}

void _functionConvert(int *a1, int *a2, int a3)
{
  v108 = *MEMORY[0x1E69E9840];
  v107 = 0u;
  v105 = 0u;
  memset(v106, 0, sizeof(v106));
  v104 = 0u;
  memset(v103, 0, sizeof(v103));
  v101 = 0u;
  memset(v102, 0, sizeof(v102));
  memset(v100, 0, sizeof(v100));
  evaluateTree(*(a1 + 2), v103);
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = 1;
  g_GeneratingConvertTerm = 1;
  g_PowNestingLevel = 0;
  v8 = g_unitSuggestions;
  v9 = g_unitSuggestionsSet;
  v70 = v6;
  v71 = v5;
  g_unitSuggestions = v6;
  g_unitSuggestionsSet = v5;
  v10 = a2;
  evaluateTree(*(a1 + 3), v100);
  g_unitSuggestions = v8;
  g_unitSuggestionsSet = v9;
  g_GeneratingConvertTerm = 0;
  *(a2 + 1) = functionNoOp;
  *a2 = *a1;
  my_rnd_mode = 1;
  my_fpsf[0] = 0;
  v11 = HIDWORD(v107);
  if (HIDWORD(v107) || (v11 = HIDWORD(v102[17])) != 0)
  {
LABEL_3:
    v10[51] = v11;
    goto LABEL_4;
  }

  if ((~*(&v105 + 1) & 0x7C00000000000000) != 0 && (~*(&v101 + 1) & 0x7C00000000000000) != 0)
  {
    v72 = 0;
    v77 = *&v102[9];
    v78 = *&v102[11];
    v79 = *&v102[13];
    v80 = *&v102[15];
    v73 = *&v102[1];
    v74 = *&v102[3];
    v75 = *&v102[5];
    v76 = *&v102[7];
    v14 = UnitCountDecompose(1, 0x3040000000000000, &v102[1], &v96, &v72);
    v68 = v15;
    if (v103[0] == 1)
    {
      if (my_rnd_mode)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v16 = __binary64_to_bid128(v20, my_fpsf, *&v104);
    }

    else if (v103[0] == 2)
    {
      v19 = *(&v105 + 1);
      v16 = v105;
    }

    else
    {
      if (v103[0] == 4)
      {
        v16 = v106[0];
      }

      else
      {
        v16 = 0;
      }

      v19 = 0x3040000000000000;
    }

    v21 = UnitCountDecompose(v16, v19, &v106[1], v95, &v72);
    if (a3)
    {
      v23 = 0;
    }

    else
    {
      v23 = &v72;
    }

    v24 = UnitCountConvert(v21, v22, v95, &v96, v94, v23);
    if ((~v25 & 0x7C00000000000000) != 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = a3;
    }

    if (v26 == 1)
    {
      v27 = treeDecimalValue(v100);
      v29 = UnitCountMultiply(&v106[1], v27, v28, &v102[1], (a2 + 18), &v72);
      v31 = v30;
      v32 = treeDecimalValue(v103);
      if (my_rnd_mode)
      {
        v34 = 4;
      }

      else
      {
        v34 = 0;
      }

      v35 = __bid128_mul(v32, v33, v29, v31, v34, my_fpsf);
      v36 = *(v10 + 38);
      v90 = *(v10 + 34);
      v91 = v36;
      v37 = *(v10 + 46);
      v92 = *(v10 + 42);
      v93 = v37;
      v38 = *(v10 + 22);
      v86 = *(v10 + 18);
      v87 = v38;
      v39 = *(v10 + 30);
      v88 = *(v10 + 26);
      v89 = v39;
      v41 = UnitCountCompose(v35, v40, &v86, v10 + 18, &v72);
    }

    else
    {
      if (my_rnd_mode)
      {
        v43 = 4;
      }

      else
      {
        v43 = 0;
      }

      v66 = __bid128_div(v24, v25, v14, v68, v43, my_fpsf);
      v67 = v44;
      v45 = g_unitSuggestions;
      v65 = v14;
      v46 = g_unitSuggestionsSet;
      g_unitSuggestions = v70;
      g_unitSuggestionsSet = v71;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v47 = UnitCountCompose(1, 0x3040000000000000uLL, &v96, &v86, &v72);
      v64 = v48;
      g_unitSuggestions = v45;
      g_unitSuggestionsSet = v46;
      if (my_rnd_mode)
      {
        v49 = 4;
      }

      else
      {
        v49 = 0;
      }

      v50 = __bid128_div(1uLL, 0x3040000000000000uLL, v65, v68, v49, my_fpsf);
      v52 = __bid128_sub(v50, v51, v47, v64, v49, my_fpsf);
      v54 = v53;
      v55 = __bid128_div(1uLL, 0x3040000000000000uLL, 0x28uLL, 0x3040000000000000uLL, v49, my_fpsf);
      if (__bid128_quiet_less(v52, v54 & 0x7FFFFFFFFFFFFFFFLL, v55, v56, my_fpsf))
      {
        v77 = v90;
        v78 = v91;
        v79 = v92;
        v80 = v93;
        v73 = v86;
        v74 = v87;
        v75 = v88;
        v76 = v89;
      }

      v57 = v78;
      *(v10 + 34) = v77;
      *(v10 + 38) = v57;
      v58 = v80;
      *(v10 + 42) = v79;
      *(v10 + 46) = v58;
      v59 = v74;
      *(v10 + 18) = v73;
      *(v10 + 22) = v59;
      v60 = v76;
      *(v10 + 26) = v75;
      *(v10 + 30) = v60;
      v41 = v66;
      v42 = v67;
    }

    v17 = v10[51];
    if (!v17)
    {
      v61 = v72;
      if (v72)
      {
        v10[51] = v72;
        v17 = v61;
      }
    }

    v62 = *v10;
    if (*v10 == 1)
    {
      if (my_rnd_mode)
      {
        v63 = 4;
      }

      else
      {
        v63 = 0;
      }

      *(v10 + 4) = __bid128_to_binary64(v41, v42, v63, my_fpsf);
      v17 = v10[51];
    }

    else if (v62 == 2)
    {
      *(v10 + 6) = v41;
      *(v10 + 7) = v42;
    }

    else if (v62 == 4)
    {
      LODWORD(v86) = 0;
      *(v10 + 8) = __bid128_to_uint64_int(v41, v42, &v86);
    }

    v7 = v26 ^ 1;
    if (!v17)
    {
      if ((my_fpsf[0] & 4) != 0)
      {
        v17 = 1;
      }

      else if ((my_fpsf[0] & 8) != 0)
      {
        v17 = 3;
      }

      else if ((my_fpsf[0] & 0x10) != 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = 4 * (my_fpsf[0] & 1);
      }

      v10[51] = v17;
    }
  }

  else
  {
    *(a2 + 4) = 0x7FF8000000000000;
    *(a2 + 6) = 0;
    *(a2 + 7) = 0x7C00000000000000;
    v17 = a2[51];
  }

  if (!v17)
  {
    if ((~*(v10 + 7) & 0x7C00000000000000) != 0)
    {
      v18 = *(v10 + 4);
      goto LABEL_4;
    }

    v11 = 4;
    goto LABEL_3;
  }

LABEL_4:
  if (g_usingNewAPI == 1)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = v103;
    v12 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
    *&v96 = MEMORY[0x1E69E9820];
    *(&v96 + 1) = 3221225472;
    v97 = __functionCompose_block_invoke;
    v98 = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v99 = v12;
    evaluateUnary(&v73, v12, &v96);
    if (v7)
    {
      g_beforeConvertTree = v12;
      g_isTrivial = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void functionFail(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionFail_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

uint64_t __functionFail_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0x7C00000000000000;
  *(*(result + 32) + 204) = 7;
  return result;
}

void functionUnsupportedMath(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionUnsupportedMath_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

uint64_t __functionUnsupportedMath_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 204) = 15;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0x7C00000000000000;
  return result;
}

void sub_1C1F13B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CalculateLogForCategory()
{
  if (CalculateLogForCategory_loggingToken != -1)
  {
    dispatch_once(&CalculateLogForCategory_loggingToken, &__block_literal_global_113);
  }

  v1 = CalculateLogForCategory_logObjects_0;

  return v1;
}

uint64_t __CalculateLogForCategory_block_invoke()
{
  CalculateLogForCategory_logObjects_0 = os_log_create("com.apple.calculate", "Base");

  return MEMORY[0x1EEE66BB8]();
}

id CalculateTermDecimalString(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 decimalValue];
  if ((~v2 & 0x7C00000000000000) != 0)
  {
    __bid128_to_string(v6, v1, v2);
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id CalculateTermFormatDecimalString(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v24 = 0;
  v7 = a1;
  v8 = objc_opt_new();
  v9 = [v7 UTF8String];

  v10 = __bid128_from_string(v9, 4, &v24);
  if (v24)
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    [v8 setDecimalValue:{v10, v11}];
    v15 = [CalculateResult decimalNumberWithDecimal128:v13, v14];
    [v8 setValue:v15];

    v16 = [CalculateKeys keysWithOptions:v5];
    v17 = [(CalculateKeys *)v16 numberFormatter];
    if (!v17)
    {
      v18 = [(CalculateKeys *)v16 locales];
      v19 = v18;
      if (!v18 || ![v18 count])
      {
        v20 = +[Localize systemLocales];

        v19 = v20;
      }

      v21 = [v19 firstObject];
      v17 = [CalculateResult defaultNumberFormatter:v21];
    }

    v22 = objc_opt_new();
    [v22 setNumberFormatter:v17];
    [v22 setAutoScientificNotation:-[CalculateKeys autoScientificNotation](v16)];
    [v22 setScientificNotationFormat:-[CalculateKeys scientificNotationFormat](v16)];
    [v8 setResult:v22];
    [v8 setForceScientificNotation:v6];
    v12 = [v8 formattedValue];
  }

  return v12;
}

void sub_1C1F19E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__461(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1F2626C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0xE28], 8);
  _Block_object_dispose(&STACK[0x778], 8);
  _Block_object_dispose(&STACK[0x7F8], 8);
  _Block_object_dispose(&STACK[0x840], 8);
  _Block_object_dispose(&STACK[0x8B0], 8);
  _Block_object_dispose(&STACK[0x8E0], 8);
  _Block_object_dispose(&STACK[0x9C0], 8);
  _Unwind_Resume(a1);
}

void sub_1C1F268C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL CalculateExpressionError(char *a1, int a2, char a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  if (!a1 || !a4)
  {
    v22 = CalculateLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1E73000, v22, OS_LOG_TYPE_INFO, "Calculate: CalculateExpressionError no expression or result", buf, 2u);
    }

    goto LABEL_15;
  }

  if (strchr(a1, 35))
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v12 = strlen(a1);
  v13 = malloc_type_calloc(v12 + 1, 1uLL, 0x100004077774924uLL);
  v14 = v13;
  v15 = *a1;
  v16 = v13;
  if (*a1)
  {
    v17 = (a1 + 1);
    v18 = v13;
    do
    {
      *v18++ = v15;
      v19 = *v17++;
      v15 = v19;
    }

    while (v19);
    *v18 = 0;
    v16 = v18 - 1;
    if (v18 > v13)
    {
      do
      {
        v20 = *v16 - 32;
        if (v20 > 0x3E)
        {
          break;
        }

        if (((1 << v20) & 0x101) == 0)
        {
          if (((1 << v20) & 0x400000000000EC00) == 0)
          {
            break;
          }

          goto LABEL_18;
        }

        v21 = v16 > v13;
        *v16-- = 0;
      }

      while (v21);
    }
  }

  else
  {
LABEL_18:
    *v16 = 0;
  }

  v25 = objc_autoreleasePoolPush();
  +[Calculate _lock];
  g_allowUnits = 0;
  g_allowPartialExpressions = 1;
  g_allowCurrencyConversions = 1;
  g_usingNewAPI = 0;
  if ((a3 & 7) == 2)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if ((a3 & 7) == 4)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = calc_parser_read_buffer(v14, v12, v27, a2, a4, a5, &v31);
  v29 = CalculateLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v33 = v28;
    _os_log_impl(&dword_1C1E73000, v29, OS_LOG_TYPE_INFO, "Calculate: CalculateExpressionError ret = %d", buf, 8u);
  }

  +[Calculate _unlock];
  if (a6)
  {
    *a6 = v31;
    v30 = CalculateLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v33 = v31;
      _os_log_error_impl(&dword_1C1E73000, v30, OS_LOG_TYPE_ERROR, "Calculate: CalculateExpressionError error = %d", buf, 8u);
    }
  }

  objc_autoreleasePoolPop(v25);
  free(v14);
  result = (v28 | v31) == 0;
LABEL_16:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CalculateInternationalExpression(void *a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 copy];
  v10 = [v9 length];
  v11 = malloc_type_calloc(v10, 2uLL, 0x1000040BDFB0063uLL);
  [v9 getCharacters:v11];
  if (v10)
  {
    v12 = v11;
    v13 = v10;
    while (1)
    {
      v14 = *v12;
      if (u_isdigit(v14))
      {
        break;
      }

      if (v14 == 1643)
      {
        v15 = 46;
        goto LABEL_7;
      }

LABEL_8:
      ++v12;
      if (!--v13)
      {
        goto LABEL_9;
      }
    }

    v15 = u_charDigitValue(v14) + 48;
LABEL_7:
    *v12 = v15;
    goto LABEL_8;
  }

LABEL_9:
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:v11 length:v10 freeWhenDone:1];
  v17 = CalculateExpressionError([v16 UTF8String], a2, a3, a4, a5, 0);

  return v17;
}

void sub_1C1F2B82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v61 - 176), 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 256), 8);
  _Block_object_dispose((v61 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t calculateScanRequestLock_block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 tokenType] == 2 || objc_msgSend(v1, "tokenType") == 53)
  {
    v2 = [v1 text];
    if ([v2 length] == 1)
    {
      v3 = scan_options_stop__apostropheSet;
      v4 = [v1 text];
      v5 = [v3 characterIsMember:{objc_msgSend(v4, "characterAtIndex:", 0)}];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __Block_byref_object_copy__886(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t characterTypeForCharacter(void *a1)
{
  v1 = a1;
  v2 = [digitToCharacterType objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else if ([v1 rangeOfCharacterFromSet:symbolSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "rangeOfCharacterFromSet:", hebrewSet) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v1 rangeOfCharacterFromSet:punctuationSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v1 rangeOfCharacterFromSet:superscriptSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 1;
      }

      else
      {
        v4 = 4;
      }
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

uint64_t calc_yyparse(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v172 = 0;
  v170 = 0;
  v1 = 0u;
  v178[50] = *MEMORY[0x1E69E9840];
  v2 = v177;
  v3 = 200;
  v4 = &yypact;
  memset(__dst, 0, 504);
  yynerrs = 0;
  yychar = -2;
  __src = v177;
  v5 = v178;
  v6 = v178;
  while (1)
  {
    *v5 = v1;
    if (&v6[2 * v3 - 2] <= v5)
    {
      if (v3 >> 4 > 0x270)
      {
        v159 = 2;
        goto LABEL_546;
      }

      v8 = v1;
      if (2 * v3 >= 0x2710)
      {
        v9 = 10000;
      }

      else
      {
        v9 = 2 * v3;
      }

      v10 = malloc_type_malloc(1026 * v9 + 1023, 0x1000040BDFB0063uLL);
      if (!v10)
      {
        v159 = 2;
        goto LABEL_546;
      }

      v11 = v10;
      v12 = v4;
      v13 = v9;
      v14 = ((v5 - v6) >> 1) + 1;
      memcpy(v10, v6, 2 * v14);
      v15 = v13;
      v16 = (2 * v13 + 1023) & 0x7FFFFFFFFFFFFC00;
      v17 = v6;
      v18 = &v11[v16];
      memcpy(&v11[v16], __src, v14 << 10);
      if (v17 != v178)
      {
        free(v17);
      }

      v5 = &v11[2 * v14 - 2];
      v2 = &v18[1024 * v14 - 1024];
      if (v15 <= v14)
      {
        v159 = 1;
        v6 = v11;
        goto LABEL_546;
      }

      v3 = v15;
      __src = v18;
      v6 = v11;
      v4 = v12;
      v7 = &unk_1EDC30000;
      v1 = v8;
    }

    else
    {
      v7 = &unk_1EDC30000;
    }

    v19 = v4[v1];
    v174 = v3;
    if (v19 == -114)
    {
      goto LABEL_264;
    }

    v20 = yychar;
    if (yychar == -2)
    {
      v21 = v7[3432];
      v172 = v19;
      v169 = v6;
      if (v21 == 1)
      {
        v22 = v1;
LABEL_17:
        v23 = yy_c_buf_p;
      }

      else
      {
        v7[3432] = 1;
        if ((yy_start & 1) == 0)
        {
          yy_start = 1;
        }

        if (!calc_yyin)
        {
          calc_yyin = *MEMORY[0x1E69E9850];
        }

        v22 = v1;
        if (!calc_yyout)
        {
          calc_yyout = *MEMORY[0x1E69E9858];
        }

        if (!yy_buffer_stack || (buffer = *yy_buffer_stack) == 0)
        {
          calc_yyensure_buffer_stack();
          buffer = calc_yy_create_buffer(calc_yyin);
          *yy_buffer_stack = buffer;
        }

        yy_n_chars = buffer[4];
        v23 = buffer[2];
        yy_c_buf_p = v23;
        calc_yytext = v23;
        calc_yyin = *buffer;
        yy_hold_char = *v23;
      }

LABEL_28:
      *v23 = yy_hold_char;
      v25 = yy_start;
      v26 = v23;
      while (1)
      {
        v27 = v23;
        do
        {
LABEL_30:
          v28 = yy_ec[*v26];
          if (yy_accept[v25])
          {
            yy_last_accepting_state = v25;
            yy_last_accepting_cpos = v26;
          }

          v29 = v25;
          v30 = yy_base[v25] + v28;
          if (v25 != yy_chk[v30])
          {
            do
            {
              v29 = yy_def[v29];
              if (v29 >= 531)
              {
                v28 = *(&yy_meta + v28);
              }

              v30 = yy_base[v29] + v28;
            }

            while (yy_chk[v30] != v29);
          }

          v25 = yy_nxt[v30];
          ++v26;
        }

        while (v25 != 530);
        while (2)
        {
          v23 = yy_last_accepting_cpos;
          v31 = yy_last_accepting_state;
LABEL_38:
          v32 = yy_accept[v31];
          calc_yytext = v27;
          calc_yyleng = &v23[-v27];
          yy_hold_char = *v23;
          *v23 = 0;
          yy_c_buf_p = v23;
          v58 = v31 == 3;
          v1 = v22;
          v19 = v172;
          if (!v58)
          {
            if (yy_rule_can_match_eol[v32])
            {
              v33 = calc_yyleng;
              if (calc_yyleng)
              {
                v34 = calc_yylineno;
                v35 = calc_yytext;
                do
                {
                  v36 = *v35++;
                  if (v36 == 10)
                  {
                    calc_yylineno = ++v34;
                  }

                  --v33;
                }

                while (v33);
              }
            }
          }

          v171 = v23;
LABEL_46:
          switch(v32)
          {
            case 0:
              v22 = v1;
              *v171 = yy_hold_char;
              continue;
            case 1:
              v83 = v1;
              v84 = calc_yytext;
              v85 = strlen(calc_yytext);
              v86 = 0;
              if (v85)
              {
                v87 = &yylval;
                do
                {
                  if (*(v84 + v86) == 44)
                  {
                    ++v86;
                  }

                  if (v86 < v85)
                  {
                    *v87 = *(v84 + v86);
                  }

                  ++v86;
                  v87 = (v87 + 1);
                }

                while (v86 < v85);
              }

              *(&yylval + v86) = 0;
              v20 = 0x103u;
              LODWORD(v1) = v83;
              v19 = v172;
              goto LABEL_249;
            case 2:
            case 6:
            case 14:
            case 24:
            case 25:
            case 26:
            case 36:
            case 37:
            case 38:
            case 52:
            case 53:
            case 54:
            case 67:
            case 74:
            case 86:
              v20 = 0x102u;
              goto LABEL_249;
            case 3:
              v20 = 0x10Bu;
              goto LABEL_249;
            case 4:
              v20 = 0x10Cu;
              goto LABEL_249;
            case 5:
              v20 = 0x10Du;
              goto LABEL_249;
            case 7:
              v20 = 0x10Eu;
              goto LABEL_249;
            case 8:
              v20 = 0x10Fu;
              goto LABEL_249;
            case 9:
              v20 = 0x110u;
              goto LABEL_249;
            case 10:
              v20 = 0x111u;
              goto LABEL_249;
            case 11:
              v20 = 0x112u;
              goto LABEL_249;
            case 12:
              v20 = 0x113u;
              goto LABEL_249;
            case 13:
              v20 = 0x114u;
              goto LABEL_249;
            case 15:
              v20 = 0x115u;
              goto LABEL_249;
            case 16:
              v20 = 0x116u;
              goto LABEL_249;
            case 17:
              v20 = 0x117u;
              goto LABEL_249;
            case 18:
              v20 = 0x11Bu;
              goto LABEL_249;
            case 19:
              v20 = 0x11Cu;
              goto LABEL_249;
            case 20:
              v20 = 0x11Du;
              goto LABEL_249;
            case 21:
              v20 = 0x121u;
              goto LABEL_249;
            case 22:
              v20 = 0x122u;
              goto LABEL_249;
            case 23:
              v20 = 0x123u;
              goto LABEL_249;
            case 27:
              v20 = 0x118u;
              goto LABEL_249;
            case 28:
              v20 = 0x119u;
              goto LABEL_249;
            case 29:
              v20 = 0x11Au;
              goto LABEL_249;
            case 30:
              v20 = 0x11Eu;
              goto LABEL_249;
            case 31:
              v20 = 0x11Fu;
              goto LABEL_249;
            case 32:
              v20 = 0x120u;
              goto LABEL_249;
            case 33:
              v20 = 0x124u;
              goto LABEL_249;
            case 34:
              v20 = 0x125u;
              goto LABEL_249;
            case 35:
              v20 = 0x126u;
              goto LABEL_249;
            case 39:
              v20 = 0x127u;
              goto LABEL_249;
            case 40:
              v20 = 0x12Au;
              goto LABEL_249;
            case 41:
              v20 = 0x12Du;
              goto LABEL_249;
            case 42:
              v20 = 0x12Eu;
              goto LABEL_249;
            case 43:
              v20 = 0x12Fu;
              goto LABEL_249;
            case 44:
              v20 = 0x130u;
              goto LABEL_249;
            case 45:
              v20 = 0x131u;
              goto LABEL_249;
            case 46:
              v20 = 0x132u;
              goto LABEL_249;
            case 47:
              v20 = 0x133u;
              goto LABEL_249;
            case 48:
              v20 = 0x134u;
              goto LABEL_249;
            case 49:
              v20 = 0x135u;
              goto LABEL_249;
            case 50:
              v20 = 0x136u;
              goto LABEL_249;
            case 51:
              v20 = 0x137u;
              goto LABEL_249;
            case 55:
              v20 = 0x128u;
              goto LABEL_249;
            case 56:
              v20 = 0x129u;
              goto LABEL_249;
            case 57:
              v20 = 0x12Bu;
              goto LABEL_249;
            case 58:
              v20 = 0x12Cu;
              goto LABEL_249;
            case 59:
              v20 = 0x138u;
              goto LABEL_249;
            case 60:
              v20 = 0x139u;
              goto LABEL_249;
            case 61:
              v20 = 0x13Au;
              goto LABEL_249;
            case 62:
              v20 = 0x13Bu;
              goto LABEL_249;
            case 63:
              v20 = 0x13Cu;
              goto LABEL_249;
            case 64:
              v20 = 0x13Du;
              goto LABEL_249;
            case 65:
              v20 = 0x13Eu;
              goto LABEL_249;
            case 66:
              v20 = 0x13Fu;
              goto LABEL_249;
            case 68:
              v20 = 0x140u;
              goto LABEL_249;
            case 69:
              v20 = 0x141u;
              goto LABEL_249;
            case 70:
              v20 = 0x142u;
              goto LABEL_249;
            case 71:
              v20 = 0x143u;
              goto LABEL_249;
            case 72:
              v20 = 0x144u;
              goto LABEL_249;
            case 73:
              v20 = 0x145u;
              goto LABEL_249;
            case 75:
              v20 = 0x146u;
              goto LABEL_249;
            case 76:
              v20 = 0x147u;
              goto LABEL_249;
            case 77:
              v20 = 0x148u;
              goto LABEL_249;
            case 78:
              v20 = 0x149u;
              goto LABEL_249;
            case 79:
              v20 = 0x14Au;
              goto LABEL_249;
            case 80:
            case 81:
              v20 = 0x14Bu;
              goto LABEL_249;
            case 82:
              v20 = 0x14Cu;
              goto LABEL_249;
            case 83:
              v20 = 0x14Du;
              goto LABEL_249;
            case 84:
              v20 = 0x14Eu;
              goto LABEL_249;
            case 85:
              v20 = 0x14Fu;
              goto LABEL_249;
            case 87:
              v89 = v1;
              cleanUnit();
              LODWORD(v1) = v89;
              v19 = v172;
              v20 = 0x104u;
              goto LABEL_249;
            case 88:
              v82 = v1;
              cleanCurrency();
              LODWORD(v1) = v82;
              v19 = v172;
              v20 = 0x106u;
              goto LABEL_249;
            case 89:
              v88 = v1;
              cleanCurrency();
              LODWORD(v1) = v88;
              v19 = v172;
              v20 = 0x105u;
              goto LABEL_249;
            case 90:
              v20 = 0x107u;
              goto LABEL_249;
            case 91:
              v20 = 0x108u;
              goto LABEL_249;
            case 92:
              v20 = 0x109u;
              goto LABEL_249;
            case 93:
              v20 = 0x10Au;
              goto LABEL_249;
            case 94:
              v22 = v1;
              goto LABEL_28;
            case 95:
              v20 = 1u;
              goto LABEL_249;
            case 96:
              v20 = *calc_yytext;
              goto LABEL_249;
            case 97:
              v80 = g_allowLaTeX == 0;
              v81 = 336;
              goto LABEL_246;
            case 98:
              v80 = g_allowLaTeX == 0;
              v81 = 337;
              goto LABEL_246;
            case 99:
              v80 = g_allowLaTeX == 0;
              v81 = 332;
              goto LABEL_246;
            case 100:
            case 101:
            case 102:
            case 103:
              v80 = g_allowLaTeX == 0;
              v81 = 331;
              goto LABEL_246;
            case 104:
              v80 = g_allowLaTeX == 0;
              v81 = 267;
              goto LABEL_246;
            case 105:
            case 107:
              v80 = g_allowLaTeX == 0;
              v81 = 338;
              goto LABEL_246;
            case 106:
            case 108:
              v80 = g_allowLaTeX == 0;
              v81 = 339;
              goto LABEL_246;
            case 109:
            case 111:
              v80 = g_allowLaTeX == 0;
              v81 = 340;
              goto LABEL_246;
            case 110:
            case 112:
              v80 = g_allowLaTeX == 0;
              v81 = 341;
              goto LABEL_246;
            case 113:
              v80 = g_allowLaTeX == 0;
              v81 = 342;
              goto LABEL_246;
            case 114:
              v80 = g_allowLaTeX == 0;
              v81 = 343;
              goto LABEL_246;
            case 115:
              v80 = g_allowLaTeX == 0;
              v81 = 344;
              goto LABEL_246;
            case 116:
              v80 = g_allowLaTeX == 0;
              v81 = 345;
              goto LABEL_246;
            case 117:
              v80 = g_allowLaTeX == 0;
              v81 = 346;
              goto LABEL_246;
            case 118:
              v80 = g_allowLaTeX == 0;
              v81 = 348;
              goto LABEL_246;
            case 119:
              v80 = g_allowLaTeX == 0;
              v81 = 347;
              goto LABEL_246;
            case 120:
              v80 = g_allowLaTeX == 0;
              v81 = 349;
              goto LABEL_246;
            case 121:
              v80 = g_allowLaTeX == 0;
              v81 = 351;
              goto LABEL_246;
            case 122:
              v80 = g_allowLaTeX == 0;
              v81 = 350;
              goto LABEL_246;
            case 123:
              v80 = g_allowLaTeX == 0;
              v81 = 352;
              goto LABEL_246;
            case 124:
              v80 = g_allowLaTeX == 0;
              v81 = 354;
              goto LABEL_246;
            case 125:
              v80 = g_allowLaTeX == 0;
              v81 = 353;
              goto LABEL_246;
            case 126:
              v80 = g_allowLaTeX == 0;
              v81 = 355;
              goto LABEL_246;
            case 127:
              v80 = g_allowLaTeX == 0;
              v81 = 356;
              goto LABEL_246;
            case 128:
              v80 = g_allowLaTeX == 0;
              v81 = 357;
              goto LABEL_246;
            case 129:
              v80 = g_allowLaTeX == 0;
              v81 = 358;
              goto LABEL_246;
            case 130:
              v80 = g_allowLaTeX == 0;
              v81 = 359;
              goto LABEL_246;
            case 131:
              v80 = g_allowLaTeX == 0;
              v81 = 360;
              goto LABEL_246;
            case 132:
              v80 = g_allowLaTeX == 0;
              v81 = 361;
              goto LABEL_246;
            case 133:
              v80 = g_allowLaTeX == 0;
              v81 = 317;
              goto LABEL_246;
            case 134:
              v80 = g_allowLaTeX == 0;
              v81 = 318;
              goto LABEL_246;
            case 135:
              v80 = g_allowLaTeX == 0;
              v81 = 362;
              goto LABEL_246;
            case 136:
              v80 = g_allowLaTeX == 0;
              v81 = 333;
              goto LABEL_246;
            case 137:
              v80 = g_allowLaTeX == 0;
              v81 = 280;
              goto LABEL_246;
            case 138:
              v80 = g_allowLaTeX == 0;
              v81 = 281;
              goto LABEL_246;
            case 139:
              v80 = g_allowLaTeX == 0;
              v81 = 282;
              goto LABEL_246;
            case 140:
              v80 = g_allowLaTeX == 0;
              v81 = 292;
              goto LABEL_246;
            case 141:
              v80 = g_allowLaTeX == 0;
              v81 = 293;
              goto LABEL_246;
            case 142:
              v80 = g_allowLaTeX == 0;
              v81 = 294;
LABEL_246:
              if (v80)
              {
                v20 = 258;
              }

              else
              {
                v20 = v81;
              }

              goto LABEL_249;
            case 143:
              v22 = v1;
              fwrite(calc_yytext, calc_yyleng, 1uLL, calc_yyout);
              goto LABEL_17;
            case 144:
              v165 = calc_yytext;
              *v171 = yy_hold_char;
              v37 = yy_buffer_stack;
              v38 = *yy_buffer_stack;
              if (*(*yy_buffer_stack + 64))
              {
                v39 = yy_n_chars;
              }

              else
              {
                v39 = *(v38 + 32);
                yy_n_chars = v39;
                *v38 = calc_yyin;
                v38 = *v37;
                *(*v37 + 64) = 1;
              }

              LODWORD(v40) = yy_c_buf_p;
              v41 = *(v38 + 8);
              if (yy_c_buf_p <= &v41[v39])
              {
                v22 = v1;
                v73 = calc_yytext;
                v74 = calc_yytext + ~v165 + v171;
                yy_c_buf_p = v74;
                previous_state = yy_get_previous_state();
                if (yy_accept[previous_state])
                {
                  yy_last_accepting_state = previous_state;
                  yy_last_accepting_cpos = v74;
                }

                v76 = previous_state;
                v77 = yy_base[previous_state] + 1;
                v27 = v73;
                if (previous_state != yy_chk[v77])
                {
                  do
                  {
                    v78 = yy_def[v76];
                    v76 = v78;
                    v77 = yy_base[v78] + 1;
                  }

                  while (v78 != yy_chk[v77]);
                }

                v79 = yy_nxt[v77];
                if (yy_nxt[v77] && v79 != 530)
                {
                  v25 = v79;
                  v26 = (v74 + 1);
                  yy_c_buf_p = v74 + 1;
                  goto LABEL_30;
                }

                continue;
              }

              if (yy_c_buf_p > &v41[v39 + 1])
              {
                yy_fatal_error("fatal flex scanner internal error--end of buffer missed");
              }

              v23 = calc_yytext;
              if (!*(v38 + 60))
              {
                if (yy_c_buf_p - calc_yytext != 1)
                {
                  goto LABEL_107;
                }

LABEL_103:
                yy_c_buf_p = v23;
                v32 = 145;
                goto LABEL_46;
              }

              v42 = ~calc_yytext + yy_c_buf_p;
              v166 = ~calc_yytext + yy_c_buf_p;
              if (v42 >= 1)
              {
                do
                {
                  v43 = *v23++;
                  *v41++ = v43;
                  --v42;
                }

                while (v42);
                v38 = *v37;
                v42 = v166;
              }

              v44 = *(v38 + 64);
              v168 = v42;
              if (v44 == 2)
              {
                yy_n_chars = 0;
                v45 = &unk_1EDC30000;
                goto LABEL_58;
              }

              v48 = ~v42;
              v49 = *(v38 + 24);
              v50 = v49 + ~v42;
              if (!v50)
              {
                v167 = v1;
                do
                {
                  if (!*(v38 + 40))
                  {
                    *(v38 + 8) = 0;
LABEL_569:
                    yy_fatal_error("fatal error - scanner input buffer overflow");
                  }

                  v51 = v27;
                  v52 = *(v38 + 8);
                  v53 = 2 * v49;
                  *(v38 + 24) = v53;
                  v54 = malloc_type_realloc(v52, v53 + 2, 0x100004077774924uLL);
                  *(v38 + 8) = v54;
                  if (!v54)
                  {
                    goto LABEL_569;
                  }

                  v40 = v54 + v40 - v52;
                  yy_c_buf_p = v40;
                  v38 = *yy_buffer_stack;
                  v49 = *(*yy_buffer_stack + 24);
                  v50 = v49 + v48;
                  v27 = v51;
                }

                while (!(v49 + v48));
                v1 = v167;
              }

              v164 = v27;
              v55 = v1;
              if (v50 >= 0x2000)
              {
                v56 = 0x2000;
              }

              else
              {
                v56 = v50;
              }

              v167 = v56;
              v45 = &unk_1EDC30000;
              if (*(v38 + 44))
              {
                v46 = 0;
                do
                {
                  v57 = getc(calc_yyin);
                  v58 = v57 == -1 || v57 == 10;
                  if (v58)
                  {
                    goto LABEL_79;
                  }

                  *(*(*yy_buffer_stack + 8) + v168 + v46++) = v57;
                }

                while (v167 != v46);
                v46 = v167;
LABEL_79:
                if (v57 == -1)
                {
                  v61 = ferror(calc_yyin);
                  v59 = &unk_1EDC30000;
                  v27 = v164;
                  if (v61)
                  {
LABEL_570:
                    yy_fatal_error("input in flex scanner failed");
                  }
                }

                else
                {
                  if (v57 == 10)
                  {
                    *(*(*yy_buffer_stack + 8) + v168 + v46++) = 10;
                  }

                  v59 = &unk_1EDC30000;
                  v27 = v164;
                }

                v59[424] = v46;
              }

              else
              {
                *__error() = 0;
                while (1)
                {
                  v60 = fread((*(*yy_buffer_stack + 8) + v168), 1uLL, v167, calc_yyin);
                  v46 = v60;
                  yy_n_chars = v60;
                  if (v60 << 32)
                  {
                    break;
                  }

                  if (!ferror(calc_yyin))
                  {
                    v37 = yy_buffer_stack;
                    v38 = *yy_buffer_stack;
                    v1 = v55;
                    v19 = v172;
                    v27 = v164;
                    v42 = v166;
LABEL_58:
                    *(v38 + 32) = 0;
                    if (v42)
                    {
LABEL_59:
                      v46 = 0;
                      v47 = 2;
                      *(v38 + 64) = 2;
                      goto LABEL_98;
                    }

LABEL_94:
                    v164 = v27;
                    v62 = v1;
                    v63 = v45[208];
                    if (!yy_buffer_stack || (v64 = *yy_buffer_stack) == 0)
                    {
                      calc_yyensure_buffer_stack();
                      v64 = calc_yy_create_buffer(v45[208]);
                      *yy_buffer_stack = v64;
                    }

                    calc_yy_init_buffer(v64, v63);
                    v37 = yy_buffer_stack;
                    v38 = *yy_buffer_stack;
                    v46 = *(*yy_buffer_stack + 32);
                    yy_n_chars = v46;
                    v65 = *(v38 + 16);
                    yy_c_buf_p = v65;
                    calc_yytext = v65;
                    v45[208] = *v38;
                    yy_hold_char = *v65;
                    v47 = 1;
                    v1 = v62;
                    v19 = v172;
                    v27 = v164;
                    goto LABEL_98;
                  }

                  if (*__error() != 4)
                  {
                    goto LABEL_570;
                  }

                  *__error() = 0;
                  clearerr(calc_yyin);
                }

                v27 = v164;
              }

              v37 = yy_buffer_stack;
              v38 = *yy_buffer_stack;
              *(*yy_buffer_stack + 32) = v46;
              v1 = v55;
              if (!v46)
              {
                v19 = v172;
                if (v166)
                {
                  goto LABEL_59;
                }

                goto LABEL_94;
              }

              v47 = 0;
              v19 = v172;
LABEL_98:
              v66 = v46 + v166;
              if (v66 <= *(v38 + 24))
              {
                v71 = *(v38 + 8);
              }

              else
              {
                LODWORD(v167) = v47;
                v67 = v27;
                v68 = v1;
                v69 = v66 + (v46 >> 1);
                v70 = malloc_type_realloc(*(v38 + 8), v69, 0x100004077774924uLL);
                v37 = yy_buffer_stack;
                *(*yy_buffer_stack + 8) = v70;
                v71 = *(*v37 + 8);
                if (!v71)
                {
                  yy_fatal_error("out of dynamic memory in yy_get_next_buffer()");
                }

                *(*v37 + 24) = v69 - 2;
                v66 = yy_n_chars + v168;
                v1 = v68;
                v19 = v172;
                v27 = v67;
                v47 = v167;
              }

              yy_n_chars = v66;
              *(v71 + v66) = 0;
              *(*(*v37 + 8) + v66 + 1) = 0;
              v23 = *(*v37 + 8);
              calc_yytext = v23;
              if (v47 == 1)
              {
                goto LABEL_103;
              }

              if (v47)
              {
                v41 = *(*yy_buffer_stack + 8);
                v39 = yy_n_chars;
LABEL_107:
                v22 = v1;
                v72 = &v41[v39];
                yy_c_buf_p = &v41[v39];
                v31 = yy_get_previous_state();
                v27 = v23;
                v23 = v72;
                goto LABEL_38;
              }

              v22 = v1;
              v26 = &v23[~v165 + v171];
              yy_c_buf_p = v26;
              v25 = yy_get_previous_state();
              break;
            case 145:
              v20 = 0u;
LABEL_249:
              yychar = v20;
              v6 = v169;
              goto LABEL_250;
            default:
              yy_fatal_error("fatal flex scanner internal error--no action found");
          }

          break;
        }
      }
    }

LABEL_250:
    if (v20 <= 0)
    {
      yychar = 0;
      v90 = 0;
    }

    else
    {
      v90 = v20 > 0x16A ? 2 : yytranslate[v20];
    }

    v91 = v90;
    v92 = v90 + v19;
    v172 = v91;
    if (v92 > 0x8F4 || v91 != yycheck[v92])
    {
LABEL_264:
      v95 = yydefact[v1];
      if (!yydefact[v1])
      {
        break;
      }

      goto LABEL_265;
    }

    v93 = yytable[v92];
    if (v93 > 0)
    {
      if (v93 == 144)
      {
        goto LABEL_566;
      }

      v94 = v170 - 1;
      if (!v170)
      {
        v94 = 0;
      }

      v170 = v94;
      if (v20 >= 1)
      {
        yychar = -2;
      }

      v2 += 1024;
      memcpy(v2, &yylval, 0x400uLL);
      goto LABEL_501;
    }

    if (!yytable[v92] || yytable[v92] == 65525)
    {
      break;
    }

    v95 = -v93;
LABEL_265:
    v96 = v6;
    v171 = v95;
    v97 = yyr2[v95];
    v98 = &v2[1024 * (1 - v97)];
    v99 = *v98;
    memcpy(__dst, v98 + 8, sizeof(__dst));
    switch(v95)
    {
      case 2u:
        v130 = newConstantNode("0.0");
        v131 = *v2;
        evaluateTree(*v2, v130);
        g_ErrorCode = v130[51];
        if (g_ErrorCode && (g_forceResult & 1) == 0)
        {
          if (g_ResultBuffer)
          {
            snprintf(g_ResultBuffer, g_BufferLen, "");
          }

          goto LABEL_517;
        }

        if (g_usingNewAPI != 1)
        {
          displayNode(v130);
LABEL_517:
          freeTree(v131);
          freeTree(v130);
          goto LABEL_496;
        }

        g_parseTree = v131;
        g_resultTree = v130;
        v132 = g_isTrivial;
        g_wasTrivial = g_isTrivial;
        if (g_containsCurrencyConversion == 1)
        {
          v132 = 0;
          g_isTrivial = 0;
        }

        if ((g_foundFirstCoefficient & 1) == 0)
        {
          g_firstCoefficient_0 = 1;
          qword_1EDC30618 = 0x3040000000000000;
        }

        if (g_negationCount == 1)
        {
          qword_1EDC30618 ^= 0x8000000000000000;
        }

        if (v132)
        {
          v175 = 0;
          v133 = __bid128_div(1uLL, 0x3040000000000000uLL, 0x1EuLL, 0x3040000000000000uLL, 4, &v175);
          v134 = qword_1EDC30618;
          v135 = g_firstCoefficient_0;
          v167 = v133;
          v168 = v136;
          LODWORD(v166) = __bid128_quiet_less(g_firstCoefficient_0, qword_1EDC30618 & 0x7FFFFFFFFFFFFFFFLL, v133, v136, &v175);
          v137 = treeDecimalValue(v130);
          if (v166)
          {
            v139 = __bid128_sub(v137, v138, v135, v134, 4, &v175);
          }

          else
          {
            v155 = __bid128_div(v137, v138, v135, v134, 4, &v175);
            v139 = __bid128_add(v155, v156, 1uLL, 0xB040000000000000, 4, &v175);
          }

          if (!__bid128_quiet_less(v139, v140 & 0x7FFFFFFFFFFFFFFFLL, v167, v168, &v175))
          {
            g_isTrivial = 0;
          }
        }

LABEL_496:
        v145 = &v2[-1024 * v97];
        v5 -= 2 * v97;
        v2 = v145 + 1024;
        *(v145 + 128) = v99;
        memcpy(v145 + 1032, __dst, 0x3F8uLL);
        v146 = yyr1[v171] - 119;
        v147 = *v5 + yypgoto[v146];
        if (v147 <= 0x8F4 && yycheck[v147] == *v5)
        {
          v93 = yytable[v147];
        }

        else
        {
          v93 = yydefgoto[v146];
        }

        v6 = v96;
        break;
      case 4u:
        v100 = *v2;
        v101 = functionCompose;
        goto LABEL_486;
      case 5u:
        v100 = *(v2 - 256);
        v108 = *v2;
        goto LABEL_411;
      case 6u:
        v100 = *v2;
        v108 = *(v2 - 256);
LABEL_411:
        v109 = functionConvert;
        goto LABEL_482;
      case 7u:
        v100 = *(v2 - 256);
        v108 = *v2;
        goto LABEL_432;
      case 8u:
        v100 = *v2;
        v108 = *(v2 - 256);
LABEL_432:
        v109 = functionImplicitConvert;
        goto LABEL_482;
      case 0xCu:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_451;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionOR;
        goto LABEL_482;
      case 0xDu:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_451;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionNOR;
        goto LABEL_482;
      case 0xFu:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_451;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionXOR;
        goto LABEL_482;
      case 0x11u:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_451;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionLeftShift;
        goto LABEL_482;
      case 0x12u:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_451;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionRightShift;
        goto LABEL_482;
      case 0x13u:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_451;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionLeftRotate;
        goto LABEL_482;
      case 0x14u:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_451;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionRightRotate;
        goto LABEL_482;
      case 0x16u:
        v100 = *(v2 - 256);
        v108 = *v2;
        if (v100[1] != functionPercent && *(v108 + 1) == functionPercent && (v149 = *(v108 + 2)) != 0 && ((v150 = *(v149 + 8), v150 == functionConstant) || *(v149 + 200) == 1 || (v150 == functionPow || v150 == functionFactorial) && (v157 = *(v149 + 16)) != 0 && (*(v157 + 8) == functionConstant || *(v157 + 200) == 1)))
        {
          v109 = functionPercentIncrease;
        }

        else
        {
          v109 = functionAdd;
        }

        goto LABEL_482;
      case 0x17u:
        v100 = *(v2 - 256);
        v108 = *v2;
        if (v100[1] != functionPercent && *(v108 + 1) == functionPercent && (v151 = *(v108 + 2)) != 0 && ((v152 = *(v151 + 8), v152 == functionConstant) || *(v151 + 200) == 1 || (v152 == functionPow || v152 == functionFactorial) && (v158 = *(v151 + 16)) != 0 && (*(v158 + 8) == functionConstant || *(v158 + 200) == 1)))
        {
          v109 = functionPercentDecrease;
        }

        else
        {
          v109 = functionSubtract;
        }

        goto LABEL_482;
      case 0x19u:
        if (g_allowLaTeX == 1)
        {
LABEL_451:
          v100 = *v2;
          goto LABEL_469;
        }

        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionAND;
        goto LABEL_482;
      case 0x1Bu:
        v122 = v2 - 1024;
        v123 = __calc_yyparse_block_invoke(*(v2 - 128));
        v124 = __calc_yyparse_block_invoke(*v2);
        v125 = v124;
        if (v123)
        {
          if (v124)
          {
            if (v124[1] == functionConstant && v123[1] == functionUnit)
            {
              v168 = v124;
              SmallestID = UnitCountNextSmallestID((v123 + 9));
              v125 = v168;
              if (SmallestID)
              {
                v125 = newUnitIDNode(SmallestID);
                *v2 = newTreeObject(functionCoefficientUnit, *v2, v125);
              }
            }
          }
        }

        if (v123 && v125)
        {
          ShouldImplicitlyAdd = UnitCountShouldImplicitlyAdd((v123 + 9), (v125 + 9));
          v100 = *v122;
          v108 = *v2;
          if (ShouldImplicitlyAdd)
          {
            v99 = newTreeObject(functionImplicitAdd, v100, v108);
            goto LABEL_496;
          }
        }

        else
        {
          v100 = *v122;
          v108 = *v2;
        }

        if ((v100[25] & 1) != 0 || (v108[25] & 1) != 0 || g_ignoreProbableSearches != 1 || (v148 = *(v108 + 1), v148 == functionPow) || v148 == functionSqrRootInline || v148 == functionCubeRootInline || *(v108 + 203) == 1)
        {
LABEL_290:
          v109 = functionMultiply;
          goto LABEL_482;
        }

LABEL_304:
        v112 = functionFail;
        v100 = v99;
        goto LABEL_487;
      case 0x1Cu:
        v100 = *(v2 - 256);
        v108 = *v2;
        if (v100[1] == functionConstant && *(v108 + 1) == functionUnit)
        {
          goto LABEL_354;
        }

        goto LABEL_290;
      case 0x1Du:
        v100 = *(v2 - 256);
        v99 = *v2;
        if (*(v100 + 201) & 1) != 0 || v99[1] != functionCoefficientUnit || (v99[25])
        {
          v128 = functionDivide;
          goto LABEL_422;
        }

        v153 = v99[2];
        v154 = functionDivide;
        goto LABEL_528;
      case 0x1Eu:
      case 0x1Fu:
        v100 = *(v2 - 256);
        v108 = *v2;
        v109 = functionFMod;
        goto LABEL_482;
      case 0x20u:
      case 0x23u:
        v100 = *(v2 - 128);
        v101 = functionPercent;
        goto LABEL_486;
      case 0x21u:
        v129 = *(v2 - 128);
        v108 = newConstantNode("0.0174532925199432957692369076848861271344287188854172");
        v112 = functionMultiply;
        v100 = v129;
        goto LABEL_488;
      case 0x25u:
      case 0x37u:
      case 0x46u:
      case 0x48u:
        v100 = *v2;
        v101 = functionNegate;
        goto LABEL_486;
      case 0x27u:
        v100 = *(v2 - 256);
        v99 = *v2;
        goto LABEL_418;
      case 0x28u:
        if ((g_allowLaTeX & 1) == 0)
        {
          goto LABEL_423;
        }

        v100 = *(v2 - 512);
        v99 = *(v2 - 128);
LABEL_418:
        if (*(v100 + 201) & 1) != 0 || v99[1] != functionCoefficientUnit || (v99[25])
        {
          v128 = functionPow;
LABEL_422:
          v112 = v128;
          v108 = v99;
          goto LABEL_488;
        }

        v153 = v99[2];
        v154 = functionPow;
LABEL_528:
        v99[2] = newTreeObject(v154, v100, v153);
        goto LABEL_496;
      case 0x2Au:
        v100 = *(v2 - 128);
        v101 = functionFactorial;
        goto LABEL_486;
      case 0x2Cu:
        v100 = newTreeObject(functionSameCurrency, *(v2 - 256), *v2);
        *(v2 - 256) = v100;
        v108 = *(v2 - 128);
        goto LABEL_290;
      case 0x2Du:
        v100 = *(v2 - 128);
        v108 = *v2;
LABEL_354:
        v109 = functionCoefficientUnit;
        goto LABEL_482;
      case 0x2Eu:
      case 0x32u:
      case 0x49u:
      case 0x4Au:
        v100 = *(v2 - 128);
        v108 = *v2;
        goto LABEL_290;
      case 0x34u:
        v100 = *(v2 - 256);
        v108 = *v2;
        goto LABEL_481;
      case 0x35u:
        if ((g_allowLaTeX & 1) == 0)
        {
LABEL_423:
          v110 = v2 - 1024;
          goto LABEL_484;
        }

        v100 = *(v2 - 512);
LABEL_464:
        v144 = (v2 - 1024);
        goto LABEL_480;
      case 0x3Du:
      case 0x3Fu:
        v99 = newUnitNode(v2);
        if ((g_allowUnits & 1) == 0)
        {
          goto LABEL_304;
        }

        goto LABEL_496;
      case 0x40u:
        v141 = newConstantNode(v2);
        goto LABEL_489;
      case 0x41u:
        v120 = "3.14159265358979323846264338327950288";
        goto LABEL_459;
      case 0x42u:
        v120 = "1.61803398874989484820458683436563811";
        goto LABEL_459;
      case 0x43u:
        v120 = "2.71828182845904523536028747135266249";
LABEL_459:
        v99 = newConstantNode(v120);
        *(v99 + 203) = 1;
        goto LABEL_496;
      case 0x44u:
        v141 = newVariableNode(v2);
        goto LABEL_489;
      case 0x4Bu:
        v112 = *(v2 - 128);
        v100 = *v2;
        goto LABEL_487;
      case 0x4Cu:
        v143 = *(v2 - 384);
        v113 = *v2;
        goto LABEL_463;
      case 0x4Du:
        if ((g_allowLaTeX & 1) == 0)
        {
          goto LABEL_483;
        }

        v142 = *(v2 - 640);
        v118 = *v2;
        goto LABEL_479;
      case 0x4Eu:
        if (g_allowLaTeX == 1)
        {
          v121 = v2 - 3072;
          goto LABEL_468;
        }

        v112 = *(v2 - 640);
        v100 = *(v2 - 384);
        v108 = *(v2 - 128);
        goto LABEL_488;
      case 0x4Fu:
        v100 = *(v2 - 384);
        if ((g_allowLaTeX & 1) == 0)
        {
          goto LABEL_485;
        }

        goto LABEL_469;
      case 0x50u:
      case 0x65u:
        v100 = *v2;
        v101 = functionLog;
        goto LABEL_486;
      case 0x51u:
      case 0x66u:
        v113 = *v2;
        v114 = functionLog;
        goto LABEL_462;
      case 0x52u:
        v100 = *(v2 - 384);
        if (g_allowLaTeX == 1)
        {
          goto LABEL_469;
        }

        v108 = *(v2 - 128);
        goto LABEL_342;
      case 0x53u:
      case 0x5Bu:
      case 0x5Eu:
        if (g_allowLaTeX)
        {
          goto LABEL_467;
        }

        v110 = v2 - 3072;
        goto LABEL_484;
      case 0x54u:
        v117 = v2 - 1024;
        goto LABEL_341;
      case 0x55u:
      case 0x68u:
        v100 = *(v2 - 128);
        v101 = functionCeil;
        goto LABEL_486;
      case 0x56u:
      case 0x69u:
        v100 = *(v2 - 128);
        v101 = functionFloor;
        goto LABEL_486;
      case 0x57u:
        v100 = *v2;
        if (g_allowLaTeX == 1)
        {
          goto LABEL_469;
        }

        v101 = functionRound;
        goto LABEL_486;
      case 0x58u:
        v113 = *v2;
        v114 = functionRound;
        goto LABEL_462;
      case 0x59u:
        if ((g_allowLaTeX & 1) == 0)
        {
          goto LABEL_483;
        }

        v118 = *v2;
        v119 = functionRound;
        goto LABEL_478;
      case 0x5Au:
        if (g_allowLaTeX == 1)
        {
          goto LABEL_467;
        }

        v100 = *(v2 - 384);
        v108 = *(v2 - 128);
        v109 = functionRoundNearest;
        goto LABEL_482;
      case 0x5Cu:
        v100 = *(v2 - 384);
        v108 = *(v2 - 128);
        v109 = functionFlip;
        goto LABEL_482;
      case 0x5Du:
        if (g_allowLaTeX != 1)
        {
          v100 = *(v2 - 384);
          v108 = *(v2 - 128);
LABEL_426:
          v109 = functionRoot;
          goto LABEL_482;
        }

LABEL_467:
        v121 = v2 - 1024;
LABEL_468:
        v100 = *v121;
LABEL_469:
        v101 = functionUnsupportedMath;
        goto LABEL_486;
      case 0x5Fu:
        v100 = *v2;
        goto LABEL_474;
      case 0x60u:
        v113 = *v2;
        v114 = functionSqrRoot;
LABEL_462:
        v143 = v114;
LABEL_463:
        v100 = newTreeObject(v143, v113, 0);
        goto LABEL_464;
      case 0x61u:
        if ((g_allowLaTeX & 1) == 0)
        {
          goto LABEL_483;
        }

        v118 = *v2;
        v119 = functionSqrRoot;
        goto LABEL_478;
      case 0x62u:
        v100 = *(v2 - 128);
LABEL_474:
        v101 = functionSqrRoot;
        goto LABEL_486;
      case 0x63u:
        v100 = *(v2 - 128);
        v108 = *(v2 - 512);
        goto LABEL_426;
      case 0x64u:
        v117 = v2 - 2048;
LABEL_341:
        v100 = *v117;
        v108 = *v2;
LABEL_342:
        v109 = functionLogBase;
        goto LABEL_482;
      case 0x67u:
        if ((g_allowLaTeX & 1) == 0)
        {
LABEL_483:
          v110 = v2 - 2048;
LABEL_484:
          v100 = *v110;
          goto LABEL_485;
        }

        v118 = *v2;
        v119 = functionLog;
LABEL_478:
        v142 = v119;
LABEL_479:
        v100 = newTreeObject(v142, v118, 0);
        v144 = (v2 - 2048);
LABEL_480:
        v108 = *v144;
LABEL_481:
        v109 = functionPow;
LABEL_482:
        v112 = v109;
        goto LABEL_488;
      case 0x6Au:
        v100 = *(v2 - 128);
        v101 = functionFabs;
        goto LABEL_486;
      case 0x6Bu:
        v100 = *(v2 - 512);
        v108 = *(v2 - 128);
        v109 = functionDivide;
        goto LABEL_482;
      case 0x6Cu:
        v111 = functionSqrRootInline;
        goto LABEL_495;
      case 0x6Du:
        v111 = functionCubeRootInline;
        goto LABEL_495;
      case 0x6Eu:
        v115 = g_allowLaTeX == 0;
        v116 = functionSqrRoot;
        goto LABEL_428;
      case 0x6Fu:
        v115 = g_allowLaTeX == 0;
        v116 = functionCubeRoot;
        goto LABEL_428;
      case 0x70u:
        v115 = g_allowLaTeX == 0;
        v116 = functionExp;
        goto LABEL_428;
      case 0x71u:
      case 0x92u:
        v111 = functionLn;
        goto LABEL_495;
      case 0x72u:
      case 0x93u:
        v111 = functionSine;
        goto LABEL_495;
      case 0x73u:
      case 0x94u:
        v111 = functionCos;
        goto LABEL_495;
      case 0x74u:
      case 0x95u:
        v111 = functionTan;
        goto LABEL_495;
      case 0x75u:
        v111 = functionSinD;
        goto LABEL_495;
      case 0x76u:
        v111 = functionCosD;
        goto LABEL_495;
      case 0x77u:
        v111 = functionTanD;
        goto LABEL_495;
      case 0x78u:
      case 0x96u:
        v111 = functionASin;
        goto LABEL_495;
      case 0x79u:
      case 0x97u:
        v111 = functionACos;
        goto LABEL_495;
      case 0x7Au:
      case 0x98u:
        v111 = functionATan;
        goto LABEL_495;
      case 0x7Bu:
        v111 = functionASinD;
        goto LABEL_495;
      case 0x7Cu:
        v111 = functionACosD;
        goto LABEL_495;
      case 0x7Du:
        v111 = functionATanD;
        goto LABEL_495;
      case 0x7Eu:
      case 0x99u:
        v111 = functionSinH;
        goto LABEL_495;
      case 0x7Fu:
      case 0x9Au:
        v111 = functionCosH;
        goto LABEL_495;
      case 0x80u:
      case 0x9Bu:
        v111 = functionTanH;
        goto LABEL_495;
      case 0x81u:
        v111 = functionASinH;
        goto LABEL_495;
      case 0x82u:
        v111 = functionACosH;
        goto LABEL_495;
      case 0x83u:
        v111 = functionATanH;
        goto LABEL_495;
      case 0x84u:
        v115 = g_allowLaTeX == 0;
        v116 = functionCeil;
        goto LABEL_428;
      case 0x85u:
        v115 = g_allowLaTeX == 0;
        v116 = functionFloor;
        goto LABEL_428;
      case 0x86u:
        v111 = functionRInt;
        goto LABEL_495;
      case 0x87u:
        v115 = g_allowLaTeX == 0;
        v116 = functionFabs;
LABEL_428:
        if (v115)
        {
          v99 = v116;
        }

        else
        {
          v99 = functionUnsupportedMath;
        }

        goto LABEL_496;
      case 0x88u:
        v111 = functionJ0;
        goto LABEL_495;
      case 0x89u:
        v111 = functionJ1;
        goto LABEL_495;
      case 0x8Au:
        v111 = functionY0;
        goto LABEL_495;
      case 0x8Bu:
        v111 = functionY1;
        goto LABEL_495;
      case 0x8Cu:
        v111 = functionLGamma;
        goto LABEL_495;
      case 0x8Du:
        v111 = functionERF;
        goto LABEL_495;
      case 0x8Eu:
        v111 = functionERFC;
        goto LABEL_495;
      case 0x8Fu:
        v111 = functionFactorial;
        goto LABEL_495;
      case 0x90u:
        v111 = functionNOT;
        goto LABEL_495;
      case 0x91u:
        v111 = functionNEG;
        goto LABEL_495;
      case 0x9Cu:
        v111 = functionSec;
        goto LABEL_495;
      case 0x9Du:
        v111 = functionCsc;
        goto LABEL_495;
      case 0x9Eu:
        v111 = functionCot;
        goto LABEL_495;
      case 0x9Fu:
        v111 = functionSecH;
        goto LABEL_495;
      case 0xA0u:
        v111 = functionCscH;
        goto LABEL_495;
      case 0xA1u:
        v111 = functionCotH;
        goto LABEL_495;
      case 0xA2u:
        v111 = functionPow;
        goto LABEL_495;
      case 0xA3u:
        v111 = functionFMod;
        goto LABEL_495;
      case 0xA4u:
        v111 = functionHypot;
        goto LABEL_495;
      case 0xA5u:
        v111 = functionRem;
        goto LABEL_495;
      case 0xA6u:
        v111 = functionMin;
        goto LABEL_495;
      case 0xA7u:
        v111 = functionMax;
LABEL_495:
        v99 = v111;
        goto LABEL_496;
      case 0xA8u:
      case 0xA9u:
        *(*(v2 - 128) + 200) = 1;
        v99 = *(v2 - 128);
        goto LABEL_496;
      case 0xAAu:
      case 0xABu:
        if (g_allowPartialExpressions)
        {
          g_isPartialExpression = 1;
          *(*v2 + 200) = 1;
          v99 = *v2;
        }

        else
        {
          v100 = *v2;
LABEL_485:
          v101 = functionFail;
LABEL_486:
          v112 = v101;
LABEL_487:
          v108 = 0;
LABEL_488:
          v141 = newTreeObject(v112, v100, v108);
LABEL_489:
          v99 = v141;
        }

        goto LABEL_496;
      default:
        goto LABEL_496;
    }

LABEL_501:
    v5 += 2;
    v1 = v93;
    v3 = v174;
  }

  if (v170 == 3)
  {
    if (yychar <= 0)
    {
      if (!yychar)
      {
        v159 = 1;
        goto LABEL_552;
      }
    }

    else
    {
      if ((v172 - 121) < 0x1B || (v172 - 150) <= 1)
      {
        v102 = v1;
        freeTree(yylval);
        LODWORD(v1) = v102;
      }

      yychar = -2;
    }
  }

  else if (!v170)
  {
    ++yynerrs;
  }

  v103 = v19;
  while (1)
  {
    if (v103 >= -1)
    {
      v104 = v103 + 1;
      if (yycheck[v104] == 1)
      {
        v105 = yytable[v104];
        if (v105 > 0)
        {
          v93 = v105;
          if (v105 == 144)
          {
LABEL_566:
            v159 = 0;
            goto LABEL_546;
          }

          v2 += 1024;
          memcpy(v2, &yylval, 0x400uLL);
          v170 = 3;
          goto LABEL_501;
        }
      }
    }

    if (v5 == v6)
    {
      break;
    }

    v106 = yystos[v1];
    if ((v106 - 121) < 0x1B || (v106 - 150) <= 1)
    {
      freeTree(*v2);
    }

    v2 -= 1024;
    v107 = *(v5 - 1);
    v5 -= 2;
    v103 = v4[v107];
    LODWORD(v1) = v107;
  }

  v159 = 1;
LABEL_546:
  v160 = yychar == -2 || yychar == 0;
  if (!v160 && ((v172 - 121) < 0x1B || (v172 - 150) <= 1))
  {
    freeTree(yylval);
  }

LABEL_552:
  while (v5 != v6)
  {
    v161 = yystos[*v5];
    if ((v161 - 121) < 0x1B || (v161 - 150) <= 1)
    {
      freeTree(*v2);
    }

    v2 -= 1024;
    v5 -= 2;
  }

  if (v6 != v178)
  {
    free(v6);
  }

  v162 = *MEMORY[0x1E69E9840];
  return v159;
}

void *__calc_yyparse_block_invoke(void *result)
{
  for (; result; result = result[3])
  {
    v1 = result[1];
    if (v1 == functionConstant)
    {
      break;
    }

    if (v1 == functionCoefficientUnit)
    {
      v2 = result[2];
      if (v2)
      {
        if (*(v2 + 8) == functionConstant && (*(v2 + 200) & 1) == 0)
        {
          return result[3];
        }
      }
    }

    if (v1 != functionImplicitAdd)
    {
      return 0;
    }
  }

  return result;
}

uint64_t calc_parser_read_buffer(uint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int *a7)
{
  if (a2 >= 0x401)
  {
    v8 = &unk_1EDC30000;
    v9 = 14;
LABEL_9:
    v8[630] = v9;
    if (a7)
    {
      *a7 = v9;
    }

    return 0xFFFFFFFFLL;
  }

  v14 = calc_yy_scan_bytes(a1, a2);
  if (!v14)
  {
    v8 = &unk_1EDC30000;
    v9 = 7;
    goto LABEL_9;
  }

  v15 = v14;
  g_PreferredType = a3;
  g_Precision = a4;
  g_ResultBuffer = a5;
  g_BufferLen = a6;
  g_ErrorCode = 0;
  v16 = calc_yyparse(v14);
  if (a7)
  {
    *a7 = g_ErrorCode;
  }

  if (yy_buffer_stack)
  {
    v17 = *yy_buffer_stack;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == v15)
  {
    *yy_buffer_stack = 0;
  }

  if (*(v15 + 10))
  {
    free(*(v15 + 1));
  }

  free(v15);
  return v16;
}

size_t cleanUnit()
{
  v0 = calc_yytext;
  result = strlen(calc_yytext);
  if (result - 1 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      *(&yylval + v2) = *(v0 + 1 + v2);
      ++v2;
    }

    while (result - 2 != v2);
  }

  *(&yylval + v2) = 0;
  return result;
}

size_t cleanCurrency()
{
  result = strlen(calc_yytext);
  if (result - 1 < 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result - 3;
    v2 = (calc_yytext + 2);
    v3 = &yylval;
    v4 = result - 3;
    do
    {
      v5 = *v2++;
      *v3 = v5;
      v3 = (v3 + 1);
      --v4;
    }

    while (v4);
  }

  *(&yylval + v1) = 0;
  return result;
}

void *calc_yyensure_buffer_stack()
{
  result = yy_buffer_stack;
  if (!yy_buffer_stack)
  {
    result = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    yy_buffer_stack = result;
    if (result)
    {
      *result = 0;
      v2 = 1;
      goto LABEL_7;
    }

LABEL_9:
    yy_fatal_error("out of dynamic memory in yyensure_buffer_stack()");
  }

  if (yy_buffer_stack_max != 1)
  {
    return result;
  }

  result = malloc_type_realloc(yy_buffer_stack, 0x48uLL, 0x2004093837F09uLL);
  yy_buffer_stack = result;
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = &result[yy_buffer_stack_max];
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v2 = 9;
LABEL_7:
  yy_buffer_stack_max = v2;
  return result;
}

uint64_t calc_yy_create_buffer(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x1030040AEDD1436uLL);
  if (!v2 || (v3 = v2, v2[6] = 0x4000, v4 = malloc_type_malloc(0x4002uLL, 0x100004077774924uLL), (*(v3 + 8) = v4) == 0))
  {
    yy_fatal_error("out of dynamic memory in yy_create_buffer()");
  }

  *(v3 + 40) = 1;
  calc_yy_init_buffer(v3, a1);
  return v3;
}

uint64_t yy_get_previous_state()
{
  result = yy_start;
  v1 = calc_yytext;
  if (calc_yytext < yy_c_buf_p)
  {
    do
    {
      if (*v1)
      {
        v2 = yy_ec[*v1];
      }

      else
      {
        v2 = 1u;
      }

      if (yy_accept[result])
      {
        yy_last_accepting_state = result;
        yy_last_accepting_cpos = v1;
      }

      v3 = result;
      v4 = yy_base[result] + v2;
      if (result != yy_chk[v4])
      {
        do
        {
          v3 = yy_def[v3];
          if (v3 >= 531)
          {
            v2 = *(&yy_meta + v2);
          }

          v4 = yy_base[v3] + v2;
        }

        while (yy_chk[v4] != v3);
      }

      result = yy_nxt[v4];
      ++v1;
    }

    while (v1 != yy_c_buf_p);
  }

  return result;
}

int *calc_yy_init_buffer(uint64_t a1, uint64_t a2)
{
  v4 = *__error();
  *(a1 + 32) = 0;
  **(a1 + 8) = 0;
  *(*(a1 + 8) + 1) = 0;
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 48) = 1;
  *(a1 + 64) = 0;
  v5 = yy_buffer_stack;
  if (!yy_buffer_stack)
  {
    if (a1)
    {
      v6 = 0;
      *a1 = a2;
      *(a1 + 60) = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (*yy_buffer_stack == a1)
  {
LABEL_6:
    v7 = *yy_buffer_stack;
    yy_n_chars = *(*yy_buffer_stack + 32);
    yy_c_buf_p = v7[2];
    calc_yytext = yy_c_buf_p;
    calc_yyin = *v7;
    yy_hold_char = *yy_c_buf_p;
  }

  *a1 = a2;
  *(a1 + 60) = 1;
  v6 = *v5;
LABEL_8:
  if (v6 != a1)
  {
    *(a1 + 52) = 1;
  }

  *(a1 + 44) = 0;
  result = __error();
  *result = v4;
  return result;
}

char *calc_yy_scan_bytes(uint64_t a1, unint64_t a2)
{
  v4 = a2 + 2;
  v5 = malloc_type_malloc(a2 + 2, 0x100004077774924uLL);
  if (!v5)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_bytes()");
  }

  v6 = v5;
  if (a2)
  {
    v7 = 0;
    do
    {
      *(v5 + v7) = *(a1 + v7);
      ++v7;
    }

    while (a2 != v7);
    *(v5 + a2) = 0;
    if (a2 > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_16:
      yy_fatal_error("bad buffer in yy_scan_bytes()");
    }
  }

  else
  {
    *v5 = 0;
  }

  if (*(v5 + v4 - 1))
  {
    goto LABEL_16;
  }

  v8 = malloc_type_malloc(0x48uLL, 0x1030040AEDD1436uLL);
  if (!v8)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_buffer()");
  }

  v9 = v8;
  *(v8 + 6) = a2;
  *(v8 + 1) = v6;
  *(v8 + 2) = v6;
  *v8 = 0;
  *(v8 + 4) = a2;
  *(v8 + 5) = 0;
  *(v8 + 12) = 1;
  *(v8 + 60) = 0;
  calc_yyensure_buffer_stack();
  v10 = yy_buffer_stack;
  if (!yy_buffer_stack)
  {
    goto LABEL_14;
  }

  if (*yy_buffer_stack != v9)
  {
    if (*yy_buffer_stack)
    {
      v11 = yy_c_buf_p;
      *yy_c_buf_p = yy_hold_char;
      *(*v10 + 16) = v11;
      *(*v10 + 32) = yy_n_chars;
    }

LABEL_14:
    *v10 = v9;
    yy_n_chars = *(v9 + 4);
    yy_c_buf_p = *(v9 + 2);
    calc_yytext = yy_c_buf_p;
    calc_yyin = *v9;
    yy_hold_char = *yy_c_buf_p;
  }

  *(v9 + 10) = 1;
  return v9;
}

unint64_t __dpml_bid_exception(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 27;
  *(a1 + 48) = v2;
  *a1 = v1 & 0xFFFFFFFF07FFFFFFLL;
  a1[3] = 0;
  if ((v1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v4 = &__dpml_response_table + 8 * (v1 & 0xFFFFFFFF07FFFFFFLL);
  v5 = v4[6];
  *(a1 + 49) = v4[6];
  a1[4] = &__dpml_bid_globals_table + 32 * v4[7] + 8 * v2;
  if (v5)
  {
    if (v5 < 3)
    {
      v6 = 33;
    }

    else
    {
      v6 = 34;
    }

    *__error() = v6;
    if ((a1[3] >> *(a1 + 49)))
    {
      raise(8);
    }
  }

  return a1[4];
}

double bid_f128_mul(__n128 *a1, uint64_t *a2, uint64_t *a3)
{
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v7, 0, sizeof(v7));
  if ((__dpml_bid_unpack2__(a2, a3, v10, v9, qword_1C1F5E6F0, a1, v7) & 0x8000000000000000) == 0)
  {
    memset(v8, 0, sizeof(v8));
    __dpml_bid_multiply__(v10, v9, v8);
    if (LODWORD(v8[0]))
    {
      v5 = 173;
    }

    else
    {
      v5 = 172;
    }

    if (LODWORD(v8[0]))
    {
      v6 = 175;
    }

    else
    {
      v6 = 174;
    }

    *&result = __dpml_bid_pack__(v8, a1, v5, v6).n128_u64[0];
  }

  return result;
}

double bid_f128_div(__n128 *a1, uint64_t *a2, uint64_t *a3)
{
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v7, 0, sizeof(v7));
  if ((__dpml_bid_unpack2__(a2, a3, v10, v9, qword_1C1F5E728, a1, v7) & 0x8000000000000000) == 0)
  {
    memset(v8, 0, sizeof(v8));
    __dpml_bid_divide__(v10, v9, 0, v8);
    if (LODWORD(v8[0]))
    {
      v5 = 173;
    }

    else
    {
      v5 = 172;
    }

    if (LODWORD(v8[0]))
    {
      v6 = 175;
    }

    else
    {
      v6 = 174;
    }

    *&result = __dpml_bid_pack__(v8, a1, v5, v6).n128_u64[0];
  }

  return result;
}

double bid_f128_add(__n128 *a1, uint64_t *a2, uint64_t *a3)
{
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v7, 0, sizeof(v7));
  if ((__dpml_bid_unpack2__(a2, a3, v10, v9, qword_1C1F5E780, a1, v7) & 0x8000000000000000) == 0)
  {
    memset(v8, 0, sizeof(v8));
    __dpml_bid_addsub__(v10, v9, 0, v8);
    if (LODWORD(v8[0]))
    {
      v5 = 173;
    }

    else
    {
      v5 = 172;
    }

    if (LODWORD(v8[0]))
    {
      v6 = 175;
    }

    else
    {
      v6 = 174;
    }

    *&result = __dpml_bid_pack__(v8, a1, v5, v6).n128_u64[0];
  }

  return result;
}

double bid_f128_sub(__n128 *a1, uint64_t *a2, uint64_t *a3)
{
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v7, 0, sizeof(v7));
  if ((__dpml_bid_unpack2__(a2, a3, v10, v9, qword_1C1F5E7B8, a1, v7) & 0x8000000000000000) == 0)
  {
    memset(v8, 0, sizeof(v8));
    __dpml_bid_addsub__(v10, v9, 1uLL, v8);
    if (LODWORD(v8[0]))
    {
      v5 = 173;
    }

    else
    {
      v5 = 172;
    }

    if (LODWORD(v8[0]))
    {
      v6 = 175;
    }

    else
    {
      v6 = 174;
    }

    *&result = __dpml_bid_pack__(v8, a1, v5, v6).n128_u64[0];
  }

  return result;
}

double bid_f128_itof(__n128 *a1, int a2)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = v4 << 32;
  v6 = 0xFFFF000000000000;
  v7 = 32;
  v8 = 16;
  do
  {
    v9 = v8;
    v10 = (v6 & v5) == 0;
    if ((v6 & v5) != 0)
    {
      v9 = 0;
    }

    v5 <<= v9;
    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v7 -= v11;
    v6 <<= v8 >> 1;
    v12 = v8 > 1;
    v8 >>= 1;
  }

  while (v12);
  v17 = v2;
  v18 = v3;
  v14[0] = 0;
  v14[1] = v7;
  v15 = v5;
  v16 = 0;
  *&result = __dpml_bid_pack__(v14, a1, 0, 0).n128_u64[0];
  return result;
}

uint64_t bid_f128_cmp(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  v4 = __dpml_bid_unpack2__(a1, a2, v9, v8, qword_1C1F5E6F0, &v6, v7);
  return (a3 >> __dpml_bid_ux_cmp__(v4 >> 4, v9, v4 & 0xF, v8)) & 1;
}

uint64_t __dpml_bid_ux_cmp__(uint64_t a1, _DWORD *a2, char a3, uint64_t a4)
{
  result = (cmpTable[a1] >> (3 * a3)) & 7;
  if (result == 4)
  {
    v5 = a2[1];
    v6 = *(a4 + 4);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      result = 0;
      LOBYTE(v7) = 1;
      while (1)
      {
        v9 = v7;
        v7 = *&a2[2 * result + 2] - *(a4 + 8 + 8 * result);
        if (v7)
        {
          break;
        }

        result = 1;
        if ((v9 & 1) == 0)
        {
          return result;
        }
      }
    }

    if (v7 < 0)
    {
      v8 = 2 * (*a2 != 0);
    }

    else
    {
      v8 = 1;
    }

    if (v7 >= 1)
    {
      return 2 * (*a2 == 0);
    }

    else
    {
      return v8;
    }
  }

  return result;
}

double bid_f128_nextafter(__n128 *a1, uint64_t *a2, uint64_t *a3)
{
  memset(v12, 0, sizeof(v12));
  v10 = 0;
  v11 = 0uLL;
  memset(v9, 0, sizeof(v9));
  v4 = __dpml_bid_unpack2__(a2, a3, v12, &v10, qword_1C1F5E6D8, a1, v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = __dpml_bid_ux_cmp__(v4 >> 4, v12, v4 & 0xF, &v10);
    HIDWORD(v10) = HIDWORD(v12[0]);
    if (v6 != 1)
    {
      LODWORD(v10) = (v6 != 0) << 31;
      v11 = xmmword_1C1F58C50;
      __dpml_bid_addsub__(v12, &v10, 0, v12);
    }

    if (LODWORD(v12[0]))
    {
      v7 = 173;
    }

    else
    {
      v7 = 172;
    }

    if (LODWORD(v12[0]))
    {
      v8 = 175;
    }

    else
    {
      v8 = 174;
    }

    *&result = __dpml_bid_pack__(v12, a1, v7, v8).n128_u64[0];
  }

  return result;
}

void __dpml_bid_C_ux_erf__(uint64_t *a1, unint64_t a2, __n128 *a3, void *a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
    v7 = &__dpml_bid_erf_x_table;
  }

  else
  {
    v7 = &unk_1C1F5E8F0;
  }

  if ((__dpml_bid_unpack_x_or_y__(a1, 0, &v14, v7, a3, a4) & 0x8000000000000000) == 0)
  {
    if (v14.i32[1] > 3)
    {
      if (v14.i32[1] == 4)
      {
        v9 = v15 >> 58 >= 0x23;
        v8 = 1;
      }

      else
      {
        v9 = v14.i32[1] >= 8u;
        v8 = 2;
      }

      if (v9)
      {
        ++v8;
      }
    }

    else
    {
      v8 = v14.i32[1] > 0;
    }

    v10 = v8 | (4 * (v14.i32[0] != 0));
    v14.i32[0] = 0;
    v11 = a2 & 0x80000000;
    v12 = &unk_1C1F5E910;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        if ((a2 & 1) == 0)
        {
          v17.i32[1] = -32768;
          v18 = xmmword_1C1F58C60;
          v12 = &v17;
        }

        goto LABEL_28;
      }

      if (v10 == 5)
      {
        goto LABEL_26;
      }

      if (v10 != 4)
      {
LABEL_28:
        v17.i32[0] = v11;
        v19[1] = (((a2 >> (2 * v10)) & 3) - 1);
        __dpml_bid_ffs_and_shift__(v19, 1);
        __dpml_bid_addsub__(v12, v19, 8uLL, &v17);
        __dpml_bid_pack__(&v17, a3, 140, 0);
        goto LABEL_29;
      }

      v11 ^= 0x80000000;
    }

    else if (v10)
    {
      if (v10 != 1)
      {
        if (v10 != 2 || (a2 & 1) != 0)
        {
          goto LABEL_28;
        }

        __dpml_bid_divide__(0, &v14, 2, v20);
        __dpml_bid_evaluate_rational__(v20, &unk_1C1F5EA98, 10, 0xC00000000000046uLL, &v17);
        v11 = 0;
        goto LABEL_27;
      }

      v11 ^= 0x80000000;
LABEL_26:
      __dpml_bid_evaluate_packed_poly__(&v14, 16, qword_1C1F5EC08, 6, v19);
      __dpml_bid_evaluate_packed_poly__(&v14, 17, &qword_1C1F5EC08[34], 5, v20);
      __dpml_bid_divide__(v19, v20, 2, &v17);
LABEL_27:
      v12 = &v17;
      __dpml_bid_extended_multiply__(&v14, &v14, v19, v20);
      v19[0].i32[0] = 0x80000000;
      __dpml_bid_ux_exp_common__(v19, v19);
      __dpml_bid_multiply__(v20, v19, v20);
      __dpml_bid_addsub__(v19, v20, 9uLL, v19);
      __dpml_bid_multiply__(v19, &v17, &v17);
      goto LABEL_28;
    }

    v12 = &v17;
    __dpml_bid_evaluate_rational__(&v14, &unk_1C1F5E928, 10, 0x46uLL, &v17);
    goto LABEL_28;
  }

LABEL_29:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __dpml_bid_ux_exp_common__(uint64_t a1, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  v3 = __dpml_bid_ux_exp_reduce__(a1, v5);
  result = __dpml_bid_evaluate_rational__(v5, &unk_1C1F5EEB8, 22, 1uLL, a2);
  *(a2 + 4) += v3;
  return result;
}

uint64_t __dpml_bid_ux_exp_reduce__(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 4);
  if ((v3 - 18) > 0xFFFFFFEC)
  {
    v7 = *(a1 + 8);
    v8 = 61 - v3;
    v9 = ((1 << (60 - v3)) + 1549082004 * (v7 >> 33) + ((1549082004 * (v7 >> 1)) >> 32) + ((((2920020062u * (v7 >> 1)) >> 32) + 2920020062u * (v7 >> 33) + 1549082004 * (v7 >> 1)) >> 32)) & (-1 << (61 - v3));
    if (v9 >= 1)
    {
      do
      {
        v9 *= 2;
        ++v8;
      }

      while (v9 > 0);
    }

    v10 = ((2977044471u * v9) >> 32) + 2977044471 * HIDWORD(v9) + ((((3520035244u * v9) >> 32) + 3520035244 * HIDWORD(v9) + (-1317922825 * v9)) >> 32);
    v11 = 63 - v8;
    v12 = v10 > 0;
    *(&v14 + 1) = v10;
    *&v14 = 0xB17217F7D1CF79ACLL * v9;
    v13 = v14 >> 63;
    if (v10 <= 0)
    {
      v11 = 64 - v8;
    }

    v16[0] = *a1;
    v16[1] = v11;
    if (v10 > 0)
    {
      v10 = v13;
    }

    v17 = v10;
    v18 = (0xB17217F7D1CF79ACLL * v9) << v12;
    __dpml_bid_addsub__(a1, v16, 1uLL, v16);
    v19[0].i32[0] = v4;
    v19[0].i32[1] = 64 - v8;
    v19[1] = v9;
    v19[2] = 0;
    __dpml_bid_multiply__(v19, qword_1C1F5EE98, a2);
    __dpml_bid_addsub__(v16, a2, 9uLL, a2);
    v6 = v9 >> v8;
    v5 = v4 == 0;
  }

  else
  {
    *a2 = v4;
    *(a2 + 4) = v3;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = *(a1 + 16);
    if (v3 < 1)
    {
      return 0;
    }

    *(a2 + 4) = -128;
    v5 = v4 == 0;
    v6 = 0x8000;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return -v6;
  }
}

double bid_f128_exp(__n128 *a1, uint64_t *a2)
{
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if ((__dpml_bid_unpack_x_or_y__(a2, 0, v6, &__dpml_bid_exp_x_table, a1, v4) & 0x8000000000000000) == 0)
  {
    __dpml_bid_ux_exp_common__(v6, v5);
    *&result = __dpml_bid_pack__(v5, a1, 34, 33).n128_u64[0];
  }

  return result;
}

void __dpml_bid_C_ux_hyperbolic__(__n128 *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  if ((__dpml_bid_unpack_x_or_y__(a2, 0, v16, a3, a1, a6) & 0x8000000000000000) != 0)
  {
    if ((a4 & 0x8000) != 0)
    {
      __dpml_bid_unpack_x_or_y__(a2, 0, v16, &qword_1C1F5EE58, &a1[1], a6);
    }
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v11 = v16[0];
    LODWORD(v16[0]) = 0;
    v12 = __dpml_bid_ux_exp_reduce__(v16, v17);
    if (v12)
    {
      v13 = 326;
    }

    else
    {
      v13 = a4 & 0x7FF;
    }

    __dpml_bid_evaluate_rational__(v17, &unk_1C1F5F1F8, 11, v13, v18);
    if (v12)
    {
      __dpml_bid_addsub__(v19, v18, 0xAuLL, v20);
      v21 = v12 + v21 - 1;
      v23 += ~v12;
      __dpml_bid_addsub__(v20, &v22, (a4 >> 11) & 3 | 0xC, v18);
      if ((a4 & 0x10000) != 0)
      {
        __dpml_bid_divide__(v18, v19, 2, v18);
      }
    }

    if ((a4 & 0x4000) != 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11;
    }

    v18[0] = v14;
    __dpml_bid_pack__(v18, a1, 0, a5);
    if ((a4 & 0x8000) != 0)
    {
      __dpml_bid_pack__(v19, a1 + 1, 0, 19);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

double bid_f128_asinh(__n128 *a1, uint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  if (__dpml_bid_unpack_x_or_y__(a2, 0, &v8, &__dpml_bid_inv_hyper_x_table, a1, v5) >= 1)
  {
    v4 = v8.i32[0];
    v8.i32[0] = 0;
    __dpml_bid_multiply__(&v8, &v8, v6);
    __dpml_bid_addsub__(v6, dword_1C1F5F3D0, 0, v6);
    __dpml_bid_ffs_and_shift__(v6, 0);
    __dpml_bid_ux_sqrt_evaluation__(v6, v6);
    if (v8.i32[1] < -1 || v8.i32[1] == -1 && v9 <= 0xB504F333F9DE6484)
    {
      __dpml_bid_addsub__(v6, dword_1C1F5F3D0, 0, v6);
      __dpml_bid_divide__(&v8, v6, 2, v6);
      __dpml_bid_evaluate_rational__(v6, &unk_1C1F5FD58, 17, 6uLL, v7);
      __dpml_bid_multiply__(v7, qword_1C1F5FEB0, v7);
    }

    else
    {
      __dpml_bid_addsub__(v6, &v8, 0, v6);
      __dpml_bid_ffs_and_shift__(v6, 0);
      __dpml_bid_ux_log__(v6, qword_1C1F5F3E8, v7);
    }

    v7[0].i32[0] = v4;
    *&result = __dpml_bid_pack__(v7, a1, 0, 0).n128_u64[0];
  }

  return result;
}

void __dpml_bid_ux_asin_acos__(uint64_t *a1, unint64_t a2, uint64_t *a3, __n128 *a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((__dpml_bid_unpack_x_or_y__(a1, 0, &v11, a3, a4, a5) & 0x8000000000000000) == 0)
  {
    if (v11.i32[0])
    {
      v7 = 12;
    }

    else
    {
      v7 = 0;
    }

    v11.i32[0] = 0;
    if ((v11.i32[1] & 0x80000000) == 0)
    {
      v7 += 6;
      if (v11.i32[1] == 1)
      {
        if (v12 == 0x8000000000000000 && !v13)
        {
          v8 = 0;
          v11.i32[1] = -131072;
          v12 = 0;
          v13 = 0;
          goto LABEL_13;
        }
      }

      else if (!v11.i32[1])
      {
        __dpml_bid_addsub__(&unk_1C1F5F5B8, &v11, 5uLL, &v11);
        --v11.i32[1];
        __dpml_bid_ux_sqrt_evaluation__(&v11, &v11);
        v8 = 1;
LABEL_13:
        __dpml_bid_evaluate_rational__(&v11, &unk_1C1F5F790, 11, 0x4000000000000CEuLL, &v14);
        v9 = a2 >> v7;
        LODWORD(v14) = (v9 << 28) & 0x80000000;
        HIDWORD(v14) += v8;
        __dpml_bid_addsub__(&__dpml_bid_inv_trig_x_table + (v9 & 0xF0) + 320, &v14, 8uLL, &v14);
        LODWORD(v14) = (v9 << 29) & 0x80000000;
LABEL_15:
        __dpml_bid_pack__(&v14, a4, 0, 3);
        goto LABEL_16;
      }

      v14 = 0x800000000000;
      v15 = xmmword_1C1F58C60;
      goto LABEL_15;
    }

    v8 = 0;
    goto LABEL_13;
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
}

void bid_f128_lgamma(__n128 *a1, uint64_t *a2)
{
  v53[3] = *MEMORY[0x1E69E9840];
  memset(v39, 0, sizeof(v39));
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if ((__dpml_bid_unpack_x_or_y__(a2, 0, &v43, __dpml_bid_lgamma_x_table, a1, v39) & 0x8000000000000000) == 0)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    memset(v46, 0, sizeof(v46));
    v3 = v43.i32[1];
    v4 = v43.i32[1] + 1;
    v43.i32[1] = v4;
    v51 = 0uLL;
    v5 = 127 - v3;
    v6 = v45;
    if (v4 <= 64)
    {
      v12 = 0;
      v7 = 0;
      v13 = 1;
      while (1)
      {
        v11 = (&v44 + v12 * 8);
        v14 = (&v50 + v12 * 8);
        v52[v12 - 1] = 0;
        v7 = v6 | (v7 != 0);
        v5 -= 64;
        if ((v13 & 1) == 0)
        {
          break;
        }

        v13 = 0;
        v6 = *v11;
        --v12;
        if (v5 + 64 < 128)
        {
          v11 = (&v44 + v12 * 8);
          v8 = &v52[v12 - 1];
          v9 = 1;
          v10 = 1;
          goto LABEL_11;
        }
      }

      v9 = 0;
      v10 = 0;
      v6 = 0;
      v8 = v14 + 1;
      if (v5)
      {
        v7 = v7 != 0;
      }

      v5 = 0;
    }

    else
    {
      v7 = 0;
      v8 = &v51 + 1;
      v9 = 1;
      v10 = 2;
      v11 = &v44;
    }

LABEL_11:
    v15 = v5 & ~(v5 >> 63);
    v16 = 2 * v6;
    if (1 << v15 == 1)
    {
      v17 = v16 & 2 | (v7 >> 63);
      v18 = 2 * v7;
      v20 = v6;
    }

    else
    {
      v17 = (v6 >> (v15 - 1)) & 3;
      v18 = v16 & ((1 << v15) - 1) | v7;
      if (v4 < 65)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v11;
      }

      v20 = ((2 * v19) << ~v15) | (v6 >> v15);
    }

    v21 = v43.i32[0];
    v22 = (0x2A8A8uLL >> ((v17 | (4 * (v18 != 0))) | (v43.i32[0] >> 28) & 8)) & 1;
    if (v9)
    {
      if (v22)
      {
        v23 = 1 << v15;
      }

      else
      {
        v23 = 0;
      }

      v24 = v6 & -(1 << v15);
      v25 = v10 + 1;
      do
      {
        v26 = v23;
        v27 = v23 + v24;
        v23 = __CFADD__(v23, v24);
        *v8-- = v27;
        v28 = *v11--;
        v24 = v28;
        --v25;
      }

      while (v25 > 1);
      if (v27 >= v26)
      {
LABEL_30:
        v50 = __PAIR64__(v4, v21);
        __dpml_bid_addsub__(&v43, &v50, 1uLL, &v47);
        v29 = v22 + v20;
        v43.i32[1] = v3;
        if (v21)
        {
          v30 = -v29;
        }

        else
        {
          v30 = v29;
        }

        if (!v21 || v29 & 1 | v48)
        {
          if (v3 > 4)
          {
            v43.i32[0] = 0;
            __dpml_bid_ux_log__(&v43, qword_1C1F5F988, &v40);
            if (v21)
            {
              v34 = &qword_1C1F5F988[9];
            }

            else
            {
              v34 = &qword_1C1F5F988[6];
            }

            __dpml_bid_addsub__(&v43, dword_1C1F5F958, v21 == 0, &v50);
            __dpml_bid_multiply__(&v40, &v50, &v40);
            __dpml_bid_addsub__(&v40, &v43, 1uLL, &v40);
            __dpml_bid_addsub__(&v40, v34, 0, &v40);
            __dpml_bid_divide__(0, &v43, 2, &v50);
            __dpml_bid_evaluate_rational__(&v50, &unk_1C1F5FBD8, 7, 0xC00000000000046uLL, v52);
            __dpml_bid_addsub__(&v40, v52, 0, &v40);
            if (!v21)
            {
              goto LABEL_56;
            }

            v40.i32[0] ^= v21;
            __dpml_bid_multiply__(&v47, &qword_1C1F5F988[3], &v50);
            __dpml_bid_ux_sincos(&v50, 2 * v29, 1, &v50);
            __dpml_bid_ffs_and_shift__(&v50, 0);
            __dpml_bid_ux_log__(&v50, qword_1C1F5F988, &v50);
            v35 = 1;
          }

          else
          {
            v31 = v30 + (v47.i32[0] >> 31);
            v50 = 0x100000000;
            v51 = xmmword_1C1F58C60;
            if (v31 > 1)
            {
              if (v31 < 4)
              {
                v32 = v30 + (v47.i32[0] >> 31);
              }

              else
              {
                v36 = v30 + (v47.i32[0] >> 31);
                do
                {
                  __dpml_bid_addsub__(&v43, dword_1C1F5F940, 1uLL, &v43);
                  __dpml_bid_multiply__(&v50, &v43, &v50);
                  v32 = v36 - 2;
                  v37 = v36 > 5;
                  v36 -= 2;
                }

                while (v37);
              }
            }

            else
            {
              v32 = v30 + (v47.i32[0] >> 31);
              do
              {
                v33 = v32;
                __dpml_bid_multiply__(&v50, &v43, &v50);
                __dpml_bid_addsub__(&v43, dword_1C1F5F940, 0, &v43);
                v32 += 2;
              }

              while (v33 < 0);
            }

            ++v43.i32[1];
            __dpml_bid_addsub__(&v43, &dword_1C1F5F958[6], 1uLL, v46);
            __dpml_bid_addsub__(v46, dword_1C1F5F940, 2uLL, v52);
            __dpml_bid_multiply__(v52, v53, &v40);
            if (v41)
            {
              __dpml_bid_evaluate_rational__(v46, &unk_1C1F5F9E8, 14, 0x11uLL, v52);
              __dpml_bid_multiply__(&v40, v52, &v40);
            }

            if (v31 == v32)
            {
              goto LABEL_56;
            }

            LODWORD(v50) = 0;
            __dpml_bid_ffs_and_shift__(&v50, 0);
            __dpml_bid_ux_log__(&v50, qword_1C1F5F988, &v50);
            v35 = v31 < v32;
          }

          __dpml_bid_addsub__(&v40, &v50, v35, &v40);
        }

        else
        {
          v40.i32[1] = -32768;
          v41 = 0x8000000000000000;
        }

LABEL_56:
        __dpml_bid_pack__(&v40, a1, 138, 135);
        goto LABEL_57;
      }
    }

    else if (!v22)
    {
      goto LABEL_30;
    }

    v4 = (v4 & ~(v4 >> 31)) + 1;
    v8[1] = 0x8000000000000000;
    goto LABEL_30;
  }

LABEL_57:
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __dpml_bid_ux_log__(uint64_t a1, int8x8_t *a2, int8x8_t *a3)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v6 = ((__PAIR128__(*(a1 + 4), *(a1 + 8)) - 0xB504F333F9DE6485) >> 64);
  *(a1 + 4) = *(a1 + 8) < 0xB504F333F9DE6485;
  __dpml_bid_addsub__(a1, dword_1C1F5FE80, 6uLL, v9);
  *(a1 + 4) += v6.i32[0];
  __dpml_bid_divide__(v10, v9, 2, a3);
  __dpml_bid_evaluate_rational__(a3, &unk_1C1F5FD58, 17, 6uLL, v9);
  a3[1] = v6;
  __dpml_bid_ffs_and_shift__(a3, 1);
  result = __dpml_bid_addsub__(a3, v9, 8uLL, a3);
  if (a2)
  {
    result = __dpml_bid_multiply__(a3, a2, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

double bid_f128_log(__n128 *a1, uint64_t *a2)
{
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if ((__dpml_bid_unpack_x_or_y__(a2, 0, v6, __dpml_bid_log_x_table, a1, v4) & 0x8000000000000000) == 0)
  {
    __dpml_bid_ux_log__(v6, qword_1C1F5FEB0, v5);
    *&result = __dpml_bid_pack__(v5, a1, 0, 0).n128_u64[0];
  }

  return result;
}

uint64_t __dpml_bid_ffs_and_shift__(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    if (v2 >= 0)
    {
      v3 = *(a1 + 8);
    }

    else
    {
      v3 = -v2;
    }

    *(a1 + 8) = v3;
    *(a1 + 16) = 0;
    *a1 = HIDWORD(v2) & 0x80000000;
    if (v2)
    {
      v4 = 0;
      v5 = 64;
      goto LABEL_7;
    }

LABEL_22:
    *a1 = 0xFFFE000000000000;
    return 128;
  }

  if (v2 < 0)
  {
    return 0;
  }

  v5 = *(a1 + 4);
  v3 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = 64;
LABEL_7:
  v6 = 0;
  v2 = v3;
  v3 = 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
LABEL_12:
    v7 = (v2 >> 58) & 0x1E;
    if (v7)
    {
      v8 = ((0x55ACu >> v7) & 3) + 1;
    }

    else
    {
      v9 = v2 & 0x7FFFFFFFFFFFFF00;
      if ((v2 & 0x7FFFFFFFFFFFFF00) == 0)
      {
        v9 = v2;
      }

      v8 = 1086 - (COERCE_UNSIGNED_INT64(v9) >> 52);
    }

    v2 = (v2 << v8) | (v3 >> 1 >> ~v8);
    v6 = v3 << v8;
    v4 += v8;
  }

  *(a1 + 8) = v2;
  *(a1 + 16) = v6;
  *(a1 + 4) = v5 - v4;
  return v4;
}

uint64_t __dpml_bid_addsub__(uint64_t result, _DWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = result;
  v6 = *result;
  v7 = *(result + 4);
  v8 = a2[1];
  if ((a3 & 4) != 0)
  {
    v6 = 0;
  }

  v9 = (*a2 ^ *result) >> 31;
  if ((a3 & 4) != 0)
  {
    v9 = 0;
  }

  v10 = v9 ^ a3;
  v11 = v7 - v8;
  if (v7 - v8 < 0)
  {
    v11 = -v11;
    v12 = 0x80000000;
    v13 = result;
    v5 = a2;
    v7 = a2[1];
    v6 ^= v10 << 31;
  }

  else
  {
    v12 = 0;
    v13 = a2;
  }

  v14 = *(v13 + 1);
  if (v11 < 64)
  {
    v15 = *(v13 + 1);
    v14 = *(v13 + 2);
    goto LABEL_12;
  }

  if (v11 < 0x80)
  {
    v15 = 0;
    LOBYTE(v11) = v11 - 64;
LABEL_12:
    v16 = v10 & 1;
    v17 = v15 >> v11;
    v18 = ((2 * v15) << ~v11) | (v14 >> v11);
    while (1)
    {
      v20 = *(v5 + 1);
      v19 = *(v5 + 2);
      v21 = a3 - 8;
      v22 = v19 - v18;
      if (v19 >= v18)
      {
        v23 = v17;
      }

      else
      {
        v23 = v17 + 1;
      }

      v24 = v20 - v23;
      if (v19 == v18)
      {
        v25 = 0;
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 - v24;
      v27 = __PAIR128__(v23, v19) >= v18 && v20 >= v23;
      if (v27)
      {
        v28 = v12;
      }

      else
      {
        v28 = 0x80000000;
      }

      if (v27)
      {
        v29 = v6;
      }

      else
      {
        v29 = v6 ^ 0x80000000;
      }

      if (!v27)
      {
        v24 = v26;
        v22 = v18 - v19;
      }

      v30 = a3 & 0xF;
      v31 = __CFADD__(v19, v18);
      v32 = v19 + v18;
      v33 = v31;
      if (v31)
      {
        v34 = v17 + 1;
      }

      else
      {
        v34 = v17;
      }

      v35 = v17 + v31 + v20;
      v27 = v34 >= v33;
      *(&v36 + 1) = v35;
      *&v36 = v32;
      result = v36 >> 1;
      v37 = v27 && v35 >= v20;
      v38 = (v35 >> 1) | 0x8000000000000000;
      if (v37)
      {
        v39 = v7;
      }

      else
      {
        v39 = v7 + 1;
      }

      if (v37)
      {
        v38 = v35;
      }

      else
      {
        v32 = result;
      }

      if (v16)
      {
        v40 = v21;
      }

      else
      {
        v40 = v30;
      }

      if (v16)
      {
        v12 = v28;
        v41 = v29;
      }

      else
      {
        v41 = v6;
      }

      if (v16)
      {
        v42 = v7;
      }

      else
      {
        v42 = v39;
      }

      if (v16)
      {
        v43 = v24;
      }

      else
      {
        v43 = v38;
      }

      if (v16)
      {
        v32 = v22;
      }

      *(v4 + 8) = v43;
      *(v4 + 16) = v32;
      *v4 = v41;
      *(v4 + 4) = v42;
      if ((v40 & 0x10) != 0)
      {
        result = __dpml_bid_ffs_and_shift__(v4, 0);
      }

      if ((v40 & 2) == 0)
      {
        break;
      }

      v16 = 1 - v16;
      a3 = v40 & 0xFFFFFFFFFFFFFFFDLL;
      v4 += 24;
      v6 = v41 ^ v12;
      v7 = v5[1];
    }

    return result;
  }

  v44 = v5[1];
  *(a4 + 8) = *(v5 + 1);
  *(a4 + 16) = *(v5 + 2);
  *a4 = v6;
  *(a4 + 4) = v44;
  if ((a3 & 2) != 0)
  {
    *(a4 + 32) = *(v5 + 1);
    *(a4 + 40) = *(v5 + 2);
    *(a4 + 24) = v6 ^ v12;
    *(a4 + 28) = v44;
  }

  return result;
}

unint64_t __dpml_bid_unpack_x_or_y__(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v11 = a2 != 0;
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  a6[(a2 != 0) + 2] = v12;
  v14 = *v12;
  v13 = v12[1];
  v15 = HIWORD(v13) & 0x7FFF;
  *a3 = HIDWORD(v13) & 0x80000000;
  *(a3 + 4) = v15 - 16382;
  *(&v17 + 1) = v13;
  *&v17 = v14;
  v16 = v17 >> 49;
  *(a3 + 8) = v16 | 0x8000000000000000;
  *(a3 + 16) = v14 << 15;
  v18 = v13 >> 63;
  if ((((v13 + 0x1000000000000) ^ (v13 - 0x1000000000000)) & 0x8000000000000000) != 0)
  {
    v20 = v14 | (v13 << 16);
    if ((((v13 - 0x1000000000000) ^ v13) & 0x8000000000000000) != 0)
    {
      if (v20)
      {
        *(a3 + 8) = v16 & 0x7FFFFFFFFFFFFFFFLL;
        *(a3 + 4) = v15 - 16381;
        __dpml_bid_ffs_and_shift__(a3, 0);
        v19 = 6;
      }

      else
      {
        v19 = 8;
      }
    }

    else
    {
      v21 = (v13 >> 47) & 1;
      if (v20)
      {
        v18 = v21;
        v19 = 0;
      }

      else
      {
        v19 = 2;
      }
    }
  }

  else
  {
    v19 = 4;
  }

  v22 = v19 | v18;
  *a6 = (1 << v22);
  v23 = ((*a4 >> (6 * v22)) >> 3) & 7;
  if (v23)
  {
    v24 = (*a4 >> (6 * v22)) & 7;
    if (v24 <= v11)
    {
      if (v24)
      {
        v26 = a2;
      }

      else
      {
        v26 = a1;
      }
    }

    else
    {
      v25 = a4[(*a4 >> 60) - 1 + v24];
      v26 = (&__dpml_bid_x_constants__ + 16 * v25);
      v24 = v25 & 0xFFFFFFFF87FFFFFFLL;
    }

    if (v23 == 7)
    {
      v36 = 0;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = v24 | 0x10000000;
      *a5 = *__dpml_bid_exception(&v30);
    }

    else
    {
      v27 = v26[1];
      if ((((*a4 >> (6 * v22)) >> 3) & 7) > 3)
      {
        if (v23 == 4)
        {
          v27 &= ~0x8000000000000000;
        }

        else if (v23 == 5)
        {
          v27 = a1[1] & 0x8000000000000000 | v27 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v28 = v27 | 0x800000000000;
        if (v23 == 3)
        {
          v27 ^= 0x8000000000000000;
        }

        if (v23 == 1)
        {
          v27 = v28;
        }
      }

      *(a5 + 8) = v27;
      *a5 = *v26;
    }

    return v22 | 0x8000000000000000;
  }

  return v22;
}

uint64_t __dpml_bid_unpack2__(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v13 = __dpml_bid_unpack_x_or_y__(a1, 0, a3, a5, a6, a7);
  v14 = v13;
  if (a2 && (v13 & 0x8000000000000000) == 0)
  {
    v15 = *a7;
    v16 = __dpml_bid_unpack_x_or_y__(a1, a2, a4, (a5 + ((a5[1] >> (4 * v13 - 3)) & 0x78)), a6, a7);
    *a7 |= v15;
    return v16 | (16 * v14);
  }

  return v14;
}

__n128 __dpml_bid_pack__(unsigned int *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  __dpml_bid_ffs_and_shift__(a1, 0);
  v9 = a1[1];
  if (v9 == -131072)
  {
    v10 = *a1 << 32;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = v10;
  }

  else
  {
    v30 = 0;
    result.n128_u64[0] = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    if (v9 <= -16382)
    {
      v32 = xmmword_1C1F58C60;
      v31[0] = *a1;
      v31[1] = -16381;
      __dpml_bid_addsub__(v31, a1, 0, a1);
      if (v9 < 0xFFFFBF92)
      {
        v9 = -16383;
      }

      else
      {
        v9 = -16382;
      }
    }

    v12 = *(a1 + 1);
    v11 = *(a1 + 2);
    v13 = v11 + 0x4000;
    v14 = v11 > 0xFFFFFFFFFFFFBFFFLL;
    v15 = __CFADD__(v12, v14);
    *(&v17 + 1) = v12 + v14;
    *&v17 = v13;
    v16 = v17 >> 15;
    v18 = *(&v17 + 1) >> 15;
    if (v15)
    {
      v18 = 0x1000000000000;
    }

    v19 = v18 + ((v15 + v9 + 16381) << 48);
    if (v15)
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = v9;
    }

    v21 = *a1;
    a2->n128_u64[0] = v16;
    a2->n128_u64[1] = v19 | (v21 << 32);
    if (v15 + v9 + 16382 >= 0x7FFF)
    {
      if (v20 >= 0)
      {
        v22 = a4;
      }

      else
      {
        v22 = a3;
      }

      v24 = v22 & 0xFFFFFFFF87FFFFFFLL | 0x10000000;
      v23 = __dpml_bid_exception(&v24);
      result = *v23;
      *a2 = *v23;
    }
  }

  return result;
}

uint64_t __dpml_bid_evaluate_packed_poly__(int8x8_t *a1, uint64_t a2, uint64_t *a3, int a4, int8x8_t *a5)
{
  v14[0] = 0;
  a5[1] = a3[1];
  v8 = *a3;
  a5[2] = (*a3 & 0xFFFFFFFFFFFFFFF8);
  a5->i32[0] = v8 << 31;
  a5->i32[1] = ((v8 >> 1) & 7) - a4;
  v9 = a2 + 1;
  v10 = a3 + 3;
  do
  {
    __dpml_bid_multiply__(a1, a5, a5);
    __dpml_bid_ffs_and_shift__(a5, 0);
    v11 = *(v10 - 1);
    v14[1] = *v10;
    v14[2] = v11 & 0xFFFFFFFFFFFFFFF8;
    v12 = ((v11 >> 1) & 7) - a4;
    result = __dpml_bid_addsub__(a5, v14, v11 & 1, a5);
    a5->i32[1] += v12;
    --v9;
    v10 += 2;
  }

  while (v9 > 1);
  return result;
}

uint64_t __dpml_bid_multiply__(int8x8_t *a1, int8x8_t *a2, void *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  v7 = ((v4.u32[1] * v5.u32[0]) >> 32) + v4.u32[1] * v5.u32[1] + ((((v4.u32[0] * v5.u32[0]) >> 32) + v4.u32[0] * v5.u32[1] + (v4.i32[1] * v5.i32[0])) >> 32);
  LODWORD(v8) = veor_s8(*a2, *a1).u32[0];
  HIDWORD(v8) = vadd_s32(*a2, *a1).i32[1];
  *a3 = v8;
  result = HIDWORD(*&v3);
  v10 = ((v6.u32[0] * v3.u32[1]) >> 32) + v6.u32[1] * v3.u32[1] + ((((v6.u32[0] * v3.u32[0]) >> 32) + v6.u32[1] * v3.u32[0] + (v6.i32[0] * v3.i32[1])) >> 32);
  v11 = __CFADD__(v7, *&v5 * *&v3);
  v12 = v7 + *&v5 * *&v3;
  v13 = v11;
  a3[1] = (__PAIR128__(((v5.u32[0] * v3.u32[1]) >> 32) + v5.u32[1] * v3.u32[1] + ((((v5.u32[0] * v3.u32[0]) >> 32) + v5.u32[1] * v3.u32[0] + (v5.i32[0] * v3.i32[1])) >> 32), v12) + __PAIR128__(v13, v10)) >> 64;
  a3[2] = v12 + v10;
  return result;
}

unint64_t __dpml_bid_extended_multiply__(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *a2 ^ *a1;
  v9 = *(a2 + 4) + *(a1 + 4);
  *a3 = v8;
  *(a3 + 4) = v9;
  *a4 = v8;
  *(a4 + 4) = v9 - 128;
  v10 = v4 * v7 + HIDWORD(v7) * HIDWORD(v5) + ((v7 * HIDWORD(v5)) >> 32) + ((((v7 * v5) >> 32) + HIDWORD(v7) * v5 + (v7 * HIDWORD(v5))) >> 32);
  v11 = v6 * v4;
  v12 = v6 * v5;
  *(a4 + 8) = v10 + v6 * v5;
  *(a4 + 16) = v7 * v5;
  v13 = ((v6 * HIDWORD(v5)) >> 32) + HIDWORD(v6) * HIDWORD(v5) + ((((v6 * v5) >> 32) + HIDWORD(v6) * v5 + (v6 * HIDWORD(v5))) >> 32);
  v14 = __PAIR128__(v6 * v4, v10) + __PAIR128__(v10 < v4 * v7, v12);
  v15 = __CFADD__((__PAIR128__(v6 * v4, v10) + __PAIR128__(v10 < v4 * v7, v12)) >> 64, v13);
  v16 = ((__PAIR128__(v6 * v4, v10) + __PAIR128__(v10 < v4 * v7, v12)) >> 64) + v13;
  v17 = v15;
  result = HIDWORD(v4);
  v19 = ((HIDWORD(v4) * v7) >> 32) + HIDWORD(v4) * HIDWORD(v7) + ((((v4 * v7) >> 32) + v4 * HIDWORD(v7) + (HIDWORD(v4) * v7)) >> 32);
  v20 = ((v6 * HIDWORD(v4)) >> 32) + HIDWORD(v6) * HIDWORD(v4) + ((((v6 * v4) >> 32) + HIDWORD(v6) * v4 + (v6 * HIDWORD(v4))) >> 32);
  if (*(&v14 + 1) < v11)
  {
    ++v20;
  }

  *(a3 + 8) = (__PAIR128__(v20, v16) + __PAIR128__(v17, v19)) >> 64;
  *(a3 + 16) = v16 + v19;
  return result;
}

uint64_t __dpml_bid_divide__(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = &__ux_one__;
  }

  if (result)
  {
    v6 = result;
  }

  else
  {
    v6 = &__ux_one__;
  }

  if (v5 == &__ux_one__)
  {
    *a4 = *v6;
    *(a4 + 8) = v6[1];
    *(a4 + 16) = v6[2];
  }

  else
  {
    v8 = v5[1];
    if ((v8 & 0x8000000000000000) == 0)
    {
      result = __dpml_bid_ffs_and_shift__(v5, 0);
      v8 = v5[1];
    }

    v9 = v5[2];
    v10 = 2.12676479e37 / (v8 >> 1);
    *(&v11 + 1) = v8;
    *&v11 = v9;
    v12 = v6[1];
    v13 = v6[2];
    v14 = *(v6 + 1);
    v15 = *(v5 + 1);
    *a4 = *v5 ^ *v6;
    v16 = v14 - v15;
    v17 = (v10 - 1280) & 0xFFFFFFF000000000;
    v18 = v10 * 4.07831529e-56 * (2.12676479e37 - ((v8 >> 1) & 0x7FFFFFE000000000) * v17 + ((v11 >> 49) & 0x1FFFFFFFFFFFFFLL) * -0.0000152587891 * v17);
    *(&v11 + 1) = v12;
    *&v11 = v13;
    v19 = vcvtd_n_f64_s64(v17, 0x3CuLL);
    v20 = v18 * ((v12 >> 1) & 0x7FFFFFFFFFFFFC00) + vcvtd_n_f64_u64((v11 >> 49) & 0x1FFFFFFFFFFFFFLL, 0x10uLL) * v19;
    v21 = v19 * ((v12 >> 1) & 0x7FFFFFE000000000) * 0.25;
    v22 = v20 + 4 * v21;
    if (__CFADD__(v20, 4 * v21))
    {
      v23 = (v21 >> 62) + 1;
    }

    else
    {
      v23 = v21 >> 62;
    }

    if (a3 == 1)
    {
      v24 = 0;
    }

    else
    {
      v25 = ((v22 * HIDWORD(v9)) >> 32) + HIDWORD(v22) * HIDWORD(v9) + ((((v22 * v9) >> 32) + HIDWORD(v22) * v9 + (v22 * HIDWORD(v9))) >> 32);
      v26 = ((v22 * HIDWORD(v8)) >> 32) + HIDWORD(v22) * HIDWORD(v8) + ((((v22 * v8) >> 32) + HIDWORD(v22) * v8 + (v22 * HIDWORD(v8))) >> 32);
      v27 = v9 & -v23;
      v28 = v8 & -v23;
      v29 = v25 + v27 + v22 * v8;
      v30 = __CFADD__(v25 + v27, v22 * v8);
      v31 = __CFADD__(v26, v28);
      v32 = v26 + v28;
      v33 = v31;
      v31 = __CFADD__(v25, v27);
      v34 = vcvtd_n_s64_f64(v18, 0x3EuLL) + 4 * v17;
      v35 = v30 + v31 + v32;
      if (__CFADD__(v31, v32) | __CFADD__(v30, v31 + v32))
      {
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      v37 = v33 << 63 >> 63;
      if (!v34)
      {
        v34 = -1;
      }

      v38 = v37 - v36;
      v39 = v13 < v29;
      v31 = v12 >= v35;
      v40 = v12 - v35;
      v41 = !v31;
      v42 = v38 - v41;
      v43 = v40 == v39;
      v44 = v40 < v39;
      v45 = !v43;
      v46 = v42 - v44;
      v47 = v46 | v45;
      if (!(v46 | v45))
      {
        v46 = v8;
      }

      v48 = v13 - v29 - (v46 ^ v8);
      result = v48;
      v49 = ((HIDWORD(v48) * v34) >> 32) + HIDWORD(v48) * HIDWORD(v34) + ((((v48 * v34) >> 32) + v48 * HIDWORD(v34) + (HIDWORD(v48) * v34)) >> 32);
      v24 = ((v13 | v12) != 0) | (2 * v49);
      v23 = ((v47 + (v49 >> 63)) + __PAIR128__(v23, v22)) >> 64;
      v22 += v47 + (v49 >> 63);
    }

    *(a4 + 8) = (v22 >> v23) | (v23 << 63);
    *(a4 + 16) = (v24 >> v23) | ((v22 & v23) << 63);
    *(a4 + 4) = v16 + v23;
  }

  return result;
}

uint64_t __dpml_bid_evaluate_rational__(int8x8_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4;
  memset(v32, 0, sizeof(v32));
  a1->i32[1] += a4 >> 58;
  if ((a4 & 0x44) != 0)
  {
    v10 = v32;
    __dpml_bid_multiply__(a1, a1, v32);
    v11 = v6;
  }

  else
  {
    v12 = -120;
    if (!a1->i32[0])
    {
      v12 = 0;
    }

    v11 = v12 ^ a4;
    v10 = a1;
  }

  result = __dpml_bid_ffs_and_shift__(v10, 0);
  v14 = -(v10->i32[1] * a3);
  v15 = 16 * a3 + 24;
  if ((v6 & 0x600) == 0x200)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v30 = (a5 + 24);
  if ((v6 & 0xF) == 0)
  {
    v26 = v6 << 53;
    v27 = v6 & 0xF0;
    LOWORD(v6) = v6 | 0x100;
    v25 = a2 + (v15 & (v26 >> 63));
    v17 = a5;
    if (!v27)
    {
      return result;
    }

    goto LABEL_20;
  }

  v31 = v11;
  v17 = (a5 + 24 + 24 * v16);
  v18 = __eval_neg_poly;
  if ((v11 & 8) == 0)
  {
    v18 = __eval_pos_poly;
  }

  v19 = (v6 & 0x600) == 0x200 && (v6 & 0xF0) != 0;
  v20 = a5;
  v21 = (a5 + 24 * v19);
  v22 = a2;
  v23 = -(v10->i32[1] * a3);
  v24 = v22;
  result = v18(v10);
  if ((v6 & 2) != 0)
  {
    result = __dpml_bid_multiply__(a1, v21, v21);
  }

  v15 = 16 * a3 + 24;
  v25 = v24 + v15;
  v21->i32[1] += *(v25 - 8);
  a5 = v20;
  v11 = v31;
  v14 = v23;
  if ((v6 & 0xF0) != 0)
  {
LABEL_20:
    v28 = v15;
    v29 = __eval_neg_poly;
    if ((v11 & 0x80) == 0)
    {
      v29 = __eval_pos_poly;
    }

    result = v29(v10, v14, v25, a3, v17);
    if ((v6 & 0x20) != 0)
    {
      result = __dpml_bid_multiply__(a1, v17, v17);
    }

    v17->i32[1] += *(v25 + v28 - 8);
    if ((v6 & 0x500) == 0)
    {
      return __dpml_bid_divide__(a5, v30, 2, a5);
    }
  }

  return result;
}

unint64_t __eval_neg_poly(unint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5)
{
  v5 = *(result + 8);
  v6 = *(result + 4);
  if (a2 >= 128)
  {
    do
    {
      a2 += v6;
      a3 += 2;
      --a4;
    }

    while (a2 > 127);
  }

  v7 = *(result + 16);
  if (a2 >= 64)
  {
    v9 = a3 + 2;
    while (1)
    {
      a3 = v9;
      v8 = *(v9 - 1) >> a2;
      v10 = a2 + v6;
      if (a2 + v6 < 64)
      {
        break;
      }

      v9 += 2;
      --a4;
      a2 += v6;
      if (v8)
      {
        a2 = v10;
        do
        {
          v11 = a3[1] >> a2;
          a2 += v6;
          a3 += 2;
          --a4;
          v8 = v11 - (((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v5) * HIDWORD(v8) + ((((v8 * v5) >> 32) + HIDWORD(v8) * v5 + (v8 * HIDWORD(v5))) >> 32));
        }

        while (a2 > 63);
        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_30;
      }
    }

    --a4;
    a2 += v6;
    if (!a2)
    {
      goto LABEL_30;
    }

LABEL_12:
    while (1)
    {
      v12 = ((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v8) * HIDWORD(v5) + ((((v8 * v5) >> 32) + HIDWORD(v8) * v5 + (v8 * HIDWORD(v5))) >> 32);
      v14 = *a3;
      v13 = a3[1];
      a3 += 2;
      v15 = ((2 * v13) << ~a2) | (v14 >> a2);
      v16 = v13 >> a2;
      --a4;
      v17 = v15 >= v12;
      v8 = v15 - v12;
      v18 = !v17;
      v19 = v16 - v18;
      a2 += v6;
      if (!a2)
      {
        break;
      }

      if (v19)
      {
        do
        {
          v20 = v19 * v5;
          v22 = *a3;
          v21 = a3[1];
          a3 += 2;
          v23 = ((2 * v21) << ~a2) | (v22 >> a2);
          result = v21 >> a2;
          v24 = v19;
          v25 = HIDWORD(v19);
          v26 = ((v24 * HIDWORD(v7)) >> 32) + v25 * HIDWORD(v7) + ((((v24 * v7) >> 32) + v25 * v7 + v24 * HIDWORD(v7)) >> 32);
          v17 = v23 >= v20;
          v27 = v23 - v20;
          v28 = !v17;
          --a4;
          v29 = ((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v8) * HIDWORD(v5) + ((((v8 * v5) >> 32) + HIDWORD(v8) * v5 + (v8 * HIDWORD(v5))) >> 32);
          v17 = v27 >= v26;
          v30 = v27 - v26;
          v31 = !v17;
          v32 = v24 * v5;
          v33 = v24 * HIDWORD(v5);
          v34 = HIDWORD(v32) + v25 * v5 + v33;
          v35 = HIDWORD(v33);
          v17 = v30 >= v29;
          v8 = v30 - v29;
          v36 = !v17;
          v19 = result - (v35 + HIDWORD(v5) * v25 + HIDWORD(v34)) - v28 - v31 - v36;
          a2 += v6;
        }

        while (a2);
        break;
      }
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = 0;
    if (a2)
    {
      goto LABEL_12;
    }

LABEL_30:
    v19 = 0;
    if ((a4 & 0x8000000000000000) == 0)
    {
LABEL_31:
      v37 = v7;
      v38 = HIDWORD(v7);
      v39 = a3 + 1;
      v40 = a4 + 1;
      do
      {
        v41 = v19 * v5;
        v42 = *(v39 - 1);
        result = *v39;
        v43 = v19;
        v44 = HIDWORD(v19);
        v45 = ((v43 * v38) >> 32) + v44 * v38 + ((((v43 * v37) >> 32) + v44 * v37 + v43 * v38) >> 32);
        v17 = v42 >= v41;
        v46 = v42 - v41;
        v47 = !v17;
        v48 = ((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v8) * HIDWORD(v5) + ((((v8 * v5) >> 32) + HIDWORD(v8) * v5 + (v8 * HIDWORD(v5))) >> 32);
        v17 = v46 >= v45;
        v49 = v46 - v45;
        v50 = !v17;
        v51 = v43 * v5;
        v52 = v43 * HIDWORD(v5);
        v53 = HIDWORD(v51) + v44 * v5 + v52;
        v54 = HIDWORD(v52);
        v17 = v49 >= v48;
        v8 = v49 - v48;
        v55 = !v17;
        v19 = result - (v54 + HIDWORD(v5) * v44 + HIDWORD(v53)) - v47 - v50 - v55;
        v39 += 2;
        --v40;
      }

      while (v40);
    }
  }

  a5[1] = v19;
  a5[2] = v8;
  *a5 = 0;
  return result;
}

uint64_t __eval_pos_poly(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 8);
  v6 = *(result + 4);
  if (a2 >= 128)
  {
    do
    {
      a2 += v6;
      a3 += 2;
      --a4;
    }

    while (a2 > 127);
  }

  v7 = *(result + 16);
  if (a2 >= 64)
  {
    v10 = a3 + 2;
    do
    {
      a3 = v10;
      v8 = *(v10 - 1) >> a2;
      v11 = a2 + v6;
      if (a2 + v6 < 64)
      {
        v9 = 0;
        --a4;
        a2 += v6;
        goto LABEL_11;
      }

      v10 += 2;
      --a4;
      a2 += v6;
    }

    while (!v8);
    do
    {
      v12 = ((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v8) * HIDWORD(v5) + ((((v8 * v5) >> 32) + HIDWORD(v8) * v5 + (v8 * HIDWORD(v5))) >> 32);
      v13 = a3[1] >> v11;
      v11 += v6;
      a3 += 2;
      --a4;
      v8 = v12 + v13;
    }

    while (v11 > 63);
    v9 = v8 < v12;
    a2 = v11;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

LABEL_11:
  if (!a2)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_40;
  }

  if (!v9)
  {
    while (1)
    {
      v14 = ((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v8) * HIDWORD(v5) + ((((v8 * v5) >> 32) + HIDWORD(v8) * v5 + (v8 * HIDWORD(v5))) >> 32);
      v16 = *a3;
      v15 = a3[1];
      a3 += 2;
      result = 2 * v15;
      v17 = ((2 * v15) << ~a2) | (v16 >> a2);
      v9 = v15 >> a2;
      --a4;
      v39 = __CFADD__(v17, v14);
      v8 = v17 + v14;
      if (v39)
      {
        ++v9;
      }

      a2 += v6;
      if (!a2)
      {
        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_18;
      }
    }
  }

  v9 = 1;
LABEL_18:
  if (a4 < 0)
  {
    goto LABEL_20;
  }

  v18 = 0;
  v19 = v7;
  v20 = v5;
  do
  {
    do
    {
      v21 = v9 * v5;
      v23 = *a3;
      v22 = a3[1];
      a3 += 2;
      v24 = ((2 * v22) << ~a2) | (v23 >> a2);
      v25 = v22 >> a2;
      v26 = v9;
      v27 = HIDWORD(v9);
      v28 = ((v26 * HIDWORD(v7)) >> 32) + v27 * HIDWORD(v7) + ((((v26 * v19) >> 32) + v27 * v19 + v26 * HIDWORD(v7)) >> 32);
      v39 = __CFADD__(v24, v21);
      v29 = v24 + v21;
      v30 = v39;
      v31 = ((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v8) * HIDWORD(v5) + ((((v8 * v20) >> 32) + HIDWORD(v8) * v20 + (v8 * HIDWORD(v5))) >> 32);
      v39 = __CFADD__(v29, v28);
      v32 = v29 + v28;
      v33 = v39;
      a2 += v6;
      v34 = ((v26 * HIDWORD(v5)) >> 32) + v27 * HIDWORD(v5) + ((((v26 * v20) >> 32) + v27 * v20 + v26 * HIDWORD(v5)) >> 32);
      v36 = v32 + v31;
      v35 = (__PAIR128__(v33, v32) + __PAIR128__(v30, v31)) >> 64;
      v8 = v36;
      v37 = v35 + v25;
      v38 = v37 + v34;
      v39 = v37 >= v35 && v38 >= v34;
      *(&v41 + 1) = v37 + v34;
      *&v41 = v36;
      v40 = v41 >> 1;
      if (v39)
      {
        v9 = v38;
      }

      else
      {
        ++v18;
        v8 = v40;
        v9 = (v38 >> 1) | 0x8000000000000000;
      }

      if (!v39)
      {
        ++a2;
      }

      v39 = a4-- != 0;
      result = v39;
    }

    while (a2 && (result & 1) != 0);
LABEL_40:
    if (a4 < 0)
    {
      break;
    }

    v19 = v7;
    v20 = v5;
    a3 += 2;
    result = a4;
    while (1)
    {
      v42 = v9 * v5;
      v43 = *(a3 - 2);
      v44 = v9;
      v45 = HIDWORD(v9);
      v46 = ((v44 * HIDWORD(v7)) >> 32) + v45 * HIDWORD(v7) + ((((v44 * v7) >> 32) + v45 * v7 + v44 * HIDWORD(v7)) >> 32);
      v39 = __CFADD__(v43, v42);
      v47 = v43 + v42;
      v48 = v39;
      a4 = result - 1;
      v49 = ((v8 * HIDWORD(v5)) >> 32) + HIDWORD(v8) * HIDWORD(v5) + ((((v8 * v5) >> 32) + HIDWORD(v8) * v5 + (v8 * HIDWORD(v5))) >> 32);
      v39 = __CFADD__(v47, v46);
      v50 = v47 + v46;
      v51 = v39;
      v52 = ((v44 * HIDWORD(v5)) >> 32) + v45 * HIDWORD(v5) + ((((v44 * v5) >> 32) + v45 * v5 + v44 * HIDWORD(v5)) >> 32);
      v54 = v50 + v49;
      v53 = (__PAIR128__(v51, v50) + __PAIR128__(v48, v49)) >> 64;
      v8 = v54;
      v55 = v53 + *(a3 - 1);
      v9 = v55 + v52;
      if (v55 < v53 || v9 < v52)
      {
        break;
      }

      a3 += 2;
      --result;
      if (a4 == -1)
      {
        goto LABEL_54;
      }
    }

    *(&v57 + 1) = v55 + v52;
    *&v57 = v54;
    v8 = v57 >> 1;
    ++v18;
    a2 = 1;
    v9 = (v9 >> 1) | 0x8000000000000000;
  }

  while (result);
LABEL_54:
  *(a5 + 8) = v9;
  *(a5 + 16) = v8;
  *a5 = 0;
  *(a5 + 4) = v18;
  return result;
}

uint64_t __dpml_bid_ux_sqrt_evaluation__(int8x8_t *a1, int8x8_t *a2)
{
  memset(v17, 0, sizeof(v17));
  v3 = a1[1];
  *&v4 = (*&v3 >> 11) + 0x3FD0000000000000;
  v5 = a1->i32[1] & 1 | 0x28;
  v6 = vcvtd_n_f64_u64(*&v3 >> v5, 0x18uLL);
  v7 = (a1->i32[1] & 1) + a1->i32[1];
  v8 = ((((2 * *&v3) << (~v5 & 0x3F)) | (*&a1[2] >> v5)) >> 11) * 6.6174449e-24;
  v9 = (&__dpml_bid_sqrt_t_table + 16 * (((a1->i32[1] & 1u) << 7) ^ HIBYTE(*&v3)));
  v10 = (v9[1] + *(v9 + 1) * v4 + *v9 * (v4 * v4)) * 1.41421356;
  v11 = v10 * (v6 + v8);
  *&v10 = v10;
  v12 = *&v10;
  v13 = (((v6 + v8) * -0.375 * (v12 * v12) + 0.875) * v12 * (1.0 - v11 * v12 - (v8 * v12 - (v11 - v6 * v12)) * v12) * 3.77789319e22);
  v14 = (v13 >> 12) + (vcvtd_n_u64_f64(v12, 0x18uLL) << 39) + ((v13 >> 11) & 1);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v14 & 0x4000000000000000) == 0)
  {
    v15 = -1;
  }

  v18[0].i32[0] = 0;
  v18[0].i32[1] = 1 - (v7 >> 1);
  if (v14 >= 0)
  {
    v14 = v15;
  }

  v18[1] = v14;
  v18[2] = 0;
  __dpml_bid_multiply__(v18, a1, v17);
  __dpml_bid_multiply__(v18, v17, a2);
  __dpml_bid_addsub__(&unk_1C1F60030, a2, 9uLL, a2);
  result = __dpml_bid_multiply__(a2, v17, a2);
  --a2->i32[1];
  return result;
}

double bid_f128_sqrt(__n128 *a1, uint64_t *a2)
{
  memset(v13, 0, sizeof(v13));
  if ((__dpml_bid_unpack_x_or_y__(a2, 0, v13, __dpml_bid_sqrt_x_table, a1, v7) & 0x8000000000000000) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    __dpml_bid_ux_sqrt_evaluation__(v13, v11);
    __dpml_bid_ffs_and_shift__(v11, 0);
    if (((v12 + 8) & 0x3FF0) == 0)
    {
      memset(v10, 0, sizeof(v10));
      memset(v9, 0, sizeof(v9));
      memset(v8, 0, sizeof(v8));
      v4 = v12 & 0xFFFFFFFFFFFF8000;
      v5 = v12 & 0xFFFFFFFFFFFF8000 | 0x4000;
      v12 = v5;
      __dpml_bid_extended_multiply__(v11, v11, v9, v8);
      __dpml_bid_addsub__(v13, v9, 1uLL, v10);
      __dpml_bid_addsub__(v10, v8, 1uLL, v10);
      if (LODWORD(v10[0]))
      {
        v6 = v4;
      }

      else
      {
        v6 = v5;
      }

      v12 = v6;
    }

    *&result = __dpml_bid_pack__(v11, a1, 0, 0).n128_u64[0];
  }

  return result;
}

uint64_t __dpml_bid_ux_sincos(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v13, 0, sizeof(v13));
  v6 = __dpml_bid_ux_degree_reduce__;
  if ((a3 & 0x10) == 0)
  {
    v6 = __dpml_bid_ux_radian_reduce__;
  }

  v7 = v6(a1, a2, v13);
  v8 = v7;
  v9 = a3 & 0xFFFFFFFFFFFFFFEFLL;
  v10 = 1216;
  if ((v7 & 1) == 0)
  {
    v10 = 1038;
  }

  if (v9 == 3)
  {
    v11 = ((v7 & 1) << 9) | 0x1CE;
  }

  else
  {
    v11 = v10;
  }

  __dpml_bid_evaluate_rational__(v13, &unk_1C1F60990, 13, v11, a4);
  if ((v8 & 2) != 0)
  {
    *a4 ^= 0x80000000;
  }

  if (v9 == 3 && ((v8 + 1) & 2) != 0)
  {
    a4[6] ^= 0x80000000;
  }

  return 0;
}

unint64_t __dpml_bid_ux_degree_reduce__(int8x8_t *a1, uint64_t a2, void *a3)
{
  v6 = a1->u32[1];
  if (v6 >= 143)
  {
    LODWORD(v6) = v6 - 12 * (((((1431655766 * (v6 + 32641)) >> 32) + (357913941 * (v6 + 32641))) >> 32) + ((357913941 * (v6 + 32641)) >> 32)) + 32772;
    a1->i32[1] = v6;
  }

  v7 = a1->i32[0];
  if (v6 >= 16)
  {
    v8 = (v6 - 15) >> 6;
    v9 = (v6 - 15) & 0x3F;
    v10 = v6 - v9;
    if (((v6 - 15) & 0x3F) != 0)
    {
      v12 = a1[1];
      v11 = a1[2];
      a1[1] = ((*&v12 << v9) | (*&v11 >> 1 >> (v9 ^ 0x3Fu)));
      a1[2] = (*&v11 << v9);
      v13 = (*&v12 >> -v9);
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
    *a1 = v13;
    v15 = v8;
    v16 = *&a1[v8 + 1] >> 52;
    do
    {
      v17 = a1[v15];
      a1[v15] = 0;
      if (v14)
      {
        v16 += (*&v17 << v14) & 0xFFFLL;
        *&v17 >>= 12 - v14;
        v14 -= 8;
      }

      else
      {
        v14 = 4;
      }

      v16 += (*&v17 & 0xFFFFFFFFFFFFFFFLL) + (*&v17 >> 60);
      --v15;
    }

    while (v15 != -1);
    v18 = (v16 & 0xFFFFFF) + HIWORD(v16) + ((v16 >> 24) & 0xFFFFFF);
    if (v18 >= 0x1000)
    {
      do
      {
        v18 = (v18 & 0xFFF) + (v18 >> 12);
      }

      while (v18 > 0xFFF);
    }

    a1[v8 + 1] = (*&a1[v8 + 1] & 0xFFFFFFFFFFFFFLL | (v18 << 52));
    a1->i32[1] = v10;
    LODWORD(v6) = v10 - __dpml_bid_ffs_and_shift__(a1, 0);
  }

  a1->i32[0] = 0;
  v19 = a1[1];
  if (v6 < 6)
  {
    v20 = 0;
    v21 = 63;
  }

  else
  {
    v20 = ((1527099483 * v19.u32[0]) >> 32) + 1527099483 * v19.u32[1] + ((((95443718 * v19.u32[0]) >> 32) + 95443718 * v19.u32[1] + (1527099483 * v19.i32[0])) >> 32);
    v21 = 69 - v6;
  }

  v22 = ((((a2 & 1) + 1) << (v21 - 1)) + v20) & (-1 << v21);
  v23 = -3019898880 * HIDWORD(v22) + (*&v19 >> 2);
  v24 = *&a1[1] & 3 | (4 * (v23 - ((3019898880u * v22) >> 32)));
  if ((v23 - ((3019898880u * v22) >> 32)) < 0)
  {
    v25 = v7 ^ 0x80000000;
    v26 = a1[2];
    v27 = -*&v26;
    if (v26)
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    a1[2] = v27;
    v24 = v28 - v24;
  }

  else
  {
    v25 = v7;
  }

  v29 = v22 >> v21;
  if (v7)
  {
    v29 = -v29;
  }

  v30 = v29 + (a2 >> 1);
  a1[1] = v24;
  __dpml_bid_ffs_and_shift__(a1, 0);
  __dpml_bid_multiply__(a1, qword_1C1F60958, a3);
  *a3 ^= v25;
  return v30;
}

uint64_t __dpml_bid_ux_radian_reduce__(uint64_t a1, uint64_t a2, int8x8_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = *(a1 + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v68 = ((a2 + (v5 >> 31)) & 1) + a2 + (v5 >> 31);
    v69 = v68 >> 1;
    if (v68 == a2)
    {
      a3->i32[0] = v5;
      a3->i32[1] = v6;
      a3[1] = v4;
      a3[2] = *(a1 + 16);
    }

    else
    {
      __dpml_bid_addsub__(a1, qword_1C1F60C70, v68 > a2, a3);
    }
  }

  else
  {
    v7 = v6 + 8;
    v8 = (v6 + 8) >> 6;
    v9 = (&__four_over_pi + 8 * v8);
    v10 = v9[1];
    v11 = ~(v6 + 8);
    v12 = v10 >> 1 >> v11;
    v13 = *v9 << (v6 + 8);
    v14 = v9[2];
    v15 = v9[3];
    v16 = 64 - ((v6 + 8) & 0x3F);
    v17 = v10 << (v6 + 8);
    v18 = (v6 + 8) & 0x3F;
    v19 = *(a1 + 16);
    v20 = v9[4];
    if (v18)
    {
      LOBYTE(v8) = v16;
    }

    v21 = v13 | v12;
    v22 = v17 | (v14 >> 1 >> v11);
    v23 = (v14 << v7) | (v15 >> 1 >> v11);
    v24 = (v15 << v7) | (v20 >> 1 >> v11);
    v25 = HIDWORD(v19);
    v26 = v19;
    v27 = v24 * HIDWORD(v19);
    v28 = HIDWORD(v24) * v19;
    v29 = ((v24 * v19) >> 32) + v27 + v28;
    v30 = (v24 * v19) | (v29 << 32);
    v31 = HIDWORD(v28) + HIDWORD(v24) * HIDWORD(v19) + HIDWORD(v27) + HIDWORD(v29);
    v32 = v24 * v4.u32[0];
    v33 = v24 * v4.u32[1];
    v34 = HIDWORD(v24) * v4.u32[0];
    v35 = v31 + v32;
    v36 = HIDWORD(v32) + v33 + v34 + HIDWORD(v31) + HIDWORD(v35);
    v37 = v35;
    v38 = HIDWORD(v34) + HIDWORD(v24) * v4.u32[1] + HIDWORD(v33) + HIDWORD(v36);
    LODWORD(v35) = v23;
    v39 = v23 * v19;
    v40 = v23 * HIDWORD(v19);
    v41 = HIDWORD(v23);
    v42 = HIDWORD(v23) * v19;
    v43 = HIDWORD(v23) * HIDWORD(v19);
    v44 = v37 + v39;
    v45 = HIDWORD(v39) + v40 + v42 + v36 + HIDWORD(v44);
    v46 = HIDWORD(v40) + HIDWORD(v42) + v43 + v38 + HIDWORD(v45);
    v47 = HIDWORD(v38) + HIDWORD(v43) + HIDWORD(v46);
    v48 = v46;
    v49 = v23 * v4.u32[0];
    v50 = v35 * v4.u32[1];
    v51 = v41 * v4.u32[0];
    v52 = v48 + v49;
    v53 = HIDWORD(v49) + v50 + v51 + v47 + HIDWORD(v52);
    v54 = v22 * v19;
    v55 = v22 * HIDWORD(v19);
    v56 = v21 * v19;
    if (v5)
    {
      a2 = -a2;
    }

    v57 = v56 + (a2 << 61);
    v58 = HIDWORD(v22) * v26;
    v59 = v52 + v54;
    v60 = HIDWORD(v54) + v55 + v58 + HIDWORD(v59) + v53;
    v61 = v57 + v22 * *&v4 + HIDWORD(v22) * v25 + HIDWORD(v58) + HIDWORD(v55) + v41 * v4.u32[1] + HIDWORD(v51) + HIDWORD(v50) + HIDWORD(v47) + HIDWORD(v53) + HIDWORD(v60);
    v62 = v44 | (v45 << 32);
    v63 = v59 | (v60 << 32);
    if (((v61 + 0x40000000000000) & 0x3F80000000000000) != 0)
    {
      v64 = 0;
      v65 = v63;
      v66 = v62;
      v67 = v30;
    }

    else
    {
      v64 = 0;
      v70 = v9 + 5;
      while (1)
      {
        v71 = *v70;
        if (v18)
        {
          v20 = (*v70 >> v8) | (v20 << v18);
        }

        v72 = v20;
        v73 = v20 * v26;
        v74 = v20 * v25;
        v75 = HIDWORD(v20);
        v76 = HIDWORD(v20) * v26;
        v77 = HIDWORD(v20) * v25;
        v78 = HIDWORD(v73) + v74 + v76;
        v79 = HIDWORD(v76) + v30 + HIDWORD(v74) + v77 + HIDWORD(v78);
        v80 = HIDWORD(v77) + HIDWORD(v30) + HIDWORD(v79);
        v81 = v72 * v4.u32[0];
        v82 = v72 * v4.u32[1];
        v83 = v75 * v4.u32[0];
        v84 = v75 * v4.u32[1];
        v85 = v63;
        v86 = v79 + v81 + HIDWORD(v80);
        v87 = HIDWORD(v81) + v82 + v83 + v80 + HIDWORD(v86);
        v88 = HIDWORD(v83) + v62 + HIDWORD(v82) + v84 + HIDWORD(v87);
        v89 = HIDWORD(v84) + HIDWORD(v62) + HIDWORD(v88);
        v62 = v86 | (v87 << 32);
        v63 = v88 | (v89 << 32);
        v89 >>= 32;
        v61 += (v89 != 0) & (v85 == -1);
        v65 = v89 ? v85 + 1 : v85;
        *(&v90 + 1) = v61;
        *&v90 = v65;
        if ((v90 >> 55) != (v90 >> 55) >> 63)
        {
          break;
        }

        v67 = v73 | (v78 << 32);
        ++v70;
        v61 = v61 & 0xE000000000000000 | v65 & 0x1FFFFFFFFFFFFFFFLL;
        v64 += 64;
        v30 = v67;
        v20 = v71;
        v65 = v63;
        v66 = v62;
        if (((v61 + 0x40000000000000) & 0x3F80000000000000) != 0)
        {
          goto LABEL_21;
        }
      }

      v66 = v63;
      v67 = v86 | (v87 << 32);
    }

LABEL_21:
    v91 = (4 * v61) >> 2;
    if (v91 == (4 * v61) >> 63)
    {
      v92 = v65;
    }

    else
    {
      v92 = (4 * v61) >> 2;
    }

    if (v91 == (4 * v61) >> 63)
    {
      v93 = v66;
    }

    else
    {
      v93 = v65;
    }

    if (v91 == (4 * v61) >> 63)
    {
      v94 = v67;
    }

    else
    {
      v94 = v66;
    }

    if (v91 == (4 * v61) >> 63)
    {
      v95 = v64 + 64;
    }

    else
    {
      v95 = v64;
    }

    v96 = HIDWORD(v91);
    v97 = HIDWORD(v91) & 0x80000000;
    v98 = -v93;
    if (v94)
    {
      v98 = ~v93;
    }

    v99 = -v92;
    if (v98)
    {
      v99 = ~v92;
    }

    v100 = (v96 & 0x80000000) == 0;
    if ((v96 & 0x80000000) != 0)
    {
      v101 = v99;
    }

    else
    {
      v101 = v92;
    }

    if (v100)
    {
      v98 = v93;
      v102 = v94;
    }

    else
    {
      v102 = -v94;
    }

    a3->i32[0] = v97 ^ v5;
    a3->i32[1] = 3;
    if (v5)
    {
      v103 = ((4 * v61) >> 2) - v61;
    }

    else
    {
      v103 = v61 - ((4 * v61) >> 2);
    }

    a3[1] = v101;
    a3[2] = v98;
    __dpml_bid_ffs_and_shift__(a3, 0);
    v104 = a3->i32[1];
    if (v104 != 3)
    {
      *&a3[2] |= v102 >> (v104 + 61);
    }

    a3->i32[1] = v104 - v95;
    __dpml_bid_multiply__(a3, qword_1C1F60C70, a3);
    return v103 >> 62;
  }

  return v69;
}

void __dpml_bid_C_ux_trig__(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 *a5, void *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v9 = __dpml_bid_unpack_x_or_y__(a1, 0, v14, a4, a5, a6);
  if ((v9 & 0x8000000000000000) != 0)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFEFLL) == 3)
    {
      v12 = &unk_1C1F60970;
      if ((v9 & 0x1FFFFFFFCLL) == 0)
      {
        v12 = a5;
      }

      a5[1].n128_u64[1] = v12->n128_u64[1];
      a5[1].n128_u64[0] = v12->n128_u64[0];
    }
  }

  else
  {
    v10 = __dpml_bid_ux_sincos;
    if ((a3 & 3) == 0)
    {
      v10 = __dpml_bid_ux_tancot__;
    }

    v11 = v10(v14, a2, a3, v15);
    __dpml_bid_pack__(v15, a5, 0, v11);
    if ((a3 & 0xFFFFFFFFFFFFFFEFLL) == 3)
    {
      __dpml_bid_pack__(v16, a5 + 1, 0, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __dpml_bid_ux_tancot__(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = __dpml_bid_ux_degree_reduce__;
  if ((a3 & 0x10) == 0)
  {
    v6 = __dpml_bid_ux_radian_reduce__;
  }

  v7 = v6(a1, a2, &v11);
  v8 = v7;
  if (v12)
  {
    __dpml_bid_evaluate_rational__(&v11, &unk_1C1F60B60, 7, (((v7 + (a3 >> 3)) & 1) << 9) | 0xCE, a4);
    v9 = *a4;
    if (v8)
    {
      v9 ^= 0x80000000;
      *a4 = v9;
    }

    if (v9)
    {
      return 28;
    }

    else
    {
      return 27;
    }
  }

  else
  {
    *a4 = 0xFFFE000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if ((v7 + (a3 >> 3)))
    {
      *(a4 + 4) = 0x1FFFF;
      *(a4 + 8) = 0x8000000000000000;
    }

    if ((a3 & 4) != 0)
    {
      return 110;
    }

    else
    {
      return 32;
    }
  }
}

unint64_t __bid128_acos(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1;
  if ((~a2 & 0x7C00000000000000) != 0)
  {
    v13 = 0uLL;
    v12[0] = 0;
    v12[1] = 0;
    v15[0] = __bid128_to_binary128(a1, a2, a3, my_fpsf);
    v15[1] = v6;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __dpml_bid_unpack_x_or_y__(v15, 0, &v17, &qword_1C1F5E6D0, v12, v20);
    if (bid_f128_cmp(v12, &c_1em40, 1u))
    {
      return __bid128_add(0xDD5F2AB27379CFC7, 0x2FFE4D723CABCB53, 0x492B4138A162883uLL, 0x2FBAD9F8AFB501D4, a3, my_fpsf);
    }

    if (bid_f128_cmp(v12, &c_7_10ths, 3u))
    {
      __dpml_bid_ux_asin_acos__(v15, 0x1A30038uLL, &qword_1C1F5F410, &v13, v20);
    }

    else
    {
      if (bid_f128_cmp(v12, &c_one, 4u))
      {
        v4 = 0;
        my_fpsf[0] |= 1u;
        return v4;
      }

      if (bid_f128_cmp(v12, &c_one, 6u))
      {
        return 0;
      }

      v9 = bid128_ext_fma(v20, &v17, v14, &v16, v4, a2, v4, a2, 1uLL, 0xB040000000000000, a3, my_fpsf);
      v14[0] = __bid128_to_binary128(v9, v10, a3, my_fpsf);
      v14[1] = v11;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      __dpml_bid_unpack_x_or_y__(v14, 0, &v17, &__dpml_bid_bid_x_table, &v13, v20);
      bid_f128_sqrt(&v13, &v13);
      __dpml_bid_ux_asin_acos__(&v13, 0xF04E00uLL, &__dpml_bid_inv_trig_x_table, &v13, v20);
      if (bid_f128_cmp(v15, &c_zero, 1u))
      {
        bid_f128_sub(&v13, &c_pi, &v13);
      }
    }

    return __binary128_to_bid128(v13.n128_u64[0], v13.n128_u64[1], a3, my_fpsf);
  }

  else
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      return 0;
    }
  }

  return v4;
}

unint64_t __bid128_add(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int *a6)
{
  v6 = a2 & 0x8000000000000000;
  v7 = a4 & 0x8000000000000000;
  if ((~a2 & 0x7800000000000000) == 0 || (a4 & 0x7800000000000000) == 0x7800000000000000)
  {
    if ((a2 & 0x7C00000000000000) == 0x7C00000000000000)
    {
      if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result > 0x38C15B09FFFFFFFFLL && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        result = 0;
        a2 &= 0xFFFFC00000000000;
      }

      if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
      {
        *a6 |= 1u;
      }
    }

    else if ((a4 & 0x7C00000000000000) == 0x7C00000000000000)
    {
      if ((a4 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || (a4 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a3 > 0x38C15B09FFFFFFFFLL)
      {
        a3 = 0;
        a4 &= 0xFFFFC00000000000;
      }

      if ((~a4 & 0x7E00000000000000) == 0)
      {
        *a6 |= 1u;
      }

      return a3;
    }

    else if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
    {
      if ((a4 & 0x7C00000000000000) == 0x7800000000000000 && v6 != v7)
      {
        result = 0;
        *a6 |= 1u;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 4 * a2;
    goto LABEL_27;
  }

  v9 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) <= 0x1ED09BEAD87C0)
  {
    if (result <= 0x378D8E63FFFFFFFFLL)
    {
      v8 = result;
      goto LABEL_26;
    }

    v8 = result;
    v10 = a2;
    if (v9 != 0x1ED09BEAD87C0)
    {
      goto LABEL_27;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_26:
  v10 = a2;
LABEL_27:
  if ((~a4 & 0x6000000000000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 4 * a4;
    goto LABEL_35;
  }

  v12 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_33:
    v11 = 0;
    v12 = 0;
    goto LABEL_34;
  }

  if ((a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0)
  {
    v11 = a3;
    v13 = a4;
    if (a3 <= 0x378D8E63FFFFFFFFLL)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v11 = a3;
LABEL_34:
  v13 = a4;
LABEL_35:
  v14 = v10 & 0x7FFE000000000000;
  v15 = v13 & 0x7FFE000000000000;
  if (!(v9 | v8))
  {
    if (v12 | v11)
    {
      if (v15 <= v14)
      {
        return a3;
      }

      else
      {
        if (v11 >> 53)
        {
          v36 = HIDWORD(v11);
        }

        else
        {
          v36 = v11;
        }

        v37 = -1023;
        if (v11 >> 53)
        {
          v37 = -991;
        }

        if (v12)
        {
          v36 = v12;
          v37 = -959;
        }

        v38 = &__bid_nr_digits + 32 * v37 + 32 * (COERCE_UNSIGNED_INT64(v36) >> 52);
        v39 = *v38;
        if (!*v38)
        {
          v39 = *(v38 + 6);
          v40 = *(v38 + 1);
          if (v12 > v40 || v12 == v40 && v11 >= *(v38 + 2))
          {
            ++v39;
          }
        }

        v218 = (v15 - v14) >> 49;
        if (34 - v39 < v218)
        {
          LODWORD(v218) = 34 - v39;
        }

        if (v218)
        {
          if (v39 > 19)
          {
            v219 = __bid_ten2k64[v218];
            return (v219 * v11) | ((v219 * HIDWORD(v11) + HIDWORD(v219) * v11 + ((v219 * v11) >> 32)) << 32);
          }

          else if (v218 > 19)
          {
            v220 = __bid_ten2k128[2 * (v218 - 20)];
            return (v220 * v11) | ((HIDWORD(v220) * v11 + v220 * HIDWORD(v11) + ((v220 * v11) >> 32)) << 32);
          }

          else
          {
            return (__bid_ten2k64[v218] * v11) | ((HIDWORD(__bid_ten2k64[v218]) * v11 + __bid_ten2k64[v218] * HIDWORD(v11) + ((__bid_ten2k64[v218] * v11) >> 32)) << 32);
          }
        }

        return a3;
      }
    }

    else if (v6 && v7)
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

  if (!(v12 | v11))
  {
    if (v14 > v15)
    {
      if (v8 >> 53)
      {
        v16 = HIDWORD(v8);
      }

      else
      {
        v16 = v8;
      }

      v17 = -1023;
      if (v8 >> 53)
      {
        v17 = -991;
      }

      if (v9)
      {
        v16 = v9;
        v17 = -959;
      }

      v18 = &__bid_nr_digits + 32 * v17 + 32 * (COERCE_UNSIGNED_INT64(v16) >> 52);
      v19 = *v18;
      if (!*v18)
      {
        v19 = *(v18 + 6);
        v20 = *(v18 + 1);
        if (v9 > v20 || v9 == v20 && v8 >= *(v18 + 2))
        {
          ++v19;
        }
      }

      v83 = (v14 - v15) >> 49;
      if (34 - v19 < v83)
      {
        LODWORD(v83) = 34 - v19;
      }

      if (v83)
      {
        if (v19 > 19)
        {
          v84 = __bid_ten2k64[v83];
          return (v84 * v8) | ((v84 * HIDWORD(v8) + HIDWORD(v84) * v8 + ((v84 * v8) >> 32)) << 32);
        }

        else if (v83 > 19)
        {
          v179 = __bid_ten2k128[2 * (v83 - 20)];
          return (v179 * v8) | ((HIDWORD(v179) * v8 + v179 * HIDWORD(v8) + ((v179 * v8) >> 32)) << 32);
        }

        else
        {
          return (__bid_ten2k64[v83] * v8) | ((HIDWORD(__bid_ten2k64[v83]) * v8 + __bid_ten2k64[v83] * HIDWORD(v8) + ((__bid_ten2k64[v83] * v8) >> 32)) << 32);
        }
      }
    }

    return result;
  }

  if (v14 < v15)
  {
    v21 = v8;
  }

  else
  {
    v21 = v11;
  }

  if (v14 < v15)
  {
    v22 = v11;
  }

  else
  {
    v22 = v8;
  }

  if (v14 < v15)
  {
    v23 = v9;
  }

  else
  {
    v23 = v12;
  }

  if (v14 >= v15)
  {
    v24 = v13 & 0x7FFE000000000000;
  }

  else
  {
    v9 = v12;
    v24 = v10 & 0x7FFE000000000000;
  }

  if (v14 < v15)
  {
    v25 = v13 & 0x7FFE000000000000;
  }

  else
  {
    v25 = v10 & 0x7FFE000000000000;
  }

  if (v14 < v15)
  {
    v26 = a2 & 0x8000000000000000;
  }

  else
  {
    v26 = a4 & 0x8000000000000000;
  }

  if (v14 < v15)
  {
    v27 = a4 & 0x8000000000000000;
  }

  else
  {
    v27 = a2 & 0x8000000000000000;
  }

  v28 = HIDWORD(v22);
  if (v22 >> 53)
  {
    v29 = HIDWORD(v22);
  }

  else
  {
    v29 = v22;
  }

  v30 = -1023;
  if (v22 >> 53)
  {
    v31 = -991;
  }

  else
  {
    v31 = -1023;
  }

  if (v9)
  {
    v32 = v9;
  }

  else
  {
    v32 = v29;
  }

  if (v9)
  {
    v31 = -959;
  }

  v33 = &__bid_nr_digits + 32 * v31 + 32 * (COERCE_UNSIGNED_INT64(v32) >> 52);
  v34 = *v33;
  if (!*v33)
  {
    v34 = *(v33 + 6);
    v35 = *(v33 + 1);
    if (v9 > v35 || v9 == v35 && v22 >= *(v33 + 2))
    {
      ++v34;
    }
  }

  v41 = HIDWORD(v21);
  if (v21 >> 53)
  {
    v30 = -991;
  }

  else
  {
    v41 = v21;
  }

  if (v23)
  {
    v42 = v23;
  }

  else
  {
    v42 = v41;
  }

  if (v23)
  {
    v30 = -959;
  }

  v43 = &__bid_nr_digits + 32 * v30 + 32 * (COERCE_UNSIGNED_INT64(v42) >> 52);
  v44 = *v43;
  if (!*v43)
  {
    v44 = *(v43 + 6);
    v45 = *(v43 + 1);
    if (v23 > v45 || v23 == v45 && v21 >= *(v43 + 2))
    {
      ++v44;
    }
  }

  v46 = v34 + (v25 >> 49) - (v44 + (v24 >> 49));
  if (v46 >= 34)
  {
    if (v46 == 34)
    {
      if (v7 == v6)
      {
        goto LABEL_274;
      }

      if (v34 > 20)
      {
        v180 = &__bid_ten2k128[2 * (v34 - 21)];
        if (v9 != v180[1])
        {
          goto LABEL_274;
        }

        v47 = *v180;
      }

      else
      {
        if (v9)
        {
          goto LABEL_274;
        }

        v47 = __bid_ten2k64[v34 - 1];
      }

      if (v22 == v47)
      {
        v181 = 35 - v34;
        if (35 - v34 < 20)
        {
          if (v34 <= 19)
          {
            v327 = __bid_ten2k64[v181];
            v328 = v327 * HIDWORD(v22);
            v329 = v327 * v22;
            v330 = HIDWORD(v328) + HIDWORD(v327) * HIDWORD(v22);
            v331 = HIDWORD(v327) * v22 + v328 + HIDWORD(v329);
            v332 = v330 + HIDWORD(v331);
            v187 = v329 | (v331 << 32);
            goto LABEL_567;
          }

          v391 = __bid_ten2k64[v181];
          v392 = v391 * v9;
          v393 = HIDWORD(v391);
          v184 = HIDWORD(v391) * v22;
          v394 = v391 * v22;
          v186 = v391 * HIDWORD(v22) + v184 + HIDWORD(v394);
          v187 = v394 | (v186 << 32);
          v188 = v392 + v393 * HIDWORD(v22);
        }

        else
        {
          v182 = __bid_ten2k128[2 * (15 - v34)];
          v183 = HIDWORD(v182);
          v184 = v182 * HIDWORD(v22);
          v185 = v182 * v22;
          v186 = HIDWORD(v182) * v22 + v184 + HIDWORD(v185);
          v187 = v185 | (v186 << 32);
          v188 = __bid_ten2k128[2 * (15 - v34) + 1] * v22 + v183 * HIDWORD(v22);
        }

        v332 = v188 + HIDWORD(v184) + HIDWORD(v186);
LABEL_567:
        v395 = (v44 - 2);
        if (v44 < 2)
        {
          v399 = 0;
          v400 = 0;
          goto LABEL_573;
        }

        if (v44 > 0x14)
        {
          v398 = (__bid_midpoint128[v44 - 21] + __PAIR128__(v23, v21)) >> 64;
          v397 = *&__bid_midpoint128[v44 - 21] + v21;
        }

        else
        {
          v396 = __bid_midpoint64[v395];
          v199 = __CFADD__(v396, v21);
          v397 = v396 + v21;
          if (v199)
          {
            v398 = v23 + 1;
          }

          else
          {
            v398 = v23;
          }
        }

        v403 = HIDWORD(v397);
        v404 = v397;
        v405 = __bid_ten2mk128[2 * v395];
        v406 = __bid_ten2mk128[2 * v395 + 1];
        v407 = HIDWORD(v406);
        v408 = v406 * HIDWORD(v397);
        v409 = HIDWORD(v408) + HIDWORD(v406) * HIDWORD(v397);
        v410 = HIDWORD(v406) * v397 + v408 + ((v406 * v397) >> 32);
        v411 = HIDWORD(v410);
        v412 = (v406 * v397) | (v410 << 32);
        v413 = HIDWORD(v405);
        v414 = v405 * HIDWORD(v397);
        v415 = v405 * v397;
        v416 = HIDWORD(v405) * v404 + v414 + HIDWORD(v415);
        v417 = v415 | (v416 << 32);
        v419 = v412 + HIDWORD(v414) + HIDWORD(v405) * v403 + HIDWORD(v416);
        v418 = (__PAIR128__(v409, v412) + __PAIR128__(v411, HIDWORD(v414) + HIDWORD(v405) * v403 + HIDWORD(v416))) >> 64;
        v420 = HIDWORD(v398);
        LODWORD(v411) = v398;
        v421 = v406 * HIDWORD(v398);
        v422 = v406 * v398;
        v423 = v407 * v398;
        v424 = HIDWORD(v421) + v407 * HIDWORD(v398);
        v425 = v423 + v421 + HIDWORD(v422);
        v426 = HIDWORD(v425);
        v427 = v422 | (v425 << 32);
        v428 = v405 * HIDWORD(v398);
        v429 = v405 * v398;
        v430 = HIDWORD(v405) * v411 + v428 + HIDWORD(v429);
        v431 = v429 | (v430 << 32);
        v433 = v427 + HIDWORD(v428) + v413 * v420 + HIDWORD(v430);
        v432 = (__PAIR128__(v424, v427) + __PAIR128__(v426, HIDWORD(v428) + v413 * v420 + HIDWORD(v430))) >> 64;
        v199 = __CFADD__(v419, v431);
        v435 = v419 + v431;
        v434 = (__PAIR128__(v433, v419) + v431) >> 64;
        v436 = __CFADD__(v199, v433);
        v21 = v418 + v434;
        v437 = __CFADD__(v418, v434) || v436;
        v23 = v432 + v437;
        if (v44 < 5)
        {
          if (v435 <= 0x8000000000000000)
          {
            v438 = 0;
            v439 = 0;
            v399 = 1;
            if (v435 != 0x8000000000000000 || !v417)
            {
LABEL_884:
              v442 = 0;
              goto LABEL_885;
            }
          }

          v440 = &__bid_ten2mk128trunc[v395];
          v441 = v440[1];
          if ((v435 ^ 0x8000000000000000) > v441)
          {
            v439 = 0;
            v442 = 0;
            v399 = 0;
            v438 = 1;
            goto LABEL_885;
          }

          if ((v435 ^ 0x8000000000000000) == v441)
          {
            v399 = 0;
            v439 = 0;
            if (v417 < *v440)
            {
              v442 = 0;
              v400 = 0;
              goto LABEL_886;
            }

            v438 = 1;
            goto LABEL_884;
          }

          v439 = 0;
          goto LABEL_856;
        }

        v443 = __bid_maskhigh128[v395];
        v439 = v443 & v23;
        if (v44 >= 0x18)
        {
          v443 = -1;
        }

        else
        {
          v439 = 0;
        }

        v442 = v21 & v443;
        v444 = __bid_shiftright128[v395];
        if (v444 > 63)
        {
          v21 = v23 >> v444;
          v23 = 0;
        }

        else
        {
          v21 = (v23 << -v444) | (v21 >> v444);
          v23 >>= v444;
        }

        if (v44 <= 0x17)
        {
          v476 = __bid_onehalf128[v395];
          if (v439 || v442 > v476 || v442 == v476 && (v476 = v442, v435 | v417))
          {
            v399 = 0;
            v438 = 1;
            if (v439 != v476 > v442 || v442 != v476)
            {
              goto LABEL_885;
            }

            v477 = &__bid_ten2mk128trunc[v395];
            v478 = v477[1];
            if (v435 <= v478)
            {
              if (v435 != v478)
              {
LABEL_857:
                v399 = 0;
                v400 = 0;
                goto LABEL_886;
              }

              v479 = a5;
              v480 = v27;
              v399 = 0;
              goto LABEL_956;
            }

            goto LABEL_725;
          }

          v439 = 0;
LABEL_859:
          v438 = 0;
          v399 = 1;
          goto LABEL_885;
        }

        v481 = __bid_onehalf128[v395];
        if (v439 <= v481)
        {
          if (v439 != v481)
          {
            goto LABEL_859;
          }

          if (!v442 && !v435 && !v417)
          {
            v442 = 0;
            goto LABEL_859;
          }
        }

        v399 = 0;
        v438 = 1;
        if (v439 != v481 || v442)
        {
          goto LABEL_885;
        }

        v477 = &__bid_ten2mk128trunc[v395];
        v482 = v477[1];
        if (v435 <= v482)
        {
          if (v435 != v482)
          {
LABEL_856:
            v442 = 0;
            goto LABEL_857;
          }

          v479 = a5;
          v480 = v27;
          v399 = 0;
          v442 = 0;
LABEL_956:
          if (v417 <= *v477)
          {
            v400 = 0;
            v27 = v480;
            a5 = v479;
LABEL_886:
            v401 = 0;
            if (!(v435 | v417) || v439 || v442)
            {
              v402 = 0;
              goto LABEL_899;
            }

            if (__PAIR128__(v435, v417) <= __bid_ten2mk128trunc[v395])
            {
              v399 = 0;
              v400 = 0;
              if ((v21 + v187))
              {
                v401 = 0;
                v164 = v21-- == 0;
                v517 = v164;
                v23 -= v517;
                v402 = 1;
              }

              else
              {
                v402 = 0;
                v401 = 1;
              }

LABEL_899:
              v518 = v332 - v23;
              v199 = v187 >= v21;
              v519 = v187 - v21;
              v520 = !v199;
              v521 = v518 - v520;
              if (v521 < 0)
              {
                v164 = v519 == 0;
                v519 = -v519;
                if (v164)
                {
                  v521 = -v521;
                }

                else
                {
                  v521 = ~v521;
                }

                v27 = v26;
              }

              if (!a5)
              {
                return v519;
              }

              if (v27)
              {
                if (a5 != 1 || !v400)
                {
                  v522 = a5 == 4 || a5 == 1;
                  v523 = v522 ? v401 : 0;
                  if (v523 != 1)
                  {
                    goto LABEL_936;
                  }
                }
              }

              else if (a5 != 2 || !v400)
              {
                v524 = a5 == 4 || a5 == 2;
                v525 = v524 ? v401 : 0;
                if ((v525 & 1) == 0)
                {
LABEL_936:
                  v527 = v402 ^ 1;
                  if (v399)
                  {
                    v527 = 0;
                  }

                  if ((v527 & 1) == 0 && ((a5 & 0xFFFFFFFE) == 2 && v27 || (a5 & 0xFFFFFFFD) == 1 && !v27))
                  {
                    result = v519 - 1;
                    if ((__PAIR128__(v521, v519) - 1) >> 64 == 0x314DC6448D93 && v519 == 0x38C15B0A00000000)
                    {
                      return 0x378D8E63FFFFFFFFLL;
                    }

                    return result;
                  }

                  return v519;
                }
              }

              result = v519 + 1;
              if (v519 == -1)
              {
                ++v521;
              }

              if (v519 == 0x378D8E63FFFFFFFFLL && v521 == 0x1ED09BEAD87C0)
              {
                return 0x38C15B0A00000000;
              }

              return result;
            }

LABEL_573:
            v401 = 0;
            v402 = 0;
            goto LABEL_899;
          }

          v27 = v480;
          a5 = v479;
LABEL_885:
          v400 = v399;
          *a6 |= 0x20u;
          v399 = v438;
          goto LABEL_886;
        }

        v442 = 0;
LABEL_725:
        v399 = 0;
        goto LABEL_885;
      }

LABEL_274:
      if (v44 <= 19)
      {
        v189 = __bid_midpoint64[v44 - 1];
        if (v21 >= v189)
        {
          if (v21 == v189)
          {
            v190 = v22 & 1;
            if (v34 < 34 || (v22 & 1) == 0)
            {
              if (v34 <= 33)
              {
                v191 = (34 - v34);
                if (v34 > 19)
                {
                  v451 = __bid_ten2k64[v191];
                  v452 = v451 * v9;
                  v453 = HIDWORD(v451);
                  v454 = HIDWORD(v451) * v22;
                  v455 = v451 * v22;
                  v456 = v451 * v28 + v454 + HIDWORD(v455);
                  v22 = v455 | (v456 << 32);
                  v9 = v452 + v453 * v28 + HIDWORD(v454) + HIDWORD(v456);
                }

                else if (v34 < 15)
                {
                  v486 = __bid_ten2k64[15 - v34] * v22;
                  v487 = 2328306436 * v486;
                  v488 = 2313682944 * v486;
                  v489 = v487 + 2313682944 * HIDWORD(v486) + HIDWORD(v488);
                  v9 = HIDWORD(v487) + 2328306436 * HIDWORD(v486) + HIDWORD(v489);
                  v22 = v488 | (v489 << 32);
                }

                else
                {
                  v192 = __bid_ten2k64[v191];
                  v193 = HIDWORD(v192) * v22;
                  v194 = v192 * v22;
                  v195 = v192 * v28 + v193 + HIDWORD(v194);
                  v9 = HIDWORD(v193) + HIDWORD(v192) * v28 + HIDWORD(v195);
                  v22 = v194 | (v195 << 32);
                }

                v25 -= v191 << 49;
                v190 = v22 & 1;
              }

              v490 = a5 != 0;
              if (v7 != v6)
              {
                v490 = 1;
              }

              if (!v190)
              {
                v490 = 1;
              }

              v491 = v7 == v6 && a5 == 4;
              if (v491 || !v490 || a5 == 2 && !v27 && !v26 || a5 == 1 && v27 && v26)
              {
                v199 = __CFADD__(v22++, 1);
                if (v199)
                {
                  v492 = v9 + 1;
                }

                else
                {
                  v492 = v9;
                }

                if (v22 == 0x378D8E6400000000 && v492 == 0x1ED09BEAD87C0)
                {
                  if (v25 == 0x5FFE000000000000)
                  {
                    v22 = 0;
                    *a6 |= 8u;
                  }

                  else
                  {
                    v22 = 0x38C15B0A00000000;
                  }
                }
              }

              else if (!a5 && v7 != v6 && v190 || a5 == 1 && !v27 && v26 || (a5 == 2 ? (v528 = v26 == 0) : (v528 = 0), v528 ? (v529 = v27 == 0) : (v529 = 1), !v529 ? (v530 = 0) : (v530 = 1), v7 != v6 ? (v531 = a5 == 3) : (v531 = 0), v531 || (v530 & 1) == 0))
              {
                if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
                {
                  v22 = 0x378D8E63FFFFFFFFLL;
                }

                else
                {
                  --v22;
                }
              }

              *a6 |= 0x20u;
              return v22;
            }
          }

          else if (v34 <= 33)
          {
            v305 = (34 - v34);
            if (v34 > 19)
            {
              v385 = __bid_ten2k64[v305];
              v386 = v385 * v9;
              v387 = HIDWORD(v385);
              v388 = HIDWORD(v385) * v22;
              v389 = v385 * v22;
              v390 = v385 * v28 + v388 + HIDWORD(v389);
              v22 = v389 | (v390 << 32);
              v9 = v386 + v387 * v28 + HIDWORD(v388) + HIDWORD(v390);
            }

            else if (v34 < 15)
            {
              v457 = __bid_ten2k64[15 - v34] * v22;
              v458 = 2328306436 * v457;
              v459 = 2313682944 * v457;
              v460 = v458 + 2313682944 * HIDWORD(v457) + HIDWORD(v459);
              v9 = HIDWORD(v458) + 2328306436 * HIDWORD(v457) + HIDWORD(v460);
              v22 = v459 | (v460 << 32);
            }

            else
            {
              v306 = __bid_ten2k64[v305];
              v307 = HIDWORD(v306) * v22;
              v308 = v306 * v22;
              v309 = v306 * v28 + v307 + HIDWORD(v308);
              v9 = HIDWORD(v307) + HIDWORD(v306) * v28 + HIDWORD(v309);
              v22 = v308 | (v309 << 32);
            }

            v25 -= v305 << 49;
            if (v9 == 0x1ED09BEAD87C0 && v22 == 0x378D8E6400000000)
            {
              v22 = 0x38C15B0A00000000;
              v9 = 0x314DC6448D93;
              v25 += 0x2000000000000;
            }
          }

          if ((a5 || v7 == v6) && (a5 != 4 || v7 == v6 || v21 == v189) && (a5 != 1 || v27 || !v26))
          {
            v462 = a5 == 2 && v26 == 0;
            v463 = !v462 || v27 == 0;
            v464 = v463;
            v465 = v7 != v6 && a5 == 3;
            if (!v465 && v464)
            {
              v466 = a5 == 4 || a5 == 0;
              if ((!v466 || v7 != v6) && (a5 != 1 || !v27 || !v26) && (a5 != 2 || v27 || v26))
              {
LABEL_799:
                *a6 |= 0x20u;
                return v22;
              }

LABEL_830:
              v199 = __CFADD__(v22++, 1);
              if (v199)
              {
                v510 = v9 + 1;
              }

              else
              {
                v510 = v9;
              }

              if (v22 == 0x378D8E6400000000 && v510 == 0x1ED09BEAD87C0)
              {
                if (v25 == 0x5FFE000000000000)
                {
                  v22 = 0;
                  *a6 |= 8u;
                }

                else
                {
                  v22 = 0x38C15B0A00000000;
                }
              }

              goto LABEL_799;
            }
          }

          goto LABEL_795;
        }

LABEL_303:
        if (v34 <= 33)
        {
          v207 = (34 - v34);
          if (v34 > 19)
          {
            v254 = __bid_ten2k64[v207];
            v255 = v254 * v9;
            v256 = HIDWORD(v254);
            v257 = HIDWORD(v254) * v22;
            v258 = v254 * v22;
            v259 = v254 * v28 + v257 + HIDWORD(v258);
            v22 = v258 | (v259 << 32);
            v9 = v255 + v256 * v28 + HIDWORD(v257) + HIDWORD(v259);
          }

          else if (v34 < 15)
          {
            v315 = __bid_ten2k64[15 - v34] * v22;
            v316 = 2328306436 * v315;
            v317 = 2313682944 * v315;
            v318 = v316 + 2313682944 * HIDWORD(v315) + HIDWORD(v317);
            v9 = HIDWORD(v316) + 2328306436 * HIDWORD(v315) + HIDWORD(v318);
            v22 = v317 | (v318 << 32);
          }

          else
          {
            v208 = __bid_ten2k64[v207];
            v209 = HIDWORD(v208) * v22;
            v210 = v208 * v22;
            v211 = v208 * v28 + v209 + HIDWORD(v210);
            v9 = HIDWORD(v209) + HIDWORD(v208) * v28 + HIDWORD(v211);
            v22 = v210 | (v211 << 32);
          }

          v25 -= v207 << 49;
        }

        if (a5)
        {
          if (a5 == 1 && v27 && v26 || a5 == 2 && !v27 && !v26)
          {
            v199 = __CFADD__(v22++, 1);
            if (v199)
            {
              v319 = v9 + 1;
            }

            else
            {
              v319 = v9;
            }

            if (v22 == 0x378D8E6400000000 && v319 == 0x1ED09BEAD87C0)
            {
              if (v25 == 0x5FFE000000000000)
              {
                v22 = 0;
                *a6 |= 8u;
              }

              else
              {
                v22 = 0x38C15B0A00000000;
              }
            }
          }

          else if (a5 == 1 && !v27 && v26 || (a5 == 2 ? (v368 = v26 == 0) : (v368 = 0), v368 ? (v369 = v27 == 0) : (v369 = 1), !v369 ? (v370 = 0) : (v370 = 1), v7 != v6 ? (v371 = a5 == 3) : (v371 = 0), v371 || (v370 & 1) == 0))
          {
            if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
            {
              v22 = 0x378D8E63FFFFFFFFLL;
            }

            else
            {
              --v22;
            }
          }
        }

        *a6 |= 0x20u;
        return v22;
      }

      v196 = &__bid_midpoint128[v44 - 20];
      v197 = v196[1];
      if (v23 < v197)
      {
        goto LABEL_303;
      }

      v198 = *v196;
      v199 = v23 != v197 || v21 >= v198;
      if (!v199)
      {
        goto LABEL_303;
      }

      v200 = v23 == v197 && v21 == v198;
      v201 = v200;
      if (!v200)
      {
        if (v34 <= 33)
        {
          v322 = (34 - v34);
          if (v34 > 19)
          {
            v467 = __bid_ten2k64[v322];
            v468 = v467 * v9;
            v469 = HIDWORD(v467);
            v470 = HIDWORD(v467) * v22;
            v471 = v467 * v22;
            v472 = v467 * v28 + v470 + HIDWORD(v471);
            v22 = v471 | (v472 << 32);
            v9 = v468 + v469 * v28 + HIDWORD(v470) + HIDWORD(v472);
          }

          else if (v34 < 15)
          {
            v499 = __bid_ten2k64[15 - v34] * v22;
            v500 = 2328306436 * v499;
            v501 = 2313682944 * v499;
            v502 = v500 + 2313682944 * HIDWORD(v499) + HIDWORD(v501);
            v9 = HIDWORD(v500) + 2328306436 * HIDWORD(v499) + HIDWORD(v502);
            v22 = v501 | (v502 << 32);
          }

          else
          {
            v323 = __bid_ten2k64[v322];
            v324 = HIDWORD(v323) * v22;
            v325 = v323 * v22;
            v326 = v323 * v28 + v324 + HIDWORD(v325);
            v9 = HIDWORD(v324) + HIDWORD(v323) * v28 + HIDWORD(v326);
            v22 = v325 | (v326 << 32);
          }

          v25 -= v322 << 49;
        }

LABEL_793:
        if (a5 || v7 == v6)
        {
          if (a5 != 4 || v7 == v6)
          {
            v503 = v27 != 0;
            v504 = v26 != 0;
            if (a5 == 1 && !v27 && v26)
            {
              goto LABEL_795;
            }

            v505 = a5 == 2 && v26 == 0;
            v506 = !v505 || v27 == 0;
            v507 = v506;
            v508 = v7 != v6 && a5 == 3;
            if (v508 || !v507)
            {
              goto LABEL_795;
            }
          }

          else
          {
            if (!v201)
            {
              goto LABEL_795;
            }

            v503 = v27 != 0;
            v504 = v26 != 0;
          }

          v509 = a5 == 4 || a5 == 0;
          if ((!v509 || v7 != v6) && (a5 != 1 || !v503 || !v504) && (a5 != 2 || v503 || v504))
          {
            goto LABEL_799;
          }

          goto LABEL_830;
        }

LABEL_795:
        if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
        {
          v22 = 0x378D8E63FFFFFFFFLL;
        }

        else
        {
          --v22;
        }

        goto LABEL_799;
      }

      if (v34 >= 34 && (v22 & 1) != 0)
      {
        goto LABEL_793;
      }

      if (v34 <= 33)
      {
        v202 = (34 - v34);
        if (v34 > 19)
        {
          v493 = __bid_ten2k64[v202];
          v494 = v493 * v9;
          v495 = HIDWORD(v493);
          v496 = HIDWORD(v493) * v22;
          v497 = v493 * v22;
          v498 = v493 * v28 + v496 + HIDWORD(v497);
          v22 = v497 | (v498 << 32);
          v9 = v494 + v495 * v28 + HIDWORD(v496) + HIDWORD(v498);
        }

        else if (v34 < 15)
        {
          v512 = __bid_ten2k64[15 - v34] * v22;
          v513 = 2328306436 * v512;
          v514 = 2313682944 * v512;
          v515 = v513 + 2313682944 * HIDWORD(v512) + HIDWORD(v514);
          v9 = HIDWORD(v513) + 2328306436 * HIDWORD(v512) + HIDWORD(v515);
          v22 = v514 | (v515 << 32);
        }

        else
        {
          v203 = __bid_ten2k64[v202];
          v204 = HIDWORD(v203) * v22;
          v205 = v203 * v22;
          v206 = v203 * v28 + v204 + HIDWORD(v205);
          v9 = HIDWORD(v204) + HIDWORD(v203) * v28 + HIDWORD(v206);
          v22 = v205 | (v206 << 32);
        }

        v25 -= v202 << 49;
      }

      if (a5)
      {
        if (a5 == 4)
        {
          if (v7 != v6)
          {
            goto LABEL_1042;
          }
        }

        else if ((a5 != 2 || v27 || v26) && (a5 != 1 || !v27 || !v26))
        {
          if (a5 == 1 && !v27 && v26 || (a5 == 2 ? (v537 = v26 == 0) : (v537 = 0), v537 ? (v538 = v27 == 0) : (v538 = 1), !v538 ? (v539 = 0) : (v539 = 1), v7 != v6 ? (v540 = a5 == 3) : (v540 = 0), v540 || (v539 & 1) == 0))
          {
            if ((__PAIR128__(v9, v22) - 1) >> 64 == 0x314DC6448D93 && v22 == 0x38C15B0A00000000)
            {
              v22 = 0x378D8E63FFFFFFFFLL;
            }

            else
            {
              --v22;
            }
          }

          goto LABEL_1042;
        }

        v199 = __CFADD__(v22++, 1);
        if (v199)
        {
          v516 = v9 + 1;
        }

        else
        {
          v516 = v9;
        }

        if (v22 == 0x378D8E6400000000 && v516 == 0x1ED09BEAD87C0)
        {
          if (v25 == 0x5FFE000000000000)
          {
            v22 = 0;
            *a6 |= 8u;
          }

          else
          {
            v22 = 0x38C15B0A00000000;
          }
        }
      }

LABEL_1042:
      *a6 |= 0x20u;
      return v22;
    }

    if (v34 <= 33)
    {
      v58 = (34 - v34);
      if (v34 > 19)
      {
        v212 = __bid_ten2k64[v58];
        v213 = v212 * v9;
        v214 = HIDWORD(v212);
        v215 = HIDWORD(v212) * v22;
        v216 = v212 * v22;
        v217 = v212 * v28 + v215 + HIDWORD(v216);
        v22 = v216 | (v217 << 32);
        v9 = v213 + v214 * v28 + HIDWORD(v215) + HIDWORD(v217);
      }

      else if (v34 < 15)
      {
        v260 = __bid_ten2k64[15 - v34] * v22;
        v261 = 2328306436 * v260;
        v262 = 2313682944 * v260;
        v263 = v261 + 2313682944 * HIDWORD(v260) + HIDWORD(v262);
        v9 = HIDWORD(v261) + 2328306436 * HIDWORD(v260) + HIDWORD(v263);
        v22 = v262 | (v263 << 32);
      }

      else
      {
        v59 = __bid_ten2k64[v58];
        v60 = HIDWORD(v59) * v22;
        v61 = v59 * v22;
        v62 = v59 * v28 + v60 + HIDWORD(v61);
        v9 = HIDWORD(v60) + HIDWORD(v59) * v28 + HIDWORD(v62);
        v22 = v61 | (v62 << 32);
      }

      v25 -= v58 << 49;
    }

    result = 0x38C15B0A00000000;
    if ((a5 & 0xFFFFFFFB) != 0 || v46 != 35 || v9 != 0x314DC6448D93 || v22 != 0x38C15B0A00000000)
    {
      goto LABEL_421;
    }

    if (v7 == v6)
    {
      goto LABEL_420;
    }

    if (v44 > 19)
    {
      v265 = &__bid_midpoint128[v44 - 20];
      v266 = v265[1];
      if (v23 > v266)
      {
        goto LABEL_351;
      }

      if (v23 != v266)
      {
LABEL_420:
        v22 = 0x38C15B0A00000000;
        v9 = 0x314DC6448D93;
        goto LABEL_421;
      }

      v264 = *v265;
    }

    else
    {
      v264 = __bid_midpoint64[v44 - 1];
    }

    if (v21 <= v264)
    {
      goto LABEL_420;
    }

LABEL_351:
    v22 = 0x378D8E63FFFFFFFFLL;
    v25 -= 0x2000000000000;
    v9 = 0x1ED09BEAD87C0;
    if (!a5)
    {
      goto LABEL_445;
    }

LABEL_421:
    if (a5 == 1 && v27 && v26 || a5 == 2 && !v27 && !v26)
    {
      v320 = v22 + 1;
      if (v22 == -1)
      {
        ++v9;
      }

      if (v22 == 0x378D8E63FFFFFFFFLL && v9 == 0x1ED09BEAD87C0)
      {
        if (v25 == 0x5FFE000000000000)
        {
          result = 0;
          *a6 |= 8u;
        }

        goto LABEL_447;
      }

      goto LABEL_446;
    }

    if (a5 == 1 && !v27 && v26 || a5 == 2 && v27 && !v26 || a5 == 3 && v7 != v6)
    {
      v320 = v22 - 1;
      if ((__PAIR128__(v9, v22) - 1) >> 64 != 0x314DC6448D93 || v22 != 0x38C15B0A00000000)
      {
LABEL_446:
        result = v320;
        goto LABEL_447;
      }

      result = 0x378D8E63FFFFFFFFLL;
    }

    else
    {
LABEL_445:
      result = v22;
    }

LABEL_447:
    *a6 |= 0x20u;
    return result;
  }

  if (v46 < 0)
  {
    v63 = (v25 >> 49) - (v24 >> 49);
    v64 = v63 - 20;
    if (v63 < 20)
    {
      if (v63 < 1)
      {
        goto LABEL_354;
      }

      if (v34 <= 19)
      {
        v85 = __bid_ten2k64[v63];
        v86 = v22;
        v87 = HIDWORD(v85);
        v88 = v85 * HIDWORD(v22);
        v89 = v85 * v22;
        v90 = HIDWORD(v85) * v86 + v88 + HIDWORD(v89);
        v9 = HIDWORD(v88) + v87 * v28 + HIDWORD(v90);
        v22 = v89 | (v90 << 32);
        goto LABEL_354;
      }

      v267 = __bid_ten2k64[v63];
      v268 = v267 * v9;
      v269 = HIDWORD(v267);
      v69 = HIDWORD(v267) * v22;
      v270 = v267 * v22;
      v71 = v267 * v28 + v69 + HIDWORD(v270);
      v22 = v270 | (v71 << 32);
      v72 = v268 + v269 * v28;
    }

    else
    {
      v65 = __bid_ten2k128[2 * v64];
      v66 = __bid_ten2k128[2 * v64 + 1] * v22;
      v67 = v22;
      v68 = HIDWORD(v65);
      v69 = v65 * HIDWORD(v22);
      v70 = v65 * v22;
      v71 = HIDWORD(v65) * v67 + v69 + HIDWORD(v70);
      v22 = v70 | (v71 << 32);
      v72 = v66 + v68 * v28;
    }

    v9 = v72 + HIDWORD(v69) + HIDWORD(v71);
LABEL_354:
    if (v7 != v6)
    {
      v302 = (__PAIR128__(v23 - v9, v21) - v22) >> 64;
      result = v21 - v22;
      if (v302 < 0)
      {
        result = v22 - v21;
        if (v21 == v22)
        {
          v302 = -v302;
        }

        else
        {
          v302 = ~v302;
        }
      }

      if (v302 | result)
      {
        return result;
      }

      return 0;
    }

    v271 = (__PAIR128__(v9, v22) + __PAIR128__(v23, v21)) >> 64;
    result = v22 + v21;
    if (v271 <= 0x1ED09BEAD87C0 && (result <= 0x378D8E63FFFFFFFFLL || v271 != 0x1ED09BEAD87C0))
    {
      return result;
    }

    if (result <= 0xFFFFFFFFFFFFFFFALL)
    {
      v272 = (__PAIR128__(v9, v22) + __PAIR128__(v23, v21)) >> 64;
    }

    else
    {
      v272 = v271 + 1;
    }

    v273 = (result + 5) >> 32;
    v274 = result + 5;
    v275 = 2576980377 * v273;
    v276 = HIDWORD(v275) + 429496729 * v273;
    v277 = 429496729 * (result + 5) + v275 + ((2576980377u * (result + 5)) >> 32);
    v278 = (-1717986919 * (result + 5)) | (v277 << 32);
    v279 = 2576980480 * v273;
    v280 = 2576980480 * (result + 5);
    v281 = v279 + 2576980377 * v274 + HIDWORD(v280);
    v282 = HIDWORD(v279) + 2576980377 * v273 + HIDWORD(v281);
    v283 = v280 | (v281 << 32);
    v284 = __PAIR128__(v276, v278) + __PAIR128__(HIDWORD(v277), v282);
    v285 = 2576980377 * HIDWORD(v272);
    v286 = HIDWORD(v285) + 429496729 * HIDWORD(v272);
    v287 = 429496729 * v272 + v285 + ((2576980377u * v272) >> 32);
    v288 = HIDWORD(v287);
    v289 = (-1717986919 * v272) | (v287 << 32);
    v290 = 2576980480 * HIDWORD(v272);
    v291 = 2576980480 * v272;
    v292 = v290 + 2576980377 * v272 + HIDWORD(v291);
    v293 = HIDWORD(v290) + 2576980377 * HIDWORD(v272) + HIDWORD(v292);
    v294 = v291 | (v292 << 32);
    v295 = __PAIR128__(v286, v289) + __PAIR128__(v288, v293);
    v296 = v294 + v284;
    v199 = __CFADD__(__CFADD__(v294, v284), v289 + v293);
    v297 = __CFADD__(v294, v284) + v289 + v293;
    v298 = v199;
    result = *(&v284 + 1) + v297;
    if (__CFADD__(*(&v284 + 1), v297))
    {
      v299 = 1;
    }

    else
    {
      v299 = v298;
    }

    if (v296 | v283)
    {
      if (v296 < 0x1999999999999999 || (v300 = 0, v296 == 0x1999999999999999) && v283 < 0x999999999999999ALL)
      {
        if (result)
        {
          v301 = 0;
          --result;
          v300 = 1;
        }

        else
        {
          v300 = 0;
          v301 = 1;
        }
      }

      else
      {
        v301 = 0;
      }

      v303 = v24 + 0x2000000000000;
      if ((a5 & 0xFFFFFFFB) == 0 && v24 == 0x5FFE000000000000)
      {
        goto LABEL_981;
      }

      if (v296 <= 0x8000000000000000)
      {
        if (v296 == 0x8000000000000000 && v283)
        {
          v376 = 0;
          goto LABEL_525;
        }
      }

      else if (v296 <= 0x9999999999999999)
      {
        v376 = 0;
        if (v296 != 0x9999999999999999 || v283 <= 0x9999999999999998)
        {
LABEL_525:
          v377 = 0;
          v378 = *(&v295 + 1) + v299;
          v379 = 0;
          if ((v295 & 1) == 0 && (v301 & 1) == 0)
          {
            if (v296 < 0)
            {
              v379 = v376;
            }

            else
            {
              v379 = 0;
            }

            if (v296 >= 0)
            {
              v377 = v376;
            }

            else
            {
              v377 = 0;
            }
          }

          if (!a5)
          {
            return result;
          }

          if (v27)
          {
            if (a5 == 1)
            {
              v380 = v379;
            }

            else
            {
              v380 = 0;
            }

            if ((v380 & 1) == 0)
            {
              if (a5 != 4 && a5 != 1)
              {
                v300 = 0;
              }

              if (v300 != 1)
              {
LABEL_592:
                if ((v301 | v377) == 1 && ((a5 & 0xFFFFFFFE) == 2 && v27 || (a5 & 0xFFFFFFFD) == 1 && !v27))
                {
                  v384 = result - 1;
                  if ((__PAIR128__(v378, result) - 1) >> 64 == 0x314DC6448D93 && result == 0x38C15B0A00000000)
                  {
                    v384 = 0x378D8E63FFFFFFFFLL;
                    v303 = v24;
                  }
                }

                else
                {
                  v384 = result;
                }

LABEL_686:
                result = v384;
                if (v303 == 0x6000000000000000)
                {
                  if (v27)
                  {
                    v473 = 1;
                  }

                  else
                  {
                    v473 = 2;
                  }

                  if (v473 == a5)
                  {
                    result = 0;
                  }

                  else
                  {
                    result = 0x378D8E63FFFFFFFFLL;
                  }

                  *a6 |= 0x28u;
                }

                return result;
              }
            }
          }

          else
          {
            if (a5 == 2)
            {
              v382 = v379;
            }

            else
            {
              v382 = 0;
            }

            if ((v382 & 1) == 0)
            {
              if (a5 != 4 && a5 != 2)
              {
                LOBYTE(v300) = 0;
              }

              if ((v300 & 1) == 0)
              {
                goto LABEL_592;
              }
            }
          }

          v384 = result + 1;
          if (result == -1)
          {
            ++v378;
          }

          if (result == 0x378D8E63FFFFFFFFLL && v378 == 0x1ED09BEAD87C0)
          {
            v384 = 0x38C15B0A00000000;
            v303 = v24 + 0x4000000000000;
          }

          goto LABEL_686;
        }
      }
    }

    else
    {
      v300 = 0;
      v303 = v24 + 0x2000000000000;
      if ((a5 & 0xFFFFFFFB) != 0)
      {
        v301 = 0;
      }

      else
      {
        v301 = 0;
        if (v24 == 0x5FFE000000000000)
        {
          goto LABEL_981;
        }
      }
    }

    *a6 |= 0x20u;
    v376 = 1;
    goto LABEL_525;
  }

  if (v46 <= 33 - v44)
  {
    v73 = (v25 >> 49) - (v24 >> 49);
    v74 = v73 - 20;
    if (v73 < 20)
    {
      if (v73 < 1)
      {
        goto LABEL_388;
      }

      if (v34 <= 19)
      {
        v173 = __bid_ten2k64[v73];
        v174 = v22;
        v175 = HIDWORD(v173);
        v176 = v173 * HIDWORD(v22);
        v177 = v173 * v22;
        v178 = HIDWORD(v173) * v174 + v176 + HIDWORD(v177);
        v9 = HIDWORD(v176) + v175 * v28 + HIDWORD(v178);
        v22 = v177 | (v178 << 32);
        goto LABEL_388;
      }

      v310 = __bid_ten2k64[v73];
      v311 = v310 * v9;
      v312 = HIDWORD(v310);
      v79 = HIDWORD(v310) * v22;
      v313 = v310 * v22;
      v81 = v310 * v28 + v79 + HIDWORD(v313);
      v22 = v313 | (v81 << 32);
      v82 = v311 + v312 * v28;
    }

    else
    {
      v75 = __bid_ten2k128[2 * v74];
      v76 = __bid_ten2k128[2 * v74 + 1] * v22;
      v77 = v22;
      v78 = HIDWORD(v75);
      v79 = v75 * HIDWORD(v22);
      v80 = v75 * v22;
      v81 = HIDWORD(v75) * v77 + v79 + HIDWORD(v80);
      v22 = v80 | (v81 << 32);
      v82 = v76 + v78 * v28;
    }

    v9 = v82 + HIDWORD(v79) + HIDWORD(v81);
LABEL_388:
    if (v7 == v6)
    {
      return v22 + v21;
    }

    v314 = __PAIR128__(v9 - v23, v22) - v21;
    result = v314;
    if (v314 != 0)
    {
      if ((*(&v314 + 1) & 0x8000000000000000) != 0)
      {
        return v21 - v22;
      }

      return result;
    }

    return 0;
  }

  if (v46 == 34 - v44)
  {
    v48 = (v25 >> 49) - (v24 >> 49);
    v49 = v48 - 20;
    if (v48 >= 20)
    {
      v50 = __bid_ten2k128[2 * v49];
      v51 = __bid_ten2k128[2 * v49 + 1] * v22;
      v52 = v22;
      v53 = HIDWORD(v50);
      v54 = v50 * HIDWORD(v22);
      v55 = v50 * v22;
      v56 = HIDWORD(v50) * v52 + v54 + HIDWORD(v55);
      v22 = v55 | (v56 << 32);
      v57 = v51 + v53 * v28;
LABEL_457:
      v9 = v57 + HIDWORD(v54) + HIDWORD(v56);
      goto LABEL_458;
    }

    if (v48 >= 1)
    {
      if (v34 > 19)
      {
        v333 = __bid_ten2k64[v48];
        v334 = v333 * v9;
        v335 = HIDWORD(v333);
        v54 = HIDWORD(v333) * v22;
        v336 = v333 * v22;
        v56 = v333 * v28 + v54 + HIDWORD(v336);
        v22 = v336 | (v56 << 32);
        v57 = v334 + v335 * v28;
        goto LABEL_457;
      }

      v248 = __bid_ten2k64[v48];
      v249 = v22;
      v250 = HIDWORD(v248);
      v251 = v248 * HIDWORD(v22);
      v252 = v248 * v22;
      v253 = HIDWORD(v248) * v249 + v251 + HIDWORD(v252);
      v9 = HIDWORD(v251) + v250 * v28 + HIDWORD(v253);
      v22 = v252 | (v253 << 32);
    }

LABEL_458:
    if (v7 == v6)
    {
      v338 = v22 + v21;
      v337 = (__PAIR128__(v9, v22) + __PAIR128__(v23, v21)) >> 64;
      result = v22 + v21;
      if (v337 <= 0x1ED09BEAD87C0 && (v338 <= 0x378D8E63FFFFFFFFLL || v337 != 0x1ED09BEAD87C0))
      {
        return result;
      }

      if (v338 > 0xFFFFFFFFFFFFFFFALL)
      {
        ++v337;
      }

      v339 = (v338 + 5) >> 32;
      v340 = 2576980377 * v339;
      v341 = HIDWORD(v340) + 429496729 * v339;
      v342 = 429496729 * (v338 + 5) + v340 + ((2576980377u * (v338 + 5)) >> 32);
      v343 = 2576980480 * v339;
      v344 = 2576980480 * (v338 + 5);
      v345 = v343 + 2576980377 * (v338 + 5) + HIDWORD(v344);
      v346 = HIDWORD(v343) + 2576980377 * v339 + HIDWORD(v345);
      v347 = v344 | (v345 << 32);
      v348 = __PAIR128__(HIDWORD(v342), (-1717986919 * (v338 + 5)) | (v342 << 32)) + __PAIR128__(v341, v346);
      v349 = 2576980377 * HIDWORD(v337);
      v350 = HIDWORD(v349) + 429496729 * HIDWORD(v337);
      v351 = 429496729 * v337 + v349 + ((2576980377u * v337) >> 32);
      v352 = HIDWORD(v351);
      v353 = (-1717986919 * v337) | (v351 << 32);
      v354 = 2576980480 * HIDWORD(v337);
      v355 = 2576980480 * v337;
      v356 = v354 + 2576980377 * v337 + HIDWORD(v355);
      v357 = HIDWORD(v354) + 2576980377 * HIDWORD(v337) + HIDWORD(v356);
      v358 = v355 | (v356 << 32);
      v359 = __PAIR128__(v350, v353) + __PAIR128__(v352, v357);
      v360 = v358 + v348;
      v199 = __CFADD__(__CFADD__(v358, v348), v353 + v357);
      v361 = __CFADD__(v358, v348) + v353 + v357;
      v362 = v199;
      result = *(&v348 + 1) + v361;
      if (__CFADD__(*(&v348 + 1), v361))
      {
        v363 = 1;
      }

      else
      {
        v363 = v362;
      }

      if (v360 | v347)
      {
        if (v360 < 0x1999999999999999 || (v364 = 0, v360 == 0x1999999999999999) && v347 < 0x999999999999999ALL)
        {
          if (result)
          {
            v365 = 0;
            --result;
            v364 = 1;
          }

          else
          {
            v364 = 0;
            v365 = 1;
          }
        }

        else
        {
          v365 = 0;
        }

        v367 = v24 + 0x2000000000000;
        if ((a5 & 0xFFFFFFFB) != 0 || v24 != 0x5FFE000000000000)
        {
          if (v360 <= 0x8000000000000000)
          {
            if (v360 == 0x8000000000000000 && v347)
            {
              v446 = 0;
              goto LABEL_621;
            }
          }

          else if (v360 <= 0x9999999999999999)
          {
            v446 = 0;
            if (v360 != 0x9999999999999999 || v347 <= 0x9999999999999998)
            {
LABEL_621:
              v447 = 0;
              v448 = *(&v359 + 1) + v363;
              v449 = 0;
              if ((v364 & 1) == 0 && (v365 & 1) == 0)
              {
                if (v360 < 0)
                {
                  v449 = v446;
                }

                else
                {
                  v449 = 0;
                }

                if (v360 >= 0)
                {
                  v447 = v446;
                }

                else
                {
                  v447 = 0;
                }
              }

              if (!a5)
              {
                return result;
              }

              if (v27)
              {
                if (a5 != 1)
                {
                  v449 = 0;
                }

                if ((v449 & 1) == 0)
                {
                  if (a5 != 4 && a5 != 1)
                  {
                    v364 = 0;
                  }

                  if (v364 != 1)
                  {
LABEL_740:
                    if ((v365 | v447) == 1 && ((a5 & 0xFFFFFFFE) == 2 && v27 || (a5 & 0xFFFFFFFD) == 1 && !v27))
                    {
                      v475 = result - 1;
                      if ((__PAIR128__(v448, result) - 1) >> 64 == 0x314DC6448D93 && result == 0x38C15B0A00000000)
                      {
                        v475 = 0x378D8E63FFFFFFFFLL;
                        v367 = v24;
                      }
                    }

                    else
                    {
                      v475 = result;
                    }

LABEL_844:
                    if (v367 != 0x6000000000000000)
                    {
                      return v475;
                    }

                    if (v27)
                    {
                      v511 = 1;
                    }

                    else
                    {
                      v511 = 2;
                    }

                    if (v511 == a5)
                    {
                      result = 0;
                    }

                    else
                    {
                      result = 0x378D8E63FFFFFFFFLL;
                    }

                    *a6 |= 0x28u;
                    return result;
                  }
                }
              }

              else
              {
                if (a5 != 2)
                {
                  v449 = 0;
                }

                if ((v449 & 1) == 0)
                {
                  if (a5 != 4 && a5 != 2)
                  {
                    LOBYTE(v364) = 0;
                  }

                  if ((v364 & 1) == 0)
                  {
                    goto LABEL_740;
                  }
                }
              }

              v475 = result + 1;
              if (result == -1)
              {
                ++v448;
              }

              if (result == 0x378D8E63FFFFFFFFLL && v448 == 0x1ED09BEAD87C0)
              {
                v475 = 0x38C15B0A00000000;
                v367 = v24 + 0x4000000000000;
              }

              goto LABEL_844;
            }
          }

LABEL_620:
          *a6 |= 0x20u;
          v446 = 1;
          goto LABEL_621;
        }
      }

      else
      {
        v364 = 0;
        v367 = v24 + 0x2000000000000;
        if ((a5 & 0xFFFFFFFB) != 0)
        {
          v365 = 0;
          goto LABEL_620;
        }

        v365 = 0;
        if (v24 != 0x5FFE000000000000)
        {
          goto LABEL_620;
        }
      }

LABEL_981:
      result = 0;
      v532 = *a6 | 0x28;
      goto LABEL_1023;
    }

    v366 = __PAIR128__(v9 - v23, v22) - v21;
    result = v366;
    if (v366 != 0)
    {
      if ((*(&v366 + 1) & 0x8000000000000000) != 0)
      {
        return v21 - v22;
      }

      return result;
    }

    return 0;
  }

  v544 = a6;
  v545 = v26;
  v543 = a5;
  v542 = 0x38C15B0A00000000;
  v541 = v34 + (v25 >> 49) - (v24 >> 49);
  v91 = v541 - 54;
  v92 = 34 - v34;
  v546 = v23;
  v547 = v21;
  while (1)
  {
    if (v92 < 20)
    {
      v97 = v9;
      v96 = v22;
      if (v92 >= 1)
      {
        v98 = __bid_ten2k64[v92];
        v99 = HIDWORD(v98);
        if (v34 > 19)
        {
          v103 = v98 * v9;
          v104 = HIDWORD(v98) * v22;
          v105 = v98 * v22;
          v106 = v98 * HIDWORD(v22) + v104 + HIDWORD(v105);
          v96 = v105 | (v106 << 32);
          v97 = v103 + v99 * HIDWORD(v22) + HIDWORD(v104) + HIDWORD(v106);
        }

        else
        {
          v100 = v98 * HIDWORD(v22);
          v101 = v98 * v22;
          v102 = HIDWORD(v98) * v22 + v100 + HIDWORD(v101);
          v97 = HIDWORD(v100) + v99 * HIDWORD(v22) + HIDWORD(v102);
          v96 = v101 | (v102 << 32);
        }
      }
    }

    else
    {
      v93 = &__bid_ten2k128[2 * (v92 - 20)];
      v94 = *v93 * HIDWORD(v22);
      v95 = HIDWORD(*v93) * v22 + v94 + ((*v93 * v22) >> 32);
      v96 = (*v93 * v22) | (v95 << 32);
      v97 = v93[1] * v22 + HIDWORD(*v93) * HIDWORD(v22) + HIDWORD(v94) + HIDWORD(v95);
    }

    v107 = v91 + 20;
    v108 = v91 + 19;
    if ((v91 + 20) < 1)
    {
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = v23;
      v119 = v21;
      goto LABEL_235;
    }

    v109 = v27;
    if (v107 > 0x13)
    {
      v112 = (__bid_midpoint128[v91] + __PAIR128__(v23, v21)) >> 64;
      v111 = *&__bid_midpoint128[v91] + v21;
    }

    else
    {
      v110 = __bid_midpoint64[v108];
      v199 = __CFADD__(v110, v21);
      v111 = v110 + v21;
      v112 = v199 ? v23 + 1 : v23;
    }

    v120 = HIDWORD(v111);
    v121 = v111;
    v122 = __bid_ten2mk128[2 * v108];
    v123 = __bid_ten2mk128[2 * v108 + 1];
    v124 = HIDWORD(v123);
    v125 = v123 * HIDWORD(v111);
    v126 = HIDWORD(v125) + HIDWORD(v123) * HIDWORD(v111);
    v127 = HIDWORD(v123) * v111 + v125 + ((v123 * v111) >> 32);
    v128 = (v123 * v111) | (v127 << 32);
    v129 = v122 * HIDWORD(v111);
    v130 = v122 * v111;
    v131 = HIDWORD(v122) * v121 + v129 + HIDWORD(v130);
    v132 = v130 | (v131 << 32);
    v133 = __PAIR128__(v126, v128) + __PAIR128__(HIDWORD(v127), HIDWORD(v129) + HIDWORD(v122) * v120 + HIDWORD(v131));
    v134 = HIDWORD(v112);
    LODWORD(v129) = v112;
    v135 = v123 * HIDWORD(v112);
    v136 = v123 * v112;
    v137 = v124 * v112;
    v138 = HIDWORD(v135) + v124 * HIDWORD(v112);
    v139 = v137 + v135 + HIDWORD(v136);
    v140 = HIDWORD(v139);
    v141 = v136 | (v139 << 32);
    v142 = v122 * HIDWORD(v112);
    v143 = v122 * v112;
    v144 = HIDWORD(v122) * v129 + v142 + HIDWORD(v143);
    v145 = v143 | (v144 << 32);
    v146 = __PAIR128__(v138, v141) + __PAIR128__(v140, HIDWORD(v142) + HIDWORD(v122) * v134 + HIDWORD(v144));
    v199 = __CFADD__(v133, v145);
    v147 = v133 + v145;
    v149 = v199;
    v199 = __CFADD__(v199, v141 + HIDWORD(v142) + HIDWORD(v122) * v134 + HIDWORD(v144));
    v148 = v149 + v141 + HIDWORD(v142) + HIDWORD(v122) * v134 + HIDWORD(v144);
    v150 = v199;
    v199 = __CFADD__(*(&v133 + 1), v148);
    v119 = *(&v133 + 1) + v148;
    v151 = v199 || v150;
    v118 = *(&v146 + 1) + v151;
    if (v107 >= 4)
    {
      v154 = __bid_maskhigh128[v108];
      if (v107 >= 0x17)
      {
        v152 = v154 & v118;
      }

      else
      {
        v152 = 0;
      }

      if (v107 >= 0x17)
      {
        v154 = -1;
      }

      v153 = v119 & v154;
      v155 = __bid_shiftright128[v108];
      v156 = v155 <= 63;
      v157 = v119 >> v155;
      v158 = -v155;
      v159 = v118 >> v155;
      v160 = v118 >> v155;
      v119 = (v118 << v158) | v157;
      if (v156)
      {
        v118 = v159;
      }

      else
      {
        v118 = 0;
      }

      if (!v156)
      {
        v119 = v160;
      }

      v23 = v546;
      if (v107 > 0x16)
      {
        v163 = __bid_onehalf128[v108];
        if (v152 <= v163)
        {
          if (v152 != v163)
          {
            goto LABEL_220;
          }

          if (!v153 && !v147 && !v132)
          {
            v153 = 0;
LABEL_220:
            v117 = 1;
LABEL_221:
            v114 = v7 != v6;
            v113 = v7 == v6;
            goto LABEL_222;
          }
        }

        v164 = v152 == v163 && v153 == 0;
        if (v164 && __PAIR128__(v147, v132) <= __bid_ten2mk128trunc[v108])
        {
          goto LABEL_209;
        }
      }

      else
      {
        v161 = __bid_onehalf128[v108];
        if (v152)
        {
          v162 = 1;
        }

        else
        {
          v162 = v153 > v161;
        }

        if (!v162)
        {
          if (v153 != v161 || (v161 = v153, !(v147 | v132)))
          {
            v152 = 0;
            goto LABEL_220;
          }
        }

        if (v152 == v161 > v153 && v153 == v161 && __PAIR128__(v147, v132) <= __bid_ten2mk128trunc[v108])
        {
          goto LABEL_210;
        }
      }
    }

    else
    {
      v23 = v546;
      if (v147 <= 0x8000000000000000)
      {
        v152 = 0;
        v117 = 1;
        if (v147 != 0x8000000000000000 || !v132)
        {
          v153 = 0;
          goto LABEL_221;
        }
      }

      if (__PAIR128__(v147 ^ 0x8000000000000000, v132) < __bid_ten2mk128trunc[v108])
      {
        v152 = 0;
LABEL_209:
        v153 = 0;
LABEL_210:
        v113 = 0;
        v114 = 0;
        v117 = 0;
        goto LABEL_222;
      }

      v152 = 0;
      v153 = 0;
    }

    v117 = 1;
    v113 = v7 != v6;
    v114 = v7 == v6;
LABEL_222:
    v115 = 0;
    if (!(v147 | v132) || v152 || v153)
    {
      v116 = 0;
      v27 = v109;
      v21 = v547;
    }

    else
    {
      v27 = v109;
      v21 = v547;
      if (__PAIR128__(v147, v132) <= __bid_ten2mk128trunc[v108])
      {
        v113 = 0;
        v114 = 0;
        if ((v119 + v96))
        {
          v164 = v119-- == 0;
          v165 = v164;
          v118 -= v165;
          v116 = v7 != v6;
          v115 = v7 == v6;
        }

        else
        {
          v115 = v7 != v6;
          v116 = v7 == v6;
        }
      }

      else
      {
        v115 = 0;
        v116 = 0;
      }
    }

LABEL_235:
    if (v7 == v6)
    {
      break;
    }

    v199 = v96 >= v119;
    v166 = v96 - v119;
    v167 = !v199;
    v168 = v97 - v118 - v167;
    if (v168 < 0)
    {
      v164 = v166 == 0;
      v166 = -v166;
      if (v164)
      {
        v168 = -v168;
      }

      else
      {
        v168 = ~v168;
      }

      v169 = v545;
    }

    else
    {
      v169 = v27;
    }

    if (v168 < 0x314DC6448D93 || v168 == 0x314DC6448D93 && v166 < 0x38C15B0A00000000)
    {
      if (v107 < 1)
      {
        v304 = v91 + 19;
LABEL_501:
        v372 = v168 == 0x1ED09BEAD87C0;
        v373 = v166 == 0x378D8E6400000000;
        v374 = !v372 || !v373;
        if (v372 && v373)
        {
          v221 = 0x314DC6448D93;
        }

        else
        {
          v221 = v168;
        }

        if (v374)
        {
          result = v166;
        }

        else
        {
          result = 0x38C15B0A00000000;
        }

        if (v374)
        {
          v375 = v24;
        }

        else
        {
          v375 = v24 + 0x2000000000000;
        }

        a6 = v544;
        v222 = v543;
        if (v304 >= 1)
        {
          v375 += v304 << 49;
        }

        goto LABEL_983;
      }
    }

    else
    {
      v172 = v168 != 0x314DC6448D93 || v166 != 0x38C15B0A00000000 || !v116 && !v113;
      if (v107 < 1 || v172)
      {
        if (v172)
        {
          v304 = v107;
        }

        else
        {
          v304 = v108;
        }

        goto LABEL_501;
      }
    }

    --v91;
    ++v92;
  }

  v221 = (__PAIR128__(v118, v119) + __PAIR128__(v97, v96)) >> 64;
  result = v119 + v96;
  a6 = v544;
  v222 = v543;
  if (v221 > 0x1ED09BEAD87C0)
  {
    goto LABEL_322;
  }

  v223 = (v541 - 34);
  if (result <= 0x378D8E63FFFFFFFFLL)
  {
    goto LABEL_978;
  }

  if (v221 != 0x1ED09BEAD87C0)
  {
    v223 = (v541 - 34);
    goto LABEL_978;
  }

LABEL_322:
  if (result <= 0xFFFFFFFFFFFFFFFALL)
  {
    v224 = (__PAIR128__(v118, v119) + __PAIR128__(v97, v96)) >> 64;
  }

  else
  {
    v224 = v221 + 1;
  }

  v225 = (result + 5) >> 32;
  v226 = result + 5;
  v227 = 2576980377 * v225;
  v228 = 2576980377 * (result + 5);
  v229 = 429496729 * (result + 5);
  v230 = HIDWORD(v227) + 429496729 * v225;
  v231 = 2576980378 * v225;
  v232 = 2576980378 * v226;
  v233 = v231 + 2576980377 * v226 + HIDWORD(v232);
  v234 = v232 | (v233 << 32);
  v236 = (v228 | ((v229 + v227 + HIDWORD(v228)) << 32)) + HIDWORD(v231) + v227 + HIDWORD(v233);
  v235 = (__PAIR128__((v229 + v227 + HIDWORD(v228)) >> 32, v228 | ((v229 + v227 + HIDWORD(v228)) << 32)) + __PAIR128__(v230, HIDWORD(v231) + v227 + HIDWORD(v233))) >> 64;
  v237 = 2576980377 * HIDWORD(v224);
  v238 = HIDWORD(v237) + 429496729 * HIDWORD(v224);
  v239 = 429496729 * v224 + v237 + ((2576980377u * v224) >> 32);
  v240 = HIDWORD(v239);
  v241 = (-1717986919 * v224) | (v239 << 32);
  v242 = 2576980378 * HIDWORD(v224);
  v243 = 2576980378 * v224;
  v244 = v242 + 2576980377 * v224 + HIDWORD(v243);
  v245 = HIDWORD(v242) + 2576980377 * HIDWORD(v224) + HIDWORD(v244);
  v246 = __PAIR128__(v241 + v245, v236) + (v243 | (v244 << 32));
  result = v235 + *(&v246 + 1);
  v221 = ((__PAIR128__(v238, v241) + __PAIR128__(v240, v245)) >> 64) + *(&v246 + 1);
  if (!(v246 | v234))
  {
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v113 = 1;
    v321 = 1;
    goto LABEL_977;
  }

  if (v246 >= 0x1999999999999999 && (v246 != 0x1999999999999999 || v234 > 0x9999999999999999))
  {
    v445 = v246 == 0x8000000000000000;
    if (!v234)
    {
      v445 = 0;
    }

    if (v246 > 0x8000000000000000 || v445)
    {
      v485 = (v246 & 0x7FFFFFFFFFFFFFFFLL) == 0x1999999999999999;
      if (v234 <= 0x9999999999999999)
      {
        v485 = 0;
      }

      v321 = 1;
      if ((v246 & 0x7FFFFFFFFFFFFFFFLL) > 0x1999999999999999 || v485)
      {
        v113 = 0;
        v115 = 0;
        v116 = 0;
        v114 = 1;
      }

      else if (v117)
      {
        if (v116)
        {
          v116 = 0;
          v113 = 1;
        }

        else
        {
          v116 = 0;
          if (v115)
          {
            v114 = 1;
          }

          v115 = 0;
        }
      }

      else
      {
        v321 = 0;
      }

      goto LABEL_977;
    }

LABEL_606:
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v113 = 1;
    goto LABEL_607;
  }

  if (v114)
  {
    goto LABEL_606;
  }

  if (v113)
  {
    v113 = 0;
    v115 = 0;
    v116 = 0;
    v164 = result-- == 0;
    v247 = v164;
    v221 -= v247;
    v114 = 1;
LABEL_607:
    v321 = 1;
  }

  else
  {
    v483 = result - 1;
    if ((result & 1) == 0)
    {
      v483 = v235 + *(&v246 + 1);
    }

    v113 = 0;
    v114 = v115;
    v484 = !v115 && (result & 1) != 0;
    v116 = !v115 && (result & 1) == 0;
    if (!v115)
    {
      result = v483;
    }

    v321 = 1;
    v115 = v484;
  }

LABEL_977:
  v223 = (v541 - 33);
  v117 = v321;
LABEL_978:
  v375 = v24 + (v223 << 49);
  if (v375 == 0x6000000000000000)
  {
    if ((v543 & 0xFFFFFFFB) == 0)
    {
      goto LABEL_981;
    }

    v375 = 0x6000000000000000;
    goto LABEL_984;
  }

  v169 = v27;
LABEL_983:
  v27 = v169;
  if (!v222)
  {
    goto LABEL_1021;
  }

LABEL_984:
  if (v27)
  {
    if (v222 != 1 || !v114)
    {
      v533 = v222 == 1;
      goto LABEL_991;
    }

    goto LABEL_997;
  }

  if (v222 == 2 && v114)
  {
    goto LABEL_997;
  }

  v533 = v222 == 2;
LABEL_991:
  v534 = v533 || v222 == 4;
  if (v534 && v115)
  {
LABEL_997:
    v535 = result + 1;
    if (result == -1)
    {
      ++v221;
    }

    if (result == 0x378D8E63FFFFFFFFLL && v221 == 0x1ED09BEAD87C0)
    {
      v375 += 0x2000000000000;
      goto LABEL_1012;
    }

LABEL_1010:
    v542 = v535;
  }

  else if ((v113 || v116) && ((v222 & 0xFFFFFFFE) == 2 && v27 || (v222 & 0xFFFFFFFD) == 1 && !v27))
  {
    v535 = result - 1;
    if ((__PAIR128__(v221, result) - 1) >> 64 != 0x314DC6448D93 || result != 0x38C15B0A00000000)
    {
      goto LABEL_1010;
    }

    v375 -= 0x2000000000000;
    v542 = 0x378D8E63FFFFFFFFLL;
  }

  else
  {
    v542 = result;
  }

LABEL_1012:
  if (v375 == 0x6000000000000000)
  {
    if (v27)
    {
      v536 = 1;
    }

    else
    {
      v536 = 2;
    }

    if (v536 == v222)
    {
      result = 0;
    }

    else
    {
      result = 0x378D8E63FFFFFFFFLL;
    }

    *a6 |= 0x28u;
  }

  else
  {
    result = v542;
  }

LABEL_1021:
  if (v117)
  {
    v532 = *a6 | 0x20;
LABEL_1023:
    *a6 = v532;
  }

  return result;
}

unint64_t __bid128_sub(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int *a6)
{
  v6 = a4 | 0x8000000000000000;
  if (a4 < 0)
  {
    v6 = a4 & 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((~a4 & 0x7C00000000000000) != 0)
  {
    a4 = v6;
  }

  return __bid128_add(a1, a2, a3, a4, a5, a6);
}

unint64_t __bid128_asin(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1;
  if ((~a2 & 0x7C00000000000000) != 0)
  {
    v13 = 0uLL;
    v12[0] = 0;
    v12[1] = 0;
    v15[0] = __bid128_to_binary128(a1, a2, a3, my_fpsf);
    v15[1] = v6;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __dpml_bid_unpack_x_or_y__(v15, 0, &v18, &qword_1C1F5E6D0, v12, v17);
    if (bid_f128_cmp(v12, &c_1em40_1201, 1u))
    {
      return bid128_ext_fma(v17, &v18, v14, &v16, v4, a2, 1uLL, 0x2FF0000000000000, v4, a2, a3, my_fpsf);
    }

    if (bid_f128_cmp(v12, &c_7_10ths_1202, 3u))
    {
      __dpml_bid_ux_asin_acos__(v15, 0xF04E00uLL, &__dpml_bid_inv_trig_x_table, &v13, v17);
    }

    else
    {
      if (bid_f128_cmp(v12, &c_one_1203, 4u))
      {
        v4 = 0;
        my_fpsf[0] |= 1u;
        return v4;
      }

      v9 = bid128_ext_fma(v17, &v18, v14, &v16, v4, a2, v4, a2, 1uLL, 0xB040000000000000, a3, my_fpsf);
      v14[0] = __bid128_to_binary128(v9, v10, a3, my_fpsf);
      v14[1] = v11;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      __dpml_bid_unpack_x_or_y__(v14, 0, &v18, &__dpml_bid_bid_x_table, &v13, v17);
      bid_f128_sqrt(&v13, &v13);
      __dpml_bid_ux_asin_acos__(&v13, 0x1A30038uLL, &qword_1C1F5F410, &v13, v17);
      if (bid_f128_cmp(v15, &c_zero_1204, 1u))
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        __dpml_bid_unpack_x_or_y__(&v13, 0, &v18, &__dpml_bid_bid_x_table, &v13, v17);
      }
    }

    return __binary128_to_bid128(v13.n128_u64[0], v13.n128_u64[1], a3, my_fpsf);
  }

  else
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      return 0;
    }
  }

  return v4;
}

unint64_t __bid128_asinh(unint64_t result, unint64_t a2, int a3)
{
  v3 = result;
  if (((a2 >> 61) & 3) == 3)
  {
    if ((a2 & 0x7800000000000000) == 0x7800000000000000)
    {
      if ((a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && result >= 0x38C15B0A00000000)
      {
        v3 = 0;
      }

      if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93)
      {
        v3 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        result = 0;
      }

      else
      {
        result = v3;
      }

      if ((a2 & 0x7C00000000000000) != 0x7C00000000000000)
      {
        return 0;
      }

LABEL_27:
      if ((~a2 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      return result;
    }

    result = 0;
LABEL_26:
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return result;
    }

    goto LABEL_27;
  }

  v7 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (a2 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && result >= 0x378D8E6400000000)
  {
    result = 0;
    v7 = 0;
  }

  if (!(v7 | result))
  {
    goto LABEL_26;
  }

  v8 = (a2 >> 49) & 0x3FFF;
  v14 = 0uLL;
  v12 = 0uLL;
  v11 = 0uLL;
  if (v8 < 0x1843)
  {
    v13.n128_u64[0] = __bid128_to_binary128(v3, a2, a3, my_fpsf);
    v13.n128_u64[1] = v10;
    bid_f128_asinh(&v14, &v13);
    return __binary128_to_bid128(v14.n128_u64[0], v14.n128_u64[1], a3, my_fpsf);
  }

  else
  {
    v13.n128_u64[0] = __bid128_to_binary128(result, v7 | 0x3040000000000000, a3, my_fpsf);
    v13.n128_u64[1] = v9;
    bid_f128_add(&v13, &v13, &v13);
    bid_f128_itof(&v12, v8 - 6176);
    bid_f128_mul(&v14, &v12, &c_log10_1207);
    bid_f128_log(&v11, &v13);
    bid_f128_add(&v14, &v14, &v11);
    return __binary128_to_bid128(v14.n128_u64[0], v14.n128_u64[1], a3, my_fpsf);
  }
}

unint64_t __bid128_atan(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1;
  v24[3] = *MEMORY[0x1E69E9840];
  if ((~a2 & 0x7C00000000000000) != 0)
  {
    v16 = 0uLL;
    v15[0] = 0;
    v15[1] = 0;
    v17[0] = __bid128_to_binary128(a1, a2, a3, my_fpsf);
    v17[1] = v6;
    memset(v22, 0, 24);
    __dpml_bid_unpack_x_or_y__(v17, 0, v22, &qword_1C1F5E6D0, v15, v23);
    if (bid_f128_cmp(v15, &c_1em40_1210, 1u))
    {
      if (__bid128_isZero(v4, a2))
      {
        v7 = __bid128_mul(v4, a2, 1uLL, 0x3040000000000000, a3, my_fpsf);
      }

      else
      {
        v7 = bid128_ext_fma(v23, v22, v18, &v20, v4, a2, 1uLL, 0xAFF0000000000000, v4, a2, a3, my_fpsf);
      }
    }

    else
    {
      memset(v19, 0, sizeof(v19));
      if ((__dpml_bid_unpack_x_or_y__(v17, 0, v19, qword_1C1F5F450, &v16, v18) & 0x8000000000000000) == 0)
      {
        v21 = 0;
        v20 = 0uLL;
        v8 = v19[0];
        LODWORD(v19[0]) = 0;
        if (SHIDWORD(v19[0]) <= 1)
        {
          if ((v19[0] & 0x8000000000000000) != 0)
          {
            v11 = 0;
            v12 = 0;
            v10 = 0;
            v9 = v19;
          }

          else
          {
            v11 = v23;
            __dpml_bid_addsub__(v19, dword_1C1F5F5B8, 0xEuLL, v23);
            v9 = v24;
            __dpml_bid_ffs_and_shift__(v24, 0);
            v10 = 0;
            v12 = 4;
          }
        }

        else
        {
          v9 = 0;
          v10 = 0x80000000;
          v11 = v19;
          v12 = 8;
        }

        __dpml_bid_divide__(v9, v11, 2, &v20);
        if (DWORD1(v20) - (v20 >= 0) >= 0)
        {
          v12 -= 4;
          v10 ^= 0x80000000;
          v21 = 0xAAAAAAAAAAAAAAAALL;
          v20 = xmmword_1C1F5F5E8;
        }

        __dpml_bid_evaluate_rational__(&v20, &unk_1C1F5F600, 11, 0x400000000000046uLL, v22);
        LODWORD(v22[0]) ^= v10;
        if (v12)
        {
          __dpml_bid_ffs_and_shift__(v22, 0);
          __dpml_bid_addsub__(&__dpml_bid_inv_trig_x_table + ((0x34E3180u >> v12) & 0x78) + 320, v22, 8uLL, v22);
        }

        LODWORD(v22[0]) = v8;
        __dpml_bid_pack__(v22, &v16, 0, 0);
      }

      v7 = __binary128_to_bid128(v16.n128_u64[0], v16.n128_u64[1], a3, my_fpsf);
    }

    v4 = v7;
  }

  else
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      v4 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

unint64_t __bid128_atanh(unint64_t a1, unint64_t a2, int a3)
{
  v4 = a1;
  if (((a2 >> 61) & 3) != 3)
  {
    v10 = a2 & 0x1FFFFFFFFFFFFLL;
    if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
    {
      goto LABEL_24;
    }

    if ((a2 & 0x1FFFFFFFFFFFFLL) != 0x1ED09BEAD87C0)
    {
      v21 = a1;
      goto LABEL_25;
    }

    v21 = a1;
    if (a1 >= 0x378D8E6400000000)
    {
LABEL_24:
      v21 = 0;
      v10 = 0;
    }

LABEL_25:
    if (!(v10 | v21))
    {
LABEL_44:
      if ((~a2 & 0x7C00000000000000) != 0)
      {
        return v21;
      }

      v4 = v21;
      goto LABEL_46;
    }

    if (((a2 >> 50) & 0x1FFF) < 0xBF7)
    {
      return v4;
    }

    v11 = __bid128_sub(1uLL, 0x3040000000000000, a1, a2 & 0x7FFFFFFFFFFFFFFFLL, a3, my_fpsf);
    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_50:
      v4 = 0;
      my_fpsf[0] |= 1u;
      return v4;
    }

    if (!(v11 | v12 & 0x1FFFFFFFFFFFFLL))
    {
      v4 = 0;
      my_fpsf[0] |= 4u;
      return v4;
    }

    v25 = 0uLL;
    v13 = __bid128_div(v4, a2 & 0x7FFFFFFFFFFFFFFFLL, v11, v12, a3, my_fpsf);
    v15 = __bid128_add(v13, v14, v13, v14, a3, my_fpsf);
    v24[0] = __bid128_to_binary128(v15, v16, a3, my_fpsf);
    v24[1] = v17;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    memset(v27, 0, sizeof(v27));
    if ((__dpml_bid_unpack_x_or_y__(v24, 0, &v31, qword_1C1F5FD38, &v25, v26) & 0x8000000000000000) != 0)
    {
LABEL_59:
      bid_f128_mul(&v25, &v25, &c_half);
      return __binary128_to_bid128(v25.n128_u64[0], v25.n128_u64[1], a3, my_fpsf);
    }

    if (v31 < 0)
    {
      if (HIDWORD(v31) != -1)
      {
        goto LABEL_57;
      }

      v22 = v32 >> 2;
      if (v31)
      {
        v22 = -v22;
      }

      if (v22 - 0x3504F333F9DE6484 >= 0xA57D86660310CDBELL)
      {
LABEL_57:
        __dpml_bid_addsub__(&dword_1C1F5FE80[6], &v31, 0, v27);
        __dpml_bid_divide__(&v31, v27, 2, v27);
        __dpml_bid_evaluate_rational__(v27, &unk_1C1F5FD58, 17, 6uLL, &v28);
        __dpml_bid_multiply__(&v28, qword_1C1F5FEB0, &v28);
        goto LABEL_58;
      }
    }

    else if (HIDWORD(v31) && v31)
    {
      v29 = 0x8000000000000000;
      if (v33)
      {
        v18 = 0;
      }

      else
      {
        v18 = v32 == 0x8000000000000000;
      }

      if (v18 && HIDWORD(v31) == 1)
      {
        v20 = -32768;
      }

      else
      {
        v20 = 0x8000;
      }

      v28.i32[1] = v20;
      goto LABEL_58;
    }

    __dpml_bid_addsub__(dword_1C1F5FE80, &v31, 0, &v28);
    __dpml_bid_ux_log__(&v28, qword_1C1F5FEB0, &v28);
LABEL_58:
    __dpml_bid_pack__(&v28, &v25, 53, 52);
    goto LABEL_59;
  }

  if ((a2 & 0x7800000000000000) != 0x7800000000000000)
  {
    v21 = 0;
    goto LABEL_44;
  }

  if ((a2 & 0x3FFFFFFFFFFFLL) != 0x314DC6448D93 || a1 < 0x38C15B0A00000000)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if ((a2 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
  {
    v4 = 0;
  }

  else
  {
    v4 = v8;
  }

  if ((a2 & 0x7C00000000000000) != 0x7C00000000000000)
  {
    goto LABEL_50;
  }

LABEL_46:
  if ((~a2 & 0x7E00000000000000) == 0)
  {
    my_fpsf[0] |= 1u;
  }

  return v4;
}

unint64_t __bid128_quiet_greater(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      result = 0;
      *a5 |= 1u;
      return result;
    }

    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if ((~a2 & 0x7800000000000000) == 0)
  {
    v6 = (~a4 & 0x7800000000000000) != 0 || a4 < 0;
    return a2 >= 0 && v6;
  }

  if ((~a4 & 0x7800000000000000) == 0)
  {
    return a4 >> 63;
  }

  v8 = a2 & 0x1FFFFFFFFFFFFLL;
  v9 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v8 == 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  if (v8 > 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  v11 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
    if (v8 | a1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      return a2 >= 0;
    }

    return 0;
  }

  if (v8 | a1)
  {
    v13 = v9;
  }

  else
  {
    v13 = 1;
  }

  v14 = a3 >= 0x378D8E6400000000 && v11 == 0x1ED09BEAD87C0;
  if (v14 || (a4 & 0x6000000000000000) == 0x6000000000000000 || !(v11 | a3))
  {
    if (v13)
    {
      return 0;
    }

    return a2 >= 0;
  }

  if ((v13 & 1) != 0 || (a4 ^ a2) < 0)
  {
    return a4 >> 63;
  }

  v15 = (a2 >> 49) & 0x3FFF;
  v16 = (a4 >> 49) & 0x3FFF;
  v17 = v16 - v15;
  if (v16 == v15)
  {
    v18 = v8 == v11;
    if (a1 < a3)
    {
      v18 = 0;
    }

    v19 = v8 > v11 || v18;
    v20 = a2 >> 63;
    return v19 ^ v20;
  }

  if ((v8 > v11 || v8 == v11 && a1 > a3) && v15 >= v16)
  {
    return a2 >= 0;
  }

  if ((v8 < v11 || v8 == v11 && a1 < a3) && v15 <= v16)
  {
    return a2 >> 63;
  }

  v21 = v15 - v16;
  if (v21 >= 1)
  {
    if (v21 >= 0x22)
    {
      return a2 >= 0;
    }

    if (v21 < 0x14)
    {
      v97 = __bid_ten2k64[v21];
      v98 = HIDWORD(v97);
      v99 = HIDWORD(v8);
      v100 = HIDWORD(v97) * a2;
      v101 = v97 * v99;
      v102 = HIDWORD(v100) + HIDWORD(v97) * v99;
      v103 = v101 + v100 + ((v97 * a2) >> 32);
      v104 = v102 + HIDWORD(v103);
      v105 = (v97 * a2) | (v103 << 32);
      v106 = HIDWORD(v97) * a1;
      v107 = v97 * a1;
      v108 = v97 * HIDWORD(a1) + v106 + HIDWORD(v107);
      v109 = HIDWORD(v106) + v98 * HIDWORD(a1) + HIDWORD(v108);
      v110 = v107 | (v108 << 32);
      v53 = __CFADD__(v105, v109);
      v111 = v105 + v109;
      if (v53)
      {
        v112 = 1;
      }

      else
      {
        v112 = v104;
      }

      if (v111 == v11 && !v112 && v110 == a3)
      {
        return 0;
      }

      v57 = v111 > v11;
      v113 = v111 == v11;
      v114 = v57;
      if (v112)
      {
        v115 = 1;
      }

      else
      {
        v115 = v114;
      }

      v116 = v110 > a3 && v113;
      v19 = v115 | v116;
    }

    else
    {
      v22 = &__bid_ten2k128[2 * (v21 - 20)];
      v24 = *v22;
      v23 = v22[1];
      v25 = HIDWORD(v23);
      v26 = v23 * HIDWORD(a1);
      v27 = HIDWORD(v26) + HIDWORD(v23) * HIDWORD(a1);
      v28 = HIDWORD(v23) * a1 + v26 + ((v23 * a1) >> 32);
      v29 = HIDWORD(v28);
      v30 = (v23 * a1) | (v28 << 32);
      v31 = HIDWORD(v24);
      v32 = v24 * HIDWORD(a1);
      v33 = HIDWORD(v24) * a1 + v32 + ((v24 * a1) >> 32);
      v34 = (v24 * a1) | (v33 << 32);
      v35 = __PAIR128__(v27, v30) + __PAIR128__(v29, HIDWORD(v32) + HIDWORD(v24) * HIDWORD(a1) + HIDWORD(v33));
      v36 = HIDWORD(v8);
      v37 = v23 * v36;
      v38 = v23 * a2;
      v39 = v25 * a2;
      v40 = HIDWORD(v37) + v25 * v36;
      v41 = v39 + v37 + HIDWORD(v38);
      v42 = HIDWORD(v41);
      v43 = v38 | (v41 << 32);
      v44 = v24 * v36;
      v45 = v24 * a2;
      v46 = HIDWORD(v44) + v31 * v36;
      v47 = v31 * a2 + v44 + HIDWORD(v45);
      v48 = v45 | (v47 << 32);
      v49 = __PAIR128__(v40, v43) + __PAIR128__(v42, v46 + HIDWORD(v47));
      v50 = v35 + v48;
      v51 = __CFADD__(v35, v48) + v49;
      v52 = __CFADD__(__CFADD__(v35, v48), v49);
      v53 = __CFADD__(*(&v35 + 1), v51);
      v54 = *(&v35 + 1) + v51;
      v55 = v53 || v52;
      v56 = (*(&v49 + 1) + v55) | v54;
      if (v50 == v11 && !v56 && v34 == a3)
      {
        return 0;
      }

      v57 = v50 > v11;
      v58 = v50 == v11;
      v59 = v57;
      if (v56)
      {
        v59 = 1;
      }

      if (v34 <= a3)
      {
        v58 = 0;
      }

      v19 = v59 | v58;
    }

    v20 = a4 >> 63;
    return v19 ^ v20;
  }

  if (v17 >= 34)
  {
    return a2 >> 63;
  }

  if (v17 < 20)
  {
    v117 = __bid_ten2k64[v17];
    v118 = HIDWORD(v117);
    v119 = HIDWORD(v11);
    v120 = HIDWORD(v117) * a4;
    v121 = v117 * v119;
    v122 = HIDWORD(v120) + HIDWORD(v117) * v119;
    v123 = v121 + v120 + ((v117 * a4) >> 32);
    v124 = v122 + HIDWORD(v123);
    v125 = (v117 * a4) | (v123 << 32);
    v126 = HIDWORD(v117) * a3;
    v127 = v117 * a3;
    v128 = v117 * HIDWORD(a3) + v126 + HIDWORD(v127);
    v129 = HIDWORD(v126) + v118 * HIDWORD(a3) + HIDWORD(v128);
    v130 = v127 | (v128 << 32);
    v53 = __CFADD__(v125, v129);
    v131 = v125 + v129;
    if (v53)
    {
      v132 = 1;
    }

    else
    {
      v132 = v124;
    }

    if (v131 == v8 && !v132 && v130 == a1)
    {
      return 0;
    }

    v57 = v131 > v8;
    v133 = v131 == v8;
    v134 = v57;
    if (v132)
    {
      v135 = 1;
    }

    else
    {
      v135 = v134;
    }

    if (v130 <= a1)
    {
      v133 = 0;
    }

    v95 = v135 | v133;
    v96 = a4 < 0;
  }

  else
  {
    v60 = &__bid_ten2k128[2 * (v17 - 20)];
    v62 = *v60;
    v61 = v60[1];
    v63 = HIDWORD(v61);
    v64 = v61 * HIDWORD(a3);
    v65 = HIDWORD(v64) + HIDWORD(v61) * HIDWORD(a3);
    v66 = HIDWORD(v61) * a3 + v64 + ((v61 * a3) >> 32);
    v67 = HIDWORD(v66);
    v68 = (v61 * a3) | (v66 << 32);
    v69 = HIDWORD(v62);
    v70 = v62 * HIDWORD(a3);
    v71 = HIDWORD(v62) * a3 + v70 + ((v62 * a3) >> 32);
    v72 = (v62 * a3) | (v71 << 32);
    v73 = __PAIR128__(v65, v68) + __PAIR128__(v67, HIDWORD(v70) + HIDWORD(v62) * HIDWORD(a3) + HIDWORD(v71));
    v74 = HIDWORD(v11);
    v75 = v61 * v74;
    v76 = v61 * a4;
    v77 = v63 * a4;
    v78 = HIDWORD(v75) + v63 * v74;
    v79 = v77 + v75 + HIDWORD(v76);
    v80 = HIDWORD(v79);
    v81 = v76 | (v79 << 32);
    v82 = v62 * v74;
    v83 = v62 * a4;
    v84 = HIDWORD(v82) + v69 * v74;
    v85 = v69 * a4 + v82 + HIDWORD(v83);
    v86 = v83 | (v85 << 32);
    v87 = __PAIR128__(v78, v81) + __PAIR128__(v80, v84 + HIDWORD(v85));
    v88 = v73 + v86;
    v89 = __CFADD__(v73, v86) + v87;
    LODWORD(v90) = __CFADD__(__CFADD__(v73, v86), v87);
    v53 = __CFADD__(*(&v73 + 1), v89);
    v91 = *(&v73 + 1) + v89;
    if (v53)
    {
      v90 = 1;
    }

    else
    {
      v90 = v90;
    }

    v92 = (*(&v87 + 1) + v90) | v91;
    if (v88 == v8 && !v92 && v72 == a1)
    {
      return 0;
    }

    v57 = v88 > v8;
    v93 = v88 == v8;
    v94 = v57;
    if (v92)
    {
      v94 = 1;
    }

    if (v72 <= a1)
    {
      v93 = 0;
    }

    v95 = v94 | v93;
    v96 = a2 < 0;
  }

  v136 = !v96;
  return v136 ^ v95;
}

uint64_t __bid128_quiet_greater_equal(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) != 0 && (a4 & 0x7C00000000000000) != 0x7C00000000000000)
  {
    if (a1 == a3 && a2 == a4)
    {
      return 1;
    }

    if ((~a2 & 0x7800000000000000) == 0)
    {
      v7 = (~a4 & 0x7800000000000000) == 0 && (a4 & 0x8000000000000000) != 0;
      return a2 >= 0 || v7;
    }

    if ((~a4 & 0x7800000000000000) == 0)
    {
      return a4 >> 63;
    }

    v8 = a2 & 0x1FFFFFFFFFFFFLL;
    v9 = (~a2 & 0x6000000000000000) == 0;
    if (a1 > 0x378D8E63FFFFFFFFLL && v8 == 0x1ED09BEAD87C0)
    {
      v9 = 1;
    }

    if (v8 > 0x1ED09BEAD87C0)
    {
      v9 = 1;
    }

    v11 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
    {
      if (v8 | a1)
      {
        v12 = v9;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 1;
      }

      return a2 >= 0;
    }

    if (v8 | a1)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    v14 = a3 >= 0x378D8E6400000000 && v11 == 0x1ED09BEAD87C0;
    if (v14 || (a4 & 0x6000000000000000) == 0x6000000000000000 || !(v11 | a3))
    {
      if (v13)
      {
        return 1;
      }

      return a2 >= 0;
    }

    if ((v13 & 1) != 0 || ((a4 ^ a2) & 0x8000000000000000) != 0)
    {
      return a4 >> 63;
    }

    v15 = (a2 >> 49) & 0x3FFF;
    v16 = (a4 >> 49) & 0x3FFF;
    v17 = v16 - v15;
    if (v16 == v15)
    {
      v18 = v8 == v11;
      if (a1 < a3)
      {
        v18 = 0;
      }

      v19 = v8 > v11 || v18;
LABEL_55:
      v20 = a2 >> 63;
      return v19 ^ v20;
    }

    if (v8 < v11 || a1 < a3 || v15 <= v16)
    {
      if (v8 <= v11 && a1 <= a3 && v15 < v16)
      {
        return a2 >> 63;
      }

      v21 = v15 - v16;
      if (v21 < 1)
      {
        if (v17 >= 34)
        {
          return a2 >> 63;
        }

        if (v17 >= 20)
        {
          v59 = &__bid_ten2k128[2 * (v17 - 20)];
          v61 = *v59;
          v60 = v59[1];
          v62 = HIDWORD(v60);
          v63 = v60 * HIDWORD(a3);
          v64 = HIDWORD(v63) + HIDWORD(v60) * HIDWORD(a3);
          v65 = HIDWORD(v60) * a3 + v63 + ((v60 * a3) >> 32);
          v66 = HIDWORD(v65);
          v67 = (v60 * a3) | (v65 << 32);
          v68 = HIDWORD(v61);
          v69 = v61 * HIDWORD(a3);
          v70 = HIDWORD(v61) * a3 + v69 + ((v61 * a3) >> 32);
          v71 = (v61 * a3) | (v70 << 32);
          v72 = __PAIR128__(v64, v67) + __PAIR128__(v66, HIDWORD(v69) + HIDWORD(v61) * HIDWORD(a3) + HIDWORD(v70));
          v73 = HIDWORD(v11);
          v74 = v60 * v73;
          v75 = v60 * a4;
          v76 = v62 * a4;
          v77 = HIDWORD(v74) + v62 * v73;
          v78 = v76 + v74 + HIDWORD(v75);
          v79 = HIDWORD(v78);
          v80 = v75 | (v78 << 32);
          v81 = v61 * v73;
          v82 = v61 * a4;
          v83 = HIDWORD(v81) + v68 * v73;
          v84 = v68 * a4 + v81 + HIDWORD(v82);
          v85 = v82 | (v84 << 32);
          v86 = __PAIR128__(v77, v80) + __PAIR128__(v79, v83 + HIDWORD(v84));
          v87 = v72 + v85;
          v88 = __CFADD__(v72, v85) + v86;
          LODWORD(v89) = __CFADD__(__CFADD__(v72, v85), v86);
          v129 = __CFADD__(*(&v72 + 1), v88);
          v90 = *(&v72 + 1) + v88;
          if (v129)
          {
            v89 = 1;
          }

          else
          {
            v89 = v89;
          }

          v91 = v89 << 63 >> 63;
          if (v90)
          {
            v92 = 0;
          }

          else
          {
            v92 = *(&v86 + 1) == v91;
          }

          v93 = v92;
          if (v87 == v8 && v93 && v71 == a1)
          {
            return 1;
          }

          if (v93)
          {
            if (v87 >= v8)
            {
              v129 = v87 != v8 || v71 >= a1;
              v19 = !v129;
            }

            else
            {
              v19 = 1;
            }
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_55;
        }

        v114 = __bid_ten2k64[v17];
        v115 = HIDWORD(v114);
        v116 = HIDWORD(v11);
        v117 = HIDWORD(v114) * a4;
        v118 = HIDWORD(v117) + HIDWORD(v114) * v116;
        v119 = v114 * v116 + v117 + ((v114 * a4) >> 32);
        v120 = (v114 * a4) | (v119 << 32);
        v121 = HIDWORD(v114) * a3;
        v122 = v114 * a3;
        v123 = v114 * HIDWORD(a3) + v121 + HIDWORD(v122);
        v124 = HIDWORD(v121) + v115 * HIDWORD(a3) + HIDWORD(v123);
        v125 = v122 | (v123 << 32);
        v126 = v120 + v124;
        v128 = v120 + v124 >= v124 && (v118 | HIDWORD(v119)) == 0;
        if (v126 == v8 && v128 && v125 == a1)
        {
          return 1;
        }

        if (v128)
        {
          v19 = v126 < v8 || v126 == v8 && v125 < a1;
        }

        else
        {
          v19 = 0;
        }

LABEL_147:
        v20 = a4 >> 63;
        return v19 ^ v20;
      }

      if (v21 < 0x22)
      {
        if (v21 < 0x14)
        {
          v94 = __bid_ten2k64[v21];
          v95 = HIDWORD(v94);
          v96 = HIDWORD(v8);
          v97 = HIDWORD(v94) * a2;
          v98 = v94 * v96;
          v99 = HIDWORD(v97) + HIDWORD(v94) * v96;
          v100 = v98 + v97 + ((v94 * a2) >> 32);
          v101 = v99 + HIDWORD(v100);
          v102 = (v94 * a2) | (v100 << 32);
          v103 = HIDWORD(v94) * a1;
          v104 = v94 * a1;
          v105 = v94 * HIDWORD(a1) + v103 + HIDWORD(v104);
          v106 = HIDWORD(v103) + v95 * HIDWORD(a1) + HIDWORD(v105);
          v107 = v104 | (v105 << 32);
          v129 = __CFADD__(v102, v106);
          v108 = v102 + v106;
          if (v129)
          {
            v109 = 1;
          }

          else
          {
            v109 = v101;
          }

          if (v108 == v11 && !v109 && v107 == a3)
          {
            return 1;
          }

          v56 = v108 > v11;
          v110 = v108 == v11;
          v111 = v56;
          if (v109)
          {
            v112 = 1;
          }

          else
          {
            v112 = v111;
          }

          v113 = v107 > a3 && v110;
          v19 = v112 | v113;
        }

        else
        {
          v22 = &__bid_ten2k128[2 * (v21 - 20)];
          v24 = *v22;
          v23 = v22[1];
          v25 = HIDWORD(v23);
          v26 = v23 * HIDWORD(a1);
          v27 = HIDWORD(v26) + HIDWORD(v23) * HIDWORD(a1);
          v28 = HIDWORD(v23) * a1 + v26 + ((v23 * a1) >> 32);
          v29 = HIDWORD(v28);
          v30 = (v23 * a1) | (v28 << 32);
          v31 = HIDWORD(v24);
          v32 = v24 * HIDWORD(a1);
          v33 = HIDWORD(v24) * a1 + v32 + ((v24 * a1) >> 32);
          v34 = (v24 * a1) | (v33 << 32);
          v35 = __PAIR128__(v27, v30) + __PAIR128__(v29, HIDWORD(v32) + HIDWORD(v24) * HIDWORD(a1) + HIDWORD(v33));
          v36 = HIDWORD(v8);
          v37 = v23 * v36;
          v38 = v23 * a2;
          v39 = v25 * a2;
          v40 = HIDWORD(v37) + v25 * v36;
          v41 = v39 + v37 + HIDWORD(v38);
          v42 = HIDWORD(v41);
          v43 = v38 | (v41 << 32);
          v44 = v24 * v36;
          v45 = v24 * a2;
          v46 = HIDWORD(v44) + v31 * v36;
          v47 = v31 * a2 + v44 + HIDWORD(v45);
          v48 = v45 | (v47 << 32);
          v49 = __PAIR128__(v40, v43) + __PAIR128__(v42, v46 + HIDWORD(v47));
          v50 = v35 + v48;
          v51 = __CFADD__(v35, v48) + v49;
          v52 = __CFADD__(__CFADD__(v35, v48), v49);
          v129 = __CFADD__(*(&v35 + 1), v51);
          v53 = *(&v35 + 1) + v51;
          v54 = v129 || v52;
          v55 = (*(&v49 + 1) + v54) | v53;
          if (v50 == v11 && !v55 && v34 == a3)
          {
            return 1;
          }

          v56 = v50 > v11;
          v57 = v50 == v11;
          v58 = v56;
          if (v55)
          {
            v58 = 1;
          }

          if (v34 <= a3)
          {
            v57 = 0;
          }

          v19 = v58 | v57;
        }

        goto LABEL_147;
      }
    }

    return a2 >= 0;
  }

  if ((~a2 & 0x7E00000000000000) != 0 && (a4 & 0x7E00000000000000) != 0x7E00000000000000)
  {
    return 0;
  }

  result = 0;
  *a5 |= 1u;
  return result;
}

unint64_t __bid128_quiet_less(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      result = 0;
      *a5 |= 1u;
      return result;
    }

    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if ((~a2 & 0x7800000000000000) == 0)
  {
    v6 = (~a4 & 0x7800000000000000) != 0 || a4 >= 0;
    return (a2 & 0x8000000000000000) != 0 && v6;
  }

  if ((~a4 & 0x7800000000000000) == 0)
  {
    goto LABEL_20;
  }

  v9 = a2 & 0x1FFFFFFFFFFFFLL;
  v10 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v9 == 0x1ED09BEAD87C0)
  {
    v10 = 1;
  }

  if (v9 > 0x1ED09BEAD87C0)
  {
    v10 = 1;
  }

  v12 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
    if (v9 | a1)
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      return a2 >> 63;
    }

    return 0;
  }

  if (v9 | a1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 1;
  }

  v15 = a3 >= 0x378D8E6400000000 && v12 == 0x1ED09BEAD87C0;
  if (v15 || (a4 & 0x6000000000000000) == 0x6000000000000000 || !(v12 | a3))
  {
    if ((v14 & 1) == 0)
    {
      return a2 >> 63;
    }

    return 0;
  }

  if ((v14 & 1) != 0 || ((a4 ^ a2) & 0x8000000000000000) != 0)
  {
LABEL_20:
    v8 = a4 >> 63;
    return v8 ^ 1;
  }

  v16 = (a2 >> 49) & 0x3FFF;
  v17 = (a4 >> 49) & 0x3FFF;
  v18 = v17 - v16;
  if (v17 == v16)
  {
    v19 = v9 == v12;
    if (a1 < a3)
    {
      v19 = 0;
    }

    v20 = v9 > v12 || v19;
    v21 = (a2 & 0x8000000000000000) != 0;
    goto LABEL_56;
  }

  if ((v9 > v12 || v9 == v12 && a1 > a3) && v16 >= v17)
  {
    return a2 >> 63;
  }

  if ((v9 < v12 || v9 == v12 && a1 < a3) && v16 <= v17)
  {
LABEL_69:
    v8 = a2 >> 63;
    return v8 ^ 1;
  }

  v23 = v16 - v17;
  if (v23 < 1)
  {
    if (v18 < 34)
    {
      if (v18 < 20)
      {
        v119 = __bid_ten2k64[v18];
        v120 = HIDWORD(v119);
        v121 = HIDWORD(v12);
        v122 = HIDWORD(v119) * a4;
        v123 = v119 * v121;
        v124 = HIDWORD(v122) + HIDWORD(v119) * v121;
        v125 = v123 + v122 + ((v119 * a4) >> 32);
        v126 = v124 + HIDWORD(v125);
        v127 = (v119 * a4) | (v125 << 32);
        v128 = HIDWORD(v119) * a3;
        v129 = v119 * a3;
        v130 = v119 * HIDWORD(a3) + v128 + HIDWORD(v129);
        v131 = HIDWORD(v128) + v120 * HIDWORD(a3) + HIDWORD(v130);
        v132 = v129 | (v130 << 32);
        v55 = __CFADD__(v127, v131);
        v133 = v127 + v131;
        if (v55)
        {
          v134 = 1;
        }

        else
        {
          v134 = v126;
        }

        if (v133 == v9 && !v134 && v132 == a1)
        {
          return 0;
        }

        v59 = v133 > v9;
        v135 = v133 == v9;
        v136 = v59;
        if (v134)
        {
          v137 = 1;
        }

        else
        {
          v137 = v136;
        }

        if (v132 <= a1)
        {
          v135 = 0;
        }

        v97 = v137 | v135;
        v98 = a4 >> 63;
      }

      else
      {
        v62 = &__bid_ten2k128[2 * (v18 - 20)];
        v64 = *v62;
        v63 = v62[1];
        v65 = HIDWORD(v63);
        v66 = v63 * HIDWORD(a3);
        v67 = HIDWORD(v66) + HIDWORD(v63) * HIDWORD(a3);
        v68 = HIDWORD(v63) * a3 + v66 + ((v63 * a3) >> 32);
        v69 = HIDWORD(v68);
        v70 = (v63 * a3) | (v68 << 32);
        v71 = HIDWORD(v64);
        v72 = v64 * HIDWORD(a3);
        v73 = HIDWORD(v64) * a3 + v72 + ((v64 * a3) >> 32);
        v74 = (v64 * a3) | (v73 << 32);
        v75 = __PAIR128__(v67, v70) + __PAIR128__(v69, HIDWORD(v72) + HIDWORD(v64) * HIDWORD(a3) + HIDWORD(v73));
        v76 = HIDWORD(v12);
        v77 = v63 * v76;
        v78 = v63 * a4;
        v79 = v65 * a4;
        v80 = HIDWORD(v77) + v65 * v76;
        v81 = v79 + v77 + HIDWORD(v78);
        v82 = HIDWORD(v81);
        v83 = v78 | (v81 << 32);
        v84 = v64 * v76;
        v85 = v64 * a4;
        v86 = HIDWORD(v84) + v71 * v76;
        v87 = v71 * a4 + v84 + HIDWORD(v85);
        v88 = v85 | (v87 << 32);
        v89 = __PAIR128__(v80, v83) + __PAIR128__(v82, v86 + HIDWORD(v87));
        v90 = v75 + v88;
        v91 = __CFADD__(v75, v88) + v89;
        LODWORD(v92) = __CFADD__(__CFADD__(v75, v88), v89);
        v55 = __CFADD__(*(&v75 + 1), v91);
        v93 = *(&v75 + 1) + v91;
        if (v55)
        {
          v92 = 1;
        }

        else
        {
          v92 = v92;
        }

        v94 = (*(&v89 + 1) + v92) | v93;
        if (v90 == v9 && !v94 && v74 == a1)
        {
          return 0;
        }

        v59 = v90 > v9;
        v95 = v90 == v9;
        v96 = v59;
        if (v94)
        {
          v96 = 1;
        }

        if (v74 <= a1)
        {
          v95 = 0;
        }

        v97 = v96 | v95;
        v98 = a2 >> 63;
      }

      return v97 ^ v98;
    }

    goto LABEL_69;
  }

  if (v23 >= 0x22)
  {
    return a2 >> 63;
  }

  if (v23 < 0x14)
  {
    v99 = __bid_ten2k64[v23];
    v100 = HIDWORD(v99);
    v101 = HIDWORD(v9);
    v102 = HIDWORD(v99) * a2;
    v103 = v99 * v101;
    v104 = HIDWORD(v102) + HIDWORD(v99) * v101;
    v105 = v103 + v102 + ((v99 * a2) >> 32);
    v106 = v104 + HIDWORD(v105);
    v107 = (v99 * a2) | (v105 << 32);
    v108 = HIDWORD(v99) * a1;
    v109 = v99 * a1;
    v110 = v99 * HIDWORD(a1) + v108 + HIDWORD(v109);
    v111 = HIDWORD(v108) + v100 * HIDWORD(a1) + HIDWORD(v110);
    v112 = v109 | (v110 << 32);
    v55 = __CFADD__(v107, v111);
    v113 = v107 + v111;
    if (v55)
    {
      v114 = 1;
    }

    else
    {
      v114 = v106;
    }

    if (v113 == v12 && !v114 && v112 == a3)
    {
      return 0;
    }

    v59 = v113 > v12;
    v115 = v113 == v12;
    v116 = v59;
    if (v114)
    {
      v117 = 1;
    }

    else
    {
      v117 = v116;
    }

    v118 = v112 > a3 && v115;
    v20 = v117 | v118;
  }

  else
  {
    v24 = &__bid_ten2k128[2 * (v23 - 20)];
    v26 = *v24;
    v25 = v24[1];
    v27 = HIDWORD(v25);
    v28 = v25 * HIDWORD(a1);
    v29 = HIDWORD(v28) + HIDWORD(v25) * HIDWORD(a1);
    v30 = HIDWORD(v25) * a1 + v28 + ((v25 * a1) >> 32);
    v31 = HIDWORD(v30);
    v32 = (v25 * a1) | (v30 << 32);
    v33 = HIDWORD(v26);
    v34 = v26 * HIDWORD(a1);
    v35 = HIDWORD(v26) * a1 + v34 + ((v26 * a1) >> 32);
    v36 = (v26 * a1) | (v35 << 32);
    v37 = __PAIR128__(v29, v32) + __PAIR128__(v31, HIDWORD(v34) + HIDWORD(v26) * HIDWORD(a1) + HIDWORD(v35));
    v38 = HIDWORD(v9);
    v39 = v25 * v38;
    v40 = v25 * a2;
    v41 = v27 * a2;
    v42 = HIDWORD(v39) + v27 * v38;
    v43 = v41 + v39 + HIDWORD(v40);
    v44 = HIDWORD(v43);
    v45 = v40 | (v43 << 32);
    v46 = v26 * v38;
    v47 = v26 * a2;
    v48 = HIDWORD(v46) + v33 * v38;
    v49 = v33 * a2 + v46 + HIDWORD(v47);
    v50 = v47 | (v49 << 32);
    v51 = __PAIR128__(v42, v45) + __PAIR128__(v44, v48 + HIDWORD(v49));
    v52 = v37 + v50;
    v53 = __CFADD__(v37, v50) + v51;
    v54 = __CFADD__(__CFADD__(v37, v50), v51);
    v55 = __CFADD__(*(&v37 + 1), v53);
    v56 = *(&v37 + 1) + v53;
    v57 = v55 || v54;
    v58 = (*(&v51 + 1) + v57) | v56;
    if (v52 == v12 && !v58 && v36 == a3)
    {
      return 0;
    }

    v59 = v52 > v12;
    v60 = v52 == v12;
    v61 = v59;
    if (v58)
    {
      v61 = 1;
    }

    if (v36 <= a3)
    {
      v60 = 0;
    }

    v20 = v61 | v60;
  }

  v21 = a4 < 0;
LABEL_56:
  v22 = !v21;
  return v22 ^ v20;
}

uint64_t __bid128_quiet_less_equal(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      result = 0;
      *a5 |= 1u;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1 == a3 && a2 == a4)
    {
      return 1;
    }

    if ((~a2 & 0x7800000000000000) == 0)
    {
      v7 = (~a4 & 0x7800000000000000) == 0 && a4 >= 0;
      return (a2 & 0x8000000000000000) != 0 || v7;
    }

    if ((~a4 & 0x7800000000000000) == 0)
    {
      goto LABEL_21;
    }

    v9 = a2 & 0x1FFFFFFFFFFFFLL;
    v10 = (~a2 & 0x6000000000000000) == 0;
    if (a1 > 0x378D8E63FFFFFFFFLL && v9 == 0x1ED09BEAD87C0)
    {
      v10 = 1;
    }

    if (v9 > 0x1ED09BEAD87C0)
    {
      v10 = 1;
    }

    v12 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
    {
      if (v9 | a1)
      {
        v13 = v10;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 1;
      }

      return a2 >> 63;
    }

    if (v9 | a1)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    v15 = a3 >= 0x378D8E6400000000 && v12 == 0x1ED09BEAD87C0;
    if (v15 || (a4 & 0x6000000000000000) == 0x6000000000000000 || !(v12 | a3))
    {
      if (v14)
      {
        return 1;
      }

      return a2 >> 63;
    }

    if ((v14 & 1) != 0 || ((a4 ^ a2) & 0x8000000000000000) != 0)
    {
LABEL_21:
      v8 = a4 >> 63;
      return v8 ^ 1;
    }

    v16 = (a2 >> 49) & 0x3FFF;
    v17 = (a4 >> 49) & 0x3FFF;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      v19 = v9 == v12;
      if (a1 < a3)
      {
        v19 = 0;
      }

      v20 = v9 > v12 || v19;
      v21 = (a2 & 0x8000000000000000) != 0;
LABEL_57:
      v22 = !v21;
      return v22 ^ v20;
    }

    if ((v9 > v12 || v9 == v12 && a1 > a3) && v16 >= v17)
    {
      return a2 >> 63;
    }

    if ((v9 < v12 || v9 == v12 && a1 < a3) && v16 <= v17)
    {
      goto LABEL_70;
    }

    v23 = v16 - v17;
    if (v23 >= 1)
    {
      if (v23 < 0x22)
      {
        if (v23 < 0x14)
        {
          v99 = __bid_ten2k64[v23];
          v100 = HIDWORD(v99);
          v101 = HIDWORD(v9);
          v102 = HIDWORD(v99) * a2;
          v103 = v99 * v101;
          v104 = HIDWORD(v102) + HIDWORD(v99) * v101;
          v105 = v103 + v102 + ((v99 * a2) >> 32);
          v106 = v104 + HIDWORD(v105);
          v107 = (v99 * a2) | (v105 << 32);
          v108 = HIDWORD(v99) * a1;
          v109 = v99 * a1;
          v110 = v99 * HIDWORD(a1) + v108 + HIDWORD(v109);
          v111 = HIDWORD(v108) + v100 * HIDWORD(a1) + HIDWORD(v110);
          v112 = v109 | (v110 << 32);
          v55 = __CFADD__(v107, v111);
          v113 = v107 + v111;
          if (v55)
          {
            v114 = 1;
          }

          else
          {
            v114 = v106;
          }

          if (v113 == v12 && !v114 && v112 == a3)
          {
            return 1;
          }

          v59 = v113 > v12;
          v115 = v113 == v12;
          v116 = v59;
          if (v114)
          {
            v117 = 1;
          }

          else
          {
            v117 = v116;
          }

          v118 = v112 > a3 && v115;
          v20 = v117 | v118;
        }

        else
        {
          v24 = &__bid_ten2k128[2 * (v23 - 20)];
          v26 = *v24;
          v25 = v24[1];
          v27 = HIDWORD(v25);
          v28 = v25 * HIDWORD(a1);
          v29 = HIDWORD(v28) + HIDWORD(v25) * HIDWORD(a1);
          v30 = HIDWORD(v25) * a1 + v28 + ((v25 * a1) >> 32);
          v31 = HIDWORD(v30);
          v32 = (v25 * a1) | (v30 << 32);
          v33 = HIDWORD(v26);
          v34 = v26 * HIDWORD(a1);
          v35 = HIDWORD(v26) * a1 + v34 + ((v26 * a1) >> 32);
          v36 = (v26 * a1) | (v35 << 32);
          v37 = __PAIR128__(v29, v32) + __PAIR128__(v31, HIDWORD(v34) + HIDWORD(v26) * HIDWORD(a1) + HIDWORD(v35));
          v38 = HIDWORD(v9);
          v39 = v25 * v38;
          v40 = v25 * a2;
          v41 = v27 * a2;
          v42 = HIDWORD(v39) + v27 * v38;
          v43 = v41 + v39 + HIDWORD(v40);
          v44 = HIDWORD(v43);
          v45 = v40 | (v43 << 32);
          v46 = v26 * v38;
          v47 = v26 * a2;
          v48 = HIDWORD(v46) + v33 * v38;
          v49 = v33 * a2 + v46 + HIDWORD(v47);
          v50 = v47 | (v49 << 32);
          v51 = __PAIR128__(v42, v45) + __PAIR128__(v44, v48 + HIDWORD(v49));
          v52 = v37 + v50;
          v53 = __CFADD__(v37, v50) + v51;
          v54 = __CFADD__(__CFADD__(v37, v50), v51);
          v55 = __CFADD__(*(&v37 + 1), v53);
          v56 = *(&v37 + 1) + v53;
          v57 = v55 || v54;
          v58 = (*(&v51 + 1) + v57) | v56;
          if (v52 == v12 && !v58 && v36 == a3)
          {
            return 1;
          }

          v59 = v52 > v12;
          v60 = v52 == v12;
          v61 = v59;
          if (v58)
          {
            v61 = 1;
          }

          if (v36 <= a3)
          {
            v60 = 0;
          }

          v20 = v61 | v60;
        }

        v21 = a4 < 0;
        goto LABEL_57;
      }

      return a2 >> 63;
    }

    if (v18 >= 34)
    {
LABEL_70:
      v8 = a2 >> 63;
      return v8 ^ 1;
    }

    if (v18 < 20)
    {
      v119 = __bid_ten2k64[v18];
      v120 = HIDWORD(v119);
      v121 = HIDWORD(v12);
      v122 = HIDWORD(v119) * a4;
      v123 = v119 * v121;
      v124 = HIDWORD(v122) + HIDWORD(v119) * v121;
      v125 = v123 + v122 + ((v119 * a4) >> 32);
      v126 = v124 + HIDWORD(v125);
      v127 = (v119 * a4) | (v125 << 32);
      v128 = HIDWORD(v119) * a3;
      v129 = v119 * a3;
      v130 = v119 * HIDWORD(a3) + v128 + HIDWORD(v129);
      v131 = HIDWORD(v128) + v120 * HIDWORD(a3) + HIDWORD(v130);
      v132 = v129 | (v130 << 32);
      v55 = __CFADD__(v127, v131);
      v133 = v127 + v131;
      if (v55)
      {
        v134 = 1;
      }

      else
      {
        v134 = v126;
      }

      if (v133 == v9 && !v134 && v132 == a1)
      {
        return 1;
      }

      v59 = v133 > v9;
      v135 = v133 == v9;
      v136 = v59;
      if (v134)
      {
        v137 = 1;
      }

      else
      {
        v137 = v136;
      }

      if (v132 <= a1)
      {
        v135 = 0;
      }

      v97 = v137 | v135;
      v98 = a4 >> 63;
    }

    else
    {
      v62 = &__bid_ten2k128[2 * (v18 - 20)];
      v64 = *v62;
      v63 = v62[1];
      v65 = HIDWORD(v63);
      v66 = v63 * HIDWORD(a3);
      v67 = HIDWORD(v66) + HIDWORD(v63) * HIDWORD(a3);
      v68 = HIDWORD(v63) * a3 + v66 + ((v63 * a3) >> 32);
      v69 = HIDWORD(v68);
      v70 = (v63 * a3) | (v68 << 32);
      v71 = HIDWORD(v64);
      v72 = v64 * HIDWORD(a3);
      v73 = HIDWORD(v64) * a3 + v72 + ((v64 * a3) >> 32);
      v74 = (v64 * a3) | (v73 << 32);
      v75 = __PAIR128__(v67, v70) + __PAIR128__(v69, HIDWORD(v72) + HIDWORD(v64) * HIDWORD(a3) + HIDWORD(v73));
      v76 = HIDWORD(v12);
      v77 = v63 * v76;
      v78 = v63 * a4;
      v79 = v65 * a4;
      v80 = HIDWORD(v77) + v65 * v76;
      v81 = v79 + v77 + HIDWORD(v78);
      v82 = HIDWORD(v81);
      v83 = v78 | (v81 << 32);
      v84 = v64 * v76;
      v85 = v64 * a4;
      v86 = HIDWORD(v84) + v71 * v76;
      v87 = v71 * a4 + v84 + HIDWORD(v85);
      v88 = v85 | (v87 << 32);
      v89 = __PAIR128__(v80, v83) + __PAIR128__(v82, v86 + HIDWORD(v87));
      v90 = v75 + v88;
      v91 = __CFADD__(v75, v88) + v89;
      LODWORD(v92) = __CFADD__(__CFADD__(v75, v88), v89);
      v55 = __CFADD__(*(&v75 + 1), v91);
      v93 = *(&v75 + 1) + v91;
      if (v55)
      {
        v92 = 1;
      }

      else
      {
        v92 = v92;
      }

      v94 = (*(&v89 + 1) + v92) | v93;
      if (v90 == v9 && !v94 && v74 == a1)
      {
        return 1;
      }

      v59 = v90 > v9;
      v95 = v90 == v9;
      v96 = v59;
      if (v94)
      {
        v96 = 1;
      }

      if (v74 <= a1)
      {
        v95 = 0;
      }

      v97 = v96 | v95;
      v98 = a2 >> 63;
    }

    return v97 ^ v98;
  }

  return result;
}

unint64_t __bid128_cos(unint64_t result, int64_t a2, int a3)
{
  v123 = 0uLL;
  if ((~a2 & 0x6000000000000000) != 0)
  {
    v4 = ((a2 >> 49) & 0x3FFF) - 6176;
    v5 = a2 & 0x1FFFFFFFFFFFFLL;
    if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || result >= 0x378D8E6400000000 && v5 == 0x1ED09BEAD87C0)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = result;
    }

LABEL_16:
    if (v6 | v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = -53;
    }

    if (v7 <= -36)
    {
      if (v7 <= 0xFFFFFFCB)
      {
        return __bid128_add(1uLL, 0x3040000000000000, 1uLL, 0x2FF0000000000000, a3, my_fpsf);
      }

      v124.n128_u64[0] = __bid128_to_binary128(result, a2, a3, my_fpsf);
      v124.n128_u64[1] = v114;
      __dpml_bid_C_ux_trig__(&v124, 2, 2, qword_1C1F60888, &v123, v126);
      v116 = v123.n128_u64[1];
      v115 = v123.n128_u64[0];
      v117 = a3;
      return __binary128_to_bid128(v115, v116, v117, my_fpsf);
    }

    v8 = (&bid_decimal128_moduli_1316 + 48 * (v7 + 35));
    v9 = *v8;
    v10 = v8[1];
    v12 = v8[2];
    v11 = v8[3];
    v13 = v8[4];
    v121 = v8[5];
    v14 = HIDWORD(*v8);
    v15 = ((v9 * HIDWORD(v6)) >> 32) + HIDWORD(v9) * HIDWORD(v6) + ((HIDWORD(v9) * v6 + (v9 * HIDWORD(v6)) + ((v9 * v6) >> 32)) >> 32);
    v16 = HIDWORD(v10);
    v17 = v10 * HIDWORD(v6);
    v18 = HIDWORD(v17) + HIDWORD(v10) * HIDWORD(v6);
    v19 = HIDWORD(v10) * v6 + v17 + ((v10 * v6) >> 32);
    v20 = v18 + HIDWORD(v19);
    v21 = (v10 * v6) | (v19 << 32);
    v22 = HIDWORD(v12);
    v23 = v12 * HIDWORD(v6);
    v24 = HIDWORD(v23) + HIDWORD(v12) * HIDWORD(v6);
    v25 = HIDWORD(v12) * v6 + v23 + ((v12 * v6) >> 32);
    v26 = v24 + HIDWORD(v25);
    v27 = (v12 * v6) | (v25 << 32);
    v28 = HIDWORD(v11);
    v29 = v11 * HIDWORD(v6);
    v30 = HIDWORD(v29) + HIDWORD(v11) * HIDWORD(v6);
    v31 = HIDWORD(v11) * v6 + v29 + ((v11 * v6) >> 32);
    v32 = v30 + HIDWORD(v31);
    v33 = (v11 * v6) | (v31 << 32);
    v34 = HIDWORD(v13);
    v35 = v13 * HIDWORD(v6);
    v36 = HIDWORD(v13) * v6 + v35 + ((v13 * v6) >> 32);
    v37 = (v13 * v6) | (v36 << 32);
    v38 = __PAIR128__(v27, v15) + v21;
    v39 = __CFADD__(__CFADD__(v15, v21), v27);
    v40 = __CFADD__(v20, *(&v38 + 1));
    v41 = v20 + *(&v38 + 1);
    v42 = v40 || v39;
    v40 = __CFADD__(v33, v42);
    v43 = v33 + v42;
    v44 = v40;
    v45 = v26 + v43;
    if (__CFADD__(v26, v43))
    {
      v46 = 1;
    }

    else
    {
      v46 = v44;
    }

    v40 = __CFADD__(v37, v46);
    v47 = v37 + v46;
    v48 = v40;
    v49 = v32 + v47;
    if (__CFADD__(v32, v47))
    {
      v50 = 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = HIDWORD(v5);
    v52 = *v8 * HIDWORD(v5);
    v53 = v9 * v5;
    v54 = HIDWORD(v52) + v14 * HIDWORD(v5);
    v55 = v14 * v5 + v52 + HIDWORD(v53);
    v56 = v54 + HIDWORD(v55);
    v57 = v53 | (v55 << 32);
    v58 = v10 * HIDWORD(v5);
    v59 = v10 * v5;
    v60 = v16 * v5;
    v61 = HIDWORD(v58) + v16 * HIDWORD(v5);
    v62 = v60 + v58 + HIDWORD(v59);
    v63 = v61 + HIDWORD(v62);
    v64 = v59 | (v62 << 32);
    v65 = v12 * HIDWORD(v5);
    v66 = v12 * v5;
    v67 = HIDWORD(v65) + v22 * HIDWORD(v5);
    v68 = v22 * v5 + v65 + HIDWORD(v66);
    v69 = v67 + HIDWORD(v68);
    v70 = v66 | (v68 << 32);
    v71 = v11 * HIDWORD(v5);
    v72 = v11 * v5;
    v73 = v28 * v5 + v71 + HIDWORD(v72);
    v74 = v72 | (v73 << 32);
    v75 = v13 * v5;
    v76 = __PAIR128__(v70, v56) + v64;
    LODWORD(v77) = __CFADD__(__CFADD__(v56, v64), v70);
    v78 = v63 + *(&v76 + 1);
    if (__CFADD__(v63, *(&v76 + 1)))
    {
      v77 = 1;
    }

    else
    {
      v77 = v77;
    }

    v40 = __CFADD__(v74, v77);
    v79 = v74 + v77;
    LODWORD(v80) = v40;
    v40 = __CFADD__(v69, v79);
    v81 = v69 + v79;
    if (v40)
    {
      v80 = 1;
    }

    else
    {
      v80 = v80;
    }

    v82 = __CFADD__(v57, v38) + v76;
    LODWORD(v83) = __CFADD__(__CFADD__(v57, v38), v76);
    v40 = __CFADD__(v41, v82);
    v84 = v41 + v82;
    if (v40)
    {
      v83 = 1;
    }

    else
    {
      v83 = v83;
    }

    v40 = __CFADD__(v78, v83);
    v85 = v78 + v83;
    LODWORD(v86) = v40;
    v40 = __CFADD__(v85, v45);
    v87 = v85 + v45;
    if (v40)
    {
      v86 = 1;
    }

    else
    {
      v86 = v86;
    }

    v40 = __CFADD__(v81, v86);
    v88 = v81 + v86;
    LODWORD(v89) = v40;
    v40 = __CFADD__(v88, v49);
    v90 = v88 + v49;
    if (v40)
    {
      v89 = 1;
    }

    else
    {
      v89 = v89;
    }

    v91 = v75 + v28 * v51 + HIDWORD(v71) + v34 * HIDWORD(v6) + v121 * v6 + HIDWORD(v35) + HIDWORD(v73) + HIDWORD(v36) + v80 + v50 + v89;
    *(&v93 + 1) = v91;
    *&v93 = v90;
    v92 = v93 >> 62;
    *(&v93 + 1) = v90;
    *&v93 = v87;
    v94 = v93 >> 62;
    v95 = v91 >> 62;
    *(&v93 + 1) = v87;
    *&v93 = v84;
    v96 = v93 >> 62;
    v97 = 4 * v84;
    v98 = (v95 + 1) & 3;
    if (v92 < 0)
    {
      v99 = a2 >= 0;
    }

    else
    {
      v98 = v95;
      v99 = a2 >> 63;
    }

    if (v92 >= 0)
    {
      v100 = v92;
    }

    else
    {
      v100 = ~v92;
    }

    if (v92 >= 0)
    {
      v101 = v97;
    }

    else
    {
      v94 = ~v94;
      v96 = ~v96;
      v101 = ~v97;
    }

    if (a2 >= 0)
    {
      v102 = v98;
    }

    else
    {
      v102 = -v98 & 3;
    }

    if (v100)
    {
      v103 = 16382;
    }

    else
    {
      v103 = 16318;
    }

    if (v100)
    {
      v104 = v100;
    }

    else
    {
      v104 = v94;
    }

    if (v100)
    {
      v101 = v96;
    }

    else
    {
      v94 = v96;
    }

    v105 = vdupq_n_s64(v104);
    v106 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v105, xmmword_1C1F58C70), vandq_s8(v105, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v105, xmmword_1C1F58C80), vandq_s8(v105, xmmword_1C1F58CA0))));
    *v106.i8 = vorr_s8(*v106.i8, *&vextq_s8(v106, v106, 8uLL));
    v107 = v106.i32[0] | v106.i32[1] | (2 * ((v104 & 0xCCCCCCCCCCCCCCCCLL) <= (v104 & 0x3333333333333333)));
    if ((v104 & 0xAAAAAAAAAAAAAAAALL) <= (v104 & 0x5555555555555555))
    {
      ++v107;
    }

    v108 = (v101 >> -v107) + (v94 << v107);
    if (v107)
    {
      v104 = (v94 >> -v107) + (v104 << v107);
    }

    else
    {
      v108 = v94;
    }

    *(&v109 + 1) = v104;
    *&v109 = v108;
    v124.n128_u64[0] = v109 >> 15;
    v124.n128_u64[1] = (v99 << 63) | ((v103 - v107) << 48) | (v104 >> 15) & 0xFFFFFFFFFFFFLL;
    bid_f128_mul(&v124, &c_pi_ov_2, &v124);
    if (v102 > 1)
    {
      v110 = a3;
      if (v102 != 2)
      {
        v111 = &__dpml_bid_trig_x_table;
        v112 = 0;
        v113 = 1;
        goto LABEL_106;
      }

      v118 = qword_1C1F60888;
      v119 = 2;
      v120 = 2;
    }

    else
    {
      v110 = a3;
      if (!v102)
      {
        v111 = qword_1C1F60888;
        v112 = 2;
        v113 = 2;
LABEL_106:
        __dpml_bid_C_ux_trig__(&v124, v112, v113, v111, &v123, v126);
        goto LABEL_107;
      }

      v118 = &__dpml_bid_trig_x_table;
      v119 = 0;
      v120 = 1;
    }

    __dpml_bid_C_ux_trig__(&v124, v119, v120, v118, &v123, v126);
    memset(v125, 0, sizeof(v125));
    __dpml_bid_unpack_x_or_y__(&v123, 0, v125, &__dpml_bid_bid_x_table, &v123, v126);
LABEL_107:
    v116 = v123.n128_u64[1];
    v115 = v123.n128_u64[0];
    v117 = v110;
    return __binary128_to_bid128(v115, v116, v117, my_fpsf);
  }

  if ((~a2 & 0x7800000000000000) != 0)
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
    goto LABEL_16;
  }

  if ((~a2 & 0x7C00000000000000) != 0)
  {
    result = 0;
    my_fpsf[0] |= 1u;
  }

  else
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __bid128_div(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int *a6)
{
  v389 = a5;
  v7 = a4 & 0x7800000000000000;
  if (((a4 >> 61) & 3) == 3)
  {
    if (v7 == 0x7800000000000000)
    {
      v8 = 0xFE00000000000000;
      if ((a4 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
      {
        v13 = (a4 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a3 >= 0x38C15B0A00000000;
        if (!v13)
        {
          v8 = 0xFE003FFFFFFFFFFFLL;
          v9 = a3;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      LODWORD(v11) = 0;
      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        a3 = 0;
      }

      else
      {
        a3 = v9;
      }

      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v8 = 0xF800000000000000;
      }

      v10 = v8 & a4;
      v12 = 1;
    }

    else
    {
      a3 = 0;
      v10 = 0;
      v11 = (a4 >> 47) & 0x3FFF;
      v12 = 1;
    }
  }

  else
  {
    v10 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a3 >= 0x378D8E6400000000)
    {
      a3 = 0;
      v10 = 0;
    }

    v11 = (a4 >> 49) & 0x3FFF;
    v12 = (v10 | a3) == 0;
  }

  v390 = 0;
  v391 = 0;
  if (((a2 >> 61) & 3) == 3)
  {
    if ((a2 & 0x7800000000000000) == 0x7800000000000000)
    {
      v15 = 0xFE00000000000000;
      if ((a2 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
      {
        if ((a2 & 0x3FFFFFFFFFFFLL) != 0x314DC6448D93 || a1 < 0x38C15B0A00000000)
        {
          v15 = 0xFE003FFFFFFFFFFFLL;
          v16 = a1;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v15 = 0xF800000000000000;
      }

      v17 = v15 & a2;
      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        a1 = 0;
      }

      else
      {
        a1 = v16;
      }

      if ((a2 & 0x7C00000000000000) == 0x7C00000000000000)
      {
        goto LABEL_71;
      }

      if ((a4 & 0x7C00000000000000) != 0x7C00000000000000)
      {
        if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
        {
LABEL_77:
          *a6 |= 1u;
          v37 = 0x7C00000000000000;
LABEL_185:
          v391 = v37;
          return v390;
        }

LABEL_184:
        v37 = (a4 ^ a2) & 0x8000000000000000 | 0x7800000000000000;
        goto LABEL_185;
      }

      LODWORD(v18) = 0;
      goto LABEL_38;
    }

    v17 = 0;
    a1 = 0;
    v18 = (a2 >> 47) & 0x3FFF;
  }

  else
  {
    v17 = a2 & 0x1FFFFFFFFFFFFLL;
    if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (a2 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a1 >= 0x378D8E6400000000)
    {
      a1 = 0;
      v17 = 0;
    }

    v18 = (a2 >> 49) & 0x3FFF;
    if (v17 | a1)
    {
      goto LABEL_39;
    }
  }

  if ((~a2 & 0x7C00000000000000) == 0)
  {
LABEL_71:
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      *a6 |= 1u;
    }

    v390 = a1;
    v391 = v17 & 0xFDFFFFFFFFFFFFFFLL;
    return v390;
  }

LABEL_38:
  if (v7 != 0x7800000000000000)
  {
    if (v10 & 0x1FFFFFFFFFFFFLL | a3)
    {
      v34 = v18 - v11;
      v35 = v34 + 6176;
      if (v34 < -6176)
      {
        v35 = 0;
      }

      if (v34 <= 6111)
      {
        v36 = v35;
      }

      else
      {
        v36 = 12287;
      }

      v37 = (a4 ^ a2) & 0x8000000000000000 | (v36 << 49);
      goto LABEL_185;
    }

    goto LABEL_77;
  }

LABEL_39:
  v19 = a4 & 0x8000000000000000;
  v20 = a2 & 0x8000000000000000;
  if (!v12)
  {
    v21 = v18 - v11 + 6176;
    v22 = a3 << 36;
    if (v10 > v17 || v10 == v17 && a3 > a1)
    {
      v23 = (COERCE_INT(a3 + (v10 * 1.8447e19)) - COERCE_INT(a1 + (v17 * 1.8447e19))) >> 23;
      v24 = (&__bid_power10_index_binexp_128 + 16 * v23);
      v25 = *v24;
      v26 = HIDWORD(*v24);
      if (v17)
      {
        v27 = v25 * v17;
        v28 = v25;
        v29 = v26 * a1;
        v30 = v25 * a1;
        v31 = v28 * HIDWORD(a1) + v29 + HIDWORD(v30);
        v32 = v30 | (v31 << 32);
        v33 = v27 + v26 * HIDWORD(a1) + HIDWORD(v29);
      }

      else
      {
        v40 = v25 * HIDWORD(a1);
        v41 = v25 * a1;
        v31 = v26 * a1 + v40 + HIDWORD(v41);
        v32 = v41 | (v31 << 32);
        v33 = v24[1] * a1 + v26 * HIDWORD(a1) + HIDWORD(v40);
      }

      v42 = v33 + HIDWORD(v31);
      if (v10 > v42 || (v10 == v42 ? (v43 = a3 > v32) : (v43 = 0), v43))
      {
        v44 = 34;
      }

      else
      {
        v44 = 33;
      }

      v45 = 0;
      v46 = 0;
      v47 = (&__bid_power10_table_128 + 16 * v44);
      v48 = *v47;
      v49 = v47[1];
      v50 = HIDWORD(v49);
      v51 = v49 * HIDWORD(v32);
      v52 = HIDWORD(v51) + HIDWORD(v49) * HIDWORD(v32);
      v53 = HIDWORD(v48);
      v54 = v48 * HIDWORD(v32);
      v55 = HIDWORD(v54) + HIDWORD(v48) * HIDWORD(v32);
      v56 = HIDWORD(v48) * v32 + v54;
      v57 = HIDWORD(v49) * v32 + v51 + ((v49 * v32) >> 32);
      v58 = (v49 * v32) | (v57 << 32);
      v59 = v48 * v32;
      v60 = v56 + HIDWORD(v59);
      v61 = v59 | (v60 << 32);
      v62 = __PAIR128__(v52, v58) + __PAIR128__(HIDWORD(v57), v55 + HIDWORD(v60));
      v63 = HIDWORD(v42);
      LODWORD(v52) = v42;
      v64 = v49 * HIDWORD(v42);
      v65 = v49 * v42;
      v66 = HIDWORD(v64) + v50 * HIDWORD(v42);
      v67 = v50 * v42 + v64 + HIDWORD(v65);
      v68 = HIDWORD(v67);
      v69 = v65 | (v67 << 32);
      v70 = v48 * HIDWORD(v42);
      v71 = v48 * v42;
      v72 = HIDWORD(v48) * v52 + v70 + HIDWORD(v71);
      v73 = v71 | (v72 << 32);
      v74 = __PAIR128__(v66, v69) + __PAIR128__(v68, HIDWORD(v70) + v53 * v63 + HIDWORD(v72));
      v13 = __CFADD__(v62, v73);
      v75 = v62 + v73;
      v77 = v13;
      v13 = __CFADD__(v13, v69 + HIDWORD(v70) + v53 * v63 + HIDWORD(v72));
      v76 = v77 + v69 + HIDWORD(v70) + v53 * v63 + HIDWORD(v72);
      LODWORD(v78) = v13;
      v13 = __CFADD__(*(&v62 + 1), v76);
      v79 = *(&v62 + 1) + v76;
      if (v13)
      {
        v78 = 1;
      }

      else
      {
        v78 = v78;
      }

      v80 = *(&v74 + 1) + v78;
      LODWORD(v81) = __bid_estimate_decimal_digits[v23] + v44;
      goto LABEL_95;
    }

    if (!v17)
    {
      v46 = 0;
      v231 = 0;
      v136 = a1 / a3;
      v232 = a1 % a3;
LABEL_326:
      if (!(v231 | v232))
      {
        goto LABEL_341;
      }

      v331 = (COERCE_INT(v136 + (v46 * 1.8447e19)) - 1065353216) >> 23;
      v332 = __bid_estimate_decimal_digits[v331];
      v333 = (&__bid_power10_index_binexp_128 + 16 * v331);
      v334 = v333[1];
      if (v46 > v334 || ((v335 = *v333, v46 == v334) ? (v336 = v136 >= v335) : (v336 = 0), v336))
      {
        ++v332;
      }

      v81 = 34 - v332;
      v337 = (&__bid_power10_table_128 + 16 * v81);
      v338 = *v337;
      v339 = v337[1];
      v340 = HIDWORD(v232);
      v341 = v232;
      v342 = v339 * HIDWORD(v232);
      v343 = HIDWORD(v342) + HIDWORD(v339) * HIDWORD(v232);
      v344 = HIDWORD(v339) * v232 + v342 + ((v339 * v232) >> 32);
      v345 = (v339 * v232) | (v344 << 32);
      v346 = v338 * HIDWORD(v232);
      v347 = v338 * v232;
      v348 = HIDWORD(v338) * v341 + v346 + HIDWORD(v347);
      v61 = v347 | (v348 << 32);
      v350 = v345 + HIDWORD(v346) + HIDWORD(v338) * v340 + HIDWORD(v348);
      v349 = (__PAIR128__(v343, v345) + __PAIR128__(HIDWORD(v344), HIDWORD(v346) + HIDWORD(v338) * v340 + HIDWORD(v348))) >> 64;
      v351 = HIDWORD(v231);
      LODWORD(v343) = v231;
      v352 = v339 * HIDWORD(v231);
      v353 = HIDWORD(v352) + HIDWORD(v339) * HIDWORD(v231);
      v354 = HIDWORD(v339) * v231 + v352 + ((v339 * v231) >> 32);
      v355 = HIDWORD(v354);
      v356 = (v339 * v231) | (v354 << 32);
      v357 = v338 * HIDWORD(v231);
      v358 = v338 * v231;
      v359 = HIDWORD(v357) + HIDWORD(v338) * v351;
      v360 = HIDWORD(v338) * v343 + v357 + HIDWORD(v358);
      v361 = v358 | (v360 << 32);
      v363 = v356 + v359 + HIDWORD(v360);
      v362 = (__PAIR128__(v353, v356) + __PAIR128__(v355, v359 + HIDWORD(v360))) >> 64;
      v13 = __CFADD__(v350, v361);
      v365 = v350 + v361;
      v364 = (__PAIR128__(v363, v350) + v361) >> 64;
      v75 = v365;
      v366 = __CFADD__(v13, v363);
      v13 = __CFADD__(v349, v364);
      v79 = v349 + v364;
      v367 = v13 || v366;
      v80 = v362 + v367;
      v368 = v338 * HIDWORD(v136);
      v369 = HIDWORD(v338) * v136 + v368 + ((v338 * v136) >> 32);
      v45 = (v338 * v136) | (v369 << 32);
      v46 = v338 * v46 + v339 * v136 + HIDWORD(v338) * HIDWORD(v136) + HIDWORD(v368) + HIDWORD(v369);
LABEL_95:
      v82 = a3 + v10 * 1.84467441e19;
      v83 = (v61 + v75 * 1.84467441e19 + v79 * 3.40282367e38 + v80 * 6.27710174e57) / v82;
      if (v80 > v10 >> 28 || v80 == v10 >> 28 && ((*(&v102 + 1) = v10, *&v102 = a3, v101 = v102 >> 28, v79 > v101) || (v79 == v101 ? (v103 = v75 >= v22) : (v103 = 0), v103)))
      {
        v84 = v83 * 8.67361738e-19;
        v85 = v84 - 4;
        v86 = v84 - 4;
        v87 = v86 * HIDWORD(v10) + (HIDWORD(v85) * v10) + ((v85 * v10) >> 32);
        v88 = HIDWORD(v87);
        v89 = (v85 * v10) | (v87 << 32);
        v90 = HIDWORD(v85) * a3;
        v91 = v85 * a3;
        v92 = v86 * HIDWORD(a3) + v90 + HIDWORD(v91);
        v93 = HIDWORD(v90) + HIDWORD(v85) * HIDWORD(a3) + HIDWORD(v92);
        *(&v95 + 1) = (v88 + __CFADD__(v89, v93) + ((v10 * HIDWORD(v85)) >> 32));
        *&v95 = v89 + v93;
        v94 = v95 >> 4;
        *(&v95 + 1) = v95;
        *&v95 = v91 & 0xFFFFFFF0 | (v92 << 32);
        v96 = v95 >> 4;
        v13 = v61 >= v91 << 60;
        v61 -= v91 << 60;
        v97 = !v13;
        v98 = v75 - v97;
        v43 = v98 > v75;
        v75 = v98 - v96;
        v100 = v43 || v98 < v96;
        v79 = v79 - v94 - v100;
        v83 = (v61 + v75 * 1.84467441e19 + v79 * 3.40282367e38) / v82;
        v13 = __CFADD__(v45, v85 << 60);
        v45 += v85 << 60;
        v46 += v13 + (v85 >> 4);
      }

      if (v79 > v10 >> 13 || v79 == v10 >> 13 && ((*(&v122 + 1) = v10, *&v122 = a3, v121 = v122 >> 13, v75 > v121) || (v75 == v121 ? (v123 = v61 > a3 << 51) : (v123 = 0), v123)))
      {
        v104 = v83 * 1.77635684e-15;
        v105 = v104 - 1;
        v106 = v104 - 1;
        v107 = HIDWORD(v105) * a3;
        v108 = v105 * a3;
        v109 = HIDWORD(v107) + HIDWORD(v105) * HIDWORD(a3);
        v110 = v106 * HIDWORD(a3) + v107 + HIDWORD(v108);
        v111 = v109 + HIDWORD(v110);
        v112 = v106 * HIDWORD(v10) + (HIDWORD(v105) * v10) + ((v105 * v10) >> 32);
        v113 = (v105 * v10) | (v112 << 32);
        *(&v115 + 1) = (HIDWORD(v112) + __CFADD__(v111, v113) + ((v10 * HIDWORD(v105)) >> 32));
        *&v115 = v111 + v113;
        v114 = v115 >> 15;
        *(&v115 + 1) = v111 + v113;
        *&v115 = v108 & 0xFFFF8000 | (v110 << 32);
        v116 = v115 >> 15;
        v13 = v61 >= v108 << 49;
        v61 -= v108 << 49;
        v117 = !v13;
        v118 = v75 - v117;
        v43 = v118 > v75;
        v75 = v118 - v116;
        v120 = v43 || v118 < v116;
        v13 = __CFADD__(v45, v105 << 49);
        v45 += v105 << 49;
        v46 += v13 + (v105 >> 15);
        v83 = (v61 + v75 * 1.84467441e19 + (v79 - v114 - v120) * 3.40282367e38) / v82;
      }

      v124 = v83;
      v125 = v83 >> 32;
      v126 = v125 * a3;
      v127 = v83 * HIDWORD(a3) + v126 + ((v83 * a3) >> 32);
      v128 = (__PAIR128__(v75, v61) - __PAIR128__(v10 * v83 + v125 * HIDWORD(a3) + HIDWORD(v126) + HIDWORD(v127), (v83 * a3) | (v127 << 32))) >> 64;
      v129 = v61 - ((v83 * a3) | (v127 << 32));
      if (v128 < 0)
      {
        v133 = v124 - 1;
        v128 = (__PAIR128__(v128, v129) + __PAIR128__(v10, a3)) >> 64;
        v129 += a3;
        v124 -= 2;
        v134 = __PAIR128__(v128, v129) + __PAIR128__(v10, a3);
        v135 = v128 >= 0;
        if (v128 < 0)
        {
          v128 = (__PAIR128__(v128, v129) + __PAIR128__(v10, a3)) >> 64;
        }

        else
        {
          v124 = v133;
        }

        if (!v135)
        {
          v129 = v134;
        }
      }

      else
      {
        v130 = v128 - v10;
        if (v128 > v10 || (v129 >= a3 ? (v131 = v128 == v10) : (v131 = 0), v131))
        {
          ++v124;
          v13 = v129 >= a3;
          v129 -= a3;
          v132 = !v13;
          v128 = v130 - v132;
        }
      }

      v21 -= v81;
      v13 = __CFADD__(v124, v45);
      v136 = v124 + v45;
      if (v13)
      {
        ++v46;
      }

      if (v129 | v128)
      {
        v137 = *a6;
        *a6 |= 0x20u;
        if ((v21 & 0x80000000) == 0)
        {
          if (v20 == v19 || (a5 - 1) >= 2)
          {
            v139 = a5;
          }

          else
          {
            v139 = 3 - a5;
          }

          if (v139 > 2)
          {
            if (v139 == 3)
            {
              goto LABEL_341;
            }

            if (v139 != 4)
            {
LABEL_282:
              v13 = __CFADD__(v136++, 1);
              if (!v13)
              {
                goto LABEL_341;
              }

              v136 = 0;
              goto LABEL_288;
            }

            *(&v227 + 1) = v128;
            *&v227 = v129;
            v228 = v227 * 2 - __PAIR128__(v10, a3);
            v230 = v228 >= 0 || v228 == 0;
          }

          else
          {
            if (v139)
            {
              if (v139 != 1)
              {
                goto LABEL_282;
              }

LABEL_341:
              v370 = v19 ^ v20;
              v175 = v21;
LABEL_346:
              bid_get_BID128(&v390, v370, v175, v136, v46, &v389, a6);
              return v390;
            }

            *(&v293 + 1) = v128;
            *&v293 = v129;
            v230 = ((((v293 * 2 - __PAIR128__(v10, a3)) >> 64) & 0x8000000000000000) == 0) & ((v293 * 2 - __PAIR128__(v10, a3) != 0) | v136);
          }

          v13 = __CFADD__(v136, v230);
          v136 += v230;
          if (!v13)
          {
            goto LABEL_341;
          }

LABEL_288:
          ++v46;
          goto LABEL_341;
        }

        v226 = v19 ^ v20;
        if (v21 <= -35)
        {
          *a6 = v137 | 0x30;
          v391 = v19 ^ v20;
          if (v19 == v20)
          {
            if (v389 != 2)
            {
              return v390;
            }
          }

          else if (v389 != 1)
          {
            return v390;
          }

          return 1;
        }

        *(&v234 + 1) = v46;
        *&v234 = v136;
        v233 = v234 >> 63;
        *(&v234 + 1) = v46;
        *&v234 = v136;
        v235 = v128 | v129;
        v236 = v233 + (v234 >> 61);
        if (10 * v136 < 8 * v136)
        {
          ++v236;
        }

        v237 = (v235 != 0) | (10 * v136);
        v238 = 1 - v21;
        if ((v389 - 1) >= 2 || v19 == v20)
        {
          v240 = v389;
        }

        else
        {
          v240 = 3 - v389;
        }

        v241 = __bid_round_const_table_128[36 * v240 + v238] + __PAIR128__(v236, v237);
        v242 = &__bid_reciprocals10_128[2 * v238];
        v243 = *v242;
        v244 = v242[1];
        v245 = v244 * DWORD1(v241);
        v246 = HIDWORD(v245);
        v247 = HIDWORD(v244) * v241 + v245 + ((v244 * v241) >> 32);
        v248 = (v244 * v241) | (v247 << 32);
        v249 = DWORD2(v241) * HIDWORD(v243);
        v250 = HIDWORD(v241) * v243 + v249 + ((DWORD2(v241) * v243) >> 32);
        v251 = (DWORD2(v241) * v243) | (v250 << 32);
        v252 = v243 * DWORD1(v241);
        v253 = HIDWORD(v243) * v241 + v252 + ((v243 * v241) >> 32);
        v254 = HIDWORD(v252) + HIDWORD(v243) * DWORD1(v241) + HIDWORD(v253);
        v255 = (v243 * v241) | (v253 << 32);
        v256 = HIDWORD(v241) * v244;
        v257 = HIDWORD(v256) + HIDWORD(v241) * HIDWORD(v244);
        v258 = DWORD2(v241) * HIDWORD(v244) + v256 + ((DWORD2(v241) * v244) >> 32);
        v259 = HIDWORD(v258);
        v260 = (DWORD2(v241) * v244) | (v258 << 32);
        v261 = __CFADD__(v248, v251);
        v262 = v248 + v251 + v254;
        v263 = __PAIR128__(v257, v260) + __PAIR128__(v259, (__PAIR128__(v246 + HIDWORD(v244) * DWORD1(v241) + HIDWORD(v241) * HIDWORD(v243) + HIDWORD(v249) + HIDWORD(v247) + HIDWORD(v250), v248 + v251) + __PAIR128__(v261, v254)) >> 64);
        v264 = __bid_recip_scale[v238];
        v265 = (*(&v263 + 1) << -v264) | (v263 >> v264);
        v266 = ((__PAIR128__(v257, v260) + __PAIR128__(v259, (__PAIR128__(v246 + HIDWORD(v244) * DWORD1(v241) + HIDWORD(v241) * HIDWORD(v243) + HIDWORD(v249) + HIDWORD(v247) + HIDWORD(v250), v248 + v251) + __PAIR128__(v261, v254)) >> 64)) >> 64) >> v264;
        if (v264 >= 64)
        {
          v265 = *(&v263 + 1) >> v264;
          v266 = 0;
        }

        if (!v389 && (v265 & 1) != 0)
        {
          v267 = ((2 * *(&v263 + 1)) << ~(v264 - 64)) | (v263 >> (v264 - 64));
          if (v264 >= 65)
          {
            v268 = v263 << -v264 != 0;
          }

          else
          {
            v267 = v263 << -v264;
            v268 = 0;
          }

          if (!v267 && !v268)
          {
            if (v262 < v244 || (v262 == v244 ? (v269 = v255 >= v243) : (v269 = 1), !v269))
            {
              --v265;
            }
          }
        }

        if ((*a6 & 0x20) != 0)
        {
          v320 = 16;
LABEL_389:
          *a6 |= v320;
LABEL_390:
          v391 = v266 | v226;
          return v265;
        }

        v270 = 0x80 - v264;
        if (v264 >= 65)
        {
          v271 = (*(&v263 + 1) << (0x80 - v264)) | (v263 >> v264);
        }

        else
        {
          v271 = v263 << -v264;
        }

        if (v264 >= 65)
        {
          v272 = v263 << (0x80 - v264);
        }

        else
        {
          v272 = 0;
        }

        if (v240 > 2)
        {
          if (v240 == 3)
          {
            goto LABEL_356;
          }

          if (v240 != 4)
          {
            goto LABEL_363;
          }
        }

        else if (v240)
        {
          if (v240 != 1)
          {
LABEL_363:
            v13 = __CFADD__(__CFADD__(v255, v243), v262);
            v375 = __CFADD__(v255, v243) + v262;
            v376 = v13;
            v377 = __CFADD__(v375, v244);
            v378 = (v377 | v376) & 1;
            v379 = v271 >> -v264;
            v380 = v264 - 64;
            v381 = v271 >> v270;
            if (v264 < 65)
            {
              v381 = 0;
            }

            else
            {
              v380 = v264 - 64;
              v379 = (v272 >> v270) | (v271 << v264);
            }

            v382 = 1 << v380;
            if (v264 < 64)
            {
              v382 = 0;
            }

            v13 = __CFADD__(v379, v378);
            v383 = v379 + v378;
            if (v13)
            {
              v384 = v381 + 1;
            }

            else
            {
              v384 = v381;
            }

            if (v384 > v382)
            {
              goto LABEL_390;
            }

            v385 = v383 >> v264;
            v386 = v264 < 64 && v385 == 0;
            v387 = v386;
            if (v384 == v382 && !v387)
            {
              goto LABEL_390;
            }

            goto LABEL_388;
          }

LABEL_356:
          if (!(v271 | v272))
          {
            goto LABEL_357;
          }

          goto LABEL_388;
        }

        if (v271 == 0x8000000000000000 && v272 == 0)
        {
LABEL_357:
          if (v262 < v244)
          {
            goto LABEL_390;
          }

          if (v262 == v244 && v255 < v243)
          {
            goto LABEL_390;
          }
        }

LABEL_388:
        v320 = 48;
        goto LABEL_389;
      }

      if (a3 <= 0x400 && !(v17 | v10) && a1 <= 0x400)
      {
        v140 = &__bid_factors[((a3 << 32) - 0x100000000) >> 31];
        v141 = &__bid_factors[((a1 << 32) - 0x100000000) >> 31];
        v142 = v81 - *v140 + *v141;
        v143 = v81 - v140[1] + v141[1];
        if (v143 >= v142)
        {
          v144 = v142;
        }

        else
        {
          v144 = v143;
        }

        v146 = __bid_reciprocals10_128[2 * v144];
        v145 = __bid_reciprocals10_128[2 * v144 + 1];
        v147 = HIDWORD(v145);
        v148 = v145 * HIDWORD(v136);
        v149 = HIDWORD(v148);
        v150 = HIDWORD(v145) * v136 + v148 + ((v145 * v136) >> 32);
        v151 = (v145 * v136) | (v150 << 32);
        v152 = HIDWORD(v146);
        v153 = HIDWORD(v46);
        v154 = v46;
        v155 = v46 * HIDWORD(v146);
        v156 = HIDWORD(v46) * v146 + v155 + ((v46 * v146) >> 32);
        v157 = (v46 * v146) | (v156 << 32);
        v158 = ((v146 * HIDWORD(v136)) >> 32) + HIDWORD(v146) * HIDWORD(v136) + ((HIDWORD(v146) * v136 + (v146 * HIDWORD(v136)) + ((v146 * v136) >> 32)) >> 32);
        v159 = HIDWORD(v46) * v145;
        v160 = v46 * v145;
        v161 = HIDWORD(v159) + v153 * HIDWORD(v145);
        v162 = v154 * HIDWORD(v145) + v159 + HIDWORD(v160);
        v163 = HIDWORD(v162);
        v164 = v160 | (v162 << 32);
        v165 = v151 + v157;
        v166 = __CFADD__(v151, v157);
        v167 = __bid_recip_scale[v144];
        v168 = __PAIR128__(v161, v164) + __PAIR128__(v163, v166 + __CFADD__(v158, v165) + v149 + v147 * HIDWORD(v136) + v153 * v152 + HIDWORD(v155) + HIDWORD(v150) + HIDWORD(v156));
        v169 = v167 <= 63;
        v170 = (v164 + v166 + __CFADD__(v158, v165) + v149 + v147 * HIDWORD(v136) + v153 * v152 + HIDWORD(v155) + HIDWORD(v150) + HIDWORD(v156)) >> v167;
        v171 = -v167;
        v172 = *(&v168 + 1) >> v167;
        v173 = *(&v168 + 1) >> v167;
        v174 = (*(&v168 + 1) << v171) | v170;
        if (v169)
        {
          v173 = v174;
        }

        if (v169)
        {
          v46 = v172;
        }

        else
        {
          v46 = 0;
        }

        v175 = v144 + v21;
        goto LABEL_345;
      }

      v192 = HIDWORD(v136);
      v193 = v136;
      v194 = 2737007179 * HIDWORD(v136);
      v195 = HIDWORD(v194) + 755578 * HIDWORD(v136);
      v196 = 755578 * v136 + v194 + ((2737007179u * v136) >> 32);
      v197 = HIDWORD(v196);
      v198 = (-1557960117 * v136) | (v196 << 32);
      v199 = ((3953110345u * HIDWORD(v136)) >> 32) + 1150327791 * HIDWORD(v136) + ((1150327791 * v136 + (-341856951 * HIDWORD(v136)) + ((3953110345u * v136) >> 32)) >> 32);
      v200 = v198 + v199;
      v201 = v197 + __CFADD__(v198, v199) + v195;
      v202 = HIDWORD(v46);
      v203 = v46;
      v204 = 2737007179 * HIDWORD(v46);
      v205 = HIDWORD(v204) + 755578 * HIDWORD(v46);
      v206 = 755578 * v46 + v204 + ((2737007179u * v46) >> 32);
      v207 = HIDWORD(v206);
      v208 = (-1557960117 * v46) | (v206 << 32);
      v209 = 3953110345 * HIDWORD(v46);
      v210 = HIDWORD(v209) + 1150327791 * HIDWORD(v46);
      v211 = 1150327791 * v46 + v209 + ((3953110345u * v46) >> 32);
      v212 = (-341856951 * v46) | (v211 << 32);
      v213 = __PAIR128__(v205, v208) + __PAIR128__(v207, v210 + HIDWORD(v211));
      v13 = __CFADD__(__CFADD__(v212, v200), v208 + v210 + HIDWORD(v211));
      v214 = __CFADD__(v212, v200) + v208 + v210 + HIDWORD(v211);
      v215 = v13;
      v13 = __CFADD__(v201, v214);
      v216 = v201 + v214;
      if (v13)
      {
        v217 = 1;
      }

      else
      {
        v217 = v215;
      }

      *(&v218 + 1) = *(&v213 + 1) + v217;
      *&v218 = v216;
      v173 = v218 >> 44;
      v219 = v136 - 100000000000000000 * v173;
      if (v219)
      {
        v220 = v219 & 0x3FFFFFF;
        v221 = v219 >> 26;
        if ((v219 >> 26))
        {
          v222 = 0;
          v223 = &__bid_convert_table;
          do
          {
            v224 = &v223[8 * (v221 & 0x7F)];
            v220 += *v224;
            v222 += *(v224 + 1);
            if (v220 > 0x5F5E0FF)
            {
              v220 -= 100000000;
              ++v222;
            }

            v223 += 1024;
            v43 = v221 > 0x7F;
            LODWORD(v221) = v221 >> 7;
          }

          while (v43);
          v225 = v222 - 100000000;
          if (v222 - 100000000 > 0x5F5E0FF)
          {
            v225 = v222 - 200000000;
          }

          if (v222 > 0x5F5E0FF)
          {
            v222 = v225;
          }
        }

        else
        {
          v222 = 0;
        }

        if (v220 | v222)
        {
          v294 = v220 == 0;
          if (!v220)
          {
            v220 = v222;
          }

          v295 = (109951163 * v220) >> 40;
          v296 = v220 - 10000 * v295;
          v297 = (8 * v294) | 4;
          if (v296)
          {
            v297 = 8 * v294;
            v295 = v296;
          }

          else
          {
            v295 = v295;
          }

          if ((v295 & 1) == 0)
          {
            v297 |= (__bid_packed_10000_zeros[v295 >> 3] >> (v295 & 6)) & 3;
          }

          if (!v297)
          {
            goto LABEL_305;
          }
        }

        else
        {
          v297 = 16;
        }

        v298 = __bid_reciprocals10_128[2 * v297];
        v299 = __bid_reciprocals10_128[2 * v297 + 1];
        v300 = HIDWORD(v299);
        v301 = v299 * HIDWORD(v136);
        v302 = HIDWORD(v301);
        v303 = HIDWORD(v299) * v136 + v301 + ((v299 * v136) >> 32);
        v304 = (v299 * v136) | (v303 << 32);
        v305 = HIDWORD(v298);
        v306 = HIDWORD(v298) * v203;
        v307 = v298 * v202 + v306 + ((v298 * v203) >> 32);
        v308 = (v298 * v203) | (v307 << 32);
        v309 = ((v298 * v192) >> 32) + HIDWORD(v298) * v192 + ((HIDWORD(v298) * v193 + (v298 * v192) + ((v298 * v193) >> 32)) >> 32);
        v310 = v299 * v202;
        v311 = v299 * v203;
        v312 = HIDWORD(v310) + v300 * v202;
        v313 = v300 * v203 + v310 + HIDWORD(v311);
        v314 = HIDWORD(v313);
        v315 = v311 | (v313 << 32);
        v316 = v304 + v308;
        v317 = __CFADD__(v304, v308);
        v318 = v317 + __CFADD__(v309, v316) + v302 + v300 * v192 + v305 * v202 + HIDWORD(v306) + HIDWORD(v303) + HIDWORD(v307);
        v319 = __bid_recip_scale[v297];
        v136 = ((2 * ((__PAIR128__(v312, v315) + __PAIR128__(v314, v318)) >> 64)) << ~v319) | ((v315 + v318) >> v319);
        v46 = ((__PAIR128__(v312, v315) + __PAIR128__(v314, v318)) >> 64) >> v319;
LABEL_305:
        v175 = v297 + v21;
        v173 = v136;
LABEL_345:
        v370 = v19 ^ v20;
        v136 = v173;
        goto LABEL_346;
      }

      v273 = v173 & 0x3FFFFFF;
      v274 = 0;
      v275 = v173 >> 26;
      if ((v173 >> 26))
      {
        v276 = &__bid_convert_table;
        do
        {
          v277 = &v276[8 * (v275 & 0x7F)];
          v273 += *v277;
          v274 += *(v277 + 1);
          if (v273 > 0x5F5E0FF)
          {
            v273 -= 100000000;
            ++v274;
          }

          v276 += 1024;
          v43 = v275 > 0x7F;
          LODWORD(v275) = v275 >> 7;
        }

        while (v43);
        v278 = v274 - 100000000;
        if (v274 - 100000000 > 0x5F5E0FF)
        {
          v278 = v274 - 200000000;
        }

        if (v274 > 0x5F5E0FF)
        {
          v274 = v278;
        }
      }

      v279 = v21 + 17;
      if (v273 | v274)
      {
        v280 = v273 == 0;
        if (!v273)
        {
          v273 = v274;
        }

        v281 = (109951163 * v273) >> 40;
        LODWORD(v282) = v273 - 10000 * v281;
        v283 = (8 * v280) | 4;
        if (v282)
        {
          v283 = 8 * v280;
          v282 = v282;
        }

        else
        {
          v282 = v281;
        }

        if ((v282 & 1) == 0)
        {
          v283 |= (__bid_packed_10000_zeros[v282 >> 3] >> (v282 & 6)) & 3;
        }

        if (!v283)
        {
          goto LABEL_344;
        }
      }

      else
      {
        v283 = 16;
      }

      v371 = __bid_reciprocals10_64[v283] * HIDWORD(v173);
      v173 = (HIDWORD(v371) + HIDWORD(__bid_reciprocals10_64[v283]) * HIDWORD(v173) + ((HIDWORD(__bid_reciprocals10_64[v283]) * v173 + v371 + ((__bid_reciprocals10_64[v283] * v173) >> 32)) >> 32)) >> __bid_short_recip_scale[v283];
LABEL_344:
      v46 = 0;
      v175 = v279 + v283;
      goto LABEL_345;
    }

    v176 = a3 + v10 * 1.84467441e19;
    v177 = (a1 + v17 * 1.84467441e19) / v176;
    if (v10 || a3 >> 28 || v22 > v17)
    {
      v190 = 0;
      if (v10 >> 13)
      {
        v187 = v17;
        v185 = a1;
        v189 = 0;
LABEL_310:
        v321 = v177;
        v322 = v177 >> 32;
        v323 = v322 * a3;
        v324 = v177 * HIDWORD(a3) + v323 + ((v177 * a3) >> 32);
        v325 = __PAIR128__(v187, v185) - __PAIR128__(v10 * v177 + v322 * HIDWORD(a3) + HIDWORD(v323) + HIDWORD(v324), (v177 * a3) | (v324 << 32));
        v231 = (__PAIR128__(v187, v185) - __PAIR128__(v10 * v177 + v322 * HIDWORD(a3) + HIDWORD(v323) + HIDWORD(v324), (v177 * a3) | (v324 << 32))) >> 64;
        v232 = v325;
        if (v231 < 0)
        {
          v328 = v321 - 1;
          v231 = (__PAIR128__(v231, v325) + __PAIR128__(v10, a3)) >> 64;
          v232 = v325 + a3;
          v321 -= 2;
          v329 = __PAIR128__(v231, v325 + a3) + __PAIR128__(v10, a3);
          v330 = v231 >= 0;
          if (v231 < 0)
          {
            v231 = (__PAIR128__(v231, v325 + a3) + __PAIR128__(v10, a3)) >> 64;
          }

          else
          {
            v321 = v328;
          }

          if (!v330)
          {
            v232 = v329;
          }
        }

        else if (v231 > v10 || (v231 == v10 ? (v326 = v325 >= a3) : (v326 = 0), v326))
        {
          ++v321;
          v327 = __PAIR128__(v231 - v10, v325) - a3;
          v231 = *(&v327 + 1);
          v232 = v327;
        }

        v136 = v321 + v190;
        if (__CFADD__(v321, v190))
        {
          v46 = v189 + 1;
        }

        else
        {
          v46 = v189;
        }

        goto LABEL_326;
      }

      v189 = 0;
      v185 = a1;
      v187 = v17;
      *(&v284 + 1) = v10;
      *&v284 = a3;
      v191 = v284 >> 13;
    }

    else
    {
      v178 = (v177 * 8.67361738e-19) - 4;
      v179 = HIDWORD(v178) * a3;
      v180 = v178 * a3;
      v181 = HIDWORD(v179);
      v182 = HIDWORD(v180) + v179;
      *(&v183 + 1) = (HIDWORD(v182) + v181);
      *&v183 = v180 & 0xFFFFFFF0 | (v182 << 32);
      v184 = v17 - (v183 >> 4);
      v13 = a1 >= v180 << 60;
      v185 = a1 - (v180 << 60);
      v186 = !v13;
      v187 = v184 - v186;
      v188 = v185 + (v184 - v186) * 1.84467441e19;
      v189 = v178 >> 4;
      v177 = v188 / v176;
      v190 = v178 << 60;
      v191 = a3 >> 13;
    }

    if (v187 > v191 || v187 == v191 && v185 > a3 << 51)
    {
      v285 = v177 * 1.77635684e-15;
      v286 = v285 - 1;
      v287 = HIDWORD(v286) * a3;
      v288 = v286 * a3;
      v289 = (v285 - 1) * HIDWORD(a3) + v287 + HIDWORD(v288);
      *(&v290 + 1) = (v286 * v10 + HIDWORD(v286) * HIDWORD(a3) + HIDWORD(v287) + HIDWORD(v289));
      *&v290 = v288 & 0xFFFF8000 | (v289 << 32);
      v291 = v187 - (v290 >> 15);
      v13 = v185 >= v288 << 49;
      v185 -= v288 << 49;
      v292 = !v13;
      v187 = v291 - v292;
      v13 = __CFADD__(v190, v286 << 49);
      v190 += v286 << 49;
      v189 += v13 + (v286 >> 15);
      v177 = (v185 + v187 * 1.84467441e19) / v176;
    }

    goto LABEL_310;
  }

  if ((~a4 & 0x7C00000000000000) != 0)
  {
    if (v7 == 0x7800000000000000)
    {
      v37 = v19 ^ v20;
      goto LABEL_185;
    }

    *a6 |= 4u;
    goto LABEL_184;
  }

  if ((~a4 & 0x7E00000000000000) == 0)
  {
    *a6 |= 1u;
  }

  v390 = a3;
  v391 = v10 & 0xFDFFFFFFFFFFFFFFLL;
  return v390;
}

unint64_t __bid128_exp(unint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
  {
    return 0;
  }

  v6 = a1;
  if ((a2 & 0x7C00000000000000) != 0x7C00000000000000)
  {
    if (__bid128_isZero(a1, a2))
    {
      return 1;
    }

    if (__bid128_quiet_greater(v6, a2, 0x3A98uLL, 0x3040000000000000, a4))
    {
      v8 = 0xD43EDE775707FD0ALL;
      v9 = 0x5550558ADA285F8BLL;
      v10 = 0xD43EDE775707FD0ALL;
      v11 = 0x5550558ADA285F8BLL;
    }

    else if (__bid128_quiet_less(v6, a2, 0x3A98uLL, 0xB040000000000000, a4))
    {
      v8 = 1;
      v9 = 0x160000000000000;
      v10 = 1;
      v11 = 0x160000000000000;
    }

    else
    {
      v17 = 0uLL;
      v16[0] = 0;
      v16[1] = 0;
      v15 = 0uLL;
      v14 = 0uLL;
      bid128_to_binary128_2part(v15.n128_u64, v16, v6, a2);
      if (bid_f128_cmp(&v15, &c_11000_1243, 4u))
      {
        bid_f128_sub(&v15, &v15, &c_11000_1243);
        bid_f128_exp(&v17, &v15);
        bid_f128_mul(&v14, &v17, v16);
        bid_f128_add(&v17, &v17, &v14);
        v8 = __binary128_to_bid128(v17.n128_u64[0], v17.n128_u64[1], a3, a4);
        v10 = 0xD43EDE775707FD0ALL;
        v11 = 0x5550558ADA285F8BLL;
      }

      else
      {
        if (!bid_f128_cmp(&v15, &c_neg_11000, 1u))
        {
          bid_f128_exp(&v17, &v15);
          bid_f128_mul(&v14, &v17, v16);
          bid_f128_add(&v17, &v17, &v14);
          return __binary128_to_bid128(v17.n128_u64[0], v17.n128_u64[1], a3, a4);
        }

        bid_f128_add(&v15, &v15, &c_11000_1243);
        bid_f128_exp(&v17, &v15);
        bid_f128_mul(&v14, &v17, v16);
        bid_f128_add(&v17, &v17, &v14);
        v8 = __binary128_to_bid128(v17.n128_u64[0], v17.n128_u64[1], a3, a4);
        v10 = 0x995AB6781DD4B6F5;
        v11 = 0xAAB1C2BBC58F8F5;
      }
    }

    return __bid128_mul(v8, v9, v10, v11, a3, a4);
  }

  if ((~a2 & 0x7E00000000000000) == 0)
  {
    *a4 |= 1u;
  }

  if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
  {
    return 0;
  }

  return v6;
}

uint64_t bid128_ext_fma(int *a1, int *a2, int *a3, int *a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unsigned int a11, int *a12)
{
  v16 = a10;
  v588 = *MEMORY[0x1E69E9840];
  v584 = xmmword_1C1F58DD0;
  v583 = 0uLL;
  v582 = 0;
  v581 = 0;
  v580 = 0uLL;
  v579 = 0uLL;
  memset(v587, 0, sizeof(v587));
  v17 = a8 & 0x7C00000000000000;
  v577 = 0u;
  v578 = 0u;
  if ((a8 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((a8 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || (a8 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a7 > 0x38C15B09FFFFFFFFLL)
    {
      a7 = 0;
      a8 &= 0xFFFFC00000000000;
    }

    if ((~a8 & 0x7E00000000000000) == 0)
    {
      *a12 |= 1u;
      *&v584 = a7;
      *(&v584 + 1) = a8 & 0xFC003FFFFFFFFFFFLL;
LABEL_69:
      v21 = 0;
      goto LABEL_70;
    }

    *&v584 = a7;
    *(&v584 + 1) = a8 & 0xFC003FFFFFFFFFFFLL;
    if ((~a10 & 0x7E00000000000000) != 0 && (a6 & 0x7E00000000000000) != 0x7E00000000000000)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v18 = a9;
  v19 = a10 & 0x7C00000000000000;
  if ((a10 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((a10 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (a10 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a9 > 0x38C15B09FFFFFFFFLL)
    {
      v18 = 0;
      v16 = a10 & 0xFFFFC00000000000;
    }

    if ((~v16 & 0x7E00000000000000) == 0)
    {
      *a12 |= 1u;
      *&v584 = v18;
      *(&v584 + 1) = v16 & 0xFC003FFFFFFFFFFFLL;
      goto LABEL_69;
    }

    *&v584 = v18;
    *(&v584 + 1) = v16 & 0xFC003FFFFFFFFFFFLL;
    if ((~a6 & 0x7E00000000000000) != 0)
    {
      goto LABEL_69;
    }

LABEL_68:
    *a12 |= 1u;
    goto LABEL_69;
  }

  v20 = a6 & 0x7C00000000000000;
  if ((a6 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((a6 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || (a6 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a5 > 0x38C15B09FFFFFFFFLL)
    {
      a5 = 0;
      a6 &= 0xFFFFC00000000000;
    }

    if ((~a6 & 0x7E00000000000000) == 0)
    {
      *a12 |= 1u;
    }

    v21 = 0;
    *&v584 = a5;
    *(&v584 + 1) = a6 & 0xFC003FFFFFFFFFFFLL;
LABEL_70:
    *a1 = 0;
    *a2 = 0;
LABEL_71:
    *a3 = 0;
    goto LABEL_72;
  }

  v22 = a6 & 0x1FFFFFFFFFFFFLL;
  if (v20 == 0x7800000000000000)
  {
    v23 = 0;
  }

  else if ((~a6 & 0x6000000000000000) != 0)
  {
    v23 = a6 & 0x7FFE000000000000;
    if (v22 > 0x1ED09BEAD87C0 || v22 == 0x1ED09BEAD87C0 && a5 > 0x378D8E63FFFFFFFFLL)
    {
      v22 = 0;
      a5 = 0;
    }
  }

  else
  {
    v22 = 0;
    a5 = 0;
    v23 = (4 * a6) & 0x7FFE000000000000;
  }

  v24 = a8 & 0x1FFFFFFFFFFFFLL;
  if (v17 == 0x7800000000000000)
  {
    v25 = 0;
  }

  else if ((~a8 & 0x6000000000000000) != 0)
  {
    v25 = a8 & 0x7FFE000000000000;
    if (v24 > 0x1ED09BEAD87C0 || v24 == 0x1ED09BEAD87C0 && a7 > 0x378D8E63FFFFFFFFLL)
    {
      v24 = 0;
      a7 = 0;
    }
  }

  else
  {
    v24 = 0;
    a7 = 0;
    v25 = (4 * a8) & 0x7FFE000000000000;
  }

  v26 = a10 & 0x1FFFFFFFFFFFFLL;
  if (v19 == 0x7800000000000000)
  {
    v27 = 0;
LABEL_46:
    v28 = a9;
    goto LABEL_53;
  }

  if ((~a10 & 0x6000000000000000) != 0)
  {
    v27 = a10 & 0x7FFE000000000000;
    if (v26 <= 0x1ED09BEAD87C0 && (v26 != 0x1ED09BEAD87C0 || a9 <= 0x378D8E63FFFFFFFFLL))
    {
      goto LABEL_46;
    }

    v26 = 0;
    v28 = 0;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v27 = (4 * a10) & 0x7FFE000000000000;
  }

LABEL_53:
  v29 = a10 & 0x8000000000000000;
  v30 = (a8 ^ a6) & 0x8000000000000000;
  if (v20 == 0x7800000000000000)
  {
    if (v17 != 0x7800000000000000 && !(v24 | a7))
    {
      goto LABEL_67;
    }

    if (v19 == 0x7800000000000000)
    {
      if (v30 != v29)
      {
        goto LABEL_67;
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v17 == 0x7800000000000000)
  {
    if (v19 == 0x7800000000000000)
    {
      if (v30 != v29 || !(v22 | a5))
      {
        goto LABEL_67;
      }

LABEL_63:
      v31 = v29 | 0x7800000000000000;
      goto LABEL_74;
    }

    if (!(v22 | a5))
    {
LABEL_67:
      v584 = xmmword_1C1F58CF0;
      goto LABEL_68;
    }

LABEL_73:
    v31 = v30 | 0x7800000000000000;
    goto LABEL_74;
  }

  if (v19 == 0x7800000000000000)
  {
    v21 = 0;
    *&v584 = 0;
    *(&v584 + 1) = v29 | 0x7800000000000000;
    goto LABEL_70;
  }

  v34 = a11;
  v35 = (v23 >> 49) - 6176;
  v36 = v35 + (v25 >> 49);
  if (v36 >= 0)
  {
    v37 = v36 << 49;
  }

  else
  {
    v37 = 0;
  }

  if (!(v22 | a5))
  {
    if (v26 | v28)
    {
      goto LABEL_90;
    }

LABEL_86:
    if (v37 >= v27)
    {
      v37 = v27;
    }

    *(&v584 + 1) = v37;
    if (v30 == v29)
    {
      v31 = v37 | v29;
    }

    else
    {
      if (a11 != 1)
      {
        goto LABEL_75;
      }

      v31 = v37 | 0x8000000000000000;
    }

LABEL_74:
    *(&v584 + 1) = v31;
LABEL_75:
    *&v584 = 0;
    goto LABEL_69;
  }

  if (!v24 && !a7 && !v26 && !v28)
  {
    goto LABEL_86;
  }

LABEL_90:
  v38 = v22 | a5;
  if (v22 | a5)
  {
    v39 = HIDWORD(a5);
    if (!(a5 >> 53))
    {
      v39 = a5;
    }

    v40 = -1022;
    if (a5 >> 53)
    {
      v40 = -990;
    }

    if (v22)
    {
      v39 = v22;
      v40 = -958;
    }

    v41 = &__bid_nr_digits + 32 * v40 + 32 * (COERCE_UNSIGNED_INT64(v39) >> 52);
    v43 = *(v41 - 8);
    v42 = v41 - 32;
    v38 = v43;
    if (!v43)
    {
      v38 = *(v42 + 6);
      v44 = *(v42 + 1);
      if (v22 > v44 || v22 == v44 && a5 >= *(v42 + 2))
      {
        ++v38;
      }
    }
  }

  v45 = v24 | a7;
  if (v24 | a7)
  {
    v46 = HIDWORD(a7);
    if (!(a7 >> 53))
    {
      v46 = a7;
    }

    v47 = -1022;
    if (a7 >> 53)
    {
      v47 = -990;
    }

    if (v24)
    {
      v46 = v24;
      v47 = -958;
    }

    v48 = &__bid_nr_digits + 32 * v47 + 32 * (COERCE_UNSIGNED_INT64(v46) >> 52);
    v50 = *(v48 - 8);
    v49 = v48 - 32;
    v45 = v50;
    if (!v50)
    {
      v45 = *(v49 + 6);
      v51 = *(v49 + 1);
      if (v24 > v51 || v24 == v51 && a7 >= *(v49 + 2))
      {
        ++v45;
      }
    }
  }

  if (v26 | v28)
  {
    v52 = HIDWORD(v28);
    if (!(v28 >> 53))
    {
      v52 = v28;
    }

    v53 = -1022;
    if (v28 >> 53)
    {
      v53 = -990;
    }

    if (v26)
    {
      v52 = v26;
      v53 = -958;
    }

    v54 = &__bid_nr_digits + 32 * v53 + 32 * (COERCE_UNSIGNED_INT64(v52) >> 52);
    v57 = *(v54 - 8);
    v55 = v54 - 32;
    v56 = v57;
    if (!v57)
    {
      v56 = *(v55 + 6);
      v58 = *(v55 + 1);
      if (v26 > v58 || v26 == v58 && v28 >= *(v55 + 2))
      {
        v56 = (v56 + 1);
      }
    }
  }

  else
  {
    v56 = 0;
  }

  if (!(v22 | a5) || !(v24 | a7))
  {
    v182 = v27 >= v37;
    v59 = v27 - v37;
    if (v59 != 0 && v182)
    {
      v60 = v59 >> 49;
      if (34 - v56 >= v60)
      {
        v60 = v60;
      }

      else
      {
        v60 = (34 - v56);
      }

      if (v60)
      {
        if (v56 > 19)
        {
          v79 = __bid_ten2k64[v60];
          v80 = HIDWORD(v79) * v28;
          v81 = v79 * HIDWORD(v28) + v80 + ((v79 * v28) >> 32);
          *&v584 = (v79 * v28) | (v81 << 32);
          v16 = HIDWORD(v80) + HIDWORD(v79) * HIDWORD(v28) + HIDWORD(v81) + v79 * v26;
        }

        else if (v60 > 19)
        {
          v85 = __bid_ten2k128[2 * (v60 - 20)];
          v86 = __bid_ten2k128[2 * (v60 - 20) + 1];
          v87 = HIDWORD(v85);
          v88 = v85 * HIDWORD(v28);
          v89 = v85 * v28;
          v90 = v87 * v28 + v88 + HIDWORD(v89);
          *&v584 = v89 | (v90 << 32);
          v16 = HIDWORD(v88) + v87 * HIDWORD(v28) + HIDWORD(v90) + v86 * v28;
        }

        else
        {
          v61 = __bid_ten2k64[v60];
          v62 = HIDWORD(v61);
          v63 = v61 * HIDWORD(v28);
          v64 = v61 * v28;
          v65 = v62 * v28 + v63 + HIDWORD(v64);
          v16 = HIDWORD(v63) + v62 * HIDWORD(v28) + HIDWORD(v65);
          *&v584 = v64 | (v65 << 32);
        }
      }

      else
      {
        *&v584 = a9;
      }

      *(&v584 + 1) = (v27 - (v60 << 49)) & 0x7FFE000000000000 | v16 | v29;
    }

    else
    {
      *&v584 = v28;
      *(&v584 + 1) = v26 | v29 | v27;
    }

    goto LABEL_69;
  }

  v66 = v27 >> 49;
  v67 = v35 + (v25 >> 49) - 6176;
  v68 = (v45 + v38);
  if (v68 <= 19)
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = a7 * a5;
    v73 = v68 - 1;
    if (a7 * a5 >= __bid_ten2k64[v73])
    {
      v68 = v68;
    }

    else
    {
      v68 = v73;
    }

    goto LABEL_219;
  }

  if (v68 == 20)
  {
    v69 = 0;
    v70 = 0;
    v74 = a7 * HIDWORD(a5);
    v75 = HIDWORD(a7) * a5 + v74 + ((a7 * a5) >> 32);
    v76 = HIDWORD(v74) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v75);
    v72 = (a7 * a5) | (v75 << 32);
    v77 = v76 == 0;
    v78 = v72 < 0x8AC7230489E80000;
    if (v77 && v78)
    {
      v68 = 19;
    }

    else
    {
      v68 = 20;
    }

    if (v77 && v78)
    {
      v71 = 0;
    }

    else
    {
      v71 = v76;
    }

    goto LABEL_219;
  }

  if (v68 > 0x26)
  {
    v566 = v56;
    if (v68 == 39)
    {
      v552 = v30;
      v91 = HIDWORD(v24);
      v92 = v24 * HIDWORD(a5);
      v93 = HIDWORD(v92) + HIDWORD(v24) * HIDWORD(a5);
      v94 = HIDWORD(v24) * a5 + v92 + ((v24 * a5) >> 32);
      v95 = a7 * HIDWORD(a5);
      v96 = HIDWORD(a7) * a5 + v95 + ((a7 * a5) >> 32);
      v97 = (a7 * a5) | (v96 << 32);
      v98 = __PAIR128__(v93, (v24 * a5) | (v94 << 32)) + __PAIR128__(HIDWORD(v94), HIDWORD(v95) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v96));
      v99 = HIDWORD(v22);
      LODWORD(v93) = v22;
      v100 = v24 * HIDWORD(v22);
      v101 = v24 * v22;
      v102 = v91 * v22;
      v103 = HIDWORD(v100) + v91 * HIDWORD(v22);
      v104 = v102 + v100 + HIDWORD(v101);
      v105 = HIDWORD(v104);
      v106 = v101 | (v104 << 32);
      v107 = a7 * HIDWORD(v22);
      v108 = a7 * v22;
      v109 = HIDWORD(v107) + HIDWORD(a7) * v99;
      v110 = HIDWORD(a7) * v93 + v107 + HIDWORD(v108);
      v111 = v108 | (v110 << 32);
      v112 = __PAIR128__(v103, v106) + __PAIR128__(v105, v109 + HIDWORD(v110));
      v71 = v98 + v111;
      v182 = __CFADD__(__CFADD__(v98, v111), v106 + v109 + HIDWORD(v110));
      v113 = __CFADD__(v98, v111) + v106 + v109 + HIDWORD(v110);
      v114 = v182;
      v70 = *(&v98 + 1) + v113;
      if (__CFADD__(*(&v98 + 1), v113))
      {
        v115 = 1;
      }

      else
      {
        v115 = v114;
      }

      v69 = *(&v112 + 1) + v115;
      if (v70)
      {
        goto LABEL_167;
      }

      if (v71 >= 0x4B3B4CA85A86C47ALL)
      {
        if (v71 == 0x4B3B4CA85A86C47ALL && v96 << 32 < 0x98A224000000000)
        {
          v70 = 0;
          v68 = 38;
          v71 = 0x4B3B4CA85A86C47ALL;
          goto LABEL_168;
        }

LABEL_167:
        v68 = 39;
LABEL_168:
        v30 = v552;
LABEL_217:
        v72 = v97;
        goto LABEL_218;
      }

      v70 = 0;
      v68 = 38;
      v30 = v552;
      v72 = v97;
LABEL_218:
      v56 = v566;
      goto LABEL_219;
    }

    v559 = (v45 + v38);
    v547 = v35 + (v25 >> 49) - 6176;
    if (v68 <= 0x39)
    {
      if (v22)
      {
        if (v24)
        {
          v116 = HIDWORD(v24);
          v117 = v24 * HIDWORD(a5);
          v118 = HIDWORD(v117) + HIDWORD(v24) * HIDWORD(a5);
          v119 = HIDWORD(v24) * a5 + v117 + ((v24 * a5) >> 32);
          v120 = a7 * HIDWORD(a5);
          v121 = HIDWORD(a7) * a5 + v120 + ((a7 * a5) >> 32);
          v122 = (a7 * a5) | (v121 << 32);
          v123 = __PAIR128__(v118, (v24 * a5) | (v119 << 32)) + __PAIR128__(HIDWORD(v119), HIDWORD(v120) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v121));
          v124 = HIDWORD(v22);
          v125 = v22;
          v126 = v24 * HIDWORD(v22);
          v127 = v24 * v22;
          v128 = v116 * v22;
          v129 = HIDWORD(v126) + v116 * HIDWORD(v22);
          v130 = v128 + v126 + HIDWORD(v127);
          v131 = HIDWORD(v130);
          v132 = v127 | (v130 << 32);
          v133 = a7 * HIDWORD(v22);
          v134 = a7 * v22;
          v135 = HIDWORD(v133) + HIDWORD(a7) * v124;
          v136 = HIDWORD(a7) * v125 + v133 + HIDWORD(v134);
          v137 = v134 | (v136 << 32);
          v138 = __PAIR128__(v129, v132) + __PAIR128__(v131, v135 + HIDWORD(v136));
          v71 = v123 + v137;
          v182 = __CFADD__(__CFADD__(v123, v137), v132 + v135 + HIDWORD(v136));
          v139 = __CFADD__(v123, v137) + v132 + v135 + HIDWORD(v136);
          v140 = v182;
          v141 = *(&v123 + 1) + v139;
          if (__CFADD__(*(&v123 + 1), v139))
          {
            v142 = 1;
          }

          else
          {
            v142 = v140;
          }

          v143 = *(&v138 + 1) + v142;
LABEL_208:
          v193 = &__bid_ten2k256 + 32 * (v559 - 40);
          v194 = *(v193 + 2);
          if (v141 < v194 || v141 == v194 && __PAIR128__(v71, v122) < *v193)
          {
            v68 = (v559 - 1);
            v67 = v547;
            v72 = v122;
          }

          else
          {
            v67 = v547;
            v72 = v122;
            v68 = v559;
          }

          v69 = v143;
          v70 = v141;
          goto LABEL_218;
        }

        v143 = 0;
        v184 = HIDWORD(v22);
        v185 = HIDWORD(a7) * v22;
        v186 = a7 * v22;
        v187 = a7 * v184;
        v175 = HIDWORD(v185) + HIDWORD(a7) * v184;
        v188 = HIDWORD(a7) * a5;
        v189 = v187 + v185 + HIDWORD(v186);
        v190 = v186 | (v189 << 32);
        v179 = HIDWORD(v189);
        v191 = a7 * HIDWORD(a5) + v188 + ((a7 * a5) >> 32);
        v192 = HIDWORD(v188) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v191);
        v122 = (a7 * a5) | (v191 << 32);
        v182 = __CFADD__(v190, v192);
        v71 = v190 + v192;
      }

      else
      {
        v143 = 0;
        v171 = HIDWORD(v24);
        v172 = v24 * HIDWORD(a5);
        v173 = v24 * a5;
        v174 = v171 * a5;
        v175 = HIDWORD(v172) + v171 * HIDWORD(a5);
        v176 = a7 * HIDWORD(a5);
        v177 = v174 + v172 + HIDWORD(v173);
        v178 = v173 | (v177 << 32);
        v179 = HIDWORD(v177);
        v180 = HIDWORD(a7) * a5 + v176 + ((a7 * a5) >> 32);
        v181 = HIDWORD(v176) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v180);
        v122 = (a7 * a5) | (v180 << 32);
        v182 = __CFADD__(v178, v181);
        v71 = v178 + v181;
      }

      v141 = v179 + v182 + v175;
      goto LABEL_208;
    }

    v144 = HIDWORD(v24);
    v145 = v24 * HIDWORD(a5);
    v146 = HIDWORD(v145) + HIDWORD(v24) * HIDWORD(a5);
    v147 = HIDWORD(v24) * a5 + v145 + ((v24 * a5) >> 32);
    v148 = a7 * HIDWORD(a5);
    v149 = HIDWORD(a7) * a5 + v148 + ((a7 * a5) >> 32);
    v97 = (a7 * a5) | (v149 << 32);
    v150 = __PAIR128__(v146, (v24 * a5) | (v147 << 32)) + __PAIR128__(HIDWORD(v147), HIDWORD(v148) + HIDWORD(a7) * HIDWORD(a5) + HIDWORD(v149));
    v151 = HIDWORD(v22);
    LODWORD(v146) = v22;
    v152 = v24 * HIDWORD(v22);
    v153 = v24 * v22;
    v154 = v144 * v22;
    v155 = HIDWORD(v152) + v144 * HIDWORD(v22);
    v156 = v154 + v152 + HIDWORD(v153);
    v157 = HIDWORD(v156);
    v158 = v153 | (v156 << 32);
    v159 = a7 * HIDWORD(v22);
    v160 = a7 * v22;
    v161 = HIDWORD(v159) + HIDWORD(a7) * v151;
    v162 = HIDWORD(a7) * v146 + v159 + HIDWORD(v160);
    v163 = v160 | (v162 << 32);
    v164 = __PAIR128__(v155, v158) + __PAIR128__(v157, v161 + HIDWORD(v162));
    v71 = v150 + v163;
    v182 = __CFADD__(__CFADD__(v150, v163), v158 + v161 + HIDWORD(v162));
    v165 = __CFADD__(v150, v163) + v158 + v161 + HIDWORD(v162);
    v166 = v182;
    v70 = *(&v150 + 1) + v165;
    if (__CFADD__(*(&v150 + 1), v165))
    {
      v167 = 1;
    }

    else
    {
      v167 = v166;
    }

    v168 = *(&v164 + 1) + v167;
    if (v559 == 58)
    {
      v69 = *(&v164 + 1) + v167;
      if (!v168)
      {
        if (v70 < 0x28C87CB5C89A2571)
        {
          v69 = 0;
          v68 = 57;
          goto LABEL_216;
        }

        if (v70 == 0x28C87CB5C89A2571)
        {
          if (v71 < 0xEBFDCB54864ADA83)
          {
            v69 = 0;
            v68 = 57;
            v70 = 0x28C87CB5C89A2571;
            goto LABEL_216;
          }

          if (v71 == 0xEBFDCB54864ADA83 && v149 >> 25 < 0x25)
          {
            v69 = 0;
            v68 = 57;
            v70 = 0x28C87CB5C89A2571;
            v71 = 0xEBFDCB54864ADA83;
            goto LABEL_216;
          }
        }
      }

      v68 = 58;
    }

    else
    {
      v169 = &__bid_ten2k256 + 32 * (v559 - 40);
      v170 = *(v169 + 3);
      v69 = v168;
      if (v168 >= v170)
      {
        if (v168 != v170 || (v183 = *(v169 + 2), v70 >= v183) && (v70 != v183 || __PAIR128__(v71, v97) >= *v169))
        {
          v67 = v547;
          v72 = v97;
          v68 = v559;
          goto LABEL_218;
        }
      }

      v68 = (v559 - 1);
    }

LABEL_216:
    v67 = v547;
    goto LABEL_217;
  }

  if (v38 > 19)
  {
    v82 = HIDWORD(a7) * a5;
    v83 = a7 * HIDWORD(a5) + v82 + ((a7 * a5) >> 32);
    v72 = (a7 * a5) | (v83 << 32);
    v84 = a7 * v22 + HIDWORD(a7) * HIDWORD(a5);
  }

  else
  {
    v82 = a7 * HIDWORD(a5);
    v83 = HIDWORD(a7) * a5 + v82 + ((a7 * a5) >> 32);
    v72 = (a7 * a5) | (v83 << 32);
    v84 = v24 * a5 + HIDWORD(a7) * HIDWORD(a5);
  }

  v71 = v84 + HIDWORD(v82) + HIDWORD(v83);
  v69 = 0;
  v70 = 0;
  if (__PAIR128__(v71, v72) < *&__bid_ten2k128[2 * (v68 - 21)])
  {
    v68 = (v68 - 1);
  }

LABEL_219:
  v195 = v66 - 6176;
  if (!(v26 | v28))
  {
    v196 = *a12;
    *a12 = 0;
    if (v68 < 35)
    {
      if (v67 < 6112 || v68 + v67 > 6145)
      {
        *&v584 = v72;
        *(&v584 + 1) = v71;
      }

      else
      {
        v206 = v67 - 6111;
        if (v68 > 19)
        {
          v229 = __bid_ten2k64[v206];
          v230 = HIDWORD(v229) * v72;
          v231 = v229 * HIDWORD(v72) + v230 + ((v229 * v72) >> 32);
          *&v584 = (v229 * v72) | (v231 << 32);
          *(&v584 + 1) = HIDWORD(v230) + HIDWORD(v229) * HIDWORD(v72) + HIDWORD(v231) + v229 * v71;
        }

        else if (v67 > 0x17F2)
        {
          v279 = __bid_ten2k128[2 * (v67 - 6131)];
          v280 = HIDWORD(v279);
          v281 = v279 * HIDWORD(v72);
          v282 = v279 * v72;
          v283 = v280 * v72 + v281 + HIDWORD(v282);
          v284 = HIDWORD(v281) + v280 * HIDWORD(v72) + HIDWORD(v283) + __bid_ten2k128[2 * (v67 - 6131) + 1] * v72;
          *&v584 = v282 | (v283 << 32);
          *(&v584 + 1) = v284;
        }

        else
        {
          v207 = __bid_ten2k64[v206];
          v208 = HIDWORD(v207);
          v209 = v207 * HIDWORD(v72);
          v210 = v207 * v72;
          v211 = v208 * v72 + v209 + HIDWORD(v210);
          *&v584 = v210 | (v211 << 32);
          *(&v584 + 1) = HIDWORD(v209) + v208 * HIDWORD(v72) + HIDWORD(v211);
        }

        v68 = (v68 + v206);
        v67 = 6111;
      }
    }

    else
    {
      v567 = v196;
      v197 = v68 - 34;
      v556 = v66 - 6176;
      v198 = v67;
      if (v68 > 0x26)
      {
        *&v585 = v72;
        *(&v585 + 1) = v71;
        if (v68 > 0x39)
        {
          *&v586 = v70;
          *(&v586 + 1) = v69;
          __bid_round256_58_76(v68, v68 - 34, &v585, &v577, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
          v214 = v577;
        }

        else
        {
          v586 = v70;
          __bid_round192_39_57(v68, v68 - 34, &v585, v587, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
          v214 = v587[0];
        }

        v584 = v214;
      }

      else
      {
        *&v580 = v72;
        *(&v580 + 1) = v71;
        __bid_round128_19_38(v68, v68 - 34, v72, v71, &v584, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
      }

      v67 = v197 + v198;
      v34 = a11;
      v195 = v556;
      if (v582)
      {
        v196 = v567;
        if (v67 == -6177)
        {
          *a12 |= 0x30u;
          v68 = 34;
          v67 = -6176;
        }

        else
        {
          ++v67;
          v68 = 34;
        }
      }

      else
      {
        v68 = 34;
        v196 = v567;
      }
    }

    if (v68 + v67 >= 6146)
    {
      if (v34)
      {
        *(&v584 + 1) |= v30;
        v21 = v583;
        v226 = DWORD1(v583);
        v286 = DWORD2(v583);
        v285 = HIDWORD(v583);
        bid_rounding_correction(v34, SDWORD1(v583), v583, SHIDWORD(v583), SDWORD2(v583), v67, &v584, a12);
        v287 = *a12;
      }

      else
      {
        *&v584 = 0;
        *(&v584 + 1) = v30 | 0x7800000000000000;
        v287 = *a12 | 0x28;
        v286 = DWORD2(v583);
        v285 = HIDWORD(v583);
        v21 = v583;
        v226 = DWORD1(v583);
      }

      *a12 = v287 | v196;
      *a1 = v285;
      *a2 = v286;
LABEL_519:
      *a3 = v226;
      goto LABEL_72;
    }

    if (v68 + v67 <= -6143)
    {
      v288 = v196;
      if (v67 <= -6177)
      {
        v289 = -6176 - v67;
        v291 = v583;
        v290 = DWORD1(v583);
        v292 = DWORD2(v583);
        v293 = HIDWORD(v583);
        v583 = 0uLL;
        v294 = v68 - (-6176 - v67);
        v551 = v34;
        v570 = v292;
        if (v68 > -6176 - v67)
        {
          if (v68 <= 0x12)
          {
            __bid_round64_2_18(v68, v289, v584, &v581, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
            v295 = &__bid_ten2k64[v294];
            if (!v582)
            {
              v295 = &v581;
            }

            v296 = *v295;
LABEL_465:
            *&v584 = v296;
            goto LABEL_603;
          }

          __bid_round128_19_38(v68, v289, v584, *(&v584 + 1), &v584, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
          if (v582)
          {
            if (v294 > 19)
            {
              v584 = *&__bid_ten2k128[2 * (v294 - 20)];
              goto LABEL_603;
            }

            v296 = __bid_ten2k64[v294];
            goto LABEL_465;
          }

LABEL_603:
          if (v291 | v293 && HIDWORD(v583))
          {
            v447 = v584;
            *&v584 = v584 - 1;
            if (!v447)
            {
              --*(&v584 + 1);
            }

            HIDWORD(v583) = 0;
          }

          else
          {
            if (v290 | v570 && DWORD2(v583))
            {
              v182 = __CFADD__(v584, 1);
              *&v584 = v584 + 1;
              if (v182)
              {
                ++*(&v584 + 1);
              }

              DWORD2(v583) = 0;
              LODWORD(v583) = 1;
              goto LABEL_627;
            }

            if (v583 != 0)
            {
              v448 = (v291 | v293) == 0;
              if (!DWORD2(v583))
              {
                v448 = 1;
              }

              if (v448)
              {
                v449 = (v290 | v570) == 0;
                if (!HIDWORD(v583))
                {
                  v449 = 1;
                }

                if (v449)
                {
                  goto LABEL_627;
                }

                *&v583 = 1;
              }

              else
              {
                *&v583 = 0x100000000;
              }

              *(&v583 + 1) = 0;
LABEL_627:
              v67 = -6176;
              v34 = v551;
              goto LABEL_628;
            }

            LODWORD(v583) = (v291 | v293) != 0;
            if (!(v290 | v570))
            {
              goto LABEL_627;
            }
          }

          DWORD1(v583) = 1;
          goto LABEL_627;
        }

        if (v68 != v289)
        {
          v584 = 0uLL;
          DWORD1(v583) = 1;
          goto LABEL_603;
        }

        if (v68 > 0x13)
        {
          v407 = &__bid_midpoint128[(v68 - 20)];
          v408 = v407[1];
          if (*(&v584 + 1) >= v408)
          {
            if (*(&v584 + 1) != v408)
            {
              goto LABEL_601;
            }

            v446 = *v407;
            if (v584 >= v446)
            {
              if (v584 == v446)
              {
                goto LABEL_390;
              }

              goto LABEL_601;
            }
          }
        }

        else
        {
          v320 = __bid_midpoint64[(v68 - 1)];
          if (v584 >= v320)
          {
            if (v584 == v320)
            {
LABEL_390:
              v321 = 0;
              DWORD2(v583) = 1;
LABEL_602:
              v584 = v321;
              goto LABEL_603;
            }

LABEL_601:
            v321 = 1;
            LODWORD(v583) = 1;
            goto LABEL_602;
          }
        }

        v321 = 0;
        DWORD1(v583) = 1;
        goto LABEL_602;
      }

      v304 = v67 - v195;
      if (v67 <= v195)
      {
LABEL_628:
        v21 = v583;
        v421 = DWORD1(v583);
        v431 = DWORD2(v583);
        v429 = HIDWORD(v583);
        if (v583 != 0)
        {
          *a12 |= 0x30u;
        }

        *(&v584 + 1) |= ((v67 + 6176) << 49) | v30;
        if (v34)
        {
          bid_rounding_correction(v34, v421, v21, v429, v431, v67, &v584, a12);
        }

        v450 = *a12 | v288;
        goto LABEL_633;
      }

      if (v304 >= 34 - v68)
      {
        v304 = 34 - v68;
      }

      if (v304)
      {
        if (v68 > 19)
        {
          v390 = __bid_ten2k64[v304];
          v391 = v584 * HIDWORD(v390);
          v392 = DWORD1(v584) * v390 + v391 + ((v584 * v390) >> 32);
          v393 = (v584 * v390) | (v392 << 32);
          v394 = HIDWORD(v391) + DWORD1(v584) * HIDWORD(v390) + HIDWORD(v392) + *(&v584 + 1) * v390;
          *&v584 = v393;
        }

        else
        {
          if (v304 <= 19)
          {
            v305 = DWORD1(v584);
            v306 = __bid_ten2k64[v304];
            v307 = v306 * DWORD1(v584);
            v308 = HIDWORD(v306) * v584 + v307 + ((v306 * v584) >> 32);
            *&v584 = (v306 * v584) | (v308 << 32);
            *(&v584 + 1) = HIDWORD(v307) + HIDWORD(v306) * v305 + HIDWORD(v308);
            goto LABEL_583;
          }

          v436 = __bid_ten2k128[2 * (v304 - 20)];
          v437 = HIDWORD(v436);
          v438 = v436 * DWORD1(v584);
          v439 = v436 * v584;
          v440 = v437 * v584 + v438 + HIDWORD(v439);
          v394 = HIDWORD(v438) + v437 * DWORD1(v584) + HIDWORD(v440) + __bid_ten2k128[2 * (v304 - 20) + 1] * v584;
          *&v584 = v439 | (v440 << 32);
        }

        *(&v584 + 1) = v394;
      }

LABEL_583:
      v67 -= v304;
      goto LABEL_628;
    }

    *(&v584 + 1) |= ((v67 + 6176) << 49) | v30;
    v21 = v583;
    v297 = DWORD1(v583);
    v299 = DWORD2(v583);
    v298 = HIDWORD(v583);
    if (!v34)
    {
      v303 = 32;
      goto LABEL_375;
    }

    v571 = v196;
    v562 = v68;
    v558 = DWORD1(v583);
    v300 = HIDWORD(v583);
    v301 = DWORD2(v583);
    v302 = v67;
    bid_rounding_correction(v34, SDWORD1(v583), v583, SHIDWORD(v583), SDWORD2(v583), v67, &v584, a12);
    if (v302 == -6176)
    {
      LODWORD(v68) = v562;
      v196 = v571;
      v297 = v558;
      v298 = v300;
      v299 = v301;
      if ((*(&v584 + 1) & 0x1FFFFFFFFFFFFuLL) < 0x314DC6448D93)
      {
        goto LABEL_362;
      }

      v303 = 32;
      if ((*(&v584 + 1) & 0x1FFFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        LODWORD(v68) = v562;
        v196 = v571;
        v297 = v558;
        v298 = v300;
        v299 = v301;
        if (v584 >= 0x38C15B0A00000000)
        {
LABEL_375:
          if (!(v297 | v21 | v298 | v299))
          {
            v303 = 0;
          }

          v309 = *a12 | v303;
          if ((v309 & 0x20) == 0 && (*(&v584 + 1) & 0x7FFE000000000000uLL) > v27)
          {
            v310 = ((*(&v584 + 1) & 0x7FFE000000000000) - v27) >> 49;
            if (34 - v68 < v310)
            {
              LODWORD(v310) = 34 - v68;
            }

            if (v310)
            {
              v311 = v310;
              v312 = *(&v584 + 1) - (v310 << 49);
              if (v68 > 19)
              {
                v395 = __bid_ten2k64[v311];
                v396 = DWORD1(v584);
                v397 = HIDWORD(v395) * v584;
                v398 = v395 * DWORD1(v584) + v397 + ((v395 * v584) >> 32);
                *&v584 = (v395 * v584) | (v398 << 32);
                v318 = HIDWORD(v397) + HIDWORD(v395) * v396 + HIDWORD(v398) + v395 * (*(&v584 + 1) & 0x1FFFFFFFFFFFFLL);
              }

              else
              {
                if (v311 > 19)
                {
                  v441 = __bid_ten2k128[2 * (v311 - 20)];
                  v442 = HIDWORD(v441);
                  v443 = v441 * DWORD1(v584);
                  v444 = v441 * v584;
                  v445 = v442 * v584 + v443 + HIDWORD(v444);
                  v319 = v444 | (v445 << 32);
                  v318 = HIDWORD(v443) + v442 * DWORD1(v584) + HIDWORD(v445) + __bid_ten2k128[2 * (v311 - 20) + 1] * v584;
                }

                else
                {
                  v313 = __bid_ten2k64[v311];
                  v314 = HIDWORD(v313);
                  v315 = v313 * DWORD1(v584);
                  v316 = v313 * v584;
                  v317 = v314 * v584 + v315 + HIDWORD(v316);
                  v318 = HIDWORD(v315) + v314 * DWORD1(v584) + HIDWORD(v317);
                  v319 = v316 | (v317 << 32);
                }

                *&v584 = v319;
              }

              *(&v584 + 1) = v312 & 0x7FFE000000000000 | v30 | v318;
            }
          }

          *a12 = v309 | v196;
          *a1 = v298;
          *a2 = v299;
          *a3 = v297;
          goto LABEL_72;
        }

LABEL_362:
        v303 = 48;
        goto LABEL_375;
      }
    }

    else
    {
      v303 = 32;
    }

    LODWORD(v68) = v562;
    v196 = v571;
    v297 = v558;
    v298 = v300;
    v299 = v301;
    goto LABEL_375;
  }

  v199 = v30;
  v200 = v195 + v56 - v67 - v68;
  if ((v200 & 0x80000000) == 0)
  {
    v546 = v70;
    v201 = 0;
    v202 = v195 + v56 - v67 - v68;
    v203 = v67;
    v67 = v195;
    v204 = v68;
    v68 = v56;
    v554 = v71;
    v568 = v72;
    v71 = v26;
    v72 = v28;
    v205 = v30;
    v199 = a10 & 0x8000000000000000;
    goto LABEL_243;
  }

  v202 = v68 - (v195 + v56 - v67);
  if (v68 >= 35 && v68 <= v202)
  {
    v560 = v195 + v56 - v67 - v68;
    v569 = v56;
    v212 = v67;
    v213 = v68 - 34;
    if (v68 > 0x26)
    {
      *&v585 = v72;
      *(&v585 + 1) = v71;
      if (v68 > 0x39)
      {
        *&v586 = v70;
        *(&v586 + 1) = v69;
        __bid_round256_58_76(v68, v68 - 34, &v585, &v577, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
        v238 = v577;
      }

      else
      {
        v586 = v70;
        __bid_round192_39_57(v68, v68 - 34, &v585, v587, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
        v238 = v587[0];
      }

      v584 = v238;
    }

    else
    {
      *&v580 = v72;
      *(&v580 + 1) = v71;
      __bid_round128_19_38(v68, v68 - 34, v72, v71, &v584, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
    }

    v341 = v213 + v212;
    v21 = v583;
    if (v582)
    {
      v342 = v341 + 1;
    }

    else
    {
      v342 = v341;
    }

    v343 = DWORD2(v583);
    if (v583 == 0)
    {
      if (v30 == v29)
      {
        v343 = 0;
        v344 = 0;
        v21 = 0;
        v345 = 1;
        v346 = a11;
        goto LABEL_667;
      }

      v343 = 0;
      v21 = 1;
      if (v584 != __PAIR128__(0x314DC6448D93, 0x38C15B0A00000000) || v560 < 0xFFFFFFDD)
      {
        v344 = 0;
        v345 = 0;
        goto LABEL_666;
      }

      if (v569 > 19)
      {
        v434 = &__bid_midpoint128[v569 - 20];
        v435 = v434[1];
        if (v26 < v435)
        {
          goto LABEL_572;
        }

        if (v26 != v435)
        {
LABEL_663:
          v343 = 0;
          v344 = 0;
          v21 = 0;
LABEL_664:
          v584 = xmmword_1C1F58CC0;
          --v342;
          goto LABEL_665;
        }

        v347 = *v434;
      }

      else
      {
        v347 = __bid_midpoint64[v569 - 1];
      }

      if (v28 >= v347)
      {
        if (v28 == v347)
        {
          v343 = 0;
          v21 = 0;
          v345 = 0;
          v344 = 1;
LABEL_666:
          v346 = a11;
LABEL_667:
          if (v346 || v342 < 6112)
          {
            *(&v584 + 1) |= (((v342 + 6176) & 0x3FFF) << 49) | v30;
            if (v346)
            {
              bid_rounding_correction(v346, v345, v21, v344, v343, v342, &v584, a12);
            }
          }

          else
          {
            *&v584 = 0;
            *(&v584 + 1) = v30 | 0x7800000000000000;
            *a12 |= 0x28u;
          }

          if (v345 | v21)
          {
            v454 = 1;
          }

          else
          {
            v454 = v344;
          }

          if ((v454 & 1) != 0 || v343)
          {
            *a12 |= 0x20u;
          }

          *a1 = v344;
          *a2 = v343;
          *a3 = v345;
          goto LABEL_72;
        }

        goto LABEL_663;
      }

LABEL_572:
      v343 = 0;
      v344 = 0;
      v345 = 0;
      goto LABEL_666;
    }

    if (HIDWORD(v583))
    {
      if (v29 == v30)
      {
        goto LABEL_447;
      }

      v362 = v584;
      v363 = v584 - 1;
      *&v584 = v584 - 1;
      v344 = 0;
      if (v362)
      {
        if (v363 != 0x38C15B09FFFFFFFFLL || *(&v362 + 1) != 0x314DC6448D93)
        {
          v346 = a11;
          v345 = 1;
          goto LABEL_667;
        }

        v344 = 0;
        goto LABEL_664;
      }

      *(&v584 + 1) = *(&v362 + 1) - 1;
    }

    else
    {
      if (!DWORD2(v583))
      {
        v344 = 0;
        goto LABEL_523;
      }

      if (v29 == v30)
      {
        v182 = __CFADD__(v584, 1);
        *&v584 = v584 + 1;
        v343 = 0;
        if (v182)
        {
          v344 = 0;
          ++*(&v584 + 1);
          goto LABEL_448;
        }

LABEL_447:
        v344 = 0;
LABEL_448:
        v21 = 1;
LABEL_523:
        v346 = a11;
        v345 = DWORD1(v583);
        goto LABEL_667;
      }

      v343 = 0;
      v344 = 0;
    }

LABEL_665:
    v345 = 1;
    goto LABEL_666;
  }

  v546 = v70;
  if (v200 > 0xFFFFFFDE || v68 >= 35)
  {
    v215 = v68 - (v195 - v67);
    if (v200 < 0xFFFFFFDF || v68 > v202 || v215 <= 34)
    {
      v328 = v215 < 35 && v68 <= v202;
      v329 = v68 <= v202 || v215 <= 34;
      v330 = !v329 && v68 < 35;
      v331 = v330;
      if (!v328 && !v331)
      {
        v332 = v68 < 35 && v215 < v68;
        v333 = v332;
        v334 = v215 < 35 && v68 <= v215;
        v335 = !v334 || v68 <= v202;
        if (v335 && !v333)
        {
          v336 = v56;
          v337 = v69;
          v338 = v71;
          v563 = v72;
          v549 = v67;
          v544 = v30;
          v580 = 0uLL;
          v339 = v200 > 0xFFFFFFDE;
          if ((v200 > 0xFFFFFFDE || v68 <= v202 || v68 >= v215) && (v200 < 0xFFFFFFDF || v68 < 35 || v68 >= v215))
          {
            if (v68 < v215)
            {
              v339 = 1;
            }

            if (v339)
            {
              v462 = v68 >= 35 && v215 <= 34;
              v463 = !v462;
              v464 = v200 < 0xFFFFFFDF || v68 < v215;
              v465 = v464 || v215 < 35;
              if (v465 && v463)
              {
                goto LABEL_69;
              }
            }

            *&v585 = v72;
            *(&v585 + 1) = v71;
            *&v586 = v70;
            *(&v586 + 1) = v69;
            bid_add_and_round(v336, v68, v67, v202, v29, v30, v28, v26, &v585, a11, &v583 + 3, &v583 + 2, &v583 + 1, &v583, a12, &v584);
LABEL_486:
            v370 = DWORD2(v583);
            *a1 = HIDWORD(v583);
LABEL_487:
            *a2 = v370;
            v21 = v583;
            *a3 = DWORD1(v583);
            goto LABEL_72;
          }

          v340 = v67 - v195;
          if (v336 > 18)
          {
            if (v336 <= 0x26)
            {
              __bid_round128_19_38(v336, v340, v28, v26, &v579, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
              v26 = *(&v579 + 1);
              v28 = v579;
            }
          }

          else
          {
            __bid_round64_2_18(v336, v340, v28, &v581, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
            v28 = v581;
          }

          if (v582)
          {
            *&v580 = v28;
            *(&v580 + 1) = v26;
            v460 = ((5 * v28) >> 31) + 10 * HIDWORD(v28);
            v28 = (10 * v28) | (v460 << 32);
            v26 = 10 * v26 + HIDWORD(v460);
          }

          v578 = 0uLL;
          *&v577 = v28;
          *(&v577 + 1) = v26;
          if (v30 == v29)
          {
            *&v585 = v563;
            *(&v585 + 1) = v338;
            *&v586 = v546;
            *(&v586 + 1) = v337;
            v575 = v577;
            v576 = v578;
            bid_add256(&v585, &v575, &v577);
            goto LABEL_757;
          }

          *&v585 = v563;
          *(&v585 + 1) = v338;
          *&v586 = v546;
          *(&v586 + 1) = v337;
          v575 = v577;
          v576 = v578;
          bid_sub256(&v585, &v575, &v577);
          if (DWORD1(v583))
          {
            *&v583 = 1;
            goto LABEL_757;
          }

          if (v583)
          {
            *&v583 = 0x100000000;
            goto LABEL_757;
          }

          if ((v563 & 1) == 0)
          {
            if (HIDWORD(v583))
            {
              *(&v583 + 1) = 1;
            }

            else if (DWORD2(v583))
            {
              *(&v583 + 1) = 0x100000000;
            }

LABEL_757:
            v585 = v577;
            v586 = v578;
            v476 = bid_bid_nr_digits256(&v585);
            if (v476 <= 33)
            {
              v477 = *(&v584 + 1);
              goto LABEL_761;
            }

            v478 = v476 - 34;
            if (v476 == 34)
            {
              v584 = v577;
              v477 = *(&v577 + 1);
              goto LABEL_761;
            }

            v484 = DWORD1(v583);
            v573 = v583;
            v485 = HIDWORD(v583);
            v565 = DWORD2(v583);
            v583 = 0uLL;
            if (v476 > 0x26)
            {
              v585 = v577;
              if (v476 > 0x39)
              {
                v586 = v578;
                v486 = &v577;
                __bid_round256_58_76(v476, v476 - 34, &v585, &v577, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
              }

              else
              {
                v586 = v578;
                v486 = v587;
                __bid_round192_39_57(v476, v476 - 34, &v585, v587, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
              }
            }

            else
            {
              v580 = v577;
              v486 = &v579;
              __bid_round128_19_38(v476, v476 - 34, v577, *(&v577 + 1), &v579, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
            }

            v496 = *v486;
            v477 = *(v486 + 1);
            v549 += v478 + v582;
            *&v584 = *v486;
            if (v573 | v485 && HIDWORD(v583))
            {
              *&v584 = v496 - 1;
              if (v496)
              {
                HIDWORD(v583) = 0;
                DWORD1(v583) = 1;
                if (v477 == 0x314DC6448D93 && v496 == 0x38C15B0A00000000)
                {
                  v477 = 0x1ED09BEAD87C0;
                  v584 = xmmword_1C1F58CC0;
                  --v549;
                }

                goto LABEL_761;
              }

              --v477;
              HIDWORD(v583) = 0;
LABEL_868:
              DWORD1(v583) = 1;
              goto LABEL_761;
            }

            if (v484 | v565 && DWORD2(v583))
            {
              *&v584 = v496 + 1;
              if (v496 == -1)
              {
                *(&v584 + 1) = ++v477;
              }

              DWORD2(v583) = 0;
              LODWORD(v583) = 1;
              goto LABEL_761;
            }

            if (v583 == 0)
            {
              LODWORD(v583) = (v573 | v485) != 0;
              if (!(v484 | v565))
              {
                goto LABEL_761;
              }

              goto LABEL_868;
            }

            v522 = (v573 | v485) == 0;
            if (!DWORD2(v583))
            {
              v522 = 1;
            }

            if (v522)
            {
              v528 = (v484 | v565) == 0;
              if (!HIDWORD(v583))
              {
                v528 = 1;
              }

              if (v528)
              {
LABEL_761:
                v479 = v549;
                if (a11)
                {
                  *&v580 = v584;
                  *(&v580 + 1) = v30 | v477 | 0x3040000000000000;
                  bid_rounding_correction(a11, SDWORD1(v583), v583, SHIDWORD(v583), SDWORD2(v583), 0, &v580, a12);
                  v479 = v549 - 6176 + ((*(&v580 + 1) >> 49) & 0x3FFF);
                }

                v480 = v479 < -6176;
                *(&v584 + 1) = v477 | ((v549 + 6176) << 49) | v30;
                if (!a11 && v549 >= 6112)
                {
                  *&v584 = 0;
                  *(&v584 + 1) = v30 | 0x7800000000000000;
                  *a12 |= 0x28u;
                  goto LABEL_486;
                }

                if (v549 > -6177)
                {
                  v544 = v477 | ((v549 + 6176) << 49) | v30;
                  goto LABEL_984;
                }

                v482 = v583;
                v481 = DWORD1(v583);
                v483 = HIDWORD(v583);
                v572 = DWORD2(v583);
                v583 = 0uLL;
                if (v549 <= 0xFFFFE7BD)
                {
                  DWORD1(v583) = 1;
                  *&v584 = 0;
                  *(&v584 + 1) = v30;
                  goto LABEL_983;
                }

                v490 = v477 & 0x1FFFFFFFFFFFFLL;
                if (v549 != -6210)
                {
                  *&v580 = v584;
                  *(&v580 + 1) = v477 & 0x1FFFFFFFFFFFFLL;
                  __bid_round128_19_38(34, -6176 - v549, v584, v490, &v584, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
                  v493 = *(&v584 + 1);
                  if (v582)
                  {
                    v494 = ((5 * v584) >> 31) + 10 * DWORD1(v584);
                    *&v584 = (10 * v584) | (v494 << 32);
                    v493 = 0xA00000000 * (HIDWORD(*(&v584 + 1)) & 0x1FFFFLL) + 10 * DWORD2(v584) + HIDWORD(v494);
                  }

                  v544 = v493 & 0x1FFFFFFFFFFFFLL | v30;
                  *(&v584 + 1) = v544;
                  if (v482 | v483 && HIDWORD(v583))
                  {
                    v495 = v584;
                    *&v584 = v584 - 1;
                    if (!v495)
                    {
                      *(&v584 + 1) = --v544;
                    }

                    HIDWORD(v583) = 0;
                  }

                  else
                  {
                    if (v481 | v572 && DWORD2(v583))
                    {
                      v182 = __CFADD__(v584, 1);
                      *&v584 = v584 + 1;
                      if (v182)
                      {
                        *(&v584 + 1) = ++v544;
                      }

                      DWORD2(v583) = 0;
                      LODWORD(v583) = 1;
                      goto LABEL_983;
                    }

                    if (v583 != 0)
                    {
                      v532 = (v482 | v483) == 0;
                      if (!DWORD2(v583))
                      {
                        v532 = 1;
                      }

                      if (v532)
                      {
                        v533 = (v481 | v572) == 0;
                        if (!HIDWORD(v583))
                        {
                          v533 = 1;
                        }

                        if (v533)
                        {
                          goto LABEL_983;
                        }

                        *&v583 = 1;
                      }

                      else
                      {
                        *&v583 = 0x100000000;
                      }

                      *(&v583 + 1) = 0;
LABEL_983:
                      v549 = -6176;
LABEL_984:
                      if (a11)
                      {
                        bid_rounding_correction(a11, SDWORD1(v583), v583, SHIDWORD(v583), SDWORD2(v583), v549, &v584, a12);
                        v544 = *(&v584 + 1);
                      }

                      if ((v544 & 0x7FFFFFFFFFFFFFFFLL) != 0x314DC6448D93 || v584 != 0x38C15B0A00000000)
                      {
                        goto LABEL_1006;
                      }

                      if (a11 > 1)
                      {
                        if (a11 == 2)
                        {
                          if (v544 < 0)
                          {
                            goto LABEL_1006;
                          }

                          goto LABEL_1002;
                        }

                        if (a11 != 4)
                        {
                          goto LABEL_1006;
                        }
                      }

                      else if (a11)
                      {
                        if (a11 != 1 || (v544 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_1006;
                        }

                        goto LABEL_1002;
                      }

                      if (HIDWORD(v583) | v583)
                      {
LABEL_1005:
                        v480 = 1;
LABEL_1006:
                        v525 = DWORD2(v583);
                        v524 = HIDWORD(v583);
                        v21 = v583;
                        v526 = DWORD1(v583);
                        if (v583 != 0)
                        {
                          v527 = *a12;
                          *a12 |= 0x20u;
                          if (v480)
                          {
                            *a12 = v527 | 0x30;
                          }
                        }

                        *a1 = v524;
                        *a2 = v525;
                        *a3 = v526;
                        goto LABEL_72;
                      }

                      if (v544 < 0)
                      {
                        v523 = 1;
                      }

                      else
                      {
                        v523 = 2;
                      }

                      if (v523 != a11)
                      {
                        goto LABEL_1006;
                      }

LABEL_1002:
                      if (!HIDWORD(v583) && !*(&v583 + 4) && !v583)
                      {
                        goto LABEL_1006;
                      }

                      goto LABEL_1005;
                    }

                    LODWORD(v583) = (v482 | v483) != 0;
                    if (!(v481 | v572))
                    {
                      goto LABEL_983;
                    }
                  }

                  DWORD1(v583) = 1;
                  goto LABEL_983;
                }

                if (v490 < 0xF684DF56C3E0)
                {
                  goto LABEL_810;
                }

                if (v490 == 0xF684DF56C3E0)
                {
                  if (v584 < 0x1BC6C73200000000)
                  {
LABEL_810:
                    v491 = 0;
                    DWORD1(v583) = 1;
LABEL_982:
                    *&v584 = v491;
                    *(&v584 + 1) = v30;
                    goto LABEL_983;
                  }

                  if (v584 == 0x1BC6C73200000000)
                  {
                    v491 = 0;
                    DWORD2(v583) = 1;
                    goto LABEL_982;
                  }
                }

                v491 = 1;
                LODWORD(v583) = 1;
                goto LABEL_982;
              }

              *&v583 = 1;
            }

            else
            {
              *&v583 = 0x100000000;
            }

            *(&v583 + 1) = 0;
            goto LABEL_761;
          }

          if (HIDWORD(v583))
          {
            v182 = __CFADD__(v577, 1);
            *&v577 = v577 + 1;
            if (!v182)
            {
              goto LABEL_757;
            }

            v182 = __CFADD__((*(&v577 + 1))++, 1);
            if (!v182)
            {
              goto LABEL_757;
            }

            v182 = __CFADD__(v578, 1);
            *&v578 = v578 + 1;
            if (!v182)
            {
              goto LABEL_757;
            }

            v521 = *(&v578 + 1) + 1;
          }

          else
          {
            if (!DWORD2(v583))
            {
              goto LABEL_757;
            }

            v529 = v577;
            *&v577 = v577 - 1;
            if (v529)
            {
              goto LABEL_757;
            }

            if ((*(&v577 + 1))--)
            {
              goto LABEL_757;
            }

            v531 = v578;
            *&v578 = v578 - 1;
            if (v531)
            {
              goto LABEL_757;
            }

            v521 = *(&v578 + 1) - 1;
          }

          *(&v578 + 1) = v521;
          goto LABEL_757;
        }
      }
    }
  }

  v201 = v28;
  v203 = v195;
  *(&v580 + 1) = v26;
  v204 = v56;
  v554 = v26;
  v568 = v28;
  v27 = v37;
  v205 = a10 & 0x8000000000000000;
LABEL_243:
  *&v580 = v201;
  v557 = v71;
  v561 = v72;
  v555 = v204;
  if (v202 > 0x22)
  {
    if (v68 + v67 >= 6146)
    {
      if (a11)
      {
        v21 = v29 != v30;
        v226 = v29 == v30;
        v227 = 34 - v68;
        if (v68 == 34)
        {
          v228 = v199 | v71;
          *&v584 = v72;
        }

        else if (v68 > 19)
        {
          v348 = __bid_ten2k64[v227];
          v349 = HIDWORD(v348) * v72;
          v350 = v348 * HIDWORD(v72) + v349 + ((v348 * v72) >> 32);
          *&v584 = (v348 * v72) | (v350 << 32);
          v228 = HIDWORD(v349) + HIDWORD(v348) * HIDWORD(v72) + HIDWORD(v350) + v348 * v71;
        }

        else if (v68 < 15)
        {
          v401 = __bid_ten2k128[2 * (14 - v68)];
          v402 = __bid_ten2k128[2 * (14 - v68) + 1];
          v403 = HIDWORD(v401);
          v404 = v401 * HIDWORD(v72);
          v405 = v401 * v72;
          v406 = v403 * v72 + v404 + HIDWORD(v405);
          *&v584 = v405 | (v406 << 32);
          v228 = HIDWORD(v404) + v403 * HIDWORD(v72) + HIDWORD(v406) + v402 * v72;
        }

        else
        {
          v274 = __bid_ten2k64[v227];
          v275 = HIDWORD(v274);
          v276 = v274 * HIDWORD(v72);
          v277 = v274 * v72;
          v278 = v275 * v72 + v276 + HIDWORD(v277);
          v228 = HIDWORD(v276) + v275 * HIDWORD(v72) + HIDWORD(v278);
          *&v584 = v277 | (v278 << 32);
        }

        *(&v584 + 1) = v228 | v199;
        bid_rounding_correction(a11, v226, v29 != v30, 0, 0, v67 - v227, &v584, a12);
      }

      else
      {
        v21 = 0;
        v226 = 0;
        *&v584 = 0;
        *(&v584 + 1) = v199 | 0x7800000000000000;
        *a12 |= 0x28u;
      }

      *a1 = 0;
      *a2 = 0;
      goto LABEL_519;
    }

    goto LABEL_249;
  }

  if (v202 == 34)
  {
    v216 = 34 - v68;
    if (v67 + 6176 >= v216)
    {
      v217 = v69;
      v542 = v199;
      if (v68 == 34)
      {
        *&v584 = v72;
      }

      else if (v68 > 19)
      {
        v371 = __bid_ten2k64[v216];
        v372 = HIDWORD(v371) * v72;
        v373 = v371 * HIDWORD(v72) + v372 + ((v371 * v72) >> 32);
        *&v584 = (v371 * v72) | (v373 << 32);
        v557 = HIDWORD(v372) + HIDWORD(v371) * HIDWORD(v72) + HIDWORD(v373) + v371 * v71;
        v561 = v584;
      }

      else if (v68 < 15)
      {
        v409 = __bid_ten2k128[2 * (14 - v68)];
        v410 = __bid_ten2k128[2 * (14 - v68) + 1];
        v411 = HIDWORD(v409);
        v412 = v409 * HIDWORD(v72);
        v413 = v409 * v72;
        v414 = v411 * v72 + v412 + HIDWORD(v413);
        *&v584 = v413 | (v414 << 32);
        v557 = HIDWORD(v412) + v411 * HIDWORD(v72) + HIDWORD(v414) + v410 * v72;
        v561 = v584;
      }

      else
      {
        v322 = __bid_ten2k64[v216];
        v323 = v322 * HIDWORD(v72);
        v324 = HIDWORD(v322) * v72 + v323 + ((v322 * v72) >> 32);
        v557 = HIDWORD(v323) + HIDWORD(v322) * HIDWORD(v72) + HIDWORD(v324);
        v561 = (v322 * v72) | (v324 << 32);
        *&v584 = v561;
      }

      v415 = v27 - (v216 << 49);
      v416 = v67 - v216;
      if (v555 <= 19)
      {
        v417 = __bid_midpoint64[v555 - 1];
        if (v568 < v417)
        {
LABEL_527:
          v418 = 0;
          v419 = 0;
          v420 = 1;
          v421 = 1;
          goto LABEL_546;
        }

        v420 = v568 == v417;
        v418 = v568 != v417;
        v419 = 1;
        v421 = v418;
LABEL_546:
        if (v29 == v30)
        {
          if ((v419 & 1) == 0)
          {
            v431 = 0;
            v429 = 0;
            v21 = 0;
            v428 = v415 & 0x7FFE000000000000 | v557 | v205;
            *(&v584 + 1) = v428;
            v421 = 1;
            goto LABEL_650;
          }

          if (v421)
          {
            if (!v420)
            {
LABEL_550:
              *&v584 = v561 + 1;
              if (v561 == -1)
              {
                ++v557;
              }

              else if (v561 == 0x378D8E63FFFFFFFFLL && (v557 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0)
              {
                v557 = 0x314DC6448D93;
                v452 = (v416 + 6177);
                ++v416;
                v415 = v452 << 49;
                *&v584 = 0x38C15B0A00000000;
              }

              v431 = 0;
              v428 = v557 | v205 | v415 & 0x7FFE000000000000;
              *(&v584 + 1) = v428;
              v429 = v421 ^ 1;
              v21 = v421;
              v421 = 0;
LABEL_650:
              v453 = *a12;
              *a12 |= 0x20u;
              if (!a11 && v416 >= 6112)
              {
                *&v584 = 0;
                *(&v584 + 1) = v205 | 0x7800000000000000;
                v450 = v453 | 0x28;
LABEL_633:
                *a12 = v450;
LABEL_634:
                *a1 = v429;
                *a2 = v431;
                *a3 = v421;
                goto LABEL_72;
              }

              if (!a11)
              {
LABEL_821:
                *(&v584 + 1) = v428 | v415 & 0x7FFE000000000000 | v542;
                goto LABEL_634;
              }

LABEL_654:
              bid_rounding_correction(a11, v421, v21, v429, v431, v416, &v584, a12);
              v428 = *(&v584 + 1);
LABEL_655:
              v415 = v428;
              goto LABEL_821;
            }
          }

          else if ((v418 | v561))
          {
            goto LABEL_550;
          }

          v429 = 0;
          v21 = 0;
          v421 = 0;
          v428 = v415 & 0x7FFE000000000000 | v557 | v205;
          *(&v584 + 1) = v428;
          v431 = 1;
          goto LABEL_650;
        }

        if (v557 == 0x314DC6448D93 && v561 == 0x38C15B0A00000000)
        {
          v564 = v415 >> 49;
          if (!(v415 >> 49))
          {
            if (v420)
            {
              v427 = 0x38C15B0A00000000;
            }

            else
            {
              v427 = 0x38C15B09FFFFFFFFLL;
            }

            v428 = v199 | 0x314DC6448D93;
            *&v584 = v427;
            *(&v584 + 1) = v199 | 0x314DC6448D93;
            *a12 |= 0x10u;
            v429 = v421 ^ 1;
            v21 = v421 & (v419 ^ 1);
            v421 &= v419;
            v430 = a11;
            if (!a11)
            {
              v431 = 0;
              goto LABEL_818;
            }

            bid_rounding_correction(a11, v421, v21, v429, 0, -6176, &v584, a12);
            v431 = 0;
            v430 = 0;
            v428 = *(&v584 + 1);
LABEL_560:
            v415 = v428;
LABEL_818:
            if (v421 | v21 | v429 || v430)
            {
              *a12 |= 0x20u;
            }

            goto LABEL_821;
          }

          v432 = v555 - 1;
          if (v555 == 1)
          {
            v21 = 0;
            v421 = 0;
            v431 = 0;
            v429 = 0;
            v430 = 0;
            v433 = 0x378D8E6400000000 - v568;
            v415 -= 0x2000000000000;
            v428 = v199 | 0x1ED09BEAD87C0 | v415 & 0x7FFE000000000000;
LABEL_817:
            *&v584 = v433;
            *(&v584 + 1) = v428;
            goto LABEL_818;
          }

          if (v555 > 18)
          {
            if (v555 > 0x26)
            {
              *&v585 = v568;
              *(&v585 + 1) = v554;
              if (v555 > 0x39)
              {
                *&v586 = v546;
                *(&v586 + 1) = v217;
                __bid_round256_58_76(v555, v432, &v585, &v577, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
                v461 = v577;
              }

              else
              {
                v586 = v546;
                __bid_round192_39_57(v555, v432, &v585, v587, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
                v461 = *&v587[0];
              }
            }

            else
            {
              *&v580 = v568;
              *(&v580 + 1) = v554;
              __bid_round128_19_38(v555, v432, v568, v554, &v579, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
              v461 = v579;
            }

            v581 = v461;
          }

          else
          {
            __bid_round64_2_18(v555, v432, v568, &v581, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
          }

          v431 = DWORD2(v583);
          v429 = HIDWORD(v583);
          v430 = v583;
          if (v583 == 0)
          {
            v21 = 0;
            v421 = 0;
            v431 = 0;
            v429 = 0;
            v415 -= 0x2000000000000;
            v428 = v542 | 0x1ED09BEAD87C0 | v415 & 0x7FFE000000000000;
            v433 = 0x378D8E6400000000 - v581;
            goto LABEL_817;
          }

          if (v582)
          {
            v492 = 0x378D8E63FFFFFFF6;
          }

          else
          {
            v492 = 0x378D8E6400000000 - v581;
          }

          *&v584 = v492;
          *(&v584 + 1) = 0x1ED09BEAD87C0;
          if (DWORD1(v583))
          {
            v421 = 0;
            v21 = 1;
          }

          else
          {
            v21 = 0;
            if (v583)
            {
              v421 = 1;
            }

            else
            {
              v421 = 0;
              v431 = HIDWORD(v583) != 0;
              if (HIDWORD(v583))
              {
                v429 = 0;
              }

              else
              {
                v429 = DWORD2(v583) != 0;
              }
            }
          }

          if (v415 < 0x6002000000000000)
          {
            *a12 |= 0x20u;
            v428 = ((v415 & 0x7FFE000000000000) - 0x12F641527840) | v542;
            *(&v584 + 1) = v428;
            if (a11)
            {
              bid_rounding_correction(a11, v421, v21, v429, v431, v564 - 6177, &v584, a12);
              v428 = *(&v584 + 1);
            }

            v430 = v431 != 0;
            goto LABEL_560;
          }

          if (a11)
          {
            v416 = v564 - 6177;
            goto LABEL_643;
          }

          goto LABEL_863;
        }

        if (v419)
        {
          if (v421)
          {
            if (!v420)
            {
LABEL_564:
              v429 = 0;
              v21 = 0;
              v428 = v415 & 0x7FFE000000000000 | v199 | ((__PAIR128__(v557, v561) - 1) >> 64);
              *&v584 = v561 - 1;
              *(&v584 + 1) = v428;
              v431 = v421 ^ 1;
              goto LABEL_641;
            }
          }

          else if ((v418 | v561))
          {
            goto LABEL_564;
          }

          v431 = 0;
          v21 = 0;
          v421 = 0;
          v428 = v199 | v557 | v415 & 0x7FFE000000000000;
          *(&v584 + 1) = v428;
          v429 = 1;
        }

        else
        {
          v431 = 0;
          v429 = 0;
          v421 = 0;
          v428 = v199 | v557 | v415 & 0x7FFE000000000000;
          *(&v584 + 1) = v428;
          v21 = 1;
        }

LABEL_641:
        if (v416 < 6112)
        {
          *a12 |= 0x20u;
          if (!a11)
          {
            goto LABEL_655;
          }

          goto LABEL_654;
        }

        if (a11)
        {
LABEL_643:
          bid_rounding_correction(a11, v421, v21, v429, v431, v416, &v584, a12);
          goto LABEL_634;
        }

LABEL_863:
        *&v584 = 0;
        *(&v584 + 1) = v542 | 0x7800000000000000;
        v450 = *a12 | 0x28;
        goto LABEL_633;
      }

      if (v555 > 0x26)
      {
        if (v555 > 0x3A)
        {
          v422 = (&__bid_midpoint256 + 32 * (v555 - 59));
          v425 = v422[3];
          if (v217 < v425)
          {
            goto LABEL_527;
          }

          if (v217 != v425)
          {
            goto LABEL_544;
          }
        }

        else
        {
          if (v217)
          {
            goto LABEL_544;
          }

          v422 = (&__bid_midpoint192 + 32 * (v555 - 39));
        }

        v426 = v422[2];
        if (v546 < v426)
        {
          goto LABEL_527;
        }

        if (v546 != v426)
        {
          goto LABEL_544;
        }
      }

      else
      {
        if (v546)
        {
          goto LABEL_544;
        }

        v422 = &__bid_midpoint128[(v555 - 20)];
      }

      v423 = v422[1];
      if (v554 < v423)
      {
        goto LABEL_527;
      }

      if (v554 == v423)
      {
        v424 = *v422;
        if (v568 < v424)
        {
          goto LABEL_527;
        }

        if (v568 == v424)
        {
          v418 = 0;
          v421 = 0;
          v420 = 1;
LABEL_545:
          v419 = 1;
          goto LABEL_546;
        }
      }

LABEL_544:
      v420 = 0;
      v418 = 1;
      v421 = 1;
      goto LABEL_545;
    }

LABEL_249:
    if (v68 > 33)
    {
      LODWORD(v218) = 0;
      *&v584 = v72;
      *(&v584 + 1) = v71 | ((v67 + 6176) << 49) | v199;
    }

    else
    {
      LODWORD(v218) = 34 - v68;
      if (v67 + 6176 >= 34 - v68)
      {
        v218 = v218;
      }

      else
      {
        v218 = (v67 + 6176);
      }

      if (v218)
      {
        if (v68 > 19)
        {
          v325 = __bid_ten2k64[v218];
          v326 = HIDWORD(v325) * v72;
          v327 = v325 * HIDWORD(v72) + v326 + ((v325 * v72) >> 32);
          *&v584 = (v325 * v72) | (v327 << 32);
          v224 = HIDWORD(v326) + HIDWORD(v325) * HIDWORD(v72) + HIDWORD(v327) + v325 * v71;
        }

        else if (v218 > 19)
        {
          v374 = __bid_ten2k128[2 * (v218 - 20)];
          v375 = __bid_ten2k128[2 * (v218 - 20) + 1];
          v376 = HIDWORD(v374);
          v377 = v374 * HIDWORD(v72);
          v378 = v374 * v72;
          v379 = v376 * v72 + v377 + HIDWORD(v378);
          *&v584 = v378 | (v379 << 32);
          v224 = HIDWORD(v377) + v376 * HIDWORD(v72) + HIDWORD(v379) + v375 * v72;
        }

        else
        {
          v219 = __bid_ten2k64[v218];
          v220 = HIDWORD(v219);
          v221 = v219 * HIDWORD(v72);
          v222 = v219 * v72;
          v223 = v220 * v72 + v221 + HIDWORD(v222);
          v224 = HIDWORD(v221) + v220 * HIDWORD(v72) + HIDWORD(v223);
          *&v584 = v222 | (v223 << 32);
        }
      }

      else
      {
        *&v584 = v72;
        v224 = v71;
      }

      v67 -= v218;
      *(&v584 + 1) = (v27 - (v218 << 49)) & 0x7FFE000000000000 | v224 | v199;
      if (v218 + v68 <= 33)
      {
        *a12 |= 0x10u;
      }
    }

    v380 = v218 + v68;
    if (v29 == v30)
    {
      v381 = 0;
      v21 = 0;
      v382 = 1;
      goto LABEL_740;
    }

    if (v202 != v380 + 1)
    {
      v381 = 0;
      v382 = 0;
      v21 = 1;
      goto LABEL_740;
    }

    v550 = v67;
    v383 = v199;
    if (v68 > 19)
    {
      if (v68 == 20)
      {
        v381 = 0;
        v21 = 1;
        if (v71 || v72 != 0x8AC7230489E80000)
        {
          v382 = 0;
          goto LABEL_591;
        }

        goto LABEL_503;
      }

      v399 = &__bid_ten2k128[2 * (v68 - 21)];
      if (v71 != v399[1])
      {
LABEL_513:
        v381 = 0;
        v382 = 0;
        v21 = 1;
LABEL_591:
        v34 = a11;
        goto LABEL_740;
      }

      v384 = *v399;
    }

    else
    {
      v384 = __bid_ten2k64[v68 - 1];
    }

    if (v72 != v384)
    {
      goto LABEL_513;
    }

LABEL_503:
    v385 = v555 - 1;
    if (v555 == 1)
    {
      v386 = 0;
      v387 = 0;
      v388 = 0;
      v389 = 0;
    }

    else
    {
      if (v555 > 18)
      {
        if (v555 > 0x26)
        {
          *&v585 = v568;
          *(&v585 + 1) = v554;
          if (v555 > 0x39)
          {
            *&v586 = v546;
            *(&v586 + 1) = v69;
            v400 = &v577;
            __bid_round256_58_76(v555, v385, &v585, &v577, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
          }

          else
          {
            v586 = v546;
            v400 = v587;
            __bid_round192_39_57(v555, v385, &v585, v587, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
          }
        }

        else
        {
          *&v580 = v568;
          *(&v580 + 1) = v554;
          v400 = &v579;
          __bid_round128_19_38(v555, v385, v568, v554, &v579, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
        }
      }

      else
      {
        v400 = &v581;
        __bid_round64_2_18(v555, v385, v568, &v581, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
      }

      v471 = *v400;
      if (v582)
      {
        v471 = 10;
      }

      v568 = v471;
      v389 = DWORD1(v583) != 0;
      v388 = v583 != 0;
      v387 = HIDWORD(v583) != 0;
      v386 = DWORD2(v583) != 0;
    }

    if (v568 != 5 || v389 || v388 || v387 || v386)
    {
      v381 = 0;
      v21 = 1;
      if (v550 == -6176 || v568 < 5 || v568 == 5 && v388)
      {
        v382 = 0;
      }

      else
      {
        v381 = 0;
        v21 = 0;
        v472 = __bid_ten2k128[2 * (v380 - 20) + 1] | ((v550 + 6175) << 49) | v383;
        *&v584 = __bid_ten2k128[2 * (v380 - 20)] - 1;
        *(&v584 + 1) = v472;
        v382 = 1;
        --v550;
      }
    }

    else
    {
      v21 = 0;
      v382 = 0;
      v381 = 1;
    }

    v473 = *a12;
    if (v550 != -6176)
    {
      v475 = v473 | 0x20;
      v34 = a11;
      v67 = v550;
      goto LABEL_743;
    }

    *a12 = v473 | 0x10;
    v67 = -6176;
    v34 = a11;
LABEL_740:
    v474 = *a12;
    *a12 |= 0x20u;
    if (v67 != -6176 || v380 >= 34)
    {
      if (v67 != -6176 || v380 != 34)
      {
        goto LABEL_744;
      }

      if (v29 == v30 || (*(&v584 + 1) & 0x1FFFFFFFFFFFFLL) != 0x314DC6448D93)
      {
        v67 = -6176;
        goto LABEL_744;
      }

      v67 = -6176;
      if (v584 != 0x38C15B0A00000000)
      {
        goto LABEL_744;
      }
    }

    v475 = v474 | 0x30;
    v67 = -6176;
LABEL_743:
    *a12 = v475;
LABEL_744:
    if (v34)
    {
      bid_rounding_correction(v34, v382, v21, v381, 0, v67, &v584, a12);
    }

    *a1 = v381;
    *a2 = 0;
    goto LABEL_901;
  }

  v225 = v204 + v202;
  v543 = v199;
  v538 = v69;
  if (v68 <= v202 && v225 > 34)
  {
    v548 = v29 == v30;
    if (v202 > 1 || v29 == v30)
    {
      goto LABEL_286;
    }

    goto LABEL_482;
  }

  if (v68 > v202 == v225 < 35)
  {
    if (v68 <= v202)
    {
      if (v225 >= v68)
      {
        goto LABEL_482;
      }
    }

    else if (v225 >= 35 && v225 >= v68)
    {
LABEL_482:
      if (v225 >= v68)
      {
        v202 = -v202;
        v364 = v204;
        v365 = v554;
        v366 = v72;
        v367 = v568;
        v368 = v205;
        v369 = v199;
      }

      else
      {
        v203 = v67;
        v364 = v68;
        LODWORD(v68) = v204;
        v365 = v557;
        v367 = v72;
        v366 = v568;
        v557 = v554;
        v368 = v199;
        v369 = v205;
      }

      *&v585 = v367;
      *(&v585 + 1) = v365;
      *&v586 = v546;
      *(&v586 + 1) = v69;
      bid_add_and_round(v68, v364, v203, v202, v369, v368, v366, v557, &v585, a11, &v583 + 3, &v583 + 2, &v583 + 1, &v583, a12, &v584);
      goto LABEL_486;
    }
  }

  v548 = v29 == v30;
  if (v202 <= 1 && v29 != v30)
  {
    goto LABEL_482;
  }

  if (v225 < 35)
  {
    v232 = v225 - v68;
    if (v225 >= v68)
    {
      v234 = 0;
    }

    else
    {
      v233 = v68 - v225;
      if (v204 > 19)
      {
        v234 = 0;
        v232 = 0;
        v455 = __bid_ten2k64[v233];
        v456 = HIDWORD(v455) * v568;
        v457 = v455 * HIDWORD(v568) + v456 + ((v455 * v568) >> 32);
        v458 = (v455 * v568) | (v457 << 32);
        v459 = HIDWORD(v456) + HIDWORD(v455) * HIDWORD(v568) + HIDWORD(v457) + v455 * v554;
        v568 = v458;
        *&v580 = v458;
        *(&v580 + 1) = v459;
        v554 = v459;
      }

      else
      {
        v234 = 0;
        v232 = 0;
        if (v233 > 19)
        {
          v467 = &__bid_ten2k128[2 * (v233 - 20)];
          v468 = *v467 * HIDWORD(v568);
          v469 = HIDWORD(*v467) * v568 + v468 + ((*v467 * v568) >> 32);
          v470 = HIDWORD(v468) + HIDWORD(*v467) * HIDWORD(v568) + HIDWORD(v469) + v467[1] * v568;
          *&v580 = (*v467 * v568) | (v469 << 32);
          *(&v580 + 1) = v470;
          v554 = v470;
        }

        else
        {
          v235 = __bid_ten2k64[v233];
          v236 = v235 * HIDWORD(v568);
          v237 = HIDWORD(v235) * v568 + v236 + ((v235 * v568) >> 32);
          v554 = HIDWORD(v236) + HIDWORD(v235) * HIDWORD(v568) + HIDWORD(v237);
          *&v580 = (v235 * v568) | (v237 << 32);
          *(&v580 + 1) = v554;
        }

        v568 = v580;
      }
    }

    goto LABEL_287;
  }

LABEL_286:
  v232 = 34 - v68;
  v234 = (v225 - 34);
LABEL_287:
  v239 = 0;
  v240 = v72;
  v553 = HIDWORD(v72);
  v545 = v72;
  v241 = v232;
  v242 = v67 - v232;
  if (v67 - v232 >= -6176)
  {
    v242 = -6176;
  }

  v534 = v242;
  v243 = &__bid_ten2k128[2 * v232 - 40];
  v535 = &__bid_ten2k128[2 * v555 - 40 + -2 * v234];
  v536 = v555 - v234;
  v244 = v234;
  v539 = &__bid_ten2k64[v232];
  v540 = v232;
  v245 = v67 - v232;
  v537 = &__bid_ten2k64[v555 - v234];
  v246 = v557;
  v541 = v234;
  while (1)
  {
    if (v241 + v239)
    {
      if (v68 > 19)
      {
        v254 = v539[v239];
        v255 = HIDWORD(v254) * v545;
        v256 = v254 * v545;
        v257 = v254 * v553 + v255 + HIDWORD(v256);
        v258 = HIDWORD(v255) + HIDWORD(v254) * v553 + HIDWORD(v257) + v254 * v246;
        *&v584 = v256 | (v257 << 32);
      }

      else
      {
        if (v241 + v239 <= 19)
        {
          v247 = v539[v239];
          v248 = HIDWORD(v247);
          v249 = v247 * v553;
          v250 = v247 * v545;
          v251 = v248 * v545;
          v252 = HIDWORD(v249) + v248 * v553;
          v253 = v251 + v249 + HIDWORD(v250);
          *&v584 = v250 | (v253 << 32);
          *(&v584 + 1) = v252 + HIDWORD(v253);
          goto LABEL_298;
        }

        v259 = HIDWORD(*v243);
        v260 = *v243 * v553;
        v261 = v259 * v545;
        v262 = HIDWORD(v260) + v259 * v553;
        v263 = v261 + v260 + ((*v243 * v545) >> 32);
        v258 = v262 + HIDWORD(v263) + v243[1] * v240;
        *&v584 = (*v243 * v545) | (v263 << 32);
      }

      *(&v584 + 1) = v258;
    }

    else
    {
      *&v584 = v240;
      *(&v584 + 1) = v246;
    }

LABEL_298:
    if (v234 == v239)
    {
      *&v579 = v568;
      *(&v579 + 1) = v554;
    }

    else
    {
      v264 = v68;
      if (v555 > 18)
      {
        if (v555 > 0x26)
        {
          if (v555 > 0x39)
          {
            *&v585 = v568;
            *(&v585 + 1) = v554;
            *&v586 = v546;
            *(&v586 + 1) = v538;
            __bid_round256_58_76(v555, v244, &v585, &v577, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
            if (v582)
            {
              if (v536 + v239 > 19)
              {
                v577 = *&v535[2 * v239];
                v266 = v577;
              }

              else
              {
                v266 = v537[v239];
                *&v577 = v266;
              }
            }

            else
            {
              v266 = v577;
            }

            v267 = *(&v577 + 1);
          }

          else
          {
            *&v585 = v568;
            *(&v585 + 1) = v554;
            v586 = v546;
            __bid_round192_39_57(v555, v244, &v585, v587, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
            if (v582)
            {
              if (v536 + v239 > 19)
              {
                v587[0] = *&v535[2 * v239];
                v266 = *&v587[0];
              }

              else
              {
                v266 = v537[v239];
                *&v587[0] = v266;
              }
            }

            else
            {
              v266 = *&v587[0];
            }

            v267 = *(&v587[0] + 1);
          }

          *&v579 = v266;
          *(&v579 + 1) = v267;
          v246 = v557;
          v240 = v561;
          v68 = v264;
          v241 = v540;
          v234 = v541;
        }

        else
        {
          *&v580 = v568;
          *(&v580 + 1) = v554;
          __bid_round128_19_38(v555, v244, v568, v554, &v579, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
          v246 = v557;
          v240 = v561;
          v68 = v264;
          v241 = v540;
          v234 = v541;
          if (v582)
          {
            if (v536 + v239 > 19)
            {
              v579 = *&v535[2 * v239];
            }

            else
            {
              *&v579 = v537[v239];
            }
          }
        }
      }

      else
      {
        __bid_round64_2_18(v555, v244, v568, &v581, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
        if (v582)
        {
          v265 = v537[v239];
          v581 = v265;
        }

        else
        {
          v265 = v581;
        }

        v579 = v265;
        v246 = v557;
        v240 = v561;
        v68 = v264;
        v241 = v540;
        v234 = v541;
      }
    }

    if (v548)
    {
      break;
    }

    v268 = v584;
    v269 = v584 - v579;
    v270 = (__PAIR128__(*(&v584 + 1) - *(&v579 + 1), v584) - v579) >> 64;
    v584 = __PAIR128__(*(&v584 + 1) - *(&v579 + 1), v584) - v579;
    if (v245 < -6175)
    {
      LODWORD(v245) = v534;
LABEL_479:
      if (DWORD1(v583))
      {
        *&v583 = 1;
        goto LABEL_871;
      }

      if (v583)
      {
        LODWORD(v583) = 0;
        goto LABEL_508;
      }

      if ((v268 & 1) == 0)
      {
        if (HIDWORD(v583))
        {
          *(&v583 + 1) = 1;
        }

        else if (DWORD2(v583))
        {
          *(&v583 + 1) = 0x100000000;
        }

        goto LABEL_871;
      }

      if (HIDWORD(v583))
      {
        *&v584 = v269 + 1;
        if (v269 == -1)
        {
          v451 = v270 + 1;
          goto LABEL_870;
        }

        if (v269 != 0x378D8E63FFFFFFFFLL || v270 != 0x1ED09BEAD87C0)
        {
          goto LABEL_871;
        }

LABEL_807:
        v584 = xmmword_1C1F58CD0;
        LODWORD(v245) = v245 + 1;
        goto LABEL_871;
      }

      v487 = DWORD2(v583);
      if (!DWORD2(v583))
      {
        goto LABEL_871;
      }

      v488 = v269 - 1;
      *&v584 = v488;
      if (v268 != v579)
      {
        if (!(v270 | v488))
        {
          v21 = 0;
          v584 = 0uLL;
          *a1 = 0;
          *a2 = v487;
          goto LABEL_71;
        }

        goto LABEL_871;
      }

      v451 = v270 - 1;
      goto LABEL_870;
    }

    if (v270 < 0x314DC6448D93 || v269 < 0x38C15B0A00000000 && v270 == 0x314DC6448D93)
    {
      if (v244 < 1)
      {
        goto LABEL_479;
      }
    }

    else if (v270 != 0x314DC6448D93 || v269 != 0x38C15B0A00000000 || *(&v583 + 4) == 0 || v244 <= 0)
    {
      goto LABEL_479;
    }

    --v244;
    v583 = 0uLL;
    v243 += 2;
    ++v239;
    --v245;
    v582 = 0;
  }

  v351 = v584;
  v584 += v579;
  v352 = v584;
  if (*(&v584 + 1) <= 0x1ED09BEAD87C0uLL && (v584 <= 0x378D8E63FFFFFFFFLL || *(&v584 + 1) != 0x1ED09BEAD87C0))
  {
    if ((v351 & 1) == 0)
    {
      goto LABEL_871;
    }

    if (DWORD2(v583))
    {
      *(&v583 + 1) = 0x100000000;
      *&v584 = v584 + 1;
      if (v352 != -1)
      {
        if (v352 != __PAIR128__(0x1ED09BEAD87C0, 0x378D8E63FFFFFFFFLL))
        {
          goto LABEL_871;
        }

        goto LABEL_807;
      }

      v451 = *(&v352 + 1) + 1;
    }

    else
    {
      if (!HIDWORD(v583))
      {
        goto LABEL_871;
      }

      *(&v583 + 1) = 1;
      *&v584 = v584 - 1;
      if (v352)
      {
        if (!(*(&v352 + 1) | (v352 - 1)))
        {
          v584 = 0uLL;
          *a1 = 0;
          v370 = 1;
          goto LABEL_487;
        }

        goto LABEL_871;
      }

      v451 = *(&v352 + 1) - 1;
    }

LABEL_870:
    *(&v584 + 1) = v451;
    goto LABEL_871;
  }

  v354 = v583;
  v353 = DWORD1(v583);
  v355 = DWORD2(v583);
  v356 = HIDWORD(v583);
  v583 = 0uLL;
  v580 = v584;
  __bid_round128_19_38(35, 1, v584, *(&v584 + 1), &v584, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
  v357 = HIDWORD(v583);
  if (v354 | v356 && HIDWORD(v583))
  {
    v358 = v584;
    *&v584 = v584 - 1;
    if (!v358)
    {
      --*(&v584 + 1);
    }

    v357 = 0;
    HIDWORD(v583) = 0;
    v359 = 1;
    DWORD1(v583) = 1;
    v360 = DWORD2(v583);
    v361 = v583;
    goto LABEL_795;
  }

  v360 = DWORD2(v583);
  if (v353 | v355 && DWORD2(v583))
  {
    v182 = __CFADD__(v584, 1);
    *&v584 = v584 + 1;
    if (v182)
    {
      ++*(&v584 + 1);
    }

    v360 = 0;
    DWORD2(v583) = 0;
    v361 = 1;
    LODWORD(v583) = 1;
    v359 = DWORD1(v583);
    goto LABEL_795;
  }

  v361 = v583;
  v359 = DWORD1(v583);
  if (v583 == 0)
  {
    if (v354 | v356)
    {
      v361 = 1;
      LODWORD(v583) = 1;
    }

    else
    {
      v361 = 0;
    }

    if (v353 | v355)
    {
      v360 = 0;
      v357 = 0;
      v359 = 1;
      DWORD1(v583) = 1;
    }

    else
    {
      v359 = 0;
      v360 = 0;
      v357 = 0;
    }

    goto LABEL_795;
  }

  v466 = (v354 | v356) == 0;
  if (!DWORD2(v583))
  {
    v466 = 1;
  }

  if (!v466)
  {
    v361 = 0;
    v360 = 0;
    v357 = 0;
    v359 = 1;
    *&v583 = 0x100000000;
LABEL_786:
    *(&v583 + 1) = 0;
    goto LABEL_795;
  }

  v489 = (v353 | v355) == 0;
  if (!HIDWORD(v583))
  {
    v489 = 1;
  }

  if (!v489)
  {
    v359 = 0;
    v360 = 0;
    v357 = 0;
    v361 = 1;
    *&v583 = 1;
    goto LABEL_786;
  }

LABEL_795:
  LODWORD(v245) = v245 + 1;
  if (!v357 && !v360 && !v359 && !v361 && (v356 || v355 || v354 | v353))
  {
LABEL_508:
    DWORD1(v583) = 1;
  }

LABEL_871:
  if (v245 == -6176)
  {
    if ((*(&v584 + 1) & 0x1FFFFFFFFFFFFuLL) < 0x314DC6448D93 || (v497 = 1, (*(&v584 + 1) & 0x1FFFFFFFFFFFFLL) == 0x314DC6448D93) && v584 < 0x38C15B0A00000000)
    {
      v497 = 0;
    }

    v499 = (*(&v584 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0x314DC6448D93 || v584 != 0x38C15B0A00000000;
    v500 = v497 & (v499 || v548);
LABEL_883:
    LODWORD(v245) = -6176;
    goto LABEL_889;
  }

  if (v245 > -6177)
  {
    v500 = 1;
    goto LABEL_889;
  }

  v501 = -6176 - v245;
  v502 = v583;
  v574 = DWORD1(v583);
  v503 = DWORD2(v583);
  v504 = HIDWORD(v583);
  v583 = 0uLL;
  if (*(&v584 + 1))
  {
    if (v584 >= __PAIR128__(5, 0x6BC75E2D63100000))
    {
      v510 = &qword_1C2091EB8;
      for (i = 1; i != 19; ++i)
      {
        if (v584 < *(v510 - 1))
        {
          break;
        }

        v510 += 2;
      }

      j = (i + 20);
    }

    else
    {
      j = 20;
    }
  }

  else
  {
    for (j = 1; j != 20; ++j)
    {
      if (v584 < __bid_ten2k64[j])
      {
        break;
      }
    }
  }

  v512 = j - v501;
  if (j == v501)
  {
    v584 = xmmword_1C1F58CE0;
    LODWORD(v583) = 1;
  }

  else if (j > 18)
  {
    if (j <= 0x26)
    {
      v580 = v584;
      __bid_round128_19_38(j, v501, v584, *(&v584 + 1), &v584, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
      if (v582)
      {
        if (v512 > 19)
        {
          v584 = *&__bid_ten2k128[2 * (v512 - 20)];
        }

        else
        {
          *&v584 = __bid_ten2k64[v512];
        }
      }
    }
  }

  else
  {
    __bid_round64_2_18(j, v501, v584, &v581, &v582, &v583 + 3, &v583 + 2, &v583 + 1, &v583);
    if (v582)
    {
      v513 = &__bid_ten2k64[v512];
    }

    else
    {
      v513 = &v581;
    }

    v584 = *v513;
  }

  v514 = HIDWORD(v583);
  if (v502 | v504 && HIDWORD(v583))
  {
    v515 = v584;
    *&v584 = v584 - 1;
    if (!v515)
    {
      --*(&v584 + 1);
    }

    v514 = 0;
    HIDWORD(v583) = 0;
    v516 = 1;
    DWORD1(v583) = 1;
    v517 = DWORD2(v583);
    v518 = v583;
    goto LABEL_949;
  }

  v517 = DWORD2(v583);
  if (v574 | v503 && DWORD2(v583))
  {
    v182 = __CFADD__(v584, 1);
    *&v584 = v584 + 1;
    if (v182)
    {
      ++*(&v584 + 1);
    }

    v517 = 0;
    DWORD2(v583) = 0;
    v518 = 1;
    LODWORD(v583) = 1;
    v516 = DWORD1(v583);
    goto LABEL_949;
  }

  v518 = v583;
  v516 = DWORD1(v583);
  if (v583 == 0)
  {
    if (v502 | v504)
    {
      v518 = 1;
      LODWORD(v583) = 1;
    }

    else
    {
      v518 = 0;
    }

    if (v574 | v503)
    {
      v517 = 0;
      v514 = 0;
      v516 = 1;
      DWORD1(v583) = 1;
    }

    else
    {
      v516 = 0;
      v517 = 0;
      v514 = 0;
    }

    goto LABEL_949;
  }

  v519 = (v502 | v504) == 0;
  if (!DWORD2(v583))
  {
    v519 = 1;
  }

  if (!v519)
  {
    v518 = 0;
    v517 = 0;
    v514 = 0;
    v516 = 1;
    *&v583 = 0x100000000;
LABEL_944:
    *(&v583 + 1) = 0;
    goto LABEL_949;
  }

  v520 = (v574 | v503) == 0;
  if (!HIDWORD(v583))
  {
    v520 = 1;
  }

  if (!v520)
  {
    v516 = 0;
    v517 = 0;
    v514 = 0;
    v518 = 1;
    *&v583 = 1;
    goto LABEL_944;
  }

LABEL_949:
  v500 = 0;
  LODWORD(v245) = -6176;
  if (!v514 && !v517 && !v516 && !v518)
  {
    if (v504 || v503 || v502 | v574)
    {
      v500 = 0;
      DWORD1(v583) = 1;
    }

    else
    {
      v500 = 0;
    }

    goto LABEL_883;
  }

LABEL_889:
  v21 = v583;
  v382 = DWORD1(v583);
  v507 = DWORD2(v583);
  v506 = HIDWORD(v583);
  if (v583 != 0)
  {
    v508 = *a12;
    *a12 |= 0x20u;
    if ((v500 & 1) == 0)
    {
      *a12 = v508 | 0x30;
    }
  }

  if (v584 == __PAIR128__(0x1ED09BEAD87C0, 0x378D8E6400000000))
  {
    *&v584 = 0x38C15B0A00000000;
    LODWORD(v245) = v245 + 1;
    v509 = 0x314DC6448D93;
  }

  else
  {
    v509 = *(&v584 + 1);
  }

  *(&v584 + 1) = v509 | ((v245 + 6176) << 49) | v543;
  if (a11 || v245 < 6112)
  {
    if (a11)
    {
      bid_rounding_correction(a11, v382, v21, v506, v507, v245, &v584, a12);
    }
  }

  else
  {
    *&v584 = 0;
    *(&v584 + 1) = v543 | 0x7800000000000000;
    *a12 |= 0x28u;
  }

  *a1 = v506;
  *a2 = v507;
LABEL_901:
  *a3 = v382;
LABEL_72:
  *a4 = v21;
  result = v584;
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bid_rounding_correction(uint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t *a7, _DWORD *a8)
{
  v8 = *a7;
  v9 = a7[1];
  if (a4 | a3 | a2 | a5)
  {
    *a8 |= 0x20u;
  }

  v10 = v9 & 0x8000000000000000;
  v11 = (a6 + 6176) << 49;
  v12 = v9 & 0x1FFFFFFFFFFFFLL;
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (result != 2 || !a2)
    {
      v13 = result == 2;
      goto LABEL_10;
    }

LABEL_16:
    if (__CFADD__(v8++, 1))
    {
      ++v12;
    }

    v16 = 0x314DC6448D93;
    v17 = (a6 + 6177) << 49;
    if (v12 == 0x1ED09BEAD87C0)
    {
      v18 = a6 + 1;
    }

    else
    {
      v18 = a6;
    }

    if (v12 == 0x1ED09BEAD87C0)
    {
      v19 = 0x38C15B0A00000000;
    }

    else
    {
      v17 = (a6 + 6176) << 49;
      v16 = v12;
      v19 = v8;
    }

    if (v8 == 0x378D8E6400000000)
    {
      a6 = v18;
      v11 = v17;
      v12 = v16;
      v8 = v19;
    }

    goto LABEL_26;
  }

  if (result == 1 && a2)
  {
    goto LABEL_16;
  }

  v13 = result == 1;
LABEL_10:
  v14 = v13 || result == 4;
  if (v14 && a5)
  {
    goto LABEL_16;
  }

  if (a4 | a3 && ((result & 0xFFFFFFFE) == 2 && v10 || (result & 0xFFFFFFFD) == 1 && !v10))
  {
    v20 = __PAIR128__(v12, v8) - 1;
    v12 = *(&v20 + 1);
    if (*(&v20 + 1) == 0x314DC6448D93 && (v8 = 0x38C15B09FFFFFFFFLL, v20 == 0x38C15B09FFFFFFFFLL))
    {
      if (v11)
      {
        v8 = 0x378D8E63FFFFFFFFLL;
        v12 = 0x1ED09BEAD87C0;
        v21 = (a6 + 6175);
        --a6;
        v11 = v21 << 49;
      }

      else
      {
        *a8 |= 0x10u;
        v12 = 0x314DC6448D93;
      }
    }

    else
    {
      v8 = v20;
    }
  }

LABEL_26:
  if (a6 < 6112)
  {
    goto LABEL_45;
  }

  *a8 |= 0x28u;
  v11 = 0;
  if (!v10)
  {
    v12 = 0x7800000000000000;
    if (result != 2)
    {
      v8 = 0;
      if (result != 4)
      {
        v11 = 0;
        v12 = 0x5FFFED09BEAD87C0;
LABEL_43:
        v8 = 0x378D8E63FFFFFFFFLL;
        goto LABEL_45;
      }

      goto LABEL_45;
    }

LABEL_44:
    v8 = 0;
    goto LABEL_45;
  }

  v12 = 0xF800000000000000;
  if (result == 1)
  {
    goto LABEL_44;
  }

  v8 = 0;
  if (result != 4)
  {
    v11 = 0;
    v12 = 0xDFFFED09BEAD87C0;
    goto LABEL_43;
  }

LABEL_45:
  *a7 = v8;
  a7[1] = v11 | v12 | v10;
  return result;
}

uint64_t bid_add_and_round(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, int64x2_t *a9, unsigned int a10, int *a11, _BOOL4 *a12, int *a13, int *a14, int *a15, __int128 *a16)
{
  v16 = a6;
  v140 = *MEMORY[0x1E69E9840];
  v136 = 0;
  v135 = 0uLL;
  v134 = 0uLL;
  memset(v139, 0, sizeof(v139));
  v132 = 0u;
  v133 = 0u;
  v130 = 0;
  v131 = 0;
  v129 = 0;
  v128 = *a16;
  v19 = a2 - (a4 + a1);
  if (a2 == a4 + a1)
  {
    v20 = 0;
    v21 = 0;
    v133 = 0uLL;
    v132.i64[0] = a7;
    v132.i64[1] = a8;
  }

  else
  {
    v22 = HIDWORD(a7);
    if (v19 > 19)
    {
      if (v19 > 0x26)
      {
        if (v19 > 0x39)
        {
          v74 = &__bid_ten2k128[2 * (v19 - 58)];
          v75 = HIDWORD(*v74);
          v76 = *v74 * HIDWORD(a7);
          v77 = *v74 * a7;
          v78 = v75 * a7 + v76 + HIDWORD(v77);
          v71 = v77;
          v72 = v74[1] * a7 + v75 * HIDWORD(a7) + HIDWORD(v76) + HIDWORD(v78);
          v134.i64[0] = (*v74 * a7) | (v78 << 32);
          v134.i64[1] = v72;
          v73 = v75 * a7 + v76 + HIDWORD(v77);
        }

        else
        {
          v64 = __bid_ten2k64[v19 - 38];
          v65 = HIDWORD(v64);
          v66 = v64;
          v67 = v64 * a8;
          v68 = HIDWORD(v64) * a7;
          v69 = v64 * a7;
          v70 = v66 * HIDWORD(a7) + v68 + HIDWORD(v69);
          v71 = v69;
          v72 = v67 + v65 * HIDWORD(a7) + HIDWORD(v68) + HIDWORD(v70);
          v134.i64[0] = v69 | (v70 << 32);
          v134.i64[1] = v72;
          v73 = v70;
        }

        v79 = ((1518781562 * v71) >> 32) + 1262177448 * v71 + 1518781562 * v73;
        a7 = 0x98A224000000000 * v71;
        v80 = __PAIR128__(((1518781562 * v73) >> 32) + 1262177448 * v73, (1518781562 * v71) | (v79 << 32)) + __PAIR128__(HIDWORD(v79), ((160047680 * v71) >> 32) + 160047680 * v73);
        v81 = HIDWORD(v72);
        v82 = ((1518781562 * HIDWORD(v72)) >> 32) + 1262177448 * HIDWORD(v72);
        v83 = (1518781562 * HIDWORD(v72)) + 1262177448 * v72 + ((1518781562 * v72) >> 32);
        v84 = HIDWORD(v83);
        v85 = (1518781562 * v72) | (v83 << 32);
        v86 = (160047680 * v72) >> 32;
        v87 = 0x98A224000000000 * v72;
        v59 = (__PAIR128__(v82, v85) + __PAIR128__(v84, v86 + 160047680 * v81)) >> 64;
        a8 = v87 + ((1518781562 * v71) | (v79 << 32)) + ((160047680 * v71) >> 32) + 160047680 * v73;
        v132.i64[0] = 0x98A224000000000 * v71;
        v132.i64[1] = a8;
        v63 = __CFADD__(__CFADD__(v87, ((1518781562 * v71) | (v79 << 32)) + ((160047680 * v71) >> 32) + 160047680 * v73), v85 + v86 + 160047680 * v81);
        v88 = __CFADD__(v87, ((1518781562 * v71) | (v79 << 32)) + ((160047680 * v71) >> 32) + 160047680 * v73) + v85 + v86 + 160047680 * v81;
        LODWORD(v62) = v63;
        v63 = __CFADD__(*(&v80 + 1), v88);
        v20 = *(&v80 + 1) + v88;
      }

      else
      {
        v33 = &__bid_ten2k128[2 * (v19 - 20)];
        v34 = *v33;
        v35 = v33[1];
        v36 = HIDWORD(v34);
        v37 = HIDWORD(v34) * a8;
        v38 = HIDWORD(v37) + HIDWORD(v34) * HIDWORD(a8);
        v39 = v34 * HIDWORD(a8) + v37 + ((v34 * a8) >> 32);
        v40 = HIDWORD(v39);
        v41 = (v34 * a8) | (v39 << 32);
        LODWORD(v39) = a7;
        v42 = HIDWORD(v34) * a7;
        v43 = v35 * a7;
        v44 = v34 * a7;
        v45 = v34 * v22 + v42 + HIDWORD(v44);
        a7 = v44 | (v45 << 32);
        v46 = __PAIR128__(v38, v41) + __PAIR128__(v40, HIDWORD(v42) + v36 * v22 + HIDWORD(v45));
        v47 = HIDWORD(v35);
        LODWORD(v41) = v35;
        v48 = HIDWORD(v35) * a8;
        v49 = v35 * a8;
        v50 = HIDWORD(v48) + v47 * HIDWORD(a8);
        v51 = v41 * HIDWORD(a8) + v48 + HIDWORD(v49);
        v52 = HIDWORD(v51);
        v53 = v49 | (v51 << 32);
        v54 = v47 * v39;
        v55 = v41 * v22;
        v56 = HIDWORD(v54) + v47 * v22;
        v57 = v55 + v54 + HIDWORD(v43);
        v58 = v43 | (v57 << 32);
        v60 = v53 + v56 + HIDWORD(v57);
        v59 = (__PAIR128__(v50, v53) + __PAIR128__(v52, v56 + HIDWORD(v57))) >> 64;
        a8 = v58 + v46;
        v132.i64[0] = a7;
        v132.i64[1] = v58 + v46;
        v61 = __CFADD__(v58, v46) + v60;
        LODWORD(v62) = __CFADD__(__CFADD__(v58, v46), v60);
        v63 = __CFADD__(*(&v46 + 1), v61);
        v20 = *(&v46 + 1) + v61;
      }

      if (v63)
      {
        v62 = 1;
      }

      else
      {
        v62 = v62;
      }

      v21 = v59 + v62;
      v133.i64[0] = v20;
      v133.i64[1] = v21;
    }

    else
    {
      v21 = 0;
      v135 = __bid_ten2k64[v19];
      v23 = v135.u32[1] * a8;
      v24 = HIDWORD(v23) + v135.u32[1] * HIDWORD(a8);
      v25 = v135.u32[0] * HIDWORD(a8) + v23 + ((v135.u32[0] * a8) >> 32);
      v26 = HIDWORD(v25);
      v27 = (v135.i32[0] * a8) | (v25 << 32);
      v28 = v135.u32[1] * a7;
      v29 = v135.u32[0] * a7;
      v30 = v135.u32[0] * v22 + v28 + HIDWORD(v29);
      v31 = HIDWORD(v28) + v135.u32[1] * v22 + HIDWORD(v30);
      a7 = v29 | (v30 << 32);
      v132.i64[0] = a7;
      v132.i64[1] = v27 + v31;
      v32 = v27 + v31;
      v20 = (__PAIR128__(v24, v27) + __PAIR128__(v26, v31)) >> 64;
      a8 = v32;
      v133 = v20;
    }
  }

  if (a6 == a5)
  {
    v89 = a9[1];
    v137 = *a9;
    v138 = v89;
    v126 = v132;
    v127 = v133;
    bid_add256(&v137, &v126, &v132);
  }

  else
  {
    v90 = a9[1].u64[1];
    if (v21 > v90 || v21 == v90 && ((v93 = a9[1].u64[0], v20 > v93) || v20 == v93 && __PAIR128__(a8, a7) >= *a9))
    {
      v137 = v132;
      v138 = v133;
      v91 = a9[1];
      v126 = *a9;
      v127 = v91;
      result = bid_sub256(&v137, &v126, &v132);
      v16 = a5;
    }

    else
    {
      v94 = a9[1];
      v137 = *a9;
      v138 = v94;
      v126 = v132;
      v127 = v133;
      result = bid_sub256(&v137, &v126, &v132);
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v132), vceqzq_s64(v133))))) & 1) == 0)
    {
      if (a3 <= -6176)
      {
        v101 = -6176;
      }

      else
      {
        v101 = a3;
      }

      *&v128 = 0;
      *(&v128 + 1) = ((a10 == 1) << 63) | ((v101 + 6176) << 49);
      *a16 = v128;
      goto LABEL_94;
    }
  }

  v137 = v132;
  v138 = v133;
  result = bid_bid_nr_digits256(&v137);
  v95 = result - 34;
  if (result > 34)
  {
    if (result > 0x26)
    {
      v137 = v132;
      if (result > 0x39)
      {
        v138 = v133;
        __bid_round256_58_76(result, result - 34, &v137, &v132, &v129, &v131 + 1, &v131, &v130 + 1, &v130);
        v100 = v132;
      }

      else
      {
        v138 = v133.u64[0];
        __bid_round192_39_57(result, result - 34, &v137, v139, &v129, &v131 + 1, &v131, &v130 + 1, &v130);
        v100 = v139[0];
      }

      v134 = v100;
      v99 = v100.i64[1];
    }

    else
    {
      v135 = v132;
      __bid_round128_19_38(result, result - 34, v132.u64[0], v132.u64[1], &v134, &v129, &v131 + 1, &v131, &v130 + 1, &v130);
      v99 = v134.i64[1];
    }

    v96 = v95 + a3 < -6176;
    a3 += v129 + v95;
    if (a10)
    {
      v135.i64[0] = v134.i64[0];
      v135.i64[1] = v16 | v99 | 0x3040000000000000;
      bid_rounding_correction(a10, SHIDWORD(v130), v130, SHIDWORD(v131), v131, 0, v135.i64, a15);
    }

    v97 = v99 | ((a3 + 6176) << 49);
    result = 34;
    v98 = &v134;
  }

  else
  {
    v96 = result + a3 < -6142;
    v97 = v132.i64[1] | ((a3 + 6176) << 49);
    v98 = &v132;
  }

  v102 = v97 | v16;
  v103 = v98->i64[0];
  *&v128 = v98->i64[0];
  *(&v128 + 1) = v102;
  if (!a10 && a3 + result >= 6146)
  {
    *&v128 = 0;
    *(&v128 + 1) = v16 | 0x7800000000000000;
    *a16 = v128;
    *a15 |= 0x28u;
    goto LABEL_94;
  }

  v104 = v131;
  v105 = HIDWORD(v131);
  v107 = v130;
  v106 = HIDWORD(v130);
  if (a3 <= -6177)
  {
    v130 = 0;
    v131 = 0;
    v108 = -6176 - a3;
    if (-6176 - a3 > result)
    {
      v107 = 0;
      v104 = 0;
      v105 = 0;
      *&v128 = 0;
      *(&v128 + 1) = v16;
LABEL_52:
      a3 = -6176;
      v106 = 1;
      goto LABEL_85;
    }

    if (v108 != result)
    {
      if (result > 0x12)
      {
        v135.i64[0] = v103;
        v135.i64[1] = v102 & 0x1FFFFFFFFFFFFLL;
        result = __bid_round128_19_38(result, v108, v103, v102 & 0x1FFFFFFFFFFFFLL, &v128, &v129, &v131 + 1, &v131, &v130 + 1, &v130);
        v111 = *(&v128 + 1);
      }

      else
      {
        result = __bid_round64_2_18(result, v108, v103, &v136, &v129, &v131 + 1, &v131, &v130 + 1, &v130);
        v111 = 0;
        *&v128 = v136;
      }

      if (v129)
      {
        v115 = ((5 * v128) >> 31) + 10 * DWORD1(v128);
        *&v128 = (10 * v128) | (v115 << 32);
        v111 = 0xA00000000 * (HIDWORD(v111) & 0x1FFFF) + 10 * v111 + HIDWORD(v115);
      }

      v116 = v111 & 0x1FFFFFFFFFFFFLL | v16;
      *(&v128 + 1) = v116;
      v117 = v107 | v105;
      v118 = (v107 | v105) != 0;
      v105 = HIDWORD(v131);
      if (v117 && HIDWORD(v131))
      {
        v119 = v128;
        *&v128 = v128 - 1;
        if (!v119)
        {
          *(&v128 + 1) = v116 - 1;
        }

        v105 = 0;
        v104 = v131;
        a3 = -6176;
        v106 = 1;
        v107 = v130;
        goto LABEL_85;
      }

      v120 = v106 | v104;
      v121 = (v106 | v104) != 0;
      v104 = v131;
      if (v120 && v131)
      {
        v63 = __CFADD__(v128, 1);
        *&v128 = v128 + 1;
        if (v63)
        {
          *(&v128 + 1) = v116 + 1;
        }

        v104 = 0;
        a3 = -6176;
        v107 = 1;
        v106 = HIDWORD(v130);
        goto LABEL_85;
      }

      v107 = v130;
      v106 = HIDWORD(v130);
      if (!v131 && !v130)
      {
        v104 = 0;
        v105 = 0;
        a3 = -6176;
        v107 = v118;
        v106 = v120 != 0;
        goto LABEL_85;
      }

      if (!v131)
      {
        LOBYTE(v118) = 0;
      }

      if (v118)
      {
        v107 = 0;
        v104 = 0;
        v105 = 0;
        goto LABEL_52;
      }

      v125 = !v121;
      if (!HIDWORD(v131))
      {
        v125 = 1;
      }

      if ((v125 & 1) == 0)
      {
        v106 = 0;
        v104 = 0;
        v105 = 0;
        a3 = -6176;
        v107 = 1;
        goto LABEL_85;
      }

LABEL_84:
      a3 = -6176;
      goto LABEL_85;
    }

    if (result > 0x13)
    {
      v112 = v102 & 0x1FFFFFFFFFFFFLL;
      v113 = &__bid_midpoint128[(result - 20)];
      v114 = v113[1];
      if (v112 >= v114)
      {
        if (v112 == v114)
        {
          v122 = *v113;
          if (v103 < v122)
          {
            goto LABEL_60;
          }

          if (v103 == v122)
          {
            v107 = 0;
            v106 = 0;
            v110 = 0;
            v104 = 1;
            goto LABEL_83;
          }
        }

        v106 = 0;
        v104 = 0;
        v107 = 1;
        v110 = 1;
        goto LABEL_83;
      }
    }

    else
    {
      v109 = __bid_midpoint64[(result - 1)];
      if (v103 >= v109)
      {
        v106 = 0;
        v104 = v103 == v109;
        v110 = v103 != v109;
        v107 = v110;
LABEL_83:
        v105 = 0;
        *&v128 = v110;
        *(&v128 + 1) = v16;
        goto LABEL_84;
      }
    }

LABEL_60:
    v107 = 0;
    v104 = 0;
    v110 = 0;
    v106 = 1;
    goto LABEL_83;
  }

LABEL_85:
  if (a10)
  {
    result = bid_rounding_correction(a10, v106, v107, v105, v104, a3, &v128, a15);
  }

  if (v105 || v104 || v106 || v107)
  {
    v123 = *a15;
    *a15 |= 0x20u;
    if (v96)
    {
      *a15 = v123 | 0x30;
    }
  }

  *a11 = v105;
  *a12 = v104;
  *a13 = v106;
  *a14 = v107;
  *a16 = v128;
LABEL_94:
  v124 = *MEMORY[0x1E69E9840];
  return result;
}

void *bid_add256(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = *a2 + *result;
  if (__CFADD__(*a2, *result) && (v5 = __CFADD__(v3, 1), ++v3, result[1] = v3, v5))
  {
    v6 = result[2];
    v7 = v6 + 1;
    result[2] = v6 + 1;
    if (v6 == -1)
    {
      ++result[3];
    }

    v8 = a2[1];
  }

  else
  {
    v9 = a2[1];
    v7 = result[2];
    v5 = __CFADD__(v9, v3);
    v8 = v9 + v3;
    if (v5)
    {
      v5 = __CFADD__(v7++, 1);
      result[2] = v7;
      if (v5)
      {
        v10 = result[3] + 1;
        result[3] = v10;
        v11 = a2[2];
        goto LABEL_16;
      }
    }
  }

  v12 = a2[2];
  v10 = result[3];
  v5 = __CFADD__(v12, v7);
  v11 = v12 + v7;
  if (v5)
  {
    result[3] = ++v10;
  }

LABEL_16:
  v13 = a2[3] + v10;
  *a3 = v4;
  a3[1] = v8;
  a3[2] = v11;
  a3[3] = v13;
  return result;
}

void *bid_sub256(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    v5 = result[1];
  }

  else
  {
    v5 = v3 - 1;
    result[1] = v3 - 1;
    if (!v3)
    {
      v6 = result[2];
      v7 = v6 - 1;
      result[2] = v6 - 1;
      if (!v6)
      {
        --result[3];
      }

      v8 = a2[1];
      v5 = -1;
      goto LABEL_10;
    }
  }

  v8 = a2[1];
  v7 = result[2];
  if (v8 > v5)
  {
    result[2] = v7 - 1;
    if (!v7)
    {
      v10 = result[3] - 1;
      result[3] = v10;
      v9 = a2[2];
      v7 = -1;
      goto LABEL_13;
    }

    --v7;
  }

LABEL_10:
  v9 = a2[2];
  v10 = result[3];
  if (v9 > v7)
  {
    result[3] = --v10;
  }

LABEL_13:
  v11 = v5 - v8;
  v12 = v10 - a2[3];
  *a3 = v4;
  a3[1] = v11;
  a3[2] = v7 - v9;
  a3[3] = v12;
  return result;
}

uint64_t bid_bid_nr_digits256(unint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
LABEL_2:
    v2 = &qword_1C20934E8;
    v3 = 1;
    v4 = &qword_1C20934E8;
    do
    {
      v5 = *v4;
      v4 += 4;
      v6 = v1 == v5;
      if (v1 < v5)
      {
        break;
      }

      if (v6)
      {
        v7 = a1[2];
        v8 = *(v2 - 1);
        if (v7 < v8 || v7 == v8 && *a1 < *(v2 - 3))
        {
          break;
        }
      }

      ++v3;
      v2 = v4;
    }

    while (v3 != 30);
    return (v3 + 39);
  }

  v10 = a1[2];
  if (v10 == 2)
  {
    if (*a1 >= __PAIR128__(0xF050FE938943ACC4, 0x5F65568000000000))
    {
      goto LABEL_2;
    }

    return 39;
  }

  if (v10 == 1)
  {
    return 39;
  }

  if (v10)
  {
    goto LABEL_2;
  }

  v11 = a1[1];
  if (v11)
  {
    if (v11 < 5 || v11 == 5 && *a1 < 0x6BC75E2D63100000)
    {
      return 20;
    }

    else
    {
      v14 = &qword_1C2091EB8;
      for (i = 1; i != 19; ++i)
      {
        if (*a1 < *(v14 - 1))
        {
          break;
        }

        v14 += 2;
      }

      return (i + 20);
    }
  }

  else
  {
    v12 = *a1;
    v13 = 1;
    result = 20;
    while (v12 >= __bid_ten2k64[v13])
    {
      if (++v13 == 20)
      {
        return result;
      }
    }

    return v13;
  }
}

unint64_t __bid128_fmod(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5)
{
  v5 = a3;
  v6 = a4 & 0x7800000000000000;
  if (((a4 >> 61) & 3) == 3)
  {
    if (v6 == 0x7800000000000000)
    {
      v7 = 0xFE00000000000000;
      if ((a4 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
      {
        v12 = (a4 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a3 >= 0x38C15B0A00000000;
        if (!v12)
        {
          v7 = 0xFE003FFFFFFFFFFFLL;
          v8 = a3;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      LODWORD(v10) = 0;
      v11 = 0;
      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v5 = 0;
      }

      else
      {
        v5 = v8;
      }

      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v7 = 0xF800000000000000;
      }

      v9 = v7 & a4;
    }

    else
    {
      v5 = 0;
      v9 = 0;
      v11 = 0;
      v10 = (a4 >> 47) & 0x3FFF;
    }
  }

  else
  {
    v9 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a3 >= 0x378D8E6400000000)
    {
      v5 = 0;
      v9 = 0;
    }

    v10 = (a4 >> 49) & 0x3FFF;
    v11 = v9 | v5;
  }

  v65 = 0uLL;
  v14 = a2 & 0x7800000000000000;
  if (((a2 >> 61) & 3) == 3)
  {
    if (v14 == 0x7800000000000000)
    {
      *&v65 = a1;
      if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a1 >= 0x38C15B0A00000000)
      {
        *&v65 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        *&v65 = 0;
      }
    }

    goto LABEL_59;
  }

  v15 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    goto LABEL_36;
  }

  if ((a2 & 0x1FFFFFFFFFFFFLL) != 0x1ED09BEAD87C0)
  {
    v29 = a1;
    goto LABEL_37;
  }

  v29 = a1;
  if (a1 >= 0x378D8E6400000000)
  {
LABEL_36:
    v29 = 0;
    v15 = 0;
  }

LABEL_37:
  *&v65 = v29;
  *(&v65 + 1) = v15;
  v16 = (a2 >> 49) & 0x3FFF;
  if (!(v15 | v29))
  {
LABEL_59:
    if ((~a4 & 0x7E00000000000000) == 0)
    {
      *a5 |= 1u;
    }

    if ((~a2 & 0x7C00000000000000) == 0)
    {
      if ((~a2 & 0x7E00000000000000) == 0)
      {
        *a5 |= 1u;
      }

      return v65;
    }

    v27 = a4 & 0x7C00000000000000;
    if (v14 == 0x7800000000000000 && v27 != 0x7C00000000000000 || !(v9 | v5))
    {
      goto LABEL_75;
    }

    if (v27 == 0x7800000000000000 || v11)
    {
      return 0;
    }

LABEL_70:
    if (v27 == 0x7C00000000000000)
    {
      if ((~a4 & 0x7E00000000000000) == 0)
      {
        *a5 |= 1u;
      }

      return v5;
    }

    v5 = a1;
    if (v6 == 0x7800000000000000)
    {
      return v5;
    }

LABEL_75:
    v5 = 0;
    *a5 |= 1u;
    return v5;
  }

  if (!v11)
  {
    v27 = a4 & 0x7C00000000000000;
    goto LABEL_70;
  }

  v64[0] = 0;
  v64[1] = 0;
  v17 = v16 - v10;
  if (v16 <= v10)
  {
    if (v17 < -34)
    {
      return a1;
    }

    v30 = (&__bid_power10_table_128 + 16 * (v10 - v16));
    v31 = *v30;
    v32 = v30[1];
    v33 = HIDWORD(v32);
    v34 = v32 * HIDWORD(v5);
    v35 = HIDWORD(v34) + HIDWORD(v32) * HIDWORD(v5);
    v36 = HIDWORD(v32) * v5 + v34 + ((v32 * v5) >> 32);
    v37 = HIDWORD(v36);
    v38 = (v32 * v5) | (v36 << 32);
    v39 = HIDWORD(*v30);
    v40 = *v30 * HIDWORD(v5);
    v41 = *v30 * v5;
    v42 = HIDWORD(v40) + HIDWORD(*v30) * HIDWORD(v5);
    v43 = HIDWORD(*v30) * v5 + v40 + HIDWORD(v41);
    v44 = __PAIR128__(v35, v38) + __PAIR128__(v37, v42 + HIDWORD(v43));
    v45 = v32 * HIDWORD(v9);
    v46 = v32 * v9;
    v47 = v33 * v9;
    v48 = HIDWORD(v45) + v33 * HIDWORD(v9);
    v49 = v47 + v45 + HIDWORD(v46);
    v50 = HIDWORD(v49);
    v51 = v46 | (v49 << 32);
    v52 = v31 * HIDWORD(v9);
    v53 = v31 * v9;
    v54 = HIDWORD(v31) * v9 + v52 + HIDWORD(v53);
    v55 = v53 | (v54 << 32);
    v56 = __PAIR128__(v48, v51) + __PAIR128__(v50, HIDWORD(v52) + v39 * HIDWORD(v9) + HIDWORD(v54));
    v57 = v38 + v42 + HIDWORD(v43) + v55;
    v12 = __CFADD__(__CFADD__(v44, v55), v51 + HIDWORD(v52) + v39 * HIDWORD(v9) + HIDWORD(v54));
    v58 = __CFADD__(v44, v55) + v51 + HIDWORD(v52) + v39 * HIDWORD(v9) + HIDWORD(v54);
    v59 = v12;
    v60 = *(&v44 + 1) + v58;
    v61 = __CFADD__(*(&v44 + 1), v58) || v59;
    if (v60 || *(&v56 + 1) != v61 << 63 >> 63 || v57 > v15)
    {
      return a1;
    }

    else
    {
      v62 = v41 | (v43 << 32);
      if (v57 != v15 || (v5 = a1, v62 <= v65))
      {
        v63[0] = 0;
        v63[1] = 0;
        bid___div_128_by_128_1250(v64, v63, v65, *(&v65 + 1), v62, v57);
        return v63[0];
      }
    }
  }

  else
  {
    if (v9)
    {
      v18 = 38;
    }

    else
    {
      v18 = 34;
    }

    do
    {
      if (v17 < 1)
      {
        break;
      }

      v19 = (COERCE_UNSIGNED_INT(v65 + (v15 * 1.8447e19)) >> 23) - 127;
      v20 = v18 - __bid_estimate_decimal_digits[v19];
      v21 = (&__bid_power10_index_binexp_128 + 16 * v19);
      v22 = v21[1];
      if ((v15 - v22) > 0 || v15 == v22 && v65 >= *v21)
      {
        --v20;
      }

      if (v17 >= v20)
      {
        v17 -= v20;
      }

      else
      {
        v20 = v17;
        v17 = 0;
      }

      v23 = (&__bid_power10_table_128 + 16 * v20);
      v24 = *v23;
      v25 = *v23 * DWORD1(v65);
      v26 = HIDWORD(v24) * v65 + v25 + ((v24 * v65) >> 32);
      bid___div_128_by_128_1250(v64, &v65, (*v23 * v65) | (v26 << 32), v24 * v15 + v23[1] * v65 + HIDWORD(v24) * DWORD1(v65) + HIDWORD(v25) + HIDWORD(v26), v5, v9);
      v15 = *(&v65 + 1);
    }

    while (v65 != 0);
    return v65;
  }

  return v5;
}

unint64_t *bid___div_128_by_128_1250(unint64_t *result, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (!(a4 | a6))
  {
    *result = a3 / a5;
    result[1] = 0;
    *a2 = 0;
    a2[1] = 0;
    v20 = a3 - *result * a5;
    goto LABEL_39;
  }

  v6 = a5 + a6 * 1.84467441e19;
  v7 = (a3 + a4 * 1.84467441e19) / v6;
  if (!a6 && !(a5 >> 28) && a5 << 36 <= a4)
  {
    v8 = (v7 * 8.67361738e-19) - 4;
    v9 = HIDWORD(v8) * a5;
    v10 = v8 * a5;
    v11 = HIDWORD(v9);
    v12 = HIDWORD(v10) + v9;
    *(&v13 + 1) = (HIDWORD(v12) + v11);
    *&v13 = v10 & 0xFFFFFFF0 | (v12 << 32);
    v14 = a4 - (v13 >> 4);
    v36 = a3 >= v10 << 60;
    a3 -= v10 << 60;
    v15 = !v36;
    a4 = v14 - v15;
    v16 = a3 + (v14 - v15) * 1.84467441e19;
    v17 = v8 >> 4;
    v7 = v16 / v6;
    v18 = v8 << 60;
    v19 = a5 >> 13;
LABEL_12:
    if (a4 > v19 || a4 == v19 && a3 > a5 << 51)
    {
      v22 = v7 * 1.77635684e-15;
      v23 = v22 - 1;
      v24 = HIDWORD(v23) * a5;
      v25 = v23 * a5;
      v26 = (v22 - 1) * HIDWORD(a5) + v24 + HIDWORD(v25);
      *(&v27 + 1) = (v23 * a6 + HIDWORD(v23) * HIDWORD(a5) + HIDWORD(v24) + HIDWORD(v26));
      *&v27 = v25 & 0xFFFF8000 | (v26 << 32);
      v28 = a4 - (v27 >> 15);
      v36 = a3 >= v25 << 49;
      a3 -= v25 << 49;
      v29 = !v36;
      a4 = v28 - v29;
      v36 = __CFADD__(v18, v23 << 49);
      v18 += v23 << 49;
      v17 += v36 + (v23 >> 15);
      v7 = (a3 + (v28 - v29) * 1.84467441e19) / v6;
    }

    goto LABEL_20;
  }

  v18 = 0;
  if (!(a6 >> 13))
  {
    *(&v21 + 1) = a6;
    *&v21 = a5;
    v19 = v21 >> 13;
    v17 = 0;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_20:
  v30 = v7;
  v31 = v7 >> 32;
  v32 = v31 * a5;
  v33 = v7 * HIDWORD(a5) + v32 + ((v7 * a5) >> 32);
  v34 = (__PAIR128__(a4, a3) - __PAIR128__(v7 * a6 + v31 * HIDWORD(a5) + HIDWORD(v32) + HIDWORD(v33), (v7 * a5) | (v33 << 32))) >> 64;
  v20 = a3 - ((v7 * a5) | (v33 << 32));
  if (v34 < 0)
  {
    v38 = v30 - 1;
    v34 = (__PAIR128__(v34, v20) + __PAIR128__(a6, a5)) >> 64;
    v20 += a5;
    v30 -= 2;
    v39 = __PAIR128__(v34, v20) + __PAIR128__(a6, a5);
    v40 = v34 >= 0;
    if (v34 < 0)
    {
      v34 = (__PAIR128__(v34, v20) + __PAIR128__(a6, a5)) >> 64;
    }

    else
    {
      v30 = v38;
    }

    if (!v40)
    {
      v20 = v39;
    }
  }

  else
  {
    v35 = v34 - a6;
    if (v34 > a6 || (v34 == a6 ? (v36 = v20 >= a5) : (v36 = 0), v36))
    {
      ++v30;
      v36 = v20 >= a5;
      v20 -= a5;
      v37 = !v36;
      v34 = v35 - v37;
    }
  }

  v36 = __CFADD__(v30, v18);
  v41 = v30 + v18;
  if (v36)
  {
    ++v17;
  }

  *result = v41;
  result[1] = v17;
  a2[1] = v34;
LABEL_39:
  *a2 = v20;
  return result;
}

uint64_t __bid128_hypot(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v10 = __bid128_quiet_greater(a3, a4 & 0x7FFFFFFFFFFFFFFFLL, a1, a2 & 0x7FFFFFFFFFFFFFFFLL, my_fpsf);
  if (v10)
  {
    v11 = a2;
  }

  else
  {
    v11 = a4;
  }

  if (v10)
  {
    v12 = a1;
  }

  else
  {
    v12 = a3;
  }

  if (v10)
  {
    v13 = a4;
  }

  else
  {
    v13 = a2;
  }

  if (v10)
  {
    v14 = a3;
  }

  else
  {
    v14 = a1;
  }

  v15 = v11 & 0x7800000000000000;
  if (((v11 >> 61) & 3) == 3)
  {
    if (v15 == 0x7800000000000000)
    {
      v16 = 0xFE00000000000000;
      if ((v11 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
      {
        v21 = (v11 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && v12 >= 0x38C15B0A00000000;
        if (!v21)
        {
          v16 = 0xFE003FFFFFFFFFFFLL;
          v17 = v12;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      LODWORD(v19) = 0;
      if ((v11 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v39 = 0;
      }

      else
      {
        v39 = v17;
      }

      if ((v11 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v16 = 0xF800000000000000;
      }

      v18 = v11 & v16;
      v20 = 1;
    }

    else
    {
      v39 = 0;
      v18 = 0;
      v19 = (v11 >> 47) & 0x3FFF;
      v20 = 1;
    }

    goto LABEL_39;
  }

  v18 = v11 & 0x1FFFFFFFFFFFFLL;
  if ((v11 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    goto LABEL_21;
  }

  if ((v11 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0)
  {
    v39 = v12;
    if (v12 < 0x378D8E6400000000)
    {
      goto LABEL_22;
    }

LABEL_21:
    v39 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  v39 = v12;
LABEL_22:
  v19 = (v11 >> 49) & 0x3FFF;
  v20 = (v18 | v39) == 0;
LABEL_39:
  v23 = v13 & 0x7800000000000000;
  if (((v13 >> 61) & 3) == 3)
  {
    if (v23 == 0x7800000000000000)
    {
      if ((v13 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
      {
        if ((v13 & 0x3FFFFFFFFFFFLL) != 0x314DC6448D93 || v14 < 0x38C15B0A00000000)
        {
          v24 = v14;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      if ((v13 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v40 = 0;
      }

      else
      {
        v40 = v24;
      }
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_84;
  }

  v25 = v13 & 0x1FFFFFFFFFFFFLL;
  if ((v13 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    goto LABEL_47;
  }

  if ((v13 & 0x1FFFFFFFFFFFFLL) != 0x1ED09BEAD87C0)
  {
    v40 = v14;
    goto LABEL_48;
  }

  v40 = v14;
  if (v14 >= 0x378D8E6400000000)
  {
LABEL_47:
    v40 = 0;
    v25 = 0;
  }

LABEL_48:
  if (!(v25 | v40))
  {
LABEL_84:
    if ((~v13 & 0x7C00000000000000) == 0)
    {
      v37 = v13 & 0x7E00000000000000;
      if ((~v11 & 0x7E00000000000000) == 0 || v37 == 0x7E00000000000000)
      {
        my_fpsf[0] |= 1u;
      }

      if ((v11 & 0x7C00000000000000) != 0x7800000000000000 || v37 == 0x7E00000000000000)
      {
        return v40;
      }

      else
      {
        return 0;
      }
    }

    if ((~v11 & 0x7E00000000000000) != 0 && v23 == 0x7800000000000000)
    {
      return 0;
    }

    if (!v20)
    {
      return v12;
    }

    v26 = 1;
    goto LABEL_98;
  }

  if (v20)
  {
    v26 = 0;
LABEL_98:
    if ((~v11 & 0x7C00000000000000) == 0)
    {
      if ((~v11 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      return v39;
    }

    if (v15 == 0x7800000000000000)
    {
      return 0;
    }

    if (v26)
    {
      return v40;
    }

    return v14;
  }

  v27 = (v13 >> 49) & 0x3FFF;
  if (v27 - v19 >= 35)
  {
    return v14;
  }

  v88 = 0uLL;
  v28 = v18 | ((v19 - v27 + 6176) << 49);
  v87[0] = __bid128_to_binary128(v40, v25 | 0x3040000000000000, a5, my_fpsf);
  v87[1] = v29;
  v86[0] = __bid128_to_binary128(v39, v28, a5, my_fpsf);
  v86[1] = v30;
  memset(v92, 0, sizeof(v92));
  memset(v91, 0, sizeof(v91));
  memset(v90, 0, sizeof(v90));
  memset(v89, 0, sizeof(v89));
  if ((__dpml_bid_unpack2__(v87, v86, v92, v91, qword_1C1F5FFC8, &v88, v89) & 0x8000000000000000) == 0)
  {
    memset(v93, 0, sizeof(v93));
    __dpml_bid_multiply__(v92, v92, v93);
    __dpml_bid_multiply__(v91, v91, v90);
    __dpml_bid_addsub__(v90, v93, 0, v93);
    __dpml_bid_ffs_and_shift__(v93, 0);
    __dpml_bid_ux_sqrt_evaluation__(v93, v90);
    __dpml_bid_pack__(v90, &v88, 0, 14);
  }

  v31 = __binary128_to_bid128(v88.n128_u64[0], v88.n128_u64[1], a5, my_fpsf);
  v33 = v32 & 0x1FFFFFFFFFFFFLL;
  if (v31 == 0x378D8E6400000000 && (v32 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0)
  {
    v39 = 0x38C15B0A00000000;
  }

  else
  {
    v39 = v31;
  }

  v34 = v27 + ((v32 >> 49) & 0x3FFF) - 6176 + (v31 == 0x378D8E6400000000 && (v32 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0);
  if (v31 == 0x378D8E6400000000 && (v32 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0)
  {
    v33 = 0x314DC6448D93;
  }

  if (v34 < 0x3000)
  {
    return v39;
  }

  if (v34 < 0)
  {
    if (v34 <= 0xFFFFFFDD)
    {
      my_fpsf[0] |= 0x30u;
      return a5 == 2;
    }

    v41 = -v34;
    v42 = __bid_round_const_table_128[36 * a5 + -v34] + __PAIR128__(v33, v39);
    v43 = &__bid_reciprocals10_128[2 * -v34];
    v44 = *v43;
    v45 = v43[1];
    v46 = v45 * DWORD1(v42);
    v47 = HIDWORD(v46);
    v48 = HIDWORD(v45) * v42 + v46 + ((v45 * v42) >> 32);
    v49 = (v45 * v42) | (v48 << 32);
    v50 = DWORD2(v42) * HIDWORD(v44);
    v51 = HIDWORD(v42) * v44 + v50 + ((DWORD2(v42) * v44) >> 32);
    v52 = (DWORD2(v42) * v44) | (v51 << 32);
    v53 = v44 * DWORD1(v42);
    v54 = HIDWORD(v44) * v42 + v53 + ((v44 * v42) >> 32);
    v55 = HIDWORD(v53) + HIDWORD(v44) * DWORD1(v42) + HIDWORD(v54);
    v56 = (v44 * v42) | (v54 << 32);
    v57 = HIDWORD(v42) * v45;
    v58 = HIDWORD(v57) + HIDWORD(v42) * HIDWORD(v45);
    v59 = DWORD2(v42) * HIDWORD(v45) + v57 + ((DWORD2(v42) * v45) >> 32);
    v60 = HIDWORD(v59);
    v61 = (DWORD2(v42) * v45) | (v59 << 32);
    v62 = __CFADD__(v49, v52);
    v63 = v49 + v52 + v55;
    v64 = __PAIR128__(v58, v61) + __PAIR128__(v60, (__PAIR128__(v47 + HIDWORD(v45) * DWORD1(v42) + HIDWORD(v42) * HIDWORD(v44) + HIDWORD(v50) + HIDWORD(v48) + HIDWORD(v51), v49 + v52) + __PAIR128__(v62, v55)) >> 64);
    v65 = __bid_recip_scale[v41];
    if (v65 >= 64)
    {
      v39 = *(&v64 + 1) >> v65;
    }

    else
    {
      v39 = (*(&v64 + 1) << -v65) | (v64 >> v65);
    }

    if (!a5 && (v39 & 1) != 0)
    {
      if (v65 < 65)
      {
        v67 = 0;
        v66 = v64 << -v65;
      }

      else
      {
        v66 = (*(&v64 + 1) << -v65) | (v64 >> v65);
        v67 = v64 << -v65 != 0;
      }

      if (!v66 && !v67 && (v63 < v45 || v63 == v45 && v56 < v44))
      {
        --v39;
      }
    }

    if ((my_fpsf[0] & 0x20) != 0)
    {
      v72 = 16;
      goto LABEL_139;
    }

    v69 = 0x80 - v65;
    if (v65 < 65)
    {
      v71 = 0;
      v70 = v64 << -v65;
    }

    else
    {
      v70 = (*(&v64 + 1) << v69) | (v64 >> v65);
      v71 = v64 << v69;
    }

    if (a5 > 2)
    {
      if (a5 == 3)
      {
LABEL_151:
        if (v70 | v71)
        {
          v72 = 48;
          goto LABEL_139;
        }

        v73 = v63 == v45;
        if (v63 < v45)
        {
          return v39;
        }

        v72 = 48;
        goto LABEL_163;
      }

      if (a5 != 4)
      {
        goto LABEL_153;
      }
    }

    else if (a5)
    {
      if (a5 != 1)
      {
LABEL_153:
        v21 = __CFADD__(__CFADD__(v56, v44), v63);
        v74 = __CFADD__(v56, v44) + v63;
        v75 = v21;
        v76 = __CFADD__(v74, v45);
        v77 = (v76 | v75) & 1;
        if (v65 < 65)
        {
          v80 = 0;
          v79 = v70 >> -v65;
          v78 = v65 - 64;
        }

        else
        {
          v78 = v65 - 64;
          v79 = (v71 >> v69) | (v70 << v65);
          v80 = v70 >> v69;
        }

        v81 = 1 << v78;
        if (v65 < 64)
        {
          v81 = 0;
        }

        v21 = __CFADD__(v79, v77);
        v82 = v79 + v77;
        if (v21)
        {
          v83 = v80 + 1;
        }

        else
        {
          v83 = v80;
        }

        if (v83 > v81)
        {
          return v39;
        }

        v84 = v65 < 64 && v82 >> v65 == 0;
        v85 = v84;
        v72 = 48;
        if (v83 == v81 && !v85)
        {
          return v39;
        }

LABEL_139:
        my_fpsf[0] |= v72;
        return v39;
      }

      goto LABEL_151;
    }

    v72 = 48;
    if (v70 != 0x8000000000000000 || v71)
    {
      goto LABEL_139;
    }

    v73 = v63 == v45;
    if (v63 < v45)
    {
      return v39;
    }

LABEL_163:
    if (v73 && v56 < v44)
    {
      return v39;
    }

    goto LABEL_139;
  }

  if (v34 > 0x3021)
  {
LABEL_122:
    if (!(v39 | v33))
    {
      return 0;
    }

    my_fpsf[0] |= 0x28u;
    if ((a5 | 2) == 3)
    {
      return 0x378D8E63FFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  while (v33 < 0x314DC6448D93)
  {
    if (v34 < 12288)
    {
      return v39;
    }

LABEL_69:
    v33 = (v39 >> 63) + (v39 >> 61) + 10 * v33;
    if (10 * v39 < 8 * v39)
    {
      ++v33;
    }

    --v34;
    v39 *= 10;
  }

  if (v33 == 0x314DC6448D93 && v39 < 0x38C15B0A00000000 && v34 >= 12288)
  {
    goto LABEL_69;
  }

  if (v34 >= 12288)
  {
    v33 = 1;
    goto LABEL_122;
  }

  return v39;
}

uint64_t __bid128_lgamma(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1;
  if ((~a2 & 0x7C00000000000000) != 0)
  {
    if (!__bid128_isZero(a1, a2))
    {
      if ((~a2 & 0x7800000000000000) == 0)
      {
        return 0;
      }

      v39 = 0uLL;
      v38 = 0uLL;
      v37 = 0uLL;
      v36 = 0uLL;
      v35 = 0uLL;
      v33 = 0uLL;
      v32 = 0uLL;
      v31 = 0uLL;
      v30 = 0uLL;
      v29[0] = 0;
      v29[1] = 0;
      bid128_to_binary128_2part(v39.n128_u64, v37.n128_u64, v4, a2);
      if (!bid_f128_cmp(&v39, &c_m1e34, 3u))
      {
        if (bid_f128_cmp(&v39, &c_1e34, 6u))
        {
          v7 = __bid128_add(v4, a2, 5uLL, 0xB03E000000000000, a3, my_fpsf);
          v9 = v8;
          v10 = __bid128_log(v4, a2, a3);
          v12 = v11;
          v13 = __bid128_sub(0x8512E0B1F71B1870, 0x2FFDC512596BF2BELL, v4, a2, a3, my_fpsf);
          return bid128_ext_fma(v41, &v42, v34, &v40, v7, v9, v10, v12, v13, v14, a3, my_fpsf);
        }

        if (!bid_f128_cmp(&v39, &c_half_1255, 3u) || (v16 = __bid128_round_integral_nearest_even(v4, a2, my_fpsf), !__bid128_quiet_equal(v16, v17, v4, a2, my_fpsf)))
        {
          if (bid_f128_cmp(&v39, &c_half_1255, 6u))
          {
            bid_f128_lgamma(&v36, &v39);
            bid_f128_mul(&v38, &c_1_plus_eps, &v39);
            bid_f128_nextafter(&v38, &v39, &v38);
            bid_f128_lgamma(&v35, &v38);
            bid_f128_sub(&v30, &v35, &v36);
            bid_f128_sub(&v31, &v38, &v39);
            bid_f128_div(&v31, &v37, &v31);
            bid_f128_mul(&v31, &v31, &v30);
            bid_f128_add(&v36, &v36, &v31);
            v19 = v36.n128_u64[1];
            v18 = v36.n128_u64[0];
            v20 = a3;
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            __dpml_bid_unpack_x_or_y__(&v39, 0, &v42, &qword_1C1F5E6D0, v29, v41);
            if (bid_f128_cmp(v29, &c_1em100, 3u))
            {
              return __bid128_log(v4, a2 & 0x7FFFFFFFFFFFFFFFLL, a3);
            }

            v21 = __bid128_round_integral_nearest_even(v4, a2, my_fpsf);
            v23 = __bid128_sub(v4, a2, v21, v22, a3, my_fpsf);
            v25 = v24;
            bid_f128_sub(&v33, &c_one_1256, &v39);
            if (bid_f128_cmp(&v39, &c_minus_one, 3u))
            {
              bid_f128_add(&v32, &v33, &v39);
              v26 = &c_one_1256;
              v27 = &v32;
            }

            else
            {
              bid_f128_sub(&v32, &c_one_1256, &v33);
              v26 = &v32;
              v27 = &v39;
            }

            bid_f128_sub(&v32, v26, v27);
            v39 = v33;
            bid_f128_sub(&v37, &v32, &v37);
            bid_f128_lgamma(&v36, &v39);
            bid_f128_mul(&v38, &c_1_plus_eps, &v39);
            bid_f128_lgamma(&v35, &v38);
            bid_f128_sub(&v30, &v35, &v36);
            bid_f128_sub(&v31, &v38, &v39);
            bid_f128_div(&v31, &v37, &v31);
            bid_f128_mul(&v31, &v31, &v30);
            bid_f128_add(&v36, &v36, &v31);
            v34[0] = __bid128_to_binary128(v23, v25, a3, my_fpsf);
            v34[1] = v28;
            bid_f128_mul(&v30, &c_pi_1257, v34);
            __dpml_bid_C_ux_trig__(&v30, 0, 1, &__dpml_bid_trig_x_table, &v30, v41);
            v42 = 0;
            v43 = 0;
            v44 = 0;
            __dpml_bid_unpack_x_or_y__(&v30, 0, &v42, &qword_1C1F5E6D0, &v30, v41);
            bid_f128_log(&v30, &v30);
            bid_f128_sub(&v30, &c_log_pi, &v30);
            bid_f128_sub(&v36, &v30, &v36);
            v19 = v36.n128_u64[1];
            v18 = v36.n128_u64[0];
            v20 = a3;
          }

          return __binary128_to_bid128(v18, v19, v20, my_fpsf);
        }
      }
    }

    v4 = 0;
    my_fpsf[0] |= 4u;
    return v4;
  }

  if ((~a2 & 0x7E00000000000000) == 0)
  {
    my_fpsf[0] |= 1u;
  }

  if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a1 >= 0x38C15B0A00000000)
  {
    return 0;
  }

  return v4;
}

unint64_t __bid128_log(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1;
  if ((~a2 & 0x7C00000000000000) != 0)
  {
    if (__bid128_isZero(a1, a2))
    {
      v4 = 0;
      my_fpsf[0] |= 4u;
      return v4;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      v4 = 0;
      my_fpsf[0] |= 1u;
      return v4;
    }

    v23 = 0uLL;
    v22[0] = 0;
    v22[1] = 0;
    v21 = 0uLL;
    if (__bid128_quiet_greater(v4, a2, 1uLL, 0x5320000000000000, my_fpsf))
    {
      v6 = __bid128_mul(v4, a2, 1uLL, 0xD60000000000000, a3, my_fpsf);
      v24 = __bid128_to_binary128(v6, v7, a3, my_fpsf);
      v25 = v8;
      bid_f128_log(&v23, &v24);
      bid_f128_add(&v23, &v23, &c_4464_ln_10);
    }

    else
    {
      if (!__bid128_quiet_less(v4, a2, 1uLL, 0xD60000000000000, my_fpsf))
      {
        v20 = 0uLL;
        v24 = __bid128_to_binary128(v4, a2, a3, my_fpsf);
        v25 = v16;
        bid_f128_log(&v23, &v24);
        bid_f128_sub(&v20, &v24, &c_one_1260);
        memset(v27, 0, sizeof(v27));
        __dpml_bid_unpack_x_or_y__(&v20, 0, v27, &qword_1C1F5E6D0, v22, v26);
        if (bid_f128_cmp(v22, &c_half_1261, 1u))
        {
          v17 = __bid128_add(v4, a2, 1uLL, 0xB040000000000000, a3, my_fpsf);
          v26[0] = __bid128_to_binary128(v17, v18, a3, my_fpsf);
          v26[1] = v19;
          bid_f128_sub(&v21, &v20, v26);
          bid_f128_div(&v21, &v21, &v24);
          bid_f128_sub(&v23, &v23, &v21);
        }

        v13 = v23.n128_u64[1];
        v12 = v23.n128_u64[0];
        v14 = a3;
        return __binary128_to_bid128(v12, v13, v14, my_fpsf);
      }

      v9 = __bid128_mul(v4, a2, 1uLL, 0x5320000000000000, a3, my_fpsf);
      v24 = __bid128_to_binary128(v9, v10, a3, my_fpsf);
      v25 = v11;
      bid_f128_log(&v23, &v24);
      bid_f128_sub(&v23, &v23, &c_4464_ln_10);
    }

    v13 = v23.n128_u64[1];
    v12 = v23.n128_u64[0];
    v14 = a3;
    return __binary128_to_bid128(v12, v13, v14, my_fpsf);
  }

  if ((~a2 & 0x7E00000000000000) == 0)
  {
    my_fpsf[0] |= 1u;
  }

  if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
  {
    return 0;
  }

  return v4;
}

unint64_t __bid128_log10(unint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  v6 = a1;
  if ((~a2 & 0x7C00000000000000) != 0)
  {
    if (__bid128_isZero(a1, a2))
    {
      v6 = 0;
      *a4 |= 4u;
    }

    else if ((a2 & 0x8000000000000000) != 0)
    {
      v6 = 0;
      *a4 |= 1u;
    }

    else
    {
      v21 = 0uLL;
      if (__bid128_quiet_greater(v6, a2, 1uLL, 0x5320000000000000, a4))
      {
        v8 = __bid128_mul(v6, a2, 1uLL, 0xD60000000000000, a3, a4);
        v22 = __bid128_to_binary128(v8, v9, a3, a4);
        v23 = v10;
        bid_f128_log(&v21, &v22);
        bid_f128_mul(&v21, &v21, &c_inv_log10);
        bid_f128_add(&v21, &v21, &c_4464);
      }

      else if (__bid128_quiet_less(v6, a2, 1uLL, 0xD60000000000000, a4))
      {
        v11 = __bid128_mul(v6, a2, 1uLL, 0x5320000000000000, a3, a4);
        v22 = __bid128_to_binary128(v11, v12, a3, a4);
        v23 = v13;
        bid_f128_log(&v21, &v22);
        bid_f128_mul(&v21, &v21, &c_inv_log10);
        bid_f128_sub(&v21, &v21, &c_4464);
      }

      else
      {
        v20 = 0uLL;
        v19[0] = 0;
        v19[1] = 0;
        v22 = __bid128_to_binary128(v6, a2, a3, a4);
        v23 = v14;
        bid_f128_log(&v21, &v22);
        bid_f128_sub(&v20, &v22, &c_one_1264);
        v25 = 0uLL;
        v26 = 0;
        __dpml_bid_unpack_x_or_y__(&v20, 0, &v25, &qword_1C1F5E6D0, v19, v24);
        if (bid_f128_cmp(v19, &c_half_1265, 1u))
        {
          v25 = 0uLL;
          v15 = __bid128_add(v6, a2, 1uLL, 0xB040000000000000, a3, a4);
          v24[0] = __bid128_to_binary128(v15, v16, a3, a4);
          v24[1] = v17;
          bid_f128_sub(&v25, &v20, v24);
          bid_f128_div(&v25, &v25, &v22);
          bid_f128_sub(&v21, &v21, &v25);
        }

        bid_f128_mul(&v21, &v21, &c_inv_log10);
      }

      return __binary128_to_bid128(v21.n128_u64[0], v21.n128_u64[1], a3, a4);
    }
  }

  else
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a4 |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t __bid128_mul(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, int *a6)
{
  if ((~a2 & 0x7800000000000000) != 0 && (~a4 & 0x7800000000000000) != 0)
  {
    if ((~a2 & 0x6000000000000000) != 0)
    {
      v11 = a2 & 0x1FFFFFFFFFFFFLL;
      if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || a1 > 0x378D8E63FFFFFFFFLL && v11 == 0x1ED09BEAD87C0)
      {
        v10 = 0;
        v11 = 0;
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    if ((~a4 & 0x6000000000000000) != 0)
    {
      v13 = a4 & 0x1FFFFFFFFFFFFLL;
      if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || (a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a3 > 0x378D8E63FFFFFFFFLL)
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v12 = a3;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    if (!(v11 | v10) || !(v13 | v12))
    {
      return 0;
    }
  }

  v18 = v6;
  v19 = v7;
  return bid128_ext_fma(&v17, &v16, &v15, &v14, a3, a4, a1, a2, 0, 0x5FFE000000000000uLL, a5, a6);
}

uint64_t __bid128_isZero(unint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1FFFFFFFFFFFFLL;
  v3 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v2 == 0x1ED09BEAD87C0)
  {
    v3 = 1;
  }

  if (!(v2 | a1))
  {
    v3 = 1;
  }

  v5 = v2 > 0x1ED09BEAD87C0 || v3;
  if ((~a2 & 0x7800000000000000) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t __bid128_pow(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, int *a6)
{
  v12 = a2 & 0x7E00000000000000;
  if ((a2 & 0x7E00000000000000) == 0x7E00000000000000 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
  {
    *a6 |= 1u;
  }

  isZero = __bid128_isZero(a3, a4);
  if (v12 != 0x7E00000000000000 && isZero)
  {
    return 1;
  }

  v14 = 1;
  v15 = __bid128_quiet_equal(a1, a2, 1uLL, 0x3040000000000000uLL, a6);
  if (v12 == 0x7E00000000000000 || !v15)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      if ((~a4 & 0x7C00000000000000) != 0)
      {
        if ((~a4 & 0x7800000000000000) != 0)
        {
          v16 = __bid128_round_integral_nearest_even(a3, a4, a6);
          v18 = __bid128_quiet_equal(v16, v17, a3, a4, a6);
          if ((~a2 & 0x7800000000000000) != 0)
          {
            v19 = v18;
            if (__bid128_isZero(a1, a2))
            {
              if ((a4 & 0x8000000000000000) != 0)
              {
                *a6 |= 4u;
              }

              return 0;
            }

            else if ((a2 & 0x8000000000000000) == 0 || v19)
            {
              v21 = (a2 >> 49) & 0x3FFF;
              v22 = a2 & 0x1FFFFFFFFFFFFLL;
              if ((a2 & 0x1FFFFFFFFFFFFLL) != 0)
              {
                v23 = vdupq_n_s64(a2);
                v24 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v23, xmmword_1C1F58D00), vandq_s8(v23, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v23, xmmword_1C1F58D10), vandq_s8(v23, xmmword_1C1F58D20))));
                v25 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
                if ((a2 & 0xAAAAAAAAAAAALL) > (a2 & 0x1555555555555))
                {
                  v26 = v25.i32[0] | v25.i32[1] | (2 * ((a2 & 0xCCCCCCCCCCCCLL) <= (a2 & 0x1333333333333)));
                }

                else
                {
                  v26 = (v25.i32[0] | v25.i32[1] | (2 * ((a2 & 0xCCCCCCCCCCCCLL) <= (a2 & 0x1333333333333)))) + 1;
                }

                if (v26)
                {
                  v22 = (a1 >> -v26) + (v22 << v26);
                  v27 = a1 << v26;
                }

                else
                {
                  v27 = a1;
                }
              }

              else
              {
                if (a1)
                {
                  v28 = vdupq_n_s64(a1);
                  v29 = vuzp1q_s32(vcgtq_u64(vandq_s8(v28, xmmword_1C1F58D30), vandq_s8(v28, xmmword_1C1F58D40)), vcgtq_u64(vandq_s8(v28, xmmword_1C1F58C80), vandq_s8(v28, xmmword_1C1F58CA0)));
                  v30 = vbicq_s8(xmmword_1C1F58D50, v29);
                  v31 = vorr_s8(*&vbslq_s8(v29, xmmword_1C1F58D60, xmmword_1C1F58D50), *&vextq_s8(v30, v30, 8uLL));
                  if ((a1 & 0xAAAAAAAAAAAAAAAALL) > (a1 & 0x5555555555555555))
                  {
                    v26 = v31.i32[0] | v31.i32[1] | (2 * ((a1 & 0xCCCCCCCCCCCCCCCCLL) <= (a1 & 0x3333333333333333)));
                  }

                  else
                  {
                    v26 = (v31.i32[0] | v31.i32[1] | (2 * ((a1 & 0xCCCCCCCCCCCCCCCCLL) <= (a1 & 0x3333333333333333)))) + 1;
                  }
                }

                else
                {
                  v26 = 128;
                }

                v27 = 0;
                v22 = a1 << v26;
              }

              v32 = 128 - v26;
              v33 = 1089684262 * (128 - v26);
              v34 = HIDWORD(v33) + 66254511 * v32;
              v35 = v33 | (v34 << 32);
              v36 = 3387143064 * v32;
              v37 = HIDWORD(v36) + 3520035243 * v32;
              v38 = v36 | (v37 << 32) | HIDWORD(v34);
              v1277 = HIDWORD(v37) + 2977044471 * v32;
              if (v21 >> 5 < 0xC1)
              {
                v48 = (6176 - v21);
                v49 = ((2319430631u * v48) >> 32) + 189540515 * v48;
                v50 = (-1975536665 * v48) | (v49 << 32);
                v51 = ((2841335982u * v48) >> 32) + 2862788699 * v48;
                v52 = (-1453631314 * v48) | (v51 << 32);
                v53 = 0xFFFFFFFDB289C88ALL * v48;
                v1116 = __CFADD__(v52, HIDWORD(v49));
                v54 = v52 + HIDWORD(v49);
                v55 = v1116;
                v56 = __PAIR128__(v38, v35) - v50;
                v46 = v56;
                v47 = *(&v56 + 1) - v54;
                v58 = *(&v56 + 1) < v54 || *(&v56 + 1) > v38;
                v1275 = v53 - HIDWORD(v51) - v55;
                v1276 = v58 << 63 >> 63;
              }

              else
              {
                v39 = (v21 - 6176);
                v40 = ((2319430631u * v39) >> 32) + 189540515 * v39;
                v41 = (-1975536665 * v39) | (v40 << 32);
                v42 = ((2841335982u * v39) >> 32) + 2862788699 * v39;
                v43 = HIDWORD(v42);
                v44 = (-1453631314 * v39) | (v42 << 32);
                v45 = (((1299593078 * v39) & 0x3FFFFFFF00000000) + (v39 << 33)) | (1299593078 * v39);
                v46 = v41 + v35;
                v47 = __CFADD__(v41, v35) + v38 + v44 + HIDWORD(v40);
                v1275 = (__PAIR128__(v45, v44) + __PAIR128__(v43, HIDWORD(v40))) >> 64;
                v1276 = v44 + HIDWORD(v40);
              }

              v59 = HIBYTE(v22) - 128;
              v60 = *(&bid_recip_table_1 + v59);
              v61 = HIDWORD(v22);
              v62 = HIDWORD(v60) * v22;
              v63 = v60 * v22;
              v64 = v60 * v61 + v62 + HIDWORD(v63);
              v65 = HIDWORD(v60) * v27;
              v66 = v60 * v27;
              v67 = v60 * HIDWORD(v27) + v65 + HIDWORD(v66);
              v68 = (&bid_log_table_1 + 32 * v59);
              v69 = __PAIR128__(HIDWORD(v64), v63 | (v64 << 32)) + __PAIR128__(HIDWORD(v62) + HIDWORD(v60) * v61, HIDWORD(v65) + HIDWORD(v60) * HIDWORD(v27) + HIDWORD(v67));
              v70 = (((__PAIR128__(HIDWORD(v64), v63 | (v64 << 32)) + __PAIR128__(HIDWORD(v62) + HIDWORD(v60) * v61, HIDWORD(v65) + HIDWORD(v60) * HIDWORD(v27) + HIDWORD(v67))) >> 64) >> 49) & 0x7F;
              v71 = *(&bid_recip_table_2 + v70);
              v72 = HIDWORD(v71);
              v73 = ((HIDWORD(v71) * v66) >> 32) + v67 * HIDWORD(v71) + ((v67 * v71 + (HIDWORD(v71) * v66) + ((v71 * v66) >> 32)) >> 32);
              v74 = v69 * HIDWORD(v71);
              v75 = v69 * v71;
              v76 = DWORD1(v69) * v71 + v74 + HIDWORD(v75);
              v77 = HIDWORD(v74) + DWORD1(v69) * HIDWORD(v71) + HIDWORD(v76);
              v78 = DWORD2(v69) * HIDWORD(v71);
              v79 = DWORD2(v69) * v71;
              v80 = HIDWORD(v69) * v71 + v78 + HIDWORD(v79);
              v81 = HIDWORD(v78) + HIDWORD(v69) * v72 + HIDWORD(v80);
              v1274 = v68;
              v82 = v68[1];
              v83 = (__PAIR128__(v47, v46) - *v68) >> 64;
              v84 = v46 - *v68;
              v1269 = v83 - v82;
              v86 = v83 < v82 || v83 > v47;
              v1273 = v86;
              v87 = v75 | (v76 << 32);
              v88 = v79 | (v80 << 32);
              v89 = v73 + v87;
              v1116 = __CFADD__(__CFADD__(v73, v87), v88);
              v90 = __CFADD__(v73, v87) + v88;
              LODWORD(v91) = v1116;
              v1116 = __CFADD__(v77, v90);
              v92 = v77 + v90;
              if (v1116)
              {
                v91 = 1;
              }

              else
              {
                v91 = v91;
              }

              v93 = (&bid_log_table_2 + 32 * v70);
              *(&v95 + 1) = v81 + v91;
              *&v95 = v92;
              v94 = v95 >> 62;
              *(&v95 + 1) = v92;
              *&v95 = v73 + v87;
              v96 = ~(4 * v89);
              v97 = HIDWORD(v96);
              v98 = ~(4 * v89);
              v99 = v96;
              v100 = ((HIDWORD(v96) * v98) >> 32) + HIDWORD(v96) * HIDWORD(v96) + ((HIDWORD(v96) * v98 + HIDWORD(v96) * v98 + ((v96 * v96) >> 32)) >> 32);
              v101 = ~(v95 >> 62);
              v102 = HIDWORD(v101);
              v103 = v101;
              v104 = ~(v95 >> 62);
              v105 = ~(v95 >> 62) * v97;
              v106 = HIDWORD(v101) * v98;
              v107 = v98;
              v1282 = v98;
              v1283 = v99;
              v108 = v99;
              v109 = ~(v95 >> 62) * v99;
              v110 = v106 + v104 * v97 + HIDWORD(v109);
              v111 = HIDWORD(v105) + HIDWORD(v101) * v97 + HIDWORD(v110);
              v112 = ~v94;
              v113 = ~v94 >> 32;
              v114 = ~v94;
              v115 = ~v94 * v97;
              v116 = v113 * v107;
              v117 = v112 * v108;
              v118 = v116 + v115 + HIDWORD(v117);
              v119 = HIDWORD(v115) + v113 * v97 + HIDWORD(v118);
              v120 = v105 + v106 + HIDWORD(v109);
              v121 = HIDWORD(v106) + v102 * v97 + HIDWORD(v120);
              v1272 = v93;
              v122 = v93[1];
              v123 = __PAIR128__(v1269, v84) - *v93;
              v1271 = *(&v123 + 1) - v122;
              v124 = *(&v123 + 1) < v122 || *(&v123 + 1) > v1269;
              v125 = v104;
              v1290 = v104;
              v126 = v102 * v104;
              v127 = v109 | (v110 << 32);
              v128 = v117 | (v118 << 32);
              v129 = v124;
              v1270 = v129;
              v1116 = __CFADD__(v100, v127);
              v130 = v100 + v127;
              v132 = v1116;
              v1116 = __CFADD__(v1116, v128);
              v131 = v132 + v128;
              LODWORD(v133) = v1116;
              v1116 = __CFADD__(v111, v131);
              v134 = v111 + v131;
              v1285 = v103;
              v135 = HIDWORD(v126) + v102 * v102 + ((v126 + v126 + ((v103 * v103) >> 32)) >> 32);
              if (v1116)
              {
                v133 = 1;
              }

              else
              {
                v133 = v133;
              }

              v136 = v119 + v133;
              v137 = v109 | (v120 << 32);
              v138 = (v103 * v103) | ((2 * v126 + ((v103 * v103) >> 32)) << 32);
              v139 = v114 * v102;
              v140 = v113 * v125;
              v141 = v112;
              v1280 = v112;
              v142 = v112 * v103;
              v143 = v140 + v139 + HIDWORD(v142);
              v144 = HIDWORD(v139) + v113 * v102 + HIDWORD(v143);
              v145 = (v112 * v103) | (v143 << 32);
              v146 = __PAIR128__(v145, v121) + v138;
              v147 = __CFADD__(__CFADD__(v121, v138), v145);
              v148 = v135 + *(&v146 + 1);
              v149 = __CFADD__(v135, *(&v146 + 1)) || v147;
              v150 = v144 + v149;
              v151 = v115 + v116 + HIDWORD(v117);
              v152 = HIDWORD(v116) + v113 * v97 + HIDWORD(v151);
              v153 = v139 + v140 + HIDWORD(v142);
              v154 = HIDWORD(v140) + v113 * v102 + HIDWORD(v153);
              v155 = v117 | (v151 << 32);
              v156 = v142 | (v153 << 32);
              v157 = v113 * v114;
              v1284 = v114;
              v158 = v157 + v157 + ((v141 * v141) >> 32);
              v159 = HIDWORD(v157) + v113 * v113 + HIDWORD(v158);
              v160 = (v141 * v141) | (v158 << 32);
              v161 = __PAIR128__(v160, v152) + v156;
              v162 = __CFADD__(__CFADD__(v152, v156), v160);
              v163 = v154 + *(&v161 + 1);
              v164 = __CFADD__(v154, *(&v161 + 1)) || v162;
              v165 = __CFADD__(v137, v130) + v146;
              LODWORD(v166) = __CFADD__(__CFADD__(v137, v130), v146);
              v1116 = __CFADD__(v134, v165);
              v167 = v134 + v165;
              if (v1116)
              {
                v166 = 1;
              }

              else
              {
                v166 = v166;
              }

              v1116 = __CFADD__(v148, v166);
              v168 = v148 + v166;
              LODWORD(v169) = v1116;
              v1116 = __CFADD__(v136, v168);
              v170 = v136 + v168;
              if (v1116)
              {
                v169 = 1;
              }

              else
              {
                v169 = v169;
              }

              v171 = v150 + v169;
              v1116 = __CFADD__(__CFADD__(v155, v167), v161);
              v172 = __CFADD__(v155, v167) + v161;
              v173 = v1116;
              v174 = v170 + v172;
              if (__CFADD__(v170, v172))
              {
                v175 = 1;
              }

              else
              {
                v175 = v173;
              }

              v1116 = __CFADD__(v163, v175);
              v176 = v163 + v175;
              LODWORD(v177) = v1116;
              v1116 = __CFADD__(v171, v176);
              v178 = v171 + v176;
              v179 = (v171 + v176) >> 32;
              v180 = ((v171 + v176) >> 1) | (v179 << 31);
              v181 = v159 + v164;
              if (v1116)
              {
                v177 = 1;
              }

              else
              {
                v177 = v177;
              }

              v182 = v181 + v177;
              v183 = v180 | ((v181 + v177) << 63);
              v184 = v174;
              v185 = HIDWORD(v174);
              v1240 = v1283 + (v174 >> 1) + (HIDWORD(v174) << 31) + (v178 << 63);
              v186 = ((HIDWORD(v174) * v1282) >> 32) + HIDWORD(v174) * v97 + ((v174 * v97 + HIDWORD(v174) * v1282 + ((v174 * v1283) >> 32)) >> 32);
              v187 = HIDWORD(v174) * v1290;
              v188 = v1240 < v1283;
              v1116 = __CFADD__(v188, v1285);
              v189 = v188 + v1285;
              v190 = v1116;
              v1116 = __CFADD__(v183, v189);
              v1233 = v183 + v189;
              v191 = v174 * v102 + v187 + ((v174 * v1285) >> 32);
              v192 = HIDWORD(v187) + HIDWORD(v174) * v102 + HIDWORD(v191);
              v193 = (v174 * v1285) | (v191 << 32);
              v1251 = HIDWORD(v174) * v114;
              v194 = v113;
              v195 = v174 * v1280;
              v196 = v184 * v113 + v1251 + HIDWORD(v195);
              v1246 = v196;
              if (v1116)
              {
                v197 = 1;
              }

              else
              {
                v197 = v190;
              }

              v1267 = v197;
              v198 = v195 | (v196 << 32);
              v1226 = v186 + v193;
              v1116 = __CFADD__(__CFADD__(v186, v193), v198);
              v199 = __CFADD__(v186, v193) + v198;
              LODWORD(v200) = v1116;
              v1116 = __CFADD__(v192, v199);
              v1256 = v192 + v199;
              v201 = v179;
              v202 = v179 * v1282;
              v203 = v97;
              v204 = v178 * v97 + v202 + ((v178 * v1283) >> 32);
              v205 = HIDWORD(v202) + v201 * v97 + HIDWORD(v204);
              v206 = (v178 * v1283) | (v204 << 32);
              v207 = v201 * v1290;
              v208 = v178 * v102 + v207 + ((v178 * v1285) >> 32);
              v209 = HIDWORD(v207) + v201 * v102 + HIDWORD(v208);
              v210 = (v178 * v1285) | (v208 << 32);
              if (v1116)
              {
                v200 = 1;
              }

              else
              {
                v200 = v200;
              }

              v1116 = __CFADD__(v205, v210);
              v211 = v205 + v210;
              v212 = v178 * v194;
              v213 = v194;
              v214 = v201 * v114;
              v215 = v178 * v1280;
              v216 = v212 + v214 + HIDWORD(v215);
              v217 = v215 | (v216 << 32);
              v219 = v1116;
              v1116 = __CFADD__(v1116, v217);
              v218 = v219 + v217;
              LODWORD(v220) = v1116;
              v1116 = __CFADD__(v209, v218);
              v221 = v209 + v218;
              v222 = v182;
              v223 = HIDWORD(v182) * v1290;
              v1281 = v102;
              v224 = v182 * v102 + v223 + ((v182 * v1285) >> 32);
              v225 = HIDWORD(v223) + HIDWORD(v182) * v102 + HIDWORD(v224);
              v226 = (v182 * v1285) | (v224 << 32);
              v227 = HIDWORD(v182) * v1282;
              v228 = v203;
              v1261 = HIDWORD(v182);
              v1264 = v182;
              v229 = v182 * v203 + v227;
              v230 = v182 * v1283;
              v231 = v229 + HIDWORD(v230);
              v232 = v228;
              v233 = HIDWORD(v227) + HIDWORD(v182) * v228 + HIDWORD(v231);
              if (v1116)
              {
                v220 = 1;
              }

              else
              {
                v220 = v220;
              }

              v1116 = __CFADD__(v233, v226);
              v234 = v233 + v226;
              v235 = HIDWORD(v182) * v1284;
              v236 = HIDWORD(v182);
              v237 = v182 * v1280;
              v238 = v222 * v194 + v235 + HIDWORD(v237);
              v239 = v237 | (v238 << 32);
              v241 = v1116;
              v1116 = __CFADD__(v1116, v239);
              v240 = v241 + v239;
              LODWORD(v242) = v1116;
              v1116 = __CFADD__(v225, v240);
              v243 = v225 + v240;
              if (v1116)
              {
                v242 = 1;
              }

              else
              {
                v242 = v242;
              }

              v1278 = v194;
              v244 = HIDWORD(v1251) + v185 * v194 + HIDWORD(v1246) + v200;
              v245 = HIDWORD(v214) + v201 * v194 + HIDWORD(v216) + v220;
              v246 = v230 | (v231 << 32);
              v247 = HIDWORD(v235) + v236 * v213 + HIDWORD(v238) + v242;
              v248 = __CFADD__(v206, v1226) + v211;
              v249 = __CFADD__(__CFADD__(v206, v1226), v211);
              v1116 = __CFADD__(v248, v1256);
              v250 = v248 + v1256;
              v251 = v1116 || v249;
              v1116 = __CFADD__(v221, v251);
              v252 = v221 + v251;
              v253 = v1116;
              v1116 = __CFADD__(v244, v252);
              v254 = v244 + v252;
              if (v1116)
              {
                v255 = 1;
              }

              else
              {
                v255 = v253;
              }

              v256 = v245 + v255;
              v1116 = __CFADD__(__CFADD__(v246, v250), v234);
              v257 = __CFADD__(v246, v250) + v234;
              v258 = v1116;
              v259 = v254 + v257;
              if (__CFADD__(v254, v257))
              {
                v260 = 1;
              }

              else
              {
                v260 = v258;
              }

              v1116 = __CFADD__(v243, v260);
              v261 = v243 + v260;
              v262 = v1116;
              v263 = v256 + v261;
              if (__CFADD__(v256, v261))
              {
                v264 = 1;
              }

              else
              {
                v264 = v262;
              }

              v265 = v247 + v264;
              v266 = 1431655765 * HIDWORD(v259);
              v267 = 1431655765 * v259 + v266 + ((1431655765 * v259) >> 32);
              v268 = HIDWORD(v266) + v266 + HIDWORD(v267);
              v269 = (1431655765 * v259) | (v267 << 32);
              v270 = 1431655765 * HIDWORD(v263);
              v271 = 1431655765 * v263 + v270 + ((1431655765 * v263) >> 32);
              v272 = HIDWORD(v270) + v270 + HIDWORD(v271);
              v273 = (1431655765 * v263) | (v271 << 32);
              v1222 = v265;
              v274 = 1431655765 * HIDWORD(v265);
              v275 = HIDWORD(v274) + v274;
              v1209 = HIDWORD(v265);
              v276 = 1431655765 * v265 + v274 + ((1431655765 * v265) >> 32);
              v277 = v275 + HIDWORD(v276);
              v278 = (1431655765 * v265) | (v276 << 32);
              v279 = v269 + v268;
              v1116 = __CFADD__(__CFADD__(v269, v268), v269);
              v280 = __CFADD__(v269, v268) + v269;
              LODWORD(v281) = v1116;
              v1116 = __CFADD__(v280, v268);
              v282 = v280 + v268;
              if (v1116)
              {
                v281 = 1;
              }

              else
              {
                v281 = v281;
              }

              v283 = v273 + v272;
              v284 = __CFADD__(v273, v272) + v273;
              LODWORD(v285) = __CFADD__(__CFADD__(v273, v272), v273);
              v1116 = __CFADD__(v284, v272);
              v286 = v284 + v272;
              if (v1116)
              {
                v285 = 1;
              }

              else
              {
                v285 = v285;
              }

              v287 = v278 + v277;
              v288 = __CFADD__(v278, v277) + v278;
              LODWORD(v289) = __CFADD__(__CFADD__(v278, v277), v278);
              v1116 = __CFADD__(v288, v277);
              v290 = v288 + v277;
              if (v1116)
              {
                v289 = 1;
              }

              else
              {
                v289 = v289;
              }

              v1252 = v277;
              v1257 = v289;
              v291 = v268 + v281;
              v1116 = __CFADD__(__CFADD__(v273, v279), v283);
              v292 = __CFADD__(v273, v279) + v283;
              LODWORD(v293) = v1116;
              v1116 = __CFADD__(v292, v282);
              v294 = v292 + v282;
              if (v1116)
              {
                v293 = 1;
              }

              else
              {
                v293 = v293;
              }

              v1116 = __CFADD__(v286, v293);
              v295 = v286 + v293;
              v296 = v1116;
              v1116 = __CFADD__(v291, v295);
              v297 = v291 + v295;
              if (v1116)
              {
                v298 = 1;
              }

              else
              {
                v298 = v296;
              }

              v1116 = __CFADD__(v278, v294);
              v299 = v272 + v285 + v298;
              v300 = v1116 + v287;
              v301 = __CFADD__(v1116, v287);
              v1116 = __CFADD__(v297, v300);
              v302 = v297 + v300;
              v303 = v1116 || v301;
              v1116 = __CFADD__(v290, v303);
              v304 = v290 + v303;
              v305 = v1116;
              v1116 = __CFADD__(v299, v304);
              v306 = v299 + v304;
              if (v1116)
              {
                v307 = 1;
              }

              else
              {
                v307 = v305;
              }

              v1247 = v307;
              v1227 = v302 + v1240;
              v1116 = __CFADD__(__CFADD__(v302, v1240), v1233);
              v308 = __CFADD__(v302, v1240) + v1233;
              v309 = v1116;
              v1116 = __CFADD__(v306, v308);
              v1234 = v306 + v308;
              v310 = ((HIDWORD(v259) * v1282) >> 32) + HIDWORD(v259) * v232 + ((v259 * v232 + HIDWORD(v259) * v1282 + ((v259 * v1283) >> 32)) >> 32);
              v311 = HIDWORD(v259) * v1290;
              v312 = v259 * v1281 + v311 + ((v259 * v1285) >> 32);
              v313 = HIDWORD(v311) + HIDWORD(v259) * v1281 + HIDWORD(v312);
              v314 = (v259 * v1285) | (v312 << 32);
              if (v1116)
              {
                v315 = 1;
              }

              else
              {
                v315 = v309;
              }

              v1241 = v315;
              v1116 = __CFADD__(v310, v314);
              v1204 = v310 + v314;
              v316 = HIDWORD(v259) * v1284;
              v317 = v259 * v213 + v316 + ((v259 * v1280) >> 32);
              v318 = (v259 * v1280) | (v317 << 32);
              v320 = v1116;
              v1116 = __CFADD__(v1116, v318);
              v319 = v320 + v318;
              v321 = v1116;
              v1116 = __CFADD__(v313, v319);
              v1200 = v313 + v319;
              v322 = HIDWORD(v263) * v1282;
              v323 = v263 * v232 + v322 + ((v263 * v1283) >> 32);
              v324 = HIDWORD(v322) + HIDWORD(v263) * v232 + HIDWORD(v323);
              v325 = (v263 * v1283) | (v323 << 32);
              v326 = HIDWORD(v263) * v1290;
              v327 = v263 * v1281 + v326 + ((v263 * v1285) >> 32);
              v328 = HIDWORD(v326) + HIDWORD(v263) * v1281 + HIDWORD(v327);
              v329 = (v263 * v1285) | (v327 << 32);
              if (v1116)
              {
                v330 = 1;
              }

              else
              {
                v330 = v321;
              }

              v1116 = __CFADD__(v324, v329);
              v331 = v324 + v329;
              v332 = HIDWORD(v263) * v1284;
              v333 = v263 * v213 + v332 + ((v263 * v1280) >> 32);
              v334 = (v263 * v1280) | (v333 << 32);
              v336 = v1116;
              v1116 = __CFADD__(v1116, v334);
              v335 = v336 + v334;
              v337 = v1116;
              v1116 = __CFADD__(v328, v335);
              v338 = v328 + v335;
              v339 = HIDWORD(v265) * v1290;
              v340 = v265 * v1281 + v339 + ((v265 * v1285) >> 32);
              v341 = HIDWORD(v339) + HIDWORD(v265) * v1281 + HIDWORD(v340);
              v342 = (v265 * v1285) | (v340 << 32);
              if (v1116)
              {
                v343 = 1;
              }

              else
              {
                v343 = v337;
              }

              v344 = HIDWORD(v265) * v1282;
              v345 = v265 * v1283;
              v346 = v265 * v232 + v344 + HIDWORD(v345);
              v347 = HIDWORD(v344) + HIDWORD(v265) * v232 + HIDWORD(v346);
              v1116 = __CFADD__(v347, v342);
              v348 = v347 + v342;
              v349 = HIDWORD(v265) * v1284;
              v350 = v265 * v1278 + v349 + ((v265 * v1280) >> 32);
              v351 = (v1222 * v1280) | (v350 << 32);
              v353 = v1116;
              v1116 = __CFADD__(v1116, v351);
              v352 = v353 + v351;
              LODWORD(v354) = v1116;
              v1116 = __CFADD__(v341, v352);
              v355 = v341 + v352;
              if (v1116)
              {
                v354 = 1;
              }

              else
              {
                v354 = v354;
              }

              v356 = HIDWORD(v316) + HIDWORD(v259) * v1278 + HIDWORD(v317) + v330;
              v357 = v345 | (v346 << 32);
              v358 = __CFADD__(v325, v1204) + v331;
              v359 = __CFADD__(__CFADD__(v325, v1204), v331);
              v360 = v358 + v1200;
              v361 = __CFADD__(v358, v1200) || v359;
              v1116 = __CFADD__(v338, v361);
              v362 = v338 + v361;
              v363 = v1116;
              v1116 = __CFADD__(v356, v362);
              v364 = v356 + v362;
              if (v1116)
              {
                v365 = 1;
              }

              else
              {
                v365 = v363;
              }

              v366 = HIDWORD(v349) + v1209 * v1278 + HIDWORD(v350) + v354;
              v367 = HIDWORD(v332) + HIDWORD(v263) * v1278 + HIDWORD(v333) + v343 + v365;
              v1116 = __CFADD__(__CFADD__(v357, v360), v348);
              v368 = __CFADD__(v357, v360) + v348;
              v369 = v1116;
              v370 = v364 + v368;
              if (__CFADD__(v364, v368))
              {
                v371 = 1;
              }

              else
              {
                v371 = v369;
              }

              v1116 = __CFADD__(v355, v371);
              v372 = v355 + v371;
              v373 = v1116;
              v1116 = __CFADD__(v367, v372);
              v374 = v367 + v372;
              if (v1116)
              {
                v375 = 1;
              }

              else
              {
                v375 = v373;
              }

              v376 = v366 + v375;
              v377 = HIDWORD(v370);
              v378 = v370;
              v1205 = v1227 + (v370 >> 2) + (HIDWORD(v370) << 30) + (v374 << 62);
              v379 = v1205 < v1227;
              v1116 = __CFADD__(v1234, v379);
              v380 = v1234 + v379;
              v381 = HIDWORD(v374);
              v382 = (v374 >> 2) | (HIDWORD(v374) << 30) | (v376 << 62);
              v383 = v1116;
              v1116 = __CFADD__(v382, v380);
              v1201 = v382 + v380;
              v384 = ((HIDWORD(v370) * v1282) >> 32) + HIDWORD(v370) * v232 + ((v370 * v232 + HIDWORD(v370) * v1282 + ((v370 * v1283) >> 32)) >> 32);
              v385 = HIDWORD(v370) * v1290;
              v386 = v370 * v1281 + v385 + ((v370 * v1285) >> 32);
              v387 = HIDWORD(v385) + HIDWORD(v370) * v1281 + HIDWORD(v386);
              v388 = (v370 * v1285) | (v386 << 32);
              if (v1116)
              {
                v389 = 1;
              }

              else
              {
                v389 = v383;
              }

              v1235 = v389;
              v1217 = v384 + v388;
              v390 = v370 * v1280;
              v391 = v377 * v1284;
              v392 = v378 * v1278 + v391 + HIDWORD(v390);
              v393 = v390 | (v392 << 32);
              v1116 = __CFADD__(__CFADD__(v384, v388), v393);
              v394 = __CFADD__(v384, v388) + v393;
              LODWORD(v395) = v1116;
              v1210 = v387 + v394;
              v396 = HIDWORD(v374) * v1282;
              v397 = v374 * v232 + v396 + ((v374 * v1283) >> 32);
              v398 = HIDWORD(v396) + HIDWORD(v374) * v232 + HIDWORD(v397);
              v399 = (v374 * v1283) | (v397 << 32);
              v400 = HIDWORD(v374) * v1290;
              v401 = v374 * v1281 + v400 + ((v374 * v1285) >> 32);
              v402 = HIDWORD(v400) + HIDWORD(v374) * v1281 + HIDWORD(v401);
              v403 = (v374 * v1285) | (v401 << 32);
              if (__CFADD__(v387, v394))
              {
                v395 = 1;
              }

              else
              {
                v395 = v395;
              }

              v1197 = v395;
              v1116 = __CFADD__(v398, v403);
              v404 = v398 + v403;
              v405 = HIDWORD(v374) * v1284;
              v406 = v374 * v1278 + v405 + ((v374 * v1280) >> 32);
              v407 = (v374 * v1280) | (v406 << 32);
              v409 = v1116;
              v1116 = __CFADD__(v1116, v407);
              v408 = v409 + v407;
              LODWORD(v410) = v1116;
              v1116 = __CFADD__(v402, v408);
              v411 = v402 + v408;
              v412 = HIDWORD(v376);
              v413 = v376;
              v414 = HIDWORD(v376) * v1290;
              v415 = v376 * v1281 + v414 + ((v376 * v1285) >> 32);
              v416 = HIDWORD(v414) + HIDWORD(v376) * v1281 + HIDWORD(v415);
              v417 = (v376 * v1285) | (v415 << 32);
              if (v1116)
              {
                v410 = 1;
              }

              else
              {
                v410 = v410;
              }

              v418 = HIDWORD(v376) * v1282;
              v1279 = v232;
              v1223 = HIDWORD(v376);
              v1228 = v376;
              v419 = v376 * v1283;
              v420 = v376 * v232 + v418 + HIDWORD(v419);
              v421 = HIDWORD(v418) + HIDWORD(v376) * v232 + HIDWORD(v420);
              v1116 = __CFADD__(v421, v417);
              v422 = v421 + v417;
              v423 = v376 * v1280;
              v424 = v412 * v1284;
              v425 = v412;
              v426 = v413 * v1278 + v424 + HIDWORD(v423);
              v427 = v423 | (v426 << 32);
              v429 = v1116;
              v1116 = __CFADD__(v1116, v427);
              v428 = v429 + v427;
              LODWORD(v430) = v1116;
              v1116 = __CFADD__(v416, v428);
              v431 = v416 + v428;
              if (v1116)
              {
                v430 = 1;
              }

              else
              {
                v430 = v430;
              }

              v432 = HIDWORD(v391) + v377 * v1278 + HIDWORD(v392) + v1197;
              v433 = v419 | (v420 << 32);
              v434 = __CFADD__(v399, v1217) + v404;
              v435 = __CFADD__(__CFADD__(v399, v1217), v404);
              v436 = v434 + v1210;
              v437 = __CFADD__(v434, v1210) || v435;
              v1116 = __CFADD__(v411, v437);
              v438 = v411 + v437;
              v439 = v1116;
              v1116 = __CFADD__(v432, v438);
              v440 = v432 + v438;
              if (v1116)
              {
                v441 = 1;
              }

              else
              {
                v441 = v439;
              }

              v442 = HIDWORD(v424) + v425 * v1278 + HIDWORD(v426) + v430;
              v443 = HIDWORD(v405) + v381 * v1278 + HIDWORD(v406) + v410 + v441;
              v444 = __CFADD__(v433, v436) + v422;
              v445 = __CFADD__(__CFADD__(v433, v436), v422);
              v446 = v440 + v444;
              v447 = __CFADD__(v440, v444) || v445;
              v1116 = __CFADD__(v431, v447);
              v448 = v431 + v447;
              v449 = v1116;
              v450 = v443 + v448;
              if (__CFADD__(v443, v448))
              {
                v451 = 1;
              }

              else
              {
                v451 = v449;
              }

              v452 = v442 + v451;
              v453 = 858993459 * HIDWORD(v446);
              v454 = HIDWORD(v453) + v453;
              v455 = 858993459 * v446 + v453 + ((858993459 * v446) >> 32);
              v456 = v454 + HIDWORD(v455);
              v457 = (858993459 * v446) | (v455 << 32);
              v458 = 858993459 * HIDWORD(v450);
              v459 = HIDWORD(v458) + v458;
              v460 = 858993459 * v450 + v458 + ((858993459 * v450) >> 32);
              v461 = v459 + HIDWORD(v460);
              v462 = (858993459 * v450) | (v460 << 32);
              v463 = HIDWORD(v452);
              v464 = 858993459 * HIDWORD(v452);
              v465 = HIDWORD(v464) + v464;
              v1187 = v452;
              v1191 = v452;
              v466 = 858993459 * v452 + v464 + ((858993459 * v452) >> 32);
              v467 = v465 + HIDWORD(v466);
              v468 = (858993459 * v452) | (v466 << 32);
              v469 = v457 + v456;
              v1116 = __CFADD__(__CFADD__(v457, v456), v457);
              v470 = __CFADD__(v457, v456) + v457;
              LODWORD(v471) = v1116;
              v1116 = __CFADD__(v470, v456);
              v472 = v470 + v456;
              if (v1116)
              {
                v471 = 1;
              }

              else
              {
                v471 = v471;
              }

              v473 = v462 + v461;
              v474 = __CFADD__(v462, v461) + v462;
              LODWORD(v475) = __CFADD__(__CFADD__(v462, v461), v462);
              v1116 = __CFADD__(v474, v461);
              v476 = v474 + v461;
              if (v1116)
              {
                v475 = 1;
              }

              else
              {
                v475 = v475;
              }

              v1211 = v467;
              v477 = v468 + v467;
              v478 = __CFADD__(v468, v467) + v468;
              v479 = __CFADD__(__CFADD__(v468, v467), v468);
              v480 = v478 + v467;
              v481 = __CFADD__(v478, v467) || v479;
              v1218 = v481;
              v482 = v456 + v471;
              v1116 = __CFADD__(__CFADD__(v462, v469), v473);
              v483 = __CFADD__(v462, v469) + v473;
              v484 = v1116;
              v1116 = __CFADD__(v483, v472);
              v485 = v483 + v472;
              if (v1116)
              {
                v486 = 1;
              }

              else
              {
                v486 = v484;
              }

              v1116 = __CFADD__(v476, v486);
              v487 = v476 + v486;
              v488 = v1116;
              v1116 = __CFADD__(v482, v487);
              v489 = v482 + v487;
              if (v1116)
              {
                v490 = 1;
              }

              else
              {
                v490 = v488;
              }

              v1116 = __CFADD__(v468, v485);
              v491 = v461 + v475 + v490;
              v492 = v1116 + v477;
              v493 = __CFADD__(v1116, v477);
              v1116 = __CFADD__(v489, v492);
              v494 = v489 + v492;
              v495 = v1116 || v493;
              v496 = v480 + v495;
              LODWORD(v497) = __CFADD__(v480, v495);
              v1116 = __CFADD__(v491, v496);
              v498 = v491 + v496;
              if (v1116)
              {
                v497 = 1;
              }

              else
              {
                v497 = v497;
              }

              v1198 = v497;
              v499 = __PAIR128__(v1201, v494) + v1205;
              LODWORD(v500) = __CFADD__(__CFADD__(v494, v1205), v1201);
              v1116 = __CFADD__(v498, *(&v499 + 1));
              v1202 = v498 + *(&v499 + 1);
              v501 = ((HIDWORD(v446) * v1282) >> 32) + HIDWORD(v446) * v232 + ((v446 * v232 + HIDWORD(v446) * v1282 + ((v446 * v1283) >> 32)) >> 32);
              v502 = HIDWORD(v446) * v1290;
              v503 = v446 * v1281 + v502 + ((v446 * v1285) >> 32);
              v504 = HIDWORD(v502) + HIDWORD(v446) * v1281 + HIDWORD(v503);
              v505 = (v446 * v1285) | (v503 << 32);
              if (v1116)
              {
                v500 = 1;
              }

              else
              {
                v500 = v500;
              }

              v1195 = v500;
              v1116 = __CFADD__(v501, v505);
              v1185 = v501 + v505;
              v506 = v446 * v1278 + HIDWORD(v446) * v1284 + ((v446 * v1280) >> 32);
              v507 = (v446 * v1280) | (v506 << 32);
              v509 = v1116;
              v1116 = __CFADD__(v1116, v507);
              v508 = v509 + v507;
              LODWORD(v510) = v1116;
              v1116 = __CFADD__(v504, v508);
              v1182 = v504 + v508;
              v511 = HIDWORD(v450) * v1282;
              v512 = v450 * v232 + v511 + ((v450 * v1283) >> 32);
              v513 = HIDWORD(v511) + HIDWORD(v450) * v232 + HIDWORD(v512);
              v514 = (v450 * v1283) | (v512 << 32);
              v515 = HIDWORD(v450) * v1290;
              v516 = HIDWORD(v450);
              v517 = v450 * v1281 + v515 + ((v450 * v1285) >> 32);
              v518 = HIDWORD(v515) + HIDWORD(v450) * v1281 + HIDWORD(v517);
              v519 = (v450 * v1285) | (v517 << 32);
              if (v1116)
              {
                v510 = 1;
              }

              else
              {
                v510 = v510;
              }

              v1181 = v510;
              v1116 = __CFADD__(v513, v519);
              v520 = v513 + v519;
              v521 = HIDWORD(v450) * v1284;
              v522 = v450 * v1278 + v521 + ((v450 * v1280) >> 32);
              v523 = (v450 * v1280) | (v522 << 32);
              v525 = v1116;
              v1116 = __CFADD__(v1116, v523);
              v524 = v525 + v523;
              v526 = v1116;
              v1116 = __CFADD__(v518, v524);
              v527 = v518 + v524;
              v528 = v463 * v1290;
              v529 = v1187 * v1281 + v528 + ((v1191 * v1285) >> 32);
              v530 = HIDWORD(v528) + v463 * v1281 + HIDWORD(v529);
              v531 = (v1191 * v1285) | (v529 << 32);
              if (v1116)
              {
                v532 = 1;
              }

              else
              {
                v532 = v526;
              }

              v533 = v463 * v1282;
              v534 = v1187 * v1279 + v533 + ((v1191 * v1283) >> 32);
              v535 = HIDWORD(v533) + v463 * v1279 + HIDWORD(v534);
              v1116 = __CFADD__(v535, v531);
              v536 = v535 + v531;
              v537 = v463 * v1284;
              v538 = v1187 * v1278 + v537 + ((v1191 * v1280) >> 32);
              v539 = (v1191 * v1280) | (v538 << 32);
              v541 = v1116;
              v1116 = __CFADD__(v1116, v539);
              v540 = v541 + v539;
              v542 = v1116;
              v1116 = __CFADD__(v530, v540);
              v543 = v530 + v540;
              if (v1116)
              {
                v544 = 1;
              }

              else
              {
                v544 = v542;
              }

              v545 = ((HIDWORD(v446) * v1284) >> 32) + HIDWORD(v446) * v1278 + HIDWORD(v506) + v1181;
              v546 = __CFADD__(v514, v1185) + v520;
              v547 = __CFADD__(__CFADD__(v514, v1185), v520);
              v548 = v546 + v1182;
              v549 = __CFADD__(v546, v1182) || v547;
              v1116 = __CFADD__(v527, v549);
              v550 = v527 + v549;
              v551 = v1116;
              v1116 = __CFADD__(v545, v550);
              v552 = v545 + v550;
              if (v1116)
              {
                v553 = 1;
              }

              else
              {
                v553 = v551;
              }

              v1116 = __CFADD__((v1191 * v1283) | (v534 << 32), v548);
              v554 = HIDWORD(v521) + v516 * v1278 + HIDWORD(v522) + v532;
              v555 = HIDWORD(v537) + v463 * v1278 + HIDWORD(v538) + v544;
              v556 = v554 + v553;
              v557 = v1116 + v536;
              v558 = __CFADD__(v1116, v536);
              v559 = v552 + v557;
              v560 = __CFADD__(v552, v557) || v558;
              v1116 = __CFADD__(v543, v560);
              v561 = v543 + v560;
              v562 = v1116;
              v563 = v556 + v561;
              if (__CFADD__(v556, v561))
              {
                v564 = 1;
              }

              else
              {
                v564 = v562;
              }

              v565 = v555 + v564;
              v566 = HIDWORD(v559);
              v567 = 2863311530 * v559;
              v568 = ((2863311531u * HIDWORD(v559)) >> 32) + 2863311530 * HIDWORD(v559) + ((v567 + (-1431655765 * HIDWORD(v559)) + ((2863311531u * v559) >> 32)) >> 32);
              v569 = 2863311530 * HIDWORD(v559);
              v570 = HIDWORD(v569);
              v571 = v569 + HIDWORD(v567);
              v572 = v570 + 2863311530 * HIDWORD(v559) + ((v571 + v567) >> 32);
              v573 = v567 | ((v571 + v567) << 32);
              v1116 = __CFADD__(v568, v573);
              v1183 = v568 + v573;
              v574 = v571 + 715827882 * v559;
              v575 = (v574 << 32) + v1116 + v567;
              v1116 = __CFADD__(v572, v575);
              v576 = v572 + v575;
              v1186 = HIDWORD(v574) + v1116 + v570 + 715827882 * HIDWORD(v559);
              v1188 = v563;
              LODWORD(v574) = v563;
              v577 = HIDWORD(v563);
              v578 = 2863311531 * v577;
              v579 = HIDWORD(v578) + 2863311530 * v577;
              v580 = v574;
              v581 = 2863311530 * v574;
              v582 = v581 + v578 + ((2863311531u * v574) >> 32);
              v583 = v579 + HIDWORD(v582);
              v584 = (-1431655765 * v574) | (v582 << 32);
              v585 = 2863311530 * v577;
              v586 = HIDWORD(v585);
              v587 = v585 + HIDWORD(v581);
              v588 = v581 | ((v587 + v581) << 32);
              v1116 = __CFADD__(v583, v588);
              v589 = v583 + v588;
              v590 = __PAIR128__(v586 + 715827882 * v577, v586 + 2863311530 * v577 + ((v587 + v581) >> 32)) + __PAIR128__((v587 + 715827882 * v574) >> 32, ((v587 + 715827882 * v574) << 32) + v1116 + v581);
              v1192 = v565;
              v591 = HIDWORD(v565);
              v592 = v565;
              v593 = 2863311531 * HIDWORD(v565);
              v594 = 2863311531 * v565;
              v595 = HIDWORD(v593) + 2863311530 * HIDWORD(v565);
              v596 = 2863311530 * v565;
              v597 = v596 + v593 + HIDWORD(v594);
              v598 = v595 + HIDWORD(v597);
              v599 = 2863311530 * HIDWORD(v565);
              v600 = v599 + HIDWORD(v596);
              v601 = v600 + v596;
              v602 = v600 + 715827882 * v592;
              v604 = v598 + (v596 | ((v600 + v596) << 32));
              v603 = (__PAIR128__(v596, v598) + __PAIR128__(v602 << 32, v596 | ((v600 + v596) << 32))) >> 64;
              v605 = v594 | (v597 << 32);
              v606 = __CFADD__(v584, v1183) + v589;
              v607 = __CFADD__(__CFADD__(v584, v1183), v589);
              v1116 = __CFADD__(v606, v576);
              v608 = v606 + v576;
              v609 = v1116 || v607;
              v610 = v590 + v609;
              LODWORD(v611) = __CFADD__(v590, v609);
              v1116 = __CFADD__(v1186, v610);
              v612 = v1186 + v610;
              if (v1116)
              {
                v611 = 1;
              }

              else
              {
                v611 = v611;
              }

              v613 = HIDWORD(v599) + 2863311530 * v591 + HIDWORD(v601);
              LODWORD(v614) = __CFADD__(__CFADD__(v605, v608), v604);
              if (__CFADD__(v612, __CFADD__(v605, v608) + v604))
              {
                v614 = 1;
              }

              else
              {
                v614 = v614;
              }

              v615 = *(&v590 + 1) + v611;
              v616 = __PAIR128__(v1280 + (v1264 >> 1) + (v1261 << 31) + v1267 + v1252 + v1257 + v1247 + v1241 + (v1228 >> 2) + (v1223 << 30) + v1235 + v1211 + v1218 + v1198 + v1195 + 715827882 * v591 + HIDWORD(v599), v613) + __PAIR128__(HIDWORD(v602), v603);
              v1116 = __CFADD__(v613 + v603, v614);
              v617 = v613 + v603 + v614;
              LODWORD(v618) = v1116;
              v1116 = __CFADD__(v615, v617);
              v619 = v615 + v617;
              if (v1116)
              {
                v618 = 1;
              }

              else
              {
                v618 = v618;
              }

              v1265 = v618;
              v1262 = *(&v499 + 1) + v499;
              v620 = __CFADD__(*(&v499 + 1), v499) + v1202;
              LODWORD(v621) = __CFADD__(__CFADD__(*(&v499 + 1), v499), v1202);
              v1116 = __CFADD__(v619, v620);
              v1258 = v619 + v620;
              v622 = ((HIDWORD(v559) * v1282) >> 32) + HIDWORD(v559) * v1279 + ((v559 * v1279 + HIDWORD(v559) * v1282 + ((v559 * v1283) >> 32)) >> 32);
              v623 = HIDWORD(v559) * v1290;
              v624 = v559 * v1281 + v623 + ((v559 * v1285) >> 32);
              v625 = HIDWORD(v623) + HIDWORD(v559) * v1281 + HIDWORD(v624);
              v626 = (v559 * v1285) | (v624 << 32);
              if (v1116)
              {
                v621 = 1;
              }

              else
              {
                v621 = v621;
              }

              v1253 = v621;
              v1236 = v622 + v626;
              v627 = v559 * v1278 + HIDWORD(v559) * v1284 + ((v559 * v1280) >> 32);
              v628 = (v559 * v1280) | (v627 << 32);
              v1116 = __CFADD__(__CFADD__(v622, v626), v628);
              v629 = __CFADD__(v622, v626) + v628;
              v630 = v1116;
              v1116 = __CFADD__(v625, v629);
              v1229 = v625 + v629;
              v631 = v577 * v1282;
              v632 = v580 * v1279 + v631 + ((v1188 * v1283) >> 32);
              v633 = HIDWORD(v631) + v577 * v1279 + HIDWORD(v632);
              v634 = (v1188 * v1283) | (v632 << 32);
              v635 = v577 * v1290;
              v636 = v580 * v1281 + v635 + ((v1188 * v1285) >> 32);
              v637 = HIDWORD(v635) + v577 * v1281 + HIDWORD(v636);
              v638 = (v1188 * v1285) | (v636 << 32);
              if (v1116)
              {
                v639 = 1;
              }

              else
              {
                v639 = v630;
              }

              v1212 = v633 + v638;
              v640 = v580 * v1278;
              v641 = v577 * v1284;
              v642 = v640 + v641 + ((v1188 * v1280) >> 32);
              v643 = (v1188 * v1280) | (v642 << 32);
              v1116 = __CFADD__(__CFADD__(v633, v638), v643);
              v644 = __CFADD__(v633, v638) + v643;
              LODWORD(v645) = v1116;
              v1116 = __CFADD__(v637, v644);
              v646 = v637 + v644;
              v647 = v591 * v1290;
              v648 = v592 * v1281 + v647 + ((v1192 * v1285) >> 32);
              v649 = HIDWORD(v647) + v591 * v1281 + HIDWORD(v648);
              v650 = (v1192 * v1285) | (v648 << 32);
              if (v1116)
              {
                v645 = 1;
              }

              else
              {
                v645 = v645;
              }

              v651 = v591 * v1282;
              v652 = v592 * v1279 + v651 + ((v1192 * v1283) >> 32);
              v653 = HIDWORD(v651) + v591 * v1279 + HIDWORD(v652);
              v1116 = __CFADD__(v653, v650);
              v654 = v653;
              v655 = v591 * v1284;
              v1248 = v592 * v1278 + v655 + ((v1192 * v1280) >> 32);
              v656 = (v1192 * v1280) | (v1248 << 32);
              v657 = __PAIR128__(v656, v654) + v650;
              v658 = __CFADD__(v1116, v656);
              v659 = v649 + *(&v657 + 1);
              v660 = __CFADD__(v649, *(&v657 + 1)) || v658;
              v1242 = v660;
              v661 = ((v566 * v1284) >> 32) + v566 * v1278 + HIDWORD(v627) + v639;
              v662 = __CFADD__(v634, v1236) + v1212;
              v663 = __CFADD__(__CFADD__(v634, v1236), v1212);
              v664 = v662 + v1229;
              v665 = __CFADD__(v662, v1229) || v663;
              v1116 = __CFADD__(v646, v665);
              v666 = v646 + v665;
              v667 = v1116;
              v1116 = __CFADD__(v661, v666);
              v668 = v661 + v666;
              if (v1116)
              {
                v669 = 1;
              }

              else
              {
                v669 = v667;
              }

              v1116 = __CFADD__((v1192 * v1283) | (v652 << 32), v664);
              v670 = HIDWORD(v641) + v577 * v1278 + HIDWORD(v642) + v645 + v669;
              v671 = v1116 + v657;
              v672 = __CFADD__(v1116, v657);
              v673 = v668 + v671;
              v674 = __CFADD__(v668, v671) || v672;
              v1116 = __CFADD__(v659, v674);
              v675 = v659 + v674;
              v676 = v1116;
              v1116 = __CFADD__(v670, v675);
              v677 = v670 + v675;
              v678 = 2454267026 * v673;
              v679 = ((1227133513 * HIDWORD(v673)) >> 32) + 2454267026 * HIDWORD(v673) + ((v678 + (1227133513 * HIDWORD(v673)) + ((1227133513 * v673) >> 32)) >> 32);
              v680 = 613566756 * HIDWORD(v673);
              v681 = HIDWORD(v680) + 1227133513 * HIDWORD(v673);
              v682 = 613566756 * v673;
              v683 = v680 + 1227133513 * v673 + HIDWORD(v682);
              v684 = v681 + HIDWORD(v683);
              v685 = v682 | (v683 << 32);
              if (v1116)
              {
                v686 = 1;
              }

              else
              {
                v686 = v676;
              }

              v1116 = __CFADD__(v679, v685);
              v687 = v679 + v685;
              v688 = 2454267026 * HIDWORD(v673);
              v689 = v688 + 613566756 * v673 + HIDWORD(v678);
              v690 = v678 | (v689 << 32);
              v692 = v1116;
              v1116 = __CFADD__(v1116, v684) | __CFADD__(v690, v1116 + v684);
              v691 = v690 + v692 + v684;
              LODWORD(v690) = v677;
              v1237 = v677;
              v693 = HIDWORD(v677);
              v694 = 1227133513 * v693;
              v695 = HIDWORD(v694) + 2454267026 * v693;
              v696 = v690;
              v697 = 2454267026 * v690;
              v698 = v697 + v694 + ((1227133513 * v690) >> 32);
              v699 = v695 + HIDWORD(v698);
              v700 = (1227133513 * v690) | (v698 << 32);
              v701 = 613566756 * v693;
              v702 = HIDWORD(v701) + 1227133513 * v693;
              v703 = v701 + 1227133513 * v690;
              v704 = 613566756 * v690;
              v705 = v703 + HIDWORD(v704);
              v706 = v702 + HIDWORD(v705);
              v707 = v704 | (v705 << 32);
              v708 = HIDWORD(v689) + v1116 + HIDWORD(v688) + 613566756 * HIDWORD(v673);
              v1116 = __CFADD__(v699, v707);
              v709 = v699;
              v710 = 2454267026 * v693;
              v711 = v710 + 613566756 * v696 + HIDWORD(v697);
              v712 = v697 | (v711 << 32);
              v714 = v709 + v707;
              v1116 = __CFADD__(v1116, v706) | __CFADD__(v712, (__PAIR128__(v706, v709) + v707) >> 64);
              v713 = v712 + ((__PAIR128__(v706, v709) + v707) >> 64);
              v715 = HIDWORD(v711) + v1116 + HIDWORD(v710) + 613566756 * v693;
              v1116 = __CFADD__(v700, v687);
              v1249 = HIDWORD(v655) + v591 * v1278 + HIDWORD(v1248) + v1242 + v686;
              v716 = 1227133513 * HIDWORD(v1249);
              v717 = HIDWORD(v716) + 2454267026 * HIDWORD(v1249);
              v718 = 2454267026 * v1249;
              v719 = v718 + v716 + ((1227133513 * v1249) >> 32);
              v720 = v717 + HIDWORD(v719);
              v721 = (1227133513 * v1249) | (v719 << 32);
              v722 = 613566756 * HIDWORD(v1249);
              v723 = HIDWORD(v722) + 1227133513 * HIDWORD(v1249);
              v724 = v722 + 1227133513 * v1249;
              v725 = 613566756 * v1249;
              v726 = v724 + HIDWORD(v725);
              v727 = v723 + HIDWORD(v726);
              v728 = v725 | (v726 << 32);
              v729 = v1116 + v709 + v707;
              LODWORD(v730) = __CFADD__(v1116, v714);
              v1116 = __CFADD__(v729, v691);
              v731 = v729 + v691;
              if (v1116)
              {
                v730 = 1;
              }

              else
              {
                v730 = v730;
              }

              v1116 = __CFADD__(v713, v730);
              v732 = v713 + v730;
              v733 = v1116;
              v1116 = __CFADD__(v708, v732);
              v734 = v708 + v732;
              if (v1116)
              {
                v735 = 1;
              }

              else
              {
                v735 = v733;
              }

              v1116 = __CFADD__(v720, v728);
              v736 = v720;
              v737 = 2454267026 * HIDWORD(v1249);
              v738 = v737 + 613566756 * v1249 + HIDWORD(v718);
              v739 = v718 | (v738 << 32);
              v1116 = __CFADD__(v1116, v727) | __CFADD__(v739, (__PAIR128__(v727, v736) + v728) >> 64);
              v740 = v739 + ((__PAIR128__(v727, v736) + v728) >> 64);
              v741 = HIDWORD(v738) + v1116 + *(&v616 + 1) + v1265 + v1253 + 613566756 * HIDWORD(v1249) + HIDWORD(v737);
              v1116 = __CFADD__(v721, v731);
              v742 = v715 + v735;
              v743 = v1116 + v736 + v728;
              LODWORD(v744) = __CFADD__(v1116, v736 + v728);
              v1116 = __CFADD__(v734, v743);
              v745 = v734 + v743;
              if (v1116)
              {
                v744 = 1;
              }

              else
              {
                v744 = v744;
              }

              v1116 = __CFADD__(v740, v744);
              v746 = v740 + v744;
              v747 = v1116;
              v1116 = __CFADD__(v742, v746);
              v748 = v742 + v746;
              if (v1116)
              {
                v749 = 1;
              }

              else
              {
                v749 = v747;
              }

              v1266 = v749;
              v1268 = v741;
              v1254 = v745 + v1262;
              v1116 = __CFADD__(__CFADD__(v745, v1262), v1258);
              v750 = __CFADD__(v745, v1262) + v1258;
              v751 = v1116;
              v1116 = __CFADD__(v748, v750);
              v1259 = v748 + v750;
              v752 = ((HIDWORD(v673) * v1282) >> 32) + HIDWORD(v673) * v1279 + ((v673 * v1279 + HIDWORD(v673) * v1282 + ((v673 * v1283) >> 32)) >> 32);
              v753 = HIDWORD(v673) * v1290;
              v1224 = HIDWORD(v673);
              v754 = v673 * v1281 + v753 + ((v673 * v1285) >> 32);
              v755 = HIDWORD(v753) + HIDWORD(v673) * v1281 + HIDWORD(v754);
              v756 = (v673 * v1285) | (v754 << 32);
              if (v1116)
              {
                v757 = 1;
              }

              else
              {
                v757 = v751;
              }

              v1263 = v757;
              v1116 = __CFADD__(v752, v756);
              v1230 = v752 + v756;
              v1219 = HIDWORD(v673) * v1284;
              v1213 = v673 * v1278 + v1219 + ((v673 * v1280) >> 32);
              v758 = (v673 * v1280) | (v1213 << 32);
              v760 = v1116;
              v1116 = __CFADD__(v1116, v758);
              v759 = v760 + v758;
              LODWORD(v761) = v1116;
              v1116 = __CFADD__(v755, v759);
              v1243 = v755 + v759;
              v762 = v693 * v1282;
              v763 = v696 * v1279 + v762 + ((v1237 * v1283) >> 32);
              v764 = HIDWORD(v762) + v693 * v1279 + HIDWORD(v763);
              v765 = (v1237 * v1283) | (v763 << 32);
              v766 = v693 * v1290;
              v767 = v696 * v1281 + v766 + ((v1237 * v1285) >> 32);
              v768 = HIDWORD(v766) + v693 * v1281 + HIDWORD(v767);
              v769 = (v1237 * v1285) | (v767 << 32);
              if (v1116)
              {
                v761 = 1;
              }

              else
              {
                v761 = v761;
              }

              v1206 = v761;
              v1116 = __CFADD__(v764, v769);
              v770 = v764 + v769;
              v771 = v696 * v1278;
              v772 = v693 * v1284;
              v773 = v771 + v772 + ((v1237 * v1280) >> 32);
              v774 = (v1237 * v1280) | (v773 << 32);
              v776 = v1116;
              v1116 = __CFADD__(v1116, v774);
              v775 = v776 + v774;
              LODWORD(v777) = v1116;
              v1116 = __CFADD__(v768, v775);
              v778 = v768 + v775;
              v779 = HIDWORD(v1249) * v1290;
              v780 = v1249 * v1281 + v779 + ((v1249 * v1285) >> 32);
              v781 = HIDWORD(v779) + HIDWORD(v1249) * v1281 + HIDWORD(v780);
              v782 = (v1249 * v1285) | (v780 << 32);
              if (v1116)
              {
                v777 = 1;
              }

              else
              {
                v777 = v777;
              }

              v783 = HIDWORD(v1249) * v1282;
              v784 = v1249 * v1279 + v783 + ((v1249 * v1283) >> 32);
              v785 = HIDWORD(v783) + HIDWORD(v1249) * v1279 + HIDWORD(v784);
              v1116 = __CFADD__(v785, v782);
              v786 = v785 + v782;
              v787 = HIDWORD(v1249) * v1284;
              v788 = v1249 * v1278 + v787 + ((v1249 * v1280) >> 32);
              v789 = (v1249 * v1280) | (v788 << 32);
              v791 = v1116;
              v1116 = __CFADD__(v1116, v789);
              v790 = v791 + v789;
              LODWORD(v792) = v1116;
              v1116 = __CFADD__(v781, v790);
              v793 = v781 + v790;
              if (v1116)
              {
                v792 = 1;
              }

              else
              {
                v792 = v792;
              }

              v794 = HIDWORD(v1219) + v1224 * v1278 + HIDWORD(v1213) + v1206;
              v795 = HIDWORD(v772) + v693 * v1278 + HIDWORD(v773) + v777;
              v796 = (v1249 * v1283) | (v784 << 32);
              v797 = HIDWORD(v787) + HIDWORD(v1249) * v1278 + HIDWORD(v788) + v792;
              v798 = __CFADD__(v765, v1230) + v770;
              LODWORD(v799) = __CFADD__(__CFADD__(v765, v1230), v770);
              v1116 = __CFADD__(v798, v1243);
              v800 = v798 + v1243;
              if (v1116)
              {
                v799 = 1;
              }

              else
              {
                v799 = v799;
              }

              v1116 = __CFADD__(v778, v799);
              v801 = v778 + v799;
              v802 = v1116;
              v1116 = __CFADD__(v794, v801);
              v803 = v794 + v801;
              if (v1116)
              {
                v804 = 1;
              }

              else
              {
                v804 = v802;
              }

              v805 = v795 + v804;
              v1116 = __CFADD__(__CFADD__(v796, v800), v786);
              v806 = __CFADD__(v796, v800) + v786;
              v807 = v1116;
              v808 = v803 + v806;
              if (__CFADD__(v803, v806))
              {
                v809 = 1;
              }

              else
              {
                v809 = v807;
              }

              v1116 = __CFADD__(v793, v809);
              v810 = v793 + v809;
              v811 = v1116;
              v812 = v805 + v810;
              if (__CFADD__(v805, v810))
              {
                v813 = 1;
              }

              else
              {
                v813 = v811;
              }

              v814 = v797 + v813;
              v815 = HIDWORD(v808);
              v816 = v808;
              v817 = (v812 >> 3) | (HIDWORD(v812) << 29) | (v814 << 61);
              v1225 = v1254 + (v808 >> 3) + (HIDWORD(v808) << 29) + (v812 << 61);
              v818 = v1225 < v1254;
              v1116 = __CFADD__(v1259, v818);
              v819 = v1259 + v818;
              v820 = v1116;
              v1116 = __CFADD__(v817, v819);
              v1220 = v817 + v819;
              v821 = ((HIDWORD(v808) * v1282) >> 32) + HIDWORD(v808) * v1279 + ((v808 * v1279 + HIDWORD(v808) * v1282 + ((v808 * v1283) >> 32)) >> 32);
              v822 = HIDWORD(v808) * v1290;
              v823 = v808 * v1281 + v822 + ((v808 * v1285) >> 32);
              v824 = HIDWORD(v822) + HIDWORD(v808) * v1281 + HIDWORD(v823);
              v825 = (v808 * v1285) | (v823 << 32);
              if (v1116)
              {
                v826 = 1;
              }

              else
              {
                v826 = v820;
              }

              v1260 = v826;
              v1244 = v821 + v825;
              v827 = v808 * v1280;
              v1231 = v815 * v1284;
              v1214 = v816 * v1278 + v1231 + HIDWORD(v827);
              v828 = v827 | (v1214 << 32);
              v1116 = __CFADD__(__CFADD__(v821, v825), v828);
              v829 = __CFADD__(v821, v825) + v828;
              v830 = v1116;
              v1116 = __CFADD__(v824, v829);
              v1238 = v824 + v829;
              v831 = v812;
              v832 = HIDWORD(v812);
              v833 = HIDWORD(v812) * v1282;
              v834 = v812 * v1279 + v833 + ((v812 * v1283) >> 32);
              v835 = HIDWORD(v833) + HIDWORD(v812) * v1279 + HIDWORD(v834);
              v836 = (v812 * v1283) | (v834 << 32);
              v837 = HIDWORD(v812) * v1290;
              v838 = v812 * v1281 + v837 + ((v812 * v1285) >> 32);
              v839 = HIDWORD(v837) + HIDWORD(v812) * v1281 + HIDWORD(v838);
              if (v1116)
              {
                v840 = 1;
              }

              else
              {
                v840 = v830;
              }

              v1116 = __CFADD__(v835, (v812 * v1285) | (v838 << 32));
              v841 = v835;
              v842 = (v812 * v1285) | (v838 << 32);
              v843 = v812 * v1280;
              v844 = HIDWORD(v812) * v1284;
              v845 = v831 * v1278 + v844 + HIDWORD(v843);
              v846 = v843 | (v845 << 32);
              v847 = __PAIR128__(v846, v841) + v842;
              v848 = __CFADD__(v1116, v846);
              v1116 = __CFADD__(v839, *(&v847 + 1));
              v849 = v839 + *(&v847 + 1);
              v850 = HIDWORD(v814) * v1290;
              v851 = v814 * v1281 + v850 + ((v814 * v1285) >> 32);
              v852 = HIDWORD(v850) + HIDWORD(v814) * v1281 + HIDWORD(v851);
              v853 = (v814 * v1285) | (v851 << 32);
              v854 = v1116 || v848;
              v855 = HIDWORD(v814) * v1282;
              v856 = v814;
              v1255 = v814;
              v857 = HIDWORD(v814);
              v858 = v814 * v1283;
              v859 = v814 * v1279 + v855 + HIDWORD(v858);
              v860 = HIDWORD(v855) + HIDWORD(v814) * v1279 + HIDWORD(v859);
              v1116 = __CFADD__(v860, v853);
              v861 = v860 + v853;
              v862 = v814 * v1280;
              v863 = v857 * v1284;
              v864 = v857;
              v1250 = v857;
              v865 = v856 * v1278 + v863 + HIDWORD(v862);
              v866 = v862 | (v865 << 32);
              v868 = v1116;
              v1116 = __CFADD__(v1116, v866);
              v867 = v868 + v866;
              v869 = v1116;
              v1116 = __CFADD__(v852, v867);
              v870 = v852 + v867;
              if (v1116)
              {
                v871 = 1;
              }

              else
              {
                v871 = v869;
              }

              v872 = HIDWORD(v1231) + v815 * v1278 + HIDWORD(v1214) + v840;
              v873 = v858 | (v859 << 32);
              v874 = __CFADD__(v836, v1244) + v847;
              v875 = __CFADD__(__CFADD__(v836, v1244), v847);
              v1116 = __CFADD__(v874, v1238);
              v876 = v874 + v1238;
              v877 = v1116 || v875;
              v1116 = __CFADD__(v849, v877);
              v878 = v849 + v877;
              v879 = v1116;
              v1116 = __CFADD__(v872, v878);
              v880 = v872 + v878;
              if (v1116)
              {
                v881 = 1;
              }

              else
              {
                v881 = v879;
              }

              v882 = HIDWORD(v844) + v832 * v1278 + HIDWORD(v845) + v854 + v881;
              v883 = __CFADD__(v873, v876) + v861;
              v884 = __CFADD__(__CFADD__(v873, v876), v861);
              v885 = v880 + v883;
              v886 = __CFADD__(v880, v883) || v884;
              v1116 = __CFADD__(v870, v886);
              v887 = v870 + v886;
              v888 = v1116;
              v889 = v882 + v887;
              if (__CFADD__(v882, v887))
              {
                v890 = 1;
              }

              else
              {
                v890 = v888;
              }

              v891 = HIDWORD(v863) + v864 * v1278 + HIDWORD(v865) + v871 + v890;
              v892 = HIDWORD(v885);
              v893 = 1908874353 * v885;
              v894 = ((3340530119u * HIDWORD(v885)) >> 32) + 1908874353 * HIDWORD(v885) + ((v893 + (-954437177 * HIDWORD(v885)) + ((3340530119u * v885) >> 32)) >> 32);
              v895 = 477218588 * HIDWORD(v885);
              v896 = HIDWORD(v895) + 3340530119 * HIDWORD(v885);
              v897 = 477218588 * v885;
              v898 = v895 + 3340530119 * v885 + HIDWORD(v897);
              v899 = v896 + HIDWORD(v898);
              v900 = v897 | (v898 << 32);
              v1207 = v894 + v900;
              v901 = 1908874353 * HIDWORD(v885);
              v1193 = v897 + v901 + HIDWORD(v893);
              v902 = (1908874353 * v885) | (v1193 << 32);
              v1116 = __CFADD__(__CFADD__(v894, v900), v902);
              v903 = __CFADD__(v894, v900) + v902;
              v904 = v1116;
              v1116 = __CFADD__(v899, v903);
              v1215 = v899 + v903;
              v905 = v889;
              v1199 = v889;
              v906 = HIDWORD(v889);
              v907 = 3340530119 * v906;
              v908 = HIDWORD(v907) + 1908874353 * v906;
              v909 = v905;
              v910 = 1908874353 * v905;
              v911 = v910 + v907 + ((3340530119u * v905) >> 32);
              v912 = v908 + HIDWORD(v911);
              v913 = (-954437177 * v905) | (v911 << 32);
              v914 = 477218588 * v906;
              v915 = HIDWORD(v914) + 3340530119 * v906;
              v916 = 477218588 * v905;
              v917 = v914 + 3340530119 * v905 + HIDWORD(v916);
              v918 = v915 + HIDWORD(v917);
              v919 = v916 | (v917 << 32);
              if (v1116)
              {
                v920 = 1;
              }

              else
              {
                v920 = v904;
              }

              v1189 = v920;
              v1116 = __CFADD__(v912, v919);
              v921 = v919;
              v922 = 1908874353 * v906;
              v923 = v916 + v922 + HIDWORD(v910);
              v924 = (1908874353 * v905) | (v923 << 32);
              v925 = __PAIR128__(v924, v912) + v921;
              LODWORD(v926) = __CFADD__(v1116, v924);
              v1116 = __CFADD__(v918, *(&v925 + 1));
              v927 = v918 + *(&v925 + 1);
              v1196 = v891;
              v928 = HIDWORD(v891);
              v929 = 477218588 * HIDWORD(v891);
              v930 = HIDWORD(v929) + 3340530119 * HIDWORD(v891);
              v931 = v929;
              v932 = v891;
              v933 = 477218588 * v891;
              v934 = v931 + 3340530119 * v891 + HIDWORD(v933);
              v935 = v930 + HIDWORD(v934);
              v936 = v933 | (v934 << 32);
              if (v1116)
              {
                v926 = 1;
              }

              else
              {
                v926 = v926;
              }

              v937 = 3340530119 * HIDWORD(v891);
              v938 = HIDWORD(v937) + 1908874353 * v928;
              v939 = 1908874353 * v932;
              v940 = v939 + v937 + ((3340530119u * v932) >> 32);
              v941 = v938 + HIDWORD(v940);
              v1116 = __CFADD__(v941, v936);
              v942 = v941 + v936;
              v1239 = v933 + (1908874353 * v928) + HIDWORD(v939);
              v1245 = 1908874353 * v928;
              v943 = (1908874353 * v932) | (v1239 << 32);
              v945 = v1116;
              v1116 = __CFADD__(v1116, v943);
              v944 = v945 + v943;
              LODWORD(v946) = v1116;
              v1116 = __CFADD__(v935, v944);
              v947 = v935 + v944;
              if (v1116)
              {
                v946 = 1;
              }

              else
              {
                v946 = v946;
              }

              v1232 = v946;
              v948 = HIDWORD(v901) + 477218588 * HIDWORD(v885) + HIDWORD(v1193) + v1189;
              v949 = __CFADD__(v913, v1207) + v925;
              LODWORD(v950) = __CFADD__(__CFADD__(v913, v1207), v925);
              v1116 = __CFADD__(v949, v1215);
              v951 = v949 + v1215;
              if (v1116)
              {
                v950 = 1;
              }

              else
              {
                v950 = v950;
              }

              v1116 = __CFADD__(v927, v950);
              v952 = v927 + v950;
              v953 = v1116;
              v1116 = __CFADD__(v948, v952);
              v954 = v948 + v952;
              if (v1116)
              {
                v955 = 1;
              }

              else
              {
                v955 = v953;
              }

              v956 = HIDWORD(v922) + 477218588 * v906 + HIDWORD(v923) + v926 + v955;
              v957 = __CFADD__((-954437177 * v932) | (v940 << 32), v951) + v942;
              v958 = __CFADD__(__CFADD__((-954437177 * v932) | (v940 << 32), v951), v942);
              v1116 = __CFADD__(v954, v957);
              v959 = v954 + v957;
              v960 = v1116 || v958;
              v1116 = __CFADD__(v947, v960);
              v961 = v947 + v960;
              v962 = v1116;
              v1116 = __CFADD__(v956, v961);
              v963 = v956 + v961;
              if (v1116)
              {
                v964 = 1;
              }

              else
              {
                v964 = v962;
              }

              v1216 = v964;
              v1116 = __CFADD__(v959, v1225);
              v966 = v959 + v1225;
              v965 = (__PAIR128__(v1220, v959) + v1225) >> 64;
              v967 = __CFADD__(v1116, v1220);
              v1116 = __CFADD__(v963, v965);
              v1221 = v963 + v965;
              v968 = ((HIDWORD(v885) * v1282) >> 32) + HIDWORD(v885) * v1279 + ((v885 * v1279 + HIDWORD(v885) * v1282 + ((v885 * v1283) >> 32)) >> 32);
              v969 = HIDWORD(v885) * v1290;
              v970 = v885 * v1281 + v969 + ((v885 * v1285) >> 32);
              v971 = HIDWORD(v969) + HIDWORD(v885) * v1281 + HIDWORD(v970);
              v972 = (v885 * v1285) | (v970 << 32);
              v973 = v1116 || v967;
              v1208 = v973;
              v1116 = __CFADD__(v968, v972);
              v1190 = v968 + v972;
              v1184 = v885 * v1278 + HIDWORD(v885) * v1284 + ((v885 * v1280) >> 32);
              v974 = (v885 * v1280) | (v1184 << 32);
              v976 = v1116;
              v1116 = __CFADD__(v1116, v974);
              v975 = v976 + v974;
              v977 = v1116;
              v1116 = __CFADD__(v971, v975);
              v1194 = v971 + v975;
              v978 = v906 * v1282;
              v979 = v909 * v1279 + v978 + ((v1199 * v1283) >> 32);
              v980 = HIDWORD(v978) + v906 * v1279 + HIDWORD(v979);
              v981 = (v1199 * v1283) | (v979 << 32);
              v982 = v906 * v1290;
              v983 = v909 * v1281 + v982 + ((v1199 * v1285) >> 32);
              v984 = HIDWORD(v982) + v906 * v1281 + HIDWORD(v983);
              v985 = (v1199 * v1285) | (v983 << 32);
              if (v1116)
              {
                v986 = 1;
              }

              else
              {
                v986 = v977;
              }

              v1116 = __CFADD__(v980, v985);
              v987 = v980;
              v988 = v906 * v1284;
              v989 = v909 * v1278 + v988 + ((v1199 * v1280) >> 32);
              v990 = (v1199 * v1280) | (v989 << 32);
              v991 = __PAIR128__(v990, v987) + v985;
              LODWORD(v992) = __CFADD__(v1116, v990);
              v1116 = __CFADD__(v984, *(&v991 + 1));
              v993 = v984 + *(&v991 + 1);
              v994 = v928 * v1282;
              v995 = HIDWORD(v994) + v928 * v1279;
              v996 = v932 * v1279 + v994;
              v997 = v928 * v1290;
              v998 = HIDWORD(v997) + v928 * v1281;
              v999 = v932 * v1281 + v997 + ((v1196 * v1285) >> 32);
              v1000 = v998 + HIDWORD(v999);
              v1001 = (v1196 * v1285) | (v999 << 32);
              if (v1116)
              {
                v992 = 1;
              }

              else
              {
                v992 = v992;
              }

              v1002 = v996 + ((v1196 * v1283) >> 32);
              v1003 = v995 + HIDWORD(v1002);
              v1116 = __CFADD__(v1003, v1001);
              v1004 = v1003 + v1001;
              v1005 = v928;
              v1203 = v928;
              v1006 = v928 * v1284;
              v1007 = v932 * v1278 + v1006 + ((v1196 * v1280) >> 32);
              v1008 = (v1196 * v1280) | (v1007 << 32);
              v1010 = v1116;
              v1116 = __CFADD__(v1116, v1008);
              v1009 = v1010 + v1008;
              v1011 = v1116;
              v1116 = __CFADD__(v1000, v1009);
              v1012 = v1000 + v1009;
              if (v1116)
              {
                v1013 = 1;
              }

              else
              {
                v1013 = v1011;
              }

              v1014 = ((v892 * v1284) >> 32) + v892 * v1278 + HIDWORD(v1184) + v986;
              v1015 = HIDWORD(v988) + v906 * v1278 + HIDWORD(v989) + v992;
              v1016 = (v1196 * v1283) | (v1002 << 32);
              v1017 = HIDWORD(v1006) + v1005 * v1278 + HIDWORD(v1007) + v1013;
              v1018 = __CFADD__(v981, v1190) + v991;
              v1019 = __CFADD__(__CFADD__(v981, v1190), v991);
              v1020 = v1018 + v1194;
              v1021 = __CFADD__(v1018, v1194) || v1019;
              v1116 = __CFADD__(v993, v1021);
              v1022 = v993 + v1021;
              v1023 = v1116;
              v1116 = __CFADD__(v1014, v1022);
              v1024 = v1014 + v1022;
              if (v1116)
              {
                v1025 = 1;
              }

              else
              {
                v1025 = v1023;
              }

              v1026 = v1015 + v1025;
              v1116 = __CFADD__(__CFADD__(v1016, v1020), v1004);
              v1027 = __CFADD__(v1016, v1020) + v1004;
              v1028 = v1116;
              v1116 = __CFADD__(v1024, v1027);
              v1029 = v1024 + v1027;
              if (v1116)
              {
                v1030 = 1;
              }

              else
              {
                v1030 = v1028;
              }

              v1116 = __CFADD__(v1012, v1030);
              v1031 = v1012 + v1030;
              v1032 = v1116;
              v1033 = v1026 + v1031;
              if (__CFADD__(v1026, v1031))
              {
                v1034 = 1;
              }

              else
              {
                v1034 = v1032;
              }

              v1035 = v1017 + v1034;
              v1036 = HIDWORD(v1029);
              v1037 = v1029;
              v1038 = ((2576980378u * HIDWORD(v1029)) >> 32) + 2576980377 * HIDWORD(v1029) + (((-1717986918 * HIDWORD(v1029)) + 2576980377 * v1037 + ((2576980378u * v1037) >> 32)) >> 32);
              v1039 = 2576980377 * HIDWORD(v1029);
              v1040 = ((2576980377u * v1037) >> 32) + v1039;
              v1041 = HIDWORD(v1039);
              v1042 = HIDWORD(v1039) + 2576980377 * v1036 + ((v1040 + 2576980377 * v1037) >> 32);
              v1043 = (-1717986919 * v1037) | ((v1040 - 1717986919 * v1037) << 32);
              v1044 = v1040 + 429496729 * v1037;
              v1286 = v1038 + v1043;
              v1045 = (-1717986919 * v1037) | (v1044 << 32);
              v1046 = __CFADD__(v1038, v1043) + v1045;
              LODWORD(v1047) = __CFADD__(__CFADD__(v1038, v1043), v1045);
              v1116 = __CFADD__(v1042, v1046);
              v1291 = v1042 + v1046;
              v1048 = HIDWORD(v1033);
              v1049 = 2576980378 * HIDWORD(v1033);
              v1050 = HIDWORD(v1049) + 2576980377 * HIDWORD(v1033);
              v1051 = 2576980378 * v1033;
              v1052 = v1049 + 2576980377 * v1033 + HIDWORD(v1051);
              v1053 = v1050 + HIDWORD(v1052);
              v1054 = v1051 | (v1052 << 32);
              v1055 = 2576980377 * HIDWORD(v1033);
              v1056 = 2576980377 * v1033;
              v1057 = HIDWORD(v1056) + v1055;
              v1058 = HIDWORD(v1055);
              v1059 = v1058 + 2576980377 * HIDWORD(v1033) + ((v1057 + v1056) >> 32);
              v1060 = (-1717986919 * v1033) | ((v1057 - 1717986919 * v1033) << 32);
              v1061 = v1057 + 429496729 * v1033;
              if (v1116)
              {
                v1047 = 1;
              }

              else
              {
                v1047 = v1047;
              }

              v1062 = v1056 | (v1061 << 32);
              v1063 = __PAIR128__(v1062, v1053) + v1060;
              LODWORD(v1064) = __CFADD__(__CFADD__(v1053, v1060), v1062);
              v1116 = __CFADD__(v1059, *(&v1063 + 1));
              v1065 = v1059 + *(&v1063 + 1);
              v1066 = HIDWORD(v1035);
              v1067 = v1035;
              v1068 = 2576980378 * HIDWORD(v1035);
              v1069 = HIDWORD(v1068) + 2576980377 * v1066;
              v1070 = v1068 + 2576980377 * v1067;
              v1071 = 2576980377 * v1066;
              v1072 = 2576980377 * v1067;
              v1073 = HIDWORD(v1072) + v1071;
              v1074 = HIDWORD(v1071) + v1071 + ((v1073 + v1072) >> 32);
              v1075 = v1072 | ((v1073 - 1717986919 * v1067) << 32);
              v1076 = 2576980378 * v1067;
              v1077 = v1073 + 429496729 * v1067;
              if (v1116)
              {
                v1064 = 1;
              }

              else
              {
                v1064 = v1064;
              }

              v1078 = v1070 + HIDWORD(v1076);
              v1079 = v1069 + HIDWORD(v1078);
              v1116 = __CFADD__(v1079, v1075);
              v1080 = v1079 + v1075;
              v1081 = v1072 | (v1077 << 32);
              v1083 = v1116;
              v1116 = __CFADD__(v1116, v1081);
              v1082 = v1083 + v1081;
              v1084 = v1116;
              v1085 = v1074 + v1082;
              if (__CFADD__(v1074, v1082))
              {
                v1086 = 1;
              }

              else
              {
                v1086 = v1084;
              }

              v1087 = v1041 + 429496729 * v1036 + HIDWORD(v1044) + v1047;
              v1088 = v1076 | (v1078 << 32);
              v1089 = __CFADD__(v1054, v1286) + v1063;
              LODWORD(v1090) = __CFADD__(__CFADD__(v1054, v1286), v1063);
              v1116 = __CFADD__(v1089, v1291);
              v1091 = v1089 + v1291;
              if (v1116)
              {
                v1090 = 1;
              }

              else
              {
                v1090 = v1090;
              }

              v1116 = __CFADD__(v1065, v1090);
              v1092 = v1065 + v1090;
              v1093 = v1116;
              v1116 = __CFADD__(v1087, v1092);
              v1094 = v1087 + v1092;
              if (v1116)
              {
                v1095 = 1;
              }

              else
              {
                v1095 = v1093;
              }

              v1096 = v1058 + 429496729 * v1048 + HIDWORD(v1061) + v1064 + v1095;
              v1097 = __CFADD__(v1088, v1091) + v1080;
              v1098 = __CFADD__(__CFADD__(v1088, v1091), v1080);
              v1116 = __CFADD__(v1094, v1097);
              v1099 = v1094 + v1097;
              v1100 = v1116 || v1098;
              v1116 = __CFADD__(v1085, v1100);
              v1101 = v1085 + v1100;
              v1102 = v1116;
              v1116 = __CFADD__(v1096, v1101);
              v1103 = v1096 + v1101;
              if (v1116)
              {
                v1104 = 1;
              }

              else
              {
                v1104 = v1102;
              }

              v1105 = __PAIR128__(v1221, v1099) + v966;
              v1106 = __CFADD__(__CFADD__(v1099, v966), v1221);
              v1116 = __CFADD__(v1103, *(&v1105 + 1));
              v1107 = v1103 + *(&v1105 + 1);
              v1108 = v1268 + v1266 + v1263 + (v1255 >> 3) + (v1250 << 29) + v1260 + 477218588 * v1203 + HIDWORD(v1245) + HIDWORD(v1239) + v1232 + v1216 + v1208 + 429496729 * v1066 + HIDWORD(v1071) + HIDWORD(v1077) + v1086 + v1104;
              v1109 = v1116 || v1106;
              *(&v1111 + 1) = v1107;
              *&v1111 = v1099 + v966;
              v1110 = v1111 >> 32;
              v1112 = v1108 + v1109;
              *(&v1111 + 1) = v1112;
              *&v1111 = v1107;
              v1113 = v1111 >> 32;
              v1115 = __PAIR128__(v1271, v123) - v1110;
              v1114 = v1115;
              v1116 = *(&v1115 + 1) <= v1271 && *(&v1115 + 1) >= v1113;
              v1117 = *(&v1115 + 1) - v1113;
              v1118 = v1275 + v1277 + v1276 - v1273 - v1270 - (v1274[2] + v1272[2] + HIDWORD(v1112));
              v1119 = !v1116;
              v1120 = v1118 - v1119;
              if (v1120 < 0)
              {
                v1120 = ~v1120;
                v1117 = ~v1117;
                v1114 = ~v1115;
                v1121 = 0x8000000000000000;
              }

              else
              {
                v1121 = 0;
              }

              v1122 = 1042612833 * HIDWORD(v1114);
              v1123 = 542101086 * v1114 + v1122 + ((1042612833 * v1114) >> 32);
              v1124 = __PAIR128__(HIDWORD(v1122) + 542101086 * HIDWORD(v1114), (v1114 >> 4) | (HIDWORD(v1114) << 28)) + __PAIR128__(HIDWORD(v1123), (1042612833 * v1114) | (v1123 << 32));
              v1125 = 1042612833 * HIDWORD(v1117);
              v1126 = 542101086 * v1117 + v1125 + ((1042612833 * v1117) >> 32);
              v1127 = __PAIR128__(HIDWORD(v1125) + 542101086 * HIDWORD(v1117), (v1117 >> 4) | (HIDWORD(v1117) << 28)) + __PAIR128__(HIDWORD(v1126), (1042612833 * v1117) | (v1126 << 32));
              v1128 = 1042612833 * HIDWORD(v1120);
              v1129 = 542101086 * v1120 + v1128 + ((1042612833 * v1120) >> 32);
              v1131 = (__PAIR128__(HIDWORD(v1128) + 542101086 * HIDWORD(v1120), (v1120 >> 4) | (HIDWORD(v1120) << 28)) + __PAIR128__(HIDWORD(v1129), (1042612833 * v1120) | (v1129 << 32))) >> 64;
              v1130 = ((v1120 >> 4) | (HIDWORD(v1120) << 28)) + ((1042612833 * v1120) | (v1129 << 32));
              v1116 = __CFADD__(__CFADD__(v1124, v1117 << 60), ((v1117 >> 4) | (HIDWORD(v1117) << 28)) + ((1042612833 * v1117) | (v1126 << 32)));
              v1132 = __CFADD__(v1124, v1117 << 60) + ((v1117 >> 4) | (HIDWORD(v1117) << 28)) + ((1042612833 * v1117) | (v1126 << 32));
              v1133 = v1116;
              v1134 = *(&v1124 + 1) + v1132;
              if (__CFADD__(*(&v1124 + 1), v1132))
              {
                v1135 = 1;
              }

              else
              {
                v1135 = v1133;
              }

              v1136 = *(&v1127 + 1) + v1135;
              v1116 = __CFADD__(v1134, v1120 << 60);
              v1138 = (__PAIR128__(v1130, v1134) + (v1120 << 60)) >> 64;
              v1137 = v1134 + (v1120 << 60);
              v1139 = __CFADD__(v1116, v1130);
              v1140 = v1136 + v1138;
              v1141 = __CFADD__(v1136, v1138) || v1139;
              v1142 = v1131 + v1141;
              if (v1142 > 1)
              {
                v1293 = ((2328306436u * v1134) >> 32) + 2328306436 * HIDWORD(v1137) + (((-1966660860 * v1134) + 2313682944 * HIDWORD(v1137) + ((2313682944u * v1134) >> 32)) >> 32);
                v1165 = v1142 + v1121 + 0x3008000000000000;
                v1169 = v1121 | 0x2FE2000000000000;
              }

              else
              {
                v1143 = __bid128_add(a1, a2 & 0x7FFFFFFFFFFFFFFFLL, 1uLL, 0xB040000000000000, a5, a6);
                v1145 = v1144;
                v1292 = v1144;
                v1146 = __bid128_mul(v1143, v1144, v1143, v1144, a5, a6);
                v1148 = v1147;
                v1149 = __bid128_mul(5uLL, 0xB03E000000000000, v1146, v1147, a5, a6);
                v1287 = v1150;
                v1151 = __bid128_mul(v1143, v1145, v1146, v1148, a5, a6);
                v1153 = v1152;
                v1154 = __bid128_mul(0x67D9DA2155555555uLL, 0x2FFCA45894E48295, v1151, v1152, a5, a6);
                v1156 = __bid128_add(v1149, v1287, v1154, v1155, a5, a6);
                v1288 = v1157;
                v1158 = __bid128_mul(v1143, v1292, v1151, v1153, a5, a6);
                v1160 = __bid128_mul(0x19uLL, 0xB03C000000000000, v1158, v1159, a5, a6);
                v1162 = __bid128_add(v1156, v1288, v1160, v1161, a5, a6);
                v1289 = v1163;
                v1140 = __bid128_add(v1143, v1292, v1162, v1163, a5, a6);
                v1165 = v1164;
                v1166 = __bid128_sub(v1140, v1164, v1143, v1292, a5, a6);
                v1293 = __bid128_sub(v1166, v1167, v1162, v1289, a5, a6);
                v1169 = v1168;
              }

              v1170 = __bid128_mul(a3, a4, v1140, v1165, a5, a6);
              v1172 = v1171;
              v1173 = bid128_ext_fma(v1297, &v1296, &v1295, &v1294, a3, a4, v1140, v1165, v1170, v1171 ^ 0x8000000000000000, a5, a6);
              v1175 = bid128_ext_fma(v1297, &v1296, &v1295, &v1294, a3, a4, v1293, v1169, v1173, v1174, a5, a6);
              v1177 = v1176;
              v14 = __bid128_exp(v1170, v1172, a5, a6);
              v1179 = v1178;
              if (__bid128_isZero(v14, v1178))
              {
                v14 = 0;
                v1180 = *a6 | 0x10;
              }

              else
              {
                if ((~v1179 & 0x7800000000000000) != 0 || (v1179 & 0x7C00000000000000) == 0x7C00000000000000)
                {
                  return bid128_ext_fma(v1297, &v1296, &v1295, &v1294, v14, v1179, v1175, v1177, v14, v1179, a5, a6);
                }

                v1180 = *a6 | 8;
              }

              *a6 = v1180;
            }

            else
            {
              v14 = 0;
              *a6 |= 1u;
            }
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v14 = 1;
          if (!__bid128_quiet_equal(a1, a2 & 0x7FFFFFFFFFFFFFFFLL, 1uLL, 0x3040000000000000uLL, a6))
          {
            v14 = 0;
            __bid128_quiet_less(a1, a2 & 0x7FFFFFFFFFFFFFFFLL, 1uLL, 0x3040000000000000, a6);
          }
        }
      }

      else
      {
        if ((a4 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93)
        {
          return 0;
        }

        if ((a4 & 0x3FFFFFFFFFFFLL) != 0x314DC6448D93)
        {
          return a3;
        }

        v14 = a3;
        if (a3 > 0x38C15B09FFFFFFFFLL)
        {
          return 0;
        }
      }
    }

    else
    {
      if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93)
      {
        return 0;
      }

      v14 = a1;
      if (a1 > 0x38C15B09FFFFFFFFLL && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
      {
        return 0;
      }
    }
  }

  return v14;
}

unint64_t __bid128_rem(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  v5 = a4 & 0x7800000000000000;
  if (((a4 >> 61) & 3) == 3)
  {
    if (v5 == 0x7800000000000000)
    {
      v6 = 0xFE00000000000000;
      if ((a4 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
      {
        if ((a4 & 0x3FFFFFFFFFFFLL) != 0x314DC6448D93 || a3 < 0x38C15B0A00000000)
        {
          v6 = 0xFE003FFFFFFFFFFFLL;
          v7 = a3;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      LODWORD(v9) = 0;
      v10 = 0;
      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v4 = 0;
      }

      else
      {
        v4 = v7;
      }

      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v6 = 0xF800000000000000;
      }

      v8 = v6 & a4;
    }

    else
    {
      v4 = 0;
      v8 = 0;
      v10 = 0;
      v9 = (a4 >> 47) & 0x3FFF;
    }
  }

  else
  {
    v8 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a3 >= 0x378D8E6400000000)
    {
      v4 = 0;
      v8 = 0;
    }

    v9 = (a4 >> 49) & 0x3FFF;
    v10 = v8 | v4;
  }

  v71 = 0uLL;
  v13 = a2 & 0x7800000000000000;
  if (((a2 >> 61) & 3) == 3)
  {
    if (v13 == 0x7800000000000000)
    {
      *&v71 = a1;
      if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && a1 >= 0x38C15B0A00000000)
      {
        *&v71 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        *&v71 = 0;
      }
    }

    goto LABEL_66;
  }

  v14 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    goto LABEL_36;
  }

  if ((a2 & 0x1FFFFFFFFFFFFLL) != 0x1ED09BEAD87C0)
  {
    v31 = a1;
    goto LABEL_37;
  }

  v31 = a1;
  if (a1 >= 0x378D8E6400000000)
  {
LABEL_36:
    v31 = 0;
    v14 = 0;
  }

LABEL_37:
  *&v71 = v31;
  *(&v71 + 1) = v14;
  v15 = (a2 >> 49) & 0x3FFF;
  if (!(v14 | v31))
  {
LABEL_66:
    if ((~a4 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((~a2 & 0x7C00000000000000) == 0)
    {
      if ((~a2 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      return v71;
    }

    v29 = a4 & 0x7C00000000000000;
    if (v13 == 0x7800000000000000 && v29 != 0x7C00000000000000 || !(v8 | v4))
    {
      goto LABEL_82;
    }

    if (v29 == 0x7800000000000000 || v10)
    {
      return 0;
    }

LABEL_77:
    if (v29 == 0x7C00000000000000)
    {
      if ((~a4 & 0x7E00000000000000) == 0)
      {
        my_fpsf[0] |= 1u;
      }

      return v4;
    }

    v4 = a1;
    if (v5 == 0x7800000000000000)
    {
      return v4;
    }

LABEL_82:
    v4 = 0;
    my_fpsf[0] |= 1u;
    return v4;
  }

  if (!v10)
  {
    v29 = a4 & 0x7C00000000000000;
    goto LABEL_77;
  }

  v70[0] = 0;
  v70[1] = 0;
  v16 = v15 - v9;
  if (v15 <= v9)
  {
    if (v16 < -34)
    {
      return a1;
    }

    v32 = (&__bid_power10_table_128 + 16 * (v9 - v15));
    v33 = *v32;
    v34 = v32[1];
    v35 = HIDWORD(v34);
    v36 = v34 * HIDWORD(v4);
    v37 = HIDWORD(v36) + HIDWORD(v34) * HIDWORD(v4);
    v38 = HIDWORD(v34) * v4 + v36 + ((v34 * v4) >> 32);
    v39 = HIDWORD(v38);
    v40 = (v34 * v4) | (v38 << 32);
    v41 = HIDWORD(*v32);
    v42 = *v32 * HIDWORD(v4);
    v43 = *v32 * v4;
    v44 = HIDWORD(v42) + HIDWORD(*v32) * HIDWORD(v4);
    v45 = HIDWORD(*v32) * v4 + v42 + HIDWORD(v43);
    v46 = __PAIR128__(v37, v40) + __PAIR128__(v39, v44 + HIDWORD(v45));
    v47 = v34 * HIDWORD(v8);
    v48 = v34 * v8;
    v49 = v35 * v8;
    v50 = HIDWORD(v47) + v35 * HIDWORD(v8);
    v51 = v49 + v47 + HIDWORD(v48);
    v52 = HIDWORD(v51);
    v53 = v48 | (v51 << 32);
    v54 = v33 * HIDWORD(v8);
    v55 = v33 * v8;
    v56 = HIDWORD(v33) * v8 + v54 + HIDWORD(v55);
    v57 = v55 | (v56 << 32);
    v58 = __PAIR128__(v50, v53) + __PAIR128__(v52, HIDWORD(v54) + v41 * HIDWORD(v8) + HIDWORD(v56));
    v59 = v40 + v44 + HIDWORD(v45) + v57;
    v60 = __CFADD__(v40 + v44 + HIDWORD(v45), v57) + v58;
    v61 = __CFADD__(__CFADD__(v40 + v44 + HIDWORD(v45), v57), v58);
    v62 = *(&v46 + 1) + v60;
    v63 = __CFADD__(*(&v46 + 1), v60) || v61;
    if (v62)
    {
      return a1;
    }

    if (*(&v58 + 1) != v63 << 63 >> 63)
    {
      return a1;
    }

    *(&v65 + 1) = v14;
    *&v65 = v71;
    v64 = v65 >> 63;
    if (v59 > v64)
    {
      return a1;
    }

    else
    {
      v66 = v43 | (v45 << 32);
      if (v59 != v64 || (v4 = a1, v66 < 2 * v71))
      {
        v69 = 0uLL;
        bid___div_128_by_128_1250(v70, &v69, v71, *(&v71 + 1), v66, v59);
        v67 = v69 >> 63;
        if (v67 > v59)
        {
          return __PAIR128__(v59, v66) - v69;
        }

        v68 = 2 * v69;
        if (v67 == v59 && v68 > v66)
        {
          return __PAIR128__(v59, v66) - v69;
        }

        if (v67 == v59 && v68 == v66 && (v70[0] & 1) != 0)
        {
          return __PAIR128__(v59, v66) - v69;
        }

        return v69;
      }
    }
  }

  else
  {
    if (v8)
    {
      v17 = 38;
    }

    else
    {
      v17 = 34;
    }

    do
    {
      v18 = (COERCE_UNSIGNED_INT(v31 + (v14 * 1.8447e19)) >> 23) - 127;
      v19 = v17 - __bid_estimate_decimal_digits[v18];
      v20 = (&__bid_power10_index_binexp_128 + 16 * v18);
      v21 = v20[1];
      if ((v14 - v21) > 0 || v14 == v21 && v31 >= *v20)
      {
        --v19;
      }

      if (v16 >= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v16;
      }

      v23 = (&__bid_power10_table_128 + 16 * v22);
      v24 = *v23;
      v25 = *v23 * HIDWORD(v31);
      v26 = HIDWORD(v24) * v31 + v25 + ((v24 * v31) >> 32);
      bid___div_128_by_128_1250(v70, &v71, (*v23 * v31) | (v26 << 32), v24 * v14 + v23[1] * v31 + HIDWORD(v24) * HIDWORD(v31) + HIDWORD(v25) + HIDWORD(v26), v4, v8);
      v14 = *(&v71 + 1);
      v31 = v71;
      if (v71 == 0)
      {
        return v71;
      }

      if (v16 >= v19)
      {
        v16 -= v19;
      }

      else
      {
        v16 = 0;
      }
    }

    while (v16 >= 1);
    v27 = v71 >> 63;
    if (v27 > v8)
    {
      return __PAIR128__(v8 - *(&v71 + 1), v4) - v71;
    }

    v28 = 2 * v71;
    if (v27 == v8 && v28 > v4)
    {
      return __PAIR128__(v8 - *(&v71 + 1), v4) - v71;
    }

    if (v27 == v8 && v28 == v4 && (v70[0] & 1) != 0)
    {
      return __PAIR128__(v8 - *(&v71 + 1), v4) - v71;
    }

    return v71;
  }

  return v4;
}

unint64_t __bid128_round_integral_exact(unint64_t result, uint64_t a2, int a3, _DWORD *a4)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a4 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 4 * a2;
    goto LABEL_18;
  }

  v4 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v4 = 0;
    v5 = 0;
    goto LABEL_17;
  }

  v5 = result;
  if (result >= 0x378D8E6400000000)
  {
    v6 = a2;
    if (v4 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v6 = a2;
LABEL_18:
  v7 = a2 & 0x8000000000000000;
  v8 = v6 & 0x7FFE000000000000;
  if (!(v5 | v4))
  {
    return 0;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_26;
    }

    if (v8 < 0x2FFC000000000001)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (v8 < 0x2FFC000000000001)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

LABEL_26:
      if (v8 <= 0x2FFA000000000000)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (v8 < 0x2FFC000000000001)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v9 = HIDWORD(v5);
  if (v5 >> 53)
  {
    v10 = HIDWORD(v5);
  }

  else
  {
    v10 = v5;
  }

  if (v5 >> 53)
  {
    v11 = -990;
  }

  else
  {
    v11 = -1022;
  }

  if (v4)
  {
    v10 = v4;
  }

  v12 = COERCE_UNSIGNED_INT64(v10) >> 52;
  if (v4)
  {
    v11 = -958;
  }

  v13 = &__bid_nr_digits + 32 * (v12 + v11 - 1);
  v14 = *v13;
  if (!*v13)
  {
    v14 = *(v13 + 6);
    v15 = *(v13 + 1);
    if (v4 > v15 || v4 == v15 && v5 >= *(v13 + 2))
    {
      ++v14;
    }
  }

  if (v8 > 0x303E000000000000)
  {
    return result;
  }

  v16 = v8 >> 49;
  v17 = (v8 >> 49) - 6176;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (v14 + v17 >= 1)
        {
          v18 = v5;
          v19 = 6175 - v16;
          v20 = __bid_ten2mk128[2 * (6175 - v16)];
          v21 = __bid_ten2mk128[2 * v19 + 1];
          v22 = v21 * HIDWORD(v5);
          v23 = HIDWORD(v22) + HIDWORD(v21) * HIDWORD(v5);
          v24 = HIDWORD(v21) * v5 + v22 + ((v21 * v5) >> 32);
          v25 = (v21 * v5) | (v24 << 32);
          v26 = __bid_ten2mk128[2 * v19];
          v27 = v26 * HIDWORD(v5);
          v28 = v20 * v5;
          v29 = HIDWORD(v20) * v18 + v27 + HIDWORD(v28);
          v30 = v28 | (v29 << 32);
          v32 = v25 + HIDWORD(v27) + HIDWORD(v20) * v9 + HIDWORD(v29);
          v31 = (__PAIR128__(v23, v25) + __PAIR128__(HIDWORD(v24), HIDWORD(v27) + HIDWORD(v20) * v9 + HIDWORD(v29))) >> 64;
          v33 = HIDWORD(v4);
          v34 = v4;
          v35 = v21 * HIDWORD(v4);
          v36 = HIDWORD(v35) + HIDWORD(v21) * HIDWORD(v4);
          v37 = HIDWORD(v21) * v4 + v35 + ((v21 * v4) >> 32);
          v38 = HIDWORD(v37);
          v39 = (v21 * v4) | (v37 << 32);
          v40 = v26 * HIDWORD(v4);
          v41 = v20 * v4;
          v42 = HIDWORD(v40) + HIDWORD(v20) * v33;
          v43 = HIDWORD(v20) * v34 + v40 + HIDWORD(v41);
          v44 = v41 | (v43 << 32);
          v46 = v39 + v42 + HIDWORD(v43);
          v45 = (__PAIR128__(v36, v39) + __PAIR128__(v38, v42 + HIDWORD(v43))) >> 64;
          v47 = __PAIR128__(v46, v32) + v44;
          v48 = __CFADD__(__CFADD__(v32, v44), v46);
          result = v31 + *(&v47 + 1);
          v49 = __CFADD__(v31, *(&v47 + 1)) || v48;
          v50 = v45 + v49;
          if (v8 < 0x3038000000000001)
          {
            v124 = __bid_shiftright128[v19];
            if (v8 < 0x3012000000000001)
            {
              if ((__bid_maskhigh128[v19] & v50) != 0 || result || (v51 = v47 == v21, v47 > v21))
              {
                result = v50 >> v124;
                goto LABEL_217;
              }

              result = v50 >> v124;
            }

            else
            {
              v125 = (v50 << -v124) | (result >> v124);
              if ((__bid_maskhigh128[v19] & result) != 0 || (v51 = v47 == v21, v47 > v21))
              {
                result = v125;
                goto LABEL_217;
              }

              result = v125;
            }
          }

          else
          {
            v51 = v47 == v21;
            if (v47 > v21)
            {
              goto LABEL_217;
            }
          }

          if (!v51 || v30 < v20)
          {
            return result;
          }

LABEL_217:
          *a4 |= 0x20u;
          return result;
        }

        goto LABEL_27;
      }

      if (v14 + v17 >= 0)
      {
        if (v8 < 0x3018000000000001)
        {
          v89 = &__bid_midpoint128[(6156 - v16)];
          v4 += v89[1];
          v88 = (6175 - v16);
        }

        else
        {
          v88 = (6175 - v16);
          v89 = &__bid_midpoint64[v88];
        }

        v126 = *v89;
        v127 = __CFADD__(v126, v5);
        v128 = v126 + v5;
        if (v127)
        {
          v129 = v4 + 1;
        }

        else
        {
          v129 = v4;
        }

        v130 = HIDWORD(v128);
        v131 = v128;
        v132 = __bid_ten2mk128[2 * v88];
        v133 = __bid_ten2mk128[2 * v88 + 1];
        v134 = HIDWORD(v128) * v133;
        v135 = HIDWORD(v134) + HIDWORD(v128) * HIDWORD(v133);
        v136 = v128 * HIDWORD(v133) + v134 + ((v128 * v133) >> 32);
        v137 = (v128 * v133) | (v136 << 32);
        v138 = v132 * HIDWORD(v128);
        v139 = v132 * v128;
        v140 = HIDWORD(v132) * v131 + v138 + HIDWORD(v139);
        v141 = v139 | (v140 << 32);
        v142 = __PAIR128__(v135, v137) + __PAIR128__(HIDWORD(v136), HIDWORD(v138) + HIDWORD(v132) * v130 + HIDWORD(v140));
        v143 = HIDWORD(v129);
        v144 = v129;
        v145 = HIDWORD(v129) * v133;
        v146 = HIDWORD(v145) + HIDWORD(v129) * HIDWORD(v133);
        v147 = v129 * HIDWORD(v133) + v145 + ((v129 * v133) >> 32);
        v148 = HIDWORD(v147);
        v149 = (v129 * v133) | (v147 << 32);
        v150 = HIDWORD(v129) * v132;
        v151 = v129 * v132;
        v152 = HIDWORD(v150) + v143 * HIDWORD(v132);
        v153 = v144 * HIDWORD(v132) + v150 + HIDWORD(v151);
        v154 = v151 | (v153 << 32);
        v156 = v149 + v152 + HIDWORD(v153);
        v155 = (__PAIR128__(v146, v149) + __PAIR128__(v148, v152 + HIDWORD(v153))) >> 64;
        v157 = __PAIR128__(v156, v154) + v142;
        v158 = __CFADD__(__CFADD__(v154, v142), v156);
        result = *(&v142 + 1) + *(&v157 + 1);
        v159 = __CFADD__(*(&v142 + 1), *(&v157 + 1)) || v158;
        v160 = v155 + v159;
        if (v8 < 0x3038000000000001)
        {
          v162 = __bid_shiftright128[v88];
          if (v8 < 0x3012000000000001)
          {
            v207 = v160 >> v162;
            v208 = __bid_maskhigh128[v88] & v160;
            v209 = __bid_onehalf128[v88];
            if (v208 <= v209 && (v208 != v209 || !result && !v157 && !v141) || v208 != v209 || result || (v161 = v157 == v133, v157 > v133))
            {
              result = v207;
              goto LABEL_226;
            }

            result = v207;
          }

          else
          {
            v163 = (v160 << -v162) | (result >> v162);
            v164 = __bid_maskhigh128[v88] & result;
            v165 = __bid_onehalf128[v88];
            if (v164 <= v165 && (v164 != v165 || !(v157 | v141)) || v164 != v165 || (v161 = v157 == v133, v157 > v133))
            {
              result = v163;
              goto LABEL_226;
            }

            result = v163;
          }
        }

        else
        {
          if (v157 <= 0x8000000000000000 && (v157 != 0x8000000000000000 || !v141))
          {
            goto LABEL_226;
          }

          v161 = (v157 ^ 0x8000000000000000) == v133;
          if ((v157 ^ 0x8000000000000000) > v133)
          {
            goto LABEL_226;
          }
        }

        if (!v161 || v141 < v132)
        {
          return result;
        }

LABEL_226:
        *a4 |= 0x20u;
        return result;
      }

LABEL_27:
      result = 0;
LABEL_32:
      *a4 |= 0x20u;
      return result;
    }

    if (v14 + v17 >= 1)
    {
      v54 = v5;
      v55 = 6175 - v16;
      v56 = __bid_ten2mk128[2 * (6175 - v16)];
      v57 = __bid_ten2mk128[2 * v55 + 1];
      v58 = v57 * HIDWORD(v5);
      v59 = HIDWORD(v58) + HIDWORD(v57) * HIDWORD(v5);
      v60 = HIDWORD(v57) * v5 + v58 + ((v57 * v5) >> 32);
      v61 = (v57 * v5) | (v60 << 32);
      v62 = __bid_ten2mk128[2 * v55];
      v63 = v62 * HIDWORD(v5);
      v64 = v56 * v5;
      v65 = HIDWORD(v56) * v54 + v63 + HIDWORD(v64);
      v66 = v64 | (v65 << 32);
      v68 = v61 + HIDWORD(v63) + HIDWORD(v56) * v9 + HIDWORD(v65);
      v67 = (__PAIR128__(v59, v61) + __PAIR128__(HIDWORD(v60), HIDWORD(v63) + HIDWORD(v56) * v9 + HIDWORD(v65))) >> 64;
      v69 = HIDWORD(v4);
      v70 = v4;
      v71 = v57 * HIDWORD(v4);
      v72 = HIDWORD(v71) + HIDWORD(v57) * HIDWORD(v4);
      v73 = HIDWORD(v57) * v4 + v71 + ((v57 * v4) >> 32);
      v74 = HIDWORD(v73);
      v75 = (v57 * v4) | (v73 << 32);
      v76 = v62 * HIDWORD(v4);
      v77 = v56 * v4;
      v78 = HIDWORD(v76) + HIDWORD(v56) * v69;
      v79 = HIDWORD(v56) * v70 + v76 + HIDWORD(v77);
      v80 = v77 | (v79 << 32);
      v82 = v75 + v78 + HIDWORD(v79);
      v81 = (__PAIR128__(v72, v75) + __PAIR128__(v74, v78 + HIDWORD(v79))) >> 64;
      v83 = __PAIR128__(v82, v68) + v80;
      v84 = __CFADD__(__CFADD__(v68, v80), v82);
      v85 = v67 + *(&v83 + 1);
      v86 = __CFADD__(v67, *(&v83 + 1)) || v84;
      v87 = v81 + v86;
      if (v8 >= 0x3038000000000001)
      {
        if (v83 > v57)
        {
LABEL_77:
          *a4 |= 0x20u;
          if (v7)
          {
            return v85;
          }

          else
          {
            return v85 + 1;
          }
        }

        if (v83 == v57)
        {
          result = v85;
          if (v66 < v56)
          {
            return result;
          }

          goto LABEL_77;
        }

        return v85;
      }

      v123 = __bid_shiftright128[v55];
      if (v8 >= 0x3012000000000001)
      {
        result = (v87 << -v123) | (v85 >> v123);
        if ((__bid_maskhigh128[v55] & v85) == 0 && v83 <= v57 && (v83 != v57 || v66 < v56))
        {
          return result;
        }

        *a4 |= 0x20u;
        if (v7)
        {
          return result;
        }

        return ++result;
      }

      result = v87 >> v123;
      if ((__bid_maskhigh128[v55] & v87) != 0 || v85 || v83 > v57 || v83 == v57 && v66 >= v56)
      {
        *a4 |= 0x20u;
        result += a2 >= 0;
      }

      return result;
    }

LABEL_29:
    result = a2 >= 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    if (v14 + v17 < 0)
    {
      goto LABEL_27;
    }

    if (v8 < 0x3018000000000001)
    {
      v53 = &__bid_midpoint128[(6156 - v16)];
      v4 += v53[1];
      v52 = (6175 - v16);
    }

    else
    {
      v52 = (6175 - v16);
      v53 = &__bid_midpoint64[v52];
    }

    v166 = *v53;
    v127 = __CFADD__(v166, v5);
    v167 = v166 + v5;
    if (v127)
    {
      v168 = v4 + 1;
    }

    else
    {
      v168 = v4;
    }

    v169 = HIDWORD(v167);
    v170 = v167;
    v171 = __bid_ten2mk128[2 * v52];
    v172 = __bid_ten2mk128[2 * v52 + 1];
    v173 = HIDWORD(v167) * v172;
    v174 = HIDWORD(v173) + HIDWORD(v167) * HIDWORD(v172);
    v175 = v167 * HIDWORD(v172) + v173 + ((v167 * v172) >> 32);
    v176 = (v167 * v172) | (v175 << 32);
    v177 = v171 * HIDWORD(v167);
    v178 = v171 * v167;
    v179 = HIDWORD(v171) * v170 + v177 + HIDWORD(v178);
    v180 = v178 | (v179 << 32);
    v182 = v176 + HIDWORD(v177) + HIDWORD(v171) * v169 + HIDWORD(v179);
    v181 = (__PAIR128__(v174, v176) + __PAIR128__(HIDWORD(v175), HIDWORD(v177) + HIDWORD(v171) * v169 + HIDWORD(v179))) >> 64;
    v183 = HIDWORD(v168);
    v184 = v168;
    v185 = HIDWORD(v168) * v172;
    v186 = HIDWORD(v185) + HIDWORD(v168) * HIDWORD(v172);
    v187 = v168 * HIDWORD(v172) + v185 + ((v168 * v172) >> 32);
    v188 = HIDWORD(v187);
    v189 = (v168 * v172) | (v187 << 32);
    v190 = HIDWORD(v168) * v171;
    v191 = v168 * v171;
    v192 = HIDWORD(v190) + v183 * HIDWORD(v171);
    v193 = v184 * HIDWORD(v171) + v190 + HIDWORD(v191);
    v194 = v191 | (v193 << 32);
    v196 = v189 + v192 + HIDWORD(v193);
    v195 = (__PAIR128__(v186, v189) + __PAIR128__(v188, v192 + HIDWORD(v193))) >> 64;
    v197 = __PAIR128__(v196, v194) + v182;
    v198 = __CFADD__(__CFADD__(v194, v182), v196);
    result = v181 + *(&v197 + 1);
    v199 = __CFADD__(v181, *(&v197 + 1)) || v198;
    v200 = v195 + v199;
    if (v8 < 0x3038000000000001)
    {
      v203 = __bid_shiftright128[v52];
      if (v8 < 0x3012000000000001)
      {
        v210 = v200 >> v203;
        v211 = __bid_maskhigh128[v52] & v200;
        if ((v210 & 1) != 0 && !v211 && !result && (v197 < v172 || v197 == v172 && v180 < v171))
        {
          --v210;
        }

        v212 = __bid_onehalf128[v52];
        if (v211 <= v212 && (v211 != v212 || !result && !v197 && !v180) || v211 != v212 || result || (v201 = v197 == v172, v197 > v172))
        {
          result = v210;
          goto LABEL_235;
        }

        result = v210;
      }

      else
      {
        v204 = (v200 << -v203) | (result >> v203);
        v205 = __bid_maskhigh128[v52] & result;
        if ((v204 & 1) != 0 && !v205 && (v197 < v172 || v197 == v172 && v180 < v171))
        {
          --v204;
        }

        v206 = __bid_onehalf128[v52];
        if (v205 <= v206 && (v205 != v206 || !(v197 | v180)) || v205 != v206 || (v201 = v197 == v172, v197 > v172))
        {
          result = v204;
          goto LABEL_235;
        }

        result = v204;
      }
    }

    else
    {
      if ((result & 1) != 0 && (v197 < v172 || v197 == v172 && v180 < v171))
      {
        --result;
      }

      if (v197 <= 0x8000000000000000 && (v197 != 0x8000000000000000 || !v180))
      {
        goto LABEL_235;
      }

      v201 = (v197 ^ 0x8000000000000000) == v172;
      if ((v197 ^ 0x8000000000000000) > v172)
      {
        goto LABEL_235;
      }
    }

    if (!v201 || v180 < v171)
    {
      return result;
    }

LABEL_235:
    *a4 |= 0x20u;
    return result;
  }

  if (v14 + v17 < 1)
  {
LABEL_31:
    result = a2 < 0;
    goto LABEL_32;
  }

  v90 = v5;
  v91 = 6175 - v16;
  v92 = __bid_ten2mk128[2 * (6175 - v16)];
  v93 = __bid_ten2mk128[2 * v91 + 1];
  v94 = v93 * HIDWORD(v5);
  v95 = HIDWORD(v94) + HIDWORD(v93) * HIDWORD(v5);
  v96 = HIDWORD(v93) * v5 + v94 + ((v93 * v5) >> 32);
  v97 = (v93 * v5) | (v96 << 32);
  v98 = __bid_ten2mk128[2 * v91];
  v99 = v98 * HIDWORD(v5);
  v100 = v92 * v5;
  v101 = HIDWORD(v92) * v90 + v99 + HIDWORD(v100);
  v102 = v100 | (v101 << 32);
  v104 = v97 + HIDWORD(v99) + HIDWORD(v92) * v9 + HIDWORD(v101);
  v103 = (__PAIR128__(v95, v97) + __PAIR128__(HIDWORD(v96), HIDWORD(v99) + HIDWORD(v92) * v9 + HIDWORD(v101))) >> 64;
  v105 = HIDWORD(v4);
  v106 = v4;
  v107 = v93 * HIDWORD(v4);
  v108 = HIDWORD(v107) + HIDWORD(v93) * HIDWORD(v4);
  v109 = HIDWORD(v93) * v4 + v107 + ((v93 * v4) >> 32);
  v110 = HIDWORD(v109);
  v111 = (v93 * v4) | (v109 << 32);
  v112 = v98 * HIDWORD(v4);
  v113 = v92 * v4;
  v114 = HIDWORD(v112) + HIDWORD(v92) * v105;
  v115 = HIDWORD(v92) * v106 + v112 + HIDWORD(v113);
  v116 = v113 | (v115 << 32);
  v118 = v111 + v114 + HIDWORD(v115);
  v117 = (__PAIR128__(v108, v111) + __PAIR128__(v110, v114 + HIDWORD(v115))) >> 64;
  v119 = __PAIR128__(v118, v104) + v116;
  v120 = __CFADD__(__CFADD__(v104, v116), v118);
  v85 = v103 + *(&v119 + 1);
  v121 = __CFADD__(v103, *(&v119 + 1)) || v120;
  v122 = v117 + v121;
  if (v8 >= 0x3038000000000001)
  {
    if (v119 <= v93)
    {
      if (v119 != v93)
      {
        return v85;
      }

      result = v85;
      if (v102 < v92)
      {
        return result;
      }
    }

    *a4 |= 0x20u;
    if (v7)
    {
      return v85 + 1;
    }

    else
    {
      return v85;
    }
  }

  v202 = __bid_shiftright128[v91];
  if (v8 >= 0x3012000000000001)
  {
    result = (v122 << -v202) | (v85 >> v202);
    if ((__bid_maskhigh128[v91] & v85) == 0 && v119 <= v93 && (v119 != v93 || v102 < v92))
    {
      return result;
    }

    *a4 |= 0x20u;
    if (!v7)
    {
      return result;
    }

    return ++result;
  }

  result = v122 >> v202;
  if ((__bid_maskhigh128[v91] & v122) != 0 || v85 || v119 > v93 || v119 == v93 && v102 >= v92)
  {
    *a4 |= 0x20u;
    result += a2 >> 63;
  }

  return result;
}

unint64_t __bid128_round_integral_nearest_even(unint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a3 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4 * a2;
    goto LABEL_18;
  }

  v3 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v3 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = result;
  if (result >= 0x378D8E6400000000)
  {
    v5 = a2;
    if (v3 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v5 = a2;
LABEL_18:
  v6 = v5 & 0x7FFE000000000000;
  if (!(v4 | v3))
  {
    return 0;
  }

  if (v6 <= 0x2FFA000000000000)
  {
    return 0;
  }

  v7 = HIDWORD(v4);
  if (v4 >> 53)
  {
    v8 = -990;
  }

  else
  {
    v7 = v4;
    v8 = -1022;
  }

  if (v3)
  {
    v7 = v3;
  }

  v9 = COERCE_UNSIGNED_INT64(v7) >> 52;
  if (v3)
  {
    v8 = -958;
  }

  v10 = &__bid_nr_digits + 32 * (v9 + v8 - 1);
  v11 = *v10;
  if (!*v10)
  {
    v11 = *(v10 + 6);
    v12 = *(v10 + 1);
    if (v3 > v12 || v3 == v12 && v4 >= *(v10 + 2))
    {
      ++v11;
    }
  }

  if (v6 <= 0x303E000000000000)
  {
    v13 = v6 >> 49;
    if (((v6 >> 49) - 6176 + v11) < 0)
    {
      return 0;
    }

    if (v6 < 0x3018000000000001)
    {
      v15 = &__bid_midpoint128[(6156 - v13)];
      v3 += v15[1];
      v14 = (6175 - v13);
    }

    else
    {
      v14 = (6175 - v13);
      v15 = &__bid_midpoint64[v14];
    }

    v16 = *v15 + v4;
    if (__CFADD__(*v15, v4))
    {
      v17 = v3 + 1;
    }

    else
    {
      v17 = v3;
    }

    v18 = HIDWORD(v16);
    v19 = v16;
    v21 = __bid_ten2mk128[2 * v14];
    v20 = __bid_ten2mk128[2 * v14 + 1];
    v22 = HIDWORD(v16) * v20;
    v23 = HIDWORD(v22) + HIDWORD(v16) * HIDWORD(v20);
    v24 = v16 * HIDWORD(v20) + v22 + ((v16 * v20) >> 32);
    v25 = (v16 * v20) | (v24 << 32);
    v26 = v21 * HIDWORD(v16);
    v27 = v21 * v16;
    v28 = HIDWORD(v21) * v19 + v26 + HIDWORD(v27);
    v29 = v27 | (v28 << 32);
    v30 = __PAIR128__(v23, v25) + __PAIR128__(HIDWORD(v24), HIDWORD(v26) + HIDWORD(v21) * v18 + HIDWORD(v28));
    v31 = HIDWORD(v17);
    v32 = v17;
    v33 = HIDWORD(v17) * v20;
    v34 = HIDWORD(v33) + HIDWORD(v17) * HIDWORD(v20);
    v35 = v17 * HIDWORD(v20) + v33 + ((v17 * v20) >> 32);
    v36 = HIDWORD(v35);
    v37 = (v17 * v20) | (v35 << 32);
    v38 = HIDWORD(v17) * v21;
    v39 = v17 * v21;
    v40 = HIDWORD(v38) + v31 * HIDWORD(v21);
    v41 = v32 * HIDWORD(v21) + v38 + HIDWORD(v39);
    v42 = v39 | (v41 << 32);
    v43 = __PAIR128__(v34, v37) + __PAIR128__(v36, v40 + HIDWORD(v41));
    v44 = v42 + v30;
    v45 = __CFADD__(__CFADD__(v42, v30), v43);
    v46 = __CFADD__(v42, v30) + v43;
    v47 = v45;
    v48 = *(&v30 + 1) + v46;
    if (__CFADD__(*(&v30 + 1), v46))
    {
      v49 = 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = *(&v43 + 1) + v49;
    if (v6 < 0x3038000000000001)
    {
      v51 = __bid_shiftright128[v14];
      if (v6 < 0x3012000000000001)
      {
        result = v50 >> v51;
        if (((v50 >> v51) & 1) != 0 && (__bid_maskhigh128[v14] & v50) == 0 && !v48 && (v44 < v20 || v44 == v20 && v29 < v21))
        {
          --result;
        }
      }

      else
      {
        v52 = v50 << -v51;
        v53 = v48 >> v51;
        result = v52 | v53;
        if (((v52 | v53) & 1) != 0 && (__bid_maskhigh128[v14] & v48) == 0 && (v44 < v20 || v44 == v20 && v29 < v21))
        {
          --result;
        }
      }
    }

    else if ((v48 & 1) != 0 && (v44 < v20 || v44 == v20 && v29 < v21))
    {
      return v48 - 1;
    }

    else
    {
      return v48;
    }
  }

  return result;
}

unint64_t __bid128_round_integral_negative(unint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a3 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4 * a2;
    goto LABEL_18;
  }

  v3 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v3 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = result;
  if (result >= 0x378D8E6400000000)
  {
    v5 = a2;
    if (v3 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v5 = a2;
LABEL_18:
  v6 = a2 & 0x8000000000000000;
  v7 = v5 & 0x7FFE000000000000;
  if (!(v4 | v3))
  {
    return 0;
  }

  if (v7 <= 0x2FFC000000000000)
  {
    return a2 < 0;
  }

  v8 = HIDWORD(v4);
  if (v4 >> 53)
  {
    v9 = HIDWORD(v4);
  }

  else
  {
    v9 = v4;
  }

  if (v4 >> 53)
  {
    v10 = -990;
  }

  else
  {
    v10 = -1022;
  }

  if (v3)
  {
    v9 = v3;
  }

  v11 = COERCE_UNSIGNED_INT64(v9) >> 52;
  if (v3)
  {
    v10 = -958;
  }

  v12 = &__bid_nr_digits + 32 * (v11 + v10 - 1);
  v13 = *v12;
  if (!*v12)
  {
    v13 = *(v12 + 6);
    v14 = *(v12 + 1);
    if (v3 > v14 || v3 == v14 && v4 >= *(v12 + 2))
    {
      ++v13;
    }
  }

  if (v7 <= 0x303E000000000000)
  {
    v15 = v7 >> 49;
    if (((v7 >> 49) - 6176 + v13) < 1)
    {
      return a2 < 0;
    }

    v16 = v4;
    v17 = 6175 - v15;
    v18 = __bid_ten2mk128[2 * (6175 - v15)];
    v19 = __bid_ten2mk128[2 * (6175 - v15) + 1];
    v20 = v19 * HIDWORD(v4);
    v21 = HIDWORD(v20) + HIDWORD(v19) * HIDWORD(v4);
    v22 = HIDWORD(v19) * v4 + v20 + ((v19 * v4) >> 32);
    v23 = (v19 * v4) | (v22 << 32);
    v24 = __bid_ten2mk128[2 * v17];
    v25 = v24 * HIDWORD(v4);
    v26 = v18 * v4;
    v27 = HIDWORD(v18) * v16 + v25 + HIDWORD(v26);
    v28 = v26 | (v27 << 32);
    v30 = v23 + HIDWORD(v25) + HIDWORD(v18) * v8 + HIDWORD(v27);
    v29 = (__PAIR128__(v21, v23) + __PAIR128__(HIDWORD(v22), HIDWORD(v25) + HIDWORD(v18) * v8 + HIDWORD(v27))) >> 64;
    v31 = HIDWORD(v3);
    v32 = v3;
    v33 = v19 * HIDWORD(v3);
    v34 = HIDWORD(v33) + HIDWORD(v19) * HIDWORD(v3);
    v35 = HIDWORD(v19) * v3 + v33 + ((v19 * v3) >> 32);
    v36 = HIDWORD(v35);
    v37 = (v19 * v3) | (v35 << 32);
    v38 = v24 * HIDWORD(v3);
    v39 = v18 * v3;
    v40 = HIDWORD(v38) + HIDWORD(v18) * v31;
    v41 = HIDWORD(v18) * v32 + v38 + HIDWORD(v39);
    v42 = v39 | (v41 << 32);
    v44 = v37 + v40 + HIDWORD(v41);
    v43 = (__PAIR128__(v34, v37) + __PAIR128__(v36, v40 + HIDWORD(v41))) >> 64;
    v45 = __PAIR128__(v44, v30) + v42;
    v46 = __CFADD__(__CFADD__(v30, v42), v44);
    result = v29 + *(&v45 + 1);
    v47 = __CFADD__(v29, *(&v45 + 1)) || v46;
    v48 = v43 + v47;
    if (v7 >= 0x3038000000000001)
    {
      if (v6 && (v45 > v19 || v45 == v19 && v28 >= v18))
      {
        ++result;
      }

      return result;
    }

    v49 = __bid_shiftright128[v17];
    if (v7 >= 0x3012000000000001)
    {
      v50 = (v48 << -v49) | (result >> v49);
      if (!v6)
      {
        return v50;
      }

      if ((__bid_maskhigh128[v17] & result) == 0 && v45 <= v19)
      {
        if (v45 != v19)
        {
          return v50;
        }

        result = v50;
        if (v28 < v18)
        {
          return result;
        }
      }

      return v50 + 1;
    }

    if (!v6)
    {
      return v48 >> v49;
    }

    if ((__bid_maskhigh128[v17] & v48) == 0 && !result && v45 <= v19)
    {
      if (v45 != v19)
      {
        return v48 >> v49;
      }

      result = v48 >> v49;
      if (v28 < v18)
      {
        return result;
      }
    }

    return (v48 >> v49) + 1;
  }

  return result;
}

unint64_t __bid128_round_integral_zero(unint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a3 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4 * a2;
    goto LABEL_18;
  }

  v3 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v3 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = result;
  if (result >= 0x378D8E6400000000)
  {
    v5 = a2;
    if (v3 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v5 = a2;
LABEL_18:
  v6 = v5 & 0x7FFE000000000000;
  if (!(v4 | v3))
  {
    return 0;
  }

  if (v6 <= 0x2FFC000000000000)
  {
    return 0;
  }

  if (v4 >> 53)
  {
    v7 = HIDWORD(v4);
  }

  else
  {
    v7 = v4;
  }

  if (v4 >> 53)
  {
    v8 = -990;
  }

  else
  {
    v8 = -1022;
  }

  if (v3)
  {
    v7 = v3;
  }

  v9 = COERCE_UNSIGNED_INT64(v7) >> 52;
  if (v3)
  {
    v8 = -958;
  }

  v10 = &__bid_nr_digits + 32 * (v9 + v8 - 1);
  v11 = *v10;
  if (!*v10)
  {
    v11 = *(v10 + 6);
    v12 = *(v10 + 1);
    if (v3 > v12 || v3 == v12 && v4 >= *(v10 + 2))
    {
      ++v11;
    }
  }

  if (v6 <= 0x303E000000000000)
  {
    v13 = v6 >> 49;
    if (((v6 >> 49) - 6176 + v11) < 1)
    {
      return 0;
    }

    v14 = 6175 - v13;
    v15 = __bid_ten2mk128[2 * (6175 - v13)];
    v16 = __bid_ten2mk128[2 * v14 + 1];
    v17 = HIDWORD(v16);
    v18 = v16 * HIDWORD(v4);
    v19 = HIDWORD(v18) + HIDWORD(v16) * HIDWORD(v4);
    v20 = HIDWORD(v16) * v4 + v18 + ((v16 * v4) >> 32);
    v21 = HIDWORD(v20);
    v22 = (v16 * v4) | (v20 << 32);
    v23 = HIDWORD(v15);
    v24 = __PAIR128__(v19, v22) + __PAIR128__(v21, ((v15 * HIDWORD(v4)) >> 32) + HIDWORD(v15) * HIDWORD(v4) + ((HIDWORD(v15) * v4 + (v15 * HIDWORD(v4)) + ((v15 * v4) >> 32)) >> 32));
    v25 = HIDWORD(v3);
    LODWORD(v22) = v3;
    v26 = v16 * HIDWORD(v3);
    v27 = v16 * v3;
    v28 = v17 * v3;
    v29 = HIDWORD(v26) + v17 * HIDWORD(v3);
    v30 = v28 + v26 + HIDWORD(v27);
    v31 = HIDWORD(v30);
    v32 = v27 | (v30 << 32);
    v33 = v15 * HIDWORD(v3);
    v34 = v15 * v3;
    v35 = HIDWORD(v15) * v22 + v33 + HIDWORD(v34);
    v36 = v34 | (v35 << 32);
    v37 = __PAIR128__(v29, v32) + __PAIR128__(v31, HIDWORD(v33) + v23 * v25 + HIDWORD(v35));
    v38 = __CFADD__(__CFADD__(v36, v24), v32 + HIDWORD(v33) + v23 * v25 + HIDWORD(v35));
    v39 = __CFADD__(v36, v24) + v32 + HIDWORD(v33) + v23 * v25 + HIDWORD(v35);
    v40 = v38;
    result = *(&v24 + 1) + v39;
    if (__CFADD__(*(&v24 + 1), v39))
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v42 = *(&v37 + 1) + v41;
    if (v6 <= 0x3038000000000000)
    {
      v43 = __bid_shiftright128[v14];
      v44 = -v43;
      v45 = result >> v43;
      v46 = v42 >> v43;
      v47 = (v42 << v44) | v45;
      if (v6 >= 0x3012000000000001)
      {
        return v47;
      }

      else
      {
        return v46;
      }
    }
  }

  return result;
}

unint64_t __bid128_sin(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  v126 = 0uLL;
  if ((~a2 & 0x6000000000000000) != 0)
  {
    v6 = ((a2 >> 49) & 0x3FFF) - 6176;
    v7 = a2 & 0x1FFFFFFFFFFFFLL;
    if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || a1 >= 0x378D8E6400000000 && v7 == 0x1ED09BEAD87C0)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v8 = a1;
    }

LABEL_16:
    if (v8 | v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = -99999;
    }

    if (v9 > -36)
    {
      v11 = (&bid_decimal128_moduli_1316 + 48 * (v9 + 35));
      v12 = *v11;
      v13 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      v16 = v11[4];
      v124 = v11[5];
      v17 = HIDWORD(*v11);
      v18 = ((v12 * HIDWORD(v8)) >> 32) + HIDWORD(v12) * HIDWORD(v8) + ((HIDWORD(v12) * v8 + (v12 * HIDWORD(v8)) + ((v12 * v8) >> 32)) >> 32);
      v19 = HIDWORD(v13);
      v20 = v13 * HIDWORD(v8);
      v21 = HIDWORD(v20) + HIDWORD(v13) * HIDWORD(v8);
      v22 = HIDWORD(v13) * v8 + v20 + ((v13 * v8) >> 32);
      v23 = v21 + HIDWORD(v22);
      v24 = (v13 * v8) | (v22 << 32);
      v25 = HIDWORD(v15);
      v26 = v15 * HIDWORD(v8);
      v27 = HIDWORD(v26) + HIDWORD(v15) * HIDWORD(v8);
      v28 = HIDWORD(v15) * v8 + v26 + ((v15 * v8) >> 32);
      v29 = v27 + HIDWORD(v28);
      v30 = (v15 * v8) | (v28 << 32);
      v31 = HIDWORD(v14);
      v32 = v14 * HIDWORD(v8);
      v33 = HIDWORD(v32) + HIDWORD(v14) * HIDWORD(v8);
      v34 = HIDWORD(v14) * v8 + v32 + ((v14 * v8) >> 32);
      v35 = v33 + HIDWORD(v34);
      v36 = (v14 * v8) | (v34 << 32);
      v37 = HIDWORD(v16);
      v38 = v16 * HIDWORD(v8);
      v39 = HIDWORD(v16) * v8 + v38 + ((v16 * v8) >> 32);
      v40 = (v16 * v8) | (v39 << 32);
      v41 = __PAIR128__(v30, v18) + v24;
      v42 = __CFADD__(__CFADD__(v18, v24), v30);
      v43 = __CFADD__(v23, *(&v41 + 1));
      v44 = v23 + *(&v41 + 1);
      v45 = v43 || v42;
      v43 = __CFADD__(v36, v45);
      v46 = v36 + v45;
      v47 = v43;
      v48 = v29 + v46;
      if (__CFADD__(v29, v46))
      {
        v49 = 1;
      }

      else
      {
        v49 = v47;
      }

      v43 = __CFADD__(v40, v49);
      v50 = v40 + v49;
      v51 = v43;
      v52 = v35 + v50;
      if (__CFADD__(v35, v50))
      {
        v53 = 1;
      }

      else
      {
        v53 = v51;
      }

      v54 = HIDWORD(v7);
      v55 = *v11 * HIDWORD(v7);
      v56 = v12 * v7;
      v57 = HIDWORD(v55) + v17 * HIDWORD(v7);
      v58 = v17 * v7 + v55 + HIDWORD(v56);
      v59 = v57 + HIDWORD(v58);
      v60 = v56 | (v58 << 32);
      v61 = v13 * HIDWORD(v7);
      v62 = v13 * v7;
      v63 = v19 * v7;
      v64 = HIDWORD(v61) + v19 * HIDWORD(v7);
      v65 = v63 + v61 + HIDWORD(v62);
      v66 = v64 + HIDWORD(v65);
      v67 = v62 | (v65 << 32);
      v68 = v15 * HIDWORD(v7);
      v69 = v15 * v7;
      v70 = HIDWORD(v68) + v25 * HIDWORD(v7);
      v71 = v25 * v7 + v68 + HIDWORD(v69);
      v72 = v70 + HIDWORD(v71);
      v73 = v69 | (v71 << 32);
      v74 = v14 * HIDWORD(v7);
      v75 = v14 * v7;
      v76 = v31 * v7 + v74 + HIDWORD(v75);
      v77 = v75 | (v76 << 32);
      v78 = v16 * v7;
      v79 = __PAIR128__(v73, v59) + v67;
      LODWORD(v80) = __CFADD__(__CFADD__(v59, v67), v73);
      v81 = v66 + *(&v79 + 1);
      if (__CFADD__(v66, *(&v79 + 1)))
      {
        v80 = 1;
      }

      else
      {
        v80 = v80;
      }

      v43 = __CFADD__(v77, v80);
      v82 = v77 + v80;
      LODWORD(v83) = v43;
      v43 = __CFADD__(v72, v82);
      v84 = v72 + v82;
      if (v43)
      {
        v83 = 1;
      }

      else
      {
        v83 = v83;
      }

      v85 = __CFADD__(v60, v41) + v79;
      LODWORD(v86) = __CFADD__(__CFADD__(v60, v41), v79);
      v43 = __CFADD__(v44, v85);
      v87 = v44 + v85;
      if (v43)
      {
        v86 = 1;
      }

      else
      {
        v86 = v86;
      }

      v43 = __CFADD__(v81, v86);
      v88 = v81 + v86;
      LODWORD(v89) = v43;
      v43 = __CFADD__(v88, v48);
      v90 = v88 + v48;
      if (v43)
      {
        v89 = 1;
      }

      else
      {
        v89 = v89;
      }

      v43 = __CFADD__(v84, v89);
      v91 = v84 + v89;
      LODWORD(v92) = v43;
      v43 = __CFADD__(v91, v52);
      v93 = v91 + v52;
      if (v43)
      {
        v92 = 1;
      }

      else
      {
        v92 = v92;
      }

      v94 = v78 + v31 * v54 + HIDWORD(v74) + v37 * HIDWORD(v8) + v124 * v8 + HIDWORD(v38) + HIDWORD(v76) + HIDWORD(v39) + v83 + v53 + v92;
      *(&v96 + 1) = v94;
      *&v96 = v93;
      v95 = v96 >> 62;
      *(&v96 + 1) = v93;
      *&v96 = v90;
      v97 = v96 >> 62;
      v98 = v94 >> 62;
      *(&v96 + 1) = v90;
      *&v96 = v87;
      v99 = v96 >> 62;
      v100 = 4 * v87;
      if (v95 >= 0)
      {
        v101 = a2 >> 63;
      }

      else
      {
        LODWORD(v98) = (v98 + 1) & 3;
        v101 = a2 >= 0;
      }

      if (v95 >= 0)
      {
        v102 = v95;
      }

      else
      {
        v102 = ~v95;
      }

      if (v95 >= 0)
      {
        v103 = v100;
      }

      else
      {
        v97 = ~v97;
        v99 = ~v99;
        v103 = ~v100;
      }

      if (a2 >= 0)
      {
        v104 = v98;
      }

      else
      {
        v104 = -v98 & 3;
      }

      if (v102)
      {
        v105 = 16382;
      }

      else
      {
        v105 = 16318;
      }

      if (v102)
      {
        v106 = v102;
      }

      else
      {
        v106 = v97;
      }

      if (v102)
      {
        v103 = v99;
      }

      else
      {
        v97 = v99;
      }

      v107 = vdupq_n_s64(v106);
      v108 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v107, xmmword_1C1F58C70), vandq_s8(v107, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v107, xmmword_1C1F58C80), vandq_s8(v107, xmmword_1C1F58CA0))));
      *v108.i8 = vorr_s8(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
      v109 = v108.i32[0] | v108.i32[1] | (2 * ((v106 & 0xCCCCCCCCCCCCCCCCLL) <= (v106 & 0x3333333333333333)));
      if ((v106 & 0xAAAAAAAAAAAAAAAALL) <= (v106 & 0x5555555555555555))
      {
        ++v109;
      }

      v110 = (v103 >> -v109) + (v97 << v109);
      if (v109)
      {
        v106 = (v97 >> -v109) + (v106 << v109);
      }

      else
      {
        v110 = v97;
      }

      *(&v111 + 1) = v106;
      *&v111 = v110;
      v127.n128_u64[0] = v111 >> 15;
      v127.n128_u64[1] = (v101 << 63) | ((v105 - v109) << 48) | (v106 >> 15) & 0xFFFFFFFFFFFFLL;
      bid_f128_mul(&v127, &c_pi_ov_2_1296, &v127);
      if (v104 > 1)
      {
        v112 = a3;
        if (v104 == 2)
        {
          v116 = &__dpml_bid_trig_x_table;
          v117 = 0;
          v118 = 1;
        }

        else
        {
          v116 = &unk_1C1F60888;
          v117 = 2;
          v118 = 2;
        }

        __dpml_bid_C_ux_trig__(&v127, v117, v118, v116, &v126, v129);
        memset(v130, 0, 24);
        __dpml_bid_unpack_x_or_y__(&v126, 0, v130, &__dpml_bid_bid_x_table, &v126, v129);
      }

      else
      {
        v112 = a3;
        if (v104)
        {
          v113 = &unk_1C1F60888;
          v114 = 2;
          v115 = 2;
        }

        else
        {
          v113 = &__dpml_bid_trig_x_table;
          v114 = 0;
          v115 = 1;
        }

        __dpml_bid_C_ux_trig__(&v127, v114, v115, v113, &v126, v129);
      }

      v121 = v126.n128_u64[1];
      v120 = v126.n128_u64[0];
      v122 = v112;
    }

    else
    {
      if (v9 == -99999)
      {
        return __bid128_mul(a1, a2, 1uLL, 0x3040000000000000, a3, my_fpsf);
      }

      if (v9 <= 0xFFFFFFCB)
      {
        return bid128_ext_fma(v129, v130, &v127, &v128, a1, a2, 1uLL, 0xAFF0000000000000, a1, a2, a3, my_fpsf);
      }

      v127.n128_u64[0] = __bid128_to_binary128(a1, a2, a3, my_fpsf);
      v127.n128_u64[1] = v119;
      __dpml_bid_C_ux_trig__(&v127, 0, 1, &__dpml_bid_trig_x_table, &v126, v129);
      v121 = v126.n128_u64[1];
      v120 = v126.n128_u64[0];
      v122 = a3;
    }

    return __binary128_to_bid128(v120, v121, v122, my_fpsf);
  }

  if ((~a2 & 0x7800000000000000) != 0)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  if ((~a2 & 0x7C00000000000000) != 0)
  {
    v5 = 0;
    my_fpsf[0] |= 1u;
  }

  else
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      return 0;
    }
  }

  return v5;
}

unint64_t __bid128_sqrt(unint64_t result, unint64_t a2, int a3)
{
  v4 = a2 & 0x8000000000000000;
  if (((a2 >> 61) & 3) == 3)
  {
    if ((a2 & 0x7800000000000000) == 0x7800000000000000)
    {
      v5 = (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93 && result >= 0x38C15B0A00000000;
      if (!v5)
      {
        v7 = result;
      }

      else
      {
        v7 = 0;
      }

      if ((a2 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        result = 0;
      }

      else
      {
        result = v8;
      }

      if ((a2 & 0x7C00000000000000) != 0x7C00000000000000)
      {
        if (!v4)
        {
          return result;
        }

LABEL_66:
        my_fpsf |= 1u;
        return result;
      }

      goto LABEL_61;
    }

    result = 0;
LABEL_60:
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

LABEL_61:
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf |= 1u;
    }

    return result;
  }

  v9 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (a2 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && result >= 0x378D8E6400000000)
  {
    result = 0;
    v9 = 0;
  }

  v10 = (a2 >> 49) & 0x3FFF;
  if (!(v9 | result))
  {
    goto LABEL_60;
  }

  if (v4)
  {
    result = 0;
    goto LABEL_66;
  }

  v11 = a2 >> 49;
  *(&v13 + 1) = v9;
  *&v13 = result;
  v12 = v13 >> 61;
  *(&v13 + 1) = v9;
  *&v13 = result;
  v14 = v12 + (v13 >> 63);
  v15 = 10 * result;
  if (10 * result < 2 * result)
  {
    ++v14;
  }

  if ((v11 & 1) == 0)
  {
    v14 = v9;
    v15 = result;
  }

  v16 = 1.0 / sqrt(v15 + v14 * 1.84467441e19);
  v17 = *&v16 >> 52;
  v18 = HIDWORD(*&v16) & 0xFFFFFLL | 0x100000;
  v19 = v18 * v14;
  v20 = HIDWORD(v19) + v18 * HIDWORD(v14);
  v21 = ((LODWORD(v16) * v14) >> 32) + LODWORD(v16) * HIDWORD(v14) + v19;
  v22 = v18 * v15;
  v23 = LODWORD(v16) * v15;
  v24 = HIDWORD(v23) + LODWORD(v16) * HIDWORD(v15) + v22;
  v25 = LODWORD(v16) * v15;
  v26 = v23 * LODWORD(v16);
  v27 = (LODWORD(v16) * v15) | (v24 << 32);
  v28 = __PAIR128__(v20, (LODWORD(v16) * v14) | (v21 << 32)) + __PAIR128__(HIDWORD(v21), HIDWORD(v22) + v18 * HIDWORD(v15) + HIDWORD(v24));
  v29 = v18 * (LODWORD(v16) * v15);
  v30 = HIDWORD(v26) + v29 + v24 * LODWORD(v16);
  v31 = HIDWORD(v29) + v24 * v18 + HIDWORD(v30);
  v32 = (LODWORD(v16) * v14 + HIDWORD(v22) + v18 * HIDWORD(v15) + HIDWORD(v24)) * v18;
  v33 = HIDWORD(v32) + ((((LODWORD(v16) * v14) | (v21 << 32)) + HIDWORD(v22) + v18 * HIDWORD(v15) + HIDWORD(v24)) >> 32) * v18;
  v34 = DWORD1(v28) * LODWORD(v16) + v32 + ((v28 * LODWORD(v16)) >> 32);
  v35 = v33 + HIDWORD(v34);
  v36 = ((LODWORD(v16) * v14 + HIDWORD(v22) + v18 * HIDWORD(v15) + HIDWORD(v24)) * LODWORD(v16)) | (v34 << 32);
  v37 = ((__PAIR128__(v20, (LODWORD(v16) * v14) | (v21 << 32)) + __PAIR128__(HIDWORD(v21), HIDWORD(v22) + v18 * HIDWORD(v15) + HIDWORD(v24))) >> 64) * v18;
  v38 = HIDWORD(v28) * LODWORD(v16) + v37 + ((DWORD2(v28) * LODWORD(v16)) >> 32);
  v39 = HIDWORD(v37) + ((__PAIR128__(v20, (LODWORD(v16) * v14) | (v21 << 32)) + __PAIR128__(HIDWORD(v21), HIDWORD(v22) + v18 * HIDWORD(v15) + HIDWORD(v24))) >> 96) * v18 + HIDWORD(v38);
  v40 = (DWORD2(v28) * LODWORD(v16)) | (v38 << 32);
  v41 = v31 + v36;
  v5 = __CFADD__(__CFADD__(v31, v36), v40);
  v42 = __CFADD__(v31, v36) + v40;
  LODWORD(v43) = v5;
  v5 = __CFADD__(v35, v42);
  v44 = v35 + v42;
  if (v5)
  {
    v43 = 1;
  }

  else
  {
    v43 = v43;
  }

  v45 = v39 + v43;
  v46 = 2 * v17;
  v47 = *&v16 >> 54;
  v48 = v26 | (v30 << 32);
  if (*&v16 >> 54 >= 0xFDuLL)
  {
    v49 = 2086;
  }

  else
  {
    v49 = 2022;
  }

  if (v47 < 0xFD)
  {
    v48 = v41;
    v41 = v44;
  }

  v50 = ((2 * v41) << ~(v49 - v46)) | (v48 >> (v49 - v46));
  if (v49 == v46)
  {
    v50 = v48;
  }

  v51 = (v45 << (v46 - 102)) | (v44 >> 1 >> ~(v46 - 102));
  if (v17 > 0x3D2)
  {
    v51 = v44;
  }

  if (v47 > 0xF4)
  {
    v51 = v50;
  }

  v52 = v51 >> 1;
  if (v51 >> 1 < 0)
  {
    v74 = -v52;
    v75 = HIDWORD(v74);
    v76 = ((HIDWORD(v74) * v25) >> 32) + HIDWORD(v74) * v24 + ((v74 * v24 + HIDWORD(v74) * v25 + ((v74 * v25) >> 32)) >> 32);
    v77 = HIDWORD(v74) * v28;
    v78 = HIDWORD(v77) + HIDWORD(v74) * DWORD1(v28);
    v79 = v74 * DWORD1(v28) + v77 + ((v74 * v28) >> 32);
    v80 = v78 + HIDWORD(v79);
    v81 = (v74 * v28) | (v79 << 32);
    v82 = HIDWORD(v74) * DWORD2(v28);
    v83 = v74 * DWORD2(v28);
    v84 = v74 * HIDWORD(v28) + v82 + HIDWORD(v83);
    v85 = v83 | (v84 << 32);
    v5 = __CFADD__(v76, v81);
    v86 = v76 + v81;
    v88 = v5;
    v5 = __CFADD__(v5, v85);
    v87 = v88 + v85;
    v89 = v5;
    v5 = __CFADD__(v80, v87);
    v90 = v80 + v87;
    if (v5)
    {
      v91 = 1;
    }

    else
    {
      v91 = v89;
    }

    v92 = (__PAIR128__(v28, v86) + v27) >> 64;
    v70 = v86 + v27;
    v72 = v92 + v90;
    v73 = *(&v28 + 1) + v75 * HIDWORD(v28) + HIDWORD(v82) + HIDWORD(v84) + v91 + v28;
  }

  else
  {
    v53 = HIDWORD(v52);
    v54 = v51 >> 1;
    v55 = ((v53 * v25) >> 32) + v53 * v24 + ((v54 * v24 + v53 * v25 + ((v54 * v25) >> 32)) >> 32);
    v56 = v53 * v28;
    v57 = HIDWORD(v56) + v53 * DWORD1(v28);
    v58 = v54 * DWORD1(v28) + v56 + ((v54 * v28) >> 32);
    v59 = v57 + HIDWORD(v58);
    v60 = (v54 * v28) | (v58 << 32);
    v61 = v53 * DWORD2(v28);
    v62 = HIDWORD(v61);
    v63 = v54 * HIDWORD(v28) + v61 + ((v54 * DWORD2(v28)) >> 32);
    v64 = (v54 * DWORD2(v28)) | (v63 << 32);
    v5 = __CFADD__(v55, v60);
    v65 = v55 + v60;
    v67 = v5;
    v5 = __CFADD__(v5, v64);
    v66 = v67 + v64;
    LODWORD(v68) = v5;
    v5 = __CFADD__(v59, v66);
    v69 = v59 + v66;
    if (v5)
    {
      v68 = 1;
    }

    else
    {
      v68 = v68;
    }

    v5 = v27 >= v65;
    v70 = v27 - v65;
    v71 = !v5;
    v72 = v28 - v71 - v69;
    v73 = *(&v28 + 1) - (v62 + v53 * HIDWORD(v28) + HIDWORD(v63)) - v68 - v28;
  }

  v93 = -78 - v17;
  if (v17 < 0x3B3)
  {
    v94 = 0;
  }

  else
  {
    v93 = 50 - v17;
    v94 = v73;
  }

  if (v17 >= 0x3B3)
  {
    v73 = v72;
  }

  v95 = v93 - 64;
  v96 = v17 > 0x3F2;
  if (v17 <= 0x3F2)
  {
    v97 = v95;
  }

  else
  {
    v97 = 50 - v17;
  }

  if (v96)
  {
    v98 = v72;
  }

  else
  {
    v98 = v94;
  }

  if (v96)
  {
    v73 = v70;
  }

  v99 = (((2 * v98) << ~v97) | (v73 >> v97)) + 1;
  v100 = v99 >> 1;
  if (v100 * v100 == v15 && ((2 * (v99 >> 1) * (v99 >> 33) + ((v100 * v100) >> 32)) >> 32) + (v99 >> 33) * (v99 >> 33) == v14)
  {
    return v99 >> 1;
  }

  v102 = (COERCE_UNSIGNED_INT(result + (v9 * 1.8447e19)) >> 23) - 127;
  v103 = __bid_estimate_decimal_digits[v102];
  v104 = (&__bid_power10_index_binexp_128 + 16 * v102);
  v105 = v104[1];
  if ((v9 - v105) > 0 || v9 == v105 && result >= *v104)
  {
    ++v103;
  }

  v106 = ((v10 - (67 - v103)) & 1) + 67 - v103;
  if (v106 < 39)
  {
    v133 = (&__bid_power10_table_128 + 16 * v106);
    v134 = *v133;
    v135 = v133[1];
    v136 = HIDWORD(v135);
    v137 = v135 * HIDWORD(result);
    v138 = HIDWORD(v137) + HIDWORD(v135) * HIDWORD(result);
    v139 = HIDWORD(v135) * result + v137 + ((v135 * result) >> 32);
    v140 = HIDWORD(v139);
    v141 = (v135 * result) | (v139 << 32);
    v142 = HIDWORD(v134);
    v143 = v134 * HIDWORD(result);
    v144 = HIDWORD(v134) * result + v143 + ((v134 * result) >> 32);
    v117 = (v134 * result) | (v144 << 32);
    v145 = v141 + HIDWORD(v143) + HIDWORD(v134) * HIDWORD(result) + HIDWORD(v144);
    v118 = (__PAIR128__(v138, v141) + __PAIR128__(v140, HIDWORD(v143) + HIDWORD(v134) * HIDWORD(result) + HIDWORD(v144))) >> 64;
    v146 = HIDWORD(v9);
    v147 = v9;
    v148 = v135 * HIDWORD(v9);
    v149 = v135 * v9;
    v150 = v136 * v9;
    v151 = HIDWORD(v148) + v136 * HIDWORD(v9);
    v152 = v150 + v148 + HIDWORD(v149);
    v153 = HIDWORD(v152);
    v154 = v149 | (v152 << 32);
    v155 = v134 * HIDWORD(v9);
    v156 = v134 * v9;
    v157 = HIDWORD(v134) * v147 + v155 + HIDWORD(v156);
    v158 = v156 | (v157 << 32);
    v159 = v154 + HIDWORD(v155) + v142 * v146 + HIDWORD(v157);
    v128 = (__PAIR128__(v151, v154) + __PAIR128__(v153, HIDWORD(v155) + v142 * v146 + HIDWORD(v157))) >> 64;
    v129 = v159;
    v131 = __CFADD__(v145, v158);
    v132 = v145 + v158;
  }

  else
  {
    v107 = (&__bid_power10_table_128 + 16 * (v106 - 37));
    v108 = *v107 * HIDWORD(result);
    v109 = *v107 * result;
    v110 = *v107 * v9 + v107[1] * result + HIDWORD(*v107) * HIDWORD(result) + HIDWORD(v108) + ((HIDWORD(*v107) * result + v108 + HIDWORD(v109)) >> 32);
    LODWORD(v107) = (result * *v107) >> 32;
    v111 = v109;
    v112 = 3587851993 * v107;
    v113 = 3587851993 * v109;
    v114 = HIDWORD(v112) + 126217744 * v107;
    v115 = HIDWORD(v113) + 126217744 * v111 + v112;
    v116 = ((16004768 * v111) >> 32) + 16004768 * v107;
    v117 = 0xF436A000000000 * v111;
    v118 = (__PAIR128__(HIDWORD(v115), v113 | (v115 << 32)) + __PAIR128__(v114, v116)) >> 64;
    v119 = (v113 | (v115 << 32)) + v116;
    v120 = HIDWORD(v110);
    v121 = 3587851993 * HIDWORD(v110);
    v122 = HIDWORD(v121) + 126217744 * HIDWORD(v110);
    v123 = 126217744 * v110 + v121 + ((3587851993u * v110) >> 32);
    v124 = HIDWORD(v123);
    v125 = (-707115303 * v110) | (v123 << 32);
    v126 = (16004768 * v110) >> 32;
    v127 = 0xF436A000000000 * v110;
    v130 = v125 + v126 + 16004768 * v120;
    v128 = (__PAIR128__(v122, v125) + __PAIR128__(v124, v126 + 16004768 * v120)) >> 64;
    v129 = v130;
    v131 = __CFADD__(v127, v119);
    v132 = v127 + v119;
  }

  v160 = v131;
  v5 = __CFADD__(v129, v160);
  v161 = v129 + v160;
  v162 = v5;
  v5 = __CFADD__(v118, v161);
  v163 = v118 + v161;
  if (v5)
  {
    v164 = 1;
  }

  else
  {
    v164 = v162;
  }

  v165 = v128 + v164;
  v166 = 1.0 / sqrt(v165 * 1.84467441e19 * 3.40282367e38 + v163 * 3.40282367e38 + v132 * 1.84467441e19 + v117);
  v167 = *&v166 >> 52;
  v168 = HIDWORD(*&v166) & 0xFFFFFLL | 0x100000;
  v169 = v168 * v117;
  v170 = LODWORD(v166) * v117;
  v171 = HIDWORD(v170) + LODWORD(v166) * HIDWORD(v117) + v169;
  v172 = HIDWORD(v169) + v168 * HIDWORD(v117) + HIDWORD(v171);
  v173 = v168 * v132;
  v174 = ((LODWORD(v166) * v132) >> 32) + LODWORD(v166) * HIDWORD(v132) + v173;
  v175 = HIDWORD(v173) + v168 * HIDWORD(v132) + HIDWORD(v174);
  v176 = (LODWORD(v166) * v132) | (v174 << 32);
  v177 = v168 * v163;
  v178 = ((LODWORD(v166) * v163) >> 32) + LODWORD(v166) * HIDWORD(v163) + v177;
  v179 = HIDWORD(v177) + v168 * HIDWORD(v163) + HIDWORD(v178);
  v180 = (LODWORD(v166) * v163) | (v178 << 32);
  v181 = v168 * v165;
  v182 = ((LODWORD(v166) * v165) >> 32) + LODWORD(v166) * HIDWORD(v165) + v181;
  v183 = HIDWORD(v181) + v168 * HIDWORD(v165) + HIDWORD(v182);
  v184 = (LODWORD(v166) * v165) | (v182 << 32);
  v185 = v172 + v176;
  v5 = __CFADD__(__CFADD__(v172, v176), v180);
  v186 = __CFADD__(v172, v176) + v180;
  v187 = v5;
  v188 = v175 + v186;
  if (__CFADD__(v175, v186))
  {
    v189 = 1;
  }

  else
  {
    v189 = v187;
  }

  v5 = __CFADD__(v184, v189);
  v190 = v184 + v189;
  v191 = v5;
  v192 = v179 + v190;
  if (__CFADD__(v179, v190))
  {
    v193 = 1;
  }

  else
  {
    v193 = v191;
  }

  v194 = v183 + v193;
  v195 = ((v168 * v170) >> 32) + v171 * v168 + ((((v170 * LODWORD(v166)) >> 32) + (v168 * v170) + v171 * LODWORD(v166)) >> 32);
  v196 = v185 * v168;
  v197 = HIDWORD(v196) + HIDWORD(v185) * v168;
  v198 = HIDWORD(v185) * LODWORD(v166) + v196 + ((v185 * LODWORD(v166)) >> 32);
  v199 = v197 + HIDWORD(v198);
  v200 = (v185 * LODWORD(v166)) | (v198 << 32);
  v201 = v188 * v168;
  v202 = v188 * LODWORD(v166);
  v203 = HIDWORD(v188) * LODWORD(v166) + v201 + HIDWORD(v202);
  v204 = HIDWORD(v201) + HIDWORD(v188) * v168 + HIDWORD(v203);
  v205 = HIDWORD(v192);
  v206 = v192;
  v207 = v192 * v168;
  v208 = HIDWORD(v207) + HIDWORD(v192) * v168;
  v209 = HIDWORD(v192) * LODWORD(v166) + v207 + ((v192 * LODWORD(v166)) >> 32);
  v210 = v208 + HIDWORD(v209);
  v211 = (v192 * LODWORD(v166)) | (v209 << 32);
  v212 = HIDWORD(v194);
  v213 = v194;
  v214 = v194 * v168;
  v215 = HIDWORD(v194) * LODWORD(v166) + v214 + ((v194 * LODWORD(v166)) >> 32);
  v216 = HIDWORD(v214) + HIDWORD(v194) * v168 + HIDWORD(v215);
  v217 = (v194 * LODWORD(v166)) | (v215 << 32);
  v218 = __CFADD__(v200, v195);
  v219 = v218;
  v220 = v219 + v202 + (v203 << 32);
  v222 = __CFADD__(v220, v199) || v220 < v219;
  v5 = __CFADD__(v211, v222);
  v223 = v211 + v222;
  LODWORD(v224) = v5;
  v5 = __CFADD__(v204, v223);
  v225 = v204 + v223;
  if (v5)
  {
    v224 = 1;
  }

  else
  {
    v224 = v224;
  }

  v5 = __CFADD__(v217, v224);
  v226 = v217 + v224;
  LODWORD(v227) = v5;
  v5 = __CFADD__(v210, v226);
  v228 = v210 + v226;
  if (v5)
  {
    v227 = 1;
  }

  else
  {
    v227 = v227;
  }

  v229 = (v228 << (2 * v167 + 25)) | (v225 >> 1 >> (~(2 * v167 + 25) & 0x3E));
  v230 = ((v216 + v227) << ((2 * v167 + 26) & 0x3E)) | (v228 >> 1 >> ~(2 * v167 + 26));
  v231 = v230 >> 1;
  if (v230 >> 1 < 0)
  {
    v270 = -v229;
    if (v229)
    {
      v231 = ~v231;
    }

    else
    {
      v231 = -v231;
    }

    v271 = HIDWORD(v270);
    v272 = HIDWORD(v270) * v194;
    v273 = HIDWORD(v272) + HIDWORD(v270) * HIDWORD(v194);
    v274 = v270 * HIDWORD(v194) + v272 + ((v270 * v194) >> 32);
    v275 = HIDWORD(v274);
    v276 = (v270 * v194) | (v274 << 32);
    v277 = HIDWORD(v270) * v192;
    v278 = v270 * v192;
    v279 = v270 * HIDWORD(v192) + v277 + HIDWORD(v278);
    v280 = HIDWORD(v277) + v271 * HIDWORD(v192) + HIDWORD(v279);
    v5 = __CFADD__(v276, v280);
    v281 = v276 + v280;
    v282 = v275 + v5 + v273;
    v243 = HIDWORD(v231);
    v244 = v231;
    v283 = HIDWORD(v231) * v194;
    v284 = v231 * HIDWORD(v194) + v283 + ((v231 * v194) >> 32);
    v285 = HIDWORD(v284);
    v286 = (v231 * v194) | (v284 << 32);
    v287 = HIDWORD(v231) * v192;
    v288 = HIDWORD(v287) + HIDWORD(v231) * HIDWORD(v192);
    v289 = v231 * HIDWORD(v192) + v287 + ((v231 * v192) >> 32);
    v290 = (v231 * v192) | (v289 << 32);
    v291 = __PAIR128__(v285, v286) + __PAIR128__(v194 + HIDWORD(v231) * HIDWORD(v194) + HIDWORD(v283), v288 + HIDWORD(v289));
    v5 = __CFADD__(v290, v281);
    v292 = v290 + v281;
    v294 = v5;
    v5 = __CFADD__(v5, v286 + v288 + HIDWORD(v289));
    v293 = v294 + v286 + v288 + HIDWORD(v289);
    v295 = v5;
    v5 = __CFADD__(v282, v293);
    v296 = v282 + v293;
    if (v5)
    {
      v297 = 1;
    }

    else
    {
      v297 = v295;
    }

    v260 = v185 + v278 + (v279 << 32);
    v298 = v260 < v185;
    v5 = __CFADD__(v188, v298);
    v299 = v188 + v298;
    v300 = v5;
    v262 = v292 + v299;
    if (__CFADD__(v292, v299))
    {
      v301 = 1;
    }

    else
    {
      v301 = v300;
    }

    v5 = __CFADD__(v192, v301);
    v302 = v192 + v301;
    v303 = v5;
    v266 = v302 + v296;
    if (__CFADD__(v302, v296))
    {
      v304 = 1;
    }

    else
    {
      v304 = v303;
    }

    v269 = *(&v291 + 1) + v297 + v304;
  }

  else
  {
    v232 = HIDWORD(v229);
    v233 = HIDWORD(v229) * v194;
    v234 = HIDWORD(v233) + HIDWORD(v229) * HIDWORD(v194);
    v235 = v229 * HIDWORD(v194) + v233 + ((v229 * v194) >> 32);
    v236 = HIDWORD(v235);
    v237 = (v229 * v194) | (v235 << 32);
    v238 = HIDWORD(v229) * v192;
    v239 = v229 * v192;
    v240 = v229 * HIDWORD(v192) + v238 + HIDWORD(v239);
    v241 = v239 | (v240 << 32);
    v242 = __PAIR128__(v234, v237) + __PAIR128__(v236, HIDWORD(v238) + v232 * HIDWORD(v192) + HIDWORD(v240));
    v243 = HIDWORD(v231);
    v244 = v230 >> 1;
    v245 = HIDWORD(v231) * v194;
    v246 = HIDWORD(v245);
    v247 = v244 * HIDWORD(v194) + v245 + ((v244 * v194) >> 32);
    v248 = (v244 * v194) | (v247 << 32);
    v249 = HIDWORD(v231) * v192;
    v250 = HIDWORD(v249) + HIDWORD(v231) * HIDWORD(v192);
    v251 = v244 * HIDWORD(v192) + v249 + ((v244 * v192) >> 32);
    v252 = v250 + HIDWORD(v251);
    v253 = (v244 * v192) | (v251 << 32);
    v254 = v248 + v252;
    v255 = __CFADD__(v248, v252);
    v256 = v253 + v242;
    v5 = __CFADD__(__CFADD__(v253, v242), v254);
    v257 = __CFADD__(v253, v242) + v254;
    LODWORD(v258) = v5;
    v259 = *(&v242 + 1) + v257;
    if (__CFADD__(*(&v242 + 1), v257))
    {
      v258 = 1;
    }

    else
    {
      v258 = v258;
    }

    v261 = __PAIR128__(v188, v185) - v241;
    v260 = v261;
    v262 = *(&v261 + 1) - v256;
    v264 = *(&v261 + 1) > v188 || *(&v261 + 1) < v256;
    v265 = v192 - v264;
    v266 = v265 - v259;
    v268 = v265 < v259 || v265 > v192;
    v269 = v194 - (v246 + HIDWORD(v231) * HIDWORD(v194) + HIDWORD(v247)) - v255 - v258 - v268;
  }

  v305 = v231 + (v231 >> 1);
  v306 = HIDWORD(v305);
  v307 = HIDWORD(v305) * v244;
  v308 = v305 * v244;
  v309 = v305 * v243 + v307 + HIDWORD(v308);
  v310 = HIDWORD(v307) + v306 * v243 + HIDWORD(v309);
  LODWORD(v307) = v308;
  v311 = v309 * v213;
  v312 = v308 * v213;
  v313 = HIDWORD(v311) + v309 * v212;
  v314 = HIDWORD(v312) + v307 * v212 + v311;
  v315 = HIDWORD(v314);
  v316 = v312 | (v314 << 32);
  v317 = v309 * v206;
  v318 = v307 * v206;
  v319 = HIDWORD(v318) + v307 * v205 + v317;
  v320 = v318 | (v319 << 32);
  v321 = __PAIR128__(v313, v316) + __PAIR128__(v315, HIDWORD(v317) + v309 * v205 + HIDWORD(v319));
  v322 = HIDWORD(v310);
  v323 = HIDWORD(v310) * v213;
  v324 = v310 * v213;
  v325 = v310 * v212 + v323 + HIDWORD(v324);
  v326 = HIDWORD(v325);
  v327 = v324 | (v325 << 32);
  v328 = HIDWORD(v310) * v206;
  v329 = v310 * v206;
  v330 = v310 * v205 + v328 + HIDWORD(v329);
  v331 = v329 | (v330 << 32);
  v332 = __PAIR128__(v326, v327) + __PAIR128__(v269 + v322 * v212 + HIDWORD(v323), HIDWORD(v328) + v322 * v205 + HIDWORD(v330));
  v333 = v331 + v321;
  v5 = __CFADD__(__CFADD__(v331, v321), v327 + HIDWORD(v328) + v322 * v205 + HIDWORD(v330));
  v334 = __CFADD__(v331, v321) + v327 + HIDWORD(v328) + v322 * v205 + HIDWORD(v330);
  LODWORD(v335) = v5;
  v5 = __CFADD__(*(&v321 + 1), v334);
  v336 = *(&v321 + 1) + v334;
  if (v5)
  {
    v335 = 1;
  }

  else
  {
    v335 = v335;
  }

  v337 = __CFADD__(v260, v320) + v262;
  v338 = __CFADD__(__CFADD__(v260, v320), v262);
  v5 = __CFADD__(v337, v333);
  v339 = v337 + v333;
  v340 = v5 || v338;
  v5 = __CFADD__(v266, v340);
  v341 = v266 + v340;
  v342 = v5;
  v5 = __CFADD__(v341, v336);
  v343 = v341 + v336;
  if (v5)
  {
    v344 = 1;
  }

  else
  {
    v344 = v342;
  }

  v345 = v167 - 114;
  v346 = (v343 << v345) | (v339 >> 1 >> ~v345);
  v347 = ((*(&v332 + 1) + v335 + v344) << v345) | (v343 >> 1 >> ~v345);
  v5 = __CFADD__(v346, 1);
  v348 = v346 + 1;
  if (v5)
  {
    v349 = v347 + 1;
  }

  else
  {
    v349 = v347;
  }

  *(&v351 + 1) = v349;
  *&v351 = v348;
  v350 = v351 >> 1;
  v352 = v349 >> 1;
  if ((a3 & 3) == 0)
  {
    *(&v396 + 1) = v165;
    *&v396 = v163;
    v395 = v396 >> 62;
    *(&v396 + 1) = v349 >> 1;
    *&v396 = v350;
    v397 = v396 >> 63;
    v398 = HIDWORD(v397);
    v399 = v396 >> 63;
    v400 = HIDWORD(v397) * v399;
    v401 = v397 * v397;
    v402 = HIDWORD(v400) + v398 * v398;
    v403 = v400 + v400 + HIDWORD(v401);
    v404 = v402 + HIDWORD(v403);
    v405 = v401 | (v403 << 32);
    LODWORD(v403) = v350 >> 31;
    v406 = v403 * v399;
    v407 = ((2 * v350) | 1u) * v399;
    v408 = ((2 * v350) | 1u) * v398 + v406 + HIDWORD(v407);
    v409 = HIDWORD(v406) + v403 * v398 + HIDWORD(v408);
    v410 = v407 | (v408 << 32);
    v411 = v404 + (v409 >> 63);
    *(&v396 + 1) = v409;
    *&v396 = v408 << 32;
    v412 = v396 >> 63;
    v413 = ((2 * v350) | 1u) * v403;
    v414 = v413 + v413 + ((((2 * v350) | 1u) * ((2 * v350) | 1u)) >> 32);
    v415 = HIDWORD(v413) + v403 * v403 + HIDWORD(v414);
    v5 = __CFADD__(v415, 2 * v410);
    v416 = v415 + 2 * v410;
    v418 = v5;
    v5 = __CFADD__(v5, v412);
    v417 = v418 + v412;
    v419 = v5;
    v420 = v405 + v417;
    if (__CFADD__(v405, v417))
    {
      v421 = 1;
    }

    else
    {
      v421 = v419;
    }

    v422 = v411 + v421;
    if (v395 > v411 + v421)
    {
      goto LABEL_246;
    }

    *(&v441 + 1) = v163;
    *&v441 = v132;
    v440 = v441 >> 62;
    v442 = 4 * v117;
    v443 = (((2 * v350) | 1) * ((2 * v350) | 1u)) | (v414 << 32);
    *(&v441 + 1) = v132;
    *&v441 = v117;
    v444 = v441 >> 62;
    if (v395 != v411 + v421)
    {
      goto LABEL_305;
    }

    if (v440 > v420 || v440 == v420 && (v444 > v416 || (v444 == v416 ? (v445 = v442 > v443) : (v445 = 0), v445)))
    {
LABEL_246:
      v5 = __CFADD__(v350++, 1);
      if (v5)
      {
        ++v352;
      }
    }

    else
    {
LABEL_305:
      *(&v447 + 1) = v352;
      *&v447 = v350;
      v446 = v447 >> 61;
      v448 = __PAIR128__(v416, v443) - 8 * v350;
      v449 = *(&v448 + 1) - v446;
      v451 = *(&v448 + 1) < v446 || *(&v448 + 1) > v416;
      v452 = v420 - v451;
      v453 = (__PAIR128__(v422, v420) - (v420 - v451)) >> 64;
      if (v453 > v395 || v453 == v395 && (v452 > v440 || v452 == v440 && (v449 > v444 || (v449 == v444 ? (v456 = v448 > v442) : (v456 = 0), v456))))
      {
        v352 = (__PAIR128__(v352, v350--) - 1) >> 64;
      }
    }

    goto LABEL_332;
  }

  v353 = v349 >> 33;
  v354 = v349 >> 1;
  v355 = v353 * v354;
  v356 = HIDWORD(v355) + v353 * v353;
  v357 = v355 + v355 + ((v352 * v352) >> 32);
  v358 = v356 + HIDWORD(v357);
  v359 = (v352 * v352) | (v357 << 32);
  v360 = HIDWORD(v350) * v354;
  v361 = v350 * v353;
  v362 = HIDWORD(v360) + HIDWORD(v350) * v353;
  v363 = v361 + v360 + ((v350 * v352) >> 32);
  v364 = (v350 * v352) | (v363 << 32);
  *(&v366 + 1) = v362 + HIDWORD(v363);
  *&v366 = v363 << 32;
  v365 = v366 >> 63;
  v367 = HIDWORD(v350) * v350;
  v368 = HIDWORD(v367) + HIDWORD(v350) * HIDWORD(v350);
  v369 = v367 + v367 + ((v350 * v350) >> 32);
  v370 = v368 + HIDWORD(v369);
  v371 = (v350 * v350) | (v369 << 32);
  v5 = __CFADD__(v370, 2 * v364);
  v372 = v370 + 2 * v364;
  v374 = v5;
  v5 = __CFADD__(v5, v365);
  v373 = v374 + v365;
  v375 = v5;
  v5 = __CFADD__(v359, v373);
  v376 = v359 + v373;
  if (v5)
  {
    v377 = 1;
  }

  else
  {
    v377 = v375;
  }

  v378 = v358 + v377;
  v379 = 2 * v350;
  *(&v381 + 1) = v352;
  *&v381 = v350;
  v380 = v381 >> 63;
  if (v378 > v165 || v378 == v165 && (v376 > v163 || v376 == v163 && (v372 > v132 || (v372 == v132 ? (v423 = v371 > v117) : (v423 = 0), v423))))
  {
    v382 = __PAIR128__(v372, v371) - v379;
    v5 = *(&v382 + 1) >= v380;
    v383 = *(&v382 + 1) - v380;
    v385 = !v5 || *(&v382 + 1) > v372;
    v386 = v376 - v385;
    v387 = (__PAIR128__(v378, v376) - v386) >> 64;
    if (v386 == -1)
    {
      v388 = v387 + 1;
    }

    else
    {
      v388 = v387;
    }

    v389 = v383 + 1;
    if (v383 == -1)
    {
      v390 = v386 + 1;
    }

    else
    {
      v388 = v387;
      v390 = v386;
    }

    if (v383 == -1)
    {
      v389 = 0;
    }

    if (v382 == -1)
    {
      v391 = v388;
    }

    else
    {
      v391 = v387;
    }

    if (v382 == -1)
    {
      v392 = v390;
    }

    else
    {
      v392 = v386;
    }

    if (v382 == -1)
    {
      v393 = v389;
    }

    else
    {
      v393 = v383;
    }

    v352 = (__PAIR128__(v352, v350) - 1) >> 64;
    v394 = v350 - 1;
    if (v391 > v165 || v391 == v165 && (v392 > v163 || v392 == v163 && (v393 > v132 || (v393 == v132 ? (v439 = v382 + 1 > v117) : (v439 = 0), v439))))
    {
      v352 = (__PAIR128__(v352, v350 - 1) - 1) >> 64;
      v394 = v350 - 2;
    }

    goto LABEL_324;
  }

  v424 = v371 + v379;
  v5 = __CFADD__(__CFADD__(v371, v379), v372);
  v425 = __CFADD__(v371, v379) + v372;
  v426 = v5;
  v5 = __CFADD__(v425, v380);
  v427 = v425 + v380;
  if (v5)
  {
    v428 = 1;
  }

  else
  {
    v428 = v426;
  }

  v5 = __CFADD__(v376, v428);
  v429 = v376 + v428;
  if (v5)
  {
    v430 = v378 + 1;
  }

  else
  {
    v430 = v378;
  }

  if (v429 == -1)
  {
    v431 = v430 + 1;
  }

  else
  {
    v431 = v430;
  }

  v432 = v427 + 1;
  if (v427 == -1)
  {
    v433 = v429 + 1;
  }

  else
  {
    v431 = v430;
    v433 = v429;
  }

  if (v427 == -1)
  {
    v432 = 0;
  }

  v434 = __CFADD__(v424, 1);
  v435 = v424 + 1;
  if (v424 == -1)
  {
    v436 = v431;
  }

  else
  {
    v436 = v430;
  }

  if (v434)
  {
    v437 = v433;
  }

  else
  {
    v437 = v429;
  }

  if (v434)
  {
    v438 = v432;
  }

  else
  {
    v438 = v427;
  }

  if (v436 < v165)
  {
    goto LABEL_285;
  }

  if (v436 != v165)
  {
    goto LABEL_323;
  }

  if (v437 < v163)
  {
    goto LABEL_285;
  }

  if (v437 == v163)
  {
    if (v438 < v132 || (v438 == v132 ? (v454 = v435 > v117) : (v454 = 1), v394 = v350, !v454))
    {
LABEL_285:
      v394 = v350 + 1;
      if (v350 == -1)
      {
        ++v352;
      }
    }
  }

  else
  {
LABEL_323:
    v394 = v350;
  }

LABEL_324:
  if (v394 == -1)
  {
    v455 = v352 + 1;
  }

  else
  {
    v455 = v352;
  }

  if (a3 == 2)
  {
    v350 = v394 + 1;
  }

  else
  {
    v350 = v394;
  }

  if (a3 == 2)
  {
    v352 = v455;
  }

LABEL_332:
  my_fpsf |= 0x20u;
  if (v350 == 0x378D8E6400000000 && v352 == 0x1ED09BEAD87C0)
  {
    return 0x38C15B0A00000000;
  }

  else
  {
    return v350;
  }
}

uint64_t __bid128_to_string(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  v152[3] = *MEMORY[0x1E69E9840];
  if ((~a3 & 0x7800000000000000) == 0)
  {
    if ((~a3 & 0x7C00000000000000) != 0)
    {
      v5 = (result + 4);
      if (a3 < 0)
      {
        v12 = 1718503725;
      }

      else
      {
        v12 = 1718503723;
      }

      *result = v12;
    }

    else
    {
      if (a3 >= 0)
      {
        v4 = 43;
      }

      else
      {
        v4 = 45;
      }

      *result = v4;
      if ((~a3 & 0x7E00000000000000) != 0)
      {
        v5 = (result + 4);
        *(result + 1) = 24910;
        *(result + 3) = 78;
      }

      else
      {
        *(result + 1) = 1314999891;
        v5 = (result + 5);
      }
    }

    goto LABEL_180;
  }

  v6 = a3 & 0x1FFFFFFFFFFFFLL;
  if (a3 & 0x1FFFFFFFFFFFFLL | a2)
  {
    v7 = 4 * a3;
    if ((a3 & 0x6000000000000000) != 0x6000000000000000)
    {
      v7 = a3;
    }

    v8 = (v7 >> 49) & 0x3FFF;
    v9 = v8 - 6176;
    if (a3 < 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = 43;
    }

    *result = v10;
    if (v6 > 0x1ED09BEAD87C0 || (a2 > 0x378D8E63FFFFFFFFLL ? (v17 = v6 == 0x1ED09BEAD87C0) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 1), (a3 & 0x6000000000000000) == 0x6000000000000000 || v18))
    {
      *(result + 1) = 48;
      v11 = 2;
LABEL_169:
      *(v3 + v11) = 69;
      v132 = 6176 - v8;
      v133 = v8 >> 5 >= 0xC1;
      if (v8 >> 5 >= 0xC1)
      {
        v134 = 43;
      }

      else
      {
        v134 = 45;
      }

      if (v133)
      {
        v132 = v9;
      }

      *(v3 + v11 + 1) = v134;
      v135 = v11 + 2;
      v136 = (16778 * v132) >> 24;
      v137 = -1000 * v136 + v132;
      if (v132 >= 0x3E8)
      {
        *(v3 + v135) = v136 + 48;
        v140 = 3 * v137;
        *(v3 + v11 + 3) = __bid_char_table3[v140];
        v141 = &__bid_char_table3[v140];
        v135 = v11 + 5;
        *(v3 + v11 + 4) = v141[1];
        v138 = v141[2];
        v139 = 6;
      }

      else if (v137 > 9)
      {
        if (v137 > 0x63)
        {
          v144 = 3 * v137;
          *(v3 + v135) = __bid_char_table3[v144];
          v145 = &__bid_char_table3[v144];
          v135 = v11 + 4;
          *(v3 + v11 + 3) = v145[1];
          v138 = v145[2];
          v139 = 5;
        }

        else
        {
          v143 = 2 * v137;
          *(v3 + v135) = __bid_char_table2[v143 - 20];
          v135 = v11 + 3;
          v138 = __bid_char_table2[v143 - 19];
          v139 = 4;
        }
      }

      else
      {
        v138 = v137 | 0x30;
        v139 = 3;
      }

      *(v3 + v135) = v138;
      v5 = (v3 + v11 + v139);
      goto LABEL_180;
    }

    v19 = a2 & 0x7FFFFFFFFFFFFFFLL;
    *(&v21 + 1) = a3 & 0x1FFFFFFFFFFFFLL;
    *&v21 = a2;
    v20 = v21 >> 59;
    if (!v20)
    {
      goto LABEL_47;
    }

    v22 = 0;
    v23 = &__bid_mod10_18_tbl;
    do
    {
      v24 = &v23[16 * (v20 & 0x3F)];
      v19 += *(v24 + 1);
      v22 += *v24 + (((v19 + 0x21F494C589C0000) & 0x1000000000000000) >> 60);
      if (((v19 + 0x21F494C589C0000) & 0x1000000000000000) != 0)
      {
        v19 = (v19 + 0x21F494C589C0000) & 0xFFFFFFFFFFFFFFFLL;
      }

      v23 += 1024;
      v25 = v20 > 0x3F;
      v20 >>= 6;
    }

    while (v25);
    if (v22)
    {
      if (v22 >= 0x3B9ACA00)
      {
        v38 = (2305843009u * (v22 >> 28)) >> 33;
        v39 = v22 - 1000000000 * v38;
        if (v39 <= 0x3B9AC9FF)
        {
          v22 = (2305843009u * (v22 >> 28)) >> 33;
        }

        else
        {
          v22 = v38 + 1;
        }

        if (v39 <= 0x3B9AC9FF)
        {
          v40 = 0;
        }

        else
        {
          v40 = -1000000000;
        }

        v41 = v40 + v39;
        if (v22 >= 0xF4240)
        {
          v70 = (34359 * (v22 >> 17)) >> 18;
          v71 = v22 - 1000000 * v70;
          v72 = v71 - 1000000;
          if (v71 > 0xF423F)
          {
            LODWORD(v22) = v70 + 1;
          }

          else
          {
            v72 = v71;
            LODWORD(v22) = v70;
          }

          v73 = (v72 & 0x3FF) + 32 * (v72 >> 10) - 8 * (v72 >> 10);
          v74 = (v73 >> 10) + (v72 >> 10);
          v75 = (v73 & 0x3FF) + 32 * (v73 >> 10) - 8 * (v73 >> 10);
          if (v75 > 0x3E7)
          {
            ++v74;
            v75 -= 1000;
          }

          v147 = v74;
          v148 = v75;
          v76 = (34359 * (v41 >> 17)) >> 18;
          v77 = v41 - 1000000 * v76;
          if (v77 > 0xF423F)
          {
            v77 -= 1000000;
            ++v76;
          }

          v78 = (v77 & 0x3FF) + 32 * (v77 >> 10) - 8 * (v77 >> 10);
          v79 = (v78 >> 10) + (v77 >> 10);
          v80 = (v78 & 0x3FF) + 32 * (v78 >> 10) - 8 * (v78 >> 10);
          if (v80 > 0x3E7)
          {
            ++v79;
            v80 -= 1000;
          }

          v149 = v76;
          v150 = v79;
          v26 = v152;
          v151 = v80;
        }

        else if (v22 >= 0x3E8)
        {
          v97 = (v22 & 0x3FF) + 32 * (v22 >> 10) - 8 * (v22 >> 10);
          LODWORD(v22) = (v97 >> 10) + (v22 >> 10);
          v98 = (v97 & 0x3FF) + 32 * (v97 >> 10) - 8 * (v97 >> 10);
          if (v98 > 0x3E7)
          {
            LODWORD(v22) = v22 + 1;
            v98 -= 1000;
          }

          v99 = (34359 * (v41 >> 17)) >> 18;
          v100 = v41 - 1000000 * v99;
          if (v100 > 0xF423F)
          {
            v100 -= 1000000;
            ++v99;
          }

          v101 = (v100 & 0x3FF) + 32 * (v100 >> 10) - 8 * (v100 >> 10);
          v102 = (v101 >> 10) + (v100 >> 10);
          v103 = (v101 & 0x3FF) + 32 * (v101 >> 10) - 8 * (v101 >> 10);
          if (v103 <= 0x3E7)
          {
            v104 = v102;
          }

          else
          {
            v103 -= 1000;
            v104 = v102 + 1;
          }

          v147 = v98;
          v148 = v99;
          v26 = &v151;
          v149 = v104;
          v150 = v103;
        }

        else
        {
          v42 = (34359 * (v41 >> 17)) >> 18;
          v43 = v41 - 1000000 * v42;
          if (v43 > 0xF423F)
          {
            v43 -= 1000000;
            ++v42;
          }

          v44 = (v43 & 0x3FF) + 32 * (v43 >> 10) - 8 * (v43 >> 10);
          v45 = (v44 >> 10) + (v43 >> 10);
          v46 = (v44 & 0x3FF) + 32 * (v44 >> 10) - 8 * (v44 >> 10);
          if (v46 > 0x3E7)
          {
            ++v45;
            v46 -= 1000;
          }

          v147 = v42;
          v148 = v45;
          v26 = &v150;
          v149 = v46;
        }
      }

      else if (v22 >= 0xF4240)
      {
        v63 = (34359 * (v22 >> 17)) >> 18;
        v64 = v22 - 1000000 * v63;
        v65 = v64 - 1000000;
        if (v64 > 0xF423F)
        {
          LODWORD(v22) = v63 + 1;
        }

        else
        {
          v65 = v64;
          LODWORD(v22) = v63;
        }

        v66 = (v65 & 0x3FF) + 32 * (v65 >> 10) - 8 * (v65 >> 10);
        v67 = (v66 >> 10) + (v65 >> 10);
        v68 = (v66 & 0x3FF) + 32 * (v66 >> 10) - 8 * (v66 >> 10);
        v69 = v68 - 1000;
        if (v68 <= 0x3E7)
        {
          v69 = v68;
        }

        else
        {
          ++v67;
        }

        v26 = &v149;
        v147 = v67;
        v148 = v69;
      }

      else if (v22 >= 0x3E8)
      {
        v94 = (v22 & 0x3FF) + 32 * (v22 >> 10) - 8 * (v22 >> 10);
        LODWORD(v22) = (v94 >> 10) + (v22 >> 10);
        v95 = (v94 & 0x3FF) + 32 * (v94 >> 10) - 8 * (v94 >> 10);
        v96 = v95 - 1000;
        if (v95 <= 0x3E7)
        {
          v96 = v95;
        }

        else
        {
          LODWORD(v22) = v22 + 1;
        }

        v26 = &v148;
        v147 = v96;
      }

      else
      {
        v26 = &v147;
      }

      v105 = (2305843009u * (v19 >> 28)) >> 33;
      v106 = v19 - 1000000000 * v105;
      if (v106 <= 0x3B9AC9FF)
      {
        v107 = v105;
      }

      else
      {
        v107 = v105 + 1;
      }

      if (v106 <= 0x3B9AC9FF)
      {
        v108 = 0;
      }

      else
      {
        v108 = -1000000000;
      }

      v109 = v108 + v106;
      v110 = (34359 * (v107 >> 17)) >> 18;
      v111 = v107 - 1000000 * v110;
      if (v111 > 0xF423F)
      {
        v111 -= 1000000;
        ++v110;
      }

      v112 = (v111 & 0x3FF) + 32 * (v111 >> 10) - 8 * (v111 >> 10);
      v113 = (v112 >> 10) + (v111 >> 10);
      v114 = (v112 & 0x3FF) + 32 * (v112 >> 10) - 8 * (v112 >> 10);
      if (v114 > 0x3E7)
      {
        ++v113;
        v114 -= 1000;
      }

      *v26 = v110;
      v26[1] = v113;
      v115 = (34359 * (v109 >> 17)) >> 18;
      v116 = v109 - 1000000 * v115;
      if (v116 > 0xF423F)
      {
        v116 -= 1000000;
        ++v115;
      }

      v117 = (v116 & 0x3FF) + 32 * (v116 >> 10) - 8 * (v116 >> 10);
      v118 = (v117 >> 10) + (v116 >> 10);
      v119 = (v117 & 0x3FF) + 32 * (v117 >> 10) - 8 * (v117 >> 10);
      if (v119 > 0x3E7)
      {
        ++v118;
      }

      v26[2] = v114;
      v26[3] = v115;
      if (v119 > 0x3E7)
      {
        v119 -= 1000;
      }

      v27 = (v26 + 6);
      v26[4] = v118;
      v26[5] = v119;
    }

    else
    {
LABEL_47:
      if (v19 >= 0x3B9ACA00)
      {
        v28 = (2305843009u * (v19 >> 28)) >> 33;
        v29 = v19 - 1000000000 * v28;
        if (v29 <= 0x3B9AC9FF)
        {
          v22 = v28;
        }

        else
        {
          v22 = v28 + 1;
        }

        if (v29 <= 0x3B9AC9FF)
        {
          v30 = 0;
        }

        else
        {
          v30 = -1000000000;
        }

        v31 = v30 + v29;
        if (v22 >= 0xF4240)
        {
          v53 = (34359 * (v22 >> 17)) >> 18;
          v54 = v22 - 1000000 * v53;
          if (v54 <= 0xF423F)
          {
            LODWORD(v22) = (34359 * (v22 >> 17)) >> 18;
          }

          else
          {
            v54 -= 1000000;
            LODWORD(v22) = v53 + 1;
          }

          v55 = (v54 & 0x3FF) + 32 * (v54 >> 10) - 8 * (v54 >> 10);
          v56 = (v55 >> 10) + (v54 >> 10);
          v57 = (v55 & 0x3FF) + 32 * (v55 >> 10) - 8 * (v55 >> 10);
          if (v57 > 0x3E7)
          {
            ++v56;
            v57 -= 1000;
          }

          v147 = v56;
          v148 = v57;
          v58 = (34359 * (v31 >> 17)) >> 18;
          v59 = v31 - 1000000 * v58;
          if (v59 > 0xF423F)
          {
            v59 -= 1000000;
            ++v58;
          }

          v60 = (v59 & 0x3FF) + 32 * (v59 >> 10) - 8 * (v59 >> 10);
          v61 = (v60 >> 10) + (v59 >> 10);
          v62 = (v60 & 0x3FF) + 32 * (v60 >> 10) - 8 * (v60 >> 10);
          if (v62 > 0x3E7)
          {
            ++v61;
            v62 -= 1000;
          }

          v149 = v58;
          v150 = v61;
          v27 = v152;
          v151 = v62;
        }

        else if (v22 >= 0x3E8)
        {
          v85 = (v22 & 0x3FF) + 32 * (v22 >> 10) - 8 * (v22 >> 10);
          v86 = (v85 >> 10) + (v22 >> 10);
          v87 = (v85 & 0x3FF) + 32 * (v85 >> 10) - 8 * (v85 >> 10);
          if (v87 <= 0x3E7)
          {
            LODWORD(v22) = v86;
          }

          else
          {
            v87 -= 1000;
            LODWORD(v22) = v86 + 1;
          }

          v88 = (34359 * (v31 >> 17)) >> 18;
          v89 = v31 - 1000000 * v88;
          if (v89 <= 0xF423F)
          {
            v90 = v88;
          }

          else
          {
            v89 -= 1000000;
            v90 = v88 + 1;
          }

          v91 = (v89 & 0x3FF) + 32 * (v89 >> 10) - 8 * (v89 >> 10);
          v92 = (v91 >> 10) + (v89 >> 10);
          v93 = (v91 & 0x3FF) + 32 * (v91 >> 10) - 8 * (v91 >> 10);
          if (v93 > 0x3E7)
          {
            ++v92;
            v93 -= 1000;
          }

          v147 = v87;
          v148 = v90;
          v27 = &v151;
          v149 = v92;
          v150 = v93;
        }

        else
        {
          v32 = (34359 * (v31 >> 17)) >> 18;
          v33 = v31 - 1000000 * v32;
          if (v33 <= 0xF423F)
          {
            v34 = v32;
          }

          else
          {
            v33 -= 1000000;
            v34 = v32 + 1;
          }

          v35 = (v33 & 0x3FF) + 32 * (v33 >> 10) - 8 * (v33 >> 10);
          v36 = (v35 >> 10) + (v33 >> 10);
          v37 = (v35 & 0x3FF) + 32 * (v35 >> 10) - 8 * (v35 >> 10);
          if (v37 > 0x3E7)
          {
            ++v36;
            v37 -= 1000;
          }

          v147 = v34;
          v148 = v36;
          v27 = &v150;
          v149 = v37;
        }
      }

      else if (v19 >= 0xF4240)
      {
        v47 = (34359 * (v19 >> 17)) >> 18;
        v48 = v19 - 1000000 * v47;
        if (v48 <= 0xF423F)
        {
          LODWORD(v22) = v47;
        }

        else
        {
          v48 -= 1000000;
          LODWORD(v22) = v47 + 1;
        }

        v49 = (v48 & 0x3FF) + 32 * (v48 >> 10) - 8 * (v48 >> 10);
        v50 = (v49 >> 10) + (v48 >> 10);
        v51 = (v49 & 0x3FF) + 32 * (v49 >> 10) - 8 * (v49 >> 10);
        v52 = v51 - 1000;
        if (v51 <= 0x3E7)
        {
          v52 = v51;
        }

        else
        {
          ++v50;
        }

        v27 = &v149;
        v147 = v50;
        v148 = v52;
      }

      else if (v19 >= 0x3E8)
      {
        v81 = (v19 & 0x3FF) + 32 * (v19 >> 10) - 8 * (v19 >> 10);
        v82 = (v81 >> 10) + (v19 >> 10);
        v83 = (v81 & 0x3FF) + 32 * (v81 >> 10) - 8 * (v81 >> 10);
        if (v83 <= 0x3E7)
        {
          LODWORD(v22) = v82;
        }

        else
        {
          LODWORD(v22) = v82 + 1;
        }

        if (v83 <= 0x3E7)
        {
          v84 = v83;
        }

        else
        {
          v84 = v83 - 1000;
        }

        v27 = &v148;
        v147 = v84;
      }

      else
      {
        v27 = &v147;
        LODWORD(v22) = v19;
      }
    }

    v120 = &__bid_midi_tbl + 3 * v22;
    if (v22 < 0x64)
    {
      v123 = 2;
      if (v22 < 0xA)
      {
        result = v3 + 1;
        goto LABEL_163;
      }

      v122 = 3;
      v121 = (v3 + 1);
    }

    else
    {
      v121 = (v3 + 2);
      *(v3 + 1) = *v120;
      v122 = 4;
      v123 = 3;
    }

    result = v3 + v123;
    *v121 = v120[1];
    v123 = v122;
LABEL_163:
    v124 = v120[2];
    v125 = v3 + v123;
    *result = v124;
    if (((v27 - v146) >> 2) < 2)
    {
      v131 = v3 + v123;
    }

    else
    {
      v126 = (((v27 - v146) >> 2) & 0x7FFFFFFF) - 1;
      v127 = &v147;
      do
      {
        v128 = *v127++;
        v129 = &__bid_midi_tbl + 3 * v128;
        *v125 = *v129;
        v130 = v129[2];
        v131 = v125 + 3;
        *(v125 + 2) = v130;
        v125 += 3;
        --v126;
      }

      while (v126);
    }

    v11 = v131 - v3;
    goto LABEL_169;
  }

  if (a3 < 0)
  {
    v13 = 45;
  }

  else
  {
    v13 = 43;
  }

  *result = v13;
  *(result + 1) = 17712;
  v14 = (a3 >> 49) & 0x3FFF;
  if ((((a3 >> 49) >> 12) & 3) == 3)
  {
    LODWORD(v14) = (a3 >> 47) & 0x3FFF;
  }

  v15 = v14 - 6176;
  if (v14 >> 5 < 0xC1)
  {
    result = sprintf((result + 3), "%d", v15);
    v5 = (v3 + result + 3);
  }

  else
  {
    *(result + 3) = 43;
    v16 = result + 4;
    result = sprintf((result + 4), "%u", v15);
    v5 = (v16 + result);
  }

LABEL_180:
  *v5 = 0;
  v142 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __bid128_tan(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  v121 = 0uLL;
  if ((~a2 & 0x6000000000000000) != 0)
  {
    v6 = ((a2 >> 49) & 0x3FFF) - 6176;
    v7 = a2 & 0x1FFFFFFFFFFFFLL;
    if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || a1 >= 0x378D8E6400000000 && v7 == 0x1ED09BEAD87C0)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v8 = a1;
    }

LABEL_16:
    if (v8 | v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = -53;
    }

    if (v9 <= -36)
    {
      if (v9 <= 0xFFFFFFCB)
      {
        return bid128_ext_fma(v125, &v122, &v124, &v123, a1, a2, 1uLL, 0x2FF0000000000000, a1, a2, a3, my_fpsf);
      }

      v122.n128_u64[0] = __bid128_to_binary128(a1, a2, a3, my_fpsf);
      v122.n128_u64[1] = v113;
      __dpml_bid_C_ux_trig__(&v122, 0, 4, qword_1C1F608E8, &v121, v125);
      v115 = v121.n128_u64[1];
      v114 = v121.n128_u64[0];
      v116 = a3;
      return __binary128_to_bid128(v114, v115, v116, my_fpsf);
    }

    v119 = a2 >> 63;
    v11 = (&bid_decimal128_moduli_1316 + 48 * (v9 + 35));
    v12 = *v11;
    v13 = v11[1];
    v15 = v11[2];
    v14 = v11[3];
    v16 = v11[4];
    v118 = v11[5];
    v17 = HIDWORD(*v11);
    v18 = *v11;
    v19 = ((v12 * HIDWORD(v8)) >> 32) + HIDWORD(v12) * HIDWORD(v8) + ((HIDWORD(v12) * v8 + (v12 * HIDWORD(v8)) + ((v12 * v8) >> 32)) >> 32);
    v20 = HIDWORD(v13);
    v21 = v13 * HIDWORD(v8);
    v22 = HIDWORD(v21) + HIDWORD(v13) * HIDWORD(v8);
    v23 = HIDWORD(v13) * v8 + v21 + ((v13 * v8) >> 32);
    v24 = v22 + HIDWORD(v23);
    v25 = (v13 * v8) | (v23 << 32);
    v26 = HIDWORD(v15);
    v27 = v15 * HIDWORD(v8);
    v28 = HIDWORD(v27) + HIDWORD(v15) * HIDWORD(v8);
    v29 = HIDWORD(v15) * v8 + v27 + ((v15 * v8) >> 32);
    v30 = v28 + HIDWORD(v29);
    v31 = (v15 * v8) | (v29 << 32);
    v32 = HIDWORD(v14);
    v33 = v14 * HIDWORD(v8);
    v34 = HIDWORD(v33) + HIDWORD(v14) * HIDWORD(v8);
    v35 = HIDWORD(v14) * v8 + v33 + ((v14 * v8) >> 32);
    v36 = v34 + HIDWORD(v35);
    v37 = (v14 * v8) | (v35 << 32);
    v38 = HIDWORD(v16);
    v39 = v16 * HIDWORD(v8);
    v40 = HIDWORD(v16) * v8 + v39 + ((v16 * v8) >> 32);
    v41 = (v16 * v8) | (v40 << 32);
    v42 = __PAIR128__(v31, v19) + v25;
    v43 = __CFADD__(__CFADD__(v19, v25), v31);
    v44 = __CFADD__(v24, *(&v42 + 1));
    v45 = v24 + *(&v42 + 1);
    v46 = v44 || v43;
    v44 = __CFADD__(v37, v46);
    v47 = v37 + v46;
    v48 = v44;
    v49 = v30 + v47;
    if (__CFADD__(v30, v47))
    {
      v50 = 1;
    }

    else
    {
      v50 = v48;
    }

    v44 = __CFADD__(v41, v50);
    v51 = v41 + v50;
    LODWORD(v52) = v44;
    v53 = v36 + v51;
    if (__CFADD__(v36, v51))
    {
      v52 = 1;
    }

    else
    {
      v52 = v52;
    }

    v54 = HIDWORD(v7);
    v55 = v18 * HIDWORD(v7);
    v56 = v12 * v7;
    v57 = HIDWORD(v55) + v17 * HIDWORD(v7);
    v58 = v17 * v7 + v55 + HIDWORD(v56);
    v59 = v57 + HIDWORD(v58);
    v60 = v56 | (v58 << 32);
    v61 = v13 * HIDWORD(v7);
    v62 = v13 * v7;
    v63 = v20 * v7;
    v64 = HIDWORD(v61) + v20 * HIDWORD(v7);
    v65 = v63 + v61 + HIDWORD(v62);
    v66 = v64 + HIDWORD(v65);
    v67 = v62 | (v65 << 32);
    v68 = v15 * HIDWORD(v7);
    v69 = v15 * v7;
    v70 = HIDWORD(v68) + v26 * HIDWORD(v7);
    v71 = v26 * v7 + v68 + HIDWORD(v69);
    v72 = v70 + HIDWORD(v71);
    v73 = v69 | (v71 << 32);
    v74 = v14 * HIDWORD(v7);
    v75 = v14 * v7;
    v76 = v32 * v7 + v74 + HIDWORD(v75);
    v77 = v75 | (v76 << 32);
    v78 = v16 * v7;
    v79 = __PAIR128__(v73, v59) + v67;
    LODWORD(v80) = __CFADD__(__CFADD__(v59, v67), v73);
    v81 = v66 + *(&v79 + 1);
    if (__CFADD__(v66, *(&v79 + 1)))
    {
      v80 = 1;
    }

    else
    {
      v80 = v80;
    }

    v44 = __CFADD__(v77, v80);
    v82 = v77 + v80;
    LODWORD(v83) = v44;
    v44 = __CFADD__(v72, v82);
    v84 = v72 + v82;
    if (v44)
    {
      v83 = 1;
    }

    else
    {
      v83 = v83;
    }

    v85 = __CFADD__(v60, v42) + v79;
    LODWORD(v86) = __CFADD__(__CFADD__(v60, v42), v79);
    v44 = __CFADD__(v45, v85);
    v87 = v45 + v85;
    if (v44)
    {
      v86 = 1;
    }

    else
    {
      v86 = v86;
    }

    v44 = __CFADD__(v81, v86);
    v88 = v81 + v86;
    LODWORD(v89) = v44;
    v44 = __CFADD__(v88, v49);
    v90 = v88 + v49;
    if (v44)
    {
      v89 = 1;
    }

    else
    {
      v89 = v89;
    }

    v44 = __CFADD__(v84, v89);
    v91 = v84 + v89;
    LODWORD(v92) = v44;
    v44 = __CFADD__(v91, v53);
    v93 = v91 + v53;
    if (v44)
    {
      v92 = 1;
    }

    else
    {
      v92 = v92;
    }

    v94 = v78 + v32 * v54 + HIDWORD(v74) + v38 * HIDWORD(v8) + v118 * v8 + HIDWORD(v39) + HIDWORD(v76) + HIDWORD(v40) + v83 + v52 + v92;
    *(&v96 + 1) = v94;
    *&v96 = v93;
    v95 = v96 >> 62;
    *(&v96 + 1) = v93;
    *&v96 = v90;
    v97 = v96 >> 62;
    v98 = v94 >> 62;
    *(&v96 + 1) = v90;
    *&v96 = v87;
    v99 = v96 >> 62;
    v100 = 4 * v87;
    v101 = (v98 + 1) & 3;
    if (v95 < 0)
    {
      v102 = v119 ^ 1;
    }

    else
    {
      v101 = v98;
      v102 = v119;
    }

    if (v95 >= 0)
    {
      v103 = v95;
    }

    else
    {
      v103 = ~v95;
    }

    if (v95 < 0)
    {
      v97 = ~v97;
      v99 = ~v99;
      v100 = ~v100;
    }

    if (a2 >= 0)
    {
      v104 = v101;
    }

    else
    {
      v104 = -v101 & 3;
    }

    if (v103)
    {
      v105 = 16382;
    }

    else
    {
      v105 = 16318;
    }

    if (v103)
    {
      v106 = v103;
    }

    else
    {
      v106 = v97;
    }

    if (v103)
    {
      v100 = v99;
    }

    else
    {
      v97 = v99;
    }

    v107 = vdupq_n_s64(v106);
    v108 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v107, xmmword_1C1F58C70), vandq_s8(v107, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v107, xmmword_1C1F58C80), vandq_s8(v107, xmmword_1C1F58CA0))));
    *v108.i8 = vorr_s8(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
    v109 = v108.i32[0] | v108.i32[1] | (2 * ((v106 & 0xCCCCCCCCCCCCCCCCLL) <= (v106 & 0x3333333333333333)));
    if ((v106 & 0xAAAAAAAAAAAAAAAALL) <= (v106 & 0x5555555555555555))
    {
      ++v109;
    }

    v110 = (v100 >> -v109) + (v97 << v109);
    if (v109)
    {
      v106 = (v97 >> -v109) + (v106 << v109);
    }

    else
    {
      v110 = v97;
    }

    *(&v111 + 1) = v106;
    *&v111 = v110;
    v122.n128_u64[0] = v111 >> 15;
    v122.n128_u64[1] = (v102 << 63) | ((v105 - v109) << 48) | (v106 >> 15) & 0xFFFFFFFFFFFFLL;
    bid_f128_mul(&v122, &c_pi_ov_2_1317, &v122);
    if (v104 > 1)
    {
      v112 = a3;
      if (v104 != 3)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v112 = a3;
      if (!v104)
      {
LABEL_97:
        __dpml_bid_C_ux_trig__(&v122, 0, 4, qword_1C1F608E8, &v121, v125);
LABEL_101:
        v115 = v121.n128_u64[1];
        v114 = v121.n128_u64[0];
        v116 = v112;
        return __binary128_to_bid128(v114, v115, v116, my_fpsf);
      }
    }

    __dpml_bid_C_ux_trig__(&v122, 0, 4, qword_1C1F608E8, &v121, v125);
    bid_f128_div(&v121, &c_neg_one, &v121);
    goto LABEL_101;
  }

  if ((~a2 & 0x7800000000000000) != 0)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  if ((~a2 & 0x7C00000000000000) != 0)
  {
    v5 = 0;
    my_fpsf[0] |= 1u;
  }

  else
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      return 0;
    }
  }

  return v5;
}

unint64_t __bid128_tgamma(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a1;
  if ((~a2 & 0x7C00000000000000) == 0)
  {
    if ((~a2 & 0x7E00000000000000) == 0)
    {
      my_fpsf[0] |= 1u;
    }

    if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      return 0;
    }

    return v4;
  }

  if (__bid128_isZero(a1, a2))
  {
    v4 = 0;
    my_fpsf[0] |= 4u;
    return v4;
  }

  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }

LABEL_16:
    v4 = 0;
    my_fpsf[0] |= 1u;
    return v4;
  }

  if (__bid128_quiet_less_equal(v4, a2, 0, 0, my_fpsf))
  {
    v7 = __bid128_round_integral_nearest_even(v4, a2, my_fpsf);
    v9 = __bid128_sub(v4, a2, v7, v8, a3, my_fpsf);
    if (__bid128_isZero(v9, v10))
    {
      goto LABEL_16;
    }
  }

  v11 = __bid128_lgamma(v4, a2, a3);
  v14 = __bid128_exp(v11, v12, a3, my_fpsf);
  if ((a2 & 0x8000000000000000) != 0 && (v13 & 0x7C00000000000000) != 0x7C00000000000000)
  {
    v15 = __bid128_round_integral_zero(v4, a2, my_fpsf);
    if (((v16 >> 49) & 0x3FFF) < 0x1820)
    {
      __bid128_add(0x7182B61400000000uLL, 0x3040629B8C891B26, v15, v16, a3, my_fpsf);
    }
  }

  return v14;
}

uint64_t __bid128_to_int32_int(unint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
    return 0;
  }

  v3 = 0;
  v7 = a1 > 0x378D8E63FFFFFFFFLL && v4 == 0x1ED09BEAD87C0;
  if (!(v4 | a1) || (a2 & 0x6000000000000000) == 0x6000000000000000 || v7)
  {
    return v3;
  }

  v8 = HIDWORD(a1);
  if (a1 >> 53)
  {
    v9 = -990;
  }

  else
  {
    v8 = a1;
    v9 = -1022;
  }

  if (v4)
  {
    v8 = a2 & 0x1FFFFFFFFFFFFLL;
  }

  v10 = COERCE_UNSIGNED_INT64(v8) >> 52;
  if (v4)
  {
    v9 = -958;
  }

  v11 = &__bid_nr_digits + 32 * (v10 + v9 - 1);
  v12 = *v11;
  if (!*v11)
  {
    v12 = *(v11 + 6);
    v13 = *(v11 + 1);
    if (v4 > v13 || v4 == v13 && *(v11 + 2) <= a1)
    {
      ++v12;
    }
  }

  v3 = (a2 >> 49) & 0x3FFF;
  v14 = v12 + v3 - 6176;
  if (v14 > 10)
  {
    goto LABEL_2;
  }

  if (v14 != 10)
  {
    if (v14 < 1)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v15 = v12 - 11;
  if (a2 < 0)
  {
    if (v12 <= 11)
    {
      if (__bid_ten2k64[11 - v12] * a1 <= 0x500000009)
      {
        goto LABEL_34;
      }

LABEL_2:
      *a3 |= 1u;
      return 0x80000000;
    }

    if (v12 > 0x1E)
    {
      v83 = &__bid_ten2k128[2 * (v12 - 31)];
      v84 = 5 * *v83;
      v85 = 10 * *v83;
      v86 = 10 * HIDWORD(*v83) + v84 + HIDWORD(v85);
      v74 = v85 | (v86 << 32);
      v73 = 5 * HIDWORD(*v83) + 0x50000000ALL * v83[1] + HIDWORD(v84) + HIDWORD(v86);
    }

    else
    {
      v67 = __bid_ten2k64[v15];
      v68 = HIDWORD(v67);
      v69 = 5 * v67;
      v70 = 10 * v67;
      v71 = 5 * HIDWORD(v67) + HIDWORD(v69);
      v72 = 10 * v68 + v69 + ((2 * v69) >> 32);
      v73 = v71 + HIDWORD(v72);
      v74 = v70 | (v72 << 32);
    }

    v81 = v4 == v73;
    if (v4 > v73)
    {
      goto LABEL_2;
    }

LABEL_77:
    if (v81 && v74 <= a1)
    {
      goto LABEL_2;
    }

    goto LABEL_34;
  }

  if (v12 > 11)
  {
    if (v12 > 0x1E)
    {
      v77 = &__bid_ten2k128[2 * (v12 - 31)];
      v79 = *v77;
      v78 = v77[1];
      v80 = HIDWORD(*v77);
      v19 = *v77;
      v20 = 4 * v80 + HIDWORD(v79) + 0x500000000 * v78 + ((5 * v79) >> 32);
    }

    else
    {
      v18 = __bid_ten2k64[v15];
      v19 = v18;
      v20 = 5 * HIDWORD(v18) + ((5 * v18) >> 32);
    }

    if (v4 > v20)
    {
      goto LABEL_2;
    }

    v74 = (5 * v19) << 32;
    v81 = v4 == v20;
    goto LABEL_77;
  }

  if ((__bid_ten2k64[11 - v12] * a1) >> 32 > 4)
  {
    goto LABEL_2;
  }

LABEL_34:
  if (v3 >> 5 <= 0xC0)
  {
    if (v3 < 0x180D)
    {
      v17 = &__bid_midpoint128[(6156 - v3)];
      v4 += v17[1];
      v16 = (6175 - v3);
    }

    else
    {
      v16 = (6175 - v3);
      v17 = &__bid_midpoint64[v16];
    }

    v21 = *v17;
    v22 = v21 + a1;
    if (__CFADD__(v21, a1))
    {
      v23 = v4 + 1;
    }

    else
    {
      v23 = v4;
    }

    v24 = HIDWORD(v22);
    v25 = &__bid_ten2mk128[2 * v16];
    v27 = *v25;
    v26 = v25[1];
    v28 = HIDWORD(v26);
    v29 = HIDWORD(v22) * v26;
    v30 = HIDWORD(v29) + HIDWORD(v22) * HIDWORD(v26);
    v31 = v22 * HIDWORD(v26) + v29 + ((v22 * v26) >> 32);
    v32 = HIDWORD(v31);
    v33 = (v22 * v26) | (v31 << 32);
    v34 = HIDWORD(v27);
    v35 = v27 * HIDWORD(v22);
    v36 = v27 * v22;
    v37 = HIDWORD(v27) * v22 + v35 + HIDWORD(v36);
    v38 = v36 | (v37 << 32);
    v39 = __PAIR128__(v30, v33) + __PAIR128__(v32, HIDWORD(v35) + HIDWORD(v27) * v24 + HIDWORD(v37));
    v40 = HIDWORD(v23);
    LODWORD(v33) = v23;
    v41 = HIDWORD(v23) * v26;
    v42 = v23 * v26;
    v43 = v23 * v28;
    v44 = HIDWORD(v41) + HIDWORD(v23) * v28;
    v45 = v43 + v41 + HIDWORD(v42);
    v46 = HIDWORD(v45);
    v47 = v42 | (v45 << 32);
    v48 = HIDWORD(v23) * v27;
    v49 = v23 * v27;
    v50 = v33 * HIDWORD(v27) + v48 + HIDWORD(v49);
    v51 = v49 | (v50 << 32);
    v53 = v47 + HIDWORD(v48) + v40 * v34 + HIDWORD(v50);
    v52 = (__PAIR128__(v44, v47) + __PAIR128__(v46, HIDWORD(v48) + v40 * v34 + HIDWORD(v50))) >> 64;
    v54 = __CFADD__(v51, v39);
    v56 = v51 + v39;
    v55 = (__PAIR128__(v53, v51) + v39) >> 64;
    v57 = __CFADD__(v54, v53);
    v58 = *(&v39 + 1) + v55;
    v59 = __CFADD__(*(&v39 + 1), v55) || v57;
    v60 = v52 + v59;
    v61 = __bid_maskhigh128[v16];
    if (v3 >> 1 < 0xC05)
    {
      v64 = v61 & v60;
      v63 = v60 >> __bid_shiftright128[v16];
      v75 = __bid_onehalf128[v16];
      if (v64 > v75)
      {
        v76 = 0;
        v66 = 0;
LABEL_98:
        LODWORD(v3) = v63 - (v76 || v66);
LABEL_99:
        if (a2 >= 0)
        {
          return v3;
        }

        else
        {
          return -v3;
        }
      }

      if (v64 != v75 || (v66 = 0, !v58) && !v56 && !v38)
      {
        v66 = 1;
      }

      v62 = v58;
    }

    else
    {
      v62 = v61 & v58;
      v63 = (v60 << -__bid_shiftright128[v16]) | (v58 >> __bid_shiftright128[v16]);
      if (v3 < 0x181D)
      {
        v82 = __bid_onehalf128[v16];
        if (v62 <= v82 && (v62 != v82 || !(v56 | v38)))
        {
          v64 = 0;
          v66 = 1;
          goto LABEL_92;
        }
      }

      else if (v56 <= 0x8000000000000000)
      {
        v64 = 0;
        v66 = v56 != 0x8000000000000000 || v38 == 0;
        goto LABEL_92;
      }

      v64 = 0;
      v66 = 0;
    }

LABEL_92:
    if (!(v64 | v62) && v56 | v38 && __PAIR128__(v56, v38) <= __bid_ten2mk128trunc[v16])
    {
      v66 = 0;
      v76 = (v63 & 1) == 0;
      LODWORD(v63) = v63 & 0xFFFFFFFE;
    }

    else
    {
      v76 = 0;
    }

    goto LABEL_98;
  }

  if (v3 != 6176)
  {
    LODWORD(v3) = __bid_ten2k64[(v3 - 6176)] * a1;
    goto LABEL_99;
  }

  if (a2 >= 0)
  {
    return a1;
  }

  else
  {
    return -a1;
  }
}

unint64_t __bid128_to_uint64_int(unint64_t a1, unint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    return 0;
  }

  v3 = 0;
  v7 = a1 > 0x378D8E63FFFFFFFFLL && v4 == 0x1ED09BEAD87C0;
  if (v4 | a1 && (a2 & 0x6000000000000000) != 0x6000000000000000 && !v7)
  {
    if (a1 >> 53)
    {
      v8 = HIDWORD(a1);
    }

    else
    {
      v8 = a1;
    }

    if (a1 >> 53)
    {
      v9 = -990;
    }

    else
    {
      v9 = -1022;
    }

    if (v4)
    {
      v8 = a2 & 0x1FFFFFFFFFFFFLL;
    }

    v10 = COERCE_UNSIGNED_INT64(v8) >> 52;
    if (v4)
    {
      v9 = -958;
    }

    v11 = &__bid_nr_digits + 32 * (v10 + v9 - 1);
    v12 = *v11;
    if (!*v11)
    {
      v12 = *(v11 + 6);
      v13 = *(v11 + 1);
      if (v4 > v13 || v4 == v13 && *(v11 + 2) <= a1)
      {
        ++v12;
      }
    }

    v14 = (a2 >> 49) & 0x3FFF;
    v15 = v12 + v14 - 6176;
    if (v15 >= 21)
    {
      goto LABEL_2;
    }

    if (v15 == 20)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_2;
      }

      if (v12 == 1)
      {
        v16 = 5 * a1 + 1808227885 * HIDWORD(a1) + ((1661992960 * HIDWORD(a1)) >> 32) + (((1661992960 * HIDWORD(a1)) + 1808227885 * a1 + ((1661992960 * a1) >> 32)) >> 32);
      }

      else
      {
        if (v12 > 19)
        {
          if (v12 == 21)
          {
            if (v4 >= 0xA)
            {
              goto LABEL_2;
            }
          }

          else if (v12 == 20)
          {
            if (v4)
            {
              goto LABEL_2;
            }
          }

          else if (v4 >= 10 * __bid_ten2k64[v12 - 21])
          {
            goto LABEL_2;
          }

LABEL_42:
          if (v14 >> 5 > 0xC0)
          {
            v3 = a1;
            if (v14 != 6176)
            {
              return __bid_ten2k64[(v14 - 6176)] * a1;
            }
          }

          else
          {
            v18 = __bid_ten2mk128[2 * (6175 - v14)];
            v19 = __bid_ten2mk128[2 * (6175 - v14) + 1];
            v20 = HIDWORD(v19);
            v21 = v19 * HIDWORD(a1);
            v22 = HIDWORD(v21) + HIDWORD(v19) * HIDWORD(a1);
            v23 = HIDWORD(v19) * a1 + v21 + ((v19 * a1) >> 32);
            v24 = HIDWORD(v23);
            v25 = (v19 * a1) | (v23 << 32);
            v26 = HIDWORD(v18);
            v28 = (__PAIR128__(v22, v25) + __PAIR128__(v24, ((v18 * HIDWORD(a1)) >> 32) + HIDWORD(v18) * HIDWORD(a1) + ((HIDWORD(v18) * a1 + (v18 * HIDWORD(a1)) + ((v18 * a1) >> 32)) >> 32))) >> 64;
            v27 = v25 + ((v18 * HIDWORD(a1)) >> 32) + HIDWORD(v18) * HIDWORD(a1) + ((HIDWORD(v18) * a1 + (v18 * HIDWORD(a1)) + ((v18 * a1) >> 32)) >> 32);
            v29 = HIDWORD(v4);
            v30 = v19 * v29;
            v31 = v19 * a2;
            v32 = v20 * a2;
            v33 = HIDWORD(v30) + v20 * v29;
            v34 = v32 + v30 + HIDWORD(v31);
            v35 = HIDWORD(v34);
            v36 = v31 | (v34 << 32);
            v37 = v18 * v29;
            v38 = v18 * a2;
            v39 = HIDWORD(v37) + v26 * v29;
            v40 = v26 * a2 + v37 + HIDWORD(v38);
            v41 = v38 | (v40 << 32);
            v42 = __PAIR128__(v33, v36) + __PAIR128__(v35, v39 + HIDWORD(v40));
            v43 = __CFADD__(__CFADD__(v41, v27), v36 + v39 + HIDWORD(v40));
            v44 = __CFADD__(v41, v27) + v36 + v39 + HIDWORD(v40);
            v45 = v43;
            v46 = v28 + v44;
            if (__CFADD__(v28, v44))
            {
              v47 = 1;
            }

            else
            {
              v47 = v45;
            }

            v48 = *(&v42 + 1) + v47;
            v49 = __bid_shiftright128[(6175 - v14)];
            if (v14 >> 1 < 0xC05)
            {
              return v48 >> v49;
            }

            else
            {
              return (v48 << -v49) | (v46 >> v49);
            }
          }

          return v3;
        }

        v17 = __bid_ten2k64[21 - v12];
        v16 = ((v17 * HIDWORD(a1)) >> 32) + HIDWORD(v17) * HIDWORD(a1) + ((HIDWORD(v17) * a1 + (v17 * HIDWORD(a1)) + ((v17 * a1) >> 32)) >> 32);
      }

      if (v16 < 0xA)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v15 < 1)
      {
        return 0;
      }

      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_2:
    *a3 |= 1u;
    return 0x8000000000000000;
  }

  return v3;
}

double __bid128_to_binary64(unint64_t a1, unint64_t a2, int a3, int *a4)
{
  if ((~a2 & 0x6000000000000000) == 0)
  {
    if ((~a2 & 0x7800000000000000) == 0)
    {
      if ((~a2 & 0x7C00000000000000) == 0)
      {
        if ((a2 & 0x200000000000000) != 0)
        {
          *a4 |= 1u;
        }

        if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
        {
          v4 = a2 & 0x8000000000000000;
        }

        else
        {
          *(&v27 + 1) = a2;
          *&v27 = a1;
          v4 = a2 & 0x8000000000000000 | ((v27 >> 46) >> 13);
        }

        v6 = v4 | 0x7FF8000000000000;
        return *&v6;
      }

LABEL_87:
      v6 = a2 & 0x8000000000000000 | 0x7FF0000000000000;
      return *&v6;
    }

LABEL_11:
    v6 = a2 & 0x8000000000000000;
    return *&v6;
  }

  v5 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    goto LABEL_11;
  }

  v8 = (a2 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a1 > 0x378D8E63FFFFFFFFLL;
  if (v8 || !(v5 | a1))
  {
    goto LABEL_11;
  }

  v9 = (a2 >> 49) & 0x3FFF;
  if (v5)
  {
    v10 = vdupq_n_s64(a2);
    v11 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v10, xmmword_1C1F58D00), vandq_s8(v10, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v10, xmmword_1C1F58D10), vandq_s8(v10, xmmword_1C1F58D20))));
    v12 = 2 * ((a2 & 0xCCCCCCCCCCCCLL) <= (a2 & 0x1333333333333));
    v13 = (a2 & 0xAAAAAAAAAAAALL) <= (a2 & 0x1555555555555);
  }

  else
  {
    v14 = vdupq_n_s64(a1);
    v12 = 2 * ((a1 & 0xCCCCCCCCCCCCCCCCLL) <= (a1 & 0x3333333333333333));
    v13 = (a1 & 0xAAAAAAAAAAAAAAAALL) <= (a1 & 0x5555555555555555);
    v11 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vandq_s8(v14, xmmword_1C1F58D30), vandq_s8(v14, xmmword_1C1F58D40)), vcgtq_u64(vandq_s8(v14, xmmword_1C1F58C80), vandq_s8(v14, xmmword_1C1F58CA0))), xmmword_1C1F58D60, xmmword_1C1F58D50);
  }

  v15 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  v16 = v15.i32[0] | v12 | v15.i32[1] | v13;
  v17 = v16 - 15;
  if (v16 != 15)
  {
    if (v16 < 0x4F)
    {
      v5 = (v5 << v17) + (a1 >> (79 - v16));
      a1 <<= v17;
    }

    else
    {
      v5 = a1 << (v16 - 79);
      a1 = 0;
    }
  }

  if (v9 >= 0x1955)
  {
LABEL_81:
    *a4 |= 0x28u;
    if (a3 == 3 || ((a2 & 0x8000000000000000) == 0 ? (v116 = 1) : (v116 = 2), v116 == a3))
    {
      v6 = a2 & 0x8000000000000000 | 0x7FEFFFFFFFFFFFFFLL;
      return *&v6;
    }

    goto LABEL_87;
  }

  v18 = a2 >> 63;
  *(&v20 + 1) = v5;
  *&v20 = a1;
  v19 = v20 >> 58;
  v21 = a1 << 6;
  if (v9 >= 0x16BB)
  {
    v22 = v9 - 6176;
  }

  else
  {
    v22 = -358;
  }

  v23 = v22;
  v24 = &bid_breakpoints_binary64 + 16 * v22;
  v25 = bid_exponents_binary64[v22 + 358] - v17;
  if (__PAIR128__(v19, v21) > *(v24 + 358))
  {
    ++v25;
    v26 = &unk_1C1FBD050;
  }

  else
  {
    v26 = &unk_1C1FB7CD0;
  }

  v28 = &v26[32 * v23];
  v30 = *v28;
  v29 = *(v28 + 1);
  v31 = HIDWORD(v21);
  v32 = v21 & 0xFFFFFFC0;
  v33 = HIDWORD(*v28);
  v34 = *v28;
  v35 = v34 * HIDWORD(v21);
  v36 = HIDWORD(v35) + v33 * v31;
  v37 = v33 * v32 + v35;
  v39 = *(v28 + 2);
  v38 = *(v28 + 3);
  v40 = v36 + ((v37 + ((v34 * v32) >> 32)) >> 32);
  v41 = HIDWORD(v29);
  v42 = v29 * v31;
  v43 = v29 * v32;
  v44 = HIDWORD(v42) + HIDWORD(v29) * v31;
  v45 = HIDWORD(v29) * v32 + v42 + HIDWORD(v43);
  v46 = v44 + HIDWORD(v45);
  v47 = v43 | (v45 << 32);
  v48 = HIDWORD(v39);
  v49 = v39 * v31;
  v50 = v39 * v32;
  v51 = HIDWORD(v49) + HIDWORD(v39) * v31;
  v52 = HIDWORD(v39) * v32 + v49 + HIDWORD(v50);
  v53 = v51 + HIDWORD(v52);
  v54 = v50 | (v52 << 32);
  v55 = v38 * v31;
  v56 = v38 * v32;
  v57 = HIDWORD(v55) + HIDWORD(v38) * v31;
  v58 = HIDWORD(v38) * v32 + v55 + HIDWORD(v56);
  v59 = HIDWORD(v58);
  v60 = v56 | (v58 << 32);
  v61 = __CFADD__(v40, v47);
  v62 = v40 + v47;
  v63 = v54 + v61 + v46;
  v65 = (__CFADD__(v61, v46) | __CFADD__(v54, v61 + v46)) + v53;
  v61 = __CFADD__(__CFADD__(v61, v46) | __CFADD__(v54, v61 + v46), v53) | __CFADD__(v60, v65);
  v64 = v60 + v65;
  v66 = v59 + v61 + v57;
  v67 = HIDWORD(v19);
  LODWORD(v53) = v19;
  v68 = v34 * HIDWORD(v19);
  v69 = v30 * v19;
  v70 = v33 * v19;
  v71 = HIDWORD(v68) + v33 * HIDWORD(v19);
  v72 = v70 + v68 + HIDWORD(v69);
  v73 = v71 + HIDWORD(v72);
  v74 = v69 | (v72 << 32);
  v75 = v29 * HIDWORD(v19);
  v76 = v29 * v19;
  v77 = v41 * v19;
  v78 = HIDWORD(v75) + v41 * HIDWORD(v19);
  v79 = v77 + v75 + HIDWORD(v76);
  v80 = v78 + HIDWORD(v79);
  v81 = v76 | (v79 << 32);
  v82 = v39 * HIDWORD(v19);
  v83 = v39 * v19;
  v84 = v48 * v19;
  v85 = HIDWORD(v82) + v48 * HIDWORD(v19);
  v86 = v84 + v82 + HIDWORD(v83);
  v87 = v85 + HIDWORD(v86);
  v88 = v83 | (v86 << 32);
  v89 = v38 * HIDWORD(v19);
  v90 = v38 * v19;
  v91 = HIDWORD(v89) + HIDWORD(v38) * v67;
  v92 = HIDWORD(v38) * v53 + v89 + HIDWORD(v90);
  v93 = v90 | (v92 << 32);
  v61 = __CFADD__(v73, v81);
  v94 = v73 + v81;
  v96 = v61;
  v61 = __CFADD__(v61, v88);
  v95 = v96 + v88;
  LODWORD(v97) = v61;
  v98 = v91 + HIDWORD(v92);
  v61 = __CFADD__(v80, v95);
  v99 = v80 + v95;
  if (v61)
  {
    v97 = 1;
  }

  else
  {
    v97 = v97;
  }

  v61 = __CFADD__(v93, v97);
  v100 = v93 + v97;
  v101 = v61;
  v102 = v87 + v100;
  if (__CFADD__(v87, v100))
  {
    v103 = 1;
  }

  else
  {
    v103 = v101;
  }

  v104 = v98 + v103;
  v105 = __CFADD__(__CFADD__(v74, v62), v94);
  v106 = __CFADD__(__CFADD__(v74, v62) + v94, v63);
  v107 = v106 || v105;
  v61 = __CFADD__(v99, v107);
  v108 = v99 + v107;
  LODWORD(v109) = v61;
  v61 = __CFADD__(v108, v64);
  v110 = v108 + v64;
  if (v61)
  {
    v109 = 1;
  }

  else
  {
    v109 = v109;
  }

  v61 = __CFADD__(v102, v109);
  v111 = v102 + v109;
  LODWORD(v112) = v61;
  v61 = __CFADD__(v66, v111);
  v113 = v66 + v111;
  if (v61)
  {
    v112 = 1;
  }

  else
  {
    v112 = v112;
  }

  v114 = v104 + v112;
  if (v25 <= 0)
  {
    v115 = 1 - v25;
    if (v115 >= 0x37)
    {
      LOBYTE(v115) = 55;
    }

    v110 = (v113 << -v115) + (v110 >> v115);
    v113 = (v114 << -v115) + (v113 >> v115);
    v114 >>= v115;
    v25 = 1;
  }

  if (bid_roundbound_128[(4 * a3) | (2 * v18) | v114 & 1] < __PAIR128__(v113, v110))
  {
    if (++v114 == 0x20000000000000)
    {
      ++v25;
      v114 = 0x10000000000000;
    }

    else if (v114 == 0x10000000000000 && v25 == 1)
    {
      if ((a3 & 3) == 0 && v113 >> 62 != 3 || (v25 = 1, v114 = 0x10000000000000, v18 + a3 == 2) && (v113 & 0x8000000000000000) == 0)
      {
        *a4 |= 0x10u;
        v25 = 1;
        v114 = 0x10000000000000;
      }

      goto LABEL_88;
    }
  }

  if (v25 >= 0x7FF)
  {
    goto LABEL_81;
  }

LABEL_88:
  v117 = v114 & 0xFFFFFFFFFFFFFLL;
  v118 = v114 >> 52;
  if (v113 | v110)
  {
    v119 = *a4;
    *a4 |= 0x20u;
    if (!v118)
    {
      *a4 = v119 | 0x30;
    }
  }

  v120 = v25 << 52;
  if (!v118)
  {
    v120 = 0;
  }

  v6 = v117 | a2 & 0x8000000000000000 | v120;
  return *&v6;
}

unint64_t __bid128_to_binary128(unint64_t a1, unint64_t a2, int a3, int *a4)
{
  if ((~a2 & 0x6000000000000000) == 0)
  {
    if ((~a2 & 0x7800000000000000) == 0)
    {
      if ((~a2 & 0x7C00000000000000) == 0)
      {
        if ((a2 & 0x200000000000000) != 0)
        {
          *a4 |= 1u;
        }

        if ((a2 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a1 >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
        {
          return 0;
        }

        *(&v26 + 1) = a2;
        *&v26 = a1;
        return (2 * (a1 & 0x3FFFFFFFFFFFLL)) | ((v26 >> 46) << 47);
      }

      return 0;
    }

    return 0;
  }

  v5 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    return 0;
  }

  v6 = (a2 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a1 > 0x378D8E63FFFFFFFFLL;
  if (v6 || !(v5 | a1))
  {
    return 0;
  }

  v7 = (a2 >> 49) & 0x3FFF;
  if (v5)
  {
    v8 = vdupq_n_s64(a2);
    v9 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v8, xmmword_1C1F58D00), vandq_s8(v8, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v8, xmmword_1C1F58D10), vandq_s8(v8, xmmword_1C1F58D20))));
    v10 = 2 * ((a2 & 0xCCCCCCCCCCCCLL) <= (a2 & 0x1333333333333));
    v11 = (a2 & 0xAAAAAAAAAAAALL) <= (a2 & 0x1555555555555);
  }

  else
  {
    v12 = vdupq_n_s64(a1);
    v10 = 2 * ((a1 & 0xCCCCCCCCCCCCCCCCLL) <= (a1 & 0x3333333333333333));
    v11 = (a1 & 0xAAAAAAAAAAAAAAAALL) <= (a1 & 0x5555555555555555);
    v9 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vandq_s8(v12, xmmword_1C1F58D30), vandq_s8(v12, xmmword_1C1F58D40)), vcgtq_u64(vandq_s8(v12, xmmword_1C1F58C80), vandq_s8(v12, xmmword_1C1F58CA0))), xmmword_1C1F58D60, xmmword_1C1F58D50);
  }

  v13 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v14 = v13.i32[0] | v10 | v13.i32[1] | v11;
  v15 = v14 - 15;
  if (v14 != 15)
  {
    if (v14 < 0x4F)
    {
      v5 = (v5 << v15) + (a1 >> (79 - v14));
      a1 <<= v15;
    }

    else
    {
      v5 = a1 << (v14 - 79);
      a1 = 0;
    }
  }

  if (v7 >= 0x2B65)
  {
LABEL_85:
    *a4 |= 0x28u;
    if (a3 == 3)
    {
      return -1;
    }

    v110 = (a2 & 0x8000000000000000) == 0 ? 1 : 2;
    if (v110 == a3)
    {
      return -1;
    }

    return 0;
  }

  v16 = a2 >> 63;
  *(&v18 + 1) = v5;
  *&v18 = a1;
  v17 = v18 >> 62;
  v19 = 4 * a1;
  if (v7 >= 0x499)
  {
    v20 = v7 - 6176;
  }

  else
  {
    v20 = -5000;
  }

  v21 = v20;
  v22 = &bid_breakpoints_binary128[2 * v20 + 10000];
  v23 = bid_breakpoints_binary128[2 * v20 + 10001];
  v24 = bid_exponents_binary128[v20 + 5000] - v15;
  if (__PAIR128__(v17, v19) > __PAIR128__(v23, *v22))
  {
    ++v24;
    v25 = &unk_1C20649F0;
  }

  else
  {
    v25 = &unk_1C2017030;
  }

  v27 = &v25[32 * v21];
  v29 = *v27;
  v28 = *(v27 + 1);
  v30 = HIDWORD(v19);
  v31 = v19 & 0xFFFFFFFC;
  v32 = HIDWORD(*v27);
  v33 = *v27;
  v34 = ((v33 * HIDWORD(v19)) >> 32) + v32 * HIDWORD(v19) + ((v32 * v31 + v33 * HIDWORD(v19) + ((v33 * v31) >> 32)) >> 32);
  v35 = HIDWORD(v28);
  v36 = v28 * HIDWORD(v19);
  v37 = v28 * (v19 & 0xFFFFFFFC);
  v39 = *(v27 + 2);
  v38 = *(v27 + 3);
  v40 = HIDWORD(v28) * v31 + v36 + HIDWORD(v37);
  v41 = HIDWORD(v36) + HIDWORD(v28) * v30 + HIDWORD(v40);
  v42 = v37 | (v40 << 32);
  v43 = HIDWORD(v39);
  v44 = v39 * v30;
  v45 = v39 * v31;
  v46 = HIDWORD(v44) + HIDWORD(v39) * v30;
  v47 = HIDWORD(v39) * v31 + v44 + HIDWORD(v45);
  v48 = v46 + HIDWORD(v47);
  v49 = v45 | (v47 << 32);
  v50 = v38 * v30;
  v51 = v38 * v31;
  v52 = HIDWORD(v50) + HIDWORD(v38) * v30;
  v53 = HIDWORD(v38) * v31 + v50 + HIDWORD(v51);
  v54 = HIDWORD(v53);
  v55 = v51 | (v53 << 32);
  v56 = __CFADD__(v34, v42);
  v57 = v34 + v42;
  v58 = v49 + v56 + v41;
  v60 = (__CFADD__(v56, v41) | __CFADD__(v49, v56 + v41)) + v48;
  v56 = __CFADD__(__CFADD__(v56, v41) | __CFADD__(v49, v56 + v41), v48) | __CFADD__(v55, v60);
  v59 = v55 + v60;
  v61 = v54 + v56 + v52;
  v62 = HIDWORD(v17);
  LODWORD(v48) = v17;
  v63 = v33 * HIDWORD(v17);
  v64 = v29 * v17;
  v65 = v32 * v17;
  v66 = HIDWORD(v63) + v32 * HIDWORD(v17);
  v67 = v65 + v63 + HIDWORD(v64);
  v68 = v66 + HIDWORD(v67);
  v69 = v28 * HIDWORD(v17);
  v70 = v28 * v17;
  v71 = v35 * v17;
  v72 = HIDWORD(v69) + v35 * HIDWORD(v17);
  v73 = v71 + v69 + HIDWORD(v70);
  v74 = v72 + HIDWORD(v73);
  v75 = v70 | (v73 << 32);
  v76 = v39 * HIDWORD(v17);
  v77 = v39 * v17;
  v78 = v43 * v17;
  v79 = HIDWORD(v76) + v43 * HIDWORD(v17);
  v80 = v78 + v76 + HIDWORD(v77);
  v81 = v77 | (v80 << 32);
  v82 = v38 * HIDWORD(v17);
  v83 = v38 * v17;
  v84 = HIDWORD(v82) + HIDWORD(v38) * v62;
  v85 = HIDWORD(v38) * v48 + v82 + HIDWORD(v83);
  v86 = v83 | (v85 << 32);
  v87 = __PAIR128__(v81, v68) + v75;
  v88 = __CFADD__(__CFADD__(v68, v75), v81);
  v89 = v79 + HIDWORD(v80);
  v90 = v74 + *(&v87 + 1);
  v91 = __CFADD__(v74, *(&v87 + 1)) || v88;
  v56 = __CFADD__(v86, v91);
  v92 = v86 + v91;
  LODWORD(v93) = v56;
  v56 = __CFADD__(v89, v92);
  v94 = v89 + v92;
  v95 = v84 + HIDWORD(v85);
  if (v56)
  {
    v93 = 1;
  }

  else
  {
    v93 = v93;
  }

  v96 = v95 + v93;
  v97 = v64 | (v67 << 32);
  v98 = __CFADD__(v97, v57) + v87;
  v99 = __CFADD__(__CFADD__(v97, v57), v87);
  v100 = v58 + v98;
  v101 = __CFADD__(v58, v98) || v99;
  v56 = __CFADD__(v90, v101);
  v102 = v90 + v101;
  LODWORD(v103) = v56;
  v56 = __CFADD__(v102, v59);
  v104 = v102 + v59;
  if (v56)
  {
    v103 = 1;
  }

  else
  {
    v103 = v103;
  }

  v56 = __CFADD__(v94, v103);
  v105 = v94 + v103;
  LODWORD(v106) = v56;
  v56 = __CFADD__(v61, v105);
  v107 = v61 + v105;
  if (v56)
  {
    v106 = 1;
  }

  else
  {
    v106 = v106;
  }

  result = v96 + v106;
  if (v24 <= 0)
  {
    if ((1 - v24) >= 0x73)
    {
      v109 = 115;
    }

    else
    {
      v109 = 1 - v24;
    }

    if (v24 > -63)
    {
      v108 = v96 + v106;
    }

    else
    {
      v108 = 0;
      if ((1 - v24) < 0x41)
      {
        v24 = 1;
        goto LABEL_77;
      }

      v109 -= 64;
      v100 = v104;
      v104 = v107;
      v107 = result;
    }

    v100 = (v104 << -v109) + (v100 >> v109);
    v104 = (v107 << -v109) + (v104 >> v109);
    result = (v108 << -v109) + (v107 >> v109);
    v108 >>= v109;
    v24 = 1;
  }

  else
  {
    v108 = v96 + v106;
    result = v107;
  }

  v107 = v104;
  v104 = v100;
LABEL_77:
  if (bid_roundbound_128[(4 * a3) | (2 * v16) | result & 1] < __PAIR128__(v107, v104))
  {
    v56 = __CFADD__(result++, 1);
    if (v56)
    {
      if (++v108 == 0x2000000000000)
      {
        result = 0;
        ++v24;
        v108 = 0x1000000000000;
      }

      else
      {
        result = 0;
        if (v108 == 0x1000000000000 && v24 == 1)
        {
          result = 0;
          v108 = 0x1000000000000;
          if (v16 + a3 == 2 && (v107 & 0x8000000000000000) == 0)
          {
            result = 0;
            *a4 |= 0x10u;
          }

          goto LABEL_92;
        }
      }
    }
  }

  if (v24 >= 0x7FFF)
  {
    goto LABEL_85;
  }

LABEL_92:
  v111 = HIWORD(v108);
  if (v107 | v104)
  {
    v112 = *a4;
    *a4 |= 0x20u;
    if (!v111)
    {
      *a4 = v112 | 0x30;
    }
  }

  return result;
}

unint64_t __binary64_to_bid128(int a1, _DWORD *a2, double a3)
{
  v4 = a1;
  v6 = (*&a3 >> 52) & 0x7FFLL;
  v7 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (v6)
  {
    if ((~*&a3 & 0x7FF0000000000000) == 0)
    {
      if (v7)
      {
        if ((*&a3 & 0x8000000000000) == 0)
        {
          *a2 |= 1u;
        }

        if (*&a3 << 13 > 0xC5371912364FFFFFLL)
        {
          return 0;
        }

        v7 = *&a3 << 59;
        if (*&a3 << 59 > 0x38C15B09FFFFFFFFuLL && ((*&a3 >> 5) & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
        {
          return 0;
        }
      }

      return v7;
    }

    v14 = (v7 | 0x10000000000000) & -(v7 | 0x10000000000000);
    v11 = v6 - 1075;
    if ((v14 & 0x5555555555555555) != 0)
    {
      v15 = 60;
    }

    else
    {
      v15 = 61;
    }

    v12 = (v7 | 0x10000000000000) << 11;
    if (v6 > 0x46F)
    {
      goto LABEL_35;
    }

    v16 = vdupq_n_s64(v14);
    v13 = vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v16, xmmword_1C1F58D70)), vceqzq_s64(vandq_s8(v16, xmmword_1C1F58D40))), xmmword_1C1F58D80)) + (v15 | (2 * ((v14 & 0x3333333333333333) == 0)));
  }

  else
  {
    if (!v7)
    {
      return v7;
    }

    v8 = vdupq_n_s64(*&a3);
    v9 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v8, xmmword_1C1F58D90), vandq_s8(v8, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v8, xmmword_1C1F58D10), vandq_s8(v8, xmmword_1C1F58DA0))));
    *v9.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
    v10 = v9.i32[0] | v9.i32[1] | (2 * ((*&a3 & 0xCCCCCCCCCCCCCuLL) <= (*&a3 & 0x3333333333333uLL)));
    if ((*&a3 & 0xAAAAAAAAAAAAAuLL) <= (*&a3 & 0x5555555555555uLL))
    {
      ++v10;
    }

    v11 = -1063 - v10;
    *a2 |= 2u;
    v12 = v7 << (v10 - 11) << 11;
    v13 = 60;
  }

  v17 = v11 + v13 - 60;
  if ((v17 & 0x80000000) != 0)
  {
    if (v17 >= 0xFFFFFFD0)
    {
      v18 = (60 - (v11 + v13));
      v19 = (&bid_coefflimits_bid128 + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = v12 >> (v13 - 49);
      if (v21 || v22 <= v20)
      {
        v24 = (&bid_power_five + 16 * v18);
        v25 = HIDWORD(*v24);
        v26 = *v24 * HIDWORD(v22);
        v27 = v25 * v22 + v26 + ((*v24 * v22) >> 32);
        v7 = (*v24 * v22) | (v27 << 32);
        v28 = (*&a3 & 0x8000000000000000 | ((v17 + 6176) << 49)) + v25 * HIDWORD(v22) + v24[1] * v22 + HIDWORD(v26) + HIDWORD(v27);
        return v7;
      }
    }

LABEL_35:
    v31 = 17744 - ((19728 * (v11 + 42092) + ((19779 * (v11 + 42092)) >> 16)) >> 16);
    v32 = v31 & 0x7F;
    v33 = v31 >> 7;
    v34 = (&bid_innertable_sig + 32 * v32);
    v35 = *v34;
    v36 = v34[1];
    v38 = v34[2];
    v37 = v34[3];
    v39 = bid_innertable_exp[v32];
    if (v33 != 39)
    {
      v40 = (&bid_outertable_sig + 32 * v33);
      v41 = *v40;
      v42 = v40[1];
      v43 = HIDWORD(*v40);
      v242 = *v40;
      v256 = v12;
      v44 = ((v41 * HIDWORD(v35)) >> 32) + v43 * HIDWORD(v35) + ((v43 * v35 + (v41 * HIDWORD(v35)) + ((v41 * v35) >> 32)) >> 32);
      v45 = v42 * HIDWORD(v35);
      v46 = HIDWORD(v42) * v35 + v45 + ((v42 * v35) >> 32);
      v47 = HIDWORD(v45) + HIDWORD(v42) * HIDWORD(v35) + HIDWORD(v46);
      v49 = v40[2];
      v48 = v40[3];
      v255 = v39;
      v50 = v49 * HIDWORD(v35);
      v254 = v33;
      v51 = HIDWORD(v49) * v35 + v50 + ((v49 * v35) >> 32);
      v52 = HIDWORD(v50) + HIDWORD(v49) * HIDWORD(v35) + HIDWORD(v51);
      v53 = v48 * HIDWORD(v35);
      v54 = (v42 * v35) | (v46 << 32);
      v55 = (v49 * v35) | (v51 << 32);
      v252 = HIDWORD(v48) * v35 + v53 + ((v48 * v35) >> 32);
      v253 = HIDWORD(v53) + HIDWORD(v48) * HIDWORD(v35);
      v56 = (v48 * v35) | (v252 << 32);
      v249 = v44 + v54;
      v57 = __CFADD__(v44, v54) + v55;
      v58 = __CFADD__(__CFADD__(v44, v54), v55);
      v251 = v47 + v57;
      v59 = __CFADD__(v47, v57) || v58;
      v30 = __CFADD__(v56, v59);
      v60 = v56 + v59;
      LODWORD(v61) = v30;
      v250 = v52 + v60;
      v62 = v242 * HIDWORD(v36);
      v63 = HIDWORD(v62) + v43 * HIDWORD(v36);
      v64 = v43 * v36 + v62 + ((v41 * v36) >> 32);
      v65 = v63 + HIDWORD(v64);
      v66 = (v41 * v36) | (v64 << 32);
      v67 = v42 * HIDWORD(v36);
      v68 = HIDWORD(v67) + HIDWORD(v42) * HIDWORD(v36);
      v69 = HIDWORD(v42) * v36 + v67 + ((v42 * v36) >> 32);
      v70 = v68 + HIDWORD(v69);
      v71 = (v42 * v36) | (v69 << 32);
      v72 = v49 * HIDWORD(v36);
      v73 = HIDWORD(v49) * v36 + v72 + ((v49 * v36) >> 32);
      v74 = HIDWORD(v72) + HIDWORD(v49) * HIDWORD(v36) + HIDWORD(v73);
      v75 = (v49 * v36) | (v73 << 32);
      v76 = v48 * HIDWORD(v36);
      v248 = HIDWORD(v76) + HIDWORD(v48) * HIDWORD(v36);
      if (__CFADD__(v52, v60))
      {
        v61 = 1;
      }

      else
      {
        v61 = v61;
      }

      v246 = v61;
      v247 = HIDWORD(v48) * v36 + v76 + ((v48 * v36) >> 32);
      v77 = (v48 * v36) | (v247 << 32);
      v243 = v65 + v71;
      v78 = __CFADD__(v65, v71) + v75;
      v79 = __CFADD__(__CFADD__(v65, v71), v75);
      v245 = v70 + v78;
      v80 = __CFADD__(v70, v78) || v79;
      v30 = __CFADD__(v77, v80);
      v81 = v77 + v80;
      LODWORD(v82) = v30;
      v30 = __CFADD__(v74, v81);
      v244 = v74 + v81;
      v83 = v42 * HIDWORD(v38);
      v84 = HIDWORD(v42) * v38 + v83 + ((v42 * v38) >> 32);
      v85 = HIDWORD(v83) + HIDWORD(v42) * HIDWORD(v38) + HIDWORD(v84);
      v86 = (v42 * v38) | (v84 << 32);
      v87 = v49 * HIDWORD(v38);
      v88 = HIDWORD(v49) * v38 + v87 + ((v49 * v38) >> 32);
      v89 = HIDWORD(v87) + HIDWORD(v49) * HIDWORD(v38) + HIDWORD(v88);
      v90 = (v49 * v38) | (v88 << 32);
      v91 = v242 * HIDWORD(v38);
      v92 = v43 * v38 + v91;
      v258 = a2;
      v93 = HIDWORD(v91) + v43 * HIDWORD(v38);
      v94 = v48 * HIDWORD(v38);
      v95 = HIDWORD(v94) + HIDWORD(v48) * HIDWORD(v38);
      v96 = HIDWORD(v48) * v38 + v94;
      if (v30)
      {
        v82 = 1;
      }

      else
      {
        v82 = v82;
      }

      v97 = v41 * v38;
      v98 = v92 + HIDWORD(v97);
      v99 = v93 + HIDWORD(v98);
      v100 = __PAIR128__(v90, v99) + v86;
      v101 = __CFADD__(__CFADD__(v99, v86), v90);
      v102 = v85 + *(&v100 + 1);
      v103 = v48 * v38;
      v104 = v96 + HIDWORD(v103);
      v105 = v103 | (v104 << 32);
      v106 = __CFADD__(v85, *(&v100 + 1)) || v101;
      v30 = __CFADD__(v105, v106);
      v107 = v105 + v106;
      v108 = v30;
      v30 = __CFADD__(v89, v107);
      v109 = v89 + v107;
      v110 = v242 * HIDWORD(v37);
      v111 = HIDWORD(v110) + v43 * HIDWORD(v37);
      v112 = v43 * v37 + v110;
      v113 = v42 * HIDWORD(v37);
      v114 = HIDWORD(v113) + HIDWORD(v42) * HIDWORD(v37);
      v115 = v42 * v37;
      v116 = HIDWORD(v42) * v37 + v113 + HIDWORD(v115);
      v117 = v114 + HIDWORD(v116);
      v118 = v115 | (v116 << 32);
      v119 = v49 * HIDWORD(v37);
      v120 = HIDWORD(v119) + HIDWORD(v49) * HIDWORD(v37);
      v121 = HIDWORD(v49) * v37 + v119 + ((v49 * v37) >> 32);
      v122 = v120 + HIDWORD(v121);
      v123 = (v49 * v37) | (v121 << 32);
      v124 = v48 * HIDWORD(v37);
      v125 = HIDWORD(v124) + HIDWORD(v48) * HIDWORD(v37);
      v126 = HIDWORD(v48) * v37 + v124;
      if (v30)
      {
        v127 = 1;
      }

      else
      {
        v127 = v108;
      }

      v128 = v41 * v37;
      v129 = v112 + HIDWORD(v128);
      v130 = v111 + HIDWORD(v129);
      v131 = __PAIR128__(v123, v130) + v118;
      v132 = __CFADD__(__CFADD__(v130, v118), v123);
      v30 = __CFADD__(v117, *(&v131 + 1));
      v133 = v117 + *(&v131 + 1);
      v134 = v126 + ((v48 * v37) >> 32);
      v135 = (v48 * v37) | (v134 << 32);
      v136 = v30 || v132;
      v30 = __CFADD__(v135, v136);
      v137 = v135 + v136;
      v138 = v30;
      v139 = v122 + v137;
      if (__CFADD__(v122, v137))
      {
        v140 = 1;
      }

      else
      {
        v140 = v138;
      }

      v141 = v253 + HIDWORD(v252) + v246;
      v142 = __CFADD__(v66, v249) + v243;
      v143 = v97 | (v98 << 32);
      LODWORD(v144) = __CFADD__(__CFADD__(v66, v249), v243);
      v30 = __CFADD__(v251, v142);
      v145 = v251 + v142;
      if (v30)
      {
        v144 = 1;
      }

      else
      {
        v144 = v144;
      }

      v30 = __CFADD__(v245, v144);
      v146 = v245 + v144;
      LODWORD(v147) = v30;
      v30 = __CFADD__(v146, v250);
      v148 = v146 + v250;
      if (v30)
      {
        v147 = 1;
      }

      else
      {
        v147 = v147;
      }

      v30 = __CFADD__(v244, v147);
      v149 = v244 + v147;
      v150 = v30;
      v30 = __CFADD__(v141, v149);
      v151 = v141 + v149;
      if (v30)
      {
        v152 = 1;
      }

      else
      {
        v152 = v150;
      }

      v153 = v128 | (v129 << 32);
      v154 = v248 + HIDWORD(v247) + v82 + v152;
      a2 = v258;
      v155 = __CFADD__(v143, v145) + v100;
      LODWORD(v156) = __CFADD__(__CFADD__(v143, v145), v100);
      v30 = __CFADD__(v148, v155);
      v157 = v148 + v155;
      if (v30)
      {
        v156 = 1;
      }

      else
      {
        v156 = v156;
      }

      v30 = __CFADD__(v102, v156);
      v158 = v102 + v156;
      v159 = v30;
      v30 = __CFADD__(v158, v151);
      v160 = v158 + v151;
      if (v30)
      {
        v161 = 1;
      }

      else
      {
        v161 = v159;
      }

      v30 = __CFADD__(v109, v161);
      v162 = v109 + v161;
      LODWORD(v163) = v30;
      v30 = __CFADD__(v154, v162);
      v164 = v154 + v162;
      if (v30)
      {
        v163 = 1;
      }

      else
      {
        v163 = v163;
      }

      v4 = a1;
      v165 = v125 + HIDWORD(v134) + v140;
      v166 = v95 + HIDWORD(v104) + v127 + v163;
      v167 = __CFADD__(v153, v157) + v131;
      v12 = v256;
      v168 = __CFADD__(__CFADD__(v153, v157), v131);
      v30 = __CFADD__(v160, v167);
      v169 = v160 + v167;
      v170 = v30 || v168;
      v30 = __CFADD__(v133, v170);
      v171 = v133 + v170;
      v172 = v30;
      v36 = v171 + v164;
      if (__CFADD__(v171, v164))
      {
        v173 = 1;
      }

      else
      {
        v173 = v172;
      }

      v30 = __CFADD__(v139, v173);
      v174 = v139 + v173;
      v175 = v30;
      v38 = v166 + v174;
      if (__CFADD__(v166, v174))
      {
        v176 = 1;
      }

      else
      {
        v176 = v175;
      }

      v37 = v165 + v176;
      LOBYTE(v39) = v255 + bid_outertable_exp[4 * v254];
      v35 = v169 + 1;
    }

    v177 = HIDWORD(v35);
    v178 = v35;
    v179 = HIDWORD(v38);
    v180 = HIDWORD(v37);
    v181 = v38;
    v182 = HIDWORD(v12);
    v183 = v178 * HIDWORD(v12);
    v184 = HIDWORD(v183);
    v185 = v12 & 0xFFFFF800;
    v186 = v178 * v185;
    v187 = v177 * v185 + v183 + HIDWORD(v186);
    v188 = v184 + v177 * v182 + HIDWORD(v187);
    v189 = v36 * v182;
    v190 = v36 * v185;
    v191 = HIDWORD(v189);
    v192 = HIDWORD(v36) * v185 + v189 + HIDWORD(v190);
    v193 = v191 + HIDWORD(v36) * v182 + HIDWORD(v192);
    v194 = v190 | (v192 << 32);
    v195 = v181 * v182;
    v196 = v181 * v185;
    v197 = v179 * v185;
    v198 = HIDWORD(v195) + v179 * v182;
    v199 = v197 + v195 + HIDWORD(v196);
    v200 = v198 + HIDWORD(v199);
    v201 = v196;
    v202 = v37 * v182;
    v203 = v201 | (v199 << 32);
    v204 = v37 * v185;
    v205 = v180 * v185;
    v206 = HIDWORD(v202) + v180 * v182;
    v207 = v205 + v202;
    v30 = __CFADD__(v188, v194);
    v208 = v188 + v194;
    v209 = v207 + HIDWORD(v204);
    v210 = v204 | (v209 << 32);
    v211 = v203 + v30 + v193;
    v212 = v210 + (__CFADD__(v30, v193) | __CFADD__(v203, v30 + v193)) + v200;
    v213 = HIDWORD(v209) + (__CFADD__(__CFADD__(v30, v193) | __CFADD__(v203, v30 + v193), v200) | __CFADD__(v210, (__CFADD__(v30, v193) | __CFADD__(v203, v30 + v193)) + v200)) + v206;
    v214 = v39 + v11 - 11;
    v215 = (v211 << v214) + (v208 >> (75 - (v39 + v11)));
    v216 = (v212 << v214) + (v211 >> (75 - (v39 + v11)));
    v7 = (v213 << v214) + (v212 >> (75 - (v39 + v11)));
    v217 = v213 >> (75 - (v39 + v11));
    if (v217 < 0x314DC6448D93 || v217 == 0x314DC6448D93 && v7 < 0x38C15B0A00000000)
    {
      v218 = v186 | (v187 << 32);
      v219 = v218 << v214;
      v220 = (v208 << v214) + (v218 >> (75 - (v39 + v11)));
      v30 = __CFADD__(v219, v219 >> 2);
      v221 = v219 + (v219 >> 2);
      v222 = 8;
      if (v30)
      {
        v223 = 8;
      }

      else
      {
        v223 = 0;
      }

      v224 = v223 & 0xFFFFFFFFFFFFFFF8 | (v221 >> 61);
      v225 = v220 + (v220 >> 2);
      if (__CFADD__(v220, v220 >> 2))
      {
        v226 = 8;
      }

      else
      {
        v226 = 0;
      }

      v227 = v226 & 0xFFFFFFFFFFFFFFF8 | (v225 >> 61);
      v228 = (2 * (v220 & 3)) | (8 * v225);
      v229 = v215 + (v215 >> 2);
      if (__CFADD__(v215, v215 >> 2))
      {
        v230 = 8;
      }

      else
      {
        v230 = 0;
      }

      v231 = v216 + (v216 >> 2);
      if (__CFADD__(v216, v216 >> 2))
      {
        v232 = 8;
      }

      else
      {
        v232 = 0;
      }

      v233 = v7 + (v7 >> 2);
      if (!__CFADD__(v7, v7 >> 2))
      {
        v222 = 0;
      }

      v30 = __CFADD__(v228, v224);
      v234 = v230 & 0xFFFFFFFFFFFFFFF8 | (v229 >> 61);
      v235 = (2 * (v215 & 3)) | (8 * v229);
      v236 = v30;
      v30 = __CFADD__(v30, v235) | __CFADD__(v227, v30 + v235);
      v215 = v227 + v236 + v235;
      v237 = v232 & 0xFFFFFFFFFFFFFFF8 | (v231 >> 61);
      v238 = (2 * (v216 & 3)) | (8 * v231);
      v239 = v30;
      v30 = __CFADD__(v30, v238) | __CFADD__(v234, v30 + v238);
      v216 = v234 + v239 + v238;
      v240 = (2 * (v7 & 3)) | (8 * v233);
      v7 = v237 + v30 + v240;
      v217 = v222 + (__CFADD__(v30, v240) | __CFADD__(v237, v30 + v240)) + ((2 * (v217 & 3)) | (8 * (v217 + (v217 >> 2)))) + (v233 >> 61);
    }

    if (bid_roundbound_128[(*&a3 >> 62) & 2 | (4 * v4) | v7 & 1] < __PAIR128__(v216, v215))
    {
      v30 = __CFADD__(v7++, 1);
      if (v30)
      {
        v7 = 0;
      }

      else if (v217 == 0x1ED09BEAD87C0 && v7 == 0x378D8E6400000000)
      {
        v7 = 0x38C15B0A00000000;
      }
    }

    if (v216 | v215)
    {
      *a2 |= 0x20u;
    }

    return v7;
  }

  if (v11 <= 11)
  {
    return v12 >> (11 - v11);
  }

  v7 = v12 << (v11 - 11);
  v29 = v12 >> (75 - v11);
  if (v29 >= 0x1ED09BEAD87C0)
  {
    v30 = v29 != 0x1ED09BEAD87C0 || v7 >= 0x378D8E6400000000;
    if (v30)
    {
      goto LABEL_35;
    }
  }

  return v7;
}

unint64_t __binary128_to_bid128(unint64_t a1, unint64_t a2, int a3, _DWORD *a4)
{
  v4 = a4;
  v6 = HIWORD(a2) & 0x7FFF;
  v7 = a2 & 0xFFFFFFFFFFFFLL;
  if (!v6)
  {
    if (!(v7 | a1))
    {
      return 0;
    }

    if (v7)
    {
      v11 = vdupq_n_s64(a2);
      v12 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v11, xmmword_1C1F58DB0), vandq_s8(v11, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v11, xmmword_1C1F58D10), vandq_s8(v11, xmmword_1C1F58DC0))));
      v13 = 2 * ((a2 & 0xCCCCCCCCCCCCLL) <= (a2 & 0x333333333333));
      v14 = (a2 & 0xAAAAAAAAAAAALL) <= (a2 & 0x555555555555);
    }

    else
    {
      if (!a1)
      {
        v28 = 128;
        goto LABEL_34;
      }

      v26 = vdupq_n_s64(a1);
      v13 = 2 * ((a1 & 0xCCCCCCCCCCCCCCCCLL) <= (a1 & 0x3333333333333333));
      v14 = (a1 & 0xAAAAAAAAAAAAAAAALL) <= (a1 & 0x5555555555555555);
      v12 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vandq_s8(v26, xmmword_1C1F58D30), vandq_s8(v26, xmmword_1C1F58D40)), vcgtq_u64(vandq_s8(v26, xmmword_1C1F58C80), vandq_s8(v26, xmmword_1C1F58CA0))), xmmword_1C1F58D60, xmmword_1C1F58D50);
    }

    v27 = vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    v28 = v27.i32[0] | v13 | v27.i32[1] | v14;
    v29 = v28 - 15;
    if (v28 == 15)
    {
LABEL_35:
      v21 = 0;
      v22 = -16479 - v28;
      *a4 |= 2u;
      *(&v30 + 1) = v7;
      *&v30 = a1;
      v23 = v30 >> 49;
      v25 = a1 << 15;
      goto LABEL_36;
    }

    if (v28 < 0x4F)
    {
      v7 = (v7 << v29) + (a1 >> (79 - v28));
      a1 <<= v29;
      goto LABEL_35;
    }

LABEL_34:
    v7 = a1 << (v28 - 79);
    a1 = 0;
    goto LABEL_35;
  }

  if ((~a2 & 0x7FFF000000000000) == 0)
  {
    if (!(v7 | a1))
    {
      return 0;
    }

    if ((a2 & 0x800000000000) == 0)
    {
      *a4 |= 1u;
    }

    *(&v9 + 1) = a2;
    *&v9 = a1;
    v8 = v9 >> 47;
    if (v8 > 0xC5371912364FFFFFLL || v8 >> 18 == 0x314DC6448D93 && ((a1 >> 1) & 0x3FFE00000000 | (v8 << 46)) > 0x38C15B09FFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return (v8 << 46) | (a1 >> 1) & 0x3FFFFFFFFFFFLL;
    }
  }

  v15 = v7 | 0x1000000000000;
  v16 = a1 & -a1;
  if ((v16 & 0x5555555555555555) != 0)
  {
    v17 = (16 * ((v16 & 0xFFFF0000FFFFLL) == 0)) | (32 * (v16 == 0)) | (8 * ((v16 & 0xFF00FF00FF00FFLL) == 0)) | (4 * ((v16 & 0xF0F0F0F0F0F0F0FLL) == 0)) | (2 * ((v16 & 0x3333333333333333) == 0));
  }

  else
  {
    v17 = ((16 * ((v16 & 0xFFFF0000FFFFLL) == 0)) | (32 * (v16 == 0)) | (8 * ((v16 & 0xFF00FF00FF00FFLL) == 0)) | (4 * ((v16 & 0xF0F0F0F0F0F0F0FLL) == 0)) | (2 * ((v16 & 0x3333333333333333) == 0))) + 1;
  }

  v18 = v15 & -v15;
  if ((v18 & 0xFFFF0000FFFFLL) != 0)
  {
    v19 = 64;
  }

  else
  {
    v19 = 80;
  }

  v20 = (v18 & 0x1555555555555) == 0;
  v21 = v19 | (32 * (v18 == 0)) | (8 * ((v18 & 0x100FF00FF00FFLL) == 0)) | (4 * ((v18 & 0x10F0F0F0F0F0FLL) == 0)) | (2 * ((v18 & 0x1333333333333) == 0));
  if (v20)
  {
    ++v21;
  }

  if (a1)
  {
    v21 = v17;
  }

  v22 = v6 - 16495;
  *(&v24 + 1) = v15;
  *&v24 = a1;
  v23 = v24 >> 49;
  v25 = a1 << 15;
  if (v6 >> 4 > 0x406)
  {
    goto LABEL_54;
  }

LABEL_36:
  v31 = v21 + v22;
  if (((v21 + v22) & 0x80000000) != 0)
  {
    if (v31 >= 0xFFFFFFD0)
    {
      v32 = -v31;
      v33 = (&bid_coefflimits_bid128 + 16 * v32);
      v34 = v33[1];
      v35 = (v23 << (49 - v21)) + (v25 >> (v21 + 15));
      v36 = v23 >> (v21 - 49);
      v37 = v21 >= 0x31;
      v38 = v21 >= 0x31 ? 0 : v23 >> (v21 + 15);
      v39 = v37 ? v36 : v35;
      if (v38 < v34 || v38 == v34 && v39 <= *v33)
      {
        v40 = (&bid_power_five + 16 * v32);
        v41 = *v40 * HIDWORD(v39);
        v42 = HIDWORD(*v40) * v39 + v41 + ((*v40 * v39) >> 32);
        result = (*v40 * v39) | (v42 << 32);
        v43 = (a2 & 0x8000000000000000 | ((v31 + 6176) << 49)) + *v40 * v38 + v40[1] * v39 + HIDWORD(*v40) * HIDWORD(v39) + HIDWORD(v41) + HIDWORD(v42);
        return result;
      }
    }

    goto LABEL_54;
  }

  if (v22 <= -49)
  {
    return v23 >> (-49 - v22);
  }

  result = (v23 << (v22 + 49)) + (v25 >> (15 - v22));
  v44 = v23 >> (15 - v22);
  if (v44 >= 0x1ED09BEAD87C0 && (v44 != 0x1ED09BEAD87C0 || result >= 0x378D8E6400000000))
  {
LABEL_54:
    v321 = v22;
    v45 = 17744 - ((19728 * (v22 + 42152) + ((19779 * (v22 + 42152)) >> 16)) >> 16);
    v46 = v45 & 0x7F;
    v47 = v45 >> 7;
    v48 = (&bid_innertable_sig + 32 * v46);
    v50 = *v48;
    v49 = v48[1];
    v52 = v48[2];
    v51 = v48[3];
    if (v47 == 39)
    {
      v53 = bid_innertable_exp[v46];
    }

    else
    {
      v319 = v25;
      v54 = (&bid_outertable_sig + 32 * v47);
      v56 = *v54;
      v55 = v54[1];
      v57 = HIDWORD(*v54);
      v58 = *v54;
      v59 = ((v58 * HIDWORD(v50)) >> 32) + v57 * HIDWORD(v50) + ((v57 * v50 + v58 * HIDWORD(v50) + ((v58 * v50) >> 32)) >> 32);
      v60 = v55 * HIDWORD(v50);
      v61 = HIDWORD(v55) * v50 + v60 + ((v55 * v50) >> 32);
      v62 = HIDWORD(v60) + HIDWORD(v55) * HIDWORD(v50) + HIDWORD(v61);
      v64 = v54[2];
      v63 = v54[3];
      v320 = v4;
      v65 = v64 * HIDWORD(v50);
      v66 = HIDWORD(v64) * v50 + v65 + ((v64 * v50) >> 32);
      v67 = HIDWORD(v65) + HIDWORD(v64) * HIDWORD(v50) + HIDWORD(v66);
      v318 = v47;
      v68 = v63 * HIDWORD(v50);
      v317 = bid_innertable_exp[v46];
      v69 = (v55 * v50) | (v61 << 32);
      v70 = (v64 * v50) | (v66 << 32);
      v315 = HIDWORD(v63) * v50 + v68 + ((v63 * v50) >> 32);
      v316 = HIDWORD(v68) + HIDWORD(v63) * HIDWORD(v50);
      v71 = (v63 * v50) | (v315 << 32);
      v312 = v59 + v69;
      v72 = __CFADD__(v59, v69) + v70;
      v73 = __CFADD__(__CFADD__(v59, v69), v70);
      v314 = v62 + v72;
      v74 = __CFADD__(v62, v72) || v73;
      v37 = __CFADD__(v71, v74);
      v75 = v71 + v74;
      LODWORD(v76) = v37;
      v37 = __CFADD__(v67, v75);
      v313 = v67 + v75;
      v77 = v58 * HIDWORD(v49);
      v78 = HIDWORD(v77) + v57 * HIDWORD(v49);
      v79 = v57 * v49 + v77 + ((v56 * v49) >> 32);
      v80 = v78 + HIDWORD(v79);
      v81 = (v56 * v49) | (v79 << 32);
      v82 = v55 * HIDWORD(v49);
      v83 = HIDWORD(v82) + HIDWORD(v55) * HIDWORD(v49);
      v84 = HIDWORD(v55) * v49 + v82 + ((v55 * v49) >> 32);
      v85 = v83 + HIDWORD(v84);
      v86 = (v55 * v49) | (v84 << 32);
      v87 = v64 * HIDWORD(v49);
      v88 = HIDWORD(v64) * v49 + v87 + ((v64 * v49) >> 32);
      v89 = HIDWORD(v87) + HIDWORD(v64) * HIDWORD(v49) + HIDWORD(v88);
      v90 = (v64 * v49) | (v88 << 32);
      v91 = v63 * HIDWORD(v49);
      v311 = HIDWORD(v91) + HIDWORD(v63) * HIDWORD(v49);
      if (v37)
      {
        v76 = 1;
      }

      else
      {
        v76 = v76;
      }

      v310 = v76;
      v92 = HIDWORD(v63) * v49 + v91 + ((v63 * v49) >> 32);
      v93 = (v63 * v49) | (v92 << 32);
      v307 = v80 + v86;
      v94 = __CFADD__(v80, v86) + v90;
      v95 = __CFADD__(__CFADD__(v80, v86), v90);
      v309 = v85 + v94;
      v96 = __CFADD__(v85, v94) || v95;
      v37 = __CFADD__(v93, v96);
      v97 = v93 + v96;
      v98 = v37;
      v37 = __CFADD__(v89, v97);
      v308 = v89 + v97;
      v99 = v55 * HIDWORD(v52);
      v100 = HIDWORD(v55) * v52 + v99 + ((v55 * v52) >> 32);
      v101 = HIDWORD(v99) + HIDWORD(v55) * HIDWORD(v52) + HIDWORD(v100);
      v102 = (v55 * v52) | (v100 << 32);
      v103 = v64 * HIDWORD(v52);
      v104 = HIDWORD(v64) * v52 + v103 + ((v64 * v52) >> 32);
      v105 = HIDWORD(v103) + HIDWORD(v64) * HIDWORD(v52) + HIDWORD(v104);
      v106 = (v64 * v52) | (v104 << 32);
      v107 = v58 * HIDWORD(v52);
      v108 = v57 * v52 + v107;
      v109 = HIDWORD(v107) + v57 * HIDWORD(v52);
      v110 = v63 * HIDWORD(v52);
      v111 = HIDWORD(v110) + HIDWORD(v63) * HIDWORD(v52);
      v112 = HIDWORD(v63) * v52 + v110;
      if (v37)
      {
        v113 = 1;
      }

      else
      {
        v113 = v98;
      }

      v114 = v56 * v52;
      v115 = v108 + HIDWORD(v114);
      v116 = v109 + HIDWORD(v115);
      v117 = __PAIR128__(v106, v116) + v102;
      LODWORD(v118) = __CFADD__(__CFADD__(v116, v102), v106);
      v119 = v101 + *(&v117 + 1);
      v120 = v63 * v52;
      v121 = v112 + HIDWORD(v120);
      v122 = v120 | (v121 << 32);
      if (__CFADD__(v101, *(&v117 + 1)))
      {
        v118 = 1;
      }

      else
      {
        v118 = v118;
      }

      v37 = __CFADD__(v122, v118);
      v123 = v122 + v118;
      v124 = v37;
      v37 = __CFADD__(v105, v123);
      v125 = v105 + v123;
      v126 = v58 * HIDWORD(v51);
      v127 = HIDWORD(v126) + v57 * HIDWORD(v51);
      v128 = v57 * v51 + v126;
      v129 = v55 * HIDWORD(v51);
      v130 = HIDWORD(v129) + HIDWORD(v55) * HIDWORD(v51);
      v131 = v55 * v51;
      v132 = HIDWORD(v55) * v51 + v129 + HIDWORD(v131);
      v133 = v130 + HIDWORD(v132);
      v134 = v131 | (v132 << 32);
      v135 = v64 * HIDWORD(v51);
      v136 = HIDWORD(v135) + HIDWORD(v64) * HIDWORD(v51);
      v137 = HIDWORD(v64) * v51 + v135 + ((v64 * v51) >> 32);
      v138 = v136 + HIDWORD(v137);
      v139 = (v64 * v51) | (v137 << 32);
      v140 = v63 * HIDWORD(v51);
      v141 = HIDWORD(v140) + HIDWORD(v63) * HIDWORD(v51);
      v142 = HIDWORD(v63) * v51 + v140;
      if (v37)
      {
        v143 = 1;
      }

      else
      {
        v143 = v124;
      }

      v144 = v56 * v51;
      v145 = v128 + HIDWORD(v144);
      v146 = v127 + HIDWORD(v145);
      v147 = __PAIR128__(v139, v146) + v134;
      v148 = __CFADD__(__CFADD__(v146, v134), v139);
      v149 = v133 + *(&v147 + 1);
      v150 = v63 * v51;
      v151 = v142 + HIDWORD(v150);
      v152 = v150 | (v151 << 32);
      v153 = __CFADD__(v133, *(&v147 + 1)) || v148;
      v37 = __CFADD__(v152, v153);
      v154 = v152 + v153;
      LODWORD(v155) = v37;
      v37 = __CFADD__(v138, v154);
      v156 = v138 + v154;
      v4 = v320;
      if (v37)
      {
        v155 = 1;
      }

      else
      {
        v155 = v155;
      }

      v37 = __CFADD__(v81, v312);
      v157 = v316 + HIDWORD(v315) + v310;
      v158 = v37 + v307;
      v159 = v114 | (v115 << 32);
      LODWORD(v160) = __CFADD__(v37, v307);
      v37 = __CFADD__(v314, v158);
      v161 = v314 + v158;
      if (v37)
      {
        v160 = 1;
      }

      else
      {
        v160 = v160;
      }

      v37 = __CFADD__(v309, v160);
      v162 = v309 + v160;
      LODWORD(v163) = v37;
      v37 = __CFADD__(v162, v313);
      v164 = v162 + v313;
      if (v37)
      {
        v163 = 1;
      }

      else
      {
        v163 = v163;
      }

      v37 = __CFADD__(v308, v163);
      v165 = v308 + v163;
      v166 = v37;
      v37 = __CFADD__(v157, v165);
      v167 = v157 + v165;
      if (v37)
      {
        v168 = 1;
      }

      else
      {
        v168 = v166;
      }

      v169 = v144 | (v145 << 32);
      v170 = v311 + HIDWORD(v92) + v113 + v168;
      v171 = __CFADD__(v159, v161) + v117;
      LODWORD(v172) = __CFADD__(__CFADD__(v159, v161), v117);
      v37 = __CFADD__(v164, v171);
      v173 = v164 + v171;
      if (v37)
      {
        v172 = 1;
      }

      else
      {
        v172 = v172;
      }

      v37 = __CFADD__(v119, v172);
      v174 = v119 + v172;
      v175 = v37;
      v37 = __CFADD__(v174, v167);
      v176 = v174 + v167;
      if (v37)
      {
        v177 = 1;
      }

      else
      {
        v177 = v175;
      }

      v37 = __CFADD__(v125, v177);
      v178 = v125 + v177;
      LODWORD(v179) = v37;
      v37 = __CFADD__(v170, v178);
      v180 = v170 + v178;
      if (v37)
      {
        v179 = 1;
      }

      else
      {
        v179 = v179;
      }

      v25 = v319;
      v181 = v111 + HIDWORD(v121) + v143 + v179;
      v182 = __CFADD__(v169, v173) + v147;
      v183 = __CFADD__(__CFADD__(v169, v173), v147);
      v37 = __CFADD__(v176, v182);
      v184 = v176 + v182;
      v185 = v37 || v183;
      v37 = __CFADD__(v149, v185);
      v186 = v149 + v185;
      v187 = v37;
      v49 = v186 + v180;
      if (__CFADD__(v186, v180))
      {
        v188 = 1;
      }

      else
      {
        v188 = v187;
      }

      v37 = __CFADD__(v156, v188);
      v189 = v156 + v188;
      v190 = v37;
      v52 = v181 + v189;
      if (__CFADD__(v181, v189))
      {
        v191 = 1;
      }

      else
      {
        v191 = v190;
      }

      v51 = v141 + HIDWORD(v151) + v155 + v191;
      LOBYTE(v53) = v317 + bid_outertable_exp[4 * v318];
      v50 = v184 + 1;
    }

    v192 = HIDWORD(v25);
    v193 = v25 & 0xFFFF8000;
    v194 = v50 * HIDWORD(v25);
    v195 = v50 * (v25 & 0xFFFF8000);
    v196 = HIDWORD(v50) * (v25 & 0xFFFF8000) + v194 + HIDWORD(v195);
    v197 = HIDWORD(v194) + HIDWORD(v50) * HIDWORD(v25) + HIDWORD(v196);
    v198 = HIDWORD(v49);
    v199 = v49 * HIDWORD(v25);
    v200 = HIDWORD(v49) * (v25 & 0xFFFF8000) + v199;
    v201 = v49 * (v25 & 0xFFFF8000);
    v202 = v200 + HIDWORD(v201);
    v203 = HIDWORD(v199) + HIDWORD(v49) * v192 + HIDWORD(v202);
    v204 = v201 | (v202 << 32);
    v205 = HIDWORD(v52);
    v206 = v52 * v192;
    v207 = v52 * v193;
    v208 = HIDWORD(v206) + HIDWORD(v52) * v192;
    v209 = HIDWORD(v52) * v193 + v206 + HIDWORD(v207);
    v210 = v208 + HIDWORD(v209);
    v211 = v207 | (v209 << 32);
    v212 = HIDWORD(v51);
    v213 = v51 * v192;
    v214 = v51 * v193;
    v215 = HIDWORD(v213) + HIDWORD(v51) * v192;
    v216 = HIDWORD(v51) * v193 + v213 + HIDWORD(v214);
    v217 = HIDWORD(v216);
    v218 = v214 | (v216 << 32);
    v37 = __CFADD__(v197, v204);
    v219 = v197 + v204;
    v220 = v211 + v37 + v203;
    v222 = (__CFADD__(v37, v203) | __CFADD__(v211, v37 + v203)) + v210;
    v37 = __CFADD__(__CFADD__(v37, v203) | __CFADD__(v211, v37 + v203), v210) | __CFADD__(v218, v222);
    v221 = v218 + v222;
    v223 = v217 + v37 + v215;
    v224 = HIDWORD(v23);
    v225 = v23;
    v226 = v50 * HIDWORD(v23);
    v227 = v50 * v23;
    v228 = HIDWORD(v226) + HIDWORD(v50) * HIDWORD(v23);
    v229 = HIDWORD(v50) * v23 + v226;
    v230 = v49 * HIDWORD(v23);
    v231 = v49 * v23;
    v232 = v198 * v23;
    v233 = HIDWORD(v230) + v198 * HIDWORD(v23);
    v234 = v232 + v230 + HIDWORD(v231);
    v235 = v231 | (v234 << 32);
    v236 = v229 + HIDWORD(v227);
    v237 = v52 * HIDWORD(v23);
    v238 = v228 + HIDWORD(v236);
    v37 = __CFADD__(v238, v235);
    v239 = v238 + v235;
    v240 = v52 * v23;
    v241 = HIDWORD(v237);
    v242 = v205 * v23 + v237;
    v243 = v241 + v205 * HIDWORD(v23);
    v244 = v242 + HIDWORD(v240);
    v245 = v240 | (v244 << 32);
    v247 = v37;
    v37 = __CFADD__(v37, v245);
    v246 = v247 + v245;
    v248 = v37;
    v249 = v51 * HIDWORD(v23);
    v250 = v233 + HIDWORD(v234);
    v37 = __CFADD__(v250, v246);
    v251 = v250 + v246;
    if (v37)
    {
      v252 = 1;
    }

    else
    {
      v252 = v248;
    }

    v253 = v51 * v23;
    v254 = HIDWORD(v249) + HIDWORD(v51) * v224;
    v255 = v212 * v225 + v249 + HIDWORD(v253);
    v256 = v253 | (v255 << 32);
    v37 = __CFADD__(v256, v252);
    v257 = v256 + v252;
    v258 = v37;
    v259 = v243 + HIDWORD(v244);
    v37 = __CFADD__(v259, v257);
    v260 = v259 + v257;
    if (v37)
    {
      v261 = 1;
    }

    else
    {
      v261 = v258;
    }

    v262 = v254 + HIDWORD(v255) + v261;
    v263 = v227 | (v236 << 32);
    v264 = v219 + v263;
    v265 = __CFADD__(v219, v263) + v239;
    v266 = __CFADD__(__CFADD__(v219, v263), v239);
    v267 = v265 + v220;
    v268 = __CFADD__(v265, v220) || v266;
    v37 = __CFADD__(v251, v268);
    v269 = v251 + v268;
    v270 = v37;
    v271 = v269 + v221;
    if (__CFADD__(v269, v221))
    {
      v272 = 1;
    }

    else
    {
      v272 = v270;
    }

    v37 = __CFADD__(v260, v272);
    v273 = v260 + v272;
    v274 = v37;
    v275 = v223 + v273;
    if (__CFADD__(v223, v273))
    {
      v276 = 1;
    }

    else
    {
      v276 = v274;
    }

    v277 = v53 + v321;
    v278 = v53 + v321 + 49;
    v279 = 15 - (v53 + v321);
    v280 = v262 + v276;
    v281 = (v271 << (v277 + 49)) + (v267 >> (15 - v277));
    v282 = (v275 << (v277 + 49)) + (v271 >> (15 - v277));
    result = (v280 << v278) + (v275 >> v279);
    v283 = v280 >> v279;
    if (v283 < 0x314DC6448D93 || v283 == 0x314DC6448D93 && result < 0x38C15B0A00000000)
    {
      v284 = (v264 << v278) + ((v195 | (v196 << 32)) >> v279);
      v285 = (v267 << v278) + (v264 >> v279);
      v37 = __CFADD__(v284, v284 >> 2);
      v286 = v284 + (v284 >> 2);
      v287 = 8;
      if (v37)
      {
        v288 = 8;
      }

      else
      {
        v288 = 0;
      }

      v289 = v288 & 0xFFFFFFFFFFFFFFF8 | (v286 >> 61);
      v290 = v285 + (v285 >> 2);
      if (__CFADD__(v285, v285 >> 2))
      {
        v291 = 8;
      }

      else
      {
        v291 = 0;
      }

      v292 = v291 & 0xFFFFFFFFFFFFFFF8 | (v290 >> 61);
      v293 = (2 * (v285 & 3)) | (8 * v290);
      v294 = v281 + (v281 >> 2);
      if (__CFADD__(v281, v281 >> 2))
      {
        v295 = 8;
      }

      else
      {
        v295 = 0;
      }

      v296 = v282 + (v282 >> 2);
      if (__CFADD__(v282, v282 >> 2))
      {
        v297 = 8;
      }

      else
      {
        v297 = 0;
      }

      v298 = result + (result >> 2);
      if (!__CFADD__(result, result >> 2))
      {
        v287 = 0;
      }

      v299 = v295 & 0xFFFFFFFFFFFFFFF8 | (v294 >> 61);
      v300 = (2 * (v281 & 3)) | (8 * v294);
      v37 = __CFADD__(__CFADD__(v293, v289), v300);
      v301 = __CFADD__(v293, v289) + v300;
      v37 |= __CFADD__(v292, v301);
      v281 = v292 + v301;
      v302 = v297 & 0xFFFFFFFFFFFFFFF8 | (v296 >> 61);
      v303 = (2 * (v282 & 3)) | (8 * v296);
      v305 = v37;
      v37 = __CFADD__(v37, v303);
      v304 = v305 + v303;
      v37 |= __CFADD__(v299, v304);
      v282 = v299 + v304;
      v306 = (2 * (result & 3)) | (8 * v298);
      result = v302 + v37 + v306;
      v283 = v287 + (__CFADD__(v37, v306) | __CFADD__(v302, v37 + v306)) + ((2 * (v283 & 3)) | (8 * (v283 + (v283 >> 2)))) + (v298 >> 61);
    }

    if (bid_roundbound_128[(a2 >> 62) & 2 | (4 * a3) | result & 1] < __PAIR128__(v282, v281))
    {
      v37 = __CFADD__(result++, 1);
      if (v37)
      {
        result = 0;
      }

      else if (v283 == 0x1ED09BEAD87C0 && result == 0x378D8E6400000000)
      {
        result = 0x38C15B0A00000000;
      }
    }

    if (v282 | v281)
    {
      *v4 |= 0x20u;
    }
  }

  return result;
}

unint64_t *bid128_to_binary128_2part(unint64_t *result, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4 & 0x8000000000000000;
  if ((~a4 & 0x6000000000000000) != 0)
  {
    v5 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
    {
      goto LABEL_62;
    }

    v6 = (a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a3 > 0x378D8E63FFFFFFFFLL;
    if (v6 || !(v5 | a3))
    {
      goto LABEL_62;
    }

    v7 = (a4 >> 49) & 0x3FFF;
    if (v5)
    {
      v8 = vdupq_n_s64(a4);
      v9 = vbicq_s8(xmmword_1C1F58CB0, vuzp1q_s32(vcgtq_u64(vandq_s8(v8, xmmword_1C1F58D00), vandq_s8(v8, xmmword_1C1F58C90)), vcgtq_u64(vandq_s8(v8, xmmword_1C1F58D10), vandq_s8(v8, xmmword_1C1F58D20))));
      v10 = 2 * ((a4 & 0xCCCCCCCCCCCCLL) <= (a4 & 0x1333333333333));
      v11 = (a4 & 0xAAAAAAAAAAAALL) <= (a4 & 0x1555555555555);
    }

    else
    {
      v12 = vdupq_n_s64(a3);
      v10 = 2 * ((a3 & 0xCCCCCCCCCCCCCCCCLL) <= (a3 & 0x3333333333333333));
      v11 = (a3 & 0xAAAAAAAAAAAAAAAALL) <= (a3 & 0x5555555555555555);
      v9 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vandq_s8(v12, xmmword_1C1F58D30), vandq_s8(v12, xmmword_1C1F58D40)), vcgtq_u64(vandq_s8(v12, xmmword_1C1F58C80), vandq_s8(v12, xmmword_1C1F58CA0))), xmmword_1C1F58D60, xmmword_1C1F58D50);
    }

    v13 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
    v14 = v13.i32[0] | v10 | v13.i32[1] | v11;
    v15 = v14 - 15;
    if (v14 != 15)
    {
      if (v14 < 0x4F)
      {
        v5 = (v5 << v15) + (a3 >> (79 - v14));
        a3 <<= v15;
      }

      else
      {
        v5 = a3 << (v14 - 79);
        a3 = 0;
      }
    }

    if (v7 >= 0x2B65)
    {
      goto LABEL_61;
    }

    *(&v17 + 1) = v5;
    *&v17 = a3;
    v16 = v17 >> 62;
    v18 = 4 * a3;
    if (v7 >= 0x499)
    {
      v19 = v7 - 6176;
    }

    else
    {
      v19 = -5000;
    }

    v20 = v19;
    v21 = &bid_breakpoints_binary128[2 * v19 + 10000];
    v22 = bid_breakpoints_binary128[2 * v19 + 10001];
    v23 = bid_exponents_binary128[v19 + 5000] - v15;
    if (__PAIR128__(v16, v18) > __PAIR128__(v22, *v21))
    {
      v23 = (v23 + 1);
      v24 = &unk_1C20649F0;
    }

    else
    {
      v24 = &unk_1C2017030;
    }

    v27 = &v24[32 * v20];
    v29 = *v27;
    v28 = *(v27 + 1);
    v30 = HIDWORD(v18);
    v31 = v18 & 0xFFFFFFFC;
    v32 = HIDWORD(*v27);
    v33 = *v27;
    v34 = ((v33 * HIDWORD(v18)) >> 32) + v32 * HIDWORD(v18) + ((v32 * v31 + v33 * HIDWORD(v18) + ((v33 * v31) >> 32)) >> 32);
    v35 = HIDWORD(v28);
    v36 = v28 * HIDWORD(v18);
    v37 = v28 * (v18 & 0xFFFFFFFC);
    v39 = *(v27 + 2);
    v38 = *(v27 + 3);
    v40 = HIDWORD(v28) * v31 + v36 + HIDWORD(v37);
    v41 = HIDWORD(v36) + HIDWORD(v28) * v30 + HIDWORD(v40);
    v42 = v37 | (v40 << 32);
    v43 = HIDWORD(v39);
    v44 = v39 * v30;
    v45 = v39 * v31;
    v46 = HIDWORD(v44) + HIDWORD(v39) * v30;
    v47 = HIDWORD(v39) * v31 + v44 + HIDWORD(v45);
    v48 = v46 + HIDWORD(v47);
    v49 = v45 | (v47 << 32);
    v50 = v38 * v30;
    v51 = v38 * v31;
    v52 = HIDWORD(v50) + HIDWORD(v38) * v30;
    v53 = HIDWORD(v38) * v31 + v50 + HIDWORD(v51);
    v54 = HIDWORD(v53);
    v55 = v51 | (v53 << 32);
    v56 = __CFADD__(v34, v42);
    v57 = v34 + v42;
    v58 = v49 + v56 + v41;
    v60 = (__CFADD__(v56, v41) | __CFADD__(v49, v56 + v41)) + v48;
    v56 = __CFADD__(__CFADD__(v56, v41) | __CFADD__(v49, v56 + v41), v48) | __CFADD__(v55, v60);
    v59 = v55 + v60;
    v61 = v54 + v56 + v52;
    v62 = HIDWORD(v16);
    LODWORD(v48) = v16;
    v63 = v33 * HIDWORD(v16);
    v64 = v29 * v16;
    v65 = v32 * v16;
    v66 = HIDWORD(v63) + v32 * HIDWORD(v16);
    v67 = v65 + v63 + HIDWORD(v64);
    v68 = v66 + HIDWORD(v67);
    v69 = v28 * HIDWORD(v16);
    v70 = v28 * v16;
    v71 = v35 * v16;
    v72 = HIDWORD(v69) + v35 * HIDWORD(v16);
    v73 = v71 + v69 + HIDWORD(v70);
    v74 = v72 + HIDWORD(v73);
    v75 = v70 | (v73 << 32);
    v76 = v39 * HIDWORD(v16);
    v77 = v39 * v16;
    v78 = v43 * v16;
    v79 = HIDWORD(v76) + v43 * HIDWORD(v16);
    v80 = v78 + v76 + HIDWORD(v77);
    v81 = v77 | (v80 << 32);
    v82 = v38 * HIDWORD(v16);
    v83 = v38 * v16;
    v84 = HIDWORD(v82) + HIDWORD(v38) * v62;
    v85 = HIDWORD(v38) * v48 + v82 + HIDWORD(v83);
    v86 = v83 | (v85 << 32);
    v87 = __PAIR128__(v81, v68) + v75;
    v88 = __CFADD__(__CFADD__(v68, v75), v81);
    v89 = v79 + HIDWORD(v80);
    v90 = v74 + *(&v87 + 1);
    v91 = __CFADD__(v74, *(&v87 + 1)) || v88;
    v56 = __CFADD__(v86, v91);
    v92 = v86 + v91;
    LODWORD(v93) = v56;
    v56 = __CFADD__(v89, v92);
    v94 = v89 + v92;
    v95 = v84 + HIDWORD(v85);
    if (v56)
    {
      v93 = 1;
    }

    else
    {
      v93 = v93;
    }

    v96 = v95 + v93;
    v97 = v64 | (v67 << 32);
    v98 = __CFADD__(v97, v57) + v87;
    LODWORD(v99) = __CFADD__(__CFADD__(v97, v57), v87);
    v56 = __CFADD__(v58, v98);
    v100 = v58 + v98;
    if (v56)
    {
      v99 = 1;
    }

    else
    {
      v99 = v99;
    }

    v56 = __CFADD__(v90, v99);
    v101 = v90 + v99;
    LODWORD(v102) = v56;
    v56 = __CFADD__(v101, v59);
    v103 = v101 + v59;
    if (v56)
    {
      v102 = 1;
    }

    else
    {
      v102 = v102;
    }

    v56 = __CFADD__(v94, v102);
    v104 = v94 + v102;
    LODWORD(v105) = v56;
    v56 = __CFADD__(v61, v104);
    v106 = v61 + v104;
    if (v56)
    {
      v105 = 1;
    }

    else
    {
      v105 = v105;
    }

    v107 = v96 + v105;
    if (v23 <= 0)
    {
      if ((1 - v23) >= 0x73)
      {
        v108 = 115;
      }

      else
      {
        v108 = 1 - v23;
      }

      if (v23 > -63)
      {
        v109 = v107;
      }

      else
      {
        v109 = 0;
        if ((1 - v23) < 0x41)
        {
          v110 = v107;
          v100 = v103;
LABEL_75:
          v23 = 0;
LABEL_76:
          *result = v110;
          result[1] = (v109 | (v23 << 48)) + v4;
          if (v106)
          {
            v111 = v100;
          }

          else
          {
            v111 = 0;
          }

          if (v106)
          {
            v100 = v106;
          }

          if (v100 && (v106 ? (v112 = -113) : (v112 = -177), v113 = vdupq_n_s64(v100), *v113.i8 = vbic_s8(0x1000000020, vmovn_s64(vcgtq_u64(vandq_s8(v113, xmmword_1C1F58C70), vandq_s8(v113, xmmword_1C1F58C90)))), v114 = v23 + v112, v115 = vorr_s8(*v113.i8, vdup_lane_s32(*v113.i8, 1)).u32[0], v116 = ((v100 & 0xAAAAAAAAAAAAAAAALL) <= (v100 & 0x5555555555555555)) | (2 * ((v100 & 0xCCCCCCCCCCCCCCCCLL) <= (v100 & 0x3333333333333333))) | (4 * ((v100 & 0xF0F0F0F0F0F0F0F0) <= (v100 & 0xF0F0F0F0F0F0F0FLL))) | (8 * ((v100 & 0xFF00FF00FF00FF00) <= (v100 & 0xFF00FF00FF00FFLL))) | v115, v117 = v114 - v116, v117 >= 0))
          {
            if (v115)
            {
              v100 = (v100 << (v116 - 15)) + (v111 >> (79 - v116));
              v111 <<= v116 - 15;
            }

            else if (v116 != 15)
            {
              v111 = (v100 << (v116 + 49)) + (v111 >> (15 - v116));
              v100 >>= 15 - v116;
            }

            v4 |= v100 & 0xFFFFFFFFFFFFLL | (v117 << 48);
            *a2 = v111;
          }

          else
          {
            *a2 = 0;
          }

          result = a2;
          goto LABEL_63;
        }

        v108 -= 64;
        v100 = v103;
        v103 = v106;
        v106 = v107;
      }

      v100 = (v103 << -v108) + (v100 >> v108);
      v103 = (v106 << -v108) + (v103 >> v108);
      v106 = (v109 << -v108) + (v106 >> v108);
      v23 = 1;
      v107 = v109 >> v108;
    }

    else if (v23 >= 0x7FFF)
    {
      goto LABEL_61;
    }

    v110 = v106;
    v106 = v103;
    v109 = v107 & 0xFFFFFFFFFFFFLL;
    if (HIWORD(v107))
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if ((~a4 & 0x7800000000000000) != 0)
  {
LABEL_62:
    *result = 0;
    goto LABEL_63;
  }

  if ((~a4 & 0x7C00000000000000) != 0)
  {
LABEL_61:
    v4 |= 0x7FFF000000000000uLL;
    goto LABEL_62;
  }

  if ((a4 & 0x3FFFFFFFFFFFLL) > 0x314DC6448D93 || a3 >= 0x38C15B0A00000000 && (a4 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
  {
    v4 |= 0x7FFF800000000000uLL;
    goto LABEL_62;
  }

  *(&v26 + 1) = a4;
  *&v26 = a3;
  v25 = v26 >> 46;
  v4 |= (v25 >> 17) | 0x7FFF800000000000;
  *result = (2 * (a3 & 0x3FFFFFFFFFFFLL)) | (v25 << 47);
LABEL_63:
  result[1] = v4;
  return result;
}

uint64_t __bid_round64_2_18(uint64_t result, int a2, uint64_t a3, unint64_t *a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v9 = a2 - 1;
  v10 = __bid_midpoint64[v9] + a3;
  v11 = HIDWORD(v10);
  v12 = __bid_Kx64[v9];
  v13 = HIDWORD(v12);
  v14 = HIDWORD(v10) * v12;
  v15 = v10 * v12;
  v16 = (LODWORD(__bid_midpoint64[v9]) + a3) * v13 + v14 + HIDWORD(v15);
  v17 = HIDWORD(v14) + v11 * v13 + HIDWORD(v16);
  v18 = v15 | (v16 << 32);
  v19 = v17 >> __bid_Ex64m64[v9];
  v20 = v17 & __bid_mask64[v9];
  v21 = __bid_half64[v9];
  if (v20 <= v21 && (v20 == v21 ? (v22 = v18 == 0) : (v22 = 1), v23 = a9, v22) || (v23 = a8, v20 != v21) || (v23 = a8, v18 > __bid_ten2mxtrunc64[v9]))
  {
    *v23 = 1;
  }

  if (!v20 && v18 <= __bid_ten2mxtrunc64[v9])
  {
    if ((v19 & 1) == 0)
    {
      a7 = a6;
    }

    *a7 = 1;
    v19 &= ~1uLL;
    *a8 = 0;
    *a9 = 0;
  }

  if (v19 == __bid_ten2k64[result - a2])
  {
    v19 = __bid_ten2k64[result - a2 - 1];
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  *a5 = v25;
  *a4 = v19;
  return result;
}

uint64_t __bid_round128_19_38(uint64_t result, int a2, unint64_t a3, unint64_t a4, unint64_t *a5, int *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10)
{
  v10 = a2 - 1;
  if (a2 > 19)
  {
    v13 = (__bid_midpoint128[a2 - 20] + __PAIR128__(a4, a3)) >> 64;
    v12 = *&__bid_midpoint128[a2 - 20] + a3;
    v10 = v10;
  }

  else
  {
    v11 = __bid_midpoint64[v10];
    v12 = v11 + a3;
    if (__CFADD__(v11, a3))
    {
      v13 = a4 + 1;
    }

    else
    {
      v13 = a4;
    }
  }

  v14 = HIDWORD(v12);
  v15 = &__bid_Kx128[2 * v10];
  v17 = *v15;
  v16 = v15[1];
  v18 = HIDWORD(v16);
  v19 = v16 * HIDWORD(v12);
  v20 = HIDWORD(v19) + HIDWORD(v16) * HIDWORD(v12);
  v21 = HIDWORD(v16) * v12 + v19 + ((v16 * v12) >> 32);
  v22 = HIDWORD(v21);
  v23 = (v16 * v12) | (v21 << 32);
  v24 = HIDWORD(v17);
  v25 = v17 * HIDWORD(v12);
  v26 = v17 * v12;
  v27 = HIDWORD(v17) * v12 + v25 + HIDWORD(v26);
  v28 = v26 | (v27 << 32);
  v29 = __PAIR128__(v20, v23) + __PAIR128__(v22, HIDWORD(v25) + HIDWORD(v17) * v14 + HIDWORD(v27));
  v30 = HIDWORD(v13);
  LODWORD(v23) = v13;
  v31 = v16 * HIDWORD(v13);
  v32 = v16 * v13;
  v33 = v18 * v13;
  v34 = HIDWORD(v31) + v18 * HIDWORD(v13);
  v35 = v33 + v31 + HIDWORD(v32);
  v36 = HIDWORD(v35);
  v37 = v32 | (v35 << 32);
  v38 = v17 * HIDWORD(v13);
  v39 = v17 * v13;
  v40 = HIDWORD(v17) * v23 + v38 + HIDWORD(v39);
  v41 = v39 | (v40 << 32);
  v42 = __PAIR128__(v34, v37) + __PAIR128__(v36, HIDWORD(v38) + v24 * v30 + HIDWORD(v40));
  v43 = v29 + v41;
  v44 = __CFADD__(__CFADD__(v29, v41), v42);
  v45 = __CFADD__(v29, v41) + v42;
  v46 = v44;
  v47 = *(&v29 + 1) + v45;
  if (__CFADD__(*(&v29 + 1), v45))
  {
    v48 = 1;
  }

  else
  {
    v48 = v46;
  }

  v49 = *(&v42 + 1) + v48;
  v50 = __bid_Ex128m128[v10];
  if (a2 > 19)
  {
    v51 = v49 >> v50;
    v57 = __bid_mask128[v10] & v49;
    v58 = __bid_half128[v10];
    if (v57 > v58)
    {
LABEL_18:
      if (v57 == v58 && v47 == 0)
      {
        v54 = &__bid_ten2mxtrunc128[v10];
        v60 = v54[1];
        v61 = v43 == v60;
        if (v43 <= v60)
        {
          v47 = 0;
          v52 = 0;
          if (!v61)
          {
            goto LABEL_38;
          }

          goto LABEL_65;
        }

        v47 = 0;
      }

      v52 = 0;
      goto LABEL_26;
    }

    if (v57 == v58)
    {
      if (v47 || v43 || v28)
      {
        goto LABEL_18;
      }

      v47 = 0;
    }

    v52 = 0;
    goto LABEL_36;
  }

  v51 = (v49 << -v50) | (v47 >> v50);
  v52 = v49 >> v50;
  v47 &= __bid_mask128[v10];
  v53 = __bid_half128[v10];
  if (v47 <= v53 && (v47 != v53 || !(v43 | v28)))
  {
    v57 = 0;
LABEL_36:
    v62 = a10;
    goto LABEL_37;
  }

  if (v47 == v53)
  {
    v54 = &__bid_ten2mxtrunc128[v10];
    v55 = v54[1];
    v56 = v43 == v55;
    if (v43 <= v55)
    {
      v57 = 0;
      if (!v56)
      {
        goto LABEL_38;
      }

LABEL_65:
      v68 = *v54;
      v62 = a9;
      if (v28 <= v68)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  v57 = 0;
LABEL_26:
  v62 = a9;
LABEL_37:
  *v62 = 1;
LABEL_38:
  if (!(v57 | v47) && __PAIR128__(v43, v28) <= __bid_ten2mxtrunc128[v10])
  {
    if ((v51 & 1) == 0)
    {
      a8 = a7;
    }

    *a8 = 1;
    v51 &= ~1uLL;
    *a9 = 0;
    *a10 = 0;
  }

  v64 = result - a2;
  if (result - a2 <= 19)
  {
    if (!v52)
    {
      if (v51 != __bid_ten2k64[v64])
      {
        v67 = 0;
        v52 = 0;
        goto LABEL_58;
      }

      v52 = 0;
      v51 = __bid_ten2k64[v64 - 1];
      goto LABEL_56;
    }

LABEL_57:
    v67 = 0;
    goto LABEL_58;
  }

  if (v64 == 20)
  {
    if (v52 != 5)
    {
      goto LABEL_57;
    }

    if (v51 != 0x6BC75E2D63100000)
    {
      v67 = 0;
      v52 = 5;
      goto LABEL_58;
    }

    v52 = 0;
    v51 = 0x8AC7230489E80000;
  }

  else
  {
    v65 = &__bid_ten2k128[2 * (v64 - 20)];
    if (v52 != v65[1] || v51 != *v65)
    {
      goto LABEL_57;
    }

    v66 = &__bid_ten2k128[2 * (v64 - 21)];
    v51 = *v66;
    v52 = v66[1];
  }

LABEL_56:
  v67 = 1;
LABEL_58:
  *a6 = v67;
  *a5 = v51;
  a5[1] = v52;
  return result;
}

unint64_t __bid_round192_39_57(int a1, int a2, unint64_t *a3, unint64_t *a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v9 = a2 - 1;
  if (a2 <= 19)
  {
    v10 = __bid_midpoint64[v9];
    v11 = a3[1];
    v12 = __CFADD__(v10, *a3);
    v13 = v10 + *a3;
    *a3 = v13;
    if (!v12)
    {
      goto LABEL_25;
    }

    v12 = __CFADD__(v11++, 1);
    a3[1] = v11;
    if (!v12)
    {
      goto LABEL_25;
    }

    v11 = 0;
    goto LABEL_20;
  }

  v14 = *a3;
  if (a2 > 0x26)
  {
    v17 = (&__bid_midpoint192 + 32 * (a2 - 39));
    v18 = a3[1];
    v12 = __CFADD__(*v17, v14);
    v13 = *v17 + v14;
    *a3 = v13;
    if (v12 && (v12 = __CFADD__(v18, 1), ++v18, v12))
    {
      v19 = a3[2] + 1;
      v11 = v17[1];
      a3[1] = v11;
    }

    else
    {
      v22 = v17[1];
      v12 = __CFADD__(v22, v18);
      v11 = v22 + v18;
      a3[1] = v22 + v18;
      v19 = a3[2];
      if (v12)
      {
        ++v19;
      }
    }

    v21 = v17[2] + v19;
    goto LABEL_24;
  }

  v15 = &__bid_midpoint128[a2 - 20];
  v16 = a3[1];
  v12 = __CFADD__(*v15, v14);
  v13 = *v15 + v14;
  *a3 = v13;
  if (v12)
  {
    v12 = __CFADD__(v16++, 1);
    if (v12)
    {
      ++a3[2];
      v11 = v15[1];
      a3[1] = v11;
      goto LABEL_25;
    }
  }

  v20 = v15[1];
  v11 = v20 + v16;
  a3[1] = v20 + v16;
  if (__CFADD__(v20, v16))
  {
LABEL_20:
    v21 = a3[2] + 1;
LABEL_24:
    a3[2] = v21;
  }

LABEL_25:
  v23 = HIDWORD(v13);
  v24 = v13;
  v25 = v9;
  v26 = (&__bid_Kx192 + 32 * v9);
  v27 = *v26;
  v28 = v26[1];
  v29 = HIDWORD(*v26);
  v30 = *v26;
  v31 = v30 * HIDWORD(v13);
  v32 = v30 * v13;
  v33 = v29 * v13 + v31 + HIDWORD(v32);
  v34 = HIDWORD(v31) + v29 * HIDWORD(v13) + HIDWORD(v33);
  v35 = HIDWORD(v28);
  v36 = v28 * HIDWORD(v13);
  v37 = HIDWORD(v36) + HIDWORD(v28) * HIDWORD(v13);
  v38 = HIDWORD(v28) * v13 + v36 + ((v28 * v13) >> 32);
  v39 = v37 + HIDWORD(v38);
  v40 = (v28 * v13) | (v38 << 32);
  v41 = v26[2];
  v42 = v41 * HIDWORD(v13);
  v43 = v41 * v13;
  v44 = HIDWORD(v42) + HIDWORD(v41) * v23;
  v45 = HIDWORD(v41) * v24 + v42 + HIDWORD(v43);
  v46 = v44 + HIDWORD(v45);
  v47 = v43 | (v45 << 32);
  v48 = v34 + v40;
  v49 = __CFADD__(v34, v40) + v47;
  v50 = __CFADD__(__CFADD__(v34, v40), v47);
  v51 = v39 + v49;
  v52 = __CFADD__(v39, v49) || v50;
  v53 = v46 + v52;
  v54 = HIDWORD(v11) * v30;
  v55 = HIDWORD(v54) + HIDWORD(v11) * v29;
  v56 = v11 * v29 + v54;
  v57 = HIDWORD(v11) * v28;
  v58 = v11 * HIDWORD(v28) + v57 + ((v11 * v28) >> 32);
  v59 = HIDWORD(v57) + HIDWORD(v11) * HIDWORD(v28) + HIDWORD(v58);
  v60 = (v11 * v28) | (v58 << 32);
  v61 = HIDWORD(v11) * v41;
  v62 = HIDWORD(v61) + HIDWORD(v11) * HIDWORD(v41);
  v63 = v11 * HIDWORD(v41) + v61;
  v64 = v11 * v27;
  v65 = v56 + HIDWORD(v64);
  v66 = v55 + HIDWORD(v65);
  v67 = v11 * v41;
  v68 = v63 + HIDWORD(v67);
  v69 = v62 + HIDWORD(v68);
  v70 = v67 | (v68 << 32);
  v71 = v66 + v60;
  v12 = __CFADD__(__CFADD__(v66, v60), v70);
  v72 = __CFADD__(v66, v60) + v70;
  v73 = v12;
  v74 = v59 + v72;
  if (__CFADD__(v59, v72))
  {
    v75 = 1;
  }

  else
  {
    v75 = v73;
  }

  v76 = v69 + v75;
  v77 = a3[2];
  v78 = HIDWORD(v77);
  v79 = v77;
  v80 = HIDWORD(v77) * v30;
  v81 = v77 * v27;
  v82 = HIDWORD(v80) + HIDWORD(v77) * v29;
  v83 = v77 * v29 + v80 + HIDWORD(v81);
  v84 = v82 + HIDWORD(v83);
  v85 = HIDWORD(v77) * v28;
  v86 = v77 * v28;
  v87 = HIDWORD(v85) + HIDWORD(v77) * v35;
  v88 = v77 * v35 + v85 + HIDWORD(v86);
  v89 = v86 | (v88 << 32);
  v90 = HIDWORD(v77) * v41;
  v91 = v77 * v41;
  v92 = HIDWORD(v90) + v78 * HIDWORD(v41);
  v93 = v79 * HIDWORD(v41) + v90 + HIDWORD(v91);
  v94 = v91 | (v93 << 32);
  v95 = v84 + v89;
  v12 = __CFADD__(__CFADD__(v84, v89), v94);
  v96 = __CFADD__(v84, v89) + v94;
  LODWORD(v97) = v12;
  v98 = v87 + HIDWORD(v88);
  v12 = __CFADD__(v98, v96);
  v99 = v98 + v96;
  if (v12)
  {
    v97 = 1;
  }

  else
  {
    v97 = v97;
  }

  v100 = v92 + HIDWORD(v93) + v97;
  v101 = v64 | (v65 << 32);
  v102 = v101 + v48;
  v12 = __CFADD__(__CFADD__(v101, v48), v71);
  v103 = __CFADD__(v101, v48) + v71;
  LODWORD(v104) = v12;
  v12 = __CFADD__(v103, v51);
  v105 = v103 + v51;
  if (v12)
  {
    v104 = 1;
  }

  else
  {
    v104 = v104;
  }

  v12 = __CFADD__(v74, v104);
  v106 = v74 + v104;
  v107 = v81 | (v83 << 32);
  v108 = v12;
  v12 = __CFADD__(v53, v106);
  v109 = v53 + v106;
  if (v12)
  {
    v110 = 1;
  }

  else
  {
    v110 = v108;
  }

  v111 = v76 + v110;
  v112 = v105 + v107;
  result = v32 | (v33 << 32);
  v12 = __CFADD__(__CFADD__(v105, v107), v95);
  v114 = __CFADD__(v105, v107) + v95;
  v115 = v12;
  v116 = v109 + v114;
  if (__CFADD__(v109, v114))
  {
    v117 = 1;
  }

  else
  {
    v117 = v115;
  }

  v12 = __CFADD__(v99, v117);
  v118 = v99 + v117;
  v119 = v12;
  v120 = v111 + v118;
  if (__CFADD__(v111, v118))
  {
    v121 = 1;
  }

  else
  {
    v121 = v119;
  }

  v122 = __bid_Ex192m192[v9];
  v123 = v100 + v121;
  if (a2 >= 20)
  {
    v125 = v123 >> v122;
    if (a2 < 0x27)
    {
      v126 = (v123 << -v122) | (v120 >> v122);
      v120 &= __bid_mask192[v25];
      v132 = __bid_half192[v25];
      if (v120 > v132)
      {
        goto LABEL_75;
      }

      if (v120 == v132)
      {
        if (v116 || v112 || v102 || result)
        {
LABEL_75:
          v130 = 0;
          if (v120 != v132 || v116)
          {
            v131 = a8;
            v124 = 0;
            goto LABEL_109;
          }

          v128 = (&__bid_ten2mxtrunc192 + 32 * v25);
          v133 = v128[2];
          if (v112 > v133)
          {
            goto LABEL_78;
          }

          if (v112 == v133)
          {
            v152 = v128[1];
            if (v102 > v152)
            {
LABEL_78:
              v116 = 0;
              v130 = 0;
              v124 = 0;
              goto LABEL_72;
            }

            if (v102 == v152)
            {
              v116 = 0;
              v130 = 0;
              v124 = 0;
              goto LABEL_163;
            }
          }

          v116 = 0;
          v130 = 0;
          v124 = 0;
          goto LABEL_110;
        }

        v116 = 0;
      }

      v130 = 0;
      v124 = 0;
      goto LABEL_97;
    }

    v130 = __bid_mask192[v25] & v123;
    v134 = __bid_half192[v25];
    if (v130 > v134)
    {
LABEL_85:
      v124 = 0;
      if (v130 != v134 || v120 || v116)
      {
        v131 = a8;
        v126 = v125;
        v125 = 0;
        goto LABEL_109;
      }

      v135 = (&__bid_ten2mxtrunc192 + 32 * v25);
      v136 = v135[2];
      if (v112 > v136)
      {
        goto LABEL_89;
      }

      if (v112 == v136)
      {
        v150 = v135[1];
        if (v102 > v150)
        {
LABEL_89:
          v116 = 0;
          v120 = 0;
          v124 = 0;
          v131 = a8;
LABEL_106:
          v126 = v125;
          v125 = 0;
          goto LABEL_109;
        }

        if (v102 == v150)
        {
          v116 = 0;
          v120 = 0;
          v124 = 0;
          v151 = *v135;
          v131 = a8;
          v126 = v125;
          v125 = 0;
          goto LABEL_164;
        }
      }

      v116 = 0;
      v120 = 0;
      v124 = 0;
      v126 = v123 >> v122;
      v125 = 0;
      goto LABEL_110;
    }

    if (v130 == v134)
    {
      if (v120 || v116 || v112 || v102 || result)
      {
        goto LABEL_85;
      }

      v116 = 0;
      v120 = 0;
    }

    v124 = 0;
    v131 = a9;
    goto LABEL_106;
  }

  v124 = v123 >> v122;
  v125 = (v123 << -v122) | (v120 >> v122);
  v126 = (v120 << -v122) | (v116 >> v122);
  v116 &= __bid_mask192[v25];
  v127 = __bid_half192[v25];
  if (v116 <= v127 && (v116 != v127 || !v112 && !v102 && !result))
  {
    v120 = 0;
    v130 = 0;
LABEL_97:
    v131 = a9;
    goto LABEL_109;
  }

  if (v116 != v127)
  {
    goto LABEL_71;
  }

  v128 = (&__bid_ten2mxtrunc192 + 32 * v25);
  v129 = v128[2];
  if (v112 > v129)
  {
    goto LABEL_71;
  }

  if (v112 != v129)
  {
    goto LABEL_154;
  }

  v147 = v128[1];
  if (v102 <= v147)
  {
    if (v102 == v147)
    {
      v120 = 0;
      v130 = 0;
LABEL_163:
      v151 = *v128;
      v131 = a8;
LABEL_164:
      if (result <= v151)
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }

LABEL_154:
    v120 = 0;
    v130 = 0;
    goto LABEL_110;
  }

LABEL_71:
  v120 = 0;
  v130 = 0;
LABEL_72:
  v131 = a8;
LABEL_109:
  *v131 = 1;
LABEL_110:
  if (v130 || v120 || v116)
  {
    v140 = a5;
    v141 = a1;
  }

  else
  {
    v137 = &__bid_ten2mxtrunc192 + 32 * v25;
    v138 = *(v137 + 2);
    v12 = v112 >= v138;
    v139 = v112 == v138;
    v140 = a5;
    v141 = a1;
    if (!v12 || v139 && __PAIR128__(v102, result) <= *v137)
    {
      v142 = a7;
      if ((v126 & 1) == 0)
      {
        v142 = a6;
      }

      *v142 = 1;
      v126 &= ~1uLL;
      *a8 = 0;
      *a9 = 0;
    }
  }

  v143 = v141 - a2;
  if (v141 - a2 > 19)
  {
    if (v143 == 20)
    {
      if (v124)
      {
        goto LABEL_152;
      }

      if (v125 == 5)
      {
        if (v126 != 0x6BC75E2D63100000)
        {
          v144 = 0;
          v124 = 0;
          v125 = 5;
          goto LABEL_153;
        }

        v124 = 0;
        v125 = 0;
        v126 = 0x8AC7230489E80000;
        goto LABEL_122;
      }
    }

    else
    {
      if (v143 > 0x26)
      {
        if (v143 == 39)
        {
          if (v124 == 2)
          {
            if (v125 != 0xF050FE938943ACC4)
            {
              v144 = 0;
              v124 = 2;
              goto LABEL_153;
            }

            if (v126 != 0x5F65568000000000)
            {
              v144 = 0;
              v124 = 2;
              v125 = 0xF050FE938943ACC4;
              goto LABEL_153;
            }

            v124 = 0;
            v126 = 0x98A224000000000;
            v125 = 0x4B3B4CA85A86C47ALL;
            goto LABEL_122;
          }
        }

        else
        {
          v148 = (&__bid_ten2k256 + 32 * v143 - 1248);
          if (v124 == v148[2] && v125 == v148[1] && v126 == *v148)
          {
            v149 = (&__bid_ten2k256 + 32 * v143 - 1280);
            v126 = *v149;
            v125 = v149[1];
            v124 = v149[2];
            goto LABEL_122;
          }
        }

LABEL_152:
        v144 = 0;
        goto LABEL_153;
      }

      if (v124)
      {
        goto LABEL_152;
      }

      v145 = &__bid_ten2k128[2 * v143 - 40];
      if (v125 == v145[1] && v126 == *v145)
      {
        v124 = 0;
        v146 = &__bid_ten2k128[2 * v143 - 42];
        v126 = *v146;
        v125 = v146[1];
        goto LABEL_122;
      }
    }

    v144 = 0;
    v124 = 0;
    goto LABEL_153;
  }

  if (v124 | v125)
  {
    goto LABEL_152;
  }

  if (v126 != __bid_ten2k64[v143])
  {
    v144 = 0;
    v124 = 0;
    v125 = 0;
    goto LABEL_153;
  }

  v124 = 0;
  v125 = 0;
  v126 = __bid_ten2k64[v143 - 1];
LABEL_122:
  v144 = 1;
LABEL_153:
  *v140 = v144;
  a4[1] = v125;
  a4[2] = v124;
  *a4 = v126;
  return result;
}

uint64_t __bid_round256_58_76(int a1, int a2, void *a3, unint64_t *a4, int *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v9 = a2 - 1;
  if (a2 <= 19)
  {
    v10 = __bid_midpoint64[v9];
    v11 = a3[1];
    v24 = __CFADD__(v10, *a3);
    v12 = v10 + *a3;
    *a3 = v12;
    if (!v24)
    {
      goto LABEL_54;
    }

    v24 = __CFADD__(v11, 1);
    a3[1] = ++v11;
    if (!v24)
    {
      goto LABEL_54;
    }

    v13 = a3[2];
    a3[2] = v13 + 1;
    v11 = 0;
    if (v13 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  if (a2 > 0x26)
  {
    v17 = *a3;
    if (a2 <= 0x3A)
    {
      v18 = (&__bid_midpoint192 + 32 * (a2 - 39));
      v19 = a3[1];
      v24 = __CFADD__(*v18, v17);
      v12 = *v18 + v17;
      *a3 = v12;
      if (v24 && (v24 = __CFADD__(v19, 1), ++v19, v24))
      {
        v20 = a3[2];
        v24 = __CFADD__(v20, 1);
        v21 = v20 + 1;
        if (v24)
        {
          ++a3[3];
        }

        v11 = v18[1];
        a3[1] = v11;
      }

      else
      {
        v30 = v18[1];
        v21 = a3[2];
        v11 = v30 + v19;
        a3[1] = v30 + v19;
        if (__CFADD__(v30, v19))
        {
          v24 = __CFADD__(v21++, 1);
          if (v24)
          {
            ++a3[3];
            a3[2] = v18[2];
            goto LABEL_54;
          }
        }
      }

      v31 = v18[2];
      v24 = __CFADD__(v31, v21);
      v25 = v31 + v21;
      goto LABEL_42;
    }

    v26 = (&__bid_midpoint256 + 32 * (a2 - 59));
    v27 = a3[1];
    v24 = __CFADD__(*v26, v17);
    v12 = *v26 + v17;
    *a3 = v12;
    if (v24 && (v24 = __CFADD__(v27, 1), ++v27, v24))
    {
      v28 = a3[2];
      v24 = __CFADD__(v28, 1);
      v29 = v28 + 1;
      if (v24)
      {
        ++a3[3];
      }

      v11 = v26[1];
      a3[1] = v11;
    }

    else
    {
      v33 = v26[1];
      v29 = a3[2];
      v11 = v33 + v27;
      a3[1] = v33 + v27;
      if (__CFADD__(v33, v27))
      {
        v24 = __CFADD__(v29++, 1);
        if (v24)
        {
          v34 = a3[3] + 1;
          a3[2] = v26[2];
LABEL_52:
          v32 = v26[3] + v34;
          goto LABEL_53;
        }
      }
    }

    v35 = v26[2];
    v24 = __CFADD__(v35, v29);
    a3[2] = v35 + v29;
    v34 = a3[3];
    if (v24)
    {
      ++v34;
    }

    goto LABEL_52;
  }

  v14 = &__bid_midpoint128[a2 - 20];
  v15 = a3[1];
  v24 = __CFADD__(*v14, *a3);
  v12 = *v14 + *a3;
  *a3 = v12;
  if (v24)
  {
    v24 = __CFADD__(v15++, 1);
    if (v24)
    {
      v16 = a3[2];
      a3[2] = v16 + 1;
      if (v16 == -1)
      {
        ++a3[3];
      }

      v11 = v14[1];
      a3[1] = v11;
      goto LABEL_54;
    }
  }

  v22 = v14[1];
  v11 = v22 + v15;
  a3[1] = v22 + v15;
  if (!__CFADD__(v22, v15))
  {
    goto LABEL_54;
  }

  v23 = a3[2];
  v24 = __CFADD__(v23, 1);
  v25 = v23 + 1;
LABEL_42:
  a3[2] = v25;
  if (v24)
  {
LABEL_44:
    v32 = a3[3] + 1;
LABEL_53:
    a3[3] = v32;
  }

LABEL_54:
  v249 = v9;
  v250 = a2 - 1;
  v36 = (&__bid_Kx256 + 32 * v9);
  v37 = *v36;
  v38 = v36[1];
  v39 = HIDWORD(*v36);
  v40 = *v36;
  v41 = v40 * HIDWORD(v12);
  v247 = v40 * v12;
  v248 = v39 * v12 + v41 + ((v40 * v12) >> 32);
  v42 = HIDWORD(v41) + v39 * HIDWORD(v12) + HIDWORD(v248);
  v43 = v38 * HIDWORD(v12);
  v44 = HIDWORD(v38) * v12 + v43 + ((v38 * v12) >> 32);
  v45 = HIDWORD(v43) + HIDWORD(v38) * HIDWORD(v12) + HIDWORD(v44);
  v46 = v36[2];
  v47 = v36[3];
  v48 = v46 * HIDWORD(v12);
  v49 = HIDWORD(v46) * v12 + v48 + ((v46 * v12) >> 32);
  v50 = HIDWORD(v48) + HIDWORD(v46) * HIDWORD(v12) + HIDWORD(v49);
  v51 = v47 * HIDWORD(v12);
  v52 = HIDWORD(v47) * v12 + v51 + ((v47 * v12) >> 32);
  v53 = HIDWORD(v51) + HIDWORD(v47) * HIDWORD(v12) + HIDWORD(v52);
  v54 = (v38 * v12) | (v44 << 32);
  v55 = (v46 * v12) | (v49 << 32);
  v56 = (v47 * v12) | (v52 << 32);
  v245 = v42 + v54;
  v57 = __CFADD__(v42, v54) + v55;
  v58 = __CFADD__(__CFADD__(v42, v54), v55);
  v244 = v45 + v57;
  v59 = __CFADD__(v45, v57) || v58;
  v24 = __CFADD__(v56, v59);
  v60 = v56 + v59;
  v61 = v24;
  v243 = v50 + v60;
  if (__CFADD__(v50, v60))
  {
    v62 = 1;
  }

  else
  {
    v62 = v61;
  }

  v246 = v53 + v62;
  v63 = v11;
  v64 = HIDWORD(v11) * v40;
  v65 = HIDWORD(v11) * v38;
  v66 = HIDWORD(v65) + HIDWORD(v11) * HIDWORD(v38);
  v67 = v11 * HIDWORD(v38) + v65 + ((v11 * v38) >> 32);
  v68 = v66 + HIDWORD(v67);
  v69 = (v11 * v38) | (v67 << 32);
  v70 = HIDWORD(v11) * v46;
  v71 = HIDWORD(v70) + HIDWORD(v11) * HIDWORD(v46);
  v72 = v11 * HIDWORD(v46) + v70 + ((v11 * v46) >> 32);
  v73 = v71 + HIDWORD(v72);
  v74 = (v11 * v46) | (v72 << 32);
  v75 = HIDWORD(v11) * v47;
  v76 = HIDWORD(v75) + HIDWORD(v11) * HIDWORD(v47);
  v77 = v11 * v37;
  v78 = v11 * v39 + v64 + HIDWORD(v77);
  v79 = HIDWORD(v64) + HIDWORD(v11) * v39 + HIDWORD(v78);
  v80 = v11 * v47;
  v81 = v63 * HIDWORD(v47) + v75 + HIDWORD(v80);
  v82 = v76 + HIDWORD(v81);
  v83 = v80 | (v81 << 32);
  v84 = v79 + v69;
  v85 = __CFADD__(v79, v69) + v74;
  v86 = __CFADD__(__CFADD__(v79, v69), v74);
  v87 = v68 + v85;
  v88 = __CFADD__(v68, v85) || v86;
  v24 = __CFADD__(v83, v88);
  v89 = v83 + v88;
  v90 = v24;
  v91 = v73 + v89;
  if (__CFADD__(v73, v89))
  {
    v92 = 1;
  }

  else
  {
    v92 = v90;
  }

  v242 = v82 + v92;
  v94 = a3[2];
  v93 = a3[3];
  v95 = HIDWORD(v94) * v38;
  v96 = v94 * HIDWORD(v38) + v95 + ((v94 * v38) >> 32);
  v97 = HIDWORD(v95) + HIDWORD(v94) * HIDWORD(v38) + HIDWORD(v96);
  v98 = (v94 * v38) | (v96 << 32);
  v99 = HIDWORD(v94) * v46;
  v100 = v94 * HIDWORD(v46) + v99 + ((v94 * v46) >> 32);
  v101 = HIDWORD(v99) + HIDWORD(v94) * HIDWORD(v46) + HIDWORD(v100);
  v102 = (v94 * v46) | (v100 << 32);
  v103 = HIDWORD(v94) * v40;
  v104 = HIDWORD(v94) * v47;
  v105 = HIDWORD(v104) + HIDWORD(v94) * HIDWORD(v47);
  v106 = v94 * HIDWORD(v47) + v104 + ((v94 * v47) >> 32);
  v107 = v105 + HIDWORD(v106);
  v108 = (v94 * v47) | (v106 << 32);
  v109 = v94 * v37;
  v110 = v94 * v39 + v103 + HIDWORD(v109);
  v111 = HIDWORD(v103) + HIDWORD(v94) * v39 + HIDWORD(v110);
  v24 = __CFADD__(v111, v98);
  v112 = v111 + v98;
  v114 = v24;
  v24 = __CFADD__(v24, v102);
  v113 = v114 + v102;
  v115 = v24;
  v116 = v97 + v113;
  if (__CFADD__(v97, v113))
  {
    v117 = 1;
  }

  else
  {
    v117 = v115;
  }

  v24 = __CFADD__(v108, v117);
  v118 = v108 + v117;
  v119 = v24;
  v24 = __CFADD__(v101, v118);
  v120 = v101 + v118;
  if (v24)
  {
    v121 = 1;
  }

  else
  {
    v121 = v119;
  }

  v122 = v107 + v121;
  v123 = HIDWORD(v93) * v40;
  v124 = HIDWORD(v123) + HIDWORD(v93) * v39;
  v125 = v93 * v39 + v123;
  v126 = HIDWORD(v93) * v38;
  v127 = HIDWORD(v126) + HIDWORD(v93) * HIDWORD(v38);
  v128 = v93 * HIDWORD(v38) + v126;
  v129 = v93 * v38;
  v130 = v128 + HIDWORD(v129);
  v131 = v127 + HIDWORD(v130);
  v132 = v129 | (v130 << 32);
  v133 = HIDWORD(v93) * v46;
  v134 = HIDWORD(v133) + HIDWORD(v93) * HIDWORD(v46);
  v135 = v93 * HIDWORD(v46) + v133;
  v136 = HIDWORD(v93) * v47;
  v137 = v93 * v37;
  v138 = v125 + HIDWORD(v137);
  v139 = v124 + HIDWORD(v138);
  v24 = __CFADD__(v139, v132);
  v140 = v139 + v132;
  v141 = v135 + ((v93 * v46) >> 32);
  v142 = (v93 * v46) | (v141 << 32);
  v144 = v24;
  v24 = __CFADD__(v24, v142);
  v143 = v144 + v142;
  LODWORD(v145) = v24;
  v24 = __CFADD__(v131, v143);
  v146 = v131 + v143;
  if (v24)
  {
    v145 = 1;
  }

  else
  {
    v145 = v145;
  }

  v147 = v93 * HIDWORD(v47) + v136 + ((v93 * v47) >> 32);
  v148 = (v93 * v47) | (v147 << 32);
  v24 = __CFADD__(v148, v145);
  v149 = v148 + v145;
  v150 = v134 + HIDWORD(v141);
  v151 = v24;
  v24 = __CFADD__(v150, v149);
  v152 = v150 + v149;
  v153 = HIDWORD(v136) + HIDWORD(v93) * HIDWORD(v47) + HIDWORD(v147);
  if (v24)
  {
    v154 = 1;
  }

  else
  {
    v154 = v151;
  }

  v155 = v153 + v154;
  v156 = v77 | (v78 << 32);
  v157 = v156 + v245;
  v158 = __CFADD__(v156, v245) + v84;
  LODWORD(v159) = __CFADD__(__CFADD__(v156, v245), v84);
  v24 = __CFADD__(v158, v244);
  v160 = v158 + v244;
  if (v24)
  {
    v159 = 1;
  }

  else
  {
    v159 = v159;
  }

  v24 = __CFADD__(v87, v159);
  v161 = v87 + v159;
  LODWORD(v162) = v24;
  v24 = __CFADD__(v161, v243);
  v163 = v161 + v243;
  if (v24)
  {
    v162 = 1;
  }

  else
  {
    v162 = v162;
  }

  v24 = __CFADD__(v91, v162);
  v164 = v91 + v162;
  v165 = v24;
  v166 = v246 + v164;
  if (__CFADD__(v246, v164))
  {
    v167 = 1;
  }

  else
  {
    v167 = v165;
  }

  v168 = v242 + v167;
  v169 = v109 | (v110 << 32);
  v170 = v160 + v169;
  v24 = __CFADD__(__CFADD__(v160, v169), v112);
  v171 = __CFADD__(v160, v169) + v112;
  LODWORD(v172) = v24;
  v24 = __CFADD__(v163, v171);
  v173 = v163 + v171;
  if (v24)
  {
    v172 = 1;
  }

  else
  {
    v172 = v172;
  }

  v24 = __CFADD__(v116, v172);
  v174 = v116 + v172;
  v175 = v247 | (v248 << 32);
  LODWORD(v176) = v24;
  v24 = __CFADD__(v174, v166);
  v177 = v174 + v166;
  v178 = v137 | (v138 << 32);
  if (v24)
  {
    v176 = 1;
  }

  else
  {
    v176 = v176;
  }

  v24 = __CFADD__(v120, v176);
  v179 = v120 + v176;
  LODWORD(v180) = v24;
  v24 = __CFADD__(v168, v179);
  v181 = v168 + v179;
  if (v24)
  {
    v180 = 1;
  }

  else
  {
    v180 = v180;
  }

  v182 = v122 + v180;
  v183 = v173 + v178;
  v24 = __CFADD__(__CFADD__(v173, v178), v140);
  v184 = __CFADD__(v173, v178) + v140;
  v185 = v24;
  v186 = v177 + v184;
  if (__CFADD__(v177, v184))
  {
    v187 = 1;
  }

  else
  {
    v187 = v185;
  }

  v24 = __CFADD__(v146, v187);
  v188 = v146 + v187;
  v189 = v24;
  v190 = v188 + v181;
  if (__CFADD__(v188, v181))
  {
    v191 = 1;
  }

  else
  {
    v191 = v189;
  }

  v24 = __CFADD__(v152, v191);
  v192 = v152 + v191;
  v193 = v24;
  v194 = v182 + v192;
  if (__CFADD__(v182, v192))
  {
    v195 = 1;
  }

  else
  {
    v195 = v193;
  }

  v196 = v155 + v195;
  v197 = __bid_Ex256m256[v250];
  if (a2 >= 20)
  {
    result = v249;
    if (a2 < 0x27)
    {
      v199 = v196 >> v197;
      v200 = (v196 << -v197) | (v194 >> v197);
      v201 = (v194 << -v197) | (v190 >> v197);
      v190 &= __bid_mask256[v249];
      v208 = __bid_half256[v249];
      if (v190 > v208)
      {
        goto LABEL_165;
      }

      if (v190 == v208)
      {
        if (v186 || v183 || v170 || v157 || v175)
        {
LABEL_165:
          v194 = 0;
          if (v190 != v208 || v186)
          {
            v212 = a8;
            v207 = 0;
            v198 = 0;
LABEL_238:
            *v212 = 1;
            goto LABEL_239;
          }

          v204 = (&__bid_ten2mxtrunc256 + 32 * v249);
          v209 = v204[3];
          if (v183 > v209)
          {
            goto LABEL_168;
          }

          if (v183 == v209)
          {
            v216 = v204[2];
            if (v170 > v216)
            {
              goto LABEL_168;
            }

            if (v170 == v216)
            {
              v217 = v204[1];
              if (v157 <= v217)
              {
                if (v157 == v217)
                {
                  v186 = 0;
                  v194 = 0;
                  v207 = 0;
LABEL_313:
                  v198 = 0;
                  goto LABEL_314;
                }

                goto LABEL_301;
              }

LABEL_168:
              v186 = 0;
              v194 = 0;
              v207 = 0;
LABEL_211:
              v198 = 0;
              goto LABEL_212;
            }
          }

LABEL_301:
          v186 = 0;
          v194 = 0;
          v207 = 0;
LABEL_318:
          v198 = 0;
          goto LABEL_239;
        }

        v186 = 0;
      }

      v194 = 0;
      v207 = 0;
LABEL_236:
      v198 = 0;
      goto LABEL_237;
    }

    if (a2 <= 0x39)
    {
      v200 = v196 >> v197;
      v201 = (v196 << -v197) | (v194 >> v197);
      v194 &= __bid_mask256[v249];
LABEL_187:
      v210 = __bid_half256[v249];
      if (v194 > v210)
      {
        goto LABEL_188;
      }

      if (v194 == v210)
      {
        if (v190 || v186 || v183 || v170 || v157 || v175)
        {
LABEL_188:
          v207 = 0;
          if (v194 != v210 || v190 || v186)
          {
            v212 = a8;
            v199 = 0;
            v198 = 0;
            goto LABEL_238;
          }

          v204 = (&__bid_ten2mxtrunc256 + 32 * v249);
          v211 = v204[3];
          if (v183 > v211)
          {
            goto LABEL_192;
          }

          if (v183 == v211)
          {
            v235 = v204[2];
            if (v170 > v235)
            {
              goto LABEL_192;
            }

            if (v170 == v235)
            {
              v236 = v204[1];
              if (v157 <= v236)
              {
                if (v157 == v236)
                {
                  v186 = 0;
                  v190 = 0;
                  v207 = 0;
LABEL_312:
                  v199 = 0;
                  goto LABEL_313;
                }

                goto LABEL_305;
              }

LABEL_192:
              v186 = 0;
              v190 = 0;
              v207 = 0;
LABEL_210:
              v199 = 0;
              goto LABEL_211;
            }
          }

LABEL_305:
          v186 = 0;
          v190 = 0;
          v207 = 0;
LABEL_317:
          v199 = 0;
          goto LABEL_318;
        }

        v186 = 0;
        v190 = 0;
      }

      v207 = 0;
LABEL_235:
      v199 = 0;
      goto LABEL_236;
    }

    if (v250 == 57)
    {
      v200 = 0;
      v201 = v155 + v195;
      goto LABEL_187;
    }

    v201 = v196 >> v197;
    v207 = __bid_mask256[v249] & v196;
    v213 = __bid_half256[v249];
    if (v207 > v213)
    {
LABEL_204:
      v200 = 0;
      if (v207 != v213 || v194 || v190 || v186)
      {
        v212 = a8;
        v199 = 0;
        v198 = 0;
        goto LABEL_238;
      }

      v204 = (&__bid_ten2mxtrunc256 + 32 * v249);
      v214 = v204[3];
      if (v183 > v214)
      {
        goto LABEL_209;
      }

      if (v183 == v214)
      {
        v237 = v204[2];
        if (v170 > v237)
        {
          goto LABEL_209;
        }

        if (v170 == v237)
        {
          v238 = v204[1];
          if (v157 <= v238)
          {
            if (v157 == v238)
            {
              v186 = 0;
              v190 = 0;
              v194 = 0;
              v200 = 0;
              goto LABEL_312;
            }

            goto LABEL_316;
          }

LABEL_209:
          v186 = 0;
          v190 = 0;
          v194 = 0;
          v200 = 0;
          goto LABEL_210;
        }
      }

LABEL_316:
      v186 = 0;
      v190 = 0;
      v194 = 0;
      v200 = 0;
      goto LABEL_317;
    }

    if (v207 == v213)
    {
      if (v194 || v190 || v186 || v183 || v170 || v157 || v175)
      {
        goto LABEL_204;
      }

      v186 = 0;
      v190 = 0;
      v194 = 0;
    }

    v200 = 0;
    goto LABEL_235;
  }

  v198 = v196 >> v197;
  v199 = (v196 << -v197) | (v194 >> v197);
  v200 = (v194 << -v197) | (v190 >> v197);
  v201 = (v190 << -v197) | (v186 >> v197);
  result = v249;
  v186 &= __bid_mask256[v249];
  v203 = __bid_half256[v249];
  if (v186 <= v203 && (v186 != v203 || !v183 && !v170 && !v157 && !v175))
  {
    v190 = 0;
    v194 = 0;
    v207 = 0;
LABEL_237:
    v212 = a9;
    goto LABEL_238;
  }

  if (v186 != v203)
  {
    goto LABEL_162;
  }

  v204 = (&__bid_ten2mxtrunc256 + 32 * v249);
  v205 = v204[2];
  if (v183 > v205)
  {
    goto LABEL_162;
  }

  v206 = v204[3];
  if (v183 == v206 && v170 > v205)
  {
    goto LABEL_162;
  }

  v190 = 0;
  if (v183 != v206 || v170 != v205)
  {
    v194 = 0;
    v207 = 0;
    goto LABEL_239;
  }

  v215 = v204[1];
  if (v157 > v215)
  {
LABEL_162:
    v190 = 0;
    v194 = 0;
    v207 = 0;
LABEL_212:
    v212 = a8;
    goto LABEL_238;
  }

  v190 = 0;
  v194 = 0;
  v207 = 0;
  if (v157 == v215)
  {
LABEL_314:
    v212 = a8;
    if (v175 <= *v204)
    {
      goto LABEL_239;
    }

    goto LABEL_238;
  }

LABEL_239:
  if (v207 || v194 || v190 || v186)
  {
    v221 = a5;
    v222 = a1;
  }

  else
  {
    v218 = &__bid_ten2mxtrunc256 + 32 * result;
    v219 = *(v218 + 3);
    v24 = v183 >= v219;
    v220 = v183 == v219;
    v221 = a5;
    v222 = a1;
    if (!v24 || v220 && ((v229 = *(v218 + 2), v170 < v229) || v170 == v229 && __PAIR128__(v157, v175) <= *v218))
    {
      v223 = a7;
      if ((v201 & 1) == 0)
      {
        v223 = a6;
      }

      *v223 = 1;
      v201 &= ~1uLL;
      *a8 = 0;
      *a9 = 0;
    }
  }

  v224 = v222 - a2;
  if (v222 - a2 <= 19)
  {
    v225 = 0;
    if (v198 || v199 || v200)
    {
      goto LABEL_293;
    }

    if (v201 != __bid_ten2k64[v224])
    {
      v225 = 0;
      v198 = 0;
      v199 = 0;
      v200 = 0;
      goto LABEL_293;
    }

    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = __bid_ten2k64[v224 - 1];
LABEL_254:
    v225 = 1;
LABEL_293:
    v226 = a4;
    goto LABEL_294;
  }

  if (v224 != 20)
  {
    if (v224 <= 0x26)
    {
      if (!(v198 | v199))
      {
        v227 = &__bid_ten2k128[2 * v224 - 40];
        if (v200 != v227[1] || v201 != *v227)
        {
          v225 = 0;
          v198 = 0;
          v199 = 0;
          goto LABEL_293;
        }

        v198 = 0;
        v199 = 0;
        v228 = &__bid_ten2k128[2 * v224 - 42];
        v201 = *v228;
        v200 = v228[1];
        goto LABEL_254;
      }

      goto LABEL_292;
    }

    v230 = v224 - 39;
    if (v224 == 39)
    {
      if (v198)
      {
        goto LABEL_292;
      }

      if (v199 == 2)
      {
        if (v200 != 0xF050FE938943ACC4)
        {
          v225 = 0;
          v198 = 0;
          v199 = 2;
          goto LABEL_293;
        }

        if (v201 != 0x5F65568000000000)
        {
          v225 = 0;
          v198 = 0;
          v199 = 2;
          v200 = 0xF050FE938943ACC4;
          goto LABEL_293;
        }

        v198 = 0;
        v199 = 0;
        v201 = 0x98A224000000000;
        v200 = 0x4B3B4CA85A86C47ALL;
        goto LABEL_254;
      }
    }

    else
    {
      if (v224 > 0x39)
      {
        v233 = (&__bid_ten2k256 + 32 * v230);
        if (v198 == v233[3] && v199 == v233[2] && v200 == v233[1] && v201 == *v233)
        {
          v234 = (&__bid_ten2k256 + 32 * v224 - 1280);
          v201 = *v234;
          v200 = v234[1];
          v199 = v234[2];
          v198 = v234[3];
          goto LABEL_254;
        }

LABEL_292:
        v225 = 0;
        goto LABEL_293;
      }

      if (v198)
      {
        goto LABEL_292;
      }

      v231 = (&__bid_ten2k256 + 32 * v230);
      if (v199 == v231[2] && v200 == v231[1] && v201 == *v231)
      {
        v198 = 0;
        v232 = (&__bid_ten2k256 + 32 * v224 - 1280);
        v201 = *v232;
        v200 = v232[1];
        v199 = v232[2];
        goto LABEL_254;
      }
    }

    v225 = 0;
    v198 = 0;
    goto LABEL_293;
  }

  if (v198 | v199)
  {
    goto LABEL_292;
  }

  v226 = a4;
  if (v200 == 5)
  {
    if (v201 == 0x6BC75E2D63100000)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v201 = 0x8AC7230489E80000;
      v225 = 1;
    }

    else
    {
      v225 = 0;
      v198 = 0;
      v199 = 0;
      v200 = 5;
    }
  }

  else
  {
    v225 = 0;
    v198 = 0;
    v199 = 0;
  }

LABEL_294:
  *v221 = v225;
  v226[2] = v199;
  v226[3] = v198;
  *v226 = v201;
  v226[1] = v200;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}