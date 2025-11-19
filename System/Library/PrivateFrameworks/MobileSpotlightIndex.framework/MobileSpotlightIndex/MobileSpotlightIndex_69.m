void PositionIterator_Resplit(void *a1, unint64_t a2)
{
  if (!a2 || a1[14] == a2)
  {
    return;
  }

  a1[1] = a2;
  v4 = a1[8];
  if (v4)
  {
    memmove((v4 + 56 * a1[10]), (v4 + 56 * a1[11]), 56 * (a1[12] - a1[11]));
    a1[10] += a1[12] - a1[11];
    oqsplit_AnnotatedPositionOffset_t((a1 + 7), a2);
    memmove((a1[8] + 56 * (a1[9] - a1[12]) + 56 * a1[11]), (a1[8] + 56 * a1[10]), 56 * (a1[12] - a1[11]));
    v5 = a1[9];
    a1[11] += v5 - a1[12];
    a1[12] = v5;
  }

  v6 = a1[17];
  if (v6 == 1)
  {
    goto LABEL_28;
  }

  do
  {
    v7 = a1[15];
    if (v7)
    {
      v8 = *(v7 + 56);
    }

    else
    {
      v8 = 0;
    }

    if (v8 >= a2)
    {
      break;
    }

    v9 = *(v7 + 72);
    v51[0] = *(v7 + 56);
    v51[1] = v9;
    v51[2] = *(v7 + 88);
    v52 = *(v7 + 104);
    v10 = v7 + 56 * v6;
    v11 = *(v10 - 56);
    v12 = *(v10 - 32);
    v53 = *(v10 - 48);
    v54 = v12;
    v55 = *(v10 - 16);
    v13 = v55;
    *(v7 + 64) = v53;
    *(v7 + 80) = v12;
    *(v7 + 96) = v13;
    v15 = a1[16];
    v14 = a1[17];
    *(v7 + 56) = v11;
    a1[17] = v14 - 1;
    v16 = v15 >> 1;
    v17 = 3;
    v18 = 2;
    v19 = 1;
    while (1)
    {
      v20 = a1[15];
      v21 = v20 + 56 * v18;
      v22 = *v21;
      v23 = *(v21 + 24);
      v59[0] = *(v21 + 8);
      v59[1] = v23;
      v59[2] = *(v21 + 40);
      v24 = v20 + 56 * v17;
      v25 = *v24;
      v26 = *(v24 + 24);
      v56 = *(v24 + 8);
      v57 = v26;
      v58 = *(v24 + 40);
      if (v17 >= v14)
      {
        v56 = xmmword_1C2C002E0;
        v57 = *algn_1C2C002F0;
        v58 = xmmword_1C2C00300;
        if (v18 >= v14)
        {
          goto LABEL_27;
        }

        v25 = 0xBFFFFFFFFFFFFFFFLL;
      }

      if (v22 < v11)
      {
        _CF = v25 >= v22;
        if (v25 < v22)
        {
          v28 = &v56;
        }

        else
        {
          v25 = v22;
          v28 = v59;
        }

        if (_CF)
        {
          v29 = v18;
        }

        else
        {
          v29 = v17;
        }

        goto LABEL_19;
      }

      if (v25 >= v11)
      {
        break;
      }

      v28 = &v56;
      v29 = v17;
LABEL_19:
      _X13 = v20 + 112 * v29;
      __asm { PRFM            #1, [X13] }

      if (v29 != v19)
      {
        v35 = v20 + 56 * v29;
        *v35 = v11;
        v36 = v54;
        *(v35 + 8) = v53;
        *(v35 + 24) = v36;
        *(v35 + 40) = v55;
        v37 = a1[15] + 56 * v19;
        v38 = v28[1];
        *(v37 + 8) = *v28;
        v18 = 2 * v29;
        v17 = (2 * v29) | 1;
        *v37 = v25;
        *(v37 + 24) = v38;
        *(v37 + 40) = v28[2];
        v19 = v29;
        if (v29 < v16)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    _X8 = v20 + 112 * v19;
    __asm { PRFM            #1, [X8] }

LABEL_27:
    check_oqpush_AnnotatedPositionOffset_t((a1 + 7), v51);
    v6 = a1[17];
  }

  while (v6 != 1);
LABEL_28:
  v41 = a1[1];
  if (v41)
  {
    v42 = v6 < 2;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = 2 * v41;
    v44 = (a1[15] + 56);
    v45 = v6 - 1;
    do
    {
      v46 = *v44;
      v44 += 7;
      if (v46 > v43)
      {
        v47 = __si_assert_copy_extra(0);
        v48 = v47;
        v49 = "";
        if (v47)
        {
          v49 = v47;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2197, "iter->futureOffsets._offsets[i].offset<=iter->split*2", v49);
        free(v48);
        if (__valid_fs(-1))
        {
          v50 = 2989;
        }

        else
        {
          v50 = 3072;
        }

        *v50 = -559038737;
        abort();
      }

      --v45;
    }

    while (v45);
  }
}

uint64_t CIReadPositionHeader(uint64_t a1, unint64_t *a2)
{
  VInt64 = v2_readVInt64(a1, a2);
  if (VInt64)
  {
    v5 = VInt64 >> 1;
    LOBYTE(VInt64) = v2_readVInt64(a1, a2);
  }

  else
  {
    v5 = 0;
  }

  if (VInt64)
  {
    v7 = __si_assert_copy_extra(0);
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.h", 279, "(value & 1) == 0", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      v10 = 2989;
    }

    else
    {
      v10 = 3072;
    }

    *v10 = -559038737;
    abort();
  }

  return v5;
}

__n128 check_pqpush_AnnotatedPositionOffset_t(uint64_t a1, __int128 *a2)
{
  if (!*a2)
  {
    v20 = __si_assert_copy_extra(0);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2162, "value.offset!=0", v22);
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  v24 = *a2;
  v25 = a2[1];
  v26 = a2[2];
  v27 = *(a2 + 6);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4;
  if ((v4 + 2) >= v3)
  {
    v6 = 2 * v3;
    v7 = v3 < 4;
    v8 = 4;
    if (!v7)
    {
      v8 = v6;
    }

    *(a1 + 8) = v8;
    v9 = 56 * v8 + 112;
    if (*a1)
    {
      v10 = malloc_type_zone_realloc(queryZone, *a1, v9, 0xA1A7ADA0uLL);
    }

    else
    {
      v10 = malloc_type_zone_malloc(queryZone, v9, 0x566E289CuLL);
    }

    v11 = v10;
    if (!v10)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v11;
    v11[6] = 0;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *v11 = 0u;
    v5 = *(a1 + 16);
  }

  *(a1 + 16) = v5 + 1;
  v12 = *a1 + 56 * v4;
  *v12 = v24;
  *(v12 + 16) = v25;
  result = v26;
  *(v12 + 32) = v26;
  *(v12 + 48) = v27;
  if (v4 >= 2)
  {
    do
    {
      v14 = *a1 + 56 * v4;
      v15 = *a1 + 56 * (v4 >> 1);
      if (*v14 > *v15)
      {
        break;
      }

      v28 = *v14;
      v29 = *(v14 + 16);
      v30 = *(v14 + 32);
      v31 = *(v14 + 48);
      v17 = *(v15 + 16);
      v16 = *(v15 + 32);
      v18 = *v15;
      *(v14 + 48) = *(v15 + 48);
      *(v14 + 16) = v17;
      *(v14 + 32) = v16;
      *v14 = v18;
      v19 = *a1 + 56 * (v4 >> 1);
      *v19 = v28;
      *(v19 + 16) = v29;
      result = v30;
      *(v19 + 32) = v30;
      *(v19 + 48) = v31;
      v7 = v4 > 3;
      v4 >>= 1;
    }

    while (v7);
  }

  return result;
}

__n128 check_oqpush_AnnotatedPositionOffset_t(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    v18 = __si_assert_copy_extra(0);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2168, "value.offset!=0", v20);
    free(v19);
    if (__valid_fs(-1))
    {
      v21 = 2989;
    }

    else
    {
      v21 = 3072;
    }

    *v21 = -559038737;
    abort();
  }

  v24 = *(a2 + 1);
  v25 = *(a2 + 3);
  v26 = *(a2 + 5);
  if (*(a1 + 48))
  {
    if (*(a1 + 56) < v2)
    {
      v22 = __si_assert_copy_extra(0);
      v6 = v22;
      v7 = "";
      if (v22)
      {
        v7 = v22;
      }

      v8 = "!queue->split || queue->splitPoint >= AnnotatedPositionOffset_t_GET_VALUE(value)";
LABEL_25:
      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.h", 25, v8, v7);
      free(v6);
      if (__valid_fs(-1))
      {
        v23 = 2989;
      }

      else
      {
        v23 = 3072;
      }

      *v23 = -559038737;
      abort();
    }

    v4 = *(a1 + 24);
    if (v4 >= *(a1 + 16))
    {
      v5 = __si_assert_copy_extra(0);
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      v8 = "!queue->split";
      goto LABEL_25;
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4 >= v9)
    {
      v10 = 2 * v9;
      if (!v9)
      {
        v10 = 4;
      }

      *(a1 + 16) = v10;
      v11 = *(a1 + 8);
      v12 = 56 * v10;
      if (v11)
      {
        v13 = malloc_type_zone_realloc(queryZone, v11, v12, 0xA1A7ADA0uLL);
      }

      else
      {
        v13 = malloc_type_zone_malloc(queryZone, v12, 0x566E289CuLL);
      }

      v14 = v13;
      if (!v13)
      {
        _log_fault_for_malloc_failure();
      }

      *(a1 + 8) = v14;
      v4 = *(a1 + 24);
    }
  }

  v15 = *(a1 + 8);
  *(a1 + 24) = v4 + 1;
  v16 = v15 + 56 * v4;
  *v16 = v2;
  *(v16 + 8) = v24;
  *(v16 + 24) = v25;
  result = v26;
  *(v16 + 40) = v26;
  return result;
}

uint64_t PositionIterator_GetNext(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 2 * v2;
      goto LABEL_63;
    }

    return result;
  }

  v4 = *(result + 136);
  v6 = *(result + 88);
  v5 = *(result + 96);
  if (v4 == 1)
  {
    if (v5 == v6)
    {
      return result;
    }

    if (v6 >= v5 || (v7 = *(result + 64), *(result + 88) = v6 + 1, v8 = v7 + 56 * v6, (v1 = *v8) == 0))
    {
      v9 = __si_assert_copy_extra(0);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2294, "tmp.offset", v11);
      goto LABEL_74;
    }

    goto LABEL_50;
  }

  v12 = *(result + 120);
  if (v5 != v6)
  {
    if (v12)
    {
      v48 = *(v12 + 56);
    }

    else
    {
      v48 = 0;
    }

    if (v6 >= v5)
    {
      goto LABEL_84;
    }

    v8 = *(result + 64) + 56 * v6;
    v1 = *v8;
    if (v48 < *v8)
    {
      v1 = *(v12 + 56);
      v13 = *(v12 + 64);
      v14 = *(v12 + 72);
      v15 = *(v12 + 80);
      v16 = *(v12 + 88);
      v17 = *(v12 + 92);
      v18 = *(v12 + 96);
      v19 = *(v12 + 104);
      v49 = v12 + 56 * v4;
      v50 = *(v49 - 56);
      v51 = *(v49 - 48);
      v52 = *(v49 - 32);
      v53 = *(v49 - 16);
      *(v12 + 56) = v50;
      *(v12 + 80) = v52;
      *(v12 + 96) = v53;
      *(v12 + 64) = v51;
      v54 = *(result + 136);
      v55 = *(result + 128) >> 1;
      v93 = v52;
      *(result + 136) = v54 - 1;
      v56 = 1;
      v57 = 2;
      v58 = 3;
      while (1)
      {
        v59 = *(result + 120);
        v60 = v59 + 56 * v57;
        v61 = *v60;
        v62 = *(v60 + 24);
        v98 = *(v60 + 8);
        v99 = v62;
        v100 = *(v60 + 40);
        v63 = v59 + 56 * v58;
        v64 = *v63;
        v65 = *(v63 + 24);
        v95 = *(v63 + 8);
        v96 = v65;
        v97 = *(v63 + 40);
        if (v58 >= v54)
        {
          v95 = xmmword_1C2C002E0;
          v96 = *algn_1C2C002F0;
          v97 = xmmword_1C2C00300;
          if (v57 >= v54)
          {
            goto LABEL_57;
          }

          v64 = 0xBFFFFFFFFFFFFFFFLL;
        }

        if (v61 >= v50)
        {
          if (v64 >= v50)
          {
            _X16 = v59 + 112 * v56;
            __asm { PRFM            #1, [X16] }

LABEL_57:
            if (!v1)
            {
              v87 = __si_assert_copy_extra(0);
              v88 = v87;
              v89 = "";
              if (v87)
              {
                v89 = v87;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2281, "tmp.offset", v89);
              free(v88);
              if (__valid_fs(-1))
              {
                v90 = 2989;
              }

              else
              {
                v90 = 3072;
              }

              *v90 = -559038737;
              abort();
            }

            goto LABEL_58;
          }

          v67 = &v95;
          v68 = v58;
        }

        else
        {
          v66 = v64 >= v61;
          if (v64 < v61)
          {
            v67 = &v95;
          }

          else
          {
            v64 = v61;
            v67 = &v98;
          }

          if (v66)
          {
            v68 = v57;
          }

          else
          {
            v68 = v58;
          }
        }

        _X20 = v59 + 112 * v68;
        __asm { PRFM            #1, [X20] }

        if (v68 != v56)
        {
          v71 = v59 + 56 * v68;
          *v71 = v50;
          *(v71 + 8) = v51;
          *(v71 + 24) = v93;
          *(v71 + 40) = v53;
          v72 = *(result + 120) + 56 * v56;
          v73 = v67[1];
          *(v72 + 8) = *v67;
          v57 = 2 * v68;
          v58 = (2 * v68) | 1;
          *v72 = v64;
          *(v72 + 24) = v73;
          *(v72 + 40) = v67[2];
          v56 = v68;
          if (v68 < v55)
          {
            continue;
          }
        }

        goto LABEL_57;
      }
    }

    *(result + 88) = v6 + 1;
    if (!v1)
    {
LABEL_84:
      v91 = __si_assert_copy_extra(0);
      v10 = v91;
      v92 = "";
      if (v91)
      {
        v92 = v91;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2287, "tmp.offset", v92);
LABEL_74:
      free(v10);
      if (__valid_fs(-1))
      {
        v86 = 2989;
      }

      else
      {
        v86 = 3072;
      }

      *v86 = -559038737;
      abort();
    }

LABEL_50:
    v19 = *(v8 + 48);
    v18 = *(v8 + 40);
    v16 = *(v8 + 32);
    v17 = *(v8 + 36);
    v15 = *(v8 + 24);
    v14 = *(v8 + 16);
    v13 = *(v8 + 8);
    goto LABEL_58;
  }

  v1 = *(v12 + 56);
  v13 = *(v12 + 64);
  v14 = *(v12 + 72);
  v15 = *(v12 + 80);
  v16 = *(v12 + 88);
  v17 = *(v12 + 92);
  v18 = *(v12 + 96);
  v19 = *(v12 + 104);
  v20 = v12 + 56 * v4;
  v21 = *(v20 - 56);
  v22 = *(v20 - 48);
  v23 = *(v20 - 32);
  v24 = *(v20 - 16);
  *(v12 + 56) = v21;
  *(v12 + 80) = v23;
  *(v12 + 96) = v24;
  *(v12 + 64) = v22;
  v25 = *(result + 136);
  v26 = *(result + 128) >> 1;
  v94 = v23;
  *(result + 136) = v25 - 1;
  v27 = 1;
  v28 = 2;
  v29 = 3;
  while (1)
  {
    v30 = *(result + 120);
    v31 = v30 + 56 * v28;
    v32 = *v31;
    v33 = *(v31 + 24);
    v98 = *(v31 + 8);
    v99 = v33;
    v100 = *(v31 + 40);
    v34 = v30 + 56 * v29;
    v35 = *v34;
    v36 = *(v34 + 24);
    v95 = *(v34 + 8);
    v96 = v36;
    v97 = *(v34 + 40);
    if (v29 >= v25)
    {
      v95 = xmmword_1C2C002E0;
      v96 = *algn_1C2C002F0;
      v97 = xmmword_1C2C00300;
      if (v28 >= v25)
      {
        goto LABEL_52;
      }

      v35 = 0xBFFFFFFFFFFFFFFFLL;
    }

    if (v32 < v21)
    {
      _CF = v35 >= v32;
      if (v35 < v32)
      {
        v38 = &v95;
      }

      else
      {
        v35 = v32;
        v38 = &v98;
      }

      if (_CF)
      {
        v39 = v28;
      }

      else
      {
        v39 = v29;
      }

      goto LABEL_21;
    }

    if (v35 >= v21)
    {
      break;
    }

    v38 = &v95;
    v39 = v29;
LABEL_21:
    _X20 = v30 + 112 * v39;
    __asm { PRFM            #1, [X20] }

    if (v39 != v27)
    {
      v45 = v30 + 56 * v39;
      *v45 = v21;
      *(v45 + 8) = v22;
      *(v45 + 24) = v94;
      *(v45 + 40) = v24;
      v46 = *(result + 120) + 56 * v27;
      v47 = v38[1];
      *(v46 + 8) = *v38;
      v28 = 2 * v39;
      v29 = (2 * v39) | 1;
      *v46 = v35;
      *(v46 + 24) = v47;
      *(v46 + 40) = v38[2];
      v27 = v39;
      if (v39 < v26)
      {
        continue;
      }
    }

    goto LABEL_52;
  }

  _X16 = v30 + 112 * v27;
  __asm { PRFM            #1, [X16] }

LABEL_52:
  if (!v1)
  {
    v76 = __si_assert_copy_extra(0);
    v10 = v76;
    v77 = "";
    if (v76)
    {
      v77 = v76;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2302, "tmp.offset", v77);
    goto LABEL_74;
  }

LABEL_58:
  *result = v1;
  *(result + 48) = v14;
  *(result + 40) = v15;
  *(result + 156) = v18;
  *(result + 148) = v16;
  *(result + 152) = v17;
  *(result + 16) = v19;
  *(result + 24) = v13;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = 2 * v2;
    if (v1 <= v2 || v1 > v3)
    {
      v84 = __si_assert_copy_extra(0);
      v10 = v84;
      v85 = "";
      if (v84)
      {
        v85 = v84;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2309, "iter->ptr > iter->split && iter->ptr <= iter->split*2", v85);
      goto LABEL_74;
    }

LABEL_63:
    if (v1 <= v2 || v1 > v3)
    {
      v82 = __si_assert_copy_extra(0);
      v10 = v82;
      v83 = "";
      if (v82)
      {
        v83 = v82;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2313, "iter->ptr > iter->split && iter->ptr <= iter->split*2", v83);
      goto LABEL_74;
    }
  }

  return result;
}

uint64_t iterationIsLooping(uint64_t *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 && *a1 == a2)
  {
    v4 = a1[4] + 1;
    a1[4] = v4;
    if (v4 < 0x3E9)
    {
      result = 0;
    }

    else
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = *a1;
        v10 = 136315906;
        v11 = "iterationIsLooping";
        v12 = 1024;
        v13 = 2627;
        v14 = 2048;
        v15 = v9;
        v16 = 2048;
        v17 = a2;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: %llx==%llx", &v10, 0x26u);
      }

      *__error() = v5;
      result = 1;
    }
  }

  else
  {
    result = 0;
    a1[4] = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SLReadPositionHeader(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = *(a1 + v4++);
    v3 |= (v5 & 0x7F) << v2;
    if ((v5 & 0x80) == 0)
    {
      break;
    }

    v6 = v2 == 63;
    v2 += 7;
  }

  while (!v6);
  *a2 = v4;
  if (v3)
  {
    v9 = 0;
    v8 = 0;
    do
    {
      v10 = *(a1 + v4++);
      v8 |= (v10 & 0x7F) << v9;
      if ((v10 & 0x80) == 0)
      {
        break;
      }

      v6 = v9 == 63;
      v9 += 7;
    }

    while (!v6);
    result = v3 >> 1;
    *a2 = v4;
  }

  else
  {
    result = 0;
    LOBYTE(v8) = v3;
  }

  if (v8)
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.h", 294, "(value & 1) == 0", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

  return result;
}

uint64_t PositionIterate(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a1;
  *(&v366[2] + 7) = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 384);
  v10 = *a3;
  v358 = *v9;
  v11 = *a1;
  v12 = *(v9 + 17);
  if (*(v9 + 18))
  {
    if (!v11)
    {
      PositionIterator_GetNext(a1);
      *(v8 + 32) = 0;
      goto LABEL_449;
    }

    v13 = *(a1 + 8);
    if (!v13 || (v11 > v13 ? (v14 = v11 > 2 * v13) : (v14 = 1), !v14))
    {
      if (dword_1EBF46AF4 >= 5)
      {
        v302 = *__error();
        v303 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
        {
          v304 = *(a1 + 24);
          *buf = 134218496;
          *&buf[4] = a1;
          *&buf[12] = 2048;
          *&buf[14] = v11;
          *&buf[22] = 2048;
          *&buf[24] = v304;
          _os_log_impl(&dword_1C278D000, v303, OS_LOG_TYPE_DEFAULT, "%p %llu %p", buf, 0x20u);
        }

        *__error() = v302;
        v9 = *(a3 + 384);
        v8 = a1;
      }

      v15 = *(a3 + 8);
      v16 = v9[1];
      if (v11 < v15 || (v16 + v15 > v11 ? (v17 = v11 + 30 > v16 + v15) : (v17 = 1), v17))
      {
        *(a3 + 8) = v11 & 0x3FFFFFFFFFFFF000;
        if (fd_pread(*(v358 + 4488), v10, v16, v11 & 0x3FFFFFFFFFFFF000) == -1)
        {
          goto LABEL_448;
        }

        *(a3 + 28) = 0;
        v15 = *(a3 + 8);
        v16 = *(*(a3 + 384) + 8);
        v24 = 1;
      }

      else
      {
        v23 = *(a3 + 28);
        *(a3 + 28) = v23 + 1;
        v24 = v23 + 2;
      }

      v361 = v11 - v15;
      if (v11 - v15 + 20 >= v16)
      {
        *(a3 + 8) = v11 & 0x3FFFFFFFFFFFF000;
        v25 = fd_pread(*(v358 + 4488), *a3, v16, v11 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        v361 = v11 - *(a3 + 8);
        if (v25 == -1)
        {
          goto LABEL_446;
        }
      }

      else
      {
        *(a3 + 28) = v24;
      }

      v26 = SLReadPositionHeader(v10, &v361);
      v359 = 0u;
      v360 = 0u;
      v27 = *(v8 + 48);
      v345 = v11;
      v347 = a4;
      v342 = a5;
      v349 = v12;
      *&v354 = v26;
      *(&v354 + 1) = v28;
      if (v27 + 1 >= 2)
      {
        v29 = *(v8 + 24);
        v30 = *(a3 + 16);
        if (v27 >= *(a3 + 24))
        {
          v31 = *(a3 + 24);
        }

        else
        {
          v31 = *(v8 + 48);
        }
      }

      else
      {
        v29 = *(v8 + 24);
        v30 = *(a3 + 16);
        v31 = *(a3 + 24);
      }

      initializeEnumberatorForRangeLocked(&v359, v29, v30, v31);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = *(v8 + 48);
      if (v44 >= *(a3 + 20))
      {
        v45 = *(a3 + 20);
      }

      else
      {
        v45 = *(v8 + 48);
      }

      if (v44)
      {
        LODWORD(v46) = v45;
      }

      else
      {
        LODWORD(v46) = *(a3 + 20);
      }

      v47 = v361;
      while (1)
      {
        v48 = v46;
        v46 = v43;
        if (!*(a1 + 40))
        {
          v46 = _CIIndexSetEnumeratorNext(&v359);
        }

        v49 = v47 + 5;
        v50 = *(*(a3 + 384) + 8);
        if (v349)
        {
          break;
        }

        if (v49 >= v50)
        {
          v59 = *a3;
          v60 = *(a3 + 8) + v47;
          *(a3 + 8) = v60 & 0x3FFFFFFFFFFFF000;
          v61 = fd_pread(*(v358 + 4488), v59, v50, v60 & 0x3FFFFFFFFFFFF000);
          *(a3 + 28) = 0;
          v47 = v60 - *(a3 + 8);
          v58 = v47;
          if (v61 == -1)
          {
            goto LABEL_385;
          }
        }

        else
        {
          ++*(a3 + 28);
        }

        v62 = v47 + 1;
        v63 = v10[v47];
        if ((v10[v47] & 0x80000000) == 0)
        {
          v64 = v47 + 1;
          goto LABEL_100;
        }

        v64 = v47 + 2;
        v67 = v10[v62];
        v68 = v10[v62];
        if ((v67 & 0x80000000) == 0)
        {
          v63 = v63 & 0x7F | (v68 << 7);
          goto LABEL_100;
        }

        v72 = v47 + 3;
        v73 = v10[v64];
        if ((v10[v64] & 0x80000000) == 0)
        {
          v74 = ((v68 & 0x7F) << 7) | (v73 << 14) | v63 & 0x7F;
          v64 = v47 + 3;
LABEL_99:
          v63 = v74;
          goto LABEL_100;
        }

        v64 = v47 + 4;
        v77 = v10[v72];
        v78 = v10[v72];
        if (v77 < 0)
        {
          v92 = v10[v64];
          if (v92 < 0)
          {
LABEL_482:
            v298 = __si_assert_copy_extra(0);
            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_468:
            free(v298);
            if (__valid_fs(-1))
            {
              v299 = 2989;
            }

            else
            {
              v299 = 3072;
            }

            *v299 = -559038737;
            abort();
          }

          v64 = v47 + 5;
          v63 = ((v78 & 0x7F) << 21) | (v92 << 28) | ((v73 & 0x7F) << 14) | ((v68 & 0x7F) << 7) | v63 & 0x7F;
        }

        else
        {
          v63 = ((v73 & 0x7F) << 14) | (v78 << 21) | ((v68 & 0x7F) << 7) | v63 & 0x7F;
        }

LABEL_100:
        v94 = *(a1 + 40);
        if (!v63)
        {
          v58 = v64;
          goto LABEL_302;
        }

        if (!v94 && !v46)
        {
          v361 = v64;
          if (v342)
          {
            v216 = *__error();
            v217 = _SILogForLogForCategory(10);
            v218 = 2 * (dword_1EBF46AF4 < 4);
            if (os_log_type_enabled(v217, v218))
            {
              *buf = 67109120;
              *&buf[4] = v63;
              _os_log_impl(&dword_1C278D000, v217, v218, "Out of postings while we still have more position data (%u)", buf, 8u);
            }

            v219 = __error();
            v220 = 0;
            *v219 = v216;
            v8 = a1;
            v11 = v345;
            goto LABEL_386;
          }

          v257 = *(a3 + 32);
          *(a1 + 148) = v257;
          *(a1 + 48) = v48;
          *(v366 + 3) = 0;
          LODWORD(v366[0]) = 0;
          v258 = *(a1 + 152);
          v259 = *(a1 + 156);
          v261 = *(a1 + 16);
          v260 = *(a1 + 24);
          *buf = *a1;
          *&buf[8] = v260;
          *&buf[16] = v48;
          *&buf[20] = 0;
          v8 = a1;
          *&buf[24] = v40;
          v363 = v257;
          v364 = v258;
          v365 = v259;
          *(v366 + 7) = v261;
          deferPosition(a1, buf);
          v11 = v345;
LABEL_447:
          *(v8 + 148) = 0;
          *v8 = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
          PositionIterator_GetNext(v8);
          if (iterationIsLooping(v8, v11))
          {
LABEL_448:
            result = 0;
            goto LABEL_457;
          }

LABEL_449:
          v255 = *v8;
          if (*(v8 + 188))
          {
            if (v255)
            {
              goto LABEL_451;
            }

            goto LABEL_379;
          }

LABEL_452:
          if (v255)
          {
            result = 1;
          }

          else if (*(v8 + 80))
          {
            result = 4294967292;
          }

          else
          {
            result = 0;
          }

          goto LABEL_457;
        }

        if (v94)
        {
          *(a1 + 40) = v94 - 1;
          goto LABEL_110;
        }

        HasIndex = CIIndexSetHasIndex(v347, v46);
        v97 = a1;
        v98 = *(a1 + 40);
        if (v98)
        {
          *(a1 + 40) = v98 - 1;
        }

        if (HasIndex)
        {
          if (v41)
          {
            locked = lockedCountItemsInRange(v347, v46, v41, v96) + v42;
          }

          else
          {
            locked = lockedCountItemsInRange(v347, v46, *(a3 + 24), v96);
          }

          v42 = locked - 1;
          v116 = *(a1 + 168);
          if (locked - 1 >= v116)
          {
            v117 = *(a1 + 168);
            if (!v116)
            {
              v117 = 1 << -__clz(v42);
              *(a1 + 168) = v117;
            }

            if (locked >= v117)
            {
              do
              {
                v232 = locked >= 2 * v117;
                v117 *= 2;
              }

              while (v232);
              *(a1 + 168) = v117;
            }

            v118 = *(a1 + 160);
            v119 = 8 * v117;
            if (v118)
            {
              v120 = malloc_type_zone_realloc(queryZone, v118, v119, 0xA1A7ADA0uLL);
            }

            else
            {
              v120 = malloc_type_zone_malloc(queryZone, v119, 0x566E289CuLL);
            }

            v121 = v120;
            if (!v120)
            {
              _log_fault_for_malloc_failure();
            }

            *(a1 + 160) = v121;
            v122 = &v121[8 * v116];
            v97 = a1;
            bzero(v122, 8 * (*(a1 + 168) - v116));
          }

          if (!*(*(v97 + 160) + 8 * v42))
          {
            *(*(v97 + 160) + 8 * v42) = CIIndexSetCreateWithRange(0, 0x400u, 1);
          }

          v123 = 0;
          do
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    v124 = __OFSUB__(v63, v123);
                    v63 -= v123;
                    if ((v63 < 0) ^ v124 | (v63 == 0))
                    {
                      goto LABEL_461;
                    }

                    if (v63 <= 0)
                    {
                      goto LABEL_467;
                    }

                    CIIndexSetAddIndexExpandingRange(*(*(v97 + 160) + 8 * v42), v63, v100);
                    v125 = *(*(a3 + 384) + 8);
                    if (v64 + 5 >= v125)
                    {
                      v126 = *a3;
                      v127 = *(a3 + 8) + v64;
                      *(a3 + 8) = v127 & 0x3FFFFFFFFFFFF000;
                      v128 = fd_pread(*(v358 + 4488), v126, v125, v127 & 0x3FFFFFFFFFFFF000);
                      *(a3 + 28) = 0;
                      v64 = v127 - *(a3 + 8);
                      if (v128 == -1)
                      {
                        goto LABEL_160;
                      }
                    }

                    else
                    {
                      ++*(a3 + 28);
                    }

                    v129 = v64 + 1;
                    v123 = v10[v64];
                    if (v10[v64] < 0)
                    {
                      break;
                    }

                    ++v64;
                    if (!v123)
                    {
                      goto LABEL_160;
                    }
                  }

                  v130 = v64 + 2;
                  v131 = v10[v129];
                  v132 = v10[v129];
                  if (v131 < 0)
                  {
                    break;
                  }

                  v123 = v123 & 0x7F | (v132 << 7);
                  v64 += 2;
                  if (!v123)
                  {
                    goto LABEL_160;
                  }
                }

                v133 = v64 + 3;
                v134 = v10[v130];
                v135 = v10[v130];
                if (v134 < 0)
                {
                  break;
                }

                v64 += 3;
                v123 = ((v132 & 0x7F) << 7) | (v135 << 14) | v123 & 0x7F;
                if (!v123)
                {
                  goto LABEL_160;
                }
              }

              v136 = v10[v133];
              v137 = v10[v133];
              if (v136 < 0)
              {
                break;
              }

              v64 += 4;
              v123 = ((v135 & 0x7F) << 14) | (v137 << 21) | ((v132 & 0x7F) << 7) | v123 & 0x7F;
              if (!v123)
              {
                goto LABEL_160;
              }
            }

            v138 = v10[v64 + 4];
            if (v138 < 0)
            {
              goto LABEL_492;
            }

            v64 += 5;
            v123 = ((v137 & 0x7F) << 21) | (v138 << 28) | ((v135 & 0x7F) << 14) | ((v132 & 0x7F) << 7) | v123 & 0x7F;
          }

          while (v123);
