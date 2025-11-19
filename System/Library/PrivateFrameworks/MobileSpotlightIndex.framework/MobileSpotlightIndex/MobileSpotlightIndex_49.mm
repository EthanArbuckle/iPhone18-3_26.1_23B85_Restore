unsigned int *ContentIndexDocSetExceptLazy_Array(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 52);
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a3 + 8 * v7);
      v10 = *(v9 + 96);
      if (v10)
      {
        v11 = *(v9 + 72);
        if (v10 == 1)
        {
          v12 = 0;
        }

        else
        {
          v13 = 0;
          v12 = v10 & 0xFFFFFFFE;
          v14 = v11 + 8;
          v15 = v12;
          do
          {
            v6 |= *(*(v14 - 8) + 52);
            v13 |= *(*v14 + 52);
            v14 += 16;
            v15 -= 2;
          }

          while (v15);
          v6 |= v13;
          if (v12 == v10)
          {
            goto LABEL_3;
          }
        }

        v16 = v10 - v12;
        v17 = (v11 + 8 * v12);
        do
        {
          v18 = *v17++;
          v6 |= *(v18 + 52);
          --v16;
        }

        while (v16);
      }

LABEL_3:
      v8 += v10;
      if (++v7 == a2)
      {
        v19 = v8 + 1;
        goto LABEL_15;
      }
    }
  }

  v19 = 1;
LABEL_15:
  v20 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
  {
    ++sTotal_6326;
  }

  v21 = *(a1 + 56);
  v22 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
  if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v31[0] = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v31, 2u);
  }

  atomic_store(1u, v22);
  v22[1] = -1073627135;
  *(v22 + 7) = v21;
  *(v22 + 5) = -1;
  v22[12] = 7;
  v22[13] = v6;
  v23 = 8 * v19;
  v22[24] = v19;
  if (!(v19 >> 14) && *v20 < v23)
  {
    ++sTotal_6326;
  }

  v24 = malloc_type_zone_calloc(queryZone, 1uLL, v23, 0x5BAF1CEAuLL);
  if (!v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  *(v22 + 9) = v24;
  atomic_fetch_add(a1, 1u);
  **(v22 + 9) = a1;
  if (a2)
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = *(a3 + 8 * v25);
      if (*(v27 + 96))
      {
        v28 = 0;
        do
        {
          v29 = *(*(v27 + 72) + 8 * v28);
          if (v29)
          {
            atomic_fetch_add(v29, 1u);
          }

          *(*(v22 + 9) + 8 * (v26 + v28++)) = v29;
          v27 = *(a3 + 8 * v25);
        }

        while (v28 < *(v27 + 96));
        v26 += v28;
      }

      ++v25;
    }

    while (v25 != a2);
  }

  return v22;
}

uint64_t __extractConstrainingDocSets_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 48);
  v4 = *(*a3 + 48);
  if (v3 == v4)
  {
    return 0;
  }

  if (v3 == 6)
  {
    return 1;
  }

  if (v4 == 6)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void ContentIndexOrganizeWeightedTree(uint64_t a1)
{
  v3 = *(a1 + 12);
  v2 = *(a1 + 16);
  if (v3 != 0.0 || v2 != 0.0)
  {
LABEL_2:
    v2 = fmaxf(v3, v2);
    goto LABEL_3;
  }

  v4 = *(a1 + 48);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 0:
        goto LABEL_3;
      case 1:
        v2 = *(a1 + 12);
        goto LABEL_3;
      case 2:
LABEL_3:
        *(a1 + 24) = v2;
        break;
    }
  }

  else
  {
    if (v4 <= 5)
    {
      if (v4 != 4)
      {
        v5 = 0;
        v6 = *(a1 + 72);
        while (1)
        {
          v7 = *(a1 + 96);
          if (v5 >= v7)
          {
            break;
          }

          ContentIndexOrganizeWeightedTree(v6[v5]);
          v6 = *(a1 + 72);
          v8 = v6[v5];
          v9 = *(v8 + 24);
          if (v9 == 0.0)
          {
            v3 = *(v8 + 24);
          }

          else
          {
            v3 = v9 + v3;
          }

          ++v5;
          if (v3 == 0.0)
          {
            v7 = *(a1 + 96);
            break;
          }
        }

        qsort_b(v6, v7, 8uLL, &__block_literal_global_15_6372);
        v2 = *(a1 + 20) + v3;
        goto LABEL_3;
      }

      goto LABEL_26;
    }

    if (v4 == 6)
    {
LABEL_26:
      v13 = *(a1 + 96);
      v14 = *(a1 + 72);
      if (v13)
      {
        v15 = 0;
        do
        {
          ContentIndexOrganizeWeightedTree(v14[v15]);
          v14 = *(a1 + 72);
          v3 = fmaxf(v3, *(v14[v15++] + 24));
          v16 = *(a1 + 96);
        }

        while (v15 < v16);
      }

      else
      {
        v16 = 0;
      }

      qsort_b(v14, v16, 8uLL, &__block_literal_global_12);
      v2 = *(a1 + 20);
      goto LABEL_2;
    }

    if (v4 == 7)
    {
      if (*(a1 + 96))
      {
        v10 = 0;
        do
        {
          ContentIndexOrganizeWeightedTree(*(*(a1 + 72) + 8 * v10++));
          v11 = *(a1 + 96);
        }

        while (v10 < v11);
        v12 = (v11 - 1);
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }

      qsort_b((*(a1 + 72) + 8), v12, 8uLL, &__block_literal_global_12);
      v2 = *(**(a1 + 72) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t __sort_children_prefer_false_zero_block_invoke(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(*a2 + 16);
  v6 = *(*a3 + 16);
  if (v5 != v6)
  {
    if (v5 == 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    if (v6 == 0.0)
    {
      return 1;
    }
  }

  v8 = *(v3 + 12);
  v9 = *(v4 + 12);
  if (v8 == v9)
  {
    goto LABEL_11;
  }

  if (v8 == 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v9 == 0.0)
  {
    return 1;
  }

LABEL_11:
  v10 = *(v3 + 24);
  v11 = *(v4 + 24);
  if (v10 <= v11)
  {
    return v10 < v11;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t __sort_children_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 24);
  v4 = *(*a3 + 24);
  if (v3 > v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 < v4;
  }
}

uint64_t ContentIndexAnnotateWeightedTreeInner(uint64_t result, float a2)
{
  v3 = *(result + 12);
  if (v3 != 0.0)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 16);
  if (v5 != 0.0)
  {
    return result;
  }

  v6 = *(result + 48);
  if (v6 <= 5)
  {
    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v7 = *(result + 96);
        if (v7)
        {
          v8 = fmaxf(v3, v5);
          v9 = v8 + a2;
          v10 = 8 * v7 - 8;
          do
          {
            result = ContentIndexAnnotateWeightedTreeInner(*(*(v4 + 72) + v10), v9);
            v11 = *(*(v4 + 72) + v10);
            v8 = *(v11 + 24) + v8;
            v9 = v8 + a2;
            *(v11 + 28) = v8 + a2;
            v10 -= 8;
          }

          while (v10 != -8);
        }
      }

      return result;
    }

    goto LABEL_14;
  }

  if (v6 == 6)
  {
LABEL_14:
    v13 = *(result + 96);
    if (v13)
    {
      v14 = fmaxf(v3, v5);
      v15 = v14 + a2;
      v16 = 8 * v13 - 8;
      do
      {
        result = ContentIndexAnnotateWeightedTreeInner(*(*(v4 + 72) + v16), v15);
        v17 = *(*(v4 + 72) + v16);
        v14 = fmaxf(v14, *(v17 + 24));
        v15 = v14 + a2;
        *(v17 + 28) = v14 + a2;
        v16 -= 8;
      }

      while (v16 != -8);
    }

    return result;
  }

  if (v6 == 7)
  {
    v12 = fmaxf(v3, v5) + a2;
    result = ContentIndexAnnotateWeightedTreeInner(**(result + 72), v12);
    *(v4 + 28) = *(**(v4 + 72) + 24) + v12;
  }

  return result;
}

uint64_t ContentIndexDocSetSetProximities(uint64_t a1, unsigned int a2, const void *a3)
{
  if (*(a1 + 48) != 9 || !*(a1 + 36))
  {
    return 0;
  }

  if (*(a1 + 96) >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 96);
  }

  if (v3 > *(a1 + 132))
  {
    v4 = a3;
    v5 = 4 * v3;
    v6 = a1;
    result = reallocf(*(a1 + 136), v5);
    *(v6 + 136) = result;
    if (!result)
    {
      return result;
    }

    a3 = v4;
    goto LABEL_12;
  }

  if (v3)
  {
    v6 = a1;
    result = *(a1 + 136);
    v5 = 4 * v3;
LABEL_12:
    memcpy(result, a3, v5);
    *(v6 + 132) = v3;
    return 1;
  }

  return 0;
}

uint64_t ContentIndexDocSetGrabConstrainingVector(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 3)
  {
    if (v1 < 3)
    {
      return 0;
    }

    if (v1 != 3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v1 - 4) < 4)
    {
LABEL_3:
      if ((*(a1 + 32) & 1) == 0)
      {
        v5 = __si_assert_copy_extra_332();
        v6 = v5;
        v7 = "";
        if (v5)
        {
          v7 = v5;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 1940, "docs->processed", v7);
        free(v6);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAA] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v2 = a1 + 104;
      return *v2;
    }

    if (v1 != 8)
    {
      if (v1 == 9)
      {
        goto LABEL_3;
      }

LABEL_19:
      assert_invalid_doc_type(a1);
    }
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 0;
  }

  v2 = v4 + 88;
  return *v2;
}

uint64_t ContentIndexDocSet_PositionRead(uint64_t *a1, void *a2, int a3, _BYTE *a4, int8x8_t a5)
{
  v153 = *MEMORY[0x1E69E9840];
  v147 = 1;
  v9 = a1 + 10;
  v8 = a1[10];
  v10 = v8;
  v131 = *(v9 - 1);
  v11 = *(v9 - 13);
  v12 = *(v9 - 14) + 1;
  v145 = v11;
  v146 = v12;
  if (*(v9 - 27) == 1)
  {
    v13 = *(v8 + 48);
    if (v13 <= 3)
    {
      if (v13 < 3)
      {
        goto LABEL_35;
      }

      if (v13 != 3)
      {
        goto LABEL_148;
      }
    }

    else
    {
      if ((v13 - 4) < 4)
      {
        goto LABEL_4;
      }

      if (v13 != 8)
      {
        if (v13 == 9)
        {
LABEL_4:
          v14 = *(v8 + 80);
          if (v14)
          {
LABEL_5:
            locked = lockedCountItemsInRange(v14, *(a1 + 11), *(a1 + 10) - 1, a5);
LABEL_36:
            if (a3)
            {
              v49 = (*(a1 + 10) - *(a1 + 11)) - locked;
              v50 = v49 & ~(v49 >> 63);
            }

            else
            {
              v50 = locked;
            }

            v51 = *__error();
            v52 = _SILogForLogForCategory(10);
            v53 = 2 * (dword_1EBF46AF4 < 4);
            if (os_log_type_enabled(v52, v53))
            {
              *buf = 134217984;
              *&buf[4] = v50;
              _os_log_impl(&dword_1C278D000, v52, v53, "Found: %ld", buf, 0xCu);
            }

            *__error() = v51;
            *a2 += v50;
LABEL_110:
            result = 0;
            goto LABEL_121;
          }

LABEL_35:
          locked = 0;
          goto LABEL_36;
        }

LABEL_148:
        assert_invalid_doc_type(v10);
      }
    }

    locked = *(v8 + 64);
    if (!locked)
    {
      goto LABEL_36;
    }

    v14 = *(locked + 88);
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

  v128 = v8;
  v129 = v8;
  v17 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v19 = CFSetCreateMutable(v17, 0, 0);
  if (*(a1 + 18))
  {
    v20 = 0;
    do
    {
      v21 = v20;
      ContentIndexDocSetIteratorFlatten(v9[v20], Mutable, v19, 0);
      v20 = v21 + 1;
    }

    while (v21 + 1 < *(a1 + 18));
  }

  v22 = v131;
  if (*(a1 + 52))
  {
    *buf = a1[1];
    *&buf[8] = 0u;
    v151 = 0u;
    v152 = 0;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v24 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v143 = HIDWORD(v24);
    v144 = v24;
    v142 = __PAIR64__(v25, v26);
    v27 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
    v28 = *(v27 + 312);
    v29 = *(v27 + 224);
    if (v29)
    {
      v29(*(v27 + 288));
    }

    v141 = v144;
    v140 = v143;
    v139 = v142;
    if (_setjmp(v27))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v148 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v148, 2u);
      }

      *(v27 + 312) = v28;
      if (__THREAD_SLOT_KEY)
      {
        v30 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v30)
        {
          goto LABEL_130;
        }
      }

      else
      {
        makeThreadId();
        v30 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v30)
        {
          goto LABEL_130;
        }
      }

      v31 = v30;
      if (v30 < 0x801)
      {
LABEL_18:
        v32 = &threadData[9 * v31];
        v34 = *(v32 - 4);
        v33 = v32 - 2;
        if (v34 > v139)
        {
          v35 = v31 - 1;
          do
          {
            CIOnThreadCleanUpPop(v35);
          }

          while (*v33 > v139);
        }

        dropThreadId(v141, 1, add_explicit + 1);
        CICleanUpReset(v141, HIDWORD(v139));
LABEL_107:
        CIIndexSetDisposePerThreadCache(buf);
        if (v147 == 1)
        {
          *(a1 + 58) = 1;
        }

        CFRelease(Mutable);
        CFRelease(v19);
        goto LABEL_110;
      }

LABEL_130:
      makeThreadId();
      v31 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_18;
    }

    v130 = v28;
    v135 = v19;
    v136 = Mutable;
    *(a1 + 53) = 1;
    if (v131 >= 1)
    {
      v54 = v9;
      v55 = v131;
      do
      {
        v56 = v55;
        v57 = v54 + 1;
        ContentIndexDocSetSquashUpdatesForPulse(*v54, 1, *(a1 + 6));
        v54 = v57;
        v55 = v56 - 1;
      }

      while (v56 != 1);
    }

    BulkPayloadIterator_Step(a1[2], &v146, &v145);
    v58 = *(a1 + 6);
    *(a1 + 11) = 1;
    v59 = v58;
    if (v131 >= 1)
    {
      v60 = v9;
      v61 = v131;
      do
      {
        v62 = v61;
        v63 = *(a1 + 6);
        v64 = v60 + 1;
        ContentIndexDocSetSquashUpdate(*v60, 0);
        v60 = v64;
        v61 = v62 - 1;
      }

      while (v62 != 1);
      v59 = v63;
    }

    v133 = add_explicit;
    v137 = v59;
    j = 1;
    ContentIndexDocSetIteratorPreProcess(v9, v131, 0, 1, v59, *(a1 + 7));
    v66 = (*(a1[10] + 56) + 36);
    v67 = atomic_load(v66);
    v68 = atomic_load(v66);
    if ((v67 & 4) != 0 && (v68 & 0x40) != 0 && (v69 = *(a1 + 6), LODWORD(v70) = v69 - 0x4000, v69 > 0x4000))
    {
      v71 = 0;
      v72 = *(a1 + 6);
      if (v69 == 16385)
      {
        v70 = 0;
      }

      else
      {
        v70 = v70;
      }

      v126 = v146;
      v125 = v146 + 0x4000;
      do
      {
        v74 = v70;
        if (v131 >= 1)
        {
          for (i = 0; i != v131; ++i)
          {
            v137 = v72;
            for (j = v74; ContentIndexDocSetIteratorReadPositions(v9[i], a1[1], &j, &v137, v72, *(a1 + 7), v74, v71, a4); j = v74)
            {
              v137 = j;
            }

            ContentIndexDocSetIteratorProcessPositions(v9[i], buf, v74, v72, *(a1 + 7));
          }
        }

        v124 = *(a1 + 7);
        v123 = a1[1];
        processLeaves(v135, v124, 0, v74, v72, v123);
        processNodes(v136, v124, 0, v74, v72, v123);
        if (v74 <= v125)
        {
          v73 = v126;
        }

        else
        {
          v73 = (v74 - 0x4000);
        }

        v70 = v73;
        v71 = (v71 + 1);
        v72 = (v74 - 1);
      }

      while (v74 > v73);
    }

    else
    {
      if (v131 >= 1)
      {
        for (k = 0; k != v131; ++k)
        {
          while (ContentIndexDocSetIteratorReadPositions(v9[k], a1[1], &j, &v137, v58, *(a1 + 7), 1u, 0, a4))
          {
            v137 = j;
            j = 1;
          }

          v87 = *(a1 + 6);
          if (v87)
          {
            ContentIndexDocSetIteratorProcessPositions(v9[k], buf, 1, v87, *(a1 + 7));
          }
        }
      }

      v88 = *(a1 + 6);
      if (v88)
      {
        v89 = *(a1 + 7);
        v90 = a1[1];
        processLeaves(v135, v89, 0, 1, *(a1 + 6), v90);
        processNodes(v136, v89, 0, 1, v88, v90);
      }
    }

    v10 = v129;
    v91 = *(v129 + 48);
    if (v91 <= 3)
    {
      v19 = v135;
      Mutable = v136;
      v92 = v133;
      if (v91 < 3)
      {
        goto LABEL_98;
      }

      if (v91 != 3)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v19 = v135;
      Mutable = v136;
      v92 = v133;
      if ((v91 - 4) < 4)
      {
        goto LABEL_91;
      }

      if (v91 != 8)
      {
        if (v91 != 9)
        {
          goto LABEL_148;
        }

LABEL_91:
        v93 = *(v128 + 80);
        if (v93)
        {
LABEL_92:
          v94 = lockedCountItemsInRange(v93, *(a1 + 11), *(a1 + 10) - 1, v65);
          goto LABEL_99;
        }

LABEL_98:
        v94 = 0;
LABEL_99:
        if (dword_1EBF46AF4 >= 5)
        {
          v112 = *__error();
          v113 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            v114 = *(a1 + 11);
            v115 = *(a1 + 10) - 1;
            *v148 = 67109376;
            *v149 = v114;
            *&v149[4] = 1024;
            *&v149[6] = v115;
            _os_log_impl(&dword_1C278D000, v113, OS_LOG_TYPE_DEFAULT, "OID Range %d to %d", v148, 0xEu);
          }

          *__error() = v112;
          v19 = v135;
          Mutable = v136;
          v92 = v133;
          if (!a3)
          {
            goto LABEL_102;
          }
        }

        else if (!a3)
        {
LABEL_102:
          v96 = *__error();
          v97 = _SILogForLogForCategory(10);
          v98 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v97, v98))
          {
            *v148 = 134217984;
            *v149 = v94;
            _os_log_impl(&dword_1C278D000, v97, v98, "Found: %ld", v148, 0xCu);
          }

          *__error() = v96;
          v99 = *(a1 + 7);
          *(a1 + 8) = 1;
          *(a1 + 9) = v99;
          *a2 += v94;
          v147 = 0;
          v100 = threadData[9 * v141 + 1] + 320 * v140;
          *(v100 + 312) = v130;
          v101 = *(v100 + 232);
          if (v101)
          {
            v101(*(v100 + 288));
          }

          dropThreadId(v141, 0, v92 + 1);
          goto LABEL_107;
        }

        v95 = (*(a1 + 10) - *(a1 + 11)) - v94;
        v94 = v95 & ~(v95 >> 63);
        goto LABEL_102;
      }
    }

    v109 = *(v129 + 64);
    if (v109)
    {
      v93 = *(v109 + 88);
      if (v93)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_98;
  }

  v36 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v37 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v36 + 1);
  v144 = HIDWORD(v37);
  *v148 = v37;
  v143 = v38;
  HIDWORD(v142) = v39;
  v40 = threadData[9 * v37 + 1] + 320 * HIDWORD(v37);
  v41 = *(v40 + 312);
  v42 = *(v40 + 224);
  if (v42)
  {
    v42(*(v40 + 288));
  }

  LODWORD(v142) = *v148;
  v141 = v144;
  v140 = v143;
  HIDWORD(v139) = HIDWORD(v142);
  if (!_setjmp(v40))
  {
    v127 = v41;
    if (v12 != v11)
    {
      ContentIndexDocSetIteratorPreProcess(v9, v131, 1, v12, v11, *(a1 + 7));
      _CIDocSetIteratorProcessPositionsUpdates(v9, v131, v12, v11, *(a1 + 7), *(*a1 + 40));
      v76 = *(a1 + 7);
      v77 = a1[1];
      processLeaves(v19, v76, 1, v12, v11, v77);
      processNodes(Mutable, v76, 1, v12, v11, v77);
    }

    if (dword_1EBF46AF4 >= 5)
    {
      v110 = *__error();
      v111 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v12;
        *&buf[8] = 1024;
        *&buf[10] = v11;
        _os_log_impl(&dword_1C278D000, v111, OS_LOG_TYPE_DEFAULT, "Updates from %d to %d", buf, 0xEu);
      }

      *__error() = v110;
    }

    v78 = *a1;
    v79 = *(*a1 + 24);
    if (v79)
    {
      if (v79 != (*(*v9 + 56) + 14184))
      {
        v120 = __si_assert_copy_extra_332();
        v121 = v120;
        v122 = "";
        if (v120)
        {
          v122 = v120;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 4072, "iterator->context->positionLock == ContentIndexGetPositionsLock(iterator->docSets[0]->ref)", v122);
        free(v121);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      posreadunlock(v79);
      v80 = *a1;
      *(v80 + 24) = 0;
      v78 = v80;
    }

    *(a1 + 52) = 1;
    *(a1 + 54) = 1;
    *(a1 + 8) = v12;
    *(a1 + 9) = v11;
    v81 = *(v78 + 36);
    if (v11 + 1 < v81)
    {
      v81 = v11 + 1;
    }

    *(a1 + 10) = v81;
    *(a1 + 11) = v12;
    BulkPayloadIterator_Step(a1[2], &v146, &v145);
    v82 = *(a1 + 9);
    if (v131 < 1)
    {
      v85 = *(a1 + 9);
    }

    else
    {
      do
      {
        v83 = *v9++;
        v84 = ContentIndexDocSetSquashUpdatesForPulse(v83, *(a1 + 8), v82);
        v85 = v84;
        *(a1 + 9) = v84;
        v82 = v84;
        --v22;
      }

      while (v22);
    }

    v104 = *(a1 + 7);
    v103 = *(a1 + 8);
    v105 = a1[1];
    processLeaves(v19, v104, 0, v103, v85, v105);
    processNodes(Mutable, v104, 0, v103, v85, v105);
    if (dword_1EBF46AF4 > 4)
    {
      v116 = *__error();
      v117 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v118 = *(a1 + 8);
        v119 = *(a1 + 9);
        *buf = 67109376;
        *&buf[4] = v118;
        *&buf[8] = 1024;
        *&buf[10] = v119;
        _os_log_impl(&dword_1C278D000, v117, OS_LOG_TYPE_DEFAULT, "1 Disk from %d to %d", buf, 0xEu);
      }

      *__error() = v116;
    }

    v147 = 0;
    v106 = threadData[9 * v142 + 1] + 320 * v141;
    *(v106 + 312) = v127;
    v107 = *(v106 + 232);
    if (v107)
    {
      v107(*(v106 + 288));
    }

    dropThreadId(v142, 0, v36 + 1);
    goto LABEL_116;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v40 + 312) = v41;
  if (__THREAD_SLOT_KEY)
  {
    v43 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v43)
    {
LABEL_132:
      makeThreadId();
      v44 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_30;
    }
  }

  else
  {
    makeThreadId();
    v43 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v43)
    {
      goto LABEL_132;
    }
  }

  v44 = v43;
  if (v43 >= 0x801)
  {
    goto LABEL_132;
  }

LABEL_30:
  v45 = &threadData[9 * v44];
  v47 = *(v45 - 4);
  v46 = v45 - 2;
  if (v47 > HIDWORD(v139))
  {
    v48 = v44 - 1;
    do
    {
      CIOnThreadCleanUpPop(v48);
    }

    while (*v46 > HIDWORD(v139));
  }

  dropThreadId(v142, 1, v36 + 1);
  CICleanUpReset(v142, v140);
LABEL_116:
  CFRelease(Mutable);
  CFRelease(v19);
  if (v147 == 1)
  {
    *(a1 + 58) = 1;
  }

  if (v147)
  {
    result = 0;
  }

  else
  {
    result = 35;
  }

LABEL_121:
  v108 = *MEMORY[0x1E69E9840];
  return result;
}

void ContentIndexDocSetIteratorPreProcess(uint64_t *a1, int a2, char a3, int a4, int a5, int a6)
{
  LODWORD(v10) = a2;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (v10)
  {
    v10 = v10;
    do
    {
      v13 = *a1++;
      ContentIndexDocSetIteratorFlatten(v13, Mutable, 0, 1);
      --v10;
    }

    while (v10);
  }

  Count = CFSetGetCount(Mutable);
  v15 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  CFSetGetValues(Mutable, v15);
  do
  {
    if (Count)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = Count;
      do
      {
        v20 = v15[v18];
        if (v20[8])
        {
          v19 = (v19 - 1);
          if (v18 < v19)
          {
            v15[v18] = v15[v19];
            v15[v19] = v20;
          }
        }

        else
        {
          v21 = v20[12];
          v22 = v21 - 4 < 4 || v21 == 9;
          if (v22 && (v23 = v20[24], v23))
          {
            v24 = *(v20 + 9);
            while (*(*v24 + 32) == 1)
            {
              v24 += 8;
              if (!--v23)
              {
                goto LABEL_22;
              }
            }

            v16 = 1;
          }

          else
          {
LABEL_22:
            if (v17 < v18)
            {
              v25 = v15[v17];
              v15[v17] = v20;
              v15[v18] = v25;
            }

            ++v17;
          }

          ++v18;
        }
      }

      while (v18 < v19);
    }

    else
    {
      v19 = 0;
      v17 = 0;
      v16 = 0;
    }

    if (Count < v19)
    {
      v26 = __si_assert_copy_extra_332();
      v27 = v26;
      v28 = "";
      if (v26)
      {
        v28 = v26;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3496, "oldNodeCount >= nodeCount", v28);
LABEL_42:
      free(v27);
      if (__valid_fs(-1))
      {
        v33 = 2989;
      }

      else
      {
        v33 = 3072;
      }

      *v33 = -559038737;
      abort();
    }

    if (v19 && !v17)
    {
      v29 = __si_assert_copy_extra_332();
      v27 = v29;
      v30 = "";
      if (v29)
      {
        v30 = v29;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3506, "processCount || nodeCount == 0", v30);
      goto LABEL_42;
    }

    v39 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ContentIndexDocSetIteratorPreProcess_block_invoke;
    block[3] = &__block_descriptor_tmp_28_6446;
    block[4] = &v39;
    block[5] = v15;
    v38 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    block[6] = &v39 + 1;
    dispatch_apply(v17, 0, block);
    if ((v39 & 0x100) != 0)
    {
      v31 = __si_assert_copy_extra_332();
      v27 = v31;
      v32 = "";
      if (v31)
      {
        v32 = v31;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3535, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v32);
      goto LABEL_42;
    }

    if (v39)
    {
      break;
    }

    Count = v19;
  }

  while (((v19 != 0) & v16) != 0);
  CFRelease(Mutable);
  free(v15);
}

uint64_t ContentIndexDocSetSquashUpdatesForPulse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 48);
  if ((v6 - 4) < 4)
  {
    if (*(a1 + 96))
    {
      v7 = 0;
      do
      {
        v3 = ContentIndexDocSetSquashUpdatesForPulse(*(*(a1 + 72) + 8 * v7++), a2, v3);
      }

      while (v7 < *(a1 + 96));
    }

    return v3;
  }

  if (v6 != 3)
  {
    return v3;
  }

  v8 = *(a1 + 64);
  if (!v8 || PayloadIterator_ConsumeUpdates(v8, a2) <= a3)
  {
    return v3;
  }

  v9 = *(a1 + 64);

  return PayloadIterator_ConsumeUpdates(v9, a2);
}

uint64_t ContentIndexDocSetIteratorReadPositions(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, _BYTE *a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = *a4;
  v47 = *a4;
  v48 = v9;
  if (*a9)
  {
    goto LABEL_7;
  }

  if (v10 < v9)
  {
    v47 = v9;
    v10 = v9;
  }

  v16 = 0x1EBF46000uLL;
  if (dword_1EBF46AF4 >= 5)
  {
    v38 = *__error();
    v39 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v50 = v9;
      v51 = 1024;
      v52 = v10;
      v53 = 1024;
      v54 = a5;
      _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "from %d to %d, with old end at %d", buf, 0x14u);
    }

    *__error() = v38;
    v16 = 0x1EBF46000;
  }

  v17 = *(a1 + 48);
  if (v17 > 9)
  {
    assert_invalid_doc_type(a1);
  }

  v18 = 1 << v17;
  if ((v18 & 0x10F) != 0)
  {
LABEL_7:
    LOBYTE(v19) = 0;
  }

  else if ((v18 & 0xF0) != 0)
  {
    v20 = *(a1 + 96);
    if (v20)
    {
      v21 = 0;
      v19 = 0;
      while (1)
      {
        *buf = *a3;
        v46 = *a4;
        v22 = *(*(a1 + 72) + 8 * v21);
        if (v22 != a1)
        {
          v19 |= ContentIndexDocSetIteratorReadPositions(v22, a2, buf, &v46, a5, a6, a7, a8, a9);
          if (v9 <= *buf)
          {
            v9 = *buf;
          }

          if (v10 >= v46)
          {
            v10 = v46;
          }

          if (*a9)
          {
            goto LABEL_20;
          }

          v20 = *(a1 + 96);
        }

        if (++v21 >= v20)
        {
          goto LABEL_20;
        }
      }
    }

    LOBYTE(v19) = 0;
LABEL_20:
    *a3 = v9;
    *a4 = v10;
  }

  else
  {
    if (!*(a1 + 104))
    {
      *(a1 + 104) = NormalResolvedDocSet(a6);
    }

    if (v9 <= v10)
    {
      v25 = *(a1 + 128);
      v26 = v25 & 0x7FFFFFFF;
      if (v25 < 0)
      {
        if (v26)
        {
          v30 = 0;
          v31 = 8 * v26;
          do
          {
            v32 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + v30));
            if (v32)
            {
              CIIndexSetRemoveRange(*(a1 + 104), v32, v9, v10);
            }

            v30 += 8;
          }

          while (v31 != v30);
        }
      }

      else if (v26)
      {
        v27 = 0;
        v28 = 8 * (v25 & 0x7FFFFFFF);
        do
        {
          v29 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + v27));
          if (v29)
          {
            CIIndexSetIntersectRanges(*(a1 + 104), v29, v9, v10);
          }

          v27 += 8;
        }

        while (v28 != v27);
      }

      v34 = *(a1 + 104);
      v33 = *(a1 + 112);
      if (*(v33 + 3176) == 1)
      {
        v35 = BulkPositionIterator_Step_Compressed(*(a1 + 56), v33, a2, &v48, &v47, a5, v34, a7, a8, a9);
      }

      else
      {
        if (a7 != 1)
        {
          v40 = __si_assert_copy_extra(0);
          v41 = v40;
          v42 = "";
          if (v40)
          {
            v42 = v40;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 5454, "limit == 1", v42);
          free(v41);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v35 = BulkPositionIterator_Step_Live(v33, a2, &v48, &v47, a5, v34, a9);
      }

      LOBYTE(v19) = v35;
      v9 = v48;
    }

    else
    {
      LOBYTE(v19) = 0;
    }

    *a3 = v9;
    *a4 = v10;
    if (*(v16 + 2804) >= 5)
    {
      v36 = *__error();
      v37 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v50 = v9;
        v51 = 1024;
        v52 = v10;
        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "actually from %d to %d", buf, 0xEu);
      }

      *__error() = v36;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19 & 1;
}

void ContentIndexDocSetIteratorProcessPositions(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v204 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AF4 >= 5)
  {
    v46 = *__error();
    v47 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block) = 67109376;
      DWORD1(block) = a3;
      WORD4(block) = 1024;
      *(&block + 10) = a4;
      _os_log_impl(&dword_1C278D000, v47, OS_LOG_TYPE_DEFAULT, "from %d to %d", &block, 0xEu);
    }

    *__error() = v46;
    v7 = a3;
  }

  v10 = *(a1 + 48);
  if (v10 > 9)
  {
    assert_invalid_doc_type(a1);
  }

  v11 = 1 << v10;
  if ((v11 & 0x10F) == 0)
  {
    if ((v11 & 0xF0) != 0)
    {
      if (*(a1 + 96))
      {
        v12 = 0;
        do
        {
          ContentIndexDocSetIteratorProcessPositions(*(*(a1 + 72) + 8 * v12++), a2, v7, a4, a5);
        }

        while (v12 < *(a1 + 96));
      }

      goto LABEL_8;
    }

    LODWORD(v182) = a5;
    LODWORD(v183) = v7;
    v184 = a4;
    v185 = a1;
    v14 = *(a1 + 112);
    v188 = a2;
    v15 = *a2;
    v16 = *(v14 + 3348);
    if (v16)
    {
      v17 = 0;
      v187 = v14 + 24;
      v18 = v14;
      v186 = v14;
      do
      {
        v19 = v187 + 392 * v17;
        v20 = *(v19 + 384);
        if (*(v20 + 20))
        {
          v21 = 0;
          do
          {
            v22 = v18 + 4 * v21;
            v23 = *(v22 + 344);
            if (v23)
            {
              v24 = *(v20 + 8 * v21 + 32);
              v25 = v18 + 8 * v21;
              v26 = *(v25 + 216);
              v27 = *(v20 + 19) ^ 1;
              *&block = MEMORY[0x1E69E9820];
              *(&block + 1) = 0x40000000;
              *&v198 = ___innerIssueBuffer_block_invoke;
              *(&v198 + 1) = &__block_descriptor_tmp_62_13736;
              v202 = v23;
              v199 = v15;
              v200 = v26;
              v203 = v27;
              v201 = 0;
              dispatch_async(v24, &block);
              *(v22 + 344) = 0;
              *(v25 + 216) = 0;
              v20 = *(v19 + 384);
            }

            ++v21;
          }

          while (v21 < *(v20 + 20));
          v14 = v186;
          v16 = *(v186 + 3348);
        }

        ++v17;
        v18 += 392;
      }

      while (v17 < v16);
    }

    else
    {
      v28 = *(v14 + 408);
      if (*(v28 + 20))
      {
        v29 = 0;
        v30 = v14 + 344;
        do
        {
          v31 = *(v30 + 4 * v29);
          if (v31)
          {
            v32 = *(v28 + 8 * v29 + 32);
            v33 = v30 + 8 * v29;
            v34 = *(v33 - 128);
            v35 = *(v28 + 19) ^ 1;
            *&block = MEMORY[0x1E69E9820];
            *(&block + 1) = 0x40000000;
            *&v198 = ___innerIssueBuffer_block_invoke;
            *(&v198 + 1) = &__block_descriptor_tmp_62_13736;
            v202 = v31;
            v199 = v15;
            v200 = v34;
            v203 = v35;
            v201 = 0;
            dispatch_async(v32, &block);
            *(v30 + 4 * v29) = 0;
            *(v33 - 128) = 0;
            v28 = *(v14 + 408);
          }

          ++v29;
        }

        while (v29 < *(v28 + 20));
      }
    }

    if (*(v14 + 3180))
    {
      v36 = 0;
      do
      {
        dispatch_barrier_sync(*(v14 + 3192 + 8 * v36++), &__block_literal_global_65);
      }

      while (v36 < *(v14 + 3180));
    }

    dispatch_barrier_sync(*(v14 + 3184), &__block_literal_global_68);
    v37 = v185;
    v38 = v184;
    if (!*(v185 + 80))
    {
      *(v185 + 80) = CIIndexSetCreateWithRange(0, v182, 1);
    }

    v39 = v183;
    if (v183 <= v38)
    {
      block = 0u;
      v198 = 0u;
      initializeEnumberatorForRangeLocked(&block, *(v37 + 104), v183, v38);
      if (dword_1EBF46AF4 >= 5)
      {
        v48 = *__error();
        v49 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109376;
          DWORD1(buf) = v183;
          WORD4(buf) = 1024;
          *(&buf + 10) = v184;
          _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "Read range: %d %d", &buf, 0xEu);
        }

        *__error() = v48;
        v37 = v185;
        v38 = v184;
        v39 = v183;
      }

      locked = lockedCountItemsInRange(*(v37 + 104), v39, v38, v40);
      if (dword_1EBF46AF4 >= 5)
      {
        v50 = locked;
        v51 = *__error();
        v52 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v50;
          _os_log_impl(&dword_1C278D000, v52, OS_LOG_TYPE_DEFAULT, "%d items", &buf, 8u);
        }

        *__error() = v51;
        v37 = v185;
        locked = v50;
        v43 = *(v185 + 132);
        if (v43)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v43 = *(v37 + 132);
        if (v43)
        {
LABEL_32:
          v44 = *(*(v37 + 136) + 4 * (v43 - 1));
LABEL_43:
          v178 = v44;
          v53 = 0;
          LODWORD(v186) = locked;
          v54 = locked;
          *&v42 = 67109120;
          v176 = v42;
          *&v42 = 67109376;
          v177 = v42;
          while (1)
          {
            while (1)
            {
              v55 = _CIIndexSetEnumeratorNext(&block);
              v56 = (v55 - 1) > 0xFFFFFFFD || v53 >= v54;
              if (v56)
              {
                goto LABEL_156;
              }

              buf = 0u;
              v196 = 0u;
              v57 = *(**(v37 + 72) + 72);
              if (v53 < *(v57 + 168))
              {
                if (*(*(v57 + 160) + 8 * v53))
                {
                  break;
                }
              }

              if (dword_1EBF46AF4 >= 5)
              {
                v147 = v55;
                v148 = *__error();
                v149 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                {
                  v150 = *(*(**(v37 + 72) + 72) + 168);
                  *v191 = v177;
                  v192 = v147;
                  v193 = 1024;
                  v194 = v150;
                  _os_log_impl(&dword_1C278D000, v149, OS_LOG_TYPE_DEFAULT, "!!! No: %d (size %d)", v191, 0xEu);
                }

                *__error() = v148;
              }

              ++v53;
            }

            v184 = v55;
            v183 = v174;
            v58 = 5 * *(v37 + 96);
            MEMORY[0x1EEE9AC00](v55);
            v60 = &v174[-((v59 + 15) & 0x7FFFFFFFF0)];
            bzero(v60, v59);
            v61 = *(v37 + 96);
            bzero(v60, 40 * v61);
            if (v61)
            {
              v62 = 0;
              v63 = *(v37 + 72);
              v64 = v60 + 1;
              while (1)
              {
                v65 = *(*(v63 + 8 * v62) + 72);
                if (*(v65 + 168) <= v53)
                {
                  break;
                }

                v66 = *(*(v65 + 160) + 8 * v53);
                *(v64 - 1) = v66;
                *v64 = v62;
                if (!v66)
                {
                  goto LABEL_45;
                }

                ++v62;
                v64 += 10;
                if (v61 == v62)
                {
                  goto LABEL_57;
                }
              }

LABEL_156:
              bzero(v190, 0x400uLL);
              if (*(v37 + 96))
              {
                v157 = v186 == 0;
              }

              else
              {
                v157 = 1;
              }

              if (!v157)
              {
                v158 = 0;
                v159 = 0;
                v160 = *(v37 + 72);
                do
                {
                  v161 = 0;
                  v162 = *(*(v160 + 8 * v158) + 72);
                  v163 = *(v162 + 160);
                  v187 = v162;
                  do
                  {
                    if (v161 >= *(v162 + 168))
                    {
                      break;
                    }

                    v164 = *(v163 + 8 * v161);
                    if (v164)
                    {
                      if (v159 == 127)
                      {
                        v165 = v54;
                        v166 = 0;
                        v167 = 0;
                        do
                        {
                          v168 = v190[v166];
                          if (*(v168 + 16) <= 0xFFFFFFF6)
                          {
                            blob_free(*(v168 + 40), *(v168 + 32), v188);
                            *(v168 + 32) = 0;
                          }

                          *(v168 + 40) = v167;
                          ++v166;
                          v167 = v168;
                        }

                        while (v166 != 127);
                        cicachelistenqueue(*v188 + 8, v168, 20);
                        v159 = 0;
                        v54 = v165;
                        v162 = v187;
                      }

                      v190[v159++] = v164;
                    }

                    *(v163 + 8 * v161) = 0;
                    if (dword_1EBF46AF4 >= 5)
                    {
                      v184 = *__error();
                      v169 = _SILogForLogForCategory(10);
                      if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                      {
                        *&buf = __PAIR64__(v161, v177);
                        WORD4(buf) = 1024;
                        *(&buf + 10) = v158;
                        _os_log_impl(&dword_1C278D000, v169, OS_LOG_TYPE_DEFAULT, "Cleaning up %d for child %d", &buf, 0xEu);
                      }

                      *__error() = v184;
                    }

                    ++v161;
                  }

                  while (v161 != v54);
                  v170 = v185;
                  v160 = *(v185 + 72);
                  v171 = *(*(v160 + 8 * v158) + 72);
                  if (v186 < *(v171 + 168))
                  {
                    v172 = 0;
                    v173 = v54;
                    do
                    {
                      *(*(v171 + 160) + v172) = *(*(v171 + 160) + 8 * v173);
                      *(*(*(*(*(v170 + 72) + 8 * v158) + 72) + 160) + 8 * v173++) = 0;
                      v160 = *(v170 + 72);
                      v171 = *(*(v160 + 8 * v158) + 72);
                      v172 += 8;
                    }

                    while (v173 < *(v171 + 168));
                  }

                  ++v158;
                }

                while (v158 < *(v170 + 96));
                if (v159)
                {
                  CIIndexSetReleaseToCache(v190, v159, v188);
                }
              }

              goto LABEL_8;
            }

LABEL_57:
            v67 = *(v37 + 36);
            if (!v67)
            {
              goto LABEL_66;
            }

            if (v67 != 3)
            {
              goto LABEL_75;
            }

            if (*(v37 + 132))
            {
              *(v60 + 4) = 0;
              if (v61 <= 1)
              {
                qsort(v60, v61, 0x28uLL, compare_indexSetByCount);
                goto LABEL_125;
              }

              v68 = 0;
              v69 = *(v37 + 136);
              v70 = v61 - 1;
              v71 = v60 + 7;
              do
              {
                v72 = *v69++;
                v68 += v72;
                *v71 = v68;
                v71 += 10;
                --v70;
              }

              while (v70);
            }

            else
            {
LABEL_66:
              *(v60 + 3) = 0;
              if (v61 < 2)
              {
                goto LABEL_75;
              }

              if (v61 == 2)
              {
                v73 = 1;
                goto LABEL_73;
              }

              v74 = v61 - 1;
              v75 = (v60 + 12);
              v76 = 2;
              v77 = (v61 - 1) & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                *(v75 - 10) = v76 - 1;
                *v75 = v76;
                v75 += 20;
                v76 += 2;
                v77 -= 2;
              }

              while (v77);
              if (v74 != ((v61 - 1) & 0xFFFFFFFFFFFFFFFELL))
              {
                v73 = v74 | 1;
LABEL_73:
                v78 = &v60[5 * v73 + 2];
                do
                {
                  *v78 = v73;
                  v78 += 10;
                  ++v73;
                }

                while (v61 != v73);
              }
            }

LABEL_75:
            qsort(v60, v61, 0x28uLL, compare_indexSetByCount);
            if (v67 && v67 != 3)
            {
              v79 = *(v37 + 96);
              v80 = v178;
              if (v79 >= 2)
              {
                v81 = 0;
                v82 = *(v37 + 132);
                v83 = v79 - 1;
                v84 = v60 + 52;
                do
                {
                  v85 = v81 + 1;
                  v86 = v80;
                  if (v81 + 1 <= v82)
                  {
                    v86 = *(*(v37 + 136) + 4 * v81);
                  }

                  *(v84 + 3) = v86;
                  *v84 = 0;
                  v84[8] = 0;
                  v84 += 40;
                  ++v81;
                }

                while (v83 != v85);
              }

              *(v60 + 20) = 0;
              *(v60 + 12) = 0;
              initializeEnumberatorForRangeLocked(&buf, *v60, 0, 0x7FFFFFFFu);
              LODWORD(v187) = 0;
              v179 = v60 + 3;
              v180 = v60 - 1;
              v87 = -1;
              v181 = v184;
              v182 = v60 + 4;
              while (1)
              {
                do
                {
                  v88 = _CIIndexSetEnumeratorNext(&buf);
                  if (v88 - 1 > 0xFFFFFFFD)
                  {
                    goto LABEL_45;
                  }

                  v189 = v87;
                  v89 = *(v60 + 2);
                  v90 = v89;
                  LODWORD(v60[5 * v89 + 2]) = v88;
                  v91 = *(v37 + 96);
                  v92 = &v60[5 * v89];
                  v93 = *(v92 + 4);
                  *(v92 + 7) = v93;
                  *(v92 + 8) = v93;
                  *(v92 + 20) = 1;
                  if (v67 == 2)
                  {
                    if (v89 + 1 < v91)
                    {
                      v107 = v91 - 1;
                      v108 = v93 + 1;
                      v109 = &v182[5 * v89 + 5];
                      v110 = v89;
                      do
                      {
                        *(v109 - 12) = 0;
                        v111 = *(v109 - 2) + LODWORD(v60[5 * v110 + 4]);
                        *(v109 - 1) = v108;
                        *v109 = v111;
                        ++v110;
                        ++v108;
                        v109 += 10;
                      }

                      while (v107 != v110);
                    }

                    if (v89)
                    {
                      v112 = &v179[5 * v89];
                      v113 = &v182[5 * v89 - 5];
                      v114 = -v89;
                      v115 = 1;
                      do
                      {
                        *(v113 - 12) = 0;
                        v116 = *(v113 - 1);
                        v117 = *v112;
                        v112 -= 10;
                        v56 = v116 >= v117;
                        v118 = v116 - v117;
                        if (!v56)
                        {
                          v118 = 0;
                        }

                        v119 = v93 - v115;
                        if (v93 < v115)
                        {
                          v119 = 0;
                        }

                        *(v113 - 1) = v118;
                        *v113 = v119;
                        v113 -= 10;
                        ++v115;
                      }

                      while (v114 + v115 != 1);
                    }
                  }

                  else if (v67 == 1)
                  {
                    if (v89 + 1 < v91)
                    {
                      v94 = v91 - 1;
                      v95 = &v182[5 * v89 + 5];
                      v96 = v89;
                      do
                      {
                        *(v95 - 12) = 0;
                        v97 = &v60[5 * v96];
                        v98 = *(v95 - 2);
                        v100 = *(v97 + 7);
                        v99 = *(v97 + 8);
                        v56 = v100 >= v98;
                        v101 = v100 - v98;
                        if (!v56)
                        {
                          v101 = 0;
                        }

                        *(v95 - 1) = v101;
                        *v95 = v99 + v98;
                        ++v96;
                        v95 += 10;
                      }

                      while (v94 != v96);
                    }

                    if (v89)
                    {
                      v102 = &v60[5 * v89];
                      v103 = *(v102 + 7);
                      v104 = *(v102 + 8);
                      v105 = &v180[5 * v90];
                      do
                      {
                        *(v105 - 12) = 0;
                        v106 = *(v105 - 2);
                        v56 = v103 >= v106;
                        v103 -= v106;
                        if (!v56)
                        {
                          v103 = 0;
                        }

                        v104 += v106;
                        *(v105 - 1) = v103;
                        *v105 = v104;
                        v105 -= 10;
                        --v90;
                      }

                      while (v90);
                    }
                  }

                  if (*(v37 + 144))
                  {
                    v120 = &v189;
                  }

                  else
                  {
                    v120 = 0;
                  }
                }

                while (!checkNearness(1u, v37, v88, v60, v88, v88, v120, v67));
                v122 = v189;
                v123 = v37;
                v124 = ++v189;
                v125 = *(v123 + 144);
                if (v125 && v124 < v87)
                {
                  changesSetMinCount(v125, v181, v122 + 1);
                  v87 = v124;
                }

                v37 = v185;
                if (dword_1EBF46AF4 >= 5)
                {
                  v175 = *__error();
                  v126 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                  {
                    *v191 = v176;
                    v192 = v184;
                    _os_log_impl(&dword_1C278D000, v126, OS_LOG_TYPE_DEFAULT, "Yes: %d", v191, 8u);
                  }

                  *__error() = v175;
                  if (v187)
                  {
LABEL_116:
                    if (!*(v37 + 144))
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_122;
                  }
                }

                else if (v187)
                {
                  goto LABEL_116;
                }

                v127 = *(v37 + 80);
                *v191 = -1;
                _CIIndexSetAddIndex(v127, v184, 0, v191, v121);
                if (!*(v37 + 144))
                {
                  goto LABEL_45;
                }

LABEL_122:
                if (v87 == *(v37 + 96))
                {
                  goto LABEL_45;
                }

                LODWORD(v187) = 1;
              }
            }

LABEL_125:
            v128 = *(v37 + 96);
            if (v128 < 2)
            {
              goto LABEL_134;
            }

            v129 = *(v60 + 4);
            if (v128 == 2)
            {
              v130 = 1;
              goto LABEL_132;
            }

            v131 = v128 - 1;
            v132 = v60 + 12;
            v133 = (v128 - 1) & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v134 = *v132 - v129;
              *(v132 - 11) = *(v132 - 10) - v129;
              *(v132 - 1) = v134;
              v132 += 20;
              v133 -= 2;
            }

            while (v133);
            if (v131 != ((v128 - 1) & 0xFFFFFFFFFFFFFFFELL))
            {
              v130 = v131 | 1;
LABEL_132:
              v135 = v128 - v130;
              v136 = &v60[5 * v130 + 2];
              do
              {
                *(v136 - 1) = *v136 - v129;
                v136 += 10;
                --v135;
              }

              while (v135);
            }