LABEL_160:
          v41 = v46;
        }

        else
        {
          do
          {
LABEL_110:
            v101 = *(*(a3 + 384) + 8);
            if (v64 + 5 >= v101)
            {
              v102 = *a3;
              v103 = *(a3 + 8) + v64;
              *(a3 + 8) = v103 & 0x3FFFFFFFFFFFF000;
              v104 = fd_pread(*(v358 + 4488), v102, v101, v103 & 0x3FFFFFFFFFFFF000);
              *(a3 + 28) = 0;
              v64 = v103 - *(a3 + 8);
              if (v104 == -1)
              {
                break;
              }
            }

            else
            {
              ++*(a3 + 28);
            }

            v105 = v64 + 1;
            v106 = v10[v64];
            if (v10[v64] < 0)
            {
              v107 = v64 + 2;
              v108 = v10[v105];
              v109 = v10[v105];
              if (v108 < 0)
              {
                v110 = v64 + 3;
                v111 = v10[v107];
                v112 = v10[v107];
                if (v111 < 0)
                {
                  v113 = v10[v110];
                  v114 = v10[v110];
                  if (v113 < 0)
                  {
                    v115 = v10[v64 + 4];
                    if (v115 < 0)
                    {
                      goto LABEL_482;
                    }

                    v64 += 5;
                    v106 = ((v114 & 0x7F) << 21) | (v115 << 28) | ((v112 & 0x7F) << 14) | ((v109 & 0x7F) << 7) | v106 & 0x7F;
                  }

                  else
                  {
                    v64 += 4;
                    v106 = ((v112 & 0x7F) << 14) | (v114 << 21) | ((v109 & 0x7F) << 7) | v106 & 0x7F;
                  }
                }

                else
                {
                  v64 += 3;
                  v106 = ((v109 & 0x7F) << 7) | (v112 << 14) | v106 & 0x7F;
                }
              }

              else
              {
                v106 = v106 & 0x7F | (v109 << 7);
                v64 += 2;
              }
            }

            else
            {
              ++v64;
            }
          }

          while (v106);
        }

        v139 = *(a3 + 56);
        if (v139 >= v46)
        {
          v139 = v46;
        }

        *(a3 + 56) = v139;
        ++v40;
        v47 = v64;
        v43 = v46;
      }

      if (v49 >= v50)
      {
        v53 = *a3;
        v54 = *(a3 + 8) + v47;
        *(a3 + 8) = v54 & 0x3FFFFFFFFFFFF000;
        v55 = fd_pread(*(v358 + 4488), v53, v50, v54 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        v47 = v54 - *(a3 + 8);
        if (v55 == -1)
        {
          v58 = v47;
LABEL_385:
          v220 = 0;
          v361 = v58;
          v8 = a1;
          v11 = v345;
LABEL_386:
          v268 = *(&v354 + 1);
          v267 = v354;
          if (v354 == 0)
          {
            v267 = *(v8 + 16);
            *(v8 + 16) = 0;
          }

          v269 = *(v8 + 8);
          v270 = *(**(a3 + 384) + 32);
          if (v269 >= v270)
          {
            v270 = 2 * v269;
          }

          if (*(&v354 + 1) <= v11 && *(&v354 + 1))
          {
            v271 = v11 <= v270 || *(&v354 + 1) > v270;
            if (v271 && *(&v354 + 1) >= v269)
            {
              goto LABEL_467;
            }
          }

          if (v267 - 1 < v11)
          {
            v273 = v11 <= v270 || v267 > v270;
            if (v273 && v267 >= v269)
            {
              goto LABEL_461;
            }
          }

          if (v267 - 1 < *(&v354 + 1))
          {
            v275 = *(&v354 + 1) <= v270 || v267 > v270;
            if (v275 && v267 >= v269)
            {
              goto LABEL_467;
            }
          }

          if (*(&v354 + 1))
          {
            v277 = 0;
          }

          else
          {
            v277 = v267;
          }

          if (*(&v354 + 1) && v267)
          {
            v277 = 0;
            *(v8 + 16) = v267;
          }

          if (v277 | *(&v354 + 1))
          {
            if (v220)
            {
              if (dword_1EBF46AF4 >= 5)
              {
                v322 = v11;
                v323 = *__error();
                v324 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
                {
                  v325 = *(a1 + 24);
                  v326 = *(a1 + 148);
                  *buf = 134218240;
                  *&buf[4] = v325;
                  *&buf[12] = 1024;
                  *&buf[14] = v326;
                  _os_log_impl(&dword_1C278D000, v324, OS_LOG_TYPE_DEFAULT, "Iterator for %p done with generation %d", buf, 0x12u);
                }

                *__error() = v323;
                v8 = a1;
                v11 = v322;
                v268 = *(&v354 + 1);
              }

              *(v8 + 148) = *(a3 + 32);
            }

            if (v268)
            {
              if (!v277)
              {
                if (v268 == v11)
                {
                  goto LABEL_447;
                }

                v278 = *(v8 + 48);
                v279 = *(v8 + 40);
                v281 = *(v8 + 148);
                v280 = *(v8 + 152);
                v282 = *(v8 + 156);
                v283 = *(v8 + 16);
                v284 = *(v8 + 24);
                if (v268 <= v11 && v268 <= *(v8 + 112))
                {
                  *buf = v268;
                  *&buf[8] = v284;
                  *&buf[16] = v278;
                  *&buf[20] = 0;
                  *&buf[24] = v279;
                  v363 = v281;
                  v364 = v280;
                  v365 = v282;
                  LODWORD(v366[0]) = 0;
                  *(v366 + 3) = 0;
                  *(v366 + 7) = v283;
                  check_oqpush_AnnotatedPositionOffset_t(v8 + 56, buf);
                  goto LABEL_447;
                }

                v285 = *(v8 + 8);
                if (v285 && (v268 <= v285 || v268 > 2 * v285))
                {
                  goto LABEL_461;
                }

                *buf = v268;
                *&buf[8] = v284;
                *&buf[16] = v278;
                *&buf[20] = 0;
                *&buf[24] = v279;
                v363 = v281;
                v364 = v280;
                v365 = v282;
                LODWORD(v366[0]) = 0;
                *(v366 + 3) = 0;
                *(v366 + 7) = v283;
                goto LABEL_445;
              }

LABEL_467:
              v298 = __si_assert_copy_extra(0);
              __message_assert("%s:%u: failed assertion '%s' %s ");
              goto LABEL_468;
            }

            if (v277)
            {
              if (v277 == v11)
              {
                goto LABEL_447;
              }

              v286 = *(v8 + 48);
              v287 = *(v8 + 40);
              v289 = *(v8 + 148);
              v288 = *(v8 + 152);
              v290 = *(v8 + 156);
              v292 = *(v8 + 16);
              v291 = *(v8 + 24);
              if (v277 <= v11 && v277 <= *(v8 + 112))
              {
                if (!v292)
                {
                  *buf = v277;
                  *&buf[8] = v291;
                  *&buf[16] = v286;
                  *&buf[20] = 0;
                  *&buf[24] = v287;
                  v363 = v289;
                  v364 = v288;
                  v365 = v290;
                  v366[0] = 0;
                  *(v366 + 7) = 0;
                  check_oqpush_AnnotatedPositionOffset_t(v8 + 56, buf);
                  if (*(a3 + 48) > v277)
                  {
                    v300 = *(v8 + 8);
                    if (v277 < v300 && v277 > v300 >> 1)
                    {
                      *(a3 + 48) = v277;
                    }
                  }

                  goto LABEL_447;
                }

                goto LABEL_461;
              }

              if (v292)
              {
                goto LABEL_461;
              }

              v293 = *(v8 + 8);
              if (v293)
              {
                if (v277 <= v293 || v277 > 2 * v293)
                {
                  goto LABEL_461;
                }
              }

              v294 = *(a3 + 40);
              if (v294 >= v277)
              {
                v294 = v277;
              }

              *(a3 + 40) = v294;
              *buf = v277;
              *&buf[8] = v291;
              *&buf[16] = v286;
              *&buf[20] = 0;
              *&buf[24] = v287;
              v363 = v289;
              v364 = v288;
              v365 = v290;
              v366[0] = 0;
              *(v366 + 7) = 0;
LABEL_445:
              check_pqpush_AnnotatedPositionOffset_t(v8 + 120, buf);
              goto LABEL_447;
            }
          }

LABEL_446:
          instr_release(*(v8 + 24));
          goto LABEL_447;
        }

        v52 = 1;
      }

      else
      {
        v51 = *(a3 + 28);
        *(a3 + 28) = v51 + 1;
        v52 = v51 + 2;
      }

      v56 = v47 + 1;
      v57 = v10[v47];
      if (v10[v47] < 0)
      {
        v58 = v47 + 2;
        v65 = v10[v56];
        v66 = v10[v56];
        if (v65 < 0)
        {
          v69 = v47 + 3;
          v70 = v10[v58];
          v71 = v70;
          if (v70 < 0)
          {
            v58 = v47 + 4;
            v75 = v10[v69];
            v76 = v10[v69];
            if (v75 < 0)
            {
              v79 = v10[v58];
              if (v79 < 0)
              {
                goto LABEL_492;
              }

              v58 = v47 + 5;
              v57 = ((v76 & 0x7F) << 21) | (v79 << 28) | ((v71 & 0x7F) << 14) | ((v66 & 0x7F) << 7) | v57 & 0x7F;
            }

            else
            {
              v57 = ((v71 & 0x7F) << 14) | (v76 << 21) | ((v66 & 0x7F) << 7) | v57 & 0x7F;
            }
          }

          else
          {
            v58 = v47 + 3;
            v57 = ((v66 & 0x7F) << 7) | (v71 << 14) | v57 & 0x7F;
          }
        }

        else
        {
          v57 = v57 & 0x7F | (v66 << 7);
        }
      }

      else
      {
        v58 = v47 + 1;
      }

      if (!v57)
      {
        v94 = *(a1 + 40);
LABEL_302:
        v361 = v58;
        v11 = v345;
        if (!v94)
        {
          if (v46)
          {
            v220 = 0;
            v8 = a1;
            *(a1 + 48) = v46;
          }

          else
          {
            v226 = v48 - 1;
            v8 = a1;
            *(a1 + 48) = v226;
            if (dword_1EBF46AF4 >= 5)
            {
              v331 = *__error();
              v332 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT))
              {
                v333 = *(a1 + 24);
                v334 = *(a1 + 148);
                v335 = *(a1 + 48);
                *buf = 134218496;
                *&buf[4] = v333;
                *&buf[12] = 1024;
                *&buf[14] = v334;
                *&buf[18] = 1024;
                *&buf[20] = v335;
                _os_log_impl(&dword_1C278D000, v332, OS_LOG_TYPE_DEFAULT, "Iterator for %p might be done with generation %d. Read docs: %x", buf, 0x18u);
              }

              *__error() = v331;
              v220 = 1;
              v8 = a1;
            }

            else
            {
              v220 = 1;
            }
          }

          goto LABEL_386;
        }

LABEL_461:
        v296 = __si_assert_copy_extra(0);
LABEL_462:
        __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_463:
        free(v296);
        if (__valid_fs(-1))
        {
          v297 = 2989;
        }

        else
        {
          v297 = 3072;
        }

        *v297 = -559038737;
        abort();
      }

      v80 = *(*(a3 + 384) + 8);
      if (v58 + 5 >= v80)
      {
        v81 = *a3;
        v82 = *(a3 + 8) + v58;
        *(a3 + 8) = v82 & 0x3FFFFFFFFFFFF000;
        v83 = fd_pread(*(v358 + 4488), v81, v80, v82 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        v58 = v82 - *(a3 + 8);
        if (v83 == -1)
        {
          goto LABEL_385;
        }
      }

      else
      {
        *(a3 + 28) = v52;
      }

      v84 = v58 + 1;
      v63 = v10[v58];
      if ((v10[v58] & 0x80000000) == 0)
      {
        v64 = v58 + 1;
        goto LABEL_100;
      }

      v64 = v58 + 2;
      v85 = v10[v84];
      v86 = v10[v84];
      if ((v85 & 0x80000000) == 0)
      {
        v63 = v63 & 0x7F | (v86 << 7);
        goto LABEL_100;
      }

      v87 = v58 + 3;
      v88 = v10[v64];
      if (v10[v64] < 0)
      {
        v64 = v58 + 4;
        v89 = v10[v87];
        v90 = v10[v87];
        if (v89 < 0)
        {
          v93 = v10[v64];
          if (v93 < 0)
          {
LABEL_492:
            v296 = __si_assert_copy_extra(0);
            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
            goto LABEL_463;
          }

          v64 = v58 + 5;
          v91 = ((v90 & 0x7F) << 21) | (v93 << 28) | ((v88 & 0x7F) << 14);
        }

        else
        {
          v91 = ((v88 & 0x7F) << 14) | (v90 << 21);
        }

        v74 = v91 & 0xFFFFC000 | ((v86 & 0x7F) << 7) | v63 & 0x7F;
      }

      else
      {
        v74 = ((v86 & 0x7F) << 7) | (v88 << 14) | v63 & 0x7F;
        v64 = v87;
      }

      goto LABEL_99;
    }

LABEL_489:
    v296 = __si_assert_copy_extra(0);
    goto LABEL_462;
  }

  if (!v11)
  {
    goto LABEL_375;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    if (v11 <= v18 || v11 > 2 * v18)
    {
      goto LABEL_489;
    }
  }

  if (dword_1EBF46AF4 >= 5)
  {
    v305 = *__error();
    v306 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
    {
      v307 = *(a1 + 24);
      *buf = 134218496;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      *&buf[24] = v307;
      _os_log_impl(&dword_1C278D000, v306, OS_LOG_TYPE_DEFAULT, "%p %llu %p", buf, 0x20u);
    }

    *__error() = v305;
    v9 = *(a3 + 384);
    v8 = a1;
  }

  v20 = *(a3 + 8);
  v21 = v9[1];
  if (v11 < v20 || (v21 + v20 > v11 ? (v22 = v11 + 30 > v21 + v20) : (v22 = 1), v22))
  {
    *(a3 + 8) = v11 & 0x3FFFFFFFFFFFF000;
    if (fd_pread(*(v358 + 4488), v10, v21, v11 & 0x3FFFFFFFFFFFF000) == -1)
    {
      goto LABEL_448;
    }

    *(a3 + 28) = 0;
    v20 = *(a3 + 8);
    v21 = *(*(a3 + 384) + 8);
    v33 = 1;
  }

  else
  {
    v32 = *(a3 + 28);
    *(a3 + 28) = v32 + 1;
    v33 = v32 + 2;
  }

  v361 = v11 - v20;
  if (v11 - v20 + 20 >= v21)
  {
    *(a3 + 8) = v11 & 0x3FFFFFFFFFFFF000;
    v34 = fd_pread(*(v358 + 4488), *a3, v21, v11 & 0x3FFFFFFFFFFFF000);
    *(a3 + 28) = 0;
    v361 = v11 - *(a3 + 8);
    if (v34 == -1)
    {
      goto LABEL_373;
    }
  }

  else
  {
    *(a3 + 28) = v33;
  }

  *&v341 = CIReadPositionHeader(v10, &v361);
  *(&v341 + 1) = v35;
  v359 = 0u;
  v360 = 0u;
  v36 = *(v8 + 48);
  v346 = v11;
  v343 = a5;
  v350 = v12;
  if (v36 + 1 >= 2)
  {
    if (dword_1EBF46AF4 >= 5)
    {
      v315 = *__error();
      v316 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
      {
        v318 = *(a3 + 16);
        v319 = *(a3 + 24);
        v320 = lockedCountItemsInRange(*(a1 + 24), v318, v319, v317);
        v321 = *(a1 + 24);
        *buf = 67109888;
        *&buf[4] = v318;
        *&buf[8] = 1024;
        *&buf[10] = v319;
        *&buf[14] = 1024;
        *&buf[16] = v320;
        *&buf[20] = 2048;
        *&buf[22] = v321;
        _os_log_impl(&dword_1C278D000, v316, OS_LOG_TYPE_DEFAULT, "(1)Range: %d %d Count: %d for %p", buf, 0x1Eu);
      }

      *__error() = v315;
      v8 = a1;
      v36 = *(a1 + 48);
    }

    v37 = *(v8 + 24);
    v38 = *(a3 + 16);
    if (v36 >= *(a3 + 24))
    {
      v39 = *(a3 + 24);
    }

    else
    {
      v39 = v36;
    }
  }

  else
  {
    if (dword_1EBF46AF4 >= 5)
    {
      v308 = *__error();
      v309 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
      {
        v311 = *(a3 + 16);
        v312 = *(a3 + 24);
        v313 = lockedCountItemsInRange(*(a1 + 24), v311, v312, v310);
        v314 = *(a1 + 24);
        *buf = 67109888;
        *&buf[4] = v311;
        *&buf[8] = 1024;
        *&buf[10] = v312;
        *&buf[14] = 1024;
        *&buf[16] = v313;
        *&buf[20] = 2048;
        *&buf[22] = v314;
        _os_log_impl(&dword_1C278D000, v309, OS_LOG_TYPE_DEFAULT, "(2)Range: %d %d Count: %d for %p", buf, 0x1Eu);
      }

      *__error() = v308;
      v8 = a1;
    }

    v37 = *(v8 + 24);
    v38 = *(a3 + 16);
    v39 = *(a3 + 24);
  }

  initializeEnumberatorForRangeLocked(&v359, v37, v38, v39);
  v140 = 0;
  v141 = 0;
  v344 = 0;
  v352 = 0;
  v142 = *(v8 + 48);
  if (v142 >= *(a3 + 20))
  {
    v143 = *(a3 + 20);
  }

  else
  {
    v143 = *(v8 + 48);
  }

  if (v142)
  {
    v144 = v143;
  }

  else
  {
    v144 = *(a3 + 20);
  }

  v353 = a3 + 192;
  v355 = a3 + 320;
  v348 = a4;
  while (1)
  {
    if (!*(v8 + 40))
    {
      v352 = _CIIndexSetEnumeratorNext(&v359);
      if (dword_1EBF46AF4 >= 5)
      {
        v214 = *__error();
        v215 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v352;
          _os_log_impl(&dword_1C278D000, v215, OS_LOG_TYPE_DEFAULT, "nD: %d", buf, 8u);
        }

        *__error() = v214;
        v8 = a1;
      }
    }

    v145 = v361;
    v146 = v361 + 5;
    v147 = *(*(a3 + 384) + 8);
    v351 = v140;
    if (v12)
    {
      if (v146 >= v147)
      {
        v150 = *a3;
        v151 = *(a3 + 8) + v361;
        *(a3 + 8) = v151 & 0x3FFFFFFFFFFFF000;
        v152 = fd_pread(*(v358 + 4488), v150, v147, v151 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        v145 = v151 - *(a3 + 8);
        v361 = v145;
        if (v152 == -1)
        {
          goto LABEL_300;
        }

        v149 = 1;
      }

      else
      {
        v148 = *(a3 + 28);
        *(a3 + 28) = v148 + 1;
        v149 = v148 + 2;
      }

      v153 = v145 + 1;
      v154 = &v10[v145];
      v155 = v10[v145];
      if (v10[v145] < 0)
      {
        if (v155 > 0xBF)
        {
          if (v155 > 0xDF)
          {
            if (v155 > 0xEF)
            {
              v155 = *&v10[v153];
              v153 = v145 + 5;
            }

            else
            {
              v155 = ((v155 & 0xF) << 24) | (v10[v153] << 16) | (v154[2] << 8) | v154[3];
              v153 = v145 + 4;
            }
          }

          else
          {
            v155 = ((v155 & 0x1F) << 16) | (v10[v153] << 8) | v154[2];
            v153 = v145 + 3;
          }
        }

        else
        {
          v156 = v10[v153] | ((v155 & 0x3F) << 8);
          v153 = v145 + 2;
          v155 = v156;
        }
      }

      v361 = v153;
      if (v155)
      {
        v164 = *(*(a3 + 384) + 8);
        if (v153 + 5 < v164)
        {
          *(a3 + 28) = v149;
          goto LABEL_204;
        }

        v165 = *a3;
        v166 = *(a3 + 8) + v153;
        *(a3 + 8) = v166 & 0x3FFFFFFFFFFFF000;
        v167 = fd_pread(*(v358 + 4488), v165, v164, v166 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        v153 = v166 - *(a3 + 8);
        v361 = v153;
        if (v167 != -1)
        {
LABEL_204:
          v160 = v153 + 1;
          v168 = &v10[v153];
          v162 = v10[v153];
          if (v10[v153] < 0)
          {
            if (v162 > 0xBF)
            {
              if (v162 > 0xDF)
              {
                if (v162 > 0xEF)
                {
                  v162 = *&v10[v160];
                  v160 = v153 + 5;
                }

                else
                {
                  v162 = ((v162 & 0xF) << 24) | (v10[v160] << 16) | (v168[2] << 8) | v168[3];
                  v160 = v153 + 4;
                }
              }

              else
              {
                v162 = ((v162 & 0x1F) << 16) | (v10[v160] << 8) | v168[2];
                v160 = v153 + 3;
              }
            }

            else
            {
              v169 = v10[v160] | ((v162 & 0x3F) << 8);
              v160 = v153 + 2;
              v162 = v169;
            }
          }

          goto LABEL_213;
        }

LABEL_300:
        v225 = 0;
      }

      else
      {
        v170 = *(v8 + 40);
LABEL_308:
        if (v170)
        {
          goto LABEL_467;
        }

        if (v352)
        {
          v225 = 0;
          *(v8 + 48) = v352;
        }

        else
        {
          *(v8 + 48) = v144 - 1;
          if (dword_1EBF46AF4 >= 5)
          {
            v336 = *__error();
            v337 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v337, OS_LOG_TYPE_DEFAULT))
            {
              v338 = *(a1 + 24);
              v339 = *(a1 + 148);
              v340 = *(a1 + 48);
              *buf = 134218496;
              *&buf[4] = v338;
              *&buf[12] = 1024;
              *&buf[14] = v339;
              *&buf[18] = 1024;
              *&buf[20] = v340;
              _os_log_impl(&dword_1C278D000, v337, OS_LOG_TYPE_DEFAULT, "Iterator for %p might be done with generation %d. Read docs: %x", buf, 0x18u);
            }

            *__error() = v336;
            v225 = 1;
LABEL_299:
            v8 = a1;
          }

          else
          {
            v225 = 1;
          }
        }
      }

      v11 = v346;
      v228 = *(&v341 + 1);
      v227 = v341;
      if (v341 == 0)
      {
        v227 = *(v8 + 16);
        *(v8 + 16) = 0;
      }

      v229 = *(v8 + 8);
      v230 = *(**(a3 + 384) + 32);
      if (v229 >= v230)
      {
        v230 = 2 * v229;
      }

      if (*(&v341 + 1) <= v346 && *(&v341 + 1))
      {
        v231 = v346 <= v230 || *(&v341 + 1) > v230;
        v232 = v231 && *(&v341 + 1) >= v229;
        if (v232)
        {
          goto LABEL_467;
        }
      }

      if (v227 - 1 < v346)
      {
        v233 = v346 <= v230 || v227 > v230;
        if (v233 && v227 >= v229)
        {
          goto LABEL_461;
        }
      }

      if (v227 - 1 < *(&v341 + 1))
      {
        v235 = *(&v341 + 1) <= v230 || v227 > v230;
        if (v235 && v227 >= v229)
        {
          goto LABEL_467;
        }
      }

      if (*(&v341 + 1))
      {
        v237 = 0;
      }

      else
      {
        v237 = v227;
      }

      if (*(&v341 + 1) && v227)
      {
        v237 = 0;
        *(v8 + 16) = v227;
      }

      if (v237 | *(&v341 + 1))
      {
        if (v225)
        {
          if (dword_1EBF46AF4 >= 5)
          {
            v327 = *__error();
            v328 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v328, OS_LOG_TYPE_DEFAULT))
            {
              v329 = *(a1 + 24);
              v330 = *(a1 + 148);
              *buf = 134218240;
              *&buf[4] = v329;
              *&buf[12] = 1024;
              *&buf[14] = v330;
              _os_log_impl(&dword_1C278D000, v328, OS_LOG_TYPE_DEFAULT, "Iterator for %p done with generation %d", buf, 0x12u);
            }

            *__error() = v327;
            v8 = a1;
            v11 = v346;
            v228 = *(&v341 + 1);
          }

          *(v8 + 148) = *(a3 + 32);
        }

        if (v228)
        {
          if (v237)
          {
            goto LABEL_467;
          }

          if (v228 == v11)
          {
            goto LABEL_374;
          }

          v238 = *(v8 + 48);
          v239 = *(v8 + 40);
          v241 = *(v8 + 148);
          v240 = *(v8 + 152);
          v242 = *(v8 + 156);
          v243 = *(v8 + 16);
          v244 = *(v8 + 24);
          if (v228 <= v11 && v228 <= *(v8 + 112))
          {
            *buf = v228;
            *&buf[8] = v244;
            *&buf[16] = v238;
            *&buf[20] = 0;
            *&buf[24] = v239;
            v363 = v241;
            v364 = v240;
            v365 = v242;
            LODWORD(v366[0]) = 0;
            *(v366 + 3) = 0;
            *(v366 + 7) = v243;
            check_oqpush_AnnotatedPositionOffset_t(v8 + 56, buf);
            goto LABEL_374;
          }

          v245 = *(v8 + 8);
          if (v245 && (v228 <= v245 || v228 > 2 * v245))
          {
            goto LABEL_461;
          }

          *buf = v228;
          *&buf[8] = v244;
          *&buf[16] = v238;
          *&buf[20] = 0;
          *&buf[24] = v239;
          v363 = v241;
          v364 = v240;
          v365 = v242;
          LODWORD(v366[0]) = 0;
          *(v366 + 3) = 0;
          *(v366 + 7) = v243;
        }

        else
        {
          if (!v237)
          {
            goto LABEL_373;
          }

          if (v237 == v11)
          {
            goto LABEL_374;
          }

          v246 = *(v8 + 48);
          v247 = *(v8 + 40);
          v249 = *(v8 + 148);
          v248 = *(v8 + 152);
          v250 = *(v8 + 156);
          v252 = *(v8 + 16);
          v251 = *(v8 + 24);
          if (v237 <= v11 && v237 <= *(v8 + 112))
          {
            if (v252)
            {
              goto LABEL_461;
            }

            *buf = v237;
            *&buf[8] = v251;
            *&buf[16] = v246;
            *&buf[20] = 0;
            *&buf[24] = v247;
            v363 = v249;
            v364 = v248;
            v365 = v250;
            v366[0] = 0;
            *(v366 + 7) = 0;
            check_oqpush_AnnotatedPositionOffset_t(v8 + 56, buf);
            if (*(a3 + 48) > v237)
            {
              v301 = *(v8 + 8);
              if (v237 < v301 && v237 > v301 >> 1)
              {
                *(a3 + 48) = v237;
              }
            }

            goto LABEL_374;
          }

          if (v252)
          {
            goto LABEL_461;
          }

          v253 = *(v8 + 8);
          if (v253 && (v237 <= v253 || v237 > 2 * v253))
          {
            goto LABEL_467;
          }

          v254 = *(a3 + 40);
          if (v254 >= v237)
          {
            v254 = v237;
          }

          *(a3 + 40) = v254;
          *buf = v237;
          *&buf[8] = v251;
          *&buf[16] = v246;
          *&buf[20] = 0;
          *&buf[24] = v247;
          v363 = v249;
          v364 = v248;
          v365 = v250;
          v366[0] = 0;
          *(v366 + 7) = 0;
        }

        check_pqpush_AnnotatedPositionOffset_t(v8 + 120, buf);
        goto LABEL_374;
      }

LABEL_373:
      instr_release(*(v8 + 24));
      goto LABEL_374;
    }

    if (v146 >= v147)
    {
      v157 = *a3;
      v158 = *(a3 + 8) + v361;
      *(a3 + 8) = v158 & 0x3FFFFFFFFFFFF000;
      v159 = fd_pread(*(v358 + 4488), v157, v147, v158 & 0x3FFFFFFFFFFFF000);
      *(a3 + 28) = 0;
      v145 = v158 - *(a3 + 8);
      v361 = v145;
      if (v159 == -1)
      {
        goto LABEL_300;
      }
    }

    else
    {
      ++*(a3 + 28);
    }

    v160 = v145 + 1;
    v161 = &v10[v145];
    v162 = v10[v145];
    if (v10[v145] < 0)
    {
      if (v162 > 0xBF)
      {
        if (v162 > 0xDF)
        {
          if (v162 > 0xEF)
          {
            v162 = *&v10[v160];
            v160 = v145 + 5;
          }

          else
          {
            v162 = ((v162 & 0xF) << 24) | (v10[v160] << 16) | (v161[2] << 8) | v161[3];
            v160 = v145 + 4;
          }
        }

        else
        {
          v162 = ((v162 & 0x1F) << 16) | (v10[v160] << 8) | v161[2];
          v160 = v145 + 3;
        }
      }

      else
      {
        v163 = v10[v160] | ((v162 & 0x3F) << 8);
        v160 = v145 + 2;
        v162 = v163;
      }
    }

LABEL_213:
    v361 = v160;
    v170 = *(v8 + 40);
    if (!v162)
    {
      goto LABEL_308;
    }

    if (!v170 && !v352)
    {
      break;
    }

    if (v170)
    {
      *(v8 + 40) = v170 - 1;
      v144 = v352;
LABEL_225:
      v176 = v351;
      do
      {
        v177 = *(*(a3 + 384) + 8);
        if (v160 + 5 >= v177)
        {
          v178 = *a3;
          v179 = *(a3 + 8) + v160;
          *(a3 + 8) = v179 & 0x3FFFFFFFFFFFF000;
          v180 = fd_pread(*(v358 + 4488), v178, v177, v179 & 0x3FFFFFFFFFFFF000);
          *(a3 + 28) = 0;
          v160 = v179 - *(a3 + 8);
          v181 = v160;
          if (v180 == -1)
          {
            break;
          }
        }

        else
        {
          ++*(a3 + 28);
        }

        v181 = v160 + 1;
        v182 = &v10[v160];
        v183 = v10[v160];
        if (v10[v160] < 0)
        {
          if (v183 > 0xBF)
          {
            if (v183 > 0xDF)
            {
              if (v183 > 0xEF)
              {
                v183 = *&v10[v181];
                v181 = v160 + 5;
              }

              else
              {
                v183 = ((v183 & 0xF) << 24) | (v10[v181] << 16) | (v182[2] << 8) | v182[3];
                v181 = v160 + 4;
              }
            }

            else
            {
              v183 = ((v183 & 0x1F) << 16) | (v10[v181] << 8) | v182[2];
              v181 = v160 + 3;
            }
          }

          else
          {
            v184 = v10[v181] | ((v183 & 0x3F) << 8);
            v181 = v160 + 2;
            v183 = v184;
          }
        }

        v160 = v181;
      }

      while (v183);
      v361 = v181;
      goto LABEL_239;
    }

    v144 = v352;
    v171 = CIIndexSetHasIndex(a4, v352);
    v173 = *(v8 + 40);
    if (v173)
    {
      *(v8 + 40) = v173 - 1;
    }

    if (!v171)
    {
      goto LABEL_225;
    }

    if (!v141)
    {
      v186 = lockedCountItemsInRange(a4, v352, *(a3 + 24), v172);
      if (!v186)
      {
        v175 = 0;
        goto LABEL_259;
      }

      v175 = v186 - 1;
LABEL_244:
      v187 = *(v8 + 168);
      if (v175 >= v187)
      {
        v188 = *(v8 + 168);
        if (!v187)
        {
          v188 = 1 << -__clz(v175);
          if (v175 <= 4)
          {
            v188 = 4;
          }

          *(v8 + 168) = v188;
        }

        if (v175 + 1 >= v188)
        {
          do
          {
            v232 = v175 + 1 >= 2 * v188;
            v188 *= 2;
          }

          while (v232);
          *(v8 + 168) = v188;
        }

        v189 = *(v8 + 160);
        v190 = 8 * v188;
        if (v189)
        {
          v191 = malloc_type_zone_realloc(queryZone, v189, v190, 0xA1A7ADA0uLL);
        }

        else
        {
          v191 = malloc_type_zone_malloc(queryZone, v190, 0x566E289CuLL);
        }

        v192 = v191;
        if (!v191)
        {
          _log_fault_for_malloc_failure();
        }

        *(a1 + 160) = v192;
        v193 = &v192[8 * v187];
        v8 = a1;
        bzero(v193, 8 * (*(a1 + 168) - v187));
      }

      goto LABEL_259;
    }

    v174 = lockedCountItemsInRange(a4, v352, v141, v172);
    if (!(v174 + v344))
    {
      goto LABEL_461;
    }

    v175 = v174 + v344 - 1;
    if (v174)
    {
      goto LABEL_244;
    }

LABEL_259:
    v194 = *(*(v8 + 160) + 8 * v175);
    if (!v194)
    {
      v194 = CIIndexSetCreateWithRangeWithCache(0, 0x400u, a2);
      *(*(v8 + 160) + 8 * v175) = v194;
    }

    v344 = v175;
    *buf = 0;
    v195 = pointerHash(v194, *(*(a3 + 384) + 20));
    Buffer = SharedStateGetBuffer(a3, v194, v195, buf);
    v197 = 0;
    v198 = (*buf)++;
    v199 = *(a3 + 384);
    v200 = *(v199 + 160);
    v201 = *(v199 + 8 * v195 + 32);
    do
    {
      v124 = __OFSUB__(v162, v197);
      v162 -= v197;
      if (((v162 & 0x80000000) != 0) ^ v124 | (v162 == 0))
      {
        goto LABEL_467;
      }

      if (v162 <= 0)
      {
        goto LABEL_461;
      }

      v202 = *buf;
      if (*buf == 4096)
      {
        *(Buffer + 4 * v198) = 4095 - v198;
        _issueBuffer(v200, v201, *a2, Buffer, *buf, 1);
        v203 = malloc_type_zone_malloc(queryZone, 0x4000uLL, 0xA4971684uLL);
        if (!v203)
        {
          _log_fault_for_malloc_failure();
        }

        *(v353 + 8 * v195) = v203;
        *(v355 + 4 * v195) = 0;
        *v203 = v194;
        v204 = *(v355 + 4 * v195);
        v198 = v204 + 2;
        *(v355 + 4 * v195) = v204 + 2;
        Buffer = *(v353 + 8 * v195);
        v202 = v204 + 3;
        v160 = v361;
      }

      *buf = v202 + 1;
      *(Buffer + 4 * v202) = v162;
      v205 = *(*(a3 + 384) + 8);
      if (v160 + 5 >= v205)
      {
        v206 = *a3;
        v207 = *(a3 + 8) + v160;
        *(a3 + 8) = v207 & 0x3FFFFFFFFFFFF000;
        v208 = fd_pread(*(v358 + 4488), v206, v205, v207 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        v160 = v207 - *(a3 + 8);
        v361 = v160;
        if (v208 == -1)
        {
          break;
        }
      }

      else
      {
        ++*(a3 + 28);
      }

      v209 = v160 + 1;
      v210 = &v10[v160];
      v197 = v10[v160];
      if (v10[v160] < 0)
      {
        if (v197 > 0xBF)
        {
          if (v197 > 0xDF)
          {
            if (v197 > 0xEF)
            {
              v197 = *&v10[v209];
              v209 = v160 + 5;
            }

            else
            {
              v197 = ((v197 & 0xF) << 24) | (v10[v209] << 16) | (v210[2] << 8) | v210[3];
              v209 = v160 + 4;
            }
          }

          else
          {
            v197 = ((v197 & 0x1F) << 16) | (v10[v209] << 8) | v210[2];
            v209 = v160 + 3;
          }
        }

        else
        {
          v211 = v10[v209] | ((v197 & 0x3F) << 8);
          v209 = v160 + 2;
          v197 = v211;
        }
      }

      v361 = v209;
      if (v197)
      {
        v212 = v162 <= v197;
      }

      else
      {
        v212 = 1;
      }

      v160 = v209;
    }

    while (!v212);
    *(Buffer + 4 * v198) = *buf + ~v198;
    v213 = *buf;
    if ((*buf - 4092) <= 0xFFFFEFFF)
    {
      _issueBuffer(v200, v201, *a2, Buffer, *buf, 1);
      v213 = 0;
      *(v353 + 8 * v195) = 0;
    }

    v8 = a1;
    a4 = v348;
    v12 = v350;
    v176 = v351;
    *(v355 + 4 * v195) = v213;
    v144 = v352;
    v141 = v352;
LABEL_239:
    v185 = *(a3 + 56);
    if (v185 >= v144)
    {
      v185 = v144;
    }

    *(a3 + 56) = v185;
    v140 = v176 + 1;
  }

  if (v343)
  {
    v221 = *__error();
    v222 = _SILogForLogForCategory(10);
    v223 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v222, v223))
    {
      *buf = 67109120;
      *&buf[4] = v162;
      _os_log_impl(&dword_1C278D000, v222, v223, "Out of postings while we still have more position data (%u)", buf, 8u);
    }

    v224 = __error();
    v225 = 0;
    *v224 = v221;
    goto LABEL_299;
  }

  v262 = *(a3 + 32);
  *(v8 + 148) = v262;
  *(v8 + 48) = v144;
  *(v366 + 3) = 0;
  LODWORD(v366[0]) = 0;
  v263 = *(v8 + 152);
  v264 = *(v8 + 156);
  v266 = *(v8 + 16);
  v265 = *(v8 + 24);
  *buf = *v8;
  *&buf[8] = v265;
  *&buf[16] = v144;
  *&buf[20] = 0;
  *&buf[24] = v351;
  v363 = v262;
  v364 = v263;
  v365 = v264;
  *(v366 + 7) = v266;
  deferPosition(v8, buf);
  v11 = v346;
LABEL_374:
  *(v8 + 148) = 0;
  *v8 = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
LABEL_375:
  PositionIterator_GetNext(v8);
  v255 = *v8;
  if (v11 && v11 == v255)
  {
    goto LABEL_448;
  }

  if (!*(v8 + 188))
  {
    goto LABEL_452;
  }

  if (v255)
  {
LABEL_451:
    result = 0xFFFFFFFFLL;
    goto LABEL_457;
  }

LABEL_379:
  if (*(v8 + 80))
  {
    result = 4294967293;
  }

  else
  {
    result = 4294967294;
  }

LABEL_457:
  v295 = *MEMORY[0x1E69E9840];
  return result;
}

void BulkPullback(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 3328);
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 48);
  v8 = *(a2 + 40);
  v9 = *(a2 + 148);
  *a2 = 0;
  *(a2 + 24) = 0;
  PositionIterator_Resplit(a2, v4);
  if (v5)
  {
    *&v32 = v5;
    *(&v32 + 1) = v6;
    *&v33 = v7;
    *(&v33 + 1) = v8;
    LODWORD(v34[0]) = v9;
    memset(v34 + 4, 0, 20);
    pullback(a2, &v32);
  }

  if (*(a2 + 188) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (*(a2 + 176) + v10);
      v13 = v12[1];
      v32 = *v12;
      v33 = v13;
      v34[0] = v12[2];
      *&v34[1] = *(v12 + 6);
      pullback(a2, &v32);
      ++v11;
      v10 += 56;
    }

    while (v11 < *(a2 + 188));
  }

  *(a2 + 188) = 0;
  v14 = *(a2 + 8);
  if (v14)
  {
    v15 = *(a2 + 136);
    if (v15 >= 2)
    {
      v16 = 2 * v14;
      v17 = (*(a2 + 120) + 56);
      v18 = v15 - 1;
      while (1)
      {
        v19 = *v17;
        v17 += 7;
        if (v19 > v16)
        {
          break;
        }

        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      v22 = __si_assert_copy_extra(0);
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2225, "iter->futureOffsets._offsets[i].offset<=iter->split*2", v24);
LABEL_25:
      free(v23);
      if (__valid_fs(-1))
      {
        v25 = 2989;
      }

      else
      {
        v25 = 3072;
      }

      *v25 = -559038737;
      abort();
    }
  }

LABEL_11:
  PositionIterator_GetNext(a2);
  v20 = *(a1 + 3328);
  if ((*a2 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (v20 && (*a2 & 0x3FFFFFFFFFFFFFFFuLL) > 2 * v20)
    {
      v26 = __si_assert_copy_extra(0);
      v27 = v26;
      v28 = "";
      if (v26)
      {
        v28 = v26;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 4996, "!iterator->split ||(((iter->ptr) & 0x3FFFFFFFFFFFFFFF)) <= 2*iterator->split", v28);
      free(v27);
      if (__valid_fs(-1))
      {
        v29 = 2989;
      }

      else
      {
        v29 = 3072;
      }

      *v29 = -559038737;
      abort();
    }

    ipqpush(a1, a2);
    if (!*(a1 + 3328) && *(a1 + 3336) >= 1)
    {

      printf("renedebug");
    }
  }

  else
  {
    if (!v20)
    {
      v30 = __si_assert_copy_extra(0);
      v23 = v30;
      v31 = "";
      if (v30)
      {
        v31 = v30;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 5000, "iterator->split != 0", v31);
      goto LABEL_25;
    }

    v21 = *(a1 + 3336);
    *(a1 + 3336) = v21 + 1;
    *(a1 + 8 * v21 + 3352) = a2;
  }
}

void _deferredArrayCleanup(uint64_t a1)
{
  if (*(a1 + 12) >= 1)
  {
    v2 = 0;
    do
    {
      BulkPullback(*(a1 + 16), *(*a1 + 8 * v2++));
    }

    while (v2 < *(a1 + 12));
  }

  free(*a1);

  free(a1);
}

double pullback(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  if (*a2 <= v4)
  {
    v8 = *(a2 + 16);
    v13 = *a2;
    v14 = v8;
    v15 = *(a2 + 32);
    v16 = *(a2 + 48);
    *&result = check_oqpush_AnnotatedPositionOffset_t(a1 + 56, &v13).n128_u64[0];
  }

  else
  {
    if (v4)
    {
      v5 = *a2 > 2 * v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v9 = __si_assert_copy_extra(0);
      v10 = v9;
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      __message_assert("%s:%u: failed assertion '%s' %s splitPoint is %lld, offset is %lld", "PayloadIterator.c", 2176, "!iter->initialOffsets.splitPoint || tmp.offset <= 2 * iter->initialOffsets.splitPoint", v11, *(a1 + 112), *a2);
      free(v10);
      if (__valid_fs(-1))
      {
        v12 = 2989;
      }

      else
      {
        v12 = 3072;
      }

      *v12 = -559038737;
      abort();
    }

    v6 = *(a2 + 16);
    v13 = *a2;
    v14 = v6;
    v15 = *(a2 + 32);
    v16 = *(a2 + 48);
    *&result = check_pqpush_AnnotatedPositionOffset_t(a1 + 120, &v13).n128_u64[0];
  }

  return result;
}

uint64_t pointerHash(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = -1789642873;
  v4 = 718793509;
  v5 = -1759636613;
  do
  {
    v3 = 5 * v3 + 2071795100;
    v4 = 5 * v4 + 1808688022;
    HIDWORD(v7) = v3 * *(a1 + v2);
    LODWORD(v7) = HIDWORD(v7);
    v6 = v7 >> 21;
    HIDWORD(v7) = v5;
    LODWORD(v7) = v5;
    v5 = (v6 * v4) ^ (5 * (v7 >> 19) + 1390208809);
    v2 += 4;
  }

  while (v2 != 8);
  v8 = -1028477387 * ((-2048144789 * (v5 ^ 8)) ^ ((-2048144789 * (v5 ^ 8u)) >> 13));
  return (v8 ^ HIWORD(v8)) % a2;
}

uint64_t SharedStateGetBuffer(uint64_t a1, uint64_t a2, unsigned int a3, int *a4)
{
  v6 = a1 + 192;
  v7 = a3;
  v8 = *(a1 + 192 + 8 * a3);
  v9 = a1 + 4 * a3;
  if (v8)
  {
    v10 = *(v9 + 320);
  }

  else
  {
    v8 = malloc_type_zone_malloc(queryZone, 0x4000uLL, 0xA4971684uLL);
    if (!v8)
    {
      _log_fault_for_malloc_failure();
    }

    v10 = 0;
    *(v6 + 8 * v7) = v8;
    *(v9 + 320) = 0;
  }

  *&v8[4 * v10] = a2;
  v11 = *(v9 + 320) + 2;
  *(v9 + 320) = v11;
  *a4 = v11;
  return *(v6 + 8 * v7);
}

void _issueBuffer(NSObject *a1, NSObject *a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  dispatch_semaphore_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___innerIssueBuffer_block_invoke;
  v12[3] = &__block_descriptor_tmp_62_13736;
  v13 = a5;
  v12[4] = a3;
  v12[5] = a4;
  v14 = a6;
  v12[6] = a1;
  dispatch_async(a2, v12);
}

__n128 deferPosition(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 184);
  v4 = *(a1 + 188);
  if (v4 >= v5)
  {
    v7 = 2 * v5;
    if (!v5)
    {
      v7 = 4;
    }

    *(a1 + 184) = v7;
    v8 = *(a1 + 176);
    v9 = 56 * v7;
    if (v8)
    {
      v10 = malloc_type_zone_realloc(queryZone, v8, v9, 0xA1A7ADA0uLL);
    }

    else
    {
      v10 = malloc_type_zone_malloc(queryZone, v9, 0x566E289CuLL);
    }

    v6 = v10;
    if (!v10)
    {
      _log_fault_for_malloc_failure();
    }

    *(a1 + 176) = v6;
    v4 = *(a1 + 188);
  }

  else
  {
    v6 = *(a1 + 176);
  }

  *(a1 + 188) = v4 + 1;
  v11 = &v6[56 * v4];
  result = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 32);
  *(v11 + 6) = *(a2 + 48);
  *(v11 + 1) = v13;
  *(v11 + 2) = v14;
  *v11 = result;
  return result;
}

void _deferredExceptionCleanup(void **a1)
{
  free(*a1);

  free(a1);
}

void _deferredArrayExceptionCleanup(void **a1)
{
  free(*a1);

  free(a1);
}