LABEL_134:
            *(v60 + 3) = 0;
            initializeEnumberatorForRangeLocked(&buf, *v60, 0, 0x7FFFFFFFu);
            if (dword_1EBF46AF4 > 4)
            {
              v151 = *__error();
              v152 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
              {
                *v191 = v177;
                v192 = buf;
                v193 = 1024;
                v194 = DWORD1(buf);
                _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "Enumerator for range: %d %d", v191, 0xEu);
              }

              *__error() = v151;
              v37 = v185;
            }

            v137 = v60 + 13;
LABEL_136:
            v138 = _CIIndexSetEnumeratorNext(&buf);
            if ((v138 + 1) < 2)
            {
              *&buf = 0xFFFFFFFF00000000;
              if (dword_1EBF46AF4 >= 5)
              {
                v155 = *__error();
                v156 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = v176;
                  v192 = v184;
                  _os_log_impl(&dword_1C278D000, v156, OS_LOG_TYPE_DEFAULT, "No: %d", v191, 8u);
                }

                *__error() = v155;
                v37 = v185;
              }
            }

            else
            {
              v140 = v138;
              v141 = 0;
              v142 = v137;
              while (++v141 < *(v37 + 96))
              {
                v143 = v142 + 10;
                v144 = *(v142 - 3);
                if (v144)
                {
                  HasIndex = CIIndexSetHasIndex(v144, *v142 + v140);
                  v142 = v143;
                  if (HasIndex)
                  {
                    continue;
                  }
                }

                goto LABEL_136;
              }

              if (dword_1EBF46AF4 >= 5)
              {
                v153 = *__error();
                v154 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = v176;
                  v192 = v184;
                  _os_log_impl(&dword_1C278D000, v154, OS_LOG_TYPE_DEFAULT, "Yes: %d", v191, 8u);
                }

                *__error() = v153;
                v37 = v185;
              }

              v146 = *(v37 + 80);
              *v191 = -1;
              _CIIndexSetAddIndex(v146, v184, 0, v191, v139);
              *&buf = 0xFFFFFFFF00000000;
            }

LABEL_45:
            ++v53;
          }
        }
      }

      v44 = 5;
      goto LABEL_43;
    }
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t checkNearness(unsigned int a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int *a7, int a8)
{
  v9 = a4 + 40 * a1;
  v10 = *v9;
  if (*v9)
  {
    v17 = *(a2 + 96);
    memset(v97, 0, sizeof(v97));
    v18 = a4 + 40 * *(v9 + 8);
    initializeEnumberatorForRangeLocked(v97, v10, *(v18 + 28), *(v18 + 32));
    v91 = a2;
    v92 = a7;
    if (a7)
    {
      v19 = *a7;
    }

    else
    {
      v19 = -1;
    }

    v95 = v19;
    v93 = 0;
    v21 = a1 + 1;
    v94 = v17 - 2 - a1 + 1;
    v22 = v17 - 1;
    while (1)
    {
      while (1)
      {
        do
        {
          v25 = _CIIndexSetEnumeratorNext(v97);
          if ((v25 - 1) > 0xFFFFFFFD)
          {
LABEL_116:
            v20 = v93;
            return v20 & 1;
          }
        }

        while (v25 == a3);
        *(v9 + 12) = v25;
        v26 = *(v9 + 8);
        *(a4 + 40 * v26 + 16) = v25;
        if (v21 < v17)
        {
          v27 = a1 + 1;
          if (v17 - 2 == a1)
          {
            goto LABEL_21;
          }

          v28 = (a4 + 40 * v21 + 48);
          v29 = v94 & 0x1FFFFFFFELL;
          do
          {
            v30 = *(v28 - 10);
            v31 = *v28;
            v28 += 20;
            *(a4 + 40 * v30 + 20) = 0;
            *(a4 + 40 * v31 + 20) = 0;
            v29 -= 2;
          }

          while (v29);
          v27 = (v94 & 0x1FFFFFFFELL) + v21;
          if (v94 != (v94 & 0x1FFFFFFFELL))
          {
LABEL_21:
            v32 = v17 - v27;
            v33 = (a4 + 8 + 40 * v27);
            do
            {
              v34 = *v33;
              v33 += 10;
              *(a4 + 40 * v34 + 20) = 0;
              --v32;
            }

            while (v32);
          }
        }

        v35 = a4 + 40 * v26;
        v36 = *(v35 + 16);
        *(v35 + 28) = v36;
        *(v35 + 32) = v36;
        *(v35 + 20) = 1;
        if (a8 <= 1)
        {
          break;
        }

        if (a8 == 2)
        {
          if (v26 + 1 >= v17)
          {
LABEL_46:
            if (!v26)
            {
              goto LABEL_7;
            }

            v53 = 40 * v26 + 24;
            v54 = 40 * (v26 - 1);
            v55 = 1;
            v56 = a4;
            while (1)
            {
              v57 = (v56 + v54);
              if (*(v56 + v54 + 20) == 1)
              {
                break;
              }

              v58 = v57[7];
              v59 = *(v56 + v53);
              v66 = v58 >= v59;
              v60 = v58 - v59;
              if (!v66)
              {
                v60 = 0;
              }

              v61 = v36 - v55;
              if (v36 < v55)
              {
                v61 = 0;
              }

              v57[7] = v60;
              v57[8] = v61;
              v56 -= 40;
              ++v55;
              LODWORD(v26) = v26 - 1;
              if (!v26)
              {
                goto LABEL_7;
              }
            }

            v73 = v57[4];
            if (v73 < v36)
            {
              v74 = *(a4 + 40 * v26 + 24);
              v66 = v36 >= v74;
              v75 = v36 - v74;
              if (!v66)
              {
                v75 = 0;
              }

              if (v73 > v75)
              {
                goto LABEL_7;
              }
            }
          }

          else
          {
            v49 = v36 + 1;
            v50 = a4 + 40 * (v26 + 1);
            v51 = v26;
            while (*(v50 + 20) != 1)
            {
              v52 = *(v50 + 24) + *(a4 + 40 * v51 + 32);
              *(v50 + 28) = v49;
              *(v50 + 32) = v52;
              ++v51;
              ++v49;
              v50 += 40;
              if (v22 == v51)
              {
                goto LABEL_46;
              }
            }

            v67 = *(v50 + 16);
            if (v67 > v36 && v67 < *(v50 + 24) + v36)
            {
              goto LABEL_7;
            }
          }
        }

        else if (a8 != 3)
        {
          goto LABEL_7;
        }
      }

      if (a8)
      {
        if (a8 == 1)
        {
          if (v26 + 1 >= v17)
          {
LABEL_32:
            if (!v26)
            {
              goto LABEL_7;
            }

            v44 = a4 - 40 + 40 * v26;
            while ((*(v44 + 20) & 1) == 0)
            {
              v45 = *(v44 + 24);
              v46 = *(v44 + 68);
              v47 = *(v44 + 72);
              v66 = v46 >= v45;
              v48 = v46 - v45;
              if (!v66)
              {
                v48 = 0;
              }

              *(v44 + 28) = v48;
              *(v44 + 32) = v47 + v45;
              v44 -= 40;
              if (!--v26)
              {
                goto LABEL_7;
              }
            }

            v68 = *(v44 + 16);
            v69 = *(a4 + 40 * v26 + 24);
            v70 = v36 - v69;
            if (v36 < v69)
            {
              v70 = 0;
            }

            v71 = v69 + v36;
            if (v68 > v70 && v68 < v71)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v37 = a4 + 40 * (v26 + 1);
            v38 = v26;
            while (*(v37 + 20) != 1)
            {
              v39 = a4 + 40 * v38;
              v40 = *(v37 + 24);
              v42 = *(v39 + 28);
              v41 = *(v39 + 32);
              v66 = v42 >= v40;
              v43 = v42 - v40;
              if (!v66)
              {
                v43 = 0;
              }

              *(v37 + 28) = v43;
              *(v37 + 32) = v41 + v40;
              ++v38;
              v37 += 40;
              if (v22 == v38)
              {
                goto LABEL_32;
              }
            }

            v62 = *(v37 + 16);
            v63 = *(v37 + 24);
            v64 = v36 - v63;
            if (v36 < v63)
            {
              v64 = 0;
            }

            v65 = v63 + v36;
            v66 = v62 <= v64 || v62 >= v65;
            if (!v66)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
LABEL_7:
          if (v25 >= a5)
          {
            v23 = a5;
          }

          else
          {
            v23 = v25;
          }

          if (v25 <= a6)
          {
            v24 = a6;
          }

          else
          {
            v24 = v25;
          }

          if (v24 - v23 <= v95)
          {
            if (v21 >= v17)
            {
              v77 = *(a4 + 16);
              if (a8 > 1)
              {
                if (a8 != 2)
                {
                  v81 = *(a4 + 16);
                  goto LABEL_109;
                }

                if (v17 < 2)
                {
LABEL_108:
                  v81 = *(a4 + 16);
                  goto LABEL_109;
                }

                v86 = (a4 + 64);
                v87 = v17 - 1;
                v88 = *(a4 + 16);
                v81 = v88;
                while (1)
                {
                  v89 = *(v86 - 2);
                  if (v89 <= v88 || v89 >= *v86 + v88)
                  {
                    break;
                  }

                  if (v81 >= v89)
                  {
                    v81 = *(v86 - 2);
                  }

                  if (v77 <= v89)
                  {
                    v77 = *(v86 - 2);
                  }

                  v86 += 10;
                  v88 = v89;
                  if (!--v87)
                  {
                    goto LABEL_109;
                  }
                }
              }

              else
              {
                if (a8 != 1)
                {
                  goto LABEL_108;
                }

                v78 = (a4 + 64);
                v79 = v17 - 1;
                v80 = *(a4 + 16);
                v81 = v80;
                if (v17 < 2)
                {
LABEL_109:
                  if (!v92)
                  {
LABEL_115:
                    v93 = 1;
                    goto LABEL_116;
                  }

                  v76 = v77 - v81;
                  if (*v92 < v76)
                  {
                    v76 = *v92;
                  }

                  *v92 = v76;
LABEL_113:
                  v93 = 1;
                  if (v76 + 1 == v17)
                  {
                    goto LABEL_116;
                  }
                }

                else
                {
                  while (1)
                  {
                    v82 = *(v78 - 2);
                    v83 = v80 - *v78;
                    if (v80 < *v78)
                    {
                      v83 = 0;
                    }

                    v84 = *v78 + v80;
                    if (v82 <= v83 || v82 >= v84)
                    {
                      break;
                    }

                    v78 += 10;
                    if (v81 >= v82)
                    {
                      v81 = v82;
                    }

                    if (v77 <= v82)
                    {
                      v77 = v82;
                    }

                    v80 = v82;
                    if (!--v79)
                    {
                      goto LABEL_109;
                    }
                  }
                }
              }
            }

            else if (checkNearness(v21, v91, v25, a4))
            {
              if (!v92)
              {
                goto LABEL_115;
              }

              v76 = *v92;
              goto LABEL_113;
            }
          }
        }
      }
    }
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t compare_indexSetByCount(_DWORD **a1, uint64_t *a2, int8x8_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = v3[4];
  v6 = *(*a2 + 16);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      locked = lockedCountItemsInRange(v3, v3[5], v3[6], a3);
      return locked - lockedCountItemsInRange(v4, *(v4 + 20), *(v4 + 24), v10);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = v5 - v6;
    if (v6 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v7;
    }
  }
}

void __ContentIndexDocSetIteratorPreProcess_block_invoke(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  v52 = 0;
  v51 = 1;
  if (**(a1 + 32))
  {
    return;
  }

  v4 = *(*(*(a1 + 40) + 8 * a2) + 56);
  if (*(v4 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_38;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(*(v4 + 64), sIndexExceptionCallbacks, v4, 0x20000000, add_explicit + 1);
  *buf = v6;
  v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v49 = HIDWORD(v6);
  v48 = __PAIR64__(v8, v9);
  *(v7 + 216) = 0;
  v10 = *(v7 + 312);
  v11 = *(v7 + 224);
  if (v11)
  {
    v11(*(v7 + 288));
  }

  v47 = *buf;
  v46 = v49;
  v45 = v48;
  if (!_setjmp(v7))
  {
    v51 = 0;
    v20 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v21 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v20 + 1);
    v43 = HIDWORD(v21);
    *v44 = v21;
    v42 = __PAIR64__(v22, v23);
    v24 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
    v25 = *(v24 + 312);
    v26 = *(v24 + 224);
    if (v26)
    {
      v26(*(v24 + 288));
    }

    v41 = *v44;
    v40 = v43;
    v39 = v42;
    if (!_setjmp(v24))
    {
      v52 = 1;
      ContentIndexDocSetIteratorPreProcessNode(*(*(a1 + 40) + 8 * a2), *(a1 + 56), *(a1 + 60), *(a1 + 64));
      v52 = 0;
      v34 = threadData[9 * v41 + 1] + 320 * v40;
      *(v34 + 312) = v25;
      v35 = *(v34 + 232);
      if (v35)
      {
        v35(*(v34 + 288));
      }

      dropThreadId(v41, 0, v20 + 1);
      goto LABEL_35;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v38 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v38, 2u);
    }

    *(v24 + 312) = v25;
    v27 = v39;
    if (__THREAD_SLOT_KEY)
    {
      v28 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v28)
      {
        goto LABEL_46;
      }
    }

    else
    {
      makeThreadId();
      v28 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v28)
      {
        goto LABEL_46;
      }
    }

    v29 = v28;
    if (v28 < 0x801)
    {
LABEL_28:
      v30 = &threadData[9 * v29];
      v32 = *(v30 - 4);
      v31 = (v30 - 2);
      if (v32 > v27)
      {
        v33 = v29 - 1;
        do
        {
          CIOnThreadCleanUpPop(v33);
        }

        while (*v31 > v27);
      }

      dropThreadId(v41, 1, v20 + 1);
      CICleanUpReset(v41, HIDWORD(v39));
LABEL_35:
      v36 = threadData[9 * v47 + 1] + 320 * v46;
      *(v36 + 312) = v10;
      v37 = *(v36 + 232);
      if (v37)
      {
        v37(*(v36 + 288));
      }

      dropThreadId(v47, 0, add_explicit + 1);
      goto LABEL_38;
    }

LABEL_46:
    makeThreadId();
    v29 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v44 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v44, 2u);
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

  v13 = v45;
  if (__THREAD_SLOT_KEY)
  {
    v14 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v14)
    {
LABEL_44:
      makeThreadId();
      v15 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_14;
    }
  }

  else
  {
    makeThreadId();
    v14 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v14)
    {
      goto LABEL_44;
    }
  }

  v15 = v14;
  if (v14 >= 0x801)
  {
    goto LABEL_44;
  }

LABEL_14:
  v16 = &threadData[9 * v15];
  v18 = *(v16 - 4);
  v17 = (v16 - 2);
  if (v18 > v13)
  {
    v19 = v15 - 1;
    do
    {
      CIOnThreadCleanUpPop(v19);
    }

    while (*v17 > v13);
  }

  dropThreadId(v47, 1, add_explicit + 1);
  CICleanUpReset(v47, HIDWORD(v45));
LABEL_38:
  if (v52 == 1)
  {
    **(a1 + 48) = 1;
  }

  if (v51 == 1)
  {
    **(a1 + 32) = 1;
  }
}

void ContentIndexDocSetIteratorPreProcessNode(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v88 = *MEMORY[0x1E69E9840];
  makeThreadId();
  v8 = *(a1 + 56);
  if (*(v8 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    *buf = 0;
    v86 = 0;
    v10 = setThreadIdAndInfo(*(v8 + 64), sIndexExceptionCallbacks, v8, 0x20000000, add_explicit + 1);
    *buf = HIDWORD(v10);
    *&buf[4] = v10;
    v86 = __PAIR64__(v11, v12);
    v13 = threadData;
    v14 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    *(v14 + 216) = 0;
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    v17 = v14;
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v85 = *&buf[4];
    v84 = *buf;
    v83 = v86;
    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *&v82[4] = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v82[4], 2u);
      }

      *(v17 + 312) = v15;
      if ((~*(v17 + 212) & 0xA0000000) == 0)
      {
        v18 = *(v17 + 288);
        if (v18)
        {
          _CIMakeInvalid(v18);
        }
      }

      v19 = v83;
      if (__THREAD_SLOT_KEY)
      {
        v20 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v20)
        {
          goto LABEL_95;
        }
      }

      else
      {
        makeThreadId();
        v20 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v20)
        {
          goto LABEL_95;
        }
      }

      v21 = v20;
      if (v20 < 0x801)
      {
LABEL_13:
        v22 = &threadData[9 * v21];
        v24 = *(v22 - 4);
        v23 = (v22 - 2);
        if (v24 > v19)
        {
          v25 = v21 - 1;
          do
          {
            CIOnThreadCleanUpPop(v25);
          }

          while (*v23 > v19);
        }

        dropThreadId(v85, 1, add_explicit + 1);
        CICleanUpReset(v85, HIDWORD(v83));
        goto LABEL_93;
      }

LABEL_95:
      makeThreadId();
      v21 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_13;
    }

    v26 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v27 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v26 + 1);
    *v82 = HIDWORD(v27);
    *&v82[4] = v27;
    v81 = __PAIR64__(v28, v29);
    v30 = threadData[9 * v27 + 1] + 320 * HIDWORD(v27);
    v31 = *(v30 + 312);
    v32 = *(v30 + 224);
    if (v32)
    {
      v32(*(v30 + 288));
    }

    v80 = *&v82[4];
    v79 = *v82;
    v78 = v81;
    if (_setjmp(v30))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v77 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v77, 2u);
      }

      *(v30 + 312) = v31;
      v34 = v78;
      if (__THREAD_SLOT_KEY)
      {
        v35 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v35)
        {
          goto LABEL_97;
        }
      }

      else
      {
        makeThreadId();
        v35 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v35)
        {
          goto LABEL_97;
        }
      }

      v36 = v35;
      if (v35 < 0x801)
      {
LABEL_27:
        v37 = &threadData[9 * v36];
        v39 = *(v37 - 4);
        v38 = (v37 - 2);
        if (v39 > v34)
        {
          v40 = v36 - 1;
          do
          {
            CIOnThreadCleanUpPop(v40);
          }

          while (*v38 > v34);
        }

        dropThreadId(v80, 1, v26 + 1);
        CICleanUpReset(v80, HIDWORD(v78));
LABEL_90:
        v69 = v13[9 * v85 + 1] + 320 * v84;
        *(v69 + 312) = v15;
        v70 = *(v69 + 232);
        if (v70)
        {
          v70(*(v69 + 288));
        }

        dropThreadId(v85, 0, add_explicit + 1);
        goto LABEL_93;
      }