uint64_t PositionIterate_Compressed(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, _BYTE *a7)
{
  v7 = a7;
  v8 = a5;
  v11 = a2;
  v332 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 384);
  if (*(v13 + 19) != 1)
  {
    if (*(v13 + 18))
    {
      if (a5 == 1)
      {
        if (*a7)
        {
          goto LABEL_456;
        }

        v21 = *a1;
        if (!*a1)
        {
          PositionIterator_GetNext(a1);
          *(a1 + 32) = 0;
          goto LABEL_41;
        }

        v22 = *a3;
        v23 = *v13;
        if (dword_1EBF46AF4 >= 5)
        {
          v283 = *__error();
          v284 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
          {
            v285 = *(a1 + 24);
            *buf = 134218496;
            *&buf[4] = a1;
            *&buf[12] = 2048;
            *&buf[14] = v21;
            *&buf[22] = 2048;
            *&buf[24] = v285;
            _os_log_impl(&dword_1C278D000, v284, OS_LOG_TYPE_DEFAULT, "%p %llu %p", buf, 0x20u);
          }

          *__error() = v283;
          v13 = *(a3 + 384);
        }

        v24 = *(a3 + 8);
        v25 = v13[1];
        if (v21 < v24 || (v25 + v24 > v21 ? (v26 = v21 + 30 > v25 + v24) : (v26 = 1), v26))
        {
          *(a3 + 8) = v21 & 0x3FFFFFFFFFFFF000;
          if (fd_pread(*(v23 + 4488), v22, v25, v21 & 0x3FFFFFFFFFFFF000) == -1)
          {
            goto LABEL_456;
          }

          v305 = a4;
          *(a3 + 28) = 0;
          v24 = *(a3 + 8);
        }

        else
        {
          v305 = a4;
          ++*(a3 + 28);
        }

        v316 = v21;
        v48 = v21 - v24;
        v323 = 0u;
        v324 = 0u;
        initializeEnumberatorForRangeLocked(&v323, *(a1 + 24), *(a3 + 16), *(a3 + 20));
        locked = 0;
        v321 = 0;
        while (1)
        {
          v50 = _CIIndexSetEnumeratorNext(&v323);
          if (!v50)
          {
            goto LABEL_237;
          }

          v51 = v50;
          v52 = *(*(a3 + 384) + 8);
          if (v48 + 5 >= v52)
          {
            v53 = *a3;
            v54 = *(a3 + 8) + v48;
            *(a3 + 8) = v54 & 0x3FFFFFFFFFFFF000;
            v55 = fd_pread(*(v23 + 4488), v53, v52, v54 & 0x3FFFFFFFFFFFF000);
            *(a3 + 28) = 0;
            if (v55 == -1)
            {
              goto LABEL_237;
            }

            v48 = v54 - *(a3 + 8);
          }

          else
          {
            ++*(a3 + 28);
          }

          v56 = v48 + 1;
          v57 = v22[v48];
          if (v22[v48] < 0)
          {
            v58 = v48 + 2;
            v59 = v22[v56];
            v60 = v22[v56];
            if (v59 < 0)
            {
              v61 = v48 + 3;
              v62 = v22[v58];
              if (v22[v58] < 0)
              {
                v58 = v48 + 4;
                v63 = v22[v61];
                v64 = v22[v61];
                if (v63 < 0)
                {
                  v65 = v22[v58];
                  if (v65 < 0)
                  {
                    v274 = __si_assert_copy_extra(0);
                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_417:
                    free(v274);
                    if (__valid_fs(-1))
                    {
                      v275 = 2989;
                    }

                    else
                    {
                      v275 = 3072;
                    }

                    *v275 = -559038737;
                    abort();
                  }

                  v58 = v48 + 5;
                  v57 = ((v64 & 0x7F) << 21) | (v65 << 28) | ((v62 & 0x7F) << 14) | ((v60 & 0x7F) << 7) | v57 & 0x7F;
                }

                else
                {
                  v57 = ((v62 & 0x7F) << 14) | (v64 << 21) | ((v60 & 0x7F) << 7) | v57 & 0x7F;
                }
              }

              else
              {
                v58 = v48 + 3;
                v57 = ((v60 & 0x7F) << 7) | (v62 << 14) | v57 & 0x7F;
              }
            }

            else
            {
              v57 = v57 & 0x7F | (v60 << 7);
            }
          }

          else
          {
            v58 = v48 + 1;
          }

          if (!v57)
          {
            v262 = v51;
            v263 = *__error();
            v264 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
            {
              v276 = *(a3 + 8) + v58;
              v277 = *(**(a3 + 384) + 24);
              v278 = *(**(a3 + 384) + 32);
              *buf = 136316418;
              *&buf[4] = "_SLPositionIterate_Compressed";
              *&buf[12] = 1024;
              *&buf[14] = 3401;
              *&buf[18] = 1024;
              *&buf[20] = v262;
              *&buf[24] = 2048;
              *&buf[26] = v276;
              *&buf[34] = 2048;
              *&buf[36] = v278;
              *&buf[44] = 2048;
              *&buf[46] = v277;
              _os_log_error_impl(&dword_1C278D000, v264, OS_LOG_TYPE_ERROR, "%s:%d: Rogue nil position at docID %d off %llu size %llu(%llu)", buf, 0x36u);
            }

            *__error() = v263;
            if (dword_1EBF46AF4 >= 5)
            {
              v265 = *__error();
              v266 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = 1;
                _os_log_impl(&dword_1C278D000, v266, OS_LOG_TYPE_DEFAULT, "%d rogue nil positions were found (use debug log level to see them all)", buf, 8u);
              }

              *__error() = v265;
            }

LABEL_237:
            instr_release(*(a1 + 24));
            *(a1 + 148) = 0;
            *a1 = 0;
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            PositionIterator_GetNext(a1);
            if (iterationIsLooping(a1, v316))
            {
LABEL_456:
              result = 0;
              goto LABEL_457;
            }

LABEL_41:
            if (*v7)
            {
              goto LABEL_456;
            }

LABEL_458:
            result = *a1 != 0;
            goto LABEL_457;
          }

          if (!CIIndexSetHasIndex(v305, v51))
          {
            v67 = 0;
            while (1)
            {
              v68 = __OFSUB__(v57, v67);
              v57 -= v67;
              if ((v57 < 0) ^ v68 | (v57 == 0))
              {
                goto LABEL_412;
              }

              if (v57 <= 0)
              {
                goto LABEL_416;
              }

              v69 = *(*(a3 + 384) + 8);
              if (v58 + 5 >= v69)
              {
                v70 = *a3;
                v71 = *(a3 + 8) + v58;
                *(a3 + 8) = v71 & 0x3FFFFFFFFFFFF000;
                v72 = fd_pread(*(v23 + 4488), v70, v69, v71 & 0x3FFFFFFFFFFFF000);
                *(a3 + 28) = 0;
                if (v72 == -1)
                {
LABEL_234:
                  v160 = *(a3 + 56);
                  if (v160 >= v51)
                  {
                    v160 = v51;
                  }

                  *(a3 + 56) = v160;
                  goto LABEL_237;
                }

                v58 = v71 - *(a3 + 8);
              }

              else
              {
                ++*(a3 + 28);
              }

              if (*v7)
              {
                goto LABEL_456;
              }

              v73 = v58 + 1;
              v67 = v22[v58];
              if (v22[v58] < 0)
              {
                v74 = v58 + 2;
                v75 = v22[v73];
                v76 = v22[v73];
                if (v75 < 0)
                {
                  v77 = v58 + 3;
                  v78 = v22[v74];
                  v79 = v22[v74];
                  if (v78 < 0)
                  {
                    v80 = v22[v77];
                    v81 = v22[v77];
                    if (v80 < 0)
                    {
                      v82 = v22[v58 + 4];
                      if (v82 < 0)
                      {
LABEL_447:
                        v267 = __si_assert_copy_extra(0);
                        __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_424:
                        free(v267);
                        if (__valid_fs(-1))
                        {
                          v279 = 2989;
                        }

                        else
                        {
                          v279 = 3072;
                        }

                        *v279 = -559038737;
                        abort();
                      }

                      v58 += 5;
                      v67 = ((v81 & 0x7F) << 21) | (v82 << 28) | ((v79 & 0x7F) << 14) | ((v76 & 0x7F) << 7) | v67 & 0x7F;
                    }

                    else
                    {
                      v58 += 4;
                      v67 = ((v79 & 0x7F) << 14) | (v81 << 21) | ((v76 & 0x7F) << 7) | v67 & 0x7F;
                    }
                  }

                  else
                  {
                    v58 += 3;
                    v67 = ((v76 & 0x7F) << 7) | (v79 << 14) | v67 & 0x7F;
                  }
                }

                else
                {
                  v67 = v67 & 0x7F | (v76 << 7);
                  v58 += 2;
                }
              }

              else
              {
                ++v58;
              }

              if (!v67)
              {
                goto LABEL_131;
              }
            }
          }

          v318 = v51;
          if (v321)
          {
            if (v321 - v51 != 1)
            {
              locked += lockedCountItemsInRange(v305, v51 + 1, v321 - 1, v66);
            }

            ++locked;
          }

          else
          {
            locked = lockedCountItemsInRange(v305, v51 + 1, *(a3 + 24), v66);
          }

          v83 = *(a1 + 168);
          if (locked >= v83)
          {
            v84 = *(a1 + 168);
            if (!v83)
            {
              v84 = 1 << -__clz(locked);
              if (locked <= 4)
              {
                v84 = 4;
              }

              *(a1 + 168) = v84;
            }

            if (locked + 1 >= v84)
            {
              do
              {
                v85 = locked + 1 >= 2 * v84;
                v84 *= 2;
              }

              while (v85);
              *(a1 + 168) = v84;
            }

            v86 = *(a1 + 160);
            v87 = 8 * v84;
            if (v86)
            {
              v88 = malloc_type_zone_realloc(queryZone, v86, v87, 0xA1A7ADA0uLL);
            }

            else
            {
              v88 = malloc_type_zone_malloc(queryZone, v87, 0x566E289CuLL);
            }

            v89 = v88;
            if (!v88)
            {
              _log_fault_for_malloc_failure();
            }

            *(a1 + 160) = v89;
            bzero(&v89[8 * v83], 8 * (*(a1 + 168) - v83));
          }

          if (!*(*(a1 + 160) + 8 * locked))
          {
            *(*(a1 + 160) + 8 * locked) = CIIndexSetCreateWithRange(0, 0x400u, 1);
          }

          v90 = 0;
          v51 = v318;
          do
          {
            v68 = __OFSUB__(v57, v90);
            v57 -= v90;
            if ((v57 < 0) ^ v68 | (v57 == 0))
            {
              goto LABEL_416;
            }

            if (v57 <= 0)
            {
              goto LABEL_412;
            }

            CIIndexSetAddIndexExpandingRange(*(*(a1 + 160) + 8 * locked), v57, v66);
            v91 = *(*(a3 + 384) + 8);
            if (v58 + 5 >= v91)
            {
              v92 = *a3;
              v93 = *(a3 + 8) + v58;
              *(a3 + 8) = v93 & 0x3FFFFFFFFFFFF000;
              v94 = fd_pread(*(v23 + 4488), v92, v91, v93 & 0x3FFFFFFFFFFFF000);
              *(a3 + 28) = 0;
              if (v94 == -1)
              {
                goto LABEL_234;
              }

              v58 = v93 - *(a3 + 8);
            }

            else
            {
              ++*(a3 + 28);
            }

            if (*v7)
            {
              goto LABEL_456;
            }

            v95 = v58 + 1;
            v90 = v22[v58];
            if (v22[v58] < 0)
            {
              v96 = v58 + 2;
              v97 = v22[v95];
              v98 = v22[v95];
              if (v97 < 0)
              {
                v99 = v58 + 3;
                v100 = v22[v96];
                v101 = v22[v96];
                if (v100 < 0)
                {
                  v102 = v22[v99];
                  v103 = v22[v99];
                  if (v102 < 0)
                  {
                    v104 = v22[v58 + 4];
                    if (v104 < 0)
                    {
                      goto LABEL_447;
                    }

                    v58 += 5;
                    v90 = ((v103 & 0x7F) << 21) | (v104 << 28) | ((v101 & 0x7F) << 14) | ((v98 & 0x7F) << 7) | v90 & 0x7F;
                  }

                  else
                  {
                    v58 += 4;
                    v90 = ((v101 & 0x7F) << 14) | (v103 << 21) | ((v98 & 0x7F) << 7) | v90 & 0x7F;
                  }
                }

                else
                {
                  v58 += 3;
                  v90 = ((v98 & 0x7F) << 7) | (v101 << 14) | v90 & 0x7F;
                }
              }

              else
              {
                v90 = v90 & 0x7F | (v98 << 7);
                v58 += 2;
              }
            }

            else
            {
              ++v58;
            }
          }

          while (v90);
          v321 = v318;
LABEL_131:
          v105 = *(a3 + 56);
          if (v105 >= v51)
          {
            v105 = v51;
          }

          *(a3 + 56) = v105;
          v48 = v58;
        }
      }

      goto LABEL_422;
    }

    if (a5 != 1)
    {
LABEL_422:
      v267 = __si_assert_copy_extra(0);
      goto LABEL_423;
    }

    if (*a7)
    {
      goto LABEL_456;
    }

    v27 = *a1;
    if (!*a1)
    {
      PositionIterator_GetNext(a1);
      *(a1 + 32) = 0;
      goto LABEL_458;
    }

    v28 = *a3;
    v29 = *v13;
    if (dword_1EBF46AF4 >= 5)
    {
      v286 = *__error();
      v287 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
      {
        v288 = *(a1 + 24);
        *buf = 134218496;
        *&buf[4] = a1;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        *&buf[22] = 2048;
        *&buf[24] = v288;
        _os_log_impl(&dword_1C278D000, v287, OS_LOG_TYPE_DEFAULT, "%p %llu %p", buf, 0x20u);
      }

      *__error() = v286;
      v13 = *(a3 + 384);
    }

    v30 = *(a3 + 8);
    v31 = v13[1];
    if (v27 < v30 || (v31 + v30 > v27 ? (v32 = v27 + 30 > v31 + v30) : (v32 = 1), v32))
    {
      *(a3 + 8) = v27 & 0x3FFFFFFFFFFFF000;
      if (fd_pread(*(v29 + 4488), v28, v31, v27 & 0x3FFFFFFFFFFFF000) == -1 || (*v7 & 1) != 0)
      {
        goto LABEL_456;
      }

      v306 = a4;
      v106 = v7;
      *(a3 + 28) = 0;
      v30 = *(a3 + 8);
    }

    else
    {
      v306 = a4;
      v106 = v7;
      ++*(a3 + 28);
    }

    v323 = 0u;
    v324 = 0u;
    initializeEnumberatorForRangeLocked(&v323, *(a1 + 24), *(a3 + 16), *(a3 + 20));
    v310 = 0;
    v107 = 0;
    v312 = v27;
    v108 = v27 - v30;
    v319 = a3 + 192;
    v322 = a3 + 320;