LABEL_97:
      makeThreadId();
      v36 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_27;
    }

    v41 = *(a1 + 48);
    if (v41 <= 4)
    {
      if (v41 >= 4)
      {
        if (v41 == 4)
        {
          if (!*(a1 + 104))
          {
            *(a1 + 104) = NormalResolvedDocSet(a4);
          }

          if (*(a1 + 96))
          {
            v42 = 0;
            do
            {
              v43 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + 8 * v42));
              if (v43)
              {
                CIIndexSetAddRange(*(a1 + 104), v43, a2, a3, v33);
              }

              ++v42;
            }

            while (v42 < *(a1 + 96));
          }

          goto LABEL_83;
        }

LABEL_98:
        assert_invalid_doc_type(a1);
      }

LABEL_83:
      if (a2 == 1)
      {
        v66 = *(a1 + 48);
        if (v66 == 9 || (v66 & 0xFFFFFFFC) == 4)
        {
          CIIndexSetShrink(*(a1 + 104), v33);
        }
      }

      v67 = v13[9 * v80 + 1] + 320 * v79;
      *(v67 + 312) = v31;
      v68 = *(v67 + 232);
      if (v68)
      {
        v68(*(v67 + 288));
      }

      dropThreadId(v80, 0, v26 + 1);
      goto LABEL_90;
    }

    if (v41 <= 6)
    {
      if (v41 != 5)
      {
        if (*(a1 + 96))
        {
          if (!*(a1 + 104))
          {
            *(a1 + 104) = NormalResolvedDocSet(a4);
          }

          v44 = ContentIndexDocSetGrabConstrainingVector(**(a1 + 72));
          _CIIndexSetClearRange(*(a1 + 104), a2, a3);
          if (v44)
          {
            CIIndexSetAddRange(*(a1 + 104), v44, a2, a3, v45);
          }

          CIIndexSetInvertRange(*(a1 + 104), a2, a3);
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (v41 == 7)
      {
        if (*(a1 + 96))
        {
          if (!*(a1 + 104))
          {
            *(a1 + 104) = NormalResolvedDocSet(a4);
          }

          v51 = ContentIndexDocSetGrabConstrainingVector(**(a1 + 72));
          if (v51)
          {
            v52 = v51;
            if (*(v51 + 16) != -1 && (v53 = v51, locked = lockedCountItemsInRange(v51, a2, a3, v33), v52 = v53, locked >> 13))
            {
              CIIndexSetAddRange(*(a1 + 104), v53, a2, a3, v33);
              if (*(a1 + 96) >= 2u)
              {
                v64 = 1;
                do
                {
                  v65 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + 8 * v64));
                  if (v65)
                  {
                    CIIndexSetRemoveRange(*(a1 + 104), v65, a2, a3);
                  }

                  ++v64;
                }

                while (v64 < *(a1 + 96));
              }
            }

            else
            {
              v55 = a3 - 0x2000;
              v74 = a2 + 0x2000;
              v75 = v15;
              if (a2 + 0x2000 >= a3)
              {
                v55 = a2;
              }

              v56 = a3;
              do
              {
                v57 = v13;
                v58 = v31;
                v59 = v26;
                v60 = v55;
                v61 = v52;
                CIIndexSetAddRange(*(a1 + 104), v52, v55, v56, v33);
                if (*(a1 + 96) >= 2u)
                {
                  v62 = 1;
                  do
                  {
                    v63 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + 8 * v62));
                    if (v63)
                    {
                      CIIndexSetRemoveRange(*(a1 + 104), v63, v60, v56);
                    }

                    ++v62;
                  }

                  while (v62 < *(a1 + 96));
                }

                v55 = v60 - 0x2000;
                if (v60 <= v74)
                {
                  v55 = a2;
                }

                v56 = v60;
                v52 = v61;
                v26 = v59;
                v31 = v58;
                v13 = v57;
                v15 = v75;
              }

              while (v60 > a2);
            }
          }
        }

        goto LABEL_83;
      }

      if (v41 == 8)
      {
        goto LABEL_83;
      }

      if (v41 != 9)
      {
        goto LABEL_98;
      }
    }

    v46 = *(a1 + 96);
    if (!*(a1 + 104))
    {
      *(a1 + 104) = NormalResolvedDocSet(a4);
    }

    if (v46)
    {
      v76 = v31;
      v72 = &v72;
      v73 = v46;
      v47 = 8 * v46;
      MEMORY[0x1EEE9AC00](&v72);
      v48 = &v72 - ((8 * v46 + 15) & 0xFFFFFFFF0);
      bzero(&v72 - ((v47 + 15) & 0xFFFFFFFF0), v47);
      v49 = 0;
      while (1)
      {
        v50 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + v49));
        if (!v50)
        {
          break;
        }

        *&v48[v49] = v50;
        v49 += 8;
        if (v47 == v49)
        {
          CIIndexSetAddIntersectionInRange(*(a1 + 104), (&v72 - ((v47 + 15) & 0xFFFFFFFF0)), v73, a2, a3);
          break;
        }
      }

      LODWORD(v31) = v76;
    }

    goto LABEL_83;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *&buf[4] = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", &buf[4], 2u);
  }

LABEL_93:
  *(a1 + 32) = 1;
  v71 = *MEMORY[0x1E69E9840];
}

BOOL ci_lt_l1_score(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, float a5, float a6)
{
  if (*(a1 + 69) != 1)
  {
    if (*a1 >= __PAIR128__(a3, a2))
    {
      if (*(a1 + 8) != a3 || *a1 != a2)
      {
        return 0;
      }

      v10 = *(a1 + 52);
      if (v10 >= a6 && (v10 != a6 || *(a1 + 48) < a4))
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = *(a1 + 60);
  if (v6 == a5)
  {
    v7 = *(a1 + 52);
    if (v7 < a6 || v7 == a6 && *(a1 + 48) >= a4)
    {
      return 1;
    }
  }

  if (v6 >= a5)
  {
    return v6 == 100.0;
  }

  else
  {
    return a5 != 100.0;
  }
}

float ContentIndexDocSetComputeScore(uint64_t a1, uint64_t a2, unsigned int a3, uint8_t *a4, float a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v49 = a5;
    v50 = a2;
    v51 = *__error();
    v52 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = *(a1 + 12);
      v54 = *(a1 + 16);
      *buf = 134218240;
      v56 = v53;
      v57 = 2048;
      v58 = v54;
      _os_log_impl(&dword_1C278D000, v52, OS_LOG_TYPE_DEFAULT, "ContentIndexDocSetComputeScore: (%f, %f)", buf, 0x16u);
    }

    *__error() = v51;
    a2 = v50;
    a5 = v49;
  }

  v8 = 0.0;
  if (*(a1 + 28) >= a5)
  {
    v9 = *(a1 + 48);
    if (v9 > 2 || (v8 = *(a1 + 20), v8 == 0.0))
    {
      if (*(a1 + 12) != 0.0 || *(a1 + 16) != 0.0)
      {
        v8 = *(a1 + 20);
        if (v9 <= 3)
        {
          if (v9 < 3)
          {
            goto LABEL_16;
          }

          if (v9 != 3)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if ((v9 - 4) < 4)
          {
            goto LABEL_9;
          }

          if (v9 != 8)
          {
            if (v9 != 9)
            {
              goto LABEL_69;
            }

LABEL_9:
            v10 = *(a1 + 80);
            if (v10)
            {
              goto LABEL_10;
            }

            goto LABEL_16;
          }
        }

        v19 = *(a1 + 64);
        if (v19)
        {
          v10 = *(v19 + 88);
          if (v10)
          {
LABEL_10:
            v11 = a2;
            HasIndexWithHint = CIIndexSetHasIndexWithHint(v10, a2, (a1 + 40));
            LODWORD(a2) = v11;
            if (!a3)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }

LABEL_16:
        HasIndexWithHint = v9 == 1;
        if (!a3)
        {
LABEL_11:
          if (HasIndexWithHint)
          {
            v13 = *(a1 + 52);
            if (v13 != 3)
            {
              if (v13 != 1)
              {
                goto LABEL_23;
              }

              goto LABEL_21;
            }

            goto LABEL_27;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (!HasIndexWithHint)
        {
          v15 = *(a1 + 52);
          if (v15 != 3)
          {
            if (v15 != 1)
            {
              goto LABEL_23;
            }

LABEL_21:
            v16 = *(a1 + 48);
            if (v16 <= 9)
            {
              v17 = 1 << v16;
              if ((v17 & 0x307) == 0)
              {
                if ((v17 & 0xF0) != 0)
                {
                  v18 = *(a1 + 88);
                  if (!v18)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v38 = *(a1 + 64);
                  if (!v38)
                  {
                    goto LABEL_23;
                  }

                  v18 = *(v38 + 96);
                  if (!v18)
                  {
                    goto LABEL_38;
                  }
                }

                LOBYTE(v18) = CIIndexSetHasIndexWithHint(v18, a2, (a1 + 44));
                goto LABEL_38;
              }

LABEL_23:
              LOBYTE(v18) = 0;
LABEL_38:
              *a4 = v18;
              v14 = 12;
              goto LABEL_39;
            }

LABEL_69:
            assert_invalid_doc_type(a1);
          }

LABEL_27:
          LOBYTE(v18) = 1;
          goto LABEL_38;
        }

LABEL_18:
        v14 = 16;
LABEL_39:
        v20 = *(a1 + v14);
LABEL_40:
        v8 = v20 + v8;
        goto LABEL_41;
      }

      if (v9 <= 4)
      {
        if (v9 < 3)
        {
          v8 = a3;
          goto LABEL_41;
        }

        v8 = 0.0;
        if (v9 == 3)
        {
          goto LABEL_41;
        }

        if (v9 != 4)
        {
          goto LABEL_69;
        }

        if (*(a1 + 96))
        {
          v29 = 0;
          v30 = 0;
          v31 = -3.4028e38;
          do
          {
            buf[0] = 0;
            v32 = *(*(a1 + 72) + 8 * v29);
            if (v31 > *(v32 + 24))
            {
              break;
            }

            v33 = a2;
            v34 = a5;
            v35 = ContentIndexDocSetComputeScore(v32);
            v36 = v35 <= v31;
            if (v35 < v31)
            {
              a2 = v33;
              a5 = v34;
            }

            else
            {
              v37 = v35;
              a2 = v33;
              a5 = v34;
              if (v36)
              {
                v30 = (v30 & 1) != 0 ? buf[0] : 0;
              }

              else
              {
                v30 = buf[0];
                v31 = v37;
              }
            }

            ++v29;
          }

          while (v29 < *(a1 + 96));
          goto LABEL_91;
        }

LABEL_90:
        v30 = 0;
        v31 = -3.4028e38;
LABEL_91:
        *a4 = v30 & 1;
        v8 = fmaxf(*(a1 + 20), v31);
        goto LABEL_41;
      }

      if (v9 > 7)
      {
        v8 = 0.0;
        if ((v9 - 8) < 2)
        {
          goto LABEL_41;
        }

        goto LABEL_69;
      }

      if (v9 == 5)
      {
        buf[0] = 0;
        v8 = ContentIndexDocSetComputeScore(**(a1 + 72));
        v45 = buf[0];
        if (v8 != 0.0)
        {
          v46 = 1;
          while (v46 < *(a1 + 96))
          {
            v47 = ContentIndexDocSetComputeScore(*(*(a1 + 72) + 8 * v46));
            if (v47 == 0.0)
            {
              *a4 = 0;
              v8 = 0.0;
              goto LABEL_41;
            }

            v8 = v47 + v8;
            ++v46;
            if (v8 == 0.0)
            {
              break;
            }
          }
        }

        *a4 = v45;
        if (v8 != 0.0)
        {
          v20 = *(a1 + 20);
          goto LABEL_40;
        }
      }

      else
      {
        if (v9 == 6)
        {
          if (*(a1 + 96))
          {
            v39 = 0;
            v30 = 0;
            v31 = -3.4028e38;
            do
            {
              buf[0] = 0;
              v40 = a2;
              v41 = a5;
              v42 = ContentIndexDocSetComputeScore(*(*(a1 + 72) + 8 * v39));
              v43 = v42 <= v31;
              if (v42 < v31)
              {
                a2 = v40;
                a5 = v41;
              }

              else
              {
                v44 = v42;
                a2 = v40;
                a5 = v41;
                if (v43)
                {
                  if (v30)
                  {
                    v30 = buf[0];
                  }

                  else
                  {
                    v30 = 0;
                  }
                }

                else
                {
                  v30 = buf[0];
                  v31 = v44;
                }
              }

              ++v39;
            }

            while (v39 < *(a1 + 96));
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        buf[0] = 0;
        v23 = ContentIndexDocSetComputeScore(**(a1 + 72));
        v24 = buf[0];
        if (*(a1 + 96) < 2u)
        {
          v28 = 1;
          v25 = 3.4028e38;
        }

        else
        {
          v25 = 3.4028e38;
          v26 = 1;
          do
          {
            v27 = ContentIndexDocSetComputeScore(*(*(a1 + 72) + 8 * v26));
            if (v27 <= v25)
            {
              if (v27 >= v25)
              {
                if (v24)
                {
                  v24 = 0;
                }
              }

              else
              {
                v25 = v27;
              }
            }

            ++v26;
            v28 = v25 != 0.0;
          }

          while (v26 < *(a1 + 96) && v25 != 0.0);
        }

        *a4 = v24;
        v48 = v25 + v23;
        if ((v25 + v23) != 0.0)
        {
          v23 = *(a1 + 20) + v23;
          v48 = v23 + v25;
        }

        if (v23 != 0.0 && v28)
        {
          v8 = v48;
        }

        else
        {
          v8 = 0.0;
        }
      }
    }
  }

LABEL_41:
  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

_BYTE *do_shifted_and(_BYTE *result, const unsigned __int8 *a2, int a3, char a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    v5 = a2 + 1;
    do
    {
      v6 = *(v5 - 1) >> a4;
      v7 = *v5++;
      *result++ &= (v7 << (8 - a4)) | v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

_BYTE *_lt_trie_make_node()
{
  v0 = malloc_type_malloc(0x18uLL, 0x1090040201C2EDAuLL);
  v0[17] = 4;
  *v0 = malloc_type_malloc(4uLL, 0x100004077774924uLL);
  *(v0 + 1) = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  v0[18] = 0;
  v0[16] = -1;
  return v0;
}

_BYTE *lt_trie_make_with_unicode(unsigned __int8 *a1, int a2, char a3)
{
  LODWORD(v4) = a2;
  node = _lt_trie_make_node();
  v7 = node;
  if (v4)
  {
    v4 = v4;
    do
    {
      v8 = node;
      v9 = *a1++;
      *(*node + node[18]) = *(&tcm + v9);
      node = _lt_trie_make_node();
      v10 = v8[18];
      *(*(v8 + 1) + 8 * v10) = node;
      v8[18] = v10 + 1;
      if (v4 == 1)
      {
        node[16] = a3;
      }

      --v4;
    }

    while (v4);
  }

  return v7;
}

_BYTE *lt_trie_union(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  if (!a2)
  {
    return a1;
  }

  node = _lt_trie_make_node();
  v5 = node;
  v6 = *(a1 + 16);
  if (v6 != 255 || (v6 = *(a2 + 16), v6 != 255))
  {
    node[16] = v6;
  }

  v7 = 0;
  v8 = 0;
  while (v8 < *(a1 + 18) || v7 < *(a2 + 18))
  {
    v9 = v5[17];
    if (v5[18] >= v9)
    {
      v5[17] = 2 * v9;
      *v5 = malloc_type_realloc(*v5, 2 * (v9 & 0x7F), 0x100004077774924uLL);
      *(v5 + 1) = malloc_type_realloc(*(v5 + 1), 8 * v5[17], 0x2004093837F09uLL);
    }

    if (v7 == *(a2 + 18))
    {
      LOBYTE(v10) = *(*a1 + v8);
      v11 = v5[18];
      goto LABEL_15;
    }

    v12 = *a2;
    if (v8 == *(a1 + 18))
    {
      LOBYTE(v13) = v12[v7];
      v11 = v5[18];
      goto LABEL_19;
    }

    v10 = *(*a1 + v8);
    v13 = v12[v7];
    v11 = v5[18];
    if (v10 >= v13)
    {
      if (v10 <= v13)
      {
        *(*v5 + v11) = v10;
        v16 = lt_trie_union(*(*(a1 + 8) + 8 * v8), *(*(a2 + 8) + 8 * v7));
        v17 = v5[18];
        *(*(v5 + 1) + 8 * v17) = v16;
        v5[18] = v17 + 1;
        ++v8;
        goto LABEL_20;
      }

LABEL_19:
      *(*v5 + v11) = v13;
      v15 = v5[18];
      *(*(v5 + 1) + 8 * v15) = *(*(a2 + 8) + 8 * v7);
      v5[18] = v15 + 1;
LABEL_20:
      ++v7;
    }

    else
    {
LABEL_15:
      *(*v5 + v11) = v10;
      v14 = v5[18];
      *(*(v5 + 1) + 8 * v14) = *(*(a1 + 8) + 8 * v8);
      v5[18] = v14 + 1;
      ++v8;
    }
  }

  _lt_trie_free_node(a1);
  _lt_trie_free_node(a2);
  return v5;
}

void _lt_trie_free_node(void **a1)
{
  free(*a1);
  free(a1[1]);

  free(a1);
}

void lt_trie_free(uint64_t a1)
{
  if (*(a1 + 18))
  {
    v2 = 0;
    do
    {
      lt_trie_free(*(*(a1 + 8) + 8 * v2++));
    }

    while (v2 < *(a1 + 18));
  }

  _lt_trie_free_node(a1);
}

uint64_t __SIIsAppleInternal_block_invoke()
{
  result = MGGetBoolAnswer();
  SIIsAppleInternal_internal = result;
  return result;
}

uint64_t __SIBullseyeNoForceUnigramsDefault_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x1E695E8A8];
  CFPreferencesAddSuitePreferencesToApp(*MEMORY[0x1E695E8A8], @"com.apple.spotlightui");
  result = CFPreferencesGetAppBooleanValue(@"SIBullseyeNoForceUnigrams", v0, &keyExistsAndHasValidFormat);
  if (result)
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  SIBullseyeNoForceUnigramsDefault_sUnigrams = v3;
  return result;
}

void SISimulateCrashForPid(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v5 = 3134249728;
    if (a1)
    {
      v5 = a1;
    }

    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%lld %@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t versionNineResetSentinelData(uint64_t a1, unsigned __int8 *a2, double *a3, unsigned int *a4, double a5, double a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = (a1 - 366) < 0xFFFFFE93 || a2 == 0;
  if (v6 || *a3 == 0.0 || (v13 = *a4) == 0)
  {
    result = 0;
  }

  else
  {
    v14 = a1;
    v15 = 0;
    v16 = 0;
    v17 = llround(vabdd_f64(a5, *a3) / 86400.0);
    LODWORD(v18) = *a2;
    v19 = a2;
    while (v13 > 2 * v15 && v17 > v18)
    {
      v20 = v16 + 1;
      v21 = v15 + 1;
      if (v15 + 1 < a1)
      {
        v19 = &a2[2 * v21];
        v22 = *v19;
        LODWORD(v18) = v18 + v22;
        if (2 * v21 < v13 && v22 == 255)
        {
          v23 = v15 + 2;
          v19 = &a2[2 * v23];
          if (!v19[1])
          {
            v18 = v18 + *v19;
            v24 = v16 + 2;
            if (v17 > v18)
            {
              v20 = v24;
            }

            v21 = v23;
          }
        }
      }

      v15 = v21;
      v16 = v20;
      if (v21 >= a1)
      {
        goto LABEL_22;
      }
    }

    v20 = v16;
LABEL_22:
    v25 = *a4;
    MEMORY[0x1EEE9AC00](a1);
    v27 = &buf[-((v26 + 15) & 0x1FFFFFFF0)];
    bzero(v27, v26);
    v28 = *a4;
    bzero(v27, *a4);
    if (v14 == v20)
    {
      LOBYTE(v29) = 0;
      LODWORD(v30) = 0;
      *a3 = a6;
LABEL_24:
      *&v27[v30] = v29 | 0x100;
      v31 = v28 + 2;
      *a4 = v31;
      memcpy(a2, v27, v31);
      result = 1;
      goto LABEL_7;
    }

    v32 = 0;
    v33 = v14;
    v34 = a2;
    do
    {
      v35 = *v34;
      v34 += 2;
      v32 += v35;
      --v33;
    }

    while (v33);
    v36 = v18 * 86400.0 + *a3;
    *a3 = v36;
    *v19 = 0;
    v29 = v18 - v32 + ((a6 - v36) / 86400.0);
    if (v29 < 0x16E)
    {
      v30 = 2 * (v14 - v20);
      *a4 = v30;
      memcpy(v27, &a2[2 * v20], v30);
      *v27 = *v19;
      if (v29 < 0x100)
      {
        v28 = v30;
      }

      else
      {
        *&v27[v30 + 2] = (v29 + 1);
        v28 = v30 + 2;
        LOBYTE(v29) = -1;
      }

      goto LABEL_24;
    }

    v37 = *__error();
    v38 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "versionNineResetSentinelData";
      v42 = 1024;
      v43 = 176;
      _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: Date too distant while restting sentinel", buf, 0x12u);
    }

    v39 = __error();
    result = 0;
    *v39 = v37;
  }

LABEL_7:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *__versionNineUpdateDataAndLength_block_invoke(uint64_t a1, void *__dst)
{
  __src = 256;
  result = memcpy(__dst, &__src, *(a1 + 40));
  **(a1 + 32) = *(a1 + 40);
  return result;
}

uint64_t markItemAsRenderedOrEngaged(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, double a6)
{
  v8 = a3;
  v51 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v11 = a6;
  v12 = 86400 * (a6 / 0x15180);
  v13 = v12;
  Current = CFAbsoluteTimeGetCurrent();
  result = 0;
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a5;
  }

  if ((((86400 * (Current / 0x15180)) - v12) / 86400.0) - 366) < 0xFFFFFE91 || (v16)
  {
    goto LABEL_40;
  }

  v41 = 0.0;
  v17 = 0.0;
  if (a5)
  {
    if (v8 >= 0x2E4)
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "markItemAsRenderedOrEngaged";
        *&buf[12] = 1024;
        *&buf[14] = 312;
        v20 = "%s:%d: Incorrect data size in counts code";
LABEL_38:
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
        goto LABEL_39;
      }

      goto LABEL_39;
    }

    if (a2 && v8 >= 9 && *a2 == 9)
    {
      v41 = *(a2 + 1);
      memcpy((a1 + 9), (a2 + 9), v8 - 9);
      v42 = v8 - 9;
      v17 = v41;
      v8 -= 9;
    }
  }

  v21 = (a1 + 9);
  if (v11 == v11 - v12)
  {
    v13 = (86400 * (CFAbsoluteTimeGetCurrent() / 0x15180));
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __versionNineUpdateDataAndLength_block_invoke;
  v48 = &__block_descriptor_tmp_6531;
  v50 = 2;
  v49 = &v42;
  if (v17 == 0.0)
  {
    *v21 = 256;
LABEL_29:
    v42 = 2;
    v41 = v13;
    goto LABEL_30;
  }

  v22 = llround((v8 >> 1));
  if (!v22)
  {
LABEL_30:
    v32 = 1;
    goto LABEL_31;
  }

  v23 = v21 + v8 - 2;
  if (!*(v23 + 1))
  {
    v23 = v23 & 0xFFFFFFFFFFFF0000 | *(v21 + v8 - 4);
  }

  v24 = 0;
  v25 = llround((v13 - v17) / 86400.0);
  v26 = v22;
  v27 = (a1 + 9);
  do
  {
    v28 = *v27;
    v27 += 2;
    v24 += v28;
    --v26;
  }

  while (v26);
  if (v25 < 365)
  {
    if (v25 <= -2)
    {
      *v21 = 256;
      goto LABEL_29;
    }

    if (v25 != v24)
    {
      if (v22 < 0x16D)
      {
        v37 = v17 + v24 * 86400.0;
        if (v13 >= v37)
        {
          v38 = ((v13 - v37) / 86400.0);
          if (v38 < 0x16E)
          {
            if (v38 < 0x100)
            {
              *(v21 + v8) = v38 | 0x100;
              v40 = v8 + 2;
            }

            else
            {
              v39 = (v21 + v8);
              *v39 = 511;
              v39[1] = (v38 + 1);
              v40 = v8 + 4;
            }

            v42 = v40;
            goto LABEL_30;
          }
        }

        v29 = *__error();
        v30 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *v43 = 136315394;
        v44 = "versionNineUpdateDataAndLength";
        v45 = 1024;
        v46 = 251;
        v36 = "%s:%d: Beyond max entries in counts or tried adding out of order in adding new";
      }

      else
      {
        v29 = *__error();
        v30 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *v43 = 136315394;
        v44 = "versionNineUpdateDataAndLength";
        v45 = 1024;
        v46 = 241;
        v36 = "%s:%d: Beyond max entries in counts or tried adding out of order";
      }

LABEL_56:
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, v36, v43, 0x12u);
      goto LABEL_25;
    }

    v35 = *(v23 + 1);
    if (v35 != 255)
    {
      *(v23 + 1) = v35 + 1;
    }

    goto LABEL_30;
  }

  if (versionNineResetSentinelData(v22, (a1 + 9), &v41, &v42, fabs(v13 + -31449600.0), v13))
  {
    goto LABEL_30;
  }

  v29 = *__error();
  v30 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *v43 = 136315394;
    v44 = "versionNineUpdateDataAndLength";
    v45 = 1024;
    v46 = 233;
    v36 = "%s:%d: Failed reseting sentinel date";
    goto LABEL_56;
  }

LABEL_25:
  v31 = __error();
  v32 = 0;
  *v31 = v29;
LABEL_31:
  if (v42 - 731 <= 0xFFFFFD1B)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "markItemAsRenderedOrEngaged";
      *&buf[12] = 1024;
      *&buf[14] = 331;
      v20 = "%s:%d: Incorrect data size in counts code";
      goto LABEL_38;
    }

LABEL_39:
    v33 = __error();
    result = 0;
    *v33 = v18;
    goto LABEL_40;
  }

  if ((v32 & 1) == 0)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "markItemAsRenderedOrEngaged";
      *&buf[12] = 1024;
      *&buf[14] = 339;
      v20 = "%s:%d: Failed updating render/engagement data";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  *a4 = v42 + 9;
  *a1 = 9;
  *(a1 + 1) = v41;
  result = 1;
LABEL_40:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sdbGetProtectionClass(int *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_8;
  }

  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_get_protection_class";
      v15 = 1024;
      v16 = 259;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 259, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *(a1 + 106);
  if (v1 && (v2 = *(v1 + 44), v2 != -1))
  {
    v3 = *MEMORY[0x1E69E9840];

    return fcntl(v2, 63);
  }

  else
  {
LABEL_8:
    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t _sdbMatchAddress(uint64_t result, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_11;
  }

  v2 = result;
  if (*result != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *v2;
      *buf = 136315650;
      v14 = "db_match_address";
      v15 = 1024;
      v16 = 438;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 438, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((*(result + 804) & 0x14) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (_data_map_match_address(*(result + 880), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 888), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 896), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 904), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 912), a2))
  {
    result = 1;
LABEL_11:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = *(v2 + 920);
  v6 = *MEMORY[0x1E69E9840];

  return _data_map_match_address(v5, a2);
}

char *db_create_datastore(unsigned int a1, uint64_t a2, int a3, unsigned __int8 a4)
{
  if ((a3 & 0xF000) != 0x2000)
  {
    return 0;
  }

  v12 = v4;
  v13 = v5;
  v8 = 0u;
  v10 = 0;
  v7[0] = a1;
  v7[1] = a2;
  LODWORD(v8) = a3 & 0xFFFF0FFF;
  v9 = a4;
  v11 = 0;
  return db2_create_datastore_with_ctx(v7);
}

char *db_get_datastore(unsigned int a1, uint64_t a2, int a3)
{
  if ((a3 & 0x1000) != 0)
  {
    return 0;
  }

  v5 = 0u;
  v6 = 0;
  v7 = 0;
  v4[0] = a1;
  v4[1] = a2;
  LODWORD(v5) = a3;
  v8 = 0;
  return db2_get_datastore_with_ctx(v4);
}

uint64_t db_check_datastore(int a1, __int16 a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if ((a2 & 0xF000) != 0x2000)
  {
    v16 = 0;
    goto LABEL_22;
  }

  bzero(v62, 0x400uLL);
  bzero(__dst, 0x400uLL);
  v3 = malloc_type_calloc(1uLL, 0x1000uLL, 0x10A0040B82A6DE8uLL);
  v4 = malloc_type_calloc(1uLL, 0x1000uLL, 0x10A0040B82A6DE8uLL);
  v5 = v4;
  if (!v3 || !v4)
  {
    v8 = 0;
    v11 = 0;
    v16 = 0xFFFFFFFFLL;
    if (!v3)
    {
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v6 = (*(v3 + 1) << 13) >> 31;
  v7 = fd_create_protected(a1, "store.db", 0, v6 & 3);
  if (!v7)
  {
    v19 = *__error();
    v20 = *__error();
    v21 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v54 = 1024;
      v55 = 6946;
      v56 = 1024;
      *v57 = v19;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR: could not get parent fdp %d\n", buf, 0x18u);
    }

    *__error() = v20;
    v22 = __error();
    v8 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v52 = 0;
  v9 = _fd_acquire_fd(v7, &v52);
  if (v9 < 0)
  {
    v19 = *__error();
    v23 = *__error();
    v24 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v54 = 1024;
      v55 = 6956;
      v56 = 1024;
      *v57 = v19;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR: could not open parent %d\n", buf, 0x18u);
    }

    *__error() = v23;
    goto LABEL_31;
  }

  _fd_release_fd(v8, v9, 0, v52);
  strcpy(__dst, ".");
  strlcat(__dst, "store.db", 0x400uLL);
  *__error() = 0;
  v10 = fd_create_protected(a1, __dst, 0, v6 & 3);
  if (!v10)
  {
    v19 = *__error();
    v25 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v42 = *__error();
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v54 = 1024;
      v55 = 6967;
      v56 = 1024;
      *v57 = v42;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR:%d could not get shadow fdp\n", buf, 0x18u);
    }

LABEL_31:
    v22 = __error();
LABEL_32:
    v11 = 0;
    *v22 = v19;
LABEL_33:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_34;
  }

  v11 = v10;
  v52 = 0;
  v12 = _fd_acquire_fd(v10, &v52);
  if (v12 < 0)
  {
    if (*__error() == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    v26 = *__error();
    v27 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v43 = *__error();
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v54 = 1024;
      v55 = 6975;
      v56 = 1024;
      *v57 = v43;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR:%d could not open shadow\n", buf, 0x18u);
    }

    *__error() = v26;
  }

  else
  {
    _fd_release_fd(v11, v12, 0, v52);
    v13 = fd_pread(v8, v3, 0x1000uLL, 0);
    if (v13 != 4096)
    {
      v28 = v13;
      *buf = 0;
      v29 = _fd_acquire_fd(v8, buf);
      if (v29 != -1)
      {
        v30 = v29;
        fcntl(v29, 50, v62);
        _fd_release_fd(v8, v30, 0, *buf);
      }

      v31 = *__error();
      v32 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "db2_check_datastore";
        v54 = 1024;
        v55 = 6984;
        v56 = 2080;
        *v57 = v62;
        *&v57[8] = 1024;
        v58 = 4096;
        v59 = 2048;
        v60 = v28;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_check_datastore: ERR: could not read %d bytes (read %zd bytes)\n", buf, 0x2Cu);
      }

      *__error() = v31;
      goto LABEL_33;
    }

    if (fd_pread(v11, v5, 0x1000uLL, 0) != 4096)
    {
      bzero(v5, 0x1000uLL);
    }

    *(v3 + 105) = v8;
    *(v3 + 106) = v11;
    if (*v3 == 947155812)
    {
      v14 = vrev32q_s8(*v3);
      *v3 = v14;
      *(v3 + 4) = bswap32(*(v3 + 4));
      *(v3 + 20) = vrev64q_s8(*(v3 + 20));
      *(v3 + 36) = vrev32q_s8(*(v3 + 36));
      *(v3 + 52) = vrev32q_s8(*(v3 + 52));
      v15 = v14.i32[1] & 0x7FFFFF7F | 0x80;
    }

    else
    {
      v15 = *(v3 + 1) & 0x7FFFFF7F;
    }

    *(v3 + 1) = v15;
    if (v5->i32[0] == 947155812)
    {
      v33 = vrev32q_s8(*v5);
      *v5 = v33;
      v5[1].i32[0] = bswap32(v5[1].u32[0]);
      *(v5 + 20) = vrev64q_s8(*(v5 + 20));
      *(v5 + 36) = vrev32q_s8(*(v5 + 36));
      *(v5 + 52) = vrev32q_s8(*(v5 + 52));
      v34 = v33.i32[1] & 0x7FFFFF7F | 0x80;
    }

    else
    {
      v34 = v5->i32[1] & 0x7FFFFF7F;
    }

    v5->i32[1] = v34;
    if (*v3 != 1685287992)
    {
      fd_realpath(v8, v62);
      v36 = *__error();
      v41 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v44 = *v3;
        *buf = 136316162;
        *&buf[4] = "db2_check_datastore";
        v54 = 1024;
        v55 = 7030;
        v56 = 2080;
        *v57 = v62;
        *&v57[8] = 1024;
        v58 = v44;
        v59 = 1024;
        LODWORD(v60) = 1685287992;
        v38 = "%s:%d: %s : db2_check_datastore: ERR: signature 0x%x != 0x%x. bailing out.\n";
        v39 = v41;
        v40 = 40;
        goto LABEL_67;
      }

LABEL_59:
      *__error() = v36;
      goto LABEL_33;
    }

    if (v5->i32[0] != 1685287992)
    {
      bzero(v5, 0x1000uLL);
      LOWORD(v34) = 0;
    }

    v35 = *(v3 + 1);
    if ((v35 & 0x30) != 0 || (v34 & 0x30) != 0)
    {
      v36 = *__error();
      v37 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "db2_check_datastore";
        v54 = 1024;
        v55 = 7041;
        v56 = 2080;
        *v57 = v62;
        v38 = "%s:%d: %s : db2_check_datastore: ERR: DST_BUSY\n";
        v39 = v37;
        v40 = 28;
LABEL_67:
        _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    if ((v34 & 0x200) != 0)
    {
      v16 = 1;
    }

    else if (v34)
    {
      v16 = 0;
    }

    else if ((v35 & 0x201) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    v45 = *__error();
    v46 = _SILogForLogForCategory(7);
    v47 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = fd_realpath(v8, v62);
      v49 = "";
      v50 = v5->i32[1];
      v51 = *(v3 + 1);
      if (v48)
      {
        v49 = v48;
      }

      *buf = 136315906;
      *&buf[4] = v49;
      v54 = 1024;
      v55 = v16;
      v56 = 1024;
      *v57 = v50;
      *&v57[4] = 1024;
      *&v57[6] = v51;
      _os_log_impl(&dword_1C278D000, v46, v47, "%s : db2_check_datastore:%d (s_flags:%x m_flags:%x)\n", buf, 0x1Eu);
    }

    *__error() = v45;
  }

LABEL_34:
  free(v3);
  if (v5)
  {
LABEL_16:
    free(v5);
  }

LABEL_17:
  if (v11 && v11 != v8)
  {
    fd_release(v11);
  }

  if (v8)
  {
    fd_release(v8);
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t db_delete_datastore(int a1, char *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xF000) == 0x2000)
  {
    bzero(__dst, 0x400uLL);
    v6 = (a3 & 0x40000u) >> 10;
    v7 = strrchr(a2, 47);
    if (v7)
    {
      v8 = v7;
      strlcpy(__dst, a2, v7 - a2 + 2);
      strlcat(__dst, ".", 0x400uLL);
      v9 = v8 + 1;
    }

    else
    {
      strcpy(__dst, ".");
      v9 = a2;
    }

    strlcat(__dst, v9, 0x400uLL);
    if ((a3 & 0x40000) != 0)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    v12 = fd_create_protected(a1, a2, 2, v11);
    v13 = _fd_unlink_with_origin(v12, 0);
    fd_release(v12);
    v14 = fd_create_protected(a1, __dst, 2, v11);
    v15 = _fd_unlink_with_origin(v14, 0);
    fd_release(v14);
    if ((a3 & 0x20000) != 0)
    {
      v17 = 0;
      if ((asprintf(&v17, "%sStr-%d.map", a2, 1) & 0x80000000) == 0)
      {
        data_map_delete_files(a1, v17, v6);
        free(v17);
      }

      v17 = 0;
      if ((asprintf(&v17, "%sStr-%d.map", a2, 2) & 0x80000000) == 0)
      {
        data_map_delete_files(a1, v17, v6);
        free(v17);
      }

      v17 = 0;
      if ((asprintf(&v17, "%sStr-%d.map", a2, 3) & 0x80000000) == 0)
      {
        data_map_delete_files(a1, v17, v6);
        free(v17);
      }

      v17 = 0;
      if ((asprintf(&v17, "%sStr-%d.map", a2, 4) & 0x80000000) == 0)
      {
        data_map_delete_files(a1, v17, v6);
        free(v17);
      }

      v17 = 0;
      if ((asprintf(&v17, "%sStr-%d.map", a2, 5) & 0x80000000) == 0)
      {
        data_map_delete_files(a1, v17, v6);
        free(v17);
      }
    }

    v17 = 0;
    if ((asprintf(&v17, "%sStr-%d.map", a2, 6) & 0x80000000) == 0)
    {
      data_map_delete_files(a1, v17, v6);
      free(v17);
    }

    if (v13)
    {
      result = v13;
    }

    else
    {
      result = v15;
    }
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_datastore_largest_oid(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v26 = *__error();
    v27 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_datastore_largest_oid";
      v34 = 1024;
      v35 = 237;
      v36 = 1024;
      v37 = v28;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v26;
    v29 = __si_assert_copy_extra_332();
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 237, v31);
    free(v30);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (db_read_lock(a1 + 584))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15106);
  }

  v2 = *(a1 + 856);
  v3 = *(v2 + 8);
  v4 = __OFSUB__(v3, 1);
  v5 = (v3 - 1);
  if (v5 < 0 != v4)
  {
    v8 = -1;
  }

  else
  {
    v6 = v2 + 20;
    v7 = v2 + 20 + 16 * v5;
    v8 = *v7;
    if (!(*(v7 + 12) >> 28))
    {
      goto LABEL_38;
    }

    v9 = (v2 + 16 * v5 + 16);
    while (v5 > 0)
    {
      v10 = v5--;
      v11 = *v9;
      v9 -= 4;
      if (!(v11 >> 28))
      {
        v12 = *(v6 + 16 * v5);
        v6 += 16 * v10;
        if (v8 <= v12)
        {
          v8 = v12;
        }

        break;
      }
    }

    *buf = 0;
    if (!_page_fetch_with_fd(a1, buf, *(v6 + 8), *(v6 + 12) & 0xFFFFFFF, 9, &v32, 0xFFFFFFFFLL, 0))
    {
      v13 = *(*buf + 8);
      if (v13 >= 21)
      {
        v14 = *buf + v13;
        v15 = *buf + 20;
        do
        {
          v16 = *(v15 + 4);
          if (*(v15 + 4) < 0)
          {
            v17 = *(v15 + 4);
            if (v17 > 0xBF)
            {
              if (v17 <= 0xDF)
              {
                v18 = ((v16 & 0x1F) << 16) | (*(v15 + 5) << 8);
                v19 = *(v15 + 6);
LABEL_29:
                v16 = v18 | v19;
                goto LABEL_30;
              }

              if (v17 <= 0xEF)
              {
                v18 = ((v16 & 0xF) << 24) | (*(v15 + 5) << 16) | (*(v15 + 6) << 8);
                v19 = *(v15 + 7);
                goto LABEL_29;
              }

              if (v17 <= 0xF7)
              {
                v18 = ((v16 & 7) << 32) | (*(v15 + 5) << 24) | (*(v15 + 6) << 16) | (*(v15 + 7) << 8);
                v19 = *(v15 + 8);
                goto LABEL_29;
              }

              if (v17 <= 0xFB)
              {
                v18 = ((v16 & 3) << 40) | (*(v15 + 5) << 32) | (*(v15 + 6) << 24) | (*(v15 + 7) << 16) | (*(v15 + 8) << 8);
                v19 = *(v15 + 9);
                goto LABEL_29;
              }

              if (v17 <= 0xFD)
              {
                v18 = ((v16 & 1) << 48) | (*(v15 + 5) << 40) | (*(v15 + 6) << 32) | (*(v15 + 7) << 24) | (*(v15 + 8) << 16) | (*(v15 + 9) << 8);
                v19 = *(v15 + 10);
                goto LABEL_29;
              }

              if (v17 != 255)
              {
                v18 = (*(v15 + 5) << 48) | (*(v15 + 6) << 40) | (*(v15 + 7) << 32) | (*(v15 + 8) << 24) | (*(v15 + 9) << 16) | (*(v15 + 10) << 8);
                v19 = *(v15 + 11);
                goto LABEL_29;
              }

              v16 = *(v15 + 5);
            }

            else
            {
              v16 = *(v15 + 5) | ((v16 & 0x3F) << 8);
            }
          }

LABEL_30:
          if (v8 <= v16)
          {
            v8 = v16;
          }

          v15 += (*v15 + 4);
        }

        while (v15 < v14);
      }

      page_release(a1, *buf, *(v6 + 8), 0x10u, 0);
    }
  }

  v20 = *(a1 + 992);
  if (v20)
  {
    v21 = *(v20 + 64);
    if (v8 <= v21)
    {
      v8 = v21;
    }
  }