LABEL_135:
    while (2)
    {
      v109 = v108;
      v110 = _CIIndexSetEnumeratorNext(&v323);
      if (!v110 || (*v106 & 1) != 0)
      {
        goto LABEL_453;
      }

      v111 = v110;
      v112 = *(*(a3 + 384) + 8);
      if (v108 + 5 >= v112)
      {
        v113 = *a3;
        v114 = *(a3 + 8) + v108;
        *(a3 + 8) = v114 & 0x3FFFFFFFFFFFF000;
        v115 = fd_pread(*(v29 + 4488), v113, v112, v114 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        if (v115 == -1)
        {
          goto LABEL_453;
        }

        v109 = v114 - *(a3 + 8);
      }

      else
      {
        ++*(a3 + 28);
      }

      v108 = v109 + 1;
      v116 = &v28[v109];
      v117 = v28[v109];
      if (v28[v109] < 0)
      {
        if (v117 > 0xBF)
        {
          if (v117 > 0xDF)
          {
            if (v117 > 0xEF)
            {
              v117 = *&v28[v108];
              v108 = v109 + 5;
            }

            else
            {
              v117 = ((v117 & 0xF) << 24) | (v28[v108] << 16) | (v116[2] << 8) | v116[3];
              v108 = v109 + 4;
            }
          }

          else
          {
            v117 = ((v117 & 0x1F) << 16) | (v28[v108] << 8) | v116[2];
            v108 = v109 + 3;
          }
        }

        else
        {
          v118 = v28[v108] | ((v117 & 0x3F) << 8);
          v108 = v109 + 2;
          v117 = v118;
        }
      }

      v119 = v106;
      if (!v117)
      {
        *v106 = 1;
        v161 = *__error();
        v162 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          v271 = *(a3 + 8) + v108;
          v272 = *(**(a3 + 384) + 24);
          v273 = *(**(a3 + 384) + 32);
          *buf = 136316674;
          *&buf[4] = "_CIPositionIterate_Compressed";
          *&buf[12] = 1024;
          *&buf[14] = 3130;
          *&buf[18] = 1024;
          *&buf[20] = v111;
          *&buf[24] = 2048;
          *&buf[26] = v271;
          *&buf[34] = 2048;
          *&buf[36] = v273;
          *&buf[44] = 2048;
          *&buf[46] = v272;
          *&buf[54] = 1024;
          v331 = 1;
          _os_log_error_impl(&dword_1C278D000, v162, OS_LOG_TYPE_ERROR, "%s:%d: Rogue nil position at docID %d off %llu size %llu(%llu), Rogue nil count %d. Canceling _CIPositionIterate_NewCompressed", buf, 0x3Cu);
        }

        *__error() = v161;
        if (dword_1EBF46AF4 >= 5)
        {
          v163 = *__error();
          v164 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = 1;
            _os_log_impl(&dword_1C278D000, v164, OS_LOG_TYPE_DEFAULT, "%d rogue nil positions were found (use debug log level to see them all)", buf, 8u);
          }

          *__error() = v163;
        }

        goto LABEL_453;
      }

      if (!CIIndexSetHasIndex(v306, v111))
      {
        if (*v106)
        {
LABEL_170:
          v128 = *(a3 + 56);
          if (v128 >= v111)
          {
            v128 = v111;
          }

          *(a3 + 56) = v128;
          continue;
        }

        v121 = 0;
        while (1)
        {
          v68 = __OFSUB__(v117, v121);
          v117 -= v121;
          if ((v117 < 0) ^ v68 | (v117 == 0) || v117 <= 0)
          {
            break;
          }

          v122 = *(*(a3 + 384) + 8);
          if (v108 + 5 >= v122)
          {
            v123 = *a3;
            v124 = *(a3 + 8) + v108;
            *(a3 + 8) = v124 & 0x3FFFFFFFFFFFF000;
            v125 = fd_pread(*(v29 + 4488), v123, v122, v124 & 0x3FFFFFFFFFFFF000);
            *(a3 + 28) = 0;
            if (v125 == -1)
            {
              goto LABEL_450;
            }

            v108 = v124 - *(a3 + 8);
          }

          else
          {
            ++*(a3 + 28);
          }

          v126 = v108 + 1;
          v127 = &v28[v108];
          v121 = v28[v108];
          if (v28[v108] < 0)
          {
            if (v121 > 0xBF)
            {
              if (v121 > 0xDF)
              {
                if (v121 > 0xEF)
                {
                  v121 = *&v28[v126];
                  v108 += 5;
                }

                else
                {
                  v121 = ((v121 & 0xF) << 24) | (v28[v126] << 16) | (v127[2] << 8) | v127[3];
                  v108 += 4;
                }
              }

              else
              {
                v121 = ((v121 & 0x1F) << 16) | (v28[v126] << 8) | v127[2];
                v108 += 3;
              }
            }

            else
            {
              v108 += 2;
              v121 = v28[v126] | ((v121 & 0x3F) << 8);
            }
          }

          else
          {
            ++v108;
          }

          if (!v121 || (*v106 & 1) != 0)
          {
            goto LABEL_170;
          }
        }

LABEL_412:
        v267 = __si_assert_copy_extra(0);
LABEL_423:
        __message_assert("%s:%u: failed assertion '%s' %s ");
        goto LABEL_424;
      }

      break;
    }

    if (v107)
    {
      if (v107 - v111 == 1)
      {
        v129 = v310;
      }

      else
      {
        v129 = lockedCountItemsInRange(v306, v111 + 1, v107 - 1, v120) + v310;
      }

      v130 = v129 + 1;
    }

    else
    {
      v130 = lockedCountItemsInRange(v306, v111 + 1, *(a3 + 24), v120);
    }

    v131 = *(a1 + 168);
    v310 = v130;
    if (v130 >= v131)
    {
      v132 = *(a1 + 168);
      if (!v131)
      {
        v132 = 1 << -__clz(v130);
        if (v130 <= 4)
        {
          v132 = 4;
        }

        *(a1 + 168) = v132;
      }

      if (v130 + 1 >= v132)
      {
        do
        {
          v85 = v130 + 1 >= 2 * v132;
          v132 *= 2;
        }

        while (v85);
        *(a1 + 168) = v132;
      }

      v133 = *(a1 + 160);
      v134 = 8 * v132;
      if (v133)
      {
        v135 = malloc_type_zone_realloc(queryZone, v133, v134, 0xA1A7ADA0uLL);
      }

      else
      {
        v135 = malloc_type_zone_malloc(queryZone, v134, 0x566E289CuLL);
      }

      v136 = v135;
      if (!v135)
      {
        _log_fault_for_malloc_failure();
      }

      *(a1 + 160) = v136;
      bzero(&v136[8 * v131], 8 * (*(a1 + 168) - v131));
      v130 = v310;
    }

    v137 = *(*(a1 + 160) + 8 * v130);
    if (!v137)
    {
      v137 = CIIndexSetCreateWithRangeWithCache(0, 0x400u, a2);
      *(*(a1 + 160) + 8 * v130) = v137;
    }

    *buf = 0;
    v138 = v137;
    v139 = pointerHash(v137, *(*(a3 + 384) + 20));
    v301 = v138;
    Buffer = SharedStateGetBuffer(a3, v138, v139, buf);
    v141 = *buf;
    v142 = *(a3 + 384);
    v308 = v139;
    v302 = *(v142 + 8 * v139 + 32);
    v304 = *(v142 + 160);
    ++*buf;
    if (*v106)
    {
      v143 = 0;
      v144 = Buffer;
LABEL_219:
      *(v144 + 4 * v141) = v143;
      goto LABEL_220;
    }

    v145 = 0;
    v144 = Buffer;
    while (1)
    {
      v68 = __OFSUB__(v117, v145);
      v117 -= v145;
      if ((v117 < 0) ^ v68 | (v117 == 0) || v117 <= 0)
      {
        goto LABEL_416;
      }

      v146 = *buf;
      if (*buf == 4096)
      {
        *(v144 + 4 * v141) = 4095 - v141;
        _issueBuffer(v304, v302, *a2, v144, *buf, 1);
        v147 = malloc_type_zone_malloc(queryZone, 0x4000uLL, 0xA4971684uLL);
        if (!v147)
        {
          _log_fault_for_malloc_failure();
        }

        *(v319 + 8 * v308) = v147;
        *(v322 + 4 * v308) = 0;
        *v147 = v301;
        v148 = *(v322 + 4 * v308);
        v141 = v148 + 2;
        *(v322 + 4 * v308) = v148 + 2;
        v144 = *(v319 + 8 * v308);
        v146 = v148 + 3;
      }

      *buf = v146 + 1;
      *(v144 + 4 * v146) = v117;
      v149 = *(*(a3 + 384) + 8);
      if (v108 + 5 >= v149)
      {
        v150 = *a3;
        v151 = *(a3 + 8) + v108;
        *(a3 + 8) = v151 & 0x3FFFFFFFFFFFF000;
        v152 = fd_pread(*(v29 + 4488), v150, v149, v151 & 0x3FFFFFFFFFFFF000);
        *(a3 + 28) = 0;
        v108 = v151 - *(a3 + 8);
        if (v152 == -1)
        {
          v159 = *v106;
          *(v144 + 4 * v141) = *buf + ~v141;
          if (v159)
          {
            v119 = v106;
LABEL_450:
            v106 = v119;
            v293 = *(a3 + 56);
            if (v293 >= v111)
            {
              v293 = v111;
            }

            *(a3 + 56) = v293;
LABEL_453:
            instr_release(*(a1 + 24));
            *(a1 + 148) = 0;
            *a1 = 0;
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            if (*v106)
            {
              goto LABEL_456;
            }

            PositionIterator_GetNext(a1);
            v195 = a1;
            v196 = v312;
LABEL_455:
            if (iterationIsLooping(v195, v196))
            {
              goto LABEL_456;
            }

            goto LABEL_458;
          }

          v157 = 1;
LABEL_225:
          if ((*buf - 4092) > 0xFFFFEFFF)
          {
            *(v322 + 4 * v308) = *buf;
          }

          else
          {
            _issueBuffer(v304, v302, *a2, v144, *buf, 1);
            *(v322 + 4 * v308) = 0;
            *(v319 + 8 * v308) = 0;
          }

          v158 = *(a3 + 56);
          if (v158 >= v111)
          {
            v158 = v111;
          }

          *(a3 + 56) = v158;
          v107 = v111;
          if (v157)
          {
            goto LABEL_453;
          }

          goto LABEL_135;
        }
      }

      else
      {
        ++*(a3 + 28);
      }

      v153 = v108 + 1;
      v154 = &v28[v108];
      v145 = v28[v108];
      if (v28[v108] < 0)
      {
        if (v145 > 0xBF)
        {
          if (v145 > 0xDF)
          {
            if (v145 > 0xEF)
            {
              v145 = *&v28[v153];
              v108 += 5;
            }

            else
            {
              v145 = ((v145 & 0xF) << 24) | (v28[v153] << 16) | (v154[2] << 8) | v154[3];
              v108 += 4;
            }
          }

          else
          {
            v145 = ((v145 & 0x1F) << 16) | (v28[v153] << 8) | v154[2];
            v108 += 3;
          }
        }

        else
        {
          v108 += 2;
          v145 = v28[v153] | ((v145 & 0x3F) << 8);
        }
      }

      else
      {
        ++v108;
      }

      v155 = *v106;
      if (!v145)
      {
        *(v144 + 4 * v141) = *buf + ~v141;
        if ((v155 & 1) == 0)
        {
          v157 = 0;
          goto LABEL_225;
        }

LABEL_220:
        v156 = *(a3 + 56);
        if (v156 >= v111)
        {
          v156 = v111;
        }

        *(a3 + 56) = v156;
        v107 = v111;
        goto LABEL_135;
      }

      if (*v106)
      {
        v143 = *buf + ~v141;
        goto LABEL_219;
      }
    }
  }

  if (*a7)
  {
    goto LABEL_456;
  }

  v15 = *a1;
  if (!*a1)
  {
    goto LABEL_271;
  }

  v16 = *a3;
  v17 = *v13;
  if (dword_1EBF46AF4 >= 5)
  {
    v280 = *__error();
    v281 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
    {
      v282 = *(a1 + 24);
      *buf = 134218496;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      *&buf[24] = v282;
      _os_log_impl(&dword_1C278D000, v281, OS_LOG_TYPE_DEFAULT, "%p %llu %p", buf, 0x20u);
    }

    *__error() = v280;
    v13 = *(a3 + 384);
    v11 = a2;
    v8 = a5;
  }

  v18 = *(a3 + 8);
  v19 = v13[1];
  if (v15 < v18 || (v19 + v18 > v15 ? (v20 = v15 + 30 > v19 + v18) : (v20 = 1), v20))
  {
    *(a3 + 8) = v15 & 0x3FFFFFFFFFFFF000;
    if (fd_pread(*(v17 + 4488), v16, v19, v15 & 0x3FFFFFFFFFFFF000) == -1 || (*v7 & 1) != 0)
    {
      goto LABEL_456;
    }

    v315 = v11;
    *(a3 + 28) = 0;
    v18 = *(a3 + 8);
  }

  else
  {
    v315 = v11;
    ++*(a3 + 28);
  }

  v300 = a6;
  v33 = v15 - v18;
  v329 = v15 - v18;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v34 = (a3 + 176);
  v323 = 0u;
  v324 = 0u;
  initializeEnumberatorForRangeLocked(&v323, *(a1 + 24), 0, *(a3 + 20));
  v328 = v33;
  v35 = *(a1 + 156);
  if (*(a1 + 156))
  {
    if (v35 >= 0x1D)
    {
      goto LABEL_412;
    }

    v36 = *(a3 + 384);
    v37 = v36[1];
    if (v33 + 4 >= v37)
    {
      v39 = *v36;
      v40 = *a3;
      v41 = *(a3 + 8) + v33;
      *(a3 + 8) = v41 & 0x3FFFFFFFFFFFF000;
      v42 = fd_pread(*(v39 + 4488), v40, v37, v41 & 0x3FFFFFFFFFFFF000);
      *(a3 + 28) = 0;
      if (v42 == -1)
      {
LABEL_266:
        *(a1 + 156) = 0;
        goto LABEL_267;
      }

      v38 = v41 - *(a3 + 8);
    }

    else
    {
      ++*(a3 + 28);
      v38 = v33;
    }

    v43 = *(*a3 + v38);
    v44 = v38 + 4;
    v45 = packingCount_13804[v43 >> 28];
    switch(v43 >> 28)
    {
      case 1uLL:
        *(a3 + 60) = v43 & 3;
        v171 = vdupq_n_s32(v43);
        v172.i64[0] = 0x300000003;
        v172.i64[1] = 0x300000003;
        *(a3 + 64) = vandq_s8(vshlq_u32(v171, xmmword_1C2BFA500), v172);
        *(a3 + 80) = vandq_s8(vshlq_u32(v171, xmmword_1C2BFA510), v172);
        *(a3 + 96) = vandq_s8(vshlq_u32(v171, xmmword_1C2BFA520), v172);
        *(a3 + 112) = (v43 >> 26) & 3;
        break;
      case 2uLL:
        v167 = vdupq_n_s32(v43);
        *(a3 + 60) = v43 & 0xF;
        v168.i64[0] = 0x700000007;
        v168.i64[1] = 0x700000007;
        *(a3 + 64) = vandq_s8(vshlq_u32(v167, xmmword_1C2BFA4E0), v168);
        *(a3 + 80) = vandq_s8(vshlq_u32(v167, xmmword_1C2BFA4F0), v168);
        break;
      case 3uLL:
        *(a3 + 60) = v43 & 0xF;
        v169 = vdupq_n_s32(v43);
        v170.i64[0] = 0xF0000000FLL;
        v170.i64[1] = 0xF0000000FLL;
        *(a3 + 64) = vandq_s8(vshlq_u32(v169, xmmword_1C2BFA4D0), v170);
        *(a3 + 80) = vand_s8(vshl_u32(*v169.i8, 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
        break;
      case 4uLL:
        *(a3 + 60) = v43 & 0x1F;
        *(a3 + 64) = vandq_s8(vshlq_u32(vdupq_n_s32(v43), xmmword_1C2BFA4B0), xmmword_1C2BFA4C0);
        *(a3 + 80) = BYTE3(v43) & 0xF;
        break;
      case 5uLL:
        *(a3 + 60) = v43 & 0x3F;
        *(a3 + 64) = vandq_s8(vshlq_u32(vdupq_n_s32(v43), xmmword_1C2BFA490), xmmword_1C2BFA4A0);
        break;
      case 6uLL:
        *(a3 + 60) = v43 & 0x7F;
        *(a3 + 64) = vand_s8(vshl_u32(vdup_n_s32(v43), 0xFFFFFFF2FFFFFFF9), 0x7F0000007FLL);
        *(a3 + 72) = (v43 >> 21) & 0x7F;
        break;
      case 7uLL:
        *(a3 + 60) = v43 & 0x3FFF;
        *(a3 + 68) = (v43 >> 14) & 0x3FFF;
        break;
      case 8uLL:
        *(a3 + 60) = v43 & 0x3FFF;
        *(a3 + 64) = vand_s8(vshl_u32(vdup_n_s32(v43), 0xFFFFFFEBFFFFFFF2), 0x7F0000007FLL);
        *(a3 + 72) = 0;
        break;
      case 9uLL:
        *(a3 + 60) = v43 & 0x7F;
        v165 = vshl_u32(vdup_n_s32(v43), 0xFFFFFFF2FFFFFFF9);
        v166 = 0x3FFF0000007FLL;
        goto LABEL_260;
      case 0xAuLL:
        *(a3 + 60) = v43 & 0x7F;
        v165 = vshl_u32(vdup_n_s32(v43), 0xFFFFFFEBFFFFFFF9);
        v166 = 0x7F00003FFFLL;
        goto LABEL_260;
      case 0xBuLL:
        *(a3 + 60) = v43 & 0x3FFF;
        v165 = vshl_u32(vdup_n_s32(v43), 0xFFFFFFEBFFFFFFF2);
        v166 = 0x7F0000007FLL;
        goto LABEL_260;
      case 0xCuLL:
        *(a3 + 60) = v43 & 0x3FFF;
        *(a3 + 64) = (v43 >> 14) & 0x3FFF;
        break;
      case 0xDuLL:
        *(a3 + 60) = v43 & 0x3FF;
        v165 = vshl_u32(vdup_n_s32(v43), 0xFFFFFFEDFFFFFFF6);
        v166 = 0x100000001;
LABEL_260:
        *(a3 + 64) = vand_s8(v165, v166);
        break;
      case 0xEuLL:
        *(a3 + 60) = v43 & 0x3FFF;
        *(a3 + 64) = (v43 >> 14) & 0x3FFF;
        break;
      case 0xFuLL:
        *(a3 + 60) = v43 & 0x7FFFFFF;
        if ((v43 & 0x8000000) != 0)
        {
          *(a3 + 64) = 0;
          ++v45;
        }

        break;
      default:
        v46 = vdupq_n_s32(v43);
        v47.i64[0] = 0x100000001;
        v47.i64[1] = 0x100000001;
        *(a3 + 64) = vandq_s8(vshlq_u32(v46, xmmword_1C2BFA530), v47);
        *(a3 + 80) = vandq_s8(vshlq_u32(v46, xmmword_1C2BFA540), v47);
        *(a3 + 96) = vandq_s8(vshlq_u32(v46, xmmword_1C2BFA550), v47);
        *(a3 + 112) = vandq_s8(vshlq_u32(v46, xmmword_1C2BFA560), v47);
        *(a3 + 60) = v43 & 1;
        *(a3 + 128) = vandq_s8(vshlq_u32(v46, xmmword_1C2BFA570), v47);
        *(a3 + 144) = vandq_s8(vshlq_u32(v46, xmmword_1C2BFA580), v47);
        *(a3 + 160) = *&vshl_u32(*v46.i8, 0xFFFFFFE6FFFFFFE7) & 0xFFFFFF81FFFFFF81;
        *(a3 + 168) = (v43 >> 27) & 1;
        break;
    }

    *v34 = v45;
    if (v45 >= 0x1D)
    {
      goto LABEL_416;
    }

    *(a3 + 184) = v35;
    v85 = v45 >= v35;
    v173 = v45 - v35;
    if (!v85)
    {
      v289 = __si_assert_copy_extra(0);
      v290 = v289;
      v291 = "";
      if (v289)
      {
        v291 = v289;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Unexpected word at %lld. readAheadAvailable %ld < %d", "PayloadIterator.c", 2355, "context->readAheadAvailable >= readAheadIndex", v291, v33 + *(a3 + 8), *(a3 + 176), v35);
      free(v290);
      if (__valid_fs(-1))
      {
        v292 = 2989;
      }

      else
      {
        v292 = 3072;
      }

      *v292 = -559038737;
      abort();
    }

    *v34 = v173;
    if (v173 >= 0x1D)
    {
LABEL_416:
      v274 = __si_assert_copy_extra(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_417;
    }

    v329 = v44;
    goto LABEL_266;
  }

LABEL_267:
  if ((*v7 & 1) == 0)
  {
    v303 = 0;
    v197 = 0;
    v198 = (a3 + 60);
    v309 = a3 + 192;
    v311 = a3 + 320;
    v307 = a4;
    v297 = v15;
    v298 = v8;
    do
    {
      v320 = _CIIndexSetEnumeratorNext(&v323);
      if (!v320)
      {
        break;
      }

      if (v320 < v8)
      {
        v249 = *(a3 + 8);
        v250 = *(a1 + 48);
        v251 = *(a1 + 40);
        v252 = *(a1 + 148);
        v253 = *(a1 + 152);
        v254 = *(a1 + 16);
        v255 = *(a1 + 24);
        v256 = *(a3 + 176);
        if (v256)
        {
          LOBYTE(v256) = *(a3 + 184);
          v257 = v328;
        }

        else
        {
          v257 = v329;
          *(a3 + 184) = 0;
        }

        a6 = v300;
        *buf = v257 + v249;
        *&buf[8] = v255;
        *&buf[16] = v250;
        *&buf[24] = v251;
        *&buf[32] = v252;
        *&buf[36] = v253 + 1;
        buf[40] = v256;
        *&buf[41] = 0;
        *&buf[44] = 0;
        *&buf[48] = v254;
        deferPosition(a1, buf);
        goto LABEL_270;
      }

      v199 = readCompactPosition_13808(a3, &v329, &v328);
      if (v199 == -1)
      {
        break;
      }

      v200 = v199;
      if (!v199)
      {
        *v7 = 1;
        v258 = *__error();
        v259 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
        {
          v268 = v329 + *(a3 + 8);
          v269 = *(**(a3 + 384) + 24);
          v270 = *(**(a3 + 384) + 32);
          *buf = 136316674;
          *&buf[4] = "_CIPositionIterate_NewCompressed";
          *&buf[12] = 1024;
          *&buf[14] = 2841;
          *&buf[18] = 1024;
          *&buf[20] = v320;
          *&buf[24] = 2048;
          *&buf[26] = v268;
          *&buf[34] = 2048;
          *&buf[36] = v270;
          *&buf[44] = 2048;
          *&buf[46] = v269;
          *&buf[54] = 1024;
          v331 = 1;
          _os_log_error_impl(&dword_1C278D000, v259, OS_LOG_TYPE_ERROR, "%s:%d: Rogue nil position at docID %d off %llu size %llu(%llu), Rogue nil count %d. Canceling", buf, 0x3Cu);
        }

        *__error() = v258;
        a6 = v300;
        if (dword_1EBF46AF4 >= 5)
        {
          v260 = *__error();
          v261 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = 1;
            _os_log_impl(&dword_1C278D000, v261, OS_LOG_TYPE_DEFAULT, "%d rogue nil positions were found (use debug log level to see them all)", buf, 8u);
          }

          *__error() = v260;
          break;
        }

        goto LABEL_269;
      }

      if (!CIIndexSetHasIndex(a4, v320))
      {
        if ((*v7 & 1) == 0)
        {
          v203 = (a3 + 176);
          v204 = *(a3 + 176);
          v206 = v328;
          v205 = v329;
LABEL_304:
          v207 = v204;
          while (v207)
          {
            if (v204 >= 0x1D)
            {
              goto LABEL_412;
            }

            --v207;
            v208 = *(a3 + 184);
            *(a3 + 176) = v207;
            *(a3 + 184) = v208 + 1;
            if (!v198[v208])
            {
              v328 = v206;
              v329 = v205;
              v227 = v320;
              if (!v207)
              {
                *(a3 + 184) = 0;
                v328 = v205;
              }

              goto LABEL_389;
            }
          }

          while (1)
          {
            v209 = *(a3 + 384);
            v210 = v209[1];
            if (v205 + 4 >= v210)
            {
              v211 = *v209;
              v212 = *a3;
              v213 = *(a3 + 8) + v205;
              *(a3 + 8) = v213 & 0x3FFFFFFFFFFFF000;
              v214 = fd_pread(*(v211 + 4488), v212, v210, v213 & 0x3FFFFFFFFFFFF000);
              *(a3 + 28) = 0;
              if (v214 == -1)
              {
                goto LABEL_268;
              }

              v206 = v213 - *(a3 + 8);
              v203 = (a3 + 176);
            }

            else
            {
              ++*(a3 + 28);
              v206 = v205;
            }

            v215 = *(*a3 + v206);
            v205 = v206 + 4;
            *(a3 + 60) = 0;
            v204 = packingCount_13804[v215 >> 28];
            switch(v215 >> 28)
            {
              case 1uLL:
                if ((~((357913940 - v215) | v215) & 0x8AAAAAAA) == 0)
                {
                  goto LABEL_333;
                }

                v225 = vdupq_n_s32(v215);
                *(a3 + 60) = v215 & 3;
                v226.i64[0] = 0x300000003;
                v226.i64[1] = 0x300000003;
                *(a3 + 64) = vandq_s8(vshlq_u32(v225, xmmword_1C2BFA500), v226);
                *(a3 + 80) = vandq_s8(vshlq_u32(v225, xmmword_1C2BFA510), v226);
                *(a3 + 96) = vandq_s8(vshlq_u32(v225, xmmword_1C2BFA520), v226);
                *(a3 + 112) = (v215 >> 26) & 3;
                goto LABEL_348;
              case 2uLL:
                if ((~((38347920 - v215) | v215) & 0x9249248) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0xF;
                v221 = vdupq_n_s32(v215);
                v222.i64[0] = 0x700000007;
                v222.i64[1] = 0x700000007;
                *(a3 + 64) = vandq_s8(vshlq_u32(v221, xmmword_1C2BFA4E0), v222);
                *(a3 + 80) = vandq_s8(vshlq_u32(v221, xmmword_1C2BFA4F0), v222);
                goto LABEL_348;
              case 3uLL:
                if ((~((17895696 - v215) | v215) & 0x8888888) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0xF;
                v223 = vdupq_n_s32(v215);
                v224.i64[0] = 0xF0000000FLL;
                v224.i64[1] = 0xF0000000FLL;
                *(a3 + 64) = vandq_s8(vshlq_u32(v223, xmmword_1C2BFA4D0), v224);
                *(a3 + 80) = vand_s8(vshl_u32(*v223.i8, 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
                goto LABEL_348;
              case 4uLL:
                if ((~((17859616 - v215) | v215) & 0x8884210) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x1F;
                *(a3 + 64) = vandq_s8(vshlq_u32(vdupq_n_s32(v215), xmmword_1C2BFA4B0), xmmword_1C2BFA4C0);
                *(a3 + 80) = BYTE3(v215) & 0xF;
                goto LABEL_348;
              case 5uLL:
                if ((~((8654912 - v215) | v215) & 0x8420820) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x3F;
                *(a3 + 64) = vandq_s8(vshlq_u32(vdupq_n_s32(v215), xmmword_1C2BFA490), xmmword_1C2BFA4A0);
                goto LABEL_348;
              case 6uLL:
                if ((~((2113664 - v215) | v215) & 0x8102040) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x7F;
                *(a3 + 64) = vand_s8(vshl_u32(vdup_n_s32(v215), 0xFFFFFFF2FFFFFFF9), 0x7F0000007FLL);
                *(a3 + 72) = (v215 >> 21) & 0x7F;
                goto LABEL_348;
              case 7uLL:
                *(a3 + 60) = v215 & 0x3FFF;
                *(a3 + 68) = (v215 >> 14) & 0x3FFF;
                goto LABEL_348;
              case 8uLL:
                *(a3 + 60) = v215 & 0x3FFF;
                *(a3 + 64) = vand_s8(vshl_u32(vdup_n_s32(v215), 0xFFFFFFEBFFFFFFF2), 0x7F0000007FLL);
                *(a3 + 72) = 0;
                goto LABEL_348;
              case 9uLL:
                if ((~((16512 - v215) | v215) & 0x8002040) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x7F;
                v220 = vand_s8(vshl_u32(vdup_n_s32(v215), 0xFFFFFFF2FFFFFFF9), 0x3FFF0000007FLL);
                goto LABEL_347;
              case 0xAuLL:
                if ((~((2097280 - v215) | v215) & 0x8100040) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x7F;
                v220 = vand_s8(vshl_u32(vdup_n_s32(v215), 0xFFFFFFEBFFFFFFF9), 0x7F00003FFFLL);
                goto LABEL_347;
              case 0xBuLL:
                if ((~((2113536 - v215) | v215) & 0x8102000) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x3FFF;
                v218 = vshl_u32(vdup_n_s32(v215), 0xFFFFFFEBFFFFFFF2);
                v219 = 0x7F0000007FLL;
                goto LABEL_345;
              case 0xCuLL:
                *(a3 + 60) = v215 & 0x3FFF;
                *(a3 + 64) = (v215 >> 14) & 0x3FFF;
                goto LABEL_348;
              case 0xDuLL:
                if ((~((525312 - v215) | v215) & 0x8040200) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x3FF;
                v218 = vshl_u32(vdup_n_s32(v215), 0xFFFFFFEDFFFFFFF6);
                v219 = 0x100000001;
LABEL_345:
                v220 = vand_s8(v218, v219);
LABEL_347:
                *(a3 + 64) = v220;
                goto LABEL_348;
              case 0xEuLL:
                if ((~((0x4000 - v215) | v215) & 0x8002000) == 0)
                {
                  goto LABEL_333;
                }

                *(a3 + 60) = v215 & 0x3FFF;
                *(a3 + 64) = (v215 >> 14) & 0x3FFF;
                goto LABEL_348;
              case 0xFuLL:
                *v198 = v215 & 0x7FFFFFF;
                if ((v215 & 0x8000000) != 0)
                {
                  *(a3 + 64) = 0;
                  ++v204;
                  goto LABEL_348;
                }

                *v203 = v204;
                if ((v215 & 0x7FFFFFF) == 0)
                {
                  goto LABEL_349;
                }

                continue;
              default:
                if ((~v215 & 0xFFFFFFF) != 0)
                {
                  v216 = vdupq_n_s32(v215);
                  *(a3 + 60) = v215 & 1;
                  v217.i64[0] = 0x100000001;
                  v217.i64[1] = 0x100000001;
                  *(a3 + 64) = vandq_s8(vshlq_u32(v216, xmmword_1C2BFA530), v217);
                  *(a3 + 80) = vandq_s8(vshlq_u32(v216, xmmword_1C2BFA540), v217);
                  *(a3 + 96) = vandq_s8(vshlq_u32(v216, xmmword_1C2BFA550), v217);
                  *(a3 + 112) = vandq_s8(vshlq_u32(v216, xmmword_1C2BFA560), v217);
                  *(a3 + 128) = vandq_s8(vshlq_u32(v216, xmmword_1C2BFA570), v217);
                  *(a3 + 144) = vandq_s8(vshlq_u32(v216, xmmword_1C2BFA580), v217);
                  *(a3 + 160) = *&vshl_u32(*v216.i8, 0xFFFFFFE6FFFFFFE7) & 0xFFFFFF81FFFFFF81;
                  *(a3 + 168) = (v215 >> 27) & 1;
LABEL_348:
                  *v203 = v204;
LABEL_349:
                  *(a3 + 184) = 0;
                  goto LABEL_304;
                }

LABEL_333:
                *v203 = v204;
                break;
            }
          }
        }

        break;
      }

      if (v197)
      {
        if (v197 - v320 == 1)
        {
          v202 = v303;
        }

        else
        {
          v202 = lockedCountItemsInRange(a4, v320 + 1, v197 - 1, v201) + v303;
        }

        v228 = v202 + 1;
      }

      else
      {
        v228 = lockedCountItemsInRange(a4, v320 + 1, *(a3 + 24), v201);
      }

      v229 = *(a1 + 168);
      if (v228 >= v229)
      {
        v230 = *(a1 + 168);
        if (!v229)
        {
          v230 = 1 << -__clz(v228);
          if (v228 <= 4)
          {
            v230 = 4;
          }

          *(a1 + 168) = v230;
        }

        if (v228 + 1 >= v230)
        {
          do
          {
            v85 = v228 + 1 >= 2 * v230;
            v230 *= 2;
          }

          while (v85);
          *(a1 + 168) = v230;
        }

        v231 = v228;
        v232 = *(a1 + 160);
        v233 = 8 * v230;
        if (v232)
        {
          v234 = malloc_type_zone_realloc(queryZone, v232, v233, 0xA1A7ADA0uLL);
        }

        else
        {
          v234 = malloc_type_zone_malloc(queryZone, v233, 0x566E289CuLL);
        }

        v235 = v234;
        if (!v234)
        {
          _log_fault_for_malloc_failure();
        }

        *(a1 + 160) = v235;
        bzero(&v235[8 * v229], 8 * (*(a1 + 168) - v229));
        v228 = v231;
      }

      v236 = v7;
      v237 = *(*(a1 + 160) + 8 * v228);
      if (!v237)
      {
        v237 = CIIndexSetCreateWithRangeWithCache(0, 0x400u, v315);
        *(*(a1 + 160) + 8 * v228) = v237;
      }

      v303 = v228;
      v327 = 0;
      v238 = pointerHash(v237, *(*(a3 + 384) + 20));
      v239 = SharedStateGetBuffer(a3, v237, v238, &v327);
      v240 = 0;
      v241 = *(a3 + 384);
      v313 = *(v241 + 160);
      v242 = *(v241 + 8 * v238 + 32);
      v243 = v327++;
      do
      {
        if (*v236)
        {
          break;
        }

        if (v240 < 0)
        {
          goto LABEL_412;
        }

        v200 += v240;
        if (dword_1EBF46AD0 >= 5)
        {
          v296 = *__error();
          log = _SILogForLogForCategory(1);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *&buf[4] = a1;
            *&buf[12] = 1024;
            *&buf[14] = v320;
            *&buf[18] = 1024;
            *&buf[20] = v200;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Iter: %p Doc: %d Pos: %d", buf, 0x18u);
          }

          *__error() = v296;
        }

        v244 = v327;
        if (v327 == 4096)
        {
          *(v239 + 4 * v243) = 4095 - v243;
          _issueBuffer(v313, v242, *v315, v239, v327, 0);
          v245 = malloc_type_zone_malloc(queryZone, 0x4000uLL, 0xA4971684uLL);
          if (!v245)
          {
            _log_fault_for_malloc_failure();
          }

          *(v309 + 8 * v238) = v245;
          *(v311 + 4 * v238) = 0;
          *v245 = v237;
          v246 = *(v311 + 4 * v238);
          v243 = v246 + 2;
          *(v311 + 4 * v238) = v246 + 2;
          v239 = *(v309 + 8 * v238);
          v244 = v246 + 3;
        }

        v327 = v244 + 1;
        *(v239 + 4 * v244) = v200;
        v240 = readCompactPosition_13808(a3, &v329, &v328);
      }

      while ((v240 + 1) > 1);
      *(v239 + 4 * v243) = v327 + ~v243;
      v7 = v236;
      v247 = *v236;
      v15 = v297;
      v227 = v320;
      if ((v247 & 1) == 0)
      {
        if (v327 - 4092 > 0xFFFFEFFF)
        {
          *(v311 + 4 * v238) = v327;
        }

        else
        {
          _issueBuffer(v313, v242, *v315, v239, v327, 0);
          *(v311 + 4 * v238) = 0;
          *(v309 + 8 * v238) = 0;
        }
      }

      a4 = v307;
      v8 = v298;
      v197 = v320;
LABEL_389:
      v248 = *(a3 + 56);
      if (v248 >= v227)
      {
        v248 = v227;
      }

      *(a3 + 56) = v248;
    }

    while ((*v7 & 1) == 0);
  }

LABEL_268:
  a6 = v300;
LABEL_269:
  instr_release(*(a1 + 24));
LABEL_270:
  *(a1 + 148) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*v7)
  {
    goto LABEL_456;
  }

LABEL_271:
  PositionIterator_GetNext(a1);
  if (*(a1 + 152) <= a6)
  {
    if (*a1 || (v174 = *(a1 + 188)) == 0)
    {
      v195 = a1;
      v196 = v15;
      goto LABEL_455;
    }
  }

  else
  {
    v174 = *(a1 + 188);
  }

  if (v174 >= 1)
  {
    v175 = 0;
    do
    {
      v176 = *(a1 + 176) + 56 * v175;
      v177 = *(v176 + 16);
      v323 = *v176;
      v324 = v177;
      v325 = *(v176 + 32);
      v326 = *(v176 + 48);
      v178 = *(a1 + 128);
      v179 = *(a1 + 136);
      v180 = *(a1 + 120);
      if ((v179 + 2) >= v178)
      {
        if (v178 >= 4)
        {
          v182 = 2 * v178;
        }

        else
        {
          v182 = 4;
        }

        *(a1 + 128) = v182;
        if (v180)
        {
          v183 = malloc_type_zone_realloc(queryZone, v180, 56 * v182 + 112, 0xA1A7ADA0uLL);
        }

        else
        {
          v183 = malloc_type_zone_malloc(queryZone, 56 * v182 + 112, 0x566E289CuLL);
        }

        v184 = v183;
        if (!v183)
        {
          _log_fault_for_malloc_failure();
        }

        *(a1 + 120) = v184;
        v184[6] = 0;
        *(v184 + 1) = 0u;
        *(v184 + 2) = 0u;
        *v184 = 0u;
        v181 = *(a1 + 136);
        v180 = *(a1 + 120);
      }

      else
      {
        v181 = *(a1 + 136);
      }

      *(a1 + 136) = v181 + 1;
      v185 = &v180[56 * v179];
      v186 = v324;
      *v185 = v323;
      *(v185 + 1) = v186;
      *(v185 + 2) = v325;
      *(v185 + 6) = v326;
      if (v179 >= 2)
      {
        do
        {
          v187 = *(a1 + 120);
          v188 = v187 + 56 * v179;
          v189 = (v187 + 56 * (v179 >> 1));
          if (*v188 > *v189)
          {
            break;
          }

          *buf = *v188;
          *&buf[16] = *(v188 + 16);
          *&buf[32] = *(v188 + 32);
          *&buf[48] = *(v188 + 48);
          v191 = v189[1];
          v190 = v189[2];
          v192 = *v189;
          *(v188 + 48) = *(v189 + 6);
          *(v188 + 16) = v191;
          *(v188 + 32) = v190;
          *v188 = v192;
          v193 = *(a1 + 120) + 56 * (v179 >> 1);
          *v193 = *buf;
          *(v193 + 16) = *&buf[16];
          *(v193 + 32) = *&buf[32];
          *(v193 + 48) = *&buf[48];
          v20 = v179 > 3;
          v179 >>= 1;
        }

        while (v20);
      }

      ++v175;
    }

    while (v175 < *(a1 + 188));
  }

  *(a1 + 188) = 0;
  PositionIterator_GetNext(a1);
  result = 2;
LABEL_457:
  v294 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t readCompactPosition_13808(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 176);
  if (v4)
  {
    if (v4 >= 0x1D)
    {
      v29 = __si_assert_copy_extra(0);
      v30 = v29;
      v31 = "";
      if (v29)
      {
        v31 = v29;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 2411, "context->readAheadAvailable <= 28", v31);
      free(v30);
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

    v5 = *(a1 + 184);
    *(a1 + 176) = v4 - 1;
    *(a1 + 184) = v5 + 1;
    return *(a1 + 4 * v5 + 60);
  }

  else
  {
    v9 = *a2;
    v10 = *(a1 + 384);
    v11 = v10[1];
    if (*a2 + 4 >= v11)
    {
      v12 = *v10;
      v13 = *a1;
      v14 = *(a1 + 8) + v9;
      *(a1 + 8) = v14 & 0x3FFFFFFFFFFFF000;
      v15 = fd_pread(*(v12 + 4488), v13, v11, v14 & 0x3FFFFFFFFFFFF000);
      *(a1 + 28) = 0;
      if (v15 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v9 = v14 - *(a1 + 8);
    }

    else
    {
      ++*(a1 + 28);
    }

    v16 = *(*a1 + v9);
    *a3 = v9;
    v17 = v9 + 4;
    v18 = packingCount_13804[v16 >> 28];
    switch(v16 >> 28)
    {
      case 1uLL:
        result = v16 & 3;
        *(a1 + 60) = result;
        v27 = vdupq_n_s32(v16);
        v28.i64[0] = 0x300000003;
        v28.i64[1] = 0x300000003;
        *(a1 + 64) = vandq_s8(vshlq_u32(v27, xmmword_1C2BFA500), v28);
        *(a1 + 80) = vandq_s8(vshlq_u32(v27, xmmword_1C2BFA510), v28);
        *(a1 + 96) = vandq_s8(vshlq_u32(v27, xmmword_1C2BFA520), v28);
        *(a1 + 112) = (v16 >> 26) & 3;
        break;
      case 2uLL:
        result = v16 & 0xF;
        v23 = vdupq_n_s32(v16);
        *(a1 + 60) = result;
        v24.i64[0] = 0x700000007;
        v24.i64[1] = 0x700000007;
        *(a1 + 64) = vandq_s8(vshlq_u32(v23, xmmword_1C2BFA4E0), v24);
        *(a1 + 80) = vandq_s8(vshlq_u32(v23, xmmword_1C2BFA4F0), v24);
        break;
      case 3uLL:
        result = v16 & 0xF;
        *(a1 + 60) = result;
        v25 = vdupq_n_s32(v16);
        v26.i64[0] = 0xF0000000FLL;
        v26.i64[1] = 0xF0000000FLL;
        *(a1 + 64) = vandq_s8(vshlq_u32(v25, xmmword_1C2BFA4D0), v26);
        *(a1 + 80) = vand_s8(vshl_u32(*v25.i8, 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
        break;
      case 4uLL:
        result = v16 & 0x1F;
        *(a1 + 60) = result;
        *(a1 + 64) = vandq_s8(vshlq_u32(vdupq_n_s32(v16), xmmword_1C2BFA4B0), xmmword_1C2BFA4C0);
        *(a1 + 80) = BYTE3(v16) & 0xF;
        break;
      case 5uLL:
        result = v16 & 0x3F;
        *(a1 + 60) = result;
        *(a1 + 64) = vandq_s8(vshlq_u32(vdupq_n_s32(v16), xmmword_1C2BFA490), xmmword_1C2BFA4A0);
        break;
      case 6uLL:
        result = v16 & 0x7F;
        *(a1 + 60) = result;
        *(a1 + 64) = vand_s8(vshl_u32(vdup_n_s32(v16), 0xFFFFFFF2FFFFFFF9), 0x7F0000007FLL);
        *(a1 + 72) = (v16 >> 21) & 0x7F;
        break;
      case 7uLL:
        result = v16 & 0x3FFF;
        *(a1 + 60) = result;
        *(a1 + 68) = (v16 >> 14) & 0x3FFF;
        break;
      case 8uLL:
        result = v16 & 0x3FFF;
        *(a1 + 60) = result;
        *(a1 + 64) = vand_s8(vshl_u32(vdup_n_s32(v16), 0xFFFFFFEBFFFFFFF2), 0x7F0000007FLL);
        *(a1 + 72) = 0;
        break;
      case 9uLL:
        result = v16 & 0x7F;
        *(a1 + 60) = result;
        v21 = vshl_u32(vdup_n_s32(v16), 0xFFFFFFF2FFFFFFF9);
        v22 = 0x3FFF0000007FLL;
        goto LABEL_25;
      case 0xAuLL:
        result = v16 & 0x7F;
        *(a1 + 60) = result;
        v21 = vshl_u32(vdup_n_s32(v16), 0xFFFFFFEBFFFFFFF9);
        v22 = 0x7F00003FFFLL;
        goto LABEL_25;
      case 0xBuLL:
        result = v16 & 0x3FFF;
        *(a1 + 60) = result;
        v21 = vshl_u32(vdup_n_s32(v16), 0xFFFFFFEBFFFFFFF2);
        v22 = 0x7F0000007FLL;
        goto LABEL_25;
      case 0xCuLL:
        result = v16 & 0x3FFF;
        *(a1 + 60) = result;
        *(a1 + 64) = (v16 >> 14) & 0x3FFF;
        break;
      case 0xDuLL:
        result = v16 & 0x3FF;
        *(a1 + 60) = result;
        v21 = vshl_u32(vdup_n_s32(v16), 0xFFFFFFEDFFFFFFF6);
        v22 = 0x100000001;
LABEL_25:
        *(a1 + 64) = vand_s8(v21, v22);
        break;
      case 0xEuLL:
        result = v16 & 0x3FFF;
        *(a1 + 60) = result;
        *(a1 + 64) = (v16 >> 14) & 0x3FFF;
        break;
      case 0xFuLL:
        result = v16 & 0x7FFFFFF;
        *(a1 + 60) = result;
        if ((v16 & 0x8000000) != 0)
        {
          *(a1 + 64) = 0;
          ++v18;
        }

        break;
      default:
        v19 = vdupq_n_s32(v16);
        v20.i64[0] = 0x100000001;
        v20.i64[1] = 0x100000001;
        *(a1 + 64) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA530), v20);
        *(a1 + 80) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA540), v20);
        *(a1 + 96) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA550), v20);
        *(a1 + 112) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA560), v20);
        result = v16 & 1;
        *(a1 + 60) = result;
        *(a1 + 128) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA570), v20);
        *(a1 + 144) = vandq_s8(vshlq_u32(v19, xmmword_1C2BFA580), v20);
        *(a1 + 160) = *&vshl_u32(*v19.i8, 0xFFFFFFE6FFFFFFE7) & 0xFFFFFF81FFFFFF81;
        *(a1 + 168) = (v16 >> 27) & 1;
        break;
    }

    *(a1 + 176) = v18 - 1;
    *(a1 + 184) = 1;
    *a2 = v17;
  }

  return result;
}

uint64_t isStopWord(char *a1)
{
  StopWords();
  v2 = strlen(a1);
  v3 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v2);
  v4 = *(&StopWords(void)::_stopWords + 1);
  if (!*(&StopWords(void)::_stopWords + 1))
  {
    goto LABEL_18;
  }

  v5 = v3;
  v6 = vcnt_s8(*(&StopWords(void)::_stopWords + 8));
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *(&StopWords(void)::_stopWords + 1))
    {
      v8 = v3 % *(&StopWords(void)::_stopWords + 1);
    }
  }

  else
  {
    v8 = (*(&StopWords(void)::_stopWords + 1) - 1) & v3;
  }

  v9 = *(StopWords(void)::_stopWords + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= v4)
      {
        v11 %= v4;
      }
    }

    else
    {
      v11 &= v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[3] != v2 || memcmp(v10[2], a1, v2))
  {
    goto LABEL_17;
  }

  v13 = 1;
LABEL_19:
  StopWords();
  return v13;
}

void StopWords(void)
{
  {
    StopWords(void)::_stopWords = 0u;
    *&qword_1EDD787D0 = 0u;
    dword_1EDD787E0 = 1065353216;
  }

  if (StopWords(void)::onceToken != -1)
  {

    dispatch_once(&StopWords(void)::onceToken, &__block_literal_global_13840);
  }
}

const __CFDictionary *decodeEmbeddingData(CFDataRef data)
{
  v1 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], data, 0, 0, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CFArrayGetTypeID() || !CFArrayGetCount(v2) || CFArrayGetCount(v2) < 1)
  {
    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
  v5 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v6 = CFGetTypeID(ValueAtIndex);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v5, @"vec_data");
      if (Value)
      {
        v5 = CFRetain(Value);
        goto LABEL_10;
      }
    }

LABEL_9:
    v5 = 0;
  }

LABEL_10:
  CFRelease(v2);
  return v5;
}

uint64_t MDUnicodeConverterGetTypeID()
{
  if (MDUnicodeConverterGetTypeID_once != -1)
  {
    dispatch_once(&MDUnicodeConverterGetTypeID_once, &__block_literal_global_14052);
  }

  return __kMDUnicodeConverterTypeID;
}

uint64_t __MDUnicodeConverterGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kMDUnicodeConverterTypeID = result;
  return result;
}

double __MDUnicodeConverterInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

unint64_t MDUnicodeConverterConvert(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a2;
  v5 = *(a1 + 16);
  *a3 = v5;
  if (a2)
  {
    v6 = *(a1 + 24);
    if (v6 > a2)
    {
      if ((v5[v6 - a2] & 0xF800) == 0xD800)
      {
        v3 = a2 + 1;
      }

      v7 = 2 * v6 - 2 * v3;
      v8 = v5;
      v9 = v3;
      do
      {
        *v8 = *(v8 + v7);
        ++v8;
        --v9;
      }

      while (v9);
    }
  }

  if (*(a1 + 40))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 52);
    v13 = *(a1 + 24);
    v12 = *(a1 + 32);
    if ((CFStringEncodingBytesToUnicode() & 0xFFFFFFFD) != 0)
    {
      v14 = 0;
      v3 = 0;
    }

    else
    {
      v15 = *(a1 + 40);
      *(a1 + 32) = *(a1 + 32);
      v14 = v15;
    }

    *(a1 + 40) = v14;
  }

  return v3;
}

char *copyLocTermFromNumber(const void *a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 255);
  if (a2 <= 0)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 134, "field >= 1", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      v8 = 2989;
    }

    else
    {
      v8 = 3072;
    }

    *v8 = -559038737;
    abort();
  }

  __s1[0] = 4;
  if (a2 >> 28)
  {
    v2 = &__s1[6];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = (a2 >> 21) | 0x80;
    __s1[5] = a2 >> 28;
  }

  else if (a2 >= 0x200000)
  {
    v2 = &__s1[5];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = (a2 >> 14) | 0x80;
    __s1[4] = a2 >> 21;
  }

  else if (a2 >= 0x4000)
  {
    v2 = &__s1[4];
    __s1[1] = a2 | 0x80;
    __s1[2] = (a2 >> 7) | 0x80;
    __s1[3] = a2 >> 14;
  }

  else if (a2 >= 0x80)
  {
    v2 = &__s1[3];
    __s1[1] = a2 | 0x80;
    __s1[2] = a2 >> 7;
  }

  else
  {
    v2 = &__s1[2];
    __s1[1] = a2;
  }

  FlattenCFTypeToBuffer(a1, v2);
  result = strdup(__s1);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef copyCFNumberFloatTermFromString(char *a1)
{
  v1 = a1;
  if (*a1 == 1)
  {
    if (a1[1] < 0)
    {
      if (a1[2] < 0)
      {
        if (a1[3] < 0)
        {
          if (a1[4] < 0)
          {
            if (a1[5] < 0)
            {
              v6 = __si_assert_copy_extra_332();
              v7 = v6;
              v8 = "";
              if (v6)
              {
                v8 = v6;
              }

              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v8);
              free(v7);
              if (__valid_fs(-1))
              {
                v9 = 2989;
              }

              else
              {
                v9 = 3072;
              }

              *v9 = -559038737;
              abort();
            }

            v2 = 5;
          }

          else
          {
            v2 = 4;
          }
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 1;
    }

    v1 = &a1[v2 + 1];
  }

  v11 = 0;
  valuePtr = strtof(v1, &v11);
  v3 = v11;
  if (v11 == v1)
  {
    return 0;
  }

  v4 = *v11;
  if (v4 == 42)
  {
    ++v11;
    v4 = v3[1];
  }

  if (v4 > 1)
  {
    return 0;
  }

  else
  {
    return CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  }
}

__n128 oqpush_AnnotatedPositionOffset_t(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 56) < *a2)
    {
      v20 = __si_assert_copy_extra_332();
      v21 = v20;
      v22 = "";
      if (v20)
      {
        v22 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.h", 25, "!queue->split || queue->splitPoint >= AnnotatedPositionOffset_t_GET_VALUE(value)", v22);
      free(v21);
      if (__valid_fs(-1))
      {
        v23 = 2989;
      }

      else
      {
        v23 = 3072;
      }

      *v23 = -559038737;
      abort();
    }

    v4 = *(a1 + 24);
    if (v4 >= *(a1 + 16))
    {
      v5 = __si_assert_copy_extra_332();
      v6 = v5;
      v7 = "";
      if (v5)
      {
        v7 = v5;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.h", 25, "!queue->split", v7);
      free(v6);
      if (__valid_fs(-1))
      {
        v8 = 2989;
      }

      else
      {
        v8 = 3072;
      }

      *v8 = -559038737;
      abort();
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4 >= v9)
    {
      v10 = 2 * v9;
      if (!v9)
      {
        v10 = 4;
      }

      *(a1 + 16) = v10;
      v11 = *(a1 + 8);
      v12 = 56 * v10;
      if (v11)
      {
        v13 = malloc_type_zone_realloc(queryZone, v11, v12, 0xA1A7ADA0uLL);
      }

      else
      {
        v13 = malloc_type_zone_malloc(queryZone, v12, 0x566E289CuLL);
      }

      v14 = v13;
      if (!v13)
      {
        _log_fault_for_malloc_failure();
      }

      *(a1 + 8) = v14;
      v4 = *(a1 + 24);
    }
  }

  v15 = *(a1 + 8);
  *(a1 + 24) = v4 + 1;
  v16 = v15 + 56 * v4;
  result = *a2;
  v18 = *(a2 + 16);
  v19 = *(a2 + 32);
  *(v16 + 48) = *(a2 + 48);
  *(v16 + 16) = v18;
  *(v16 + 32) = v19;
  *v16 = result;
  return result;
}

uint64_t TermTrieMatchRangeChars(uint64_t result, uint64_t a2, uint64_t a3, __CFSet *a4, uint64_t a5, int a6)
{
  if ((result & 3) == 1)
  {
    v23 = 0;
    v24 = (result & 0xFFFFFFFFFFFFFFFCLL) + 8;
    v25 = a6;
    v26 = a6 + 1;
    do
    {
      if (*(v24 + 8 * v23))
      {
        *(a5 + v25) = tcmr[v23];
        *(a5 + v26) = 0;
        result = _TermTrieMatchRangeChars(*(v24 + 8 * v23), a2, a3, a4, a5, v26);
      }

      ++v23;
    }

    while (v23 != 256);
  }

  else if ((result & 3) == 2)
  {
    v10 = 0;
    v11 = (result & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((result & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v13 = a6;
    v14 = a6 + 1;
    v15 = (result & 0xFFFFFFFFFFFFFFFCLL) + 48;
    while (((v12->i32[v10 >> 5] >> v10) & 1) == 0)
    {
LABEL_13:
      if (++v10 == 256)
      {
        return result;
      }
    }

    v16 = 0;
    *(a5 + v13) = tcmr[v10];
    *(a5 + v14) = 0;
    v17 = v10 >> 6;
    if (v10 >> 6 > 1)
    {
      if (v17 != 2)
      {
        v19 = vcnt_s8(v11[3]);
        v19.i16[0] = vaddlv_u8(v19);
        v16 = v19.u32[0];
      }

      v20 = vcnt_s8(v11[2]);
      v20.i16[0] = vaddlv_u8(v20);
      v16 += v20.u32[0];
    }

    else
    {
      v18 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }

    v21 = vcnt_s8(*v12);
    v21.i16[0] = vaddlv_u8(v21);
    v18 = v21.u32[0] + v16;
LABEL_12:
    v22 = vcnt_s8((*&v12[v17] & ~(-1 << v10)));
    v22.i16[0] = vaddlv_u8(v22);
    result = _TermTrieMatchRangeChars(*(v15 + 8 * (v22.u32[0] + v18)), a2, a3, a4, a5, v14);
    goto LABEL_13;
  }

  return result;
}

void __termUpdateSetResolveQueryInfo_block_invoke(uint64_t a1, const void **a2, int a3)
{
  v3 = a2;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return;
      }

      v5 = *(a1 + 32);
      goto LABEL_9;
    }

    v6 = *a2;
    if (!*v3)
    {
      return;
    }

    CFSetAddValue(*(a1 + 32), v6);
  }

  a2 = *v3;
  if (!*v3)
  {
    return;
  }

  v5 = *(a1 + 32);
LABEL_9:

  CFSetAddValue(v5, a2);
}

void __term_trie_resolve_fuzzy_transition_block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = la_new_state_from_state_with_char_at_index(*(a1[9] + 8), a1[7], a1[8], (*(a3 + 16) + a1[8]));
    v7 = v6;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a1[4];
    v7 = a1[5];
    if (!v5)
    {
      return;
    }
  }

  if ((~a2 & 3) != 0)
  {
    v9 = a1[10];
    v11 = *v9;
    v10 = v9[1];
    if (v10 >= *v9)
    {
      *v9 = 2 * v11;
      v13 = *(v9 + 1);
      v14 = 48 * v11;
      if (v13)
      {
        v15 = malloc_type_zone_realloc(queryZone, v13, v14, 0xA1A7ADA0uLL);
      }

      else
      {
        v15 = malloc_type_zone_malloc(queryZone, v14, 0x566E289CuLL);
      }

      v12 = v15;
      if (!v15)
      {
        _log_fault_for_malloc_failure();
      }

      *(v9 + 1) = v12;
      v10 = v9[1];
    }

    else
    {
      v12 = *(v9 + 1);
    }

    v16 = &v12[24 * v10];
    *v16 = a2;
    *(v16 + 1) = v5;
    *(v16 + 2) = v7;
    ++v9[1];
  }

  else
  {
    v8 = *a1[9];

    CFSetAddValue(v8, (a2 & 0xFFFFFFFFFFFFFFFCLL));
  }
}

uint64_t _term_trie_resolve_sub_trie(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (a2 && *(a2 + 18))
  {
    if (*(a2 + 16) != 255)
    {
      result = (*(a5 + 16))(a5, result, a2);
    }

    if ((~v7 & 3) == 0)
    {
      v10 = *(a4 + 16);

      return v10(a4, v7);
    }

    if (a3)
    {
      v12 = 0;
      v13 = 0;
      v14 = v7 & 3;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = (v15 + 8);
      for (i = (v15 + 8); ; ++i)
      {
        if (v14 == 2)
        {
          if (((v16->i32[v12 >> 5] >> v12) & 1) == 0)
          {
            goto LABEL_22;
          }

          if (v12 >= 0x40)
          {
            v21 = vcnt_s8(*v16);
            v21.i16[0] = vaddlv_u8(v21);
            v19 = v21.u32[0];
          }

          else
          {
            v19 = 0;
          }

          v22 = vcnt_s8((*&v16[v12 >> 6] & ~(-1 << v12)));
          v22.i16[0] = vaddlv_u8(v22);
          v18 = (v15 + 48 + 8 * (v22.u32[0] + v19));
        }

        else if (v14 != 1 || (v18 = i, !v15))
        {
LABEL_22:
          v20 = 0;
          goto LABEL_26;
        }

        v20 = *v18;
LABEL_26:
        if (v13 < *(a2 + 18) && v12 == *(*a2 + v13))
        {
          if (v20)
          {
            result = _term_trie_resolve_sub_trie(v20, *(*(a2 + 8) + 8 * v13), 1, a4, a5);
          }

          ++v13;
        }

        else if (v20)
        {
          result = (*(a5 + 16))(a5, v20, 0);
        }

        if (++v12 == 128)
        {
          return result;
        }
      }
    }

    v23 = *(a2 + 18);
    if (!*(a2 + 18))
    {
      return result;
    }

    v24 = 0;
    v25 = v7 & 3;
    v26 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    v27 = v26 + 1;
    while (1)
    {
      v28 = *(*a2 + v24);
      if (v25 == 2)
      {
        if ((v27->i32[v28 >> 5] >> v28))
        {
          v30 = 0;
          v31 = v28 >> 6;
          if (v28 >> 6 > 1)
          {
            if (v31 != 2)
            {
              v33 = vcnt_s8(v26[3]);
              v33.i16[0] = vaddlv_u8(v33);
              v30 = v33.u32[0];
            }

            v34 = vcnt_s8(v26[2]);
            v34.i16[0] = vaddlv_u8(v34);
            v30 += v34.u32[0];
          }

          else
          {
            v32 = v28 >> 6;
            if (!v31)
            {
              goto LABEL_49;
            }
          }

          v35 = vcnt_s8(*v27);
          v35.i16[0] = vaddlv_u8(v35);
          v32 = v35.u32[0] + v30;
LABEL_49:
          v36 = vcnt_s8((*&v27[v31] & ~(-1 << v28)));
          v36.i16[0] = vaddlv_u8(v36);
          v29 = &v26[v36.u32[0] + 6 + v32];
LABEL_50:
          result = *v29;
          if (*v29)
          {
            result = _term_trie_resolve_sub_trie(result, *(*(a2 + 8) + 8 * v24), 0, a4, a5);
            v23 = *(a2 + 18);
          }
        }
      }

      else if (v25 == 1 && v26)
      {
        v29 = &v27[v28];
        goto LABEL_50;
      }

      if (++v24 >= v23)
      {
        return result;
      }
    }
  }

  v11 = *(a5 + 16);

  return v11(a5, result, a2);
}

void term_trie_resolve_combining(int8x8_t *a1, CFMutableSetRef theSet, int *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  *&v88[1] = 0;
  v88[0] = -52;
  v6 = *a1 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *a1 & 3;
  if ((a1->i32[0] & 3u) <= 1)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = *(v6 + 272);
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_8:
    if ((~v8 & 3) != 0)
    {
      v10 = 128;
      do
      {
        v88[1] = v10;
        v89 = *a1->i8;
        v90 = a1[2];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        _term_trie_resolve_sub_string_ignore_diacritics(&v89, v88, 2, a3, theSet, &v91, 0);
        v11 = v10++ >= 0xBF;
      }

      while (!v11);
    }

    else
    {
      CFSetAddValue(theSet, (v8 & 0xFFFFFFFFFFFFFFFCLL));
    }

    goto LABEL_13;
  }

  if (v7 != 3 && (*(v6 + 12) & 2) != 0)
  {
    v9 = vcnt_s8((*(v6 + 8) & 0x1FFFFFFFFLL));
    v9.i16[0] = vaddlv_u8(v9);
    v8 = *(v6 + 8 * v9.u32[0] + 48);
    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  v88[0] = -51;
  v12 = *a1 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *a1 & 3;
  if ((a1->i32[0] & 3u) <= 1)
  {
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = *(v12 + 280);
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_20:
    if ((~v14 & 3) != 0)
    {
      v16 = 128;
      do
      {
        v88[1] = v16;
        v89 = *a1->i8;
        v90 = a1[2];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        _term_trie_resolve_sub_string_ignore_diacritics(&v89, v88, 2, a3, theSet, &v91, 0);
        v11 = v16++ >= 0xDF;
      }

      while (!v11);
    }

    else
    {
      CFSetAddValue(theSet, (v14 & 0xFFFFFFFFFFFFFFFCLL));
    }

    goto LABEL_25;
  }

  if (v13 != 3 && (*(v12 + 12) & 4) != 0)
  {
    v15 = vcnt_s8((*(v12 + 8) & 0x3FFFFFFFFLL));
    v15.i16[0] = vaddlv_u8(v15);
    v14 = *(v12 + 8 * v15.u32[0] + 48);
    if (v14)
    {
      goto LABEL_20;
    }
  }

LABEL_25:
  v88[0] = 45;
  v17 = *a1;
  v18 = *a1 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *a1 & 3;
  if ((a1->i32[0] & 3u) > 1)
  {
    if (v19 == 3)
    {
      goto LABEL_34;
    }

    if ((*(v18 + 12) & 8) == 0)
    {
      goto LABEL_34;
    }

    v21 = vcnt_s8((*(v18 + 8) & 0x7FFFFFFFFLL));
    v21.i16[0] = vaddlv_u8(v21);
    v20 = *(v18 + 8 * v21.u32[0] + 48);
    if (!v20)
    {
      goto LABEL_34;
    }

LABEL_32:
    if ((~v20 & 3) == 0)
    {
      CFSetAddValue(theSet, (v20 & 0xFFFFFFFFFFFFFFFCLL));
      v17 = *a1;
    }

    goto LABEL_34;
  }

  if (v19)
  {
    v20 = *(v18 + 288);
    if (v20)
    {
      goto LABEL_32;
    }
  }

LABEL_34:
  v22 = 0;
  *v88 = -32542;
  v88[2] = -112;
  v23 = v17;
  while (1)
  {
    v24 = (*&v23 & 0xFFFFFFFFFFFFFFFCLL);
    v25 = v23.i8[0] & 3;
    if (v25 <= 1)
    {
      if (v25 != 1)
      {
        goto LABEL_55;
      }

      v23 = v24[*(&tcm + v88[v22]) + 1];
      if (!*&v23)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    if (v25 != 2)
    {
      break;
    }

    v26 = *(&tcm + v88[v22]);
    v27 = v24 + 1;
    if (((*(v24[1].i32 + ((v26 >> 3) & 0x1C)) >> v26) & 1) == 0)
    {
      goto LABEL_55;
    }

    v28 = 0;
    v29 = v26 >> 6;
    if ((v26 >> 6) > 1)
    {
      if (v29 != 2)
      {
        v31 = vcnt_s8(v24[3]);
        v31.i16[0] = vaddlv_u8(v31);
        v28 = v31.u32[0];
      }

      v32 = vcnt_s8(v24[2]);
      v32.i16[0] = vaddlv_u8(v32);
      v28 += v32.u32[0];
LABEL_47:
      v33 = vcnt_s8(*v27);
      v33.i16[0] = vaddlv_u8(v33);
      v30 = v33.u32[0] + v28;
      goto LABEL_48;
    }

    v30 = v26 >> 6;
    if (v29)
    {
      goto LABEL_47;
    }

LABEL_48:
    v34 = vcnt_s8((*&v27[v29] & ~(-1 << v26)));
    v34.i16[0] = vaddlv_u8(v34);
    v23 = v24[v34.u32[0] + 6 + v30];
    if (!*&v23)
    {
      goto LABEL_55;
    }

LABEL_49:
    if (++v22 == 3)
    {
      goto LABEL_53;
    }
  }

  if (!v22)
  {
    goto LABEL_55;
  }

  *&v23 |= 3uLL;
LABEL_53:
  if ((~v23.i8[0] & 3) == 0)
  {
    CFSetAddValue(theSet, (*&v23 & 0xFFFFFFFFFFFFFFFCLL));
    v17 = *a1;
  }

LABEL_55:
  v88[0] = -42;
  v35 = *&v17 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = v17.i8[0] & 3;
  if (v36 <= 1)
  {
    if (!v36)
    {
      goto LABEL_67;
    }

    v37 = *(v35 + 1720);
    if (!v37)
    {
      goto LABEL_67;
    }

LABEL_62:
    if ((~v37 & 3) != 0)
    {
      v43 = 145;
      do
      {
        v88[1] = v43;
        v89 = *a1->i8;
        v90 = a1[2];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        _term_trie_resolve_sub_string_ignore_diacritics(&v89, v88, 2, a3, theSet, &v91, 0);
        v11 = v43++ >= 0xBF;
      }

      while (!v11);
    }

    else
    {
      CFSetAddValue(theSet, (v37 & 0xFFFFFFFFFFFFFFFCLL));
    }

    goto LABEL_67;
  }

  if (v36 != 3 && (*(v35 + 34) & 0x40) != 0)
  {
    v38 = vcnt_s8(*(v35 + 8));
    v38.i16[0] = vaddlv_u8(v38);
    v39 = v38.u32[0];
    v40 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v35 + 16))))));
    v41 = v39 + *&v40;
    v40.i32[0] = *(v35 + 32) & 0x3FFFFF;
    v42 = vcnt_s8(v40);
    v42.i16[0] = vaddlv_u8(v42);
    v37 = *(v35 + 8 * (v42.u32[0] + v41) + 48);
    if (v37)
    {
      goto LABEL_62;
    }
  }

LABEL_67:
  v88[0] = -41;
  v44 = *a1 & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *a1 & 3;
  if ((a1->i32[0] & 3u) <= 1)
  {
    if (!v45)
    {
      goto LABEL_79;
    }

    v46 = *(v44 + 1728);
    if (!v46)
    {
      goto LABEL_79;
    }

LABEL_74:
    if ((~v46 & 3) != 0)
    {
      v52 = 128;
      do
      {
        v88[1] = v52;
        v89 = *a1->i8;
        v90 = a1[2];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        _term_trie_resolve_sub_string_ignore_diacritics(&v89, v88, 2, a3, theSet, &v91, 0);
        v11 = v52++ >= 0x84;
      }

      while (!v11);
    }

    else
    {
      CFSetAddValue(theSet, (v46 & 0xFFFFFFFFFFFFFFFCLL));
    }

    goto LABEL_79;
  }

  if (v45 != 3 && (*(v44 + 34) & 0x80) != 0)
  {
    v47 = vcnt_s8(*(v44 + 8));
    v47.i16[0] = vaddlv_u8(v47);
    v48 = v47.u32[0];
    v49 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v44 + 16))))));
    v50 = v48 + *&v49;
    v49.i32[0] = *(v44 + 32) & 0x7FFFFF;
    v51 = vcnt_s8(v49);
    v51.i16[0] = vaddlv_u8(v51);
    v46 = *(v44 + 8 * (v51.u32[0] + v50) + 48);
    if (v46)
    {
      goto LABEL_74;
    }
  }