LABEL_38:
  v22 = pthread_mutex_lock((a1 + 584));
  v23 = *(a1 + 780) - 1;
  *(a1 + 780) = v23;
  if (!v23)
  {
    db_rwlock_wakeup(a1 + 584, 0, 0);
  }

  pthread_mutex_unlock((a1 + 584));
  if (v22)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15143);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t db_datastore_set_bg_assertion_flag(uint64_t result, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v3 = result;
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *v3;
      *buf = 136315650;
      v11 = "db_datastore_set_bg_assertion_flag";
      v12 = 1024;
      v13 = 241;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 241, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *(result + 988) = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_dirty_datastore(int *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_dirty_datastore";
      v12 = 1024;
      v13 = 252;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 252, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *MEMORY[0x1E69E9840];

  return db2_dirty_datastore(a1);
}

void db_release_datastore(int *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 136315650;
      v10 = "db_release_datastore";
      v11 = 1024;
      v12 = 256;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 256, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  db2_sync_datastore(a1, 1);
  v2 = *MEMORY[0x1E69E9840];

  db2_release_datastore_no_sync(a1);
}

uint64_t db_unlock_datastore(int *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_unlock_datastore";
      v15 = 1024;
      v16 = 265;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 265, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  pthread_mutex_lock((a1 + 146));
  a1[197] = 0;
  v2 = *(a1 + 95);
  *(a1 + 190) = 0u;
  v3 = a1[195] != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup((a1 + 146), v3, 0);
  result = pthread_mutex_unlock((a1 + 146));
  if (v2)
  {
    v5 = *MEMORY[0x1E69E9840];

    return pthread_override_qos_class_end_np(v2);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t db_commit_shadow_datastore(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_commit_shadow_datastore";
      v25 = 1024;
      v26 = 271;
      v27 = 1024;
      LODWORD(v28) = v20;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v18;
    v21 = __si_assert_copy_extra_332();
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 271, v23);
    free(v22);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = data_map_count(*(a1 + 920));
      *buf = 134217984;
      *&buf[4] = v14;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Commit shadow at vector count %lld", buf, 0xCu);
    }

    *__error() = v12;
  }

  *(a1 + 4) = *(a1 + 4) & 0xFFFFFDFE | 1;
  v2 = fd_pwrite(*(a1 + 840), a1, 0x1000uLL, 0);
  v3 = *__error();
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  if (v2 == 4096)
  {
    goto LABEL_41;
  }

  if (v2 >= 0)
  {
    v4 = 22;
  }

  else
  {
    v4 = v3;
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "db2_commit_shadow_datastore";
    v25 = 1024;
    v26 = 8838;
    v27 = 2080;
    v28 = a1 + 324;
    v29 = 1024;
    v30 = v4;
    _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: Can't write DST master header (2: %d)\n", buf, 0x22u);
  }

  *__error() = v5;
  *(a1 + 4) |= 2u;
  *(a1 + 800) = v4;
  if (!v4)
  {
LABEL_41:
    if ((*(a1 + 804) & 0x14) != 0)
    {
      data_map_commit_shadow(*(a1 + 880));
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_map_commit_shadow(*(a1 + 888));
        if ((*(a1 + 804) & 0x14) != 0)
        {
          data_map_commit_shadow(*(a1 + 896));
          if ((*(a1 + 804) & 0x14) != 0)
          {
            data_map_commit_shadow(*(a1 + 904));
            if ((*(a1 + 804) & 0x14) != 0)
            {
              data_map_commit_shadow(*(a1 + 912));
            }
          }
        }
      }
    }

    data_map_commit_shadow(*(a1 + 920));
    v4 = 0;
  }

  v7 = *(a1 + 840);
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

  *buf = 0;
  v8 = _fd_acquire_fd(v7, buf);
  if (v8 != -1)
  {
    v9 = v8;
    prot_fsync(v8, 0);
    _fd_release_fd(v7, v9, 0, *buf);
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = data_map_count(*(a1 + 920));
      *buf = 134217984;
      *&buf[4] = v17;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Commit shadow completed at vector count %lld", buf, 0xCu);
    }

    *__error() = v15;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t db_commit_shadow_complete_datastore(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_commit_shadow_complete_datastore";
      v23 = 1024;
      v24 = 272;
      v25 = 1024;
      LODWORD(v26) = v18;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v16;
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 272, v21);
    free(v20);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = data_map_count(*(a1 + 920));
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Commit shadow complete at vector count %lld", buf, 0xCu);
    }

    *__error() = v13;
  }

  v2 = *(a1 + 4);
  *(a1 + 4) = v2 & 0xFFFFFDFF;
  if ((v2 & 0x80) != 0)
  {
    v3.i32[0] = *a1;
    v3.i32[1] = v2 & 0xFFFFFDFF;
    v3.i64[1] = *(a1 + 8);
    *a1 = vrev32q_s8(v3);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  v4 = fd_pwrite(*(a1 + 848), a1, 0x1000uLL, 0);
  __error();
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  if (v4 == 4096)
  {
    v5 = 0;
  }

  else
  {
    if (v4 < 0)
    {
      v5 = *__error();
    }

    else
    {
      v5 = 22;
    }

    v6 = *__error();
    v7 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "db2_commit_shadow_complete_datastore";
      v23 = 1024;
      v24 = 8893;
      v25 = 2080;
      v26 = a1 + 324;
      v27 = 1024;
      v28 = v5;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: Can't write DST header (2: %d)\n", buf, 0x22u);
    }

    *__error() = v6;
    *(a1 + 4) |= 2u;
    *(a1 + 800) = v5;
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    data_map_commit_shadow_complete(*(a1 + 880));
    if ((*(a1 + 804) & 0x14) != 0)
    {
      data_map_commit_shadow_complete(*(a1 + 888));
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_map_commit_shadow_complete(*(a1 + 896));
        if ((*(a1 + 804) & 0x14) != 0)
        {
          data_map_commit_shadow_complete(*(a1 + 904));
          if ((*(a1 + 804) & 0x14) != 0)
          {
            data_map_commit_shadow_complete(*(a1 + 912));
          }
        }
      }
    }
  }

  data_map_commit_shadow_complete(*(a1 + 920));
  v8 = *(a1 + 848);
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

  *buf = 0;
  v9 = _fd_acquire_fd(v8, buf);
  if (v9 != -1)
  {
    v10 = v9;
    prot_fsync(v9, 0);
    _fd_release_fd(v8, v10, 0, *buf);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

void db_release_datastore_no_sync(int *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 136315650;
      v10 = "db_release_datastore_no_sync";
      v11 = 1024;
      v12 = 273;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 273, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *MEMORY[0x1E69E9840];

  db2_release_datastore_no_sync(a1);
}

uint64_t db_get_vector_store(int *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_get_vector_store";
      v12 = 1024;
      v13 = 280;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 280, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  result = *(a1 + 115);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_set_host(int *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *a1;
      *__str = 136315650;
      v24 = "db_set_host";
      v25 = 1024;
      v26 = 283;
      v27 = 1024;
      v28 = v14;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", __str, 0x18u);
    }

    *__error() = v12;
    v15 = __si_assert_copy_extra_332();
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 283, v17);
    free(v16);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v4 = *(a1 + 115);
  if (!v4)
  {
    bzero(__str, 0x400uLL);
    v5 = strrchr(a1 + 324, 47);
    v6 = "db";
    if (v5)
    {
      v7 = v5;
      if (strcmp(v5 + 1, "store.db"))
      {
        v6 = v7 + 1;
      }
    }

    snprintf(__str, 0x400uLL, "%sStr-%d.map", v6, 6);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v8 = *(a1 + 105);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = -1;
    }

    LODWORD(v18) = v9;
    *(&v18 + 1) = __str;
    *(&v19 + 1) = _db2_synced_block_callback;
    *&v20 = _db2_unmap_callback;
    *(&v20 + 1) = 0;
    *&v21 = 0;
    *(&v21 + 1) = a1;
    DWORD2(v22) = 0;
    *&v19 = 0x24100000004;
    v4 = data_map_init_with_ctx(&v18);
    *(a1 + 115) = v4;
  }

  result = data_map_set_host(v4, a2);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_create_id_for_field(_DWORD *a1, char *__s, unsigned int a3, int a4)
{
  if (*a1 != 1685287992)
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 334, v18);
    free(v17);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v6 = a1[201];
  if ((a3 & 0x400) != 0)
  {
    a4 = 0;
  }

  v8 = (a3 >> 4) & 2 | (a3 >> 7) & 1 | (a3 >> 1) & 4 | (a3 >> 5) & 8 | (a3 >> 3) & 0x40;
  v9 = (a3 >> 8) & 0x20 | (a3 >> 7) & 0x180 | v8;
  v10 = (a3 >> 5) & 0x780 | (a3 >> 6) & 0x20 | v8;
  if (a4 == 14 && (a3 & 0x4000) != 0)
  {
    LOWORD(v10) = v10 | 0xFF80;
  }

  if ((v6 & 4) != 0)
  {
    LOWORD(v10) = v9;
  }

  if ((a3 & 0x10) != 0)
  {
    v12 = 15;
  }

  else
  {
    v12 = 11;
  }

  if (a4 == 11)
  {
    LOBYTE(a4) = v12;
  }

  v19 = a4 | (v10 << 8);
  v13 = ((v6 >> 3) & 1) == 0;
  v14 = strlen(__s);
  return _get_id_for_string(a1, 0, __s, v14, v13, &v19);
}

uint64_t db_create_id_for_value(int *a1, char *__s)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      *buf = 136315650;
      v15 = "db_create_id_for_value";
      v16 = 1024;
      v17 = 336;
      v18 = 1024;
      v19 = v10;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v8;
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 336, v13);
    free(v12);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((a1[201] & 8) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = -2147483647;
  }

  v5 = strlen(__s);
  result = _get_id_for_string(a1, 1, __s, v5, v4, 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_delete_field(int *a1, uint64_t *a2, char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_delete_field";
      v15 = 1024;
      v16 = 365;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 365, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v3 = *a2;
  v4 = *MEMORY[0x1E69E9840];

  return _delete_field(a1, v3, a3, 0);
}

uint64_t db_get_field_locked(int *a1, uint64_t a2, char *__s, unint64_t *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_get_field_locked";
      *&buf[12] = 1024;
      *&buf[14] = 369;
      v26 = 1024;
      v27 = v21;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v19;
    v22 = __si_assert_copy_extra_332();
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 369, v24);
    free(v23);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = internal_copy_field_ids(a1, __s, buf, 4uLL, 1);
  if (v8)
  {
    v9 = *(a2 + 12);
    if (v9 >= 0x31 && *v8)
    {
      v10 = a2 + v9;
      v11 = a2 + 48;
      while (2)
      {
        v12 = 1;
        v13 = *v8;
        do
        {
          if (*(v11 + 4) == v13)
          {
            if (a4)
            {
              *a4 = v11;
            }

            if (a5)
            {
              *a5 = v11 + 13;
            }

            v14 = 0;
            v15 = 0;
            goto LABEL_21;
          }

          v13 = v8[v12++];
        }

        while (v13);
        v11 += *(v11 + 8) + 13;
        if (v11 < v10)
        {
          continue;
        }

        break;
      }
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    v14 = 2;
    v15 = 2;
LABEL_21:
    if (buf != v8)
    {
      free(v8);
      v15 = v14;
    }
  }

  else
  {
    v15 = 2;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

char *db_get_field_name_for_id(int *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_get_field_name_for_id";
      v13 = 1024;
      v14 = 391;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 391, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v2 = *MEMORY[0x1E69E9840];

  return get_string_and_length_for_id_15021(a1, 0, a2, 0, 0);
}

unint64_t db_get_field_id_limit(int *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_get_field_id_limit";
      v14 = 1024;
      v15 = 392;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 392, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *(a1 + 110);
  if ((a1[201] & 0x14) != 0)
  {
    result = 0;
    if (v1)
    {
      v3 = *(v1 + 216);
      if (v3 <= 842150449)
      {
        if (v3 == -572662307)
        {
          result = data_map_double_count(v1);
          goto LABEL_14;
        }

        if (v3 != -270471200)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      if (v3 == 1684300900)
      {
LABEL_12:
        result = *(v1 + 224) - 1;
        goto LABEL_14;
      }

      if (v3 == 842150450)
      {
        result = (*(v1 + 220) - 1);
      }
    }
  }

  else
  {
    result = *(v1 + 56);
  }

LABEL_14:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_get_vector_for_id_locked(uint64_t a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (*a1 != 1685287992)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 398, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v5 = *(a1 + 920);

  return db2_get_vector_for_id_locked(v5, a2, a3, a4);
}

_DWORD *db_clear_docids_setup(int *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_clear_docids_setup";
      v12 = 1024;
      v13 = 412;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 412, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *result = 0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void db_clear_docids_cleanup(int *a1, _DWORD *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      *buf = 136315650;
      v15 = "db_clear_docids_cleanup";
      v16 = 1024;
      v17 = 413;
      v18 = 1024;
      v19 = v10;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v8;
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 413, v13);
    free(v12);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (a2)
  {
    if (*a2)
    {
      a1[1] &= ~0x20u;
      pthread_mutex_lock((a1 + 146));
      a1[197] = 0;
      v4 = *(a1 + 95);
      *(a1 + 190) = 0u;
      v5 = a1[195] != 0;
      *(a1 + 796) = 0;
      db_rwlock_wakeup((a1 + 146), v5, 0);
      pthread_mutex_unlock((a1 + 146));
      if (v4)
      {
        pthread_override_qos_class_end_np(v4);
      }
    }

    v6 = *MEMORY[0x1E69E9840];

    free(a2);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

uint64_t db_clear_docids_matching_bundles(_DWORD *a1, _DWORD *a2, _DWORD *a3, unsigned int *a4, unsigned int a5, unsigned int (*a6)(void *, uint64_t), uint64_t a7)
{
  v7 = a1;
  v118 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v92 = *__error();
    v93 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = *v7;
      *buf = 136315650;
      *&buf[4] = "db_clear_docids_matching_bundles";
      *&buf[12] = 1024;
      *&buf[14] = 415;
      *&buf[18] = 1024;
      *&buf[20] = v94;
      _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v92;
    v95 = __si_assert_copy_extra_332();
    v96 = v95;
    if (v95)
    {
      v97 = v95;
    }

    else
    {
      v97 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 415, v97);
    free(v96);
LABEL_148:
    v91 = 2989;
LABEL_150:
    *v91 = -559038737;
    abort();
  }

  v114 = 0;
  if (!a5)
  {
    v15 = 0;
    v16 = 0;
    v17 = 2;
    goto LABEL_95;
  }

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

  pthread_mutex_lock((v7 + 584));
  if (*(v7 + 768) || *(v7 + 780) || (*(v7 + 796) & 1) != 0)
  {
LABEL_10:
    db_rwlock_wait(v7 + 584, v14, 2);
    goto LABEL_11;
  }

  if (v14 <= 5)
  {
    v61 = v14 - 6;
    v62 = (v7 + 16 * v14 + 648);
    while (!*v62)
    {
      v62 += 2;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_105;
      }
    }

    goto LABEL_10;
  }

LABEL_105:
  *(v7 + 768) = pthread_self();
LABEL_11:
  pthread_mutex_unlock((v7 + 584));
  if (a2)
  {
    *a2 = 1;
  }

  if (!flush_updateset_locked(v7))
  {
    v18 = *(v7 + 928);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___db2_clear_cache_locked_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_159_14950;
    *&buf[32] = v7;
    buf[40] = 0;
    db_cache_clear(v18, buf);
  }

  if (sdbLargeCacheArray)
  {
    cache_remove_all(sdbLargeCacheArray);
  }

  v19 = *(v7 + 856);
  if (*(v19 + 8) < 1)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_39;
  }

  v105 = a7;
  v110 = a2;
  v112 = v7;
  v20 = 0;
  v15 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = 0;
    v25 = v23;
    v23 = *(v19 + 16 * v20 + 24) & 0x7FFFFFFF;
    v26 = a4;
    v27 = a5;
    do
    {
      v29 = *v26++;
      v28 = v29;
      v30 = v29 < v25 || v28 > v23;
      v31 = !v30;
      v24 |= v31;
      --v27;
    }

    while (v27);
    if (v24)
    {
      if (v21 + 1 >= v22)
      {
        if (v22)
        {
          v22 *= 2;
        }

        else
        {
          v22 = 128;
        }

        v17 = 12;
        v15 = reallocf(v15, 12 * v22);
        if (!v15)
        {
          v16 = 0;
          v7 = v112;
          goto LABEL_95;
        }

        v19 = *(v112 + 856);
      }

      v32 = &v15[12 * v21];
      *v32 = *(v19 + 16 * v20 + 28);
      *(v32 + 1) = v20;
      *(v32 + 2) = 0;
      ++v21;
    }

    ++v20;
  }

  while (v20 < *(v19 + 8));
  if (v21 < 2)
  {
    if (!v21)
    {
      v16 = 0;
      goto LABEL_93;
    }
  }

  else
  {
    qsort(v15, v21, 0xCuLL, _db_page_info_cmp);
  }

  v33 = malloc_type_valloc(*(v112 + 44), 0x1000040A86A77D5uLL);
  v16 = v33;
  if (!v33)
  {
    v17 = 12;
LABEL_94:
    v7 = v112;
    goto LABEL_95;
  }

  if (v21 < 1)
  {
LABEL_93:
    v17 = 0;
    goto LABEL_94;
  }

  v34 = 0;
  v100 = 0;
  v35 = v21;
  v36 = v33;
  v7 = v112;
  while (1)
  {
    if (*a3)
    {
      v17 = 89;
      goto LABEL_95;
    }

    if ((~*(v112 + 4) & 0x60) == 0)
    {
      v17 = 22;
      goto LABEL_95;
    }

    v37 = v35;
    v38 = &v15[12 * v34];
    v39 = *v38 << *(v112 + 12);
    v40 = fd_pread(*(v112 + 848), v36, *(v112 + 44), v39);
    if (v40 <= 0)
    {
      v17 = v40;
      if ((v40 & 0x8000000000000000) == 0)
      {
        v17 = 96;
        goto LABEL_95;
      }

      v35 = v37;
      *(v112 + 4) |= 4u;
      goto LABEL_117;
    }

    if (*v36 != 846226020 && *v36 != 1684172850)
    {
      v46 = v36;
      v47 = *__error();
      v48 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v56 = *v46;
        *buf = 136315906;
        *&buf[4] = "db2_clear_docids_matching_bundles";
        *&buf[12] = 1024;
        *&buf[14] = 10055;
        *&buf[18] = 1024;
        *&buf[20] = v56;
        *&buf[24] = 2048;
        *&buf[26] = v39;
        _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: unexpected page signature 0x%x at offset %lld", buf, 0x22u);
      }

      *__error() = v47;
      v35 = v37;
      v36 = v46;
      goto LABEL_68;
    }

    v41 = db2_page_uncompress_swap(v112, v36, &v114, 0);
    if (v41)
    {
      v17 = v41;
      goto LABEL_95;
    }

    v42 = v114;
    if (v114)
    {
      v36 = v114;
    }

    if (*v36 != 1684172850)
    {
      v35 = v37;
      if (v114)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if ((v36[3] & 0xF0) == 0)
    {
      break;
    }

LABEL_60:
    v35 = v37;
LABEL_61:
    v42 = v114;
    if (v114)
    {
LABEL_67:
      free(v42);
      v114 = 0;
      v36 = v16;
    }

LABEL_68:
    if (++v34 == v35)
    {
      v17 = 0;
LABEL_117:
      if (v17 || !v100)
      {
        goto LABEL_95;
      }

      if (!flush_updateset_locked(v112))
      {
        v68 = *(v112 + 928);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___db2_clear_cache_locked_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_159_14950;
        *&buf[32] = v112;
        buf[40] = 0;
        db_cache_clear(v68, buf);
      }

      v69 = v36;
      if (sdbLargeCacheArray)
      {
        cache_remove_all(sdbLargeCacheArray);
      }

      *(*(v112 + 856) + 12) |= 1u;
      do
      {
        v70 = &v15[12 * v35 - 12];
        if (!*(v70 + 2))
        {
          v71 = *(v112 + 856);
          v72 = *(v71 + 8);
          if (v72 >= 1)
          {
            v73 = 0;
            v74 = *v70;
            v75 = v71 + 20;
            v76 = (v71 + 28);
            v77 = -1;
            v78 = -1;
            do
            {
              v80 = *v76;
              v76 += 4;
              v79 = v80;
              if (v78 == -1 || v79 > *(v75 + 16 * v78 + 8))
              {
                v78 = v73;
              }

              if (v79 == v74)
              {
                v77 = v73;
              }

              ++v73;
            }

            while (v72 != v73);
            if (v77 != -1)
            {
              v81 = v75 + 16 * v78;
              v84 = *(v81 + 8);
              v82 = (v81 + 8);
              v83 = v84;
              v85 = v77 == v72 - 1 && v78 == -1;
              if (!v85)
              {
                v86 = (v75 + 16 * v77);
                *v82 = v86[2];
                memmove(v86, v86 + 4, 16 * (v72 - v77));
                if (v83 != v74)
                {
                  fd_pread(*(v112 + 848), v69, *(v112 + 44), v83 << *(v112 + 12));
                  fd_pwrite(*(v112 + 848), v69, *(v112 + 44), v74 << *(v112 + 12));
                }
              }

              --*(*(v112 + 856) + 8);
              fd_truncate(*(v112 + 848), v83 << *(v112 + 12));
              v85 = v83 == v74;
              a2 = v110;
              if (!v85)
              {
                _add_dirty_chunk(v112, v74, *(v112 + 44), 0);
              }
            }
          }
        }

        v30 = v35-- <= 1;
      }

      while (!v30);
LABEL_39:
      v17 = 0;
      goto LABEL_95;
    }
  }

  v101 = v16;
  v43 = v36 + 5;
  v44 = v36[2];
  v104 = (v36 + v44);
  if (v36 + v36[5] + 20 > v36 + v44 || v44 < 21)
  {
    v16 = v101;
    goto LABEL_60;
  }

  v102 = v36;
  v103 = 0;
  v106 = 0;
  v107 = 0;
  v49 = 0;
  v98 = *(v38 + 1);
  v99 = v39 >> *(v112 + 12);
  __dst = (v36 + 5);
  while (1)
  {
    if (*v43 == -4)
    {
LABEL_83:
      v16 = v101;
      v35 = v37;
      if ((v49 & 1) == 0)
      {
        goto LABEL_89;
      }

      *(v38 + 2) = v107;
      if (!v107)
      {
        ++v100;
LABEL_89:
        a2 = v110;
        goto LABEL_61;
      }

      v36[2] = __dst - v36;
      a2 = v110;
      if (v103)
      {
        v55 = *(v112 + 856);
        *(v55 + 12) |= 1u;
        *(v55 + 16 * v98 + 20) = v103;
      }

      page_release(v112, v36, v99, 5u, 0);
      goto LABEL_61;
    }

    v113 = 0;
    v50 = _inflateDBO(v112, v43, &v113, 0, 0x10000, 0);
    if (v50)
    {
      break;
    }

    v51 = v113;
    if (*(v113 + 3) <= 0x2Fu)
    {
      v88 = __si_assert_copy_extra_3233(0, -1);
      v89 = v88;
      v90 = "";
      if (v88)
      {
        v90 = v88;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v90);
      free(v89);
      if (__valid_fs(-1))
      {
        goto LABEL_148;
      }

      v91 = 3072;
      goto LABEL_150;
    }

    if (!v106)
    {
      v106 = *v113;
    }

    if ((*(v113 + 40) & 5) != 0 || !a6(v113, v105))
    {
      ++v107;
      v103 = *v51;
      v52 = *v43 + 4;
      v53 = (v43 + v52);
      if (v49)
      {
        memcpy(__dst, v43, *v43 + 4);
        v54 = __dst;
        v49 = 1;
        v51 = v113;
      }

      else
      {
        v49 = 0;
        v54 = __dst;
      }

      __dst = &v54[v52];
      v36 = v102;
    }

    else
    {
      v53 = (v43 + *v43 + 4);
      v49 = 1;
    }

    free(v51);
    v43 = v53;
    if (v53 >= v104)
    {
      goto LABEL_83;
    }
  }

  v17 = v50;
  v64 = *__error();
  v65 = _SILogForLogForCategory(7);
  v66 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
  v67 = v113;
  if (v66)
  {
    v87 = *v43 + 4;
    *buf = 136316418;
    *&buf[4] = "db2_clear_docids_matching_bundles";
    *&buf[12] = 1024;
    *&buf[14] = 10099;
    *&buf[18] = 2080;
    *&buf[20] = __dst;
    *&buf[28] = 1024;
    *&buf[30] = v87;
    *&buf[34] = 2048;
    *&buf[36] = v113;
    v116 = 1024;
    v117 = v17;
    _os_log_error_impl(&dword_1C278D000, v65, OS_LOG_TYPE_ERROR, "%s:%d: failed to inflate DBO: mark:%s size:%d mdbo:%p err:%d", buf, 0x32u);
  }

  *__error() = v64;
  a2 = v110;
  if (v67)
  {
    free(v67);
  }

  v16 = v101;
LABEL_95:
  free(v114);
  free(v16);
  free(v15);
  pthread_mutex_lock((v7 + 584));
  *(v7 + 788) = 0;
  v57 = *(v7 + 760);
  *(v7 + 760) = 0u;
  v58 = *(v7 + 780) != 0;
  *(v7 + 796) = 0;
  db_rwlock_wakeup(v7 + 584, v58, 0);
  pthread_mutex_unlock((v7 + 584));
  if (v57)
  {
    pthread_override_qos_class_end_np(v57);
  }

  if (a2)
  {
    *a2 = 0;
  }

  v59 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t db_set_ignore_vectors(uint64_t result, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v3 = result;
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *v3;
      *buf = 136315650;
      v11 = "db_set_ignore_vectors";
      v12 = 1024;
      v13 = 427;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 427, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *(result + 989) = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t db_clear_vector_fields(int *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_clear_vector_fields";
      v15 = 1024;
      v16 = 428;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 428, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v4 = *MEMORY[0x1E69E9840];

  return db2_clear_vector_fields(a1, a2, a3, 0, a4);
}

uint64_t db_apply(int *a1, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_apply";
      v14 = 1024;
      v15 = 431;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 431, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v3 = *MEMORY[0x1E69E9840];

  return db2_apply(a1, a2, a3);
}

uint64_t db_set_dirty_chunks(uint64_t result, uint64_t a2, int a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v26 = __si_assert_copy_extra_332();
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 435, v28);
    free(v27);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  LODWORD(v4) = a3;
  v6 = result;
  if (!*(result + 864))
  {
    *(result + 864) = a2;
    *(result + 872) = a3;
    *(result + 876) = a4;
    goto LABEL_26;
  }

  v7 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v7 = __THREAD_SLOT_KEY;
  }

  v8 = pthread_getspecific(v7);
  HIDWORD(v10) = qos_class_self() - 9;
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 2;
  if (v9 > 6)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_1C2BFF8F0[v9];
  }

  v12 = pthread_mutex_lock((v6 + 584));
  if (*(v6 + 768) || *(v6 + 780) || (*(v6 + 796) & 1) != 0)
  {
    goto LABEL_12;
  }

  if (v11 <= 5)
  {
    v23 = v11 - 6;
    v24 = (v6 + 16 * v11 + 648);
    while (!*v24)
    {
      v24 += 2;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_32;
      }
    }

LABEL_12:
    db_rwlock_wait(v6 + 584, v11, 2);
    goto LABEL_13;
  }

LABEL_32:
  *(v6 + 768) = pthread_self();
LABEL_13:
  pthread_mutex_unlock((v6 + 584));
  if (v12)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "db2_set_dirty_chunks";
      v33 = 1024;
      v34 = 15253;
      v35 = 1024;
      v36 = v12;
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v29;
    sdb2_die(v6, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15253);
  }

  if (v8)
  {
    v13 = CIOnThreadCleanUpPush(v8 - 1, db_write_unlock, v6 + 584);
    if (!v4)
    {
      goto LABEL_20;
    }

LABEL_18:
    v4 = v4;
    v14 = (a2 + 4);
    do
    {
      _add_dirty_chunk(v6, *(v14 - 1), *v14, 0);
      v14 += 2;
      --v4;
    }

    while (v4);
    goto LABEL_20;
  }

  v13 = -1;
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_20:
  v15 = pthread_mutex_lock((v6 + 584));
  *(v6 + 788) = 0;
  v16 = *(v6 + 760);
  *(v6 + 760) = 0u;
  v17 = *(v6 + 780) != 0;
  *(v6 + 796) = 0;
  db_rwlock_wakeup(v6 + 584, v17, 0);
  result = pthread_mutex_unlock((v6 + 584));
  if (v16)
  {
    result = pthread_override_qos_class_end_np(v16);
  }

  if (v15)
  {
    sdb2_die(v6, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15257);
  }

  if (v8)
  {
    result = CIOnThreadCleanUpClearItem(v8 - 1, v13);
    v18 = &threadData[9 * (v8 - 1)];
    v21 = *(v18 + 14);
    v19 = v18 + 7;
    v20 = v21;
    if (v13 + 1 == v21)
    {
      *v19 = v20 - 1;
    }
  }

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void db_garbage_collect_strings_commit(uint64_t a1, _BYTE *a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    if (a1)
    {
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_maps_garbage_compact_collect_commit(a1 + 880, a2, 0);
        if (a2[16896] == 1)
        {
          (*(*(a1 + 968) + 16))();
        }
      }
    }

    free(a2);
  }
}

BOOL db_uses_stringmap(uint64_t a1)
{
  if (*a1 != 1685287992)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 470, v4);
    free(v3);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return (*(a1 + 804) & 0x14) != 0;
}

void *db_open_query_with_expr(_DWORD *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v24 = __si_assert_copy_extra_332();
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 569, v26);
    free(v25);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (*MEMORY[0x1E69E9AC8] <= 0x7FFuLL)
  {
    ++sTotal_14546;
  }

  v4 = malloc_type_zone_calloc(queryZone, 0x800uLL, 1uLL, 0x5BAF1CEAuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 3506;
    v4[250] = a2;
    v4[1] = 0;
    v4[2] = a1;
    *(v4 + 506) = 20;
    v6 = malloc_type_malloc(a1[11], 0x1000040A86A77D5uLL);
    *(v5 + 255) = v6;
    if (v6)
    {
      v30 = 0;
      v31 = 0;
      v7 = CICleanUpThreadLocGet(&v30);
      v8 = _db_write_lock((a1 + 146));
      if (v8)
      {
        v27 = v8;
        v28 = *__error();
        v29 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v33 = "db2_open_query_with_expr";
          v34 = 1024;
          v35 = 43;
          v36 = 1024;
          v37 = v27;
          _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
        }

        *__error() = v28;
        sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 43);
      }

      if (v7)
      {
        v9 = CIOnThreadCleanUpPush(v30, db_write_unlock, (a1 + 146));
      }

      else
      {
        v9 = -1;
      }

      _db2_flush_all_cache(a1, 0);
      v10 = a1[9];
      v11 = a1[10];
      v12 = v11 + v10;
      *(v5 + 252) = v11 + v10;
      v13 = a1[11];
      if (v11 + v10 == a1[12])
      {
        v12 += 0x4000;
        *(v5 + 252) = v12;
      }

      v14 = *(v5 + 255);
      while (fd_pread(*(*(v5 + 2) + 848), v14, v13, v12) == v13 && !db2_page_uncompress_swap(a1, *(v5 + 255), &v31, 0))
      {
        v14 = *(v5 + 255);
        if (v31)
        {
          free(*(v5 + 255));
          v14 = v31;
          *(v5 + 255) = v31;
        }

        if (*v14 != 1684172850)
        {
          break;
        }

        v15 = v14[3];
        if ((v15 & 0xF0) == 0)
        {
          goto LABEL_26;
        }

        if ((v15 & 4) != 0)
        {
          v16 = 4;
        }

        else
        {
          v16 = 1;
        }

        v13 = v14[v16];
        v12 = *(v5 + 252) + v13;
        *(v5 + 252) = v12;
      }

      *(v5 + 502) = -1;
LABEL_26:
      if (db_write_unlock((a1 + 146)))
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 96);
      }

      if (v7)
      {
        v17 = v30;
        CIOnThreadCleanUpClearItem(v30, v9);
        v18 = &threadData[9 * v17];
        v21 = *(v18 + 14);
        v19 = v18 + 7;
        v20 = v21;
        if (v9 + 1 == v21)
        {
          *v19 = v20 - 1;
        }
      }

      *(v5 + 254) = 0;
    }

    else
    {
      free(v5);
      v5 = 0;
    }
  }

  else
  {
    _log_fault_for_malloc_failure();
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t db_restore_dirty_chunk_info(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v29 = __si_assert_copy_extra_332();
    v30 = v29;
    v31 = "";
    if (v29)
    {
      v31 = v29;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "core-db.c", 827, "!info->dirty_chunks", v31);
    goto LABEL_38;
  }

  v9 = x_openat(a1, "store.updates", 256, a4, a5, a6, a7, a8, v35);
  if (v9 == -1)
  {
    v11 = *__error();
    goto LABEL_29;
  }

  v48 = 0u;
  v49 = 0u;
  *buf = 0u;
  v47 = 0u;
  if ((store_stream_init_fd(buf, v9, 0, 0, 0) & 1) == 0)
  {
    v11 = v47;
    goto LABEL_29;
  }

  if (store_stream_read_vint32(buf) != 1)
  {
    v11 = v47;
    goto LABEL_28;
  }

  *(a2 + 8) = store_stream_read_vint32(buf);
  vint32 = store_stream_read_vint32(buf);
  *(a2 + 12) = vint32;
  if (*(a2 + 8) <= vint32)
  {
    v14 = malloc_type_malloc(8 * vint32, 0x100004000313F17uLL);
    *a2 = v14;
    if (v14)
    {
      if (*(a2 + 8))
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v18 = store_stream_read_vint32(buf);
          v19 = store_stream_read_vint32(buf);
          v11 = v47;
          if (v47)
          {
            break;
          }

          v17 += v18;
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0x10000;
          }

          v21 = (*a2 + v15);
          *v21 = v17;
          v21[1] = v20;
          ++v16;
          v15 += 8;
          if (v16 >= *(a2 + 8))
          {
            v11 = 0;
            goto LABEL_28;
          }
        }

        v14 = *a2;
      }

      else
      {
        v11 = v47;
        if (!v47)
        {
          goto LABEL_28;
        }
      }

      free(v14);
      *a2 = 0;
LABEL_28:
      store_stream_destroy(buf);
      goto LABEL_29;
    }

    v33 = __si_assert_copy_extra_332();
    v30 = v33;
    v34 = "";
    if (v33)
    {
      v34 = v33;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "core-db.c", 851, "info->dirty_chunks", v34);
LABEL_38:
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

  if (v47)
  {
    v11 = v47;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = *__error();
  v13 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a2 + 8);
    v28 = *(a2 + 12);
    *v36 = 136316162;
    v37 = "db_restore_dirty_chunk_info";
    v38 = 1024;
    v39 = 844;
    v40 = 1024;
    v41 = v11;
    v42 = 1024;
    v43 = v27;
    v44 = 1024;
    v45 = v28;
    _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: err:%d num_chunks:%d > max_chunks:%d", v36, 0x24u);
  }

  *__error() = v12;
LABEL_29:
  close(v9);
  if (v11)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(4);
    v24 = dword_1EBF46ADC < 3;
    if (os_log_type_enabled(v23, (dword_1EBF46ADC < 3)))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&dword_1C278D000, v23, v24, "*warn* Restore error: %d, recovering from shadow", buf, 8u);
    }

    *__error() = v22;
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t _fd_protection_class(int a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  else
  {
    return fcntl(a2, 63);
  }
}

uint64_t _assert_match_address(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 3072;
  if (a2 == 2989)
  {
    v2 = 1;
  }

  return a2 == 2816 || v2;
}

BOOL _mappingMatchAddress(uint64_t *a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = a1[1];
    v4 = 1;
    v5 = *a1;
    v6 = 1;
    while (1)
    {
      v7 = *v3;
      if (*v3 + 1 >= 2 && v7 <= a2)
      {
        v9 = v7 + v3[1];
        if (v9 > a2)
        {
          break;
        }
      }

      v6 = v4++ < *a1;
      v3 += 3;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    v10 = v3[2];
    memset(&v24, 0, sizeof(v24));
    memset(v43, 0, sizeof(v43));
    if (v10)
    {
      v11 = *(v10 + 44);
    }

    else
    {
      v11 = -1;
    }

    v14 = fd_name(v10, v43, 0x100uLL);
    v15 = fstatat(v11, v14, &v24, 32);
    v16 = *__error();
    v17 = _SILogForLogForCategory(0);
    v18 = gSILogLevels[0] < 3;
    v19 = os_log_type_enabled(v17, (gSILogLevels[0] < 3));
    if (v15)
    {
      if (v19)
      {
        *buf = 136316162;
        v26 = "mapping";
        v27 = 2080;
        v28 = v14;
        v29 = 2048;
        v30 = a2;
        v31 = 2048;
        v32 = v7;
        v33 = 2048;
        v34 = v9;
        v20 = "*warn* Got exception on %s %s addr:%p start:%p map end:%p";
        v21 = v17;
        v22 = v18;
        v23 = 52;
LABEL_21:
        _os_log_impl(&dword_1C278D000, v21, v22, v20, buf, v23);
      }
    }

    else if (v19)
    {
      *buf = 136317186;
      v26 = "mapping";
      v27 = 2080;
      v28 = v14;
      v29 = 2048;
      v30 = a2;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v9;
      v35 = 1024;
      v36 = 0;
      v37 = 2048;
      st_size = v24.st_size;
      v39 = 1024;
      st_dev = v24.st_dev;
      v41 = 2048;
      st_ino = v24.st_ino;
      v20 = "*warn* Got exception on %s %s addr:%p start:%p map end:%p sres:%d file_size:%lld dev:%d ino:%lld";
      v21 = v17;
      v22 = v18;
      v23 = 84;
      goto LABEL_21;
    }

    *__error() = v16;
    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

char *copyVolumeInfoStr(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (a1 != -1)
  {
    bzero(&v14, 0x878uLL);
    if (fstatfs(a1, &v14))
    {
      v2 = *__error();
      v3 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v6 = *__error();
        *buf = 136315650;
        v9 = "copyVolumeInfoStr";
        v10 = 1024;
        v11 = 45;
        v12 = 1024;
        v13 = v6;
        _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: fstatfs err:%d", buf, 0x18u);
      }

      *__error() = v2;
    }

    else
    {
      asprintf(&v7, "(%s, t: 0x%x, st: 0x%x, f: 0x%x)", v14.f_fstypename, v14.f_type, v14.f_fssubtype, v14.f_flags);
      result = v7;
      if (v7)
      {
        goto LABEL_7;
      }
    }
  }

  result = strdup("");
LABEL_7:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t check_crash_state(int a1, int a2, char a3, uint64_t *a4, int a5)
{
  v150 = *MEMORY[0x1E69E9840];
  bzero(v141, 0x400uLL);
  v10 = fcntl(a1, 50, v141);
  if (v141[0])
  {
    v11 = v10 < 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v141;
  }

  v135 = v13;
  v14 = time(0);
  __s2 = getBuildVersion();
  v15 = a3 & 4;
  v16 = 3600;
  if ((a3 & 4) == 0)
  {
    v16 = 10800;
  }

  if (a3)
  {
    v17 = 14400;
  }

  else
  {
    v17 = v16;
  }

  v18 = os_log_create("com.apple.spotlight.trace", "SignPosts");
  v19 = v18;
  if (a4)
  {
    *a4 = -1;
  }

  v140 = 0;
  if (v12)
  {
    if (os_signpost_enabled(v18))
    {
      *__s = 0;
      v20 = __s;
      v21 = v19;
LABEL_30:
      v35 = (v15 >> 1) ^ 3;
LABEL_31:
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v21, OS_SIGNPOST_EVENT, v35, "check_crash_state_signpost", &unk_1C2C3BEBB, v20, 2u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v22 = v18;
  v124 = a4;
  bzero(__s, 0x400uLL);
  v116 = __s;
  if ((fcntl(a1, 50) & 0x80000000) == 0 && __s[0])
  {
    size = strlen(__s) + 1;
    v28 = (v15 >> 1) ^ 3;
    v29 = a2;
    v30 = v22;
    v120 = v15;
    if (a2)
    {
      bzero(buf, 0x400uLL);
      v31 = strrchr(__s, 47);
      if (!v31 || (v33 = v31[1], v32 = v31 + 1, !v33))
      {
        v40 = -1;
        goto LABEL_48;
      }

      if (a5)
      {
        if (a5 == 1)
        {
          v34 = "mds64-crash-state-vector-index-v2";
        }

        else
        {
          v34 = "mds64-crash-state-reverse-store-v2";
          if (a5 == 3)
          {
            v34 = "mds64-crash-state-forward-path-index-v2";
          }
        }
      }

      else
      {
        v34 = "mds64-crash-state-v2";
      }

      snprintf(buf, 0x400uLL, "/private/var/db/Spotlight-V100/%s-%s", v32, v34);
      LOWORD(v116) = 0;
      v39 = buf;
      v41 = -1;
      v42 = 0x20000000;
    }

    else
    {
      if (a5)
      {
        if (a5 == 1)
        {
          v39 = "mds64-crash-state-vector-index-v2";
        }

        else if (a5 == 3)
        {
          v39 = "mds64-crash-state-forward-path-index-v2";
        }

        else
        {
          v39 = "mds64-crash-state-reverse-store-v2";
        }
      }

      else
      {
        v39 = "mds64-crash-state-v2";
      }

      v41 = a1;
      v42 = 0;
    }

    v40 = x_openat(v41, v39, v42, v23, v24, v25, v26, v27, v116);
LABEL_48:
    if (v40 != -1)
    {
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v132 = 0;
      v43 = 0x100004077774924;
      v117 = 0;
      v118 = -1;
      v119 = -1;
      v130 = v17;
      v131 = v28;
      v126 = v30;
      v127 = a2;
      v128 = a1;
      v129 = v40;
      for (i = v14; ; v14 = i)
      {
        v44 = read(v40, &v140, 4uLL);
        if (v44 != 4)
        {
          if (!v44)
          {
            v84 = 0;
            goto LABEL_126;
          }

          v85 = v28;
          v86 = v30;
          v87 = *__error();
          v88 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 333;
            HIWORD(buf[0].st_uid) = 2080;
            *&buf[0].st_gid = __s;
            v89 = "%s:%d: check_crash_state not enough content 1 path:%s";
            goto LABEL_175;
          }

          goto LABEL_106;
        }

        if (read(v40, &size, 8uLL) != 8)
        {
          v85 = v28;
          v86 = v30;
          v87 = *__error();
          v88 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_106;
          }

          buf[0].st_dev = 136315650;
          *&buf[0].st_mode = "check_crash_state_with_date";
          WORD2(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 6) = 339;
          HIWORD(buf[0].st_uid) = 2080;
          *&buf[0].st_gid = __s;
          v89 = "%s:%d: check_crash_state not enough content 2 path:%s";
          goto LABEL_175;
        }

        v50 = v140;
        v51 = size;
        if (v140 == 875967043)
        {
          v140 = 1127364148;
          v51 = bswap64(size);
          size = v51;
          v52 = 1127364148;
        }

        else
        {
          v52 = v140;
        }

        if (v52 != 1127364148 || v51 - 4097 <= 0xFFFFFFFFFFFFF02FLL)
        {
          break;
        }

        v53 = malloc_type_malloc(v51, v43);
        if (!v53)
        {
          v85 = v28;
          v86 = v30;
          v90 = *__error();
          v91 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 367;
            HIWORD(buf[0].st_uid) = 2080;
            *&buf[0].st_gid = __s;
            _os_log_error_impl(&dword_1C278D000, v91, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state malloc error vol:%s", buf, 0x1Cu);
          }

          *__error() = v90;
          v84 = 1;
          v14 = i;
          goto LABEL_110;
        }

        v54 = v53;
        v55 = read(v40, v53, size);
        if (v55 != size)
        {
          v92 = *__error();
          v93 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 372;
            HIWORD(buf[0].st_uid) = 2080;
            *&buf[0].st_gid = __s;
            _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state not enough content 4 path:%s", buf, 0x1Cu);
          }

          goto LABEL_125;
        }

        v56 = v30;
        if (v50 == 875967043)
        {
          for (j = 0; j != 6; j += 2)
          {
            *&v54[j] = vrev64q_s8(*&v54[j]);
          }
        }

        *(v54 + v55 - 1) = 0;
        v58 = v54[4];
        v134 = v54[3];
        v59 = v54[5];
        v60 = malloc_type_malloc(v58, v43);
        if (!v60)
        {
          v92 = *__error();
          v94 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 403;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v58;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v94, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state buildVersion is null buildLen:%ld path:%s", buf, 0x26u);
          }

LABEL_118:
          v30 = v56;
          v17 = v130;
          v28 = v131;
LABEL_125:
          *__error() = v92;
          free(v54);
          v84 = 1;
          v14 = i;
LABEL_126:
          if (v132 <= 2 || v123 <= v14 - 1800)
          {
LABEL_131:
            if (v122 >= 2)
            {
              if (v122 / (v117 - v118) >= 0.000277777778)
              {
                v113 = v30;
                v114 = *__error();
                v115 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                {
                  buf[0].st_dev = 136315394;
                  *&buf[0].st_mode = "check_crash_state_with_date";
                  WORD2(buf[0].st_ino) = 1024;
                  *(&buf[0].st_ino + 6) = 539;
                  _os_log_error_impl(&dword_1C278D000, v115, OS_LOG_TYPE_ERROR, "%s:%d: Detected recurring crashes during compacting", buf, 0x12u);
                }

                *__error() = v114;
                v30 = v113;
                v36 = v122;
                if (os_signpost_enabled(v113))
                {
                  LOWORD(buf[0].st_dev) = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C278D000, v113, OS_SIGNPOST_EVENT, v28 | 0x28, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
                  v36 = v122;
                }

                goto LABEL_136;
              }

              if (os_signpost_enabled(v30))
              {
                LOWORD(buf[0].st_dev) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v28 | 8, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
              }
            }

            v36 = 0;
            goto LABEL_136;
          }

          if (v132 / (v123 - v119) < 0.000277777778)
          {
            if (os_signpost_enabled(v30))
            {
              LOWORD(buf[0].st_dev) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v28 | 4, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
            }

            goto LABEL_131;
          }

          v108 = v28;
          v109 = v30;
          v110 = *__error();
          v111 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315650;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 523;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = (v17 * 0x123456789ABCE0uLL) >> 64;
            _os_log_error_impl(&dword_1C278D000, v111, OS_LOG_TYPE_ERROR, "%s:%d: Detected recurring crashes %lu hour window", buf, 0x1Cu);
          }

          *__error() = v110;
          v30 = v109;
          v112 = os_signpost_enabled(v109);
          v36 = v132;
          v28 = v108;
          if (v112)
          {
            LOWORD(buf[0].st_dev) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v108 | 0x24, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
            v36 = v132;
          }

LABEL_136:
          if (!v120 && v125 >= 96)
          {
            v98 = v30;
            v99 = *__error();
            v100 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              buf[0].st_dev = 136315650;
              *&buf[0].st_mode = "check_crash_state_with_date";
              WORD2(buf[0].st_ino) = 1024;
              *(&buf[0].st_ino + 6) = 549;
              HIWORD(buf[0].st_uid) = 1024;
              buf[0].st_gid = v125;
              _os_log_error_impl(&dword_1C278D000, v100, OS_LOG_TYPE_ERROR, "%s:%d: crash count: %d", buf, 0x18u);
            }

            *__error() = v99;
            v30 = v98;
            v36 = v125;
            if (os_signpost_enabled(v98))
            {
              LOWORD(buf[0].st_dev) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C278D000, v98, OS_SIGNPOST_EVENT, 0x33uLL, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
              v36 = v125;
            }
          }

          if (v36 || v132 || v122 || v125 > 95)
          {
            if (v36 && v29 && v123 && (v101 = x_openat(a1, "indexState", 0, v45, v46, v47, v48, v49, v116), v101 != -1))
            {
              v102 = v101;
              memset(buf, 0, 144);
              v103 = fstat(v101, buf) == 0;
              v104 = v103 && buf[0].st_mtimespec.tv_sec > v123;
              v105 = v84 | v104;
              if (v104)
              {
                v36 = 0;
              }

              else
              {
                v36 = v36;
              }

              close(v102);
              if ((v105 & 1) == 0)
              {
                goto LABEL_165;
              }
            }

            else if (!v84)
            {
              goto LABEL_165;
            }
          }

          else
          {
            if (os_signpost_enabled(v30))
            {
              LOWORD(buf[0].st_dev) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C278D000, v30, OS_SIGNPOST_EVENT, v28, "check_crash_state_signpost", &unk_1C2C3BEBB, buf, 2u);
            }

            v36 = 0;
            if ((v84 & 1) == 0)
            {
LABEL_165:
              close(v40);
              goto LABEL_33;
            }
          }

          bzero(buf, 0x400uLL);
          if ((fcntl(v40, 50, buf) & 0x80000000) == 0 && LOBYTE(buf[0].st_dev))
          {
            v106 = *__error();
            v107 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              *v142 = 136315650;
              v143 = "check_crash_state_with_date";
              v144 = 1024;
              v145 = 578;
              v146 = 2080;
              v147 = buf;
              _os_log_error_impl(&dword_1C278D000, v107, OS_LOG_TYPE_ERROR, "%s:%d: invalid crash state file (%s) deleting", v142, 0x1Cu);
            }

            *__error() = v106;
            unlink(buf);
          }

          goto LABEL_165;
        }

        v61 = v60;
        __dst = malloc_type_malloc(v59, v43);
        if (!__dst)
        {
          v92 = *__error();
          v95 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 409;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v59;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v95, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state spotlightVersion is null svLen:%ld path:%s", buf, 0x26u);
          }

          v40 = v129;
          goto LABEL_118;
        }

        v62 = v43;
        v63 = -49;
        if (*(v54 + 48) == 43)
        {
          v64 = v54 + 49;
        }

        else
        {
          v63 = -48;
          v64 = (v54 + 6);
        }

        v65 = size - (v59 + v58);
        v66 = v65 + v63;
        if ((v65 + v63) <= 0)
        {
          v96 = *__error();
          v97 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 420;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v66;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v97, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state pathLen is <= 0 pathLen:%ld path:%s", buf, 0x26u);
          }

          v29 = v127;
          a1 = v128;
          v40 = v129;
          v30 = v56;
          v17 = v130;
          v28 = v131;
          v92 = v96;
          goto LABEL_125;
        }

        v121 = *(v54 + 48);
        v67 = malloc_type_malloc(v65 + v63, v62);
        v68 = *__error();
        v69 = _SILogForLogForCategory(0);
        v70 = v69;
        v136 = v67;
        if (!v67)
        {
          v28 = v131;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 136315906;
            *&buf[0].st_mode = "check_crash_state_with_date";
            WORD2(buf[0].st_ino) = 1024;
            *(&buf[0].st_ino + 6) = 427;
            HIWORD(buf[0].st_uid) = 2048;
            *&buf[0].st_gid = v66;
            *(&buf[0].st_rdev + 2) = 2080;
            *(&buf[0].st_rdev + 6) = __s;
            _os_log_error_impl(&dword_1C278D000, v70, OS_LOG_TYPE_ERROR, "%s:%d: check_crash_state malloc error 2 pathLen:%ld path:%s", buf, 0x26u);
          }

          v30 = v126;
          v29 = v127;
          v40 = v129;
          v17 = v130;
          v92 = v68;
          a1 = v128;
          goto LABEL_125;
        }

        v71 = 2 * (gSILogLevels[0] < 4);
        if (os_log_type_enabled(v69, v71))
        {
          buf[0].st_dev = 134218496;
          *&buf[0].st_mode = v134;
          WORD2(buf[0].st_ino) = 2048;
          *(&buf[0].st_ino + 6) = v58;
          HIWORD(buf[0].st_gid) = 2048;
          *&buf[0].st_rdev = v59;
          _os_log_impl(&dword_1C278D000, v70, v71, "check_crash_state (%ld, %ld, %ld)", buf, 0x20u);
        }

        *__error() = v68;
        memcpy(v61, v64, v58);
        v72 = &v64[v58];
        memcpy(__dst, v72, v59);
        memcpy(v136, &v72[v59], v66);
        if (!strcmp(v61, __s2) && !strcmp(__dst, sSpotlightVersion) && !strcmp(v136, v135))
        {
          v73 = i - v134;
          v28 = v131;
          v30 = v126;
          v43 = v62;
          if (v124)
          {
            *v124 = v73;
          }

          v74 = v73 > 0;
          v75 = v73 - 1;
          v76 = v125;
          if ((v73 - 1) < 0x545FF)
          {
            v76 = v125 + 1;
          }

          v125 = v76;
          v17 = v130;
          v29 = v127;
          if (v73 < v130)
          {
            v77 = 1;
          }

          else
          {
            v77 = v127;
          }

          v78 = v74 & v77;
          v79 = v123;
          if (v78)
          {
            v79 = v134;
          }

          v123 = v79;
          v80 = v119;
          if ((v78 & (v132 == 0)) != 0)
          {
            v80 = v134;
          }

          v119 = v80;
          v132 += v78;
          if (v121 == 43)
          {
            a1 = v128;
            if (v75 <= 0x3F47E)
            {
              v81 = v118;
              if (!v122)
              {
                v81 = v134;
              }

              v117 = v134;
              v118 = v81;
              ++v122;
            }
          }

          else
          {
            a1 = v128;
          }
        }

        else
        {
          v28 = v131;
          v30 = v126;
          if (gSILogLevels[0] >= 5)
          {
            v82 = *__error();
            v83 = _SILogForLogForCategory(0);
            a1 = v128;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              buf[0].st_dev = 136315650;
              *&buf[0].st_mode = v61;
              WORD2(buf[0].st_ino) = 2080;
              *(&buf[0].st_ino + 6) = __dst;
              HIWORD(buf[0].st_gid) = 2080;
              *&buf[0].st_rdev = v136;
              _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "Ignoring crash data for (%s,%s,%s)", buf, 0x20u);
            }

            *__error() = v82;
            v29 = v127;
            v17 = v130;
            v30 = v126;
            v28 = v131;
            v43 = v62;
          }

          else
          {
            v43 = v62;
            v29 = v127;
            a1 = v128;
            v17 = v130;
          }
        }

        free(v54);
        free(v61);
        free(__dst);
        free(v136);
        v40 = v129;
      }

      v85 = v28;
      v86 = v30;
      v87 = *__error();
      v88 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

      buf[0].st_dev = 136315650;
      *&buf[0].st_mode = "check_crash_state_with_date";
      WORD2(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 6) = 360;
      HIWORD(buf[0].st_uid) = 2080;
      *&buf[0].st_gid = __s;
      v89 = "%s:%d: check_crash_state not enough content 3 path:%s";