LABEL_79:
  v53 = 0;
  *v88 = -32029;
  v54 = *a1;
  v55 = v88;
  v56 = 1;
  while (2)
  {
    v57 = v53;
    v58 = (*&v54 & 0xFFFFFFFFFFFFFFFCLL);
    v59 = v54.i8[0] & 3;
    if (v59 > 1)
    {
      if (v59 != 2)
      {
        if (v56)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      v60 = *(&tcm + *v55);
      v61 = v58 + 1;
      if (((*(v58[1].i32 + ((v60 >> 3) & 0x1C)) >> v60) & 1) == 0)
      {
        goto LABEL_102;
      }

      v62 = 0;
      v63 = v60 >> 6;
      if ((v60 >> 6) > 1)
      {
        if (v63 != 2)
        {
          v65 = vcnt_s8(v58[3]);
          v65.i16[0] = vaddlv_u8(v65);
          v62 = v65.u32[0];
        }

        v66 = vcnt_s8(v58[2]);
        v66.i16[0] = vaddlv_u8(v66);
        v62 += v66.u32[0];
      }

      else
      {
        v64 = v60 >> 6;
        if (!v63)
        {
LABEL_93:
          v68 = vcnt_s8((*&v61[v63] & ~(-1 << v60)));
          v68.i16[0] = vaddlv_u8(v68);
          v54 = v58[v68.u32[0] + 6 + v64];
          if (!*&v54)
          {
            goto LABEL_102;
          }

          goto LABEL_94;
        }
      }

      v67 = vcnt_s8(*v61);
      v67.i16[0] = vaddlv_u8(v67);
      v64 = v67.u32[0] + v62;
      goto LABEL_93;
    }

    if (v59 != 1)
    {
      goto LABEL_102;
    }

    v54 = v58[*(&tcm + *v55) + 1];
    if (!*&v54)
    {
      goto LABEL_102;
    }

LABEL_94:
    v56 = 0;
    v53 = 1;
    v55 = &v88[1];
    if ((v57 & 1) == 0)
    {
      continue;
    }

    break;
  }

  if ((~v54.i8[0] & 3) == 0)
  {
LABEL_101:
    CFSetAddValue(theSet, (*&v54 & 0xFFFFFFFFFFFFFFFCLL));
    goto LABEL_102;
  }

  v69 = 153;
  do
  {
    v88[2] = v69;
    v89 = *a1->i8;
    v90 = a1[2];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    _term_trie_resolve_sub_string_ignore_diacritics(&v89, v88, 3, a3, theSet, &v91, 0);
    v11 = v69++ >= 0x9C;
  }

  while (!v11);
LABEL_102:
  v70 = 0;
  *v88 = -16657;
  v71 = *a1;
  v72 = v88;
  v73 = 1;
  while (2)
  {
    v74 = v70;
    v75 = (*&v71 & 0xFFFFFFFFFFFFFFFCLL);
    v76 = v71.i8[0] & 3;
    if (v76 > 1)
    {
      if (v76 != 2)
      {
        if (v73)
        {
          goto LABEL_125;
        }

        goto LABEL_124;
      }

      v77 = *(&tcm + *v72);
      v78 = v75 + 1;
      if (((*(v75[1].i32 + ((v77 >> 3) & 0x1C)) >> v77) & 1) == 0)
      {
        goto LABEL_125;
      }

      v79 = 0;
      v80 = v77 >> 6;
      if ((v77 >> 6) > 1)
      {
        if (v80 != 2)
        {
          v82 = vcnt_s8(v75[3]);
          v82.i16[0] = vaddlv_u8(v82);
          v79 = v82.u32[0];
        }

        v83 = vcnt_s8(v75[2]);
        v83.i16[0] = vaddlv_u8(v83);
        v79 += v83.u32[0];
      }

      else
      {
        v81 = v77 >> 6;
        if (!v80)
        {
LABEL_116:
          v85 = vcnt_s8((*&v78[v80] & ~(-1 << v77)));
          v85.i16[0] = vaddlv_u8(v85);
          v71 = v75[v85.u32[0] + 6 + v81];
          if (!*&v71)
          {
            goto LABEL_125;
          }

          goto LABEL_117;
        }
      }

      v84 = vcnt_s8(*v78);
      v84.i16[0] = vaddlv_u8(v84);
      v81 = v84.u32[0] + v79;
      goto LABEL_116;
    }

    if (v76 != 1)
    {
      goto LABEL_125;
    }

    v71 = v75[*(&tcm + *v72) + 1];
    if (!*&v71)
    {
      goto LABEL_125;
    }

LABEL_117:
    v73 = 0;
    v70 = 1;
    v72 = &v88[1];
    if ((v74 & 1) == 0)
    {
      continue;
    }

    break;
  }

  if ((~v71.i8[0] & 3) == 0)
  {
LABEL_124:
    CFSetAddValue(theSet, (*&v71 & 0xFFFFFFFFFFFFFFFCLL));
    goto LABEL_125;
  }

  v86 = 158;
  do
  {
    v88[2] = v86;
    v89 = *a1->i8;
    v90 = a1[2];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    _term_trie_resolve_sub_string_ignore_diacritics(&v89, v88, 3, a3, theSet, &v91, 0);
    v11 = v86++ >= 0x9F;
  }

  while (!v11);
LABEL_125:
  v87 = *MEMORY[0x1E69E9840];
}

void term_trie_resolve_sub_string(uint64_t a1, uint64_t a2, int a3, int *a4, CFMutableSetRef theSet, __n128 a6)
{
  if (a3 < 1)
  {
LABEL_18:
    LODWORD(v9) = a3;
    if (a3)
    {
      goto LABEL_19;
    }

    return;
  }

  v9 = 0;
  while (1)
  {
    v10 = (a1 & 0xFFFFFFFFFFFFFFFCLL);
    v11 = a1 & 3;
    if (v11 > 1)
    {
      break;
    }

    if (v11 != 1)
    {
      return;
    }

    a1 = v10[*(&tcm + *(a2 + v9)) + 1];
    if (!a1)
    {
      return;
    }

LABEL_17:
    if (a3 == ++v9)
    {
      goto LABEL_18;
    }
  }

  if (v11 == 2)
  {
    v12 = *(&tcm + *(a2 + v9));
    v13 = v10 + 1;
    if (((*(v10[1].i32 + ((v12 >> 3) & 0x1C)) >> v12) & 1) == 0)
    {
      return;
    }

    v14 = 0;
    v15 = v12 >> 6;
    if ((v12 >> 6) > 1)
    {
      if (v15 != 2)
      {
        v17 = vcnt_s8(v10[3]);
        v17.i16[0] = vaddlv_u8(v17);
        v14 = v17.u32[0];
      }

      v18 = vcnt_s8(v10[2]);
      v18.i16[0] = vaddlv_u8(v18);
      v14 += v18.u32[0];
    }

    else
    {
      v16 = v12 >> 6;
      if (!v15)
      {
LABEL_16:
        v20 = vcnt_s8((*&v13[v15] & ~(-1 << v12)));
        v20.i16[0] = vaddlv_u8(v20);
        a1 = v10[v20.u32[0] + 6 + v16];
        if (!a1)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    v19 = vcnt_s8(*v13);
    v19.i16[0] = vaddlv_u8(v19);
    v16 = v19.u32[0] + v14;
    goto LABEL_16;
  }

  a1 |= 3uLL;
  if (!v9)
  {
    return;
  }

LABEL_19:
  if ((~a1 & 3) != 0)
  {
    if (v9 != a3)
    {
      v28 = __si_assert_copy_extra_332();
      v29 = v28;
      v30 = "";
      if (v28)
      {
        v30 = v28;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "TermTrie.h", 423, "str_len==resolve_len", v30);
      free(v29);
      if (__valid_fs(-1))
      {
        v31 = 2989;
      }

      else
      {
        v31 = 3072;
      }

      *v31 = -559038737;
      abort();
    }

    v22 = *a4;
    v21 = a4[1];
    if (v21 >= *a4)
    {
      v32 = a6;
      *a4 = 2 * v22;
      v24 = *(a4 + 1);
      v25 = 48 * v22;
      if (v24)
      {
        v26 = malloc_type_zone_realloc(queryZone, v24, v25, 0xA1A7ADA0uLL);
      }

      else
      {
        v26 = malloc_type_zone_malloc(queryZone, v25, 0x566E289CuLL);
      }

      v23 = v26;
      a6 = v32;
      if (!v26)
      {
        _log_fault_for_malloc_failure();
        a6 = v32;
      }

      *(a4 + 1) = v23;
      v21 = a4[1];
    }

    else
    {
      v23 = *(a4 + 1);
    }

    v27 = &v23[24 * v21];
    *v27 = a1;
    *(v27 + 8) = a6;
    ++a4[1];
  }

  else
  {

    CFSetAddValue(theSet, (a1 & 0xFFFFFFFFFFFFFFFCLL));
  }
}

void _term_trie_resolve_sub_string_ignore_diacritics(int8x8_t *a1, unsigned __int8 *a2, int a3, int *a4, __CFSet *a5, uint64_t a6, int a7)
{
  if (!a3)
  {
    return;
  }

  v12 = 0;
  v13 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*a2 >> 4];
  v14 = *a1;
  while (1)
  {
    v15 = (*&v14 & 0xFFFFFFFFFFFFFFFCLL);
    v16 = v14.i8[0] & 3;
    if (v16 <= 1)
    {
      if (v16 != 1)
      {
        return;
      }

      v14 = v15[*(&tcm + a2[v12]) + 1];
      if (!*&v14)
      {
        return;
      }

      goto LABEL_17;
    }

    if (v16 != 2)
    {
      break;
    }

    v17 = *(&tcm + a2[v12]);
    v18 = v15 + 1;
    if (((*(v15[1].i32 + ((v17 >> 3) & 0x1C)) >> v17) & 1) == 0)
    {
      return;
    }

    v19 = 0;
    v20 = v17 >> 6;
    if ((v17 >> 6) > 1)
    {
      if (v20 != 2)
      {
        v22 = vcnt_s8(v15[3]);
        v22.i16[0] = vaddlv_u8(v22);
        v19 = v22.u32[0];
      }

      v23 = vcnt_s8(v15[2]);
      v23.i16[0] = vaddlv_u8(v23);
      v19 += v23.u32[0];
LABEL_15:
      v24 = vcnt_s8(*v18);
      v24.i16[0] = vaddlv_u8(v24);
      v21 = v24.u32[0] + v19;
      goto LABEL_16;
    }

    v21 = v17 >> 6;
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_16:
    v25 = vcnt_s8((*&v18[v20] & ~(-1 << v17)));
    v25.i16[0] = vaddlv_u8(v25);
    v14 = v15[v25.u32[0] + 6 + v21];
    if (!*&v14)
    {
      return;
    }

LABEL_17:
    if (v13 == ++v12)
    {
      v26 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*a2 >> 4];
      if (!utf8_byte_length_noerror(unsigned char)::utf8_len_table[*a2 >> 4])
      {
        return;
      }

      goto LABEL_21;
    }
  }

  *&v14 |= 3uLL;
  v26 = v12;
  if (!v12)
  {
    return;
  }

LABEL_21:
  memcpy((a6 + a7), a2, v26);
  if ((~v14.i8[0] & 3) == 0)
  {
    v27 = (*&v14 & 0xFFFFFFFFFFFFFFFCLL);
    v28 = a5;
LABEL_23:

    CFSetAddValue(v28, v27);
    return;
  }

  v29 = a4;
  if (v26 != v13)
  {
    return;
  }

  if (a3 == v13)
  {
    v31 = *a4;
    v30 = a4[1];
    if (v30 >= *a4)
    {
      *a4 = 2 * v31;
      v36 = *(a4 + 1);
      v37 = 48 * v31;
      if (v36)
      {
        v38 = malloc_type_zone_realloc(queryZone, v36, v37, 0xA1A7ADA0uLL);
      }

      else
      {
        v38 = malloc_type_zone_malloc(queryZone, v37, 0x566E289CuLL);
      }

      v32 = v38;
      v29 = a4;
      if (!v38)
      {
        _log_fault_for_malloc_failure();
        v29 = a4;
      }

      *(v29 + 1) = v32;
      v30 = v29[1];
    }

    else
    {
      v32 = *(a4 + 1);
    }

    v40 = &v32[24 * v30];
    v40[1] = 0;
    v40[2] = 0;
    *v40 = v14;
    ++v29[1];
    return;
  }

  *a1 = v14;
  v122 = *a1->i8;
  v123 = a1[2];
  v118 = v26 + a7;
  _term_trie_resolve_sub_string_ignore_diacritics(&v122, &a2[v13]);
  v33 = (a6 + v26 + a7);
  *v33 = -52;
  v34 = *&v14 & 0xFFFFFFFFFFFFFFFCLL;
  v119 = v14.i8[0] & 3;
  if (v119 > 1)
  {
    v28 = a5;
    if ((v14.i8[0] & 3) == 3)
    {
      goto LABEL_69;
    }

    if ((*(v34 + 12) & 2) != 0)
    {
      v39 = vcnt_s8((*(v34 + 8) & 0x1FFFFFFFFLL));
      v39.i16[0] = vaddlv_u8(v39);
      v35 = *(v34 + 8 * v39.u32[0] + 48);
      if (v35)
      {
        goto LABEL_39;
      }
    }

    *v33 = -51;
LABEL_74:
    if ((*(v34 + 12) & 4) != 0)
    {
      v55 = vcnt_s8((*(v34 + 8) & 0x3FFFFFFFFLL));
      v55.i16[0] = vaddlv_u8(v55);
      v53 = *(v34 + 8 * v55.u32[0] + 48);
      if (v53)
      {
        goto LABEL_76;
      }
    }

    *v33 = 45;
    v54 = v14.i8[0] & 3;
    goto LABEL_105;
  }

  v28 = a5;
  if ((v14.i8[0] & 3) == 0)
  {
    goto LABEL_69;
  }

  v35 = *(v34 + 272);
  if (!*&v35)
  {
    *v33 = -51;
    goto LABEL_71;
  }

LABEL_39:
  if ((~v35.i8[0] & 3) != 0)
  {
    v41 = 0x80u;
    while (1)
    {
      v33[1] = v41;
      v42 = (*&v35 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v35.i8[0] & 3u) > 1)
      {
        break;
      }

      if ((v35.i8[0] & 3) != 0)
      {
        v43 = v42[*(&tcm + v41) + 1];
        if (v43)
        {
LABEL_64:
          if ((~v43.i8[0] & 3) != 0)
          {
            *a1 = v43;
            v122 = *a1->i8;
            v123 = a1[2];
            _term_trie_resolve_sub_string_ignore_diacritics(&v122, &a2[v13]);
          }

          else
          {
            CFSetAddValue(v28, (*&v43 & 0xFFFFFFFFFFFFFFFCLL));
          }

          v28 = a5;
          v35 = v43;
        }
      }

LABEL_68:
      if (++v41 == 192)
      {
        goto LABEL_69;
      }
    }

    if ((v35.i8[0] & 3) == 3)
    {
      *&v35 |= 3uLL;
      goto LABEL_68;
    }

    v44 = *(&tcm + v41);
    v45 = v42 + 1;
    if (((*(v42[1].i32 + ((v44 >> 3) & 0x1C)) >> v44) & 1) == 0)
    {
      goto LABEL_68;
    }

    v46 = 0;
    v47 = v44 >> 6;
    if ((v44 >> 6) > 1)
    {
      if (v47 != 2)
      {
        v49 = vcnt_s8(v42[3]);
        v49.i16[0] = vaddlv_u8(v49);
        v46 = v49.u32[0];
      }

      v50 = vcnt_s8(v42[2]);
      v50.i16[0] = vaddlv_u8(v50);
      v46 += v50.u32[0];
    }

    else
    {
      v48 = v44 >> 6;
      if (!v47)
      {
LABEL_63:
        v52 = vcnt_s8((*&v45[v47] & ~(-1 << v44)));
        v52.i16[0] = vaddlv_u8(v52);
        v43 = v42[v52.u32[0] + 6 + v48];
        if (v43)
        {
          goto LABEL_64;
        }

        goto LABEL_68;
      }
    }

    v51 = vcnt_s8(*v45);
    v51.i16[0] = vaddlv_u8(v51);
    v48 = v51.u32[0] + v46;
    goto LABEL_63;
  }

  CFSetAddValue(v28, (*&v35 & 0xFFFFFFFFFFFFFFFCLL));
  v28 = a5;
LABEL_69:
  *v33 = -51;
  if ((v14.i8[0] & 3u) > 1)
  {
    if (v119 == 3)
    {
      goto LABEL_100;
    }

    goto LABEL_74;
  }

  if ((v14.i8[0] & 3) == 0)
  {
    goto LABEL_100;
  }

LABEL_71:
  v53 = *(v34 + 280);
  if (!*&v53)
  {
    *v33 = 45;
    v54 = v14.i8[0] & 3;
    goto LABEL_102;
  }

LABEL_76:
  if ((~v53.i8[0] & 3) != 0)
  {
    v56 = 0x80u;
    while (1)
    {
      v33[1] = v56;
      v57 = (*&v53 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v53.i8[0] & 3u) > 1)
      {
        break;
      }

      if ((v53.i8[0] & 3) != 0)
      {
        v58 = v57[*(&tcm + v56) + 1];
        if (v58)
        {
LABEL_95:
          if ((~v58.i8[0] & 3) != 0)
          {
            *a1 = v58;
            v122 = *a1->i8;
            v123 = a1[2];
            _term_trie_resolve_sub_string_ignore_diacritics(&v122, &a2[v13]);
          }

          else
          {
            CFSetAddValue(v28, (*&v58 & 0xFFFFFFFFFFFFFFFCLL));
          }

          v28 = a5;
          v53 = v58;
        }
      }

LABEL_99:
      if (++v56 == 224)
      {
        goto LABEL_100;
      }
    }

    if ((v53.i8[0] & 3) == 3)
    {
      *&v53 |= 3uLL;
      goto LABEL_99;
    }

    v59 = *(&tcm + v56);
    v60 = v57 + 1;
    if (((*(v57[1].i32 + ((v59 >> 3) & 0x1C)) >> v59) & 1) == 0)
    {
      goto LABEL_99;
    }

    v61 = 0;
    v62 = v59 >> 6;
    if ((v59 >> 6) > 1)
    {
      if (v62 != 2)
      {
        v64 = vcnt_s8(v57[3]);
        v64.i16[0] = vaddlv_u8(v64);
        v61 = v64.u32[0];
      }

      v65 = vcnt_s8(v57[2]);
      v65.i16[0] = vaddlv_u8(v65);
      v61 += v65.u32[0];
    }

    else
    {
      v63 = v59 >> 6;
      if (!v62)
      {
LABEL_94:
        v67 = vcnt_s8((*&v60[v62] & ~(-1 << v59)));
        v67.i16[0] = vaddlv_u8(v67);
        v58 = v57[v67.u32[0] + 6 + v63];
        if (v58)
        {
          goto LABEL_95;
        }

        goto LABEL_99;
      }
    }

    v66 = vcnt_s8(*v60);
    v66.i16[0] = vaddlv_u8(v66);
    v63 = v66.u32[0] + v61;
    goto LABEL_94;
  }

  CFSetAddValue(v28, (*&v53 & 0xFFFFFFFFFFFFFFFCLL));
  v28 = a5;
LABEL_100:
  *v33 = 45;
  v54 = v14.i8[0] & 3;
  if (v54 > 1)
  {
    if (v119 == 3)
    {
      goto LABEL_111;
    }

LABEL_105:
    if ((*(v34 + 12) & 8) == 0)
    {
      goto LABEL_111;
    }

    v69 = vcnt_s8((*(v34 + 8) & 0x7FFFFFFFFLL));
    v69.i16[0] = vaddlv_u8(v69);
    v68 = *(v34 + 8 * v69.u32[0] + 48);
    if (!*&v68)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

  if ((v14.i8[0] & 3) == 0)
  {
    goto LABEL_111;
  }

LABEL_102:
  v68 = *(v34 + 288);
  if (v68)
  {
LABEL_107:
    if ((~v68.i8[0] & 3) != 0)
    {
      *a1 = v68;
      v122 = *a1->i8;
      v123 = a1[2];
      _term_trie_resolve_sub_string_ignore_diacritics(&v122, &a2[v13]);
    }

    else
    {
      CFSetAddValue(v28, (*&v68 & 0xFFFFFFFFFFFFFFFCLL));
    }

    v28 = a5;
  }

LABEL_111:
  v70 = 0;
  *v33 = -32542;
  *(a6 + v118 + 2) = -112;
  while (1)
  {
    v71 = (*&v14 & 0xFFFFFFFFFFFFFFFCLL);
    v72 = v14.i8[0] & 3;
    if (v72 <= 1)
    {
      if (v72 != 1)
      {
        goto LABEL_134;
      }

      v14 = v71[*(&tcm + v33[v70]) + 1];
      if (!*&v14)
      {
        goto LABEL_134;
      }

      goto LABEL_126;
    }

    if (v72 != 2)
    {
      break;
    }

    v73 = *(&tcm + v33[v70]);
    v74 = v71 + 1;
    if (((*(v71[1].i32 + ((v73 >> 3) & 0x1C)) >> v73) & 1) == 0)
    {
      goto LABEL_134;
    }

    v75 = 0;
    v76 = v73 >> 6;
    if ((v73 >> 6) > 1)
    {
      if (v76 != 2)
      {
        v78 = vcnt_s8(v71[3]);
        v78.i16[0] = vaddlv_u8(v78);
        v75 = v78.u32[0];
      }

      v79 = vcnt_s8(v71[2]);
      v79.i16[0] = vaddlv_u8(v79);
      v75 += v79.u32[0];
LABEL_124:
      v80 = vcnt_s8(*v74);
      v80.i16[0] = vaddlv_u8(v80);
      v77 = v80.u32[0] + v75;
      goto LABEL_125;
    }

    v77 = v73 >> 6;
    if (v76)
    {
      goto LABEL_124;
    }

LABEL_125:
    v81 = vcnt_s8((*&v74[v76] & ~(-1 << v73)));
    v81.i16[0] = vaddlv_u8(v81);
    v14 = v71[v81.u32[0] + 6 + v77];
    if (!*&v14)
    {
      goto LABEL_134;
    }

LABEL_126:
    if (++v70 == 3)
    {
      goto LABEL_130;
    }
  }

  if (!v70)
  {
    goto LABEL_134;
  }

  *&v14 |= 3uLL;
LABEL_130:
  if ((~v14.i8[0] & 3) != 0)
  {
    *a1 = v14;
    v122 = *a1->i8;
    v123 = a1[2];
    _term_trie_resolve_sub_string_ignore_diacritics(&v122, &a2[v13]);
  }

  else
  {
    CFSetAddValue(v28, (*&v14 & 0xFFFFFFFFFFFFFFFCLL));
  }

  v28 = a5;
LABEL_134:
  *v33 = -42;
  if (v54 > 1)
  {
    if (v54 == 3)
    {
      goto LABEL_165;
    }

    if ((*(v34 + 34) & 0x40) != 0)
    {
      v83 = vcnt_s8(*(v34 + 8));
      v83.i16[0] = vaddlv_u8(v83);
      v84 = v83.u32[0];
      v85 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v34 + 16))))));
      v86 = v84 + *&v85;
      v85.i32[0] = *(v34 + 32) & 0x3FFFFF;
      v87 = vcnt_s8(v85);
      v87.i16[0] = vaddlv_u8(v87);
      v82 = *(v34 + 8 * (v87.u32[0] + v86) + 48);
      if (v82)
      {
        goto LABEL_141;
      }
    }

    *v33 = -41;
    goto LABEL_170;
  }

  if (!v54)
  {
    goto LABEL_165;
  }

  v82 = *(v34 + 1720);
  if (!*&v82)
  {
    *v33 = -41;
    goto LABEL_167;
  }

LABEL_141:
  if ((~v82.i8[0] & 3) != 0)
  {
    v88 = 0x91u;
    while (1)
    {
      v33[1] = v88;
      v89 = (*&v82 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v82.i8[0] & 3u) > 1)
      {
        break;
      }

      if ((v82.i8[0] & 3) != 0)
      {
        v90 = v89[*(&tcm + v88) + 1];
        if (v90)
        {
LABEL_160:
          if ((~v90.i8[0] & 3) != 0)
          {
            *a1 = v90;
            v122 = *a1->i8;
            v123 = a1[2];
            _term_trie_resolve_sub_string_ignore_diacritics(&v122, &a2[v13]);
          }

          else
          {
            CFSetAddValue(v28, (*&v90 & 0xFFFFFFFFFFFFFFFCLL));
          }

          v28 = a5;
          v82 = v90;
        }
      }

LABEL_164:
      if (++v88 == 192)
      {
        goto LABEL_165;
      }
    }

    if ((v82.i8[0] & 3) == 3)
    {
      *&v82 |= 3uLL;
      goto LABEL_164;
    }

    v91 = *(&tcm + v88);
    v92 = v89 + 1;
    if (((*(v89[1].i32 + ((v91 >> 3) & 0x1C)) >> v91) & 1) == 0)
    {
      goto LABEL_164;
    }

    v93 = 0;
    v94 = v91 >> 6;
    if ((v91 >> 6) > 1)
    {
      if (v94 != 2)
      {
        v96 = vcnt_s8(v89[3]);
        v96.i16[0] = vaddlv_u8(v96);
        v93 = v96.u32[0];
      }

      v97 = vcnt_s8(v89[2]);
      v97.i16[0] = vaddlv_u8(v97);
      v93 += v97.u32[0];
    }

    else
    {
      v95 = v91 >> 6;
      if (!v94)
      {
LABEL_159:
        v99 = vcnt_s8((*&v92[v94] & ~(-1 << v91)));
        v99.i16[0] = vaddlv_u8(v99);
        v90 = v89[v99.u32[0] + 6 + v95];
        if (v90)
        {
          goto LABEL_160;
        }

        goto LABEL_164;
      }
    }

    v98 = vcnt_s8(*v92);
    v98.i16[0] = vaddlv_u8(v98);
    v95 = v98.u32[0] + v93;
    goto LABEL_159;
  }

  CFSetAddValue(v28, (*&v82 & 0xFFFFFFFFFFFFFFFCLL));
  v28 = a5;
LABEL_165:
  *v33 = -41;
  if (v119 > 1)
  {
    if (v119 == 3)
    {
      return;
    }

LABEL_170:
    if ((*(v34 + 34) & 0x80) == 0)
    {
      return;
    }

    v101 = vcnt_s8(*(v34 + 8));
    v101.i16[0] = vaddlv_u8(v101);
    v102 = v101.u32[0];
    v103 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v34 + 16))))));
    v104 = v102 + *&v103;
    v103.i32[0] = *(v34 + 32) & 0x7FFFFF;
    v105 = vcnt_s8(v103);
    v105.i16[0] = vaddlv_u8(v105);
    v100 = *(v34 + 8 * (v105.u32[0] + v104) + 48);
    if (!*&v100)
    {
      return;
    }

    goto LABEL_172;
  }

  if (!v119)
  {
    return;
  }

LABEL_167:
  v100 = *(v34 + 1728);
  if (v100)
  {
LABEL_172:
    if ((~v100.i8[0] & 3) == 0)
    {
      v27 = (*&v100 & 0xFFFFFFFFFFFFFFFCLL);
      goto LABEL_23;
    }

    v106 = 0x80u;
    while (1)
    {
      v33[1] = v106;
      v107 = (*&v100 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v100.i8[0] & 3u) > 1)
      {
        break;
      }

      if ((v100.i8[0] & 3) != 0)
      {
        v108 = v107[*(&tcm + v106) + 1];
        if (v108)
        {
LABEL_190:
          if ((~v108.i8[0] & 3) != 0)
          {
            *a1 = v108;
            v122 = *a1->i8;
            v123 = a1[2];
            _term_trie_resolve_sub_string_ignore_diacritics(&v122, &a2[v13]);
          }

          else
          {
            CFSetAddValue(v28, (*&v108 & 0xFFFFFFFFFFFFFFFCLL));
          }

          v28 = a5;
          v100 = v108;
        }
      }

LABEL_194:
      if (++v106 == 133)
      {
        return;
      }
    }

    if ((v100.i8[0] & 3) == 3)
    {
      *&v100 |= 3uLL;
      goto LABEL_194;
    }

    v109 = *(&tcm + v106);
    v110 = v107 + 1;
    if (((*(v107[1].i32 + ((v109 >> 3) & 0x1C)) >> v109) & 1) == 0)
    {
      goto LABEL_194;
    }

    v111 = 0;
    v112 = v109 >> 6;
    if ((v109 >> 6) > 1)
    {
      if (v112 != 2)
      {
        v114 = vcnt_s8(v107[3]);
        v114.i16[0] = vaddlv_u8(v114);
        v111 = v114.u32[0];
      }

      v115 = vcnt_s8(v107[2]);
      v115.i16[0] = vaddlv_u8(v115);
      v111 += v115.u32[0];
    }

    else
    {
      v113 = v109 >> 6;
      if (!v112)
      {
LABEL_189:
        v117 = vcnt_s8((*&v110[v112] & ~(-1 << v109)));
        v117.i16[0] = vaddlv_u8(v117);
        v108 = v107[v117.u32[0] + 6 + v113];
        if (v108)
        {
          goto LABEL_190;
        }

        goto LABEL_194;
      }
    }

    v116 = vcnt_s8(*v110);
    v116.i16[0] = vaddlv_u8(v116);
    v113 = v116.u32[0] + v111;
    goto LABEL_189;
  }
}