LABEL_175:
      _os_log_error_impl(&dword_1C278D000, v88, OS_LOG_TYPE_ERROR, v89, buf, 0x1Cu);
LABEL_106:
      *__error() = v87;
      v84 = 1;
LABEL_110:
      v30 = v86;
      v28 = v85;
      goto LABEL_126;
    }

    if (os_signpost_enabled(v22))
    {
      LOWORD(buf[0].st_dev) = 0;
      v20 = buf;
      v21 = v22;
      v35 = v28;
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (os_signpost_enabled(v22))
  {
    LOWORD(buf[0].st_dev) = 0;
    v20 = buf;
    v21 = v22;
    goto LABEL_30;
  }

LABEL_32:
  v36 = 0;
LABEL_33:
  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

const char *getBuildVersion()
{
  v0 = sBuildVersion;
  if ((sBuildVersionWasSet & 1) == 0)
  {
    v1 = _CFCopySystemVersionDictionary();
    if (v1)
    {
      v2 = v1;
      Value = CFDictionaryGetValue(v1, @"ProductBuildVersion");
      CFStringGetCString(Value, sBuildVersion, 128, 0x8000100u);
      CFRelease(v2);
      sBuildVersionWasSet = 1;
    }

    else if (!sBuildVersionWasSet)
    {
      return "unknown";
    }
  }

  return v0;
}

void touch_crash_state(int a1)
{
  v2 = time(0);

  write_out_crash_state(0, 0, 0, v2, a1, 0, 0);
}

void write_out_crash_state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = a3;
  if ((gProcessTerminating & 1) == 0 && (write_out_crash_state_lastDirFd != a5 || CFAbsoluteTimeGetCurrent() - *&write_out_crash_state_lastTime >= 10.0))
  {
    qmemcpy(v34, "+462C", sizeof(v34));
    bzero(__s, 0x400uLL);
    if ((fcntl(a5, 50, __s) & 0x80000000) == 0)
    {
      if (__s[0])
      {
        BuildVersion = getBuildVersion();
        v15 = strlen(BuildVersion);
        v21 = strlen(sSpotlightVersion);
        if (a7)
        {
          if (a7 == 1)
          {
            v22 = "mds64-crash-state-vector-index-v2";
          }

          else
          {
            v22 = a7 == 3 ? "mds64-crash-state-forward-path-index-v2" : "mds64-crash-state-reverse-store-v2";
          }
        }

        else
        {
          v22 = "mds64-crash-state-v2";
        }

        v23 = x_openat(a5, v22, 536871434, v16, v17, v18, v19, v20, 0x180u);
        if ((v23 & 0x80000000) == 0)
        {
          v24 = v23;
          v25 = v21 + 1;
          write_out_crash_state_lastDirFd = a5;
          write_out_crash_state_lastTime = CFAbsoluteTimeGetCurrent();
          v26 = strlen(__s) + 1;
          v27 = 49;
          if (a6)
          {
            v27 = 50;
          }

          v33 = v27 + v15 + v25 + v26;
          write(v24, &v34[1], 4uLL);
          write(v24, &v33, 8uLL);
          v31 = a2;
          v32 = a1;
          v29 = v15 + 1;
          v30 = a4;
          v28 = v25;
          write(v24, &v32, 8uLL);
          write(v24, &v31, 8uLL);
          write(v24, &v35, 8uLL);
          write(v24, &v30, 8uLL);
          write(v24, &v29, 8uLL);
          write(v24, &v28, 8uLL);
          if (a6)
          {
            write(v24, v34, 1uLL);
          }

          write(v24, BuildVersion, v15 + 1);
          write(v24, sSpotlightVersion, v25);
          write(v24, __s, v26);
          close(v24);
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void ContentIndex_catch_mach_exception_raise()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported ContentIndex_catch_mach_exception_raise", v0, 2u);
  }
}

void ContentIndex_catch_mach_exception_raise_state()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported ContentIndex_catch_mach_exception_raise_state", v0, 2u);
  }
}

void ContentIndex_catch_mach_exception_raise_state_identity()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported ContentIndex_catch_mach_exception_raise_state_identity", v0, 2u);
  }
}

uint64_t ContentIndex_catch_mach_exception_raise_identity_protected(uint64_t a1, int a2, thread_act_array_t a3)
{
  v102 = *MEMORY[0x1E69E9840];
  act_list[0] = 0;
  memset(thread_info_out, 0, 24);
  thread_info_outCnt = 6;
  act_listCnt = 0;
  v6 = MEMORY[0x1E69E9A60];
  task_threads(*MEMORY[0x1E69E9A60], act_list, &act_listCnt);
  if (!act_listCnt)
  {
    v8 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = act_list[0][v7];
    if (v8)
    {
      if (v8 == v9)
      {
        v63 = __si_assert_copy_extra_332();
        v64 = v63;
        v65 = "";
        if (v63)
        {
          v65 = v63;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 858, "thread != threads[i]", v65);
        free(v64);
        if (__valid_fs(-1))
        {
          v66 = 2989;
        }

        else
        {
          v66 = 3072;
        }

        *v66 = -559038737;
        abort();
      }

      mach_port_deallocate(*v6, v9);
    }

    else
    {
      if (thread_info(act_list[0][v7], 4u, thread_info_out, &thread_info_outCnt) != 268435459)
      {
        if (*thread_info_out == a1)
        {
          v8 = act_list[0][v7];
          goto LABEL_11;
        }

        mach_port_deallocate(*v6, act_list[0][v7]);
      }

      v8 = 0;
    }

LABEL_11:
    ++v7;
  }

  while (v7 < act_listCnt);
  v10 = 4 * act_listCnt;
LABEL_14:
  MEMORY[0x1C6921920](*v6, act_list[0], v10);
  thread_info_outCnt = 4;
  act_list[0] = 0;
  act_list[1] = 0;
  v11 = 0;
  if (!thread_get_state(v8, 7, act_list, &thread_info_outCnt))
  {
    a3 = act_list[0];
  }

  v12 = &dword_1EDD78EF0;
  while (1)
  {
    v13 = *v12;
    v12 += 4;
    if (v13 == v8)
    {
      break;
    }

    if (++v11 == 2048)
    {
      v14 = 0;
LABEL_111:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        thread_info_out[0] = 67109632;
        thread_info_out[1] = v8;
        LOWORD(thread_info_out[2]) = 2048;
        *(&thread_info_out[2] + 2) = a3;
        HIWORD(thread_info_out[4]) = 1024;
        thread_info_out[5] = v14;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "exception handler not resolved for thread 0x%x addr %p reason %d", thread_info_out, 0x18u);
      }

      v55 = 5;
      goto LABEL_114;
    }
  }

  v15 = 0;
  v16 = 0;
  v74 = 0;
  v17 = &threadData[9 * v11];
  v18 = *(v17 + 4);
  v76 = a2;
  v19 = 320 * v18 - 320;
  v77 = a2;
  while (2)
  {
    if (v18 <= 0)
    {
      if (v74)
      {
        v14 = v74;
      }

      else
      {
        v14 = 4;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_133;
    }

    v20 = v17[1];
    v21 = v20 + v19;
    if (a2 != 1)
    {
      goto LABEL_84;
    }

    v22 = *(v21 + 30);
    if (!v22)
    {
      goto LABEL_84;
    }

    v23 = v20 + v19;
    v24 = v15;
    v25 = a3;
    v26 = v17;
    v81 = v16;
    log = v17[1];
    v27 = log + v19;
    v28 = v25;
    if (!v22(*(&log[36].isa + v19)))
    {
      v16 = v81;
      v17 = v26;
      a3 = v28;
      v15 = v24;
      v21 = v23;
      v20 = log;
      goto LABEL_84;
    }

    v29 = *(v27 + 34);
    v75 = log + v19;
    if (v29)
    {
      v30 = v29(*(v27 + 36), *(&log[37].isa + v19));
      v17 = v26;
      a3 = v28;
      v15 = v24;
      v21 = v23;
      goto LABEL_27;
    }

    v17 = v26;
    v33 = v26[1];
    v34 = *(v33 + 296);
    if (v34 != -1)
    {
      a3 = v28;
      goto LABEL_44;
    }

    a3 = v28;
    if (!*(v33 + 272))
    {
      v37 = 320;
      if (*(v17 + 4) <= 1u)
      {
        v37 = 0;
      }

      v33 += v37;
      v34 = *(v33 + 296);
      v15 = v24;
      if (v34 != -1)
      {
        goto LABEL_45;
      }

      v21 = v23;
      if (*(v33 + 272))
      {
        v34 = 0xFFFFFFFFLL;
        goto LABEL_46;
      }

      v73 = 0;
      goto LABEL_66;
    }

    v34 = 0xFFFFFFFFLL;
LABEL_44:
    v15 = v24;
LABEL_45:
    v21 = v23;
LABEL_46:
    v20 = log;
    v35 = *(v33 + 272);
    if (!v35)
    {
LABEL_49:
      if (v34 != -1)
      {
        bzero(thread_info_out, 0x400uLL);
        v36 = fcntl(*(v33 + 296), 50, thread_info_out);
        v30 = 0;
        if ((v36 & 0x80000000) == 0 && LOBYTE(thread_info_out[0]))
        {
          if (strstr(thread_info_out, "NSFileProtectionComplete/"))
          {
            v30 = 1;
          }

          else if (strstr(thread_info_out, "NSFileProtectionCompleteUnlessOpen/"))
          {
            v30 = 2;
          }

          else if (strstr(thread_info_out, "NSFileProtectionCompleteWhenUserInactive/"))
          {
            v30 = 7;
          }

          else
          {
            v30 = 0;
          }
        }

        goto LABEL_27;
      }

      v73 = 0;
LABEL_67:
      v16 = v81;
      if (a3 > *MEMORY[0x1E69E9AC8])
      {
        goto LABEL_68;
      }

      goto LABEL_81;
    }

    v30 = v35(*(v33 + 288), v34);
    if (!v30)
    {
      LODWORD(v34) = *(v33 + 296);
      v20 = log;
      goto LABEL_49;
    }

LABEL_27:
    v31 = v30 > 7 || ((1 << v30) & 0x86) == 0;
    v73 = v30;
    if (v31)
    {
LABEL_66:
      v20 = log;
      goto LABEL_67;
    }

    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 0x40000000;
    v83[2] = __ContentIndex_catch_mach_exception_raise_identity_protected_block_invoke;
    v83[3] = &__block_descriptor_tmp_6969;
    v83[4] = v21;
    v20 = log;
    if (_SISuspendThreadIfLocked(v8, v83))
    {
      goto LABEL_102;
    }

    v32 = !gTerminating || !sGetLockStateCallback || (*(sGetLockStateCallback + 16))() == 0;
    v16 = v81;
    if (!v32 || a3 <= *MEMORY[0x1E69E9AC8])
    {
      goto LABEL_81;
    }

LABEL_68:
    Current = CFAbsoluteTimeGetCurrent();
    v39 = v20 + v19;
    v40 = *(&v20[25].isa + v19);
    if (Current - *(&v20[24].isa + v19) <= 1.0 && a3 == v40)
    {
      v43 = *__error();
      logb = _SILogForLogForCategory(10);
      if (os_log_type_enabled(logb, OS_LOG_TYPE_ERROR))
      {
        thread_info_out[0] = 136315906;
        *&thread_info_out[1] = "ContentIndex_catch_mach_exception_raise_identity_protected";
        LOWORD(thread_info_out[3]) = 1024;
        *(&thread_info_out[3] + 2) = 1004;
        HIWORD(thread_info_out[4]) = 2048;
        *&thread_info_out[5] = a3;
        LOWORD(thread_info_out[7]) = 1024;
        *(&thread_info_out[7] + 2) = v73;
        _os_log_error_impl(&dword_1C278D000, logb, OS_LOG_TYPE_ERROR, "%s:%d: Repeated error on address %p pc %d", thread_info_out, 0x22u);
      }

      v44 = 2;
    }

    else
    {
      if (a3 != v40)
      {
        *(v39 + 52) = 0;
LABEL_128:
        v67 = *__error();
        v68 = _SILogForLogForCategory(10);
        v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
        v6 = MEMORY[0x1E69E9A60];
        if (v69)
        {
          v70 = *(v21 + 25);
          v71 = Current - *(v21 + 24);
          v72 = *(v39 + 52);
          thread_info_out[0] = 136316674;
          *&thread_info_out[1] = "ContentIndex_catch_mach_exception_raise_identity_protected";
          LOWORD(thread_info_out[3]) = 1024;
          *(&thread_info_out[3] + 2) = 992;
          HIWORD(thread_info_out[4]) = 2048;
          *&thread_info_out[5] = a3;
          LOWORD(thread_info_out[7]) = 2048;
          *(&thread_info_out[7] + 2) = v70;
          HIWORD(thread_info_out[9]) = 2048;
          *&thread_info_out[10] = v71;
          LOWORD(v88) = 1024;
          *(&v88 + 2) = v72;
          WORD3(v88) = 1024;
          DWORD2(v88) = v73;
          _os_log_error_impl(&dword_1C278D000, v68, OS_LOG_TYPE_ERROR, "%s:%d: Retry operation on address %p (%p) %f %d pc %d", thread_info_out, 0x3Cu);
        }

        *__error() = v67;
        *(v21 + 25) = a3;
        *(v21 + 24) = Current;
        usleep(0x30D40u);
        v55 = 0;
        goto LABEL_114;
      }

      v42 = *(v39 + 52) + 1;
      *(v39 + 52) = v42;
      if (v42 <= 5)
      {
        goto LABEL_128;
      }

      v43 = *__error();
      loga = _SILogForLogForCategory(10);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        thread_info_out[0] = 136315906;
        *&thread_info_out[1] = "ContentIndex_catch_mach_exception_raise_identity_protected";
        LOWORD(thread_info_out[3]) = 1024;
        *(&thread_info_out[3] + 2) = 1000;
        HIWORD(thread_info_out[4]) = 2048;
        *&thread_info_out[5] = a3;
        LOWORD(thread_info_out[7]) = 1024;
        *(&thread_info_out[7] + 2) = v73;
        _os_log_error_impl(&dword_1C278D000, loga, OS_LOG_TYPE_ERROR, "%s:%d: Repeated error on address %p pc %d", thread_info_out, 0x22u);
      }

      v44 = 1;
    }

    v74 = v44;
    *__error() = v43;
    v16 = v81;
LABEL_81:
    v45 = *(&v20[35].isa + v19);
    if (v45)
    {
      v45(*(v75 + 36));
      v16 = v81;
    }

    v46 = *(&v20[26].isa + v19 + 4);
    a2 = v77;
    if ((v46 & 0x40000000) == 0)
    {
      *(v21 + 53) = v46 | 0x80000000;
      v58 = exc_pthread_key;
      if (!exc_pthread_key)
      {
        pthread_key_create(&exc_pthread_key, 0);
        v58 = exc_pthread_key;
      }

      pthread_setspecific(v58, v17[5]);
      v59 = *(v17 + 4);
      if (v59 >= v18)
      {
        v60 = v59 + 1;
        do
        {
          v61 = v17[1] + 320 * (v60 - 2);
          CICleanUpReset(v11, *(v61 + 300));
          v62 = *(v61 + 248);
          if (v62)
          {
            *(v61 + 248) = 0;
            v62(*(v61 + 288));
          }

          --v60;
        }

        while (v60 > v18);
      }

      goto LABEL_101;
    }

LABEL_84:
    v15 |= v21[216];
    if (*(v21 + 74) == -1 || *(v17 + 6))
    {
      v16 |= a3 == 2816;
    }

    else
    {
      v82 = v16;
      act_listCnt = 68;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      memset(thread_info_out, 0, sizeof(thread_info_out));
      thread_get_state(v8, 6, thread_info_out, &act_listCnt);
      v47 = v101;
      v48 = time(0);
      write_out_crash_state(v47, a3, v76, v48, *(v21 + 74), v15 & 1, *(v17 + 7));
      *(&v20[39].isa + v19 + 4) = 1;
      a2 = v77;
      v16 = v82;
      if (a3 == 2816)
      {
        goto LABEL_133;
      }
    }

    v49 = *(&v20[26].isa + v19 + 4);
    if (((v49 & 0x20000000) == 0 || a3 != 2986) && ((v49 & 1) == 0 || a3 != 3072))
    {
      --v18;
      v19 -= 320;
      if ((v49 & 1) == 0)
      {
        continue;
      }

      if ((v16 & 1) == 0)
      {
        v14 = 3;
LABEL_110:
        v6 = MEMORY[0x1E69E9A60];
        goto LABEL_111;
      }

LABEL_133:
      exit(-1);
    }

    break;
  }

  *(&v20[26].isa + v19 + 4) = v49 | 0x80000000;
  v50 = exc_pthread_key;
  if (!exc_pthread_key)
  {
    pthread_key_create(&exc_pthread_key, 0);
    v50 = exc_pthread_key;
  }

  pthread_setspecific(v50, v17[5]);
  v51 = *(v17 + 4);
  if (v51 >= v18)
  {
    v52 = v51 + 1;
    do
    {
      v53 = v17[1] + 320 * (v52 - 2);
      CICleanUpReset(v11, *(v53 + 300));
      v54 = *(v53 + 248);
      if (v54)
      {
        *(v53 + 248) = 0;
        v54(*(v53 + 288));
      }

      --v52;
    }

    while (v52 > v18);
  }

LABEL_101:
  pthread_setspecific(exc_pthread_key, 0);
  setPC(v8);
LABEL_102:
  v55 = 0;
  v6 = MEMORY[0x1E69E9A60];
LABEL_114:
  mach_port_deallocate(*v6, v8);
  v56 = *MEMORY[0x1E69E9840];
  return v55;
}

int *setPC(thread_read_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *old_state = 0u;
  v13 = 0u;
  old_stateCnt = 68;
  state = thread_get_state(a1, 6, old_state, &old_stateCnt);
  if (state)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = mach_error_string(state);
      *buf = 136315650;
      v30 = "setPC";
      v31 = 1024;
      v32 = 762;
      v33 = 2080;
      v34 = v9;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: thread_get_state: %s", buf, 0x1Cu);
    }

    *__error() = v3;
  }

  *&v28 = in_thread_handler;
  HIDWORD(v28) &= ~4u;
  result = thread_set_state(a1, 6, old_state, old_stateCnt);
  if (state)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(state);
      *buf = 136315650;
      v30 = "setPC";
      v31 = 1024;
      v32 = 775;
      v33 = 2080;
      v34 = v10;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: thread_set_state: %s", buf, 0x1Cu);
    }

    result = __error();
    *result = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}