uint64_t __termUpdateSetResolveQueryInfo_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 104);
  result = (*(*(a1 + 40) + 56))(*(a1 + 40));
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t localizedFieldTermMatch_14134(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, int a5)
{
  if (a2)
  {
    if (a2 == 1 && (a5 & 8) == 0)
    {
      if (*a3 >= 4u)
      {
        v6 = &a3[a4];
        v7 = *(v6 - 1);
        if ((a5 & 0x800) == 0)
        {
          if (v7 != 1)
          {
            if (v7 != 3 || *(v6 - 2) != 1)
            {
              return 0;
            }

            goto LABEL_46;
          }

LABEL_47:
          v18 = *(v6 - 2);
LABEL_48:
          if (v18 != 1)
          {
            return 0;
          }

          return icu_search_match();
        }

        if (v7 == 4)
        {
          goto LABEL_47;
        }

        if (v7 != 3 || *(v6 - 2) != 4)
        {
          return 0;
        }

LABEL_46:
        v18 = *(v6 - 3);
        goto LABEL_48;
      }

      return 0;
    }

    if (a2 == 5)
    {
      if ((a5 & 0x800) != 0)
      {
        v6 = &a3[a4];
        v11 = *(v6 - 1);
        if (v11 == 5)
        {
          goto LABEL_47;
        }

        if (v11 != 3 || *(v6 - 2) != 5)
        {
          return 0;
        }

        goto LABEL_46;
      }

      return 0;
    }

    if (*a3 != 1)
    {
      return 0;
    }

    if (a3[1] == 2)
    {
      v12 = 2;
    }

    else
    {
      if ((a5 & 8) != 0)
      {
        return 0;
      }

      if (a4 > 2)
      {
        v19 = &a3[a4];
        v14 = *(v19 - 1);
        if (v14 == 3)
        {
          if (*(v19 - 2) == 1 && *(v19 - 3) == 1)
          {
            return 0;
          }

          v12 = 1;
          goto LABEL_56;
        }

        v13 = a4;
        v12 = 1;
LABEL_28:
        if (v14 == 1 && a3[v13 - 2] == 1)
        {
          return 0;
        }

LABEL_56:
        v20 = v12 + 1;
        v21 = a3[v12];
        if ((a3[v12] & 0x80000000) == 0)
        {
          if (!a3[v12])
          {
            return 0;
          }

          goto LABEL_72;
        }

        v23 = a3[v20];
        v24 = a3[v20];
        if ((v23 & 0x80000000) == 0)
        {
          v21 = v21 & 0x7F | (v24 << 7);
          if (!v21)
          {
            return 0;
          }

          goto LABEL_72;
        }

        v25 = v12 + 3;
        v26 = a3[v12 + 2];
        if (a3[v12 + 2] < 0)
        {
          v28 = a3[v25];
          v29 = a3[v25];
          if (v28 < 0)
          {
            v21 = ((v29 & 0x7F) << 21) | (a3[v12 | 4] << 28) | ((v26 & 0x7F) << 14) | ((v24 & 0x7F) << 7) | v21 & 0x7F;
            if (!v21)
            {
              return 0;
            }

            goto LABEL_72;
          }

          v27 = ((v26 & 0x7F) << 14) | (v29 << 21) | ((v24 & 0x7F) << 7) | v21 & 0x7F;
        }

        else
        {
          v27 = ((v24 & 0x7F) << 7) | (v26 << 14) | v21 & 0x7F;
        }

        v21 = v27;
        if (!v27)
        {
          return 0;
        }

LABEL_72:
        v22 = 0;
        v31 = a2 == 1 || v21 == a2;
        if (v21 >= 6 && v31)
        {
          if (a2 != 1)
          {
            return icu_search_match();
          }

          if ((a5 & 8) == 0)
          {
            return icu_search_match();
          }

          v32 = &a3[a4];
          v33 = *(v32 - 1);
          if (v33 == 1)
          {
            return icu_search_match();
          }

          v22 = 0;
          if (a4 >= 3 && v33 == 3)
          {
            if (*(v32 - 2) != 1 || *(v32 - 3) != 1)
            {
              return 0;
            }

            return icu_search_match();
          }
        }

        return v22;
      }

      v12 = 1;
    }

    if (a4 < 2)
    {
      goto LABEL_56;
    }

    v13 = a4;
    v14 = a3[a4 - 1];
    goto LABEL_28;
  }

  if (*a3 < 4u)
  {
    return 0;
  }

  v8 = &a3[a4];
  v9 = *(v8 - 1);
  if ((a5 & 0x800) != 0)
  {
    if (v9 != 1 || *(v8 - 2) == 1)
    {
      return 0;
    }

    v10 = (a4 - 1);
  }

  else
  {
    if (v9 == 1)
    {
      return 0;
    }

    v10 = a4;
    if (v9 == 2 && a3[a4 - 2] == 1)
    {
      if ((a5 & 0x3180) != 0)
      {
        return 0;
      }

      v10 = a4 - 2;
    }
  }

  v15 = &a3[v10];
  v16 = a3[v10 - 1];
  if (v16 == 5)
  {
    v17 = *(v15 - 2);
    if ((v17 - 6) < 0xFFFFFFFC || *(v15 - 3) != 1)
    {
      return 0;
    }

    if ((a5 & 0x78000000) != 0)
    {
      switch(v17)
      {
        case 4:
          if ((a5 & 0x20000000) == 0)
          {
            return 0;
          }

          break;
        case 3:
          if ((a5 & 0x10000000) == 0)
          {
            return 0;
          }

          break;
        case 2:
          if ((a5 & 0x8000000) == 0)
          {
            return 0;
          }

          break;
        default:
          if ((a5 & 0x40000000) == 0)
          {
            return 0;
          }

          break;
      }
    }

    return icu_search_match();
  }

  v22 = 0;
  if ((a5 & 0x78000000) == 0 && v16 > 4)
  {
    return icu_search_match();
  }

  return v22;
}

uint64_t termPropertyID_14135(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = a1;
  if (*a1 > 3u)
  {
    v4 = &a1[a2];
    v5 = v4 - 6;
    if (a2 < 6)
    {
      v5 = a1 + 1;
    }

    v6 = *(v4 - 1);
    if (v6 < 0)
    {
      return 0;
    }

    v8 = *(v4 - 2);
    v7 = v4 - 2;
    v9 = v8 == 1 && v6 == 3;
    v3 = (v9 ? v7 - 1 : v7);
    if (v3 <= v5)
    {
LABEL_17:
      v10 = *v3;
    }

    else
    {
      while (*v3 < 0)
      {
        if (--v3 <= v5)
        {
          v3 = v5;
          goto LABEL_17;
        }
      }

      v10 = *v3;
    }

    if (v10 != 1)
    {
      return 0;
    }
  }

  result = v3[1];
  if (v3[1] < 0)
  {
    v11 = v3[2];
    if (v3[2] < 0)
    {
      v12 = v3[3];
      if (v3[3] < 0)
      {
        v14 = v3[4];
        if (v3[4] < 0)
        {
          v16 = v3[5];
          if (v16 < 0)
          {
            v17 = __si_assert_copy_extra_332();
            v18 = v17;
            v19 = "";
            if (v17)
            {
              v19 = v17;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v19);
            free(v18);
            if (__valid_fs(-1))
            {
              v20 = 2989;
            }

            else
            {
              v20 = 3072;
            }

            *v20 = -559038737;
            abort();
          }

          v15 = ((v14 & 0x7F) << 21) | (v16 << 28) | ((v12 & 0x7F) << 14);
        }

        else
        {
          v15 = ((v12 & 0x7F) << 14) | (v14 << 21);
        }

        v13 = v15 & 0xFFFFC07F | ((v11 & 0x7F) << 7);
      }

      else
      {
        v13 = ((v11 & 0x7F) << 7) | (v12 << 14);
      }

      return v13 & 0xFFFFFF80 | result & 0x7F;
    }

    else
    {
      return result & 0x7F | (v11 << 7);
    }
  }

  return result;
}

uint64_t flat_levels_cf_set_applier2(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  do
  {
    for (; v3; v3 = *v3 & 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(a2 + 8) == *(v3 + 24))
      {
        v8 = *(v3 + 16);
        v5 = *(v3 + 28);
        v9 = *(v3 + 24);
        LODWORD(v8) = 0;
        result = (*a2)(*(v3 + 32), v3 + 34, &v8, v5, *(a2 + 16));
      }

      if ((*(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        *(v10 + v4++) = *(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v6 = __OFSUB__(v4--, 1);
    if (v4 < 0 != v6)
    {
      break;
    }

    v3 = *(v10 + v4);
  }

  while (v3);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _TermTrieMatchRangeChars(uint64_t result, uint64_t a2, uint64_t a3, CFMutableSetRef theSet, uint64_t a5, uint64_t a6)
{
  v11 = result;
  v12 = 0;
  do
  {
    v13 = *(a5 + v12);
    if (!*(a5 + v12))
    {
      break;
    }

    v14 = *(a2 + v12);
    if (!*(a2 + v12))
    {
      break;
    }

    if (v13 < v14)
    {
      return result;
    }

    ++v12;
  }

  while (v13 <= v14);
  v15 = 0;
  do
  {
    v16 = *(a5 + v15);
    if (!*(a5 + v15))
    {
      break;
    }

    v17 = *(a3 + v15);
    if (v16 > v17)
    {
      return result;
    }

    ++v15;
  }

  while (v16 >= v17);
  if ((result & 3u) > 1)
  {
    if ((result & 3) == 3)
    {
      v18 = (result & 0xFFFFFFFFFFFFFFFCLL);
      if ((result & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((result & 3) == 0)
  {
    goto LABEL_19;
  }

  v18 = *(result & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
LABEL_18:
    CFSetAddValue(theSet, v18);
  }

LABEL_19:

  return TermTrieMatchRangeChars(v11, a2, a3, theSet, a5, a6);
}

void oqdispose_PositionOffset_t(unsigned __int8 *a1)
{
  v2 = *a1;
  v1 = (a1 + 8);
  if (v2 == 1)
  {
    oqdispose_PositionOffsetWithMeta_t(v1);
  }

  else
  {
    oqdispose_JustPositionOffset_t(v1);
  }
}

BOOL _CIMatchesNodeByDocId(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v28 = a2;
  v27 = 0;
  v26 = 0;
  v7 = __CIMatchQueryNodesLazy(a1, 0, 1, &v28, &v26, a3, 0, a4, &v27, a5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v17 = 0;
  v19 = 0u;
  v23 = 0u;
  v15 = xmmword_1C2BFA420;
  v16 = 0;
  v18 = 4292677391;
  DWORD2(v19) = 0;
  v20 = 0xFFDD0F0FuLL;
  v21 = 0;
  v22 = 4292677391;
  DWORD2(v23) = 0;
  v25 = 0;
  v24 = 0xFFDD0F0FuLL;
  v9 = v26;
  v29 = v26;
  v10 = ContentIndexDocSetsCreateIterator(&v29, 1, v7, 0, 0, &v15);
  ContentIndexDocSetContextRelease(v8);
  if (v10)
  {
    v29 = 0;
    v14 = 0;
    v11 = a3 - *(a1 + 80);
    ContentIndexDocSet_Step(v10, &v29, &v14);
      ;
    }

    if (v29)
    {
      v12 = ContentIndexDocSetContainsDocId(v9, a3);
    }

    else
    {
      v12 = 0;
    }

    if (v10[58] == 1)
    {
      *(a1 + 15712) = 1;
    }

    ContentIndexDocSetIteratorDispose(v10);
  }

  else
  {
    v12 = 0;
  }

  ContentIndexDocSetDispose(v9);
  CIIndexSetClearCache(&v15);
  return v12;
}

void _CITermUpdateSetFindTokens(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v66 = v5;
  v93 = *MEMORY[0x1E69E9840];
  v63 = v6 != 0;
  if (v6)
  {
    v7 = "loc ";
  }

  else
  {
    v7 = "";
  }

  v8 = *v3;
  if (!*v3)
  {
    v8 = TokenDataCreate(*v1, *v2);
    if (!v8)
    {
      goto LABEL_97;
    }
  }

  v61 = v7;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = v86;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2000000000;
  v9 = 32;
  v81 = 32;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2000000000;
  v77 = 0;
  bzero(v88, 0x7F0uLL);
  bzero(v86, 0x800uLL);
  v10 = v8[4];
  v11 = v8[5];
  v12 = v10 >> 1;
  if (v10)
  {
    v13 = 2056;
  }

  else
  {
    v13 = 8;
  }

  v87[0] = *(v8 + 1);
  v87[1] = v87[0];
  v88[0] = v13 & 0xFBFFFFFF | ((v12 & 1) << 26);
  v88[10] = v11;
  v14 = v87;
  v15 = 1;
  v62 = v8;
  do
  {
    v64 = v9;
    if (dword_1EBF46AD0 >= 5)
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(context[0]) = 136315394;
        *(context + 4) = v61;
        WORD6(context[0]) = 1024;
        *(context + 14) = v15;
        _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "### %supdateset processing - %d ###", context, 0x12u);
      }

      *__error() = v54;
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 0x40000000;
    v68 = __termUpdateSetFindTokens_block_invoke;
    v69 = &unk_1E8198938;
    v70 = &v74;
    v71 = &v78;
    v72 = &v82;
    v73 = v8;
    memset(context, 0, sizeof(context));
    *&context[1] = v66;
    BYTE8(context[1]) = v63;
    theSet = CFSetCreateMutable(0, 0, 0);
    v91 = theSet;
    v92 = 0;
    db_read_lock(v66 + 304);
    v16 = v66;
    for (i = 0; i != v15; ++i)
    {
      v18 = &v14[8 * i];
      v92 = v18;
      v19 = *v18;
      v20 = v18[14];
      v21 = (*(v16 + 24) + 32) | 1;
      if (v18[5] < 7 || *v19 != 1)
      {
        goto LABEL_19;
      }

      if (v19[1] == 2)
      {
        if (v19[2] < 0)
        {
          if (v19[3] < 0)
          {
            if (v19[4] < 0)
            {
              if (v19[5] < 0)
              {
                if (v19[6] < 0)
                {
                  v57 = __si_assert_copy_extra_332();
                  v58 = v57;
                  v59 = "";
                  if (v57)
                  {
                    v59 = v57;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v59);
                  free(v58);
                  if (__valid_fs(-1))
                  {
                    v60 = 2989;
                  }

                  else
                  {
                    v60 = 3072;
                  }

                  *v60 = -559038737;
                  abort();
                }

                v22 = 7;
              }

              else
              {
                v22 = 6;
              }
            }

            else
            {
              v22 = 5;
            }
          }

          else
          {
            v22 = 4;
          }
        }

        else
        {
          v22 = 3;
        }
      }

      else
      {
        v22 = 2;
      }

      if (v22 > v20)
      {
LABEL_19:
        v23 = *v18;
        goto LABEL_20;
      }

      v38 = 0;
      while (1)
      {
        v39 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        v40 = v21 & 3;
        if (v40 <= 1)
        {
          if (v40 != 1)
          {
            v21 &= 3u;
            goto LABEL_19;
          }

          v21 = v39[*(&tcm + v19[v38]) + 1];
          if (!v21)
          {
            goto LABEL_19;
          }

          goto LABEL_70;
        }

        if (v40 != 2)
        {
          break;
        }

        v41 = *(&tcm + v19[v38]);
        v42 = v39 + 1;
        if (((*(v39[1].i32 + ((v41 >> 3) & 0x1C)) >> v41) & 1) == 0)
        {
          v21 = 0;
          goto LABEL_19;
        }

        v43 = 0;
        v44 = v41 >> 6;
        if ((v41 >> 6) > 1)
        {
          if (v44 != 2)
          {
            v46 = vcnt_s8(v39[3]);
            v46.i16[0] = vaddlv_u8(v46);
            v43 = v46.u32[0];
          }

          v47 = vcnt_s8(v39[2]);
          v47.i16[0] = vaddlv_u8(v47);
          v43 += v47.u32[0];
LABEL_68:
          v48 = vcnt_s8(*v42);
          v48.i16[0] = vaddlv_u8(v48);
          v45 = v48.u32[0] + v43;
          goto LABEL_69;
        }

        v45 = v41 >> 6;
        if (v44)
        {
          goto LABEL_68;
        }

LABEL_69:
        v49 = vcnt_s8((*&v42[v44] & ~(-1 << v41)));
        v49.i16[0] = vaddlv_u8(v49);
        v21 = v39[v49.u32[0] + 6 + v45];
        if (!v21)
        {
          goto LABEL_19;
        }

LABEL_70:
        if (v22 == ++v38)
        {
          LODWORD(v38) = v22;
          goto LABEL_75;
        }
      }

      v21 |= 3uLL;
      if (!v38)
      {
        goto LABEL_19;
      }

LABEL_75:
      v23 = &v19[v38];
      if ((~v21 & 3) == 0)
      {
        CFSetAddValue(theSet, (v21 & 0xFFFFFFFFFFFFFFFCLL));
        v16 = v66;
      }

LABEL_20:
      v24 = &v19[v20];
LABEL_21:
      if (v23 < v24)
      {
        v25 = 0;
        v26 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v23 >> 4];
        while (1)
        {
          v27 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          v28 = v21 & 3;
          if (v28 <= 1)
          {
            if (v28 != 1)
            {
              goto LABEL_52;
            }

            v21 = v27[*(&tcm + v23[v25]) + 1];
            if (!v21)
            {
              goto LABEL_52;
            }

            goto LABEL_37;
          }

          if (v28 != 2)
          {
            v21 |= 3uLL;
            LODWORD(v26) = v25;
            if (!v25)
            {
              goto LABEL_52;
            }

LABEL_41:
            v23 += v26;
            if ((v21 & 3u) > 1)
            {
              if ((v21 & 3) == 3)
              {
                CFSetAddValue(theSet, (v21 & 0xFFFFFFFFFFFFFFFCLL));
              }

              else
              {
LABEL_46:
                if (!*(v21 & 0xFFFFFFFFFFFFFFFCLL) && (v23 != v24 || (*(v18 + 17) & 8) == 0))
                {
                  goto LABEL_21;
                }

                v68(v67, &v14[8 * i], v23 - v19);
              }

              v16 = v66;
              goto LABEL_21;
            }

            if ((v21 & 3) != 0)
            {
              goto LABEL_46;
            }

            goto LABEL_21;
          }

          v29 = *(&tcm + v23[v25]);
          v30 = v27 + 1;
          if (((*(v27[1].i32 + ((v29 >> 3) & 0x1C)) >> v29) & 1) == 0)
          {
            goto LABEL_52;
          }

          v31 = 0;
          v32 = v29 >> 6;
          if ((v29 >> 6) > 1)
          {
            break;
          }

          v33 = v29 >> 6;
          if (v32)
          {
            goto LABEL_35;
          }

LABEL_36:
          v37 = vcnt_s8((*&v30[v32] & ~(-1 << v29)));
          v37.i16[0] = vaddlv_u8(v37);
          v21 = v27[v37.u32[0] + 6 + v33];
          if (!v21)
          {
            goto LABEL_52;
          }

LABEL_37:
          if (v26 == ++v25)
          {
            if (!utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v23 >> 4])
            {
              goto LABEL_52;
            }

            goto LABEL_41;
          }
        }

        if (v32 != 2)
        {
          v34 = vcnt_s8(v27[3]);
          v34.i16[0] = vaddlv_u8(v34);
          v31 = v34.u32[0];
        }

        v35 = vcnt_s8(v27[2]);
        v35.i16[0] = vaddlv_u8(v35);
        v31 += v35.u32[0];
LABEL_35:
        v36 = vcnt_s8(*v30);
        v36.i16[0] = vaddlv_u8(v36);
        v33 = v36.u32[0] + v31;
        goto LABEL_36;
      }

LABEL_52:
      ;
    }

    LODWORD(context[0]) = v15;
    *(&context[0] + 1) = v14;
    v90 = v67;
    v50 = v16;
    CFSetApplyFunction(theSet, resolveTokensSetCallback, context);
    _TermUpdateSetReadUnlock(v50);
    CFRelease(v91);
    v51 = v83[3];
    v83[3] = v14;
    v52 = v79;
    v53 = *(v79 + 6);
    *(v79 + 6) = v64;
    v15 = *(v75 + 6);
    *(v75 + 6) = 0;
    v14 = v51;
    v9 = v53;
    v8 = v62;
  }

  while (v15);
  if (v53 >= 0x21)
  {
    free(v51);
    v52 = v79;
  }

  if (*(v52 + 6) >= 0x21u)
  {
    free(v83[3]);
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  if (!*v4)
  {
    if (v62[6])
    {
      *v4 = v62;
    }

    else
    {
      TokenDataDispose(v62);
    }
  }

LABEL_97:
  v56 = *MEMORY[0x1E69E9840];
}

uint64_t __termUpdateSetFindTokens_block_invoke(void *a1, _DWORD *a2, unsigned int a3)
{
  v6 = *a2 - a2[2];
  v7 = *(*(a1[5] + 8) + 24);
  if (*(*(a1[4] + 8) + 24) + 1 >= v7)
  {
    v8 = 2 * v7;
    if (v8 <= 0x7FF && v8 << 6 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_14063;
    }

    v10 = malloc_type_zone_calloc(queryZone, v8, 0x40uLL, 0x5BAF1CEAuLL);
    if (!v10)
    {
      _log_fault_for_malloc_failure();
    }

    memcpy(v10, *(*(a1[6] + 8) + 24), *(*(a1[5] + 8) + 24) << 6);
    if (*(*(a1[5] + 8) + 24) >= 0x21u)
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
      *(*(*(a1[6] + 8) + 24) + ((*(*(a1[4] + 8) + 24))++ << 6) + 16) = a2[4];
    }
  }

  return result;
}

uint64_t resolveTokensSetCallback(uint64_t result, unsigned int *a2)
{
  v3 = result;
  v60[17] = *MEMORY[0x1E69E9840];
  memset(v60, 0, 128);
  v4 = 0;
  do
  {
    v53 = v4;
    if (v3)
    {
      v5 = *a2;
      v6 = v5;
      while (!v6)
      {
LABEL_76:
        if ((*(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v60[v53++] = *(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL;
        }

        v3 = *v3 & 0x7FFFFFFFFFFFFFFFLL;
        if (!v3)
        {
          goto LABEL_79;
        }
      }

      v7 = 0;
      v8 = (v3 + 34);
      v54 = (v3 + 34);
      v55 = v3;
      while (1)
      {
        v9 = *(v3 + 32);
        if (v9 - 1044 < 0xFFFFFBED)
        {
          goto LABEL_75;
        }

        if (*v8 < 6u)
        {
          goto LABEL_75;
        }

        v10 = *(a2 + 1) + (v7 << 6);
        v11 = *v10;
        if (v9 >= 4 && v8[v9 - 1] == 51 && v8[v9 - 2] >= 3u && v8[v9 - 3] == 1)
        {
          goto LABEL_75;
        }

        bzero(v58, 0x415uLL);
        v12 = *(v3 + 32);
        if (*(v3 + 32))
        {
          v13 = v58;
          v14 = v8;
          do
          {
            v15 = *v14++;
            *v13++ = tcmr[v15];
            --v12;
          }

          while (v12);
        }

        v58[v9] = 0;
        if ((v58[0] & 0x80000000) == 0 || (~(v58[0] >> 4) & 0xC) != 0)
        {
          goto LABEL_37;
        }

        v16 = utf8_byte_length(unsigned char)::utf8_len_table[v58[0] >> 4];
        v17 = (v58[0] & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v16]);
        v18 = v16 <= 2 ? 2 : utf8_byte_length(unsigned char)::utf8_len_table[v58[0] >> 4];
        v19 = v18 - 1;
        v20 = v59;
        do
        {
          v21 = v17;
          v22 = *v20++;
          v17 = v22 & 0x3F | (v17 << 6);
          --v19;
        }

        while (v19);
        if ((v21 << 6) >> 8 < 0x11 || (v21 & 0x3FFFFFC) != 0x44 && ((v21 << 6) - 11904) >> 7 >= 0x197 && (v17 - 65376) > 0x4F)
        {
          goto LABEL_37;
        }

        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v11;
        if ((~(v23 >> 4) & 0xC) != 0)
        {
          goto LABEL_37;
        }

        v24 = utf8_byte_length(unsigned char)::utf8_len_table[v23 >> 4];
        v25 = v23 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v24];
        v24 = v24 <= 2 ? 2 : v24;
        v26 = v24 - 1;
        v27 = v11 + 1;
        do
        {
          v28 = v25;
          v29 = *v27++;
          v25 = v29 & 0x3F | (v25 << 6);
          --v26;
        }

        while (v26);
        if ((v28 << 6) >> 8 < 0x11 || (v56 = 1, (v28 & 0x3FFFFFC) != 0x44) && ((v28 << 6) - 11904) >> 7 >= 0x197 && (v25 - 65376) >= 0x50)
        {
LABEL_37:
          v56 = 0;
        }

        result = termPropertyID_14135(v58, v9);
        if (*(a2 + 24) == 1)
        {
          if (result <= 2)
          {
            break;
          }

          goto LABEL_74;
        }

        if (result == 2)
        {
          if (v58[v9 - 1] != 1)
          {
            break;
          }

          goto LABEL_74;
        }

        if (v56)
        {
          break;
        }

LABEL_74:
        v5 = *a2;
        v8 = v54;
        v3 = v55;
LABEL_75:
        ++v7;
        v6 = v5;
        if (v7 >= v5)
        {
          goto LABEL_76;
        }
      }

      v30 = 0;
      v31 = 0;
      for (i = v58; ; i += v49)
      {
        v33 = *v11;
        v34 = *v11 >> 4;
        if (v33 < 0)
        {
          v35 = utf8_byte_length(unsigned char)::utf8_len_table[v34];
          v36 = (v33 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v35]);
          if ((~v34 & 0xC) != 0)
          {
            v33 = (v33 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v35]);
          }

          else
          {
            if (v35 <= 2)
            {
              v37 = 2;
            }

            else
            {
              v37 = utf8_byte_length(unsigned char)::utf8_len_table[v34];
            }

            v38 = v37 - 1;
            v39 = v11 + 1;
            do
            {
              v40 = *v39++;
              v33 = v40 & 0x3F | (v36 << 6);
              v36 = v33;
              --v38;
            }

            while (v38);
          }
        }

        v41 = *i;
        v42 = v41 >> 4;
        if ((v41 & 0x80) != 0)
        {
          v43 = utf8_byte_length(unsigned char)::utf8_len_table[v42];
          v44 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v43] & v41;
          if ((~(v41 >> 4) & 0xC) != 0)
          {
            LODWORD(v41) = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v43] & v41;
          }

          else
          {
            if (v43 <= 2)
            {
              v45 = 2;
            }

            else
            {
              v45 = utf8_byte_length(unsigned char)::utf8_len_table[v42];
            }

            v46 = v45 - 1;
            v47 = (i + 1);
            do
            {
              v48 = *v47++;
              LODWORD(v41) = v48 & 0x3F | (v44 << 6);
              v44 = v41;
              --v46;
            }

            while (v46);
          }
        }

        v49 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v42];
        v50 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v34];
        if (v41 >= 2)
        {
          if (v33)
          {
            goto LABEL_69;
          }

          if ((v56 & 1) == 0 && (*(v10 + 17) & 8) == 0)
          {
            goto LABEL_74;
          }
        }

        else if (v30 && (v33 - 12448) < 0x60 || v31 && (v33 - 12352) < 0x60)
        {
          goto LABEL_74;
        }

        v51 = (v11 - *v10);
        result = (*(*(a2 + 4) + 16))();
LABEL_69:
        if (!v33 || v33 != v41)
        {
          goto LABEL_74;
        }

        v30 = (v33 - 12448) < 0x60;
        v31 = (v33 - 12352) < 0x60;
        v11 += v50;
      }
    }

LABEL_79:
    v4 = v53 - 1;
    if (v53 < 1)
    {
      break;
    }

    v3 = v60[v4];
  }

  while (v3);
  v52 = *MEMORY[0x1E69E9840];
  return result;
}