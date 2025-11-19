uint64_t initializeEnumberatorForRangeLocked(uint64_t result, _DWORD *cf, unsigned int a3, unsigned int a4)
{
  v5 = result;
  if (cf[6] >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = cf[6];
  }

  v7 = cf[4];
  if (cf[5] <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = cf[5];
  }

  if (v7 <= -10)
  {
    *(result + 24) = 2;
    *result = v6;
    *(result + 4) = v8;
    *(result + 16) = cf;
LABEL_9:
    *(v5 + 8) = 0;
    return result;
  }

  if (v7 > -2)
  {
    result = CFGetTypeID(cf);
    if (result == __kCIIndexSetInvertedTypeID)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    *(v5 + 24) = v9;
  }

  else
  {
    *(result + 24) = 0;
  }

  v10 = cf[4];
  *v5 = v6;
  *(v5 + 4) = v8;
  *(v5 + 16) = cf;
  if (v10 < 1)
  {
    if ((v10 & 0x80000000) == 0 || v10 <= 0xFFFFFFF6)
    {
      goto LABEL_9;
    }

    if (v10 <= 0xFFFFFFFD)
    {
      if (v6 >= cf[8])
      {
        v11 = 0;
        goto LABEL_19;
      }

      if (v10 != -3)
      {
        if (v6 >= cf[9])
        {
          v11 = 1;
          goto LABEL_19;
        }

        if (v10 != -4)
        {
          if (v6 >= cf[10])
          {
            v11 = 2;
            goto LABEL_19;
          }

          if (v10 != -5)
          {
            if (v6 >= cf[11])
            {
              v11 = 3;
              goto LABEL_19;
            }

            if (v10 != -6)
            {
              if (v6 >= cf[12])
              {
                v11 = 4;
                goto LABEL_19;
              }

              if (v10 != -7)
              {
                if (v6 >= cf[13])
                {
                  v11 = 5;
                  goto LABEL_19;
                }

                if (v10 != -8 && v6 >= cf[14])
                {
                  v11 = 6;
                  goto LABEL_19;
                }
              }
            }
          }
        }
      }
    }

    v11 = -2 - v10;
  }

  else
  {
    result = binarySearchMap(cf, v6);
    *(v5 + 8) = result;
    if (result != cf[9])
    {
      return result;
    }

    v11 = cf[8] + result - cf[4];
  }

LABEL_19:
  *(v5 + 8) = v11;
  return result;
}

void si_querypipe_send_matchinfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a1;
    do
    {
      v5 = v4;
      v4 = *(v4 + 80);
    }

    while (v4);
    v6 = *(v5 + 8);
    v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v7[1] = *(a1 + 48);
    *(v7 + 1) = si_querypipe_copy_jobid(a1);
    *(v7 + 4) = a2;
    *v7 = 10;
    if (!si_resultqueue_enqueue(v6, v7))
    {

      SIResultBatchFree(v7);
    }
  }
}

void PartialQueryResults::~PartialQueryResults(PartialQueryResults *this)
{
  v2 = *(this + 42);
  md_deadline_once_cancel();
  SICompletionModelRelease(*(this + 41));
  SIPommesSuggestionsModelRelease(*(this + 53));
  if (*(this + 49) && *(this + 45) >= 1)
  {
    v3 = 0;
    do
    {
      free(*(*(this + 49) + 8 * v3++));
    }

    while (*(this + 45) > v3);
  }

  free(*(this + 50));
  *(this + 46) = 0;
  free(*(this + 47));
  free(*(this + 48));
  free(*(this + 49));
  *(this + 45) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = 0;
  if (*(this + 17) && *(this + 29) >= 1)
  {
    v4 = 0;
    do
    {
      free(*(*(this + 17) + 8 * v4++));
    }

    while (*(this + 29) > v4);
  }

  free(*(this + 12));
  free(*(this + 34));
  free(*(this + 35));
  free(*(this + 36));
  free(*(this + 17));
  free(*(this + 13));
  free(*(this + 24));
  free(*(this + 26));
  free(*(this + 25));
  free(*(this + 27));
  free(*(this + 28));
  free(*(this + 18));
  free(*(this + 20));
  free(*(this + 22));
  free(*(this + 23));
  free(*(this + 37));
  if (*(this + 88) == 1)
  {
    *(this + 88) = 0;
    free(*(this + 4));
    free(*(this + 5));
    free(*(this + 6));
    free(*(this + 7));
    free(*(this + 8));
    free(*(this + 9));
    free(*(this + 10));
  }

  *(this + 29) = 0;
  *(this + 17) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  if (*(this + 884))
  {
    v5 = 186;
    v6 = this;
    do
    {
      v8 = *(v6 + 186);
      if (v8)
      {
        CFRelease(v8);
      }

      *(v6 + 186) = 0;
      v9 = *(v6 + 58);
      if (v9)
      {
        CFRelease(v9);
      }

      *(v6 + 58) = 0;
      v7 = v5 - 185;
      ++v5;
      v6 = (v6 + 8);
    }

    while (v7 < *(this + 884));
  }

  v10 = *(this + 57);
  if (v10)
  {
    CFRelease(v10);
  }

  *(this + 57) = 0;
  v11 = *(this + 14);
  if (v11)
  {
    CFRelease(v11);
  }

  *(this + 14) = 0;
  v12 = *(this + 31);
  if (v12)
  {
    CFRelease(v12);
  }

  *(this + 31) = 0;
  v13 = *(this + 56);
  if (v13)
  {
    CFRelease(v13);
  }

  *(this + 56) = 0;
  v14 = *(this + 55);
  if (v14)
  {
    CFRelease(v14);
  }

  *(this + 55) = 0;
  v15 = *(this + 42);
  md_deadline_once_release();
}

uint64_t PayloadIterate(unsigned __int8 *a1, uint64_t a2)
{
  v168 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = *(a1 + 4);
    v6 = *(a1 + 5);
  }

  else
  {
    v5 = 0.0;
    v6 = 0;
  }

  v150 = v6;
  v7 = *a2;
  v8 = *(a2 + 48);
  v165 = 1;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sIteratorExceptionCallbacks, a1, 0, add_explicit + 1);
  LODWORD(v153) = HIDWORD(v10);
  LODWORD(v166) = v10;
  LODWORD(v152) = v11;
  v164 = v12;
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v163 = v166;
  v162 = v153;
  v161 = v152;
  v160 = v164;
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *&buf[4] = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf[4], 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v160);
    dropThreadId(v163, 1, add_explicit + 1);
    CICleanUpReset(v163, v161);
    goto LABEL_31;
  }

  v151 = v4;
  v17 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v18 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v17 + 1);
  *buf = HIDWORD(v18);
  *&buf[4] = v18;
  v158 = __PAIR64__(v19, v20);
  v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  v22 = *(v21 + 312);
  v23 = *(v21 + 224);
  if (v23)
  {
    v23(*(v21 + 288));
  }

  v157 = *&buf[4];
  v156 = *buf;
  v155 = v158;
  if (!_setjmp(v21))
  {
    if ((a1[81] & 1) == 0)
    {
      if (*(v8 + 24) >> 1 >= *(*(a2 + 48) + 32))
      {
        v24 = *(v8 + 24) >> 1;
      }

      else
      {
        v24 = 0;
      }

      *(a1 + 3) = v24;
      a1[81] = 1;
      if (!v24)
      {
        if (a1[80])
        {
          *(a1 + 28) = 0;
          ++*(a1 + 54);
          v25 = *(a1 + 24);
          *(a1 + 25) = 0;
          *(a1 + 26) = v25;
          *(a1 + 24) = 0;
          goto LABEL_25;
        }

        v24 = 0;
      }

      oqsplit((a1 + 160), v24);
    }

LABEL_25:
    v165 = 0;
    v26 = threadData[9 * v157 + 1] + 320 * v156;
    *(v26 + 312) = v22;
    v27 = *(v26 + 232);
    if (v27)
    {
      v27(*(v26 + 288));
    }

    dropThreadId(v157, 0, v17 + 1);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v154 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v154, 2u);
  }

  *(v21 + 312) = v22;
  CIOnThreadCleanUpReset(v155);
  dropThreadId(v157, 1, v17 + 1);
  CICleanUpReset(v157, HIDWORD(v155));
LABEL_28:
  v28 = threadData[9 * v163 + 1] + 320 * v162;
  *(v28 + 312) = v14;
  v29 = *(v28 + 232);
  v4 = v151;
  if (v29)
  {
    v29(*(v28 + 288));
  }

  dropThreadId(v163, 0, add_explicit + 1);
LABEL_31:
  if (v165 == 1)
  {
    result = 0;
    a1[64] = 1;
    goto LABEL_159;
  }

  v31 = *(a1 + 1);
  if (!v31)
  {
    v43 = 0;
    v44 = 0xBFFFFFFFFFFFFFFFLL;
    goto LABEL_137;
  }

  v32 = v7;
  v33 = v31 & 0x3FFFFFFFFFFFFFFFLL;
  v34 = *(a2 + 16);
  if ((v31 & 0x3FFFFFFFFFFFFFFFuLL) >= v34)
  {
    v35 = *(a2 + 56) + v34;
    if (v35 > v33 && v33 + 30 <= v35)
    {
      ++*(a2 + 64);
      v36 = v32;
      goto LABEL_58;
    }
  }

  if (*(a2 + 8) == 1)
  {
    v37 = MEMORY[0x1E69E9AC8];
    v38 = v33 & -*MEMORY[0x1E69E9AC8];
    v39 = *(v8 + 24);
    v40 = *(a2 + 56);
    v41 = v40;
    if (v39 <= v40)
    {
      if (v40 >= v38)
      {
        ++*(a2 + 64);
        v36 = *a2;
        goto LABEL_58;
      }

      if (v40)
      {
        munmap(*a2, v40);
      }

      *(a2 + 56) = 0x10000;
      v32 = malloc_type_malloc(0x10000uLL, 0xD6CB982DuLL);
      *a2 = v32;
      *(a2 + 8) = 0;
      *(a2 + 16) = -1;
      goto LABEL_57;
    }

    v42 = MEMORY[0x1E69E9AB8];
    if ((((*MEMORY[0x1E69E9AB8] + v39) & ~*MEMORY[0x1E69E9AB8]) + *MEMORY[0x1E69E9AC8]) >= v38)
    {
      *(a2 + 16) = 0;
      munmap(*a2, v40);
      v45 = ((*v42 + *(v8 + 24)) & ~*v42) + *v37;
      *(a2 + 56) = v45;
      v46 = mmap(0, v45, 1, 1, *(v8 + 4496), 0);
      *a2 = v46;
      if (v46 == -1)
      {
        goto LABEL_56;
      }

      if (mmap(&v46[*(a2 + 56) - *v37], *v37, 1, 4114, -83886080, 0) != -1)
      {
        v36 = *a2;
        v32 = *a2;
        if (*(a2 + 8))
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v47 = *__error();
      v48 = _SILogForLogForCategory(10);
      v49 = dword_1EBF46AF4 < 3;
      if (os_log_type_enabled(v48, (dword_1EBF46AF4 < 3)))
      {
        v50 = *__error();
        LODWORD(v166) = 67109120;
        DWORD1(v166) = v50;
        _os_log_impl(&dword_1C278D000, v48, v49, "*warn* Failed to allocated guard page error %d", &v166, 8u);
      }

      *__error() = v47;
      v41 = *(a2 + 56);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    else if (!v40)
    {
LABEL_56:
      *(a2 + 56) = 0x10000;
      v32 = malloc_type_malloc(0x10000uLL, 0xD6CB982DuLL);
      *a2 = v32;
      *(a2 + 8) = 0;
      goto LABEL_57;
    }

    munmap(*a2, v41);
    goto LABEL_56;
  }

LABEL_57:
  v36 = v32;
  *(a2 + 16) = v31 & 0x3FFFFFFFFFFFF000;
  v51 = fd_pread(*(v8 + 4488), v32, *(a2 + 56), v31 & 0x3FFFFFFFFFFFF000);
  *(a2 + 64) = 0;
  if (v51 == -1)
  {
    v73 = 0;
    goto LABEL_71;
  }

LABEL_58:
  v52 = v36;
  v53 = v31 & 0x4000000000000000;
  v54 = v31 & 0x4000000000000000;
  v153 = v33 - *(a2 + 16);
  v55 = 0;
  v56 = 0;
  v57 = v153;
  do
  {
    v58 = v57;
    v59 = v56;
    v60 = v57 + 1;
    v61 = ((v36[v57] & 0x7F) << v56) | v55;
    if ((v36[v57] & 0x80) == 0)
    {
      break;
    }

    v56 += 7;
    ++v57;
    v55 = v61;
  }

  while (v59 != 63);
  v153 = v60;
  v147 = v33;
  v148 = v53;
  if ((v61 & 1) == 0)
  {
    DWORD2(v166) = 0;
    *&v166 = 0;
    v62 = unpackPosting(v36, &v153, &v166);
    if (v62)
    {
      if (*(&v166 + 4))
      {
        handleUpdate(a1, *(&v166 + 4), v62, v4 | (LODWORD(v5) << 32), v150);
      }

LABEL_90:
      v82 = *(a1 + 1);
      if ((v82 & 0x3FFFFFFFFFFFFFFFLL) != v33)
      {
        v83 = __si_assert_copy_extra(0);
        v84 = v83;
        v85 = "";
        if (v83)
        {
          v85 = v83;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 760, "((((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF)))==next", v85);
        goto LABEL_180;
      }

      goto LABEL_108;
    }

    if (*(a1 + 17))
    {
      v64 = *(&v166 + 4);
      v65 = *(a1 + 14);
      if ((v65 + *(&v166 + 4)) <= **(a1 + 16))
      {
        v66 = checkAgainstChangeHolder((a1 + 128), v65 + DWORD1(v166));
        if (!v64)
        {
          goto LABEL_90;
        }

        v67 = v64;
        if (v66)
        {
          goto LABEL_90;
        }

LABEL_76:
        if (v54)
        {
          v79 = *(a1 + 11);
          LODWORD(v152) = -1;
          if (!_CIIndexSetAddIndex(v79, v67, 0, &v152, v63))
          {
LABEL_88:
            if (v4)
            {
              distanceHolderSetMinDistance(*(a1 + 9), *(a1 + 14) + v67, v150, v5);
            }

            goto LABEL_90;
          }

          v81 = *(a1 + 12);
          LODWORD(v152) = -1;
          if (_CIIndexSetAddIndex(v81, v67, 0, &v152, v80))
          {
            ++*(a1 + 26);
          }
        }

        else
        {
          if (_CIIndexSetRemoveIndex(*(a1 + 12), v67))
          {
            --*(a1 + 26);
          }

          v78 = *(a1 + 11);
          LODWORD(v152) = -1;
          if (!_CIIndexSetAddIndex(v78, v67, 0, &v152, v77))
          {
            goto LABEL_88;
          }
        }

        if (*(a2 + 40) >= v67)
        {
          if (*(a2 + 44) > v67)
          {
            *(a2 + 44) = v67;
          }
        }

        else
        {
          *(a2 + 40) = v67;
        }

        goto LABEL_88;
      }
    }

    else
    {
      v64 = *(&v166 + 4);
    }

    v67 = v64;
    if (!v64)
    {
      goto LABEL_90;
    }

    goto LABEL_76;
  }

  v68 = v58 + 2;
  v69 = v36[v60];
  v70 = v36[v60];
  if (v69 < 0)
  {
    v74 = v58 + 3;
    v75 = v36[v68];
    v76 = v36[v68];
    if (v75 < 0)
    {
      v86 = v58 + 4;
      v87 = v36[v74];
      v88 = v36[v74];
      if (v87 < 0)
      {
        v89 = v36[v86];
        v90 = v36[v86];
        if (v89 < 0)
        {
          v91 = v36[v58 + 5];
          if (v91 < 0)
          {
            v140 = __si_assert_copy_extra(0);
            v141 = v140;
            v142 = "";
            if (v140)
            {
              v142 = v140;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v142);
            free(v141);
            if (__valid_fs(-1))
            {
LABEL_206:
              v139 = 2989;
              goto LABEL_211;
            }

LABEL_210:
            v139 = 3072;
LABEL_211:
            *v139 = -559038737;
            abort();
          }

          v71 = v58 + 6;
          v72 = ((v90 & 0x7F) << 21) | (v91 << 28) | ((v88 & 0x7F) << 14) | ((v76 & 0x7F) << 7) | v70 & 0x7F;
        }

        else
        {
          v72 = ((v88 & 0x7F) << 14) | (v90 << 21) | ((v76 & 0x7F) << 7) | v70 & 0x7F;
          v71 = v58 + 5;
        }
      }

      else
      {
        v72 = ((v76 & 0x7F) << 7) | (v88 << 14) | v70 & 0x7F;
        v71 = v58 + 4;
      }
    }

    else
    {
      v72 = v70 & 0x7F | (v76 << 7);
      v71 = v58 + 3;
    }
  }

  else
  {
    v71 = v58 + 2;
    v72 = v70;
  }

  v152 = 0;
  v153 = v71;
  v92 = v72;
  v149 = v33;
  v145 = *(a2 + 56);
  v146 = v71 + v72;
  if (v146 > v145)
  {
    v93 = malloc_type_malloc(v72 + 4, 0xE599E9A2uLL);
    if (v92 >> 28)
    {
      v124 = 5;
    }

    else if (v92 >> 21)
    {
      v124 = 4;
    }

    else
    {
      v124 = 3;
      v125 = 1;
      if (v92 >= 0x80)
      {
        v125 = 2;
      }

      if (!(v92 >> 14))
      {
        v124 = v125;
      }
    }

    v133 = 1;
    if (v61 >= 0x80)
    {
      v133 = 2;
    }

    if (v61 >> 14)
    {
      v133 = 3;
    }

    if (v61 >> 21)
    {
      v133 = 4;
    }

    if (v61 >> 28)
    {
      v133 = 5;
    }

    if (fd_pread(*(v8 + 4488), v93, v92, v124 + v33 + v133) == -1)
    {
      free(v93);
      goto LABEL_167;
    }

    v134 = CICleanUpThreadLoc();
    v94 = CICleanUpPush(v134, MEMORY[0x1E69E9B38], v93);
    v95 = v134;
    v53 = v148;
  }

  else
  {
    v93 = &v52[v71];
    v94 = 0;
    v95 = 0;
  }

  v143 = v94;
  v144 = v95;
  *(&v166 + 1) = a2;
  v167 = 0xFFFFFFFF00000000;
  *&v166 = a1;
  LOBYTE(v167) = v53 >> 62;
  v96 = v150;
  do
  {
    if (v152 >= v92)
    {
      break;
    }

    v97 = v96 & 0xFFFFFFFF00000000;
    v98 = v97 | v150;
    v99 = unpackPostingChunk(v93, &v152, v92, *(a2 + 68), v4 | (LODWORD(v5) << 32), v97 | v150, PayloadProcessDocIDRangeBitsReversed, &v166);
    v96 = v98;
  }

  while ((v99 & 1) != 0);
  if (v146 > v145)
  {
    free(v93);
    CICleanUpClearItem(v144, v143);
    CICleanUpPop(v144);
  }

  v82 = *(a1 + 1);
  v33 = v149;
  if ((v82 & 0x3FFFFFFFFFFFFFFFLL) != v149)
  {
    v126 = __si_assert_copy_extra(0);
    v84 = v126;
    v127 = "";
    if (v126)
    {
      v127 = v126;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 811, "(((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF))==next", v127);
LABEL_180:
    free(v84);
    if (__valid_fs(-1))
    {
      v128 = 2989;
    }

    else
    {
      v128 = 3072;
    }

    *v128 = -559038737;
    abort();
  }

LABEL_108:
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v44 = v82;
  if (v61 < 2)
  {
    goto LABEL_135;
  }

  v100 = v61 >> 1;
  if (a1[80])
  {
    v129 = __si_assert_copy_extra(*(*(a2 + 48) + 4488));
    v130 = v129;
    v131 = "";
    if (v129)
    {
      v131 = v129;
    }

    __message_assert("%s:%u: failed assertion '%s' %s nxtLink: %lld. compact", "PayloadIterator.c", 819, "iter->compact == false", v131, v61 >> 1);
    free(v130);
    if (__valid_fsp(*(*(a2 + 48) + 4488)))
    {
      v132 = 2989;
    }

    else
    {
      v132 = 3072;
    }

    *v132 = -559038737;
    abort();
  }

  v101 = (v61 >> 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v101 == v33)
  {
    goto LABEL_135;
  }

  if (v101 <= v33)
  {
    v102 = (v61 >> 1) & 0x3FFFFFFFFFFFFFFFLL;
    v103 = *(a1 + 3);
    v104 = *(a2 + 48);
    v105 = *(v104 + 32);
    if (v103 >= v105)
    {
      v105 = 2 * v103;
    }

    v107 = v101 > v105 || v33 <= v105;
    if (v101 < v103 || !v107)
    {
      if (v4)
      {
        oqpush_with_meta((a1 + 160), v100 | v148, LODWORD(v5) | (v150 << 32));
      }

      else
      {
        oqpush_13659(a1 + 160, v100 | v148, v16);
      }

      if (*(a2 + 32) > v101)
      {
        v109 = *(a1 + 3);
        if (v101 < v109 && v101 > v109 >> 1)
        {
          *(a2 + 32) = v101;
        }
      }

      goto LABEL_135;
    }

    v135 = v105;
    v136 = __si_assert_copy_extra(*(v104 + 4488));
    v137 = v136;
    v138 = "";
    if (v136)
    {
      v138 = v136;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Unexpected value for nextLink: %lld. next=%lld barrier=%lld split=%lld", "PayloadIterator.c", 843, "(OFFSET_GET_VALUE(nxtLink) <= barrier && next>barrier)|| (OFFSET_GET_VALUE(nxtLink)<iter->split)", v138, v102, v147, v135, *(a1 + 3));
    free(v137);
    if (__valid_fsp(*(*(a2 + 48) + 4488)))
    {
      goto LABEL_206;
    }

    goto LABEL_210;
  }

  if (v4)
  {
    pq_force_meta((a1 + 232));
    pqpush_with_meta((a1 + 232), v100 | v148, LODWORD(v5) | (v150 << 32));
  }

  else
  {
    pqpush((a1 + 232), v100 | v148);
  }

  v108 = *(a2 + 24);
  if (v108 >= v101)
  {
    v108 = (v61 >> 1) & 0x3FFFFFFFFFFFFFFFLL;
  }

  *(a2 + 24) = v108;
LABEL_135:
  if ((*(a1 + 1) & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_158;
  }

  v43 = *(a1 + 1);
  do
  {
LABEL_137:
    v110 = *(a1 + 25);
    v111 = *(a1 + 26);
    if (*(a1 + 32) == 1)
    {
      v112 = v43;
      if (v111 == v110)
      {
        break;
      }

      goto LABEL_155;
    }

    if (v111 == v110)
    {
      goto LABEL_154;
    }

    v113 = *(a1 + 30);
    if (v113)
    {
      if (a1[232])
      {
        v114 = 16;
      }

      else
      {
        v114 = 8;
      }

      v113 = *(v113 + v114);
    }

    if (a1[160] == 1)
    {
      if (v110 < v111)
      {
        v115 = (*(a1 + 22) + 16 * v110);
LABEL_151:
        v116 = *v115;
        goto LABEL_153;
      }
    }

    else if (v110 < v111)
    {
      v115 = (*(a1 + 22) + 8 * v110);
      goto LABEL_151;
    }

    v116 = 0;
LABEL_153:
    if (v113 < v116)
    {
LABEL_154:
      v43 = pqpop(a1 + 29, a1);
      goto LABEL_156;
    }

LABEL_155:
    v43 = oqpop(a1 + 20, a1);
LABEL_156:
    *(a1 + 1) = v43;
    *(a1 + 2) = v117;
    v112 = v43;
  }

  while (((v43 ^ v44) & 0x3FFFFFFFFFFFFFFFLL) == 0);
  if ((v112 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
LABEL_158:
    result = 1;
    goto LABEL_159;
  }

  if (!*(a1 + 24))
  {
LABEL_167:
    result = 0;
    goto LABEL_159;
  }

  v119 = *(a1 + 3);
  while (1)
  {
    v120 = v119 >> 1;
    v121 = v120 >= *(*(a2 + 48) + 32) ? v120 : 0;
    *(a1 + 3) = v121;
    oqsplit((a1 + 160), v121);
    v122 = oqpop(a1 + 20, a1);
    *(a1 + 1) = v122;
    *(a1 + 2) = v123;
    v73 = (v122 & 0x3FFFFFFFFFFFFFFFLL) != 0;
    if ((v122 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      break;
    }

    v119 = *(a1 + 3);
    if (!v119)
    {
      goto LABEL_167;
    }
  }

LABEL_71:
  result = v73;
LABEL_159:
  v118 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unpackPostingChunk(uint64_t a1, unint64_t *a2, unint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int (*a7)(void, void), uint64_t a8)
{
  v10 = *a2;
  if (*a2 >= a3)
  {
LABEL_108:
    if (!__valid_fs(-1))
    {
      goto LABEL_129;
    }

    goto LABEL_109;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = v10 + 1;
    v15 |= (*(a1 + v10) & 0x7F) << v14;
    if ((*(a1 + v10) & 0x80) == 0 || v14 == 63)
    {
      break;
    }

    v14 += 7;
    ++v10;
    if (a3 == v16)
    {
      goto LABEL_108;
    }
  }

  *a2 = v16;
  if (!v15)
  {
    return 0;
  }

  if (v16 >= a3)
  {
LABEL_110:
    if (__valid_fs(-1))
    {
      v81 = __si_assert_copy_extra_332();
      v109 = *a2;
      si_analytics_log_6257(v81, v82, v83, v84, v85, v86, v87, v88, "PostingChunk.c");
      free(v81);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v18 |= (*(a1 + v10 + 1) & 0x7F) << v17;
    if ((*(a1 + v10 + 1) & 0x80) == 0 || v17 == 63)
    {
      break;
    }

    v17 += 7;
    if (a3 - 1 == ++v10)
    {
      goto LABEL_110;
    }
  }

  v19 = v10 + 2;
  *a2 = v10 + 2;
  v20 = a3 - v10 - 2;
  if (v15 > v18)
  {
    v21 = a6;
    v22 = 1;
    (a7)(a8, v15, 1, 0, 0, a5, a6);
    if (v18)
    {
      v23 = v15;
      while (v23 > v18)
      {
        if (v23 - v18 >= a4)
        {
          goto LABEL_115;
        }

        v22 = (a7)(a8, v23 - v18, 1, 0, 0, a5, v21);
        if (!v22)
        {
          return v22;
        }

        v23 -= v18;
        v24 = *a2;
        if (*a2 + 5 > a3)
        {
          LODWORD(v18) = _protectedReadVInt32(a1, a2, a3);
          if (!v18)
          {
            return v22;
          }
        }

        else
        {
          v25 = v24 + 1;
          LODWORD(v18) = *(a1 + v24);
          if (*(a1 + v24) < 0)
          {
            v26 = v24 + 2;
            v27 = *(a1 + v25);
            v28 = *(a1 + v25);
            if (v27 < 0)
            {
              v29 = *(a1 + v26);
              v30 = v29;
              if (v29 < 0)
              {
                v26 = v24 + 4;
                v31 = *(a1 + v24 + 3);
                v32 = *(a1 + v24 + 3);
                if (v31 < 0)
                {
                  v33 = *(a1 + v26);
                  if (v33 < 0)
                  {
                    goto LABEL_125;
                  }

                  v34 = ((v32 & 0x7F) << 21) | (v33 << 28) | ((v30 & 0x7F) << 14) | ((v28 & 0x7F) << 7) | v18 & 0x7F;
                  v26 = *a2 + 5;
                  LODWORD(v18) = v34;
                }

                else
                {
                  LODWORD(v18) = ((v30 & 0x7F) << 14) | (v32 << 21) | ((v28 & 0x7F) << 7) | v18 & 0x7F;
                }
              }

              else
              {
                v26 = v24 + 3;
                LODWORD(v18) = ((v28 & 0x7F) << 7) | (v30 << 14) | v18 & 0x7F;
              }
            }

            else
            {
              LODWORD(v18) = v18 & 0x7F | (v28 << 7);
            }
          }

          else
          {
            v26 = v24 + 1;
          }

          *a2 = v26;
          if (!v18)
          {
            return v22;
          }
        }
      }

      v89 = __si_assert_copy_extra_332();
      v64 = v89;
      v90 = "";
      if (v89)
      {
        v90 = v89;
      }

      __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 815, "docID > delta", v90, v23, v18);
      goto LABEL_105;
    }

    return v22;
  }

  if (v15 >= v18)
  {
    if (v19 < a3)
    {
      v37 = 0;
      v38 = 0;
      v39 = v10 + 3;
      v40 = (a1 + v10 + 2);
      v41 = a6;
      while (1)
      {
        v42 = *v40++;
        v38 |= (v42 & 0x7F) << v37;
        if ((v42 & 0x80) == 0 || v37 == 63)
        {
          break;
        }

        v37 += 7;
        ++v39;
        if (!--v20)
        {
          goto LABEL_120;
        }
      }

      *a2 = v39;
      if (v38 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v38;
      }

      if (v38)
      {
        while ((a7)(a8, v15, 1, 0, v43, a5, v41))
        {
          v44 = *a2;
          if (*a2 >= a3)
          {
LABEL_122:
            if (__valid_fs(-1))
            {
              v91 = __si_assert_copy_extra_332();
              v110 = *a2;
              si_analytics_log_6257(v91, v92, v93, v94, v95, v96, v97, v98, "PostingChunk.c");
              free(v91);
              MEMORY[0xB00] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v45 = 0;
          v46 = 0;
          while (1)
          {
            v47 = *(a1 + v44++);
            v46 |= (v47 & 0x7F) << v45;
            if ((v47 & 0x80) == 0 || v45 == 63)
            {
              break;
            }

            v45 += 7;
            if (a3 == v44)
            {
              goto LABEL_122;
            }
          }

          *a2 = v44;
          v15 -= v46;
          if (!v46)
          {
            return 1;
          }
        }
      }

      else if ((a7)(a8, v15, 1, 0, v43, a5, a6))
      {
        return 1;
      }

      return 0;
    }

LABEL_120:
    if (!__valid_fs(-1))
    {
LABEL_129:
      v71 = 3072;
LABEL_130:
      *v71 = -559038737;
      abort();
    }

LABEL_109:
    v72 = __si_assert_copy_extra_332();
    v73 = *a2;
    si_analytics_log_6257(v72, v74, v75, v76, v77, v78, v79, v80, "PostingChunk.c");
    free(v72);
    v71 = 2816;
    goto LABEL_130;
  }

  v35 = a6;
  if (*(a1 + v19))
  {
    if (v15 < a4)
    {
      if (v18 <= a4)
      {
        v36 = v19 + ((v18 - v15 + 7) >> 3);
        if (v36 > a3)
        {
          v104 = __si_assert_copy_extra_332();
          v105 = v104;
          v106 = "";
          if (v104)
          {
            v106 = v104;
          }

          __message_assert("%s:%u: failed assertion '%s' %s %ld, %ld", "PostingChunk.c", 843, "newOffset <= bufferLength", v106, v36, a3);
          v70 = v105;
LABEL_106:
          free(v70);
          if (__valid_fs(-1))
          {
            v71 = 2986;
            goto LABEL_130;
          }

          goto LABEL_129;
        }

        if (a7(a8, v15))
        {
          *a2 = v36;
          return 1;
        }

        return 0;
      }

      goto LABEL_115;
    }

    v102 = __si_assert_copy_extra_332();
    v64 = v102;
    v103 = "";
    if (v102)
    {
      v103 = v102;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 838, "firstDocID < maxValidId", v103, v15, a4);
LABEL_105:
    v70 = v64;
    goto LABEL_106;
  }

  if (v10 + 7 > a3)
  {
    if (!_protectedReadVInt32(a1, a2, a3))
    {
      goto LABEL_66;
    }

    v48 = __si_assert_copy_extra_332();
    __message_assert("%s:%u: failed assertion '%s' %s %d");
LABEL_116:
    free(v48);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAA] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  *a2 = v10 + 3;
  do
  {
    while (1)
    {
LABEL_66:
      v49 = *a2;
      v50 = *a2 + 5;
      if (v50 > a3)
      {
        VInt32 = _protectedReadVInt32(a1, a2, a3);
        v52 = v18 - VInt32;
        if (v18 < VInt32)
        {
          goto LABEL_96;
        }

        goto LABEL_78;
      }

      v53 = v49 + 1;
      VInt32 = *(a1 + v49);
      if ((*(a1 + v49) & 0x80000000) == 0)
      {
        *a2 = v53;
        v52 = v18 - VInt32;
        if (v18 < VInt32)
        {
          goto LABEL_96;
        }

        goto LABEL_78;
      }

      v54 = v49 + 2;
      v55 = *(a1 + v53);
      v56 = *(a1 + v53);
      if ((v55 & 0x80000000) == 0)
      {
        VInt32 = VInt32 & 0x7F | (v56 << 7);
        goto LABEL_74;
      }

      v57 = v49 + 3;
      v58 = *(a1 + v54);
      v59 = v58;
      if (v58 < 0)
      {
        v54 = v49 + 4;
        v60 = *(a1 + v57);
        if ((v60 & 0x80000000) == 0)
        {
          VInt32 = ((v59 & 0x7F) << 14) | (v60 << 21) | ((v56 & 0x7F) << 7) | VInt32 & 0x7F;
LABEL_74:
          *a2 = v54;
          v52 = v18 - VInt32;
          if (v18 < VInt32)
          {
            goto LABEL_96;
          }

          goto LABEL_78;
        }

        v61 = *(a1 + v54);
        if (v61 < 0)
        {
LABEL_125:
          v99 = __si_assert_copy_extra_332();
          v100 = v99;
          v101 = "";
          if (v99)
          {
            v101 = v99;
          }

          __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v101);
          free(v100);
          if (__valid_fs(-1))
          {
            v71 = 2989;
            goto LABEL_130;
          }

          goto LABEL_129;
        }

        VInt32 = ((v60 & 0x7F) << 21) | (v61 << 28) | ((v59 & 0x7F) << 14) | ((v56 & 0x7F) << 7) | VInt32 & 0x7F;
        *a2 = v50;
        v52 = v18 - VInt32;
        if (v18 < VInt32)
        {
LABEL_96:
          v63 = __si_assert_copy_extra_332();
          v64 = v63;
          v65 = "";
          if (v63)
          {
            v65 = v63;
          }

          __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 868, "delta <= docID", v65, VInt32, v18);
          goto LABEL_105;
        }
      }

      else
      {
        VInt32 = ((v56 & 0x7F) << 7) | (v58 << 14) | VInt32 & 0x7F;
        *a2 = v57;
        v52 = v18 - VInt32;
        if (v18 < VInt32)
        {
          goto LABEL_96;
        }
      }

LABEL_78:
      if (v52 < v15)
      {
        v66 = __si_assert_copy_extra_332();
        v64 = v66;
        v67 = "";
        if (v66)
        {
          v67 = v66;
        }

        __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 871, "docID >= firstDocID", v67, v52, v15);
        goto LABEL_105;
      }

      if (VInt32 < 2)
      {
        break;
      }

      if (v52 + 1 >= a4)
      {
        v68 = __si_assert_copy_extra_332();
        v64 = v68;
        v69 = "";
        if (v68)
        {
          v69 = v68;
        }

        __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 875, "docID+1 < maxValidId", v69, v52, a4);
        goto LABEL_105;
      }

      LODWORD(v18) = v52;
      if (((a7)(a8) & 1) == 0)
      {
        return 0;
      }
    }

    LODWORD(v18) = v52;
  }

  while (VInt32);
  if (v15 >= a4)
  {
    v107 = __si_assert_copy_extra_332();
    v64 = v107;
    v108 = "";
    if (v107)
    {
      v108 = v107;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d, %d", "PostingChunk.c", 882, "firstDocID < maxValidId", v108, v15, a4);
    goto LABEL_105;
  }

  if (v52 > a4)
  {
LABEL_115:
    v48 = __si_assert_copy_extra_332();
    __message_assert("%s:%u: failed assertion '%s' %s %d, %d");
    goto LABEL_116;
  }

  return (a7)(a8, v15, v52 - v15, 0, 0, a5, v35);
}

uint64_t ContentIndexQueryNodeEquals(float *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 2) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *a1;
  if (v2 != *a2 || a1[3] != *(a2 + 12) || a1[4] != *(a2 + 16) || *(a1 + 1) != *(a2 + 4))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = (a1 + 6);
    v6 = a2 + 24;
    do
    {
      v7 = &v5[4 * v3];
      v8 = *v7;
      v9 = v6 + 16 * v3;
      if (v8 != *v9)
      {
        break;
      }

      if (v8 >= 1)
      {
        v10 = *(v7 + 1);
        v11 = *(v9 + 8);
        while (*(v10 + 24) == *(v11 + 24))
        {
          v12 = *(v10 + 20);
          if (v12 != *(v11 + 20))
          {
            break;
          }

          v13 = *(v10 + 16);
          if (v13 != *(v11 + 16))
          {
            break;
          }

          v14 = *(v10 + 60);
          if (v14 != *(v11 + 60))
          {
            break;
          }

          if ((v13 & 0x10) != 0)
          {
            v15 = *(v10 + 60) & 3;
            v16 = -1;
            if (v15 != 3)
            {
              v17 = (v14 >> 2) & 3;
              if (v17 != 3)
              {
                v16 = (vector_dimension_vec_sizes_15424[v15] * vector_size_elem_sizes_15423[v17]);
              }
            }

            if (memcmp(*v10, *v11, v16))
            {
              break;
            }
          }

          if ((v13 & 0x600) != 0 && memcmp(*v10, *v11, 8 * v12))
          {
            break;
          }

          if ((v13 & 0x610) == 0 && strcmp(*v10, *v11))
          {
            break;
          }

          v18 = *(v10 + 8);
          v19 = *(v11 + 8);
          if (v18 != v19 && (!v18 || !v19 || strcmp(v18, v19)))
          {
            break;
          }

          v10 += 64;
          v11 += 64;
          if (!--v8)
          {
            goto LABEL_30;
          }
        }

        return v4;
      }

LABEL_30:
      v4 = ++v3 >= v2;
    }

    while (v3 != v2);
  }

  return v4;
}

void findMatchTerm(uint64_t a1, char a2)
{
  v169 = *MEMORY[0x1E69E9840];
  if (**a1)
  {
    goto LABEL_250;
  }

  v3 = *(a1 + 52);
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 8);
    if (v7 > v3)
    {
      v9 = a2;
      v6 = mgetBase(v8, v3);
      a2 = v9;
      if (v9)
      {
        goto LABEL_45;
      }

      goto LABEL_9;
    }

    v160 = __si_assert_copy_extra_2708(*(v8 + 112));
    v161 = v160;
    v162 = "";
    if (v160)
    {
      v162 = v160;
    }

    __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4710, "ptr.next < ctx->trie_max", v162, v3, *(a1 + 64));
    free(v161);
    v159 = *(*(a1 + 8) + 112);
LABEL_278:
    if (__valid_fsp(v159))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v4 != 3)
  {
    goto LABEL_250;
  }

  v5 = *(a1 + 8);
  if (*(a1 + 64) <= v3)
  {
    v156 = __si_assert_copy_extra_2708(*(v5 + 4576));
    v157 = v156;
    v158 = "";
    if (v156)
    {
      v158 = v156;
    }

    __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4707, "ptr.next < ctx->trie_fat_max", v158, v3, *(a1 + 64));
    free(v157);
    v159 = *(*(a1 + 8) + 4576);
    goto LABEL_278;
  }

  v6 = (*(v5 + 8) + 1028 * v3);
  if (a2)
  {
    goto LABEL_45;
  }

LABEL_9:
  v10 = *v6;
  if (*(a1 + 48) == 1)
  {
    v11 = v10 >> 3;
    v12 = (v10 & 7) << 32;
    if ((*v6 & 3) == 1)
    {
      v12 = 0x100000000;
      v11 = v10 >> 2;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10 >> 1;
    }

    if (v14)
    {
      v15 = (a1 + 88);
      v16 = *(a1 + 1240);
      v17 = *v16;
      v18 = *(v16 + 6);
      v19 = **v16;
      if (v19 > 4)
      {
        if (v19 == 42)
        {
          v33 = a2;
          v34 = termPropertyID((a1 + 88), *(a1 + 1140));
          a2 = v33;
          if (v34 == 2)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        if (v19 != *v15)
        {
          goto LABEL_45;
        }

        v20 = v17 + 1;
        v21 = v17[1];
        if (v21 != *(a1 + 89))
        {
          goto LABEL_45;
        }

        if (v21 == 2)
        {
          v23 = v17[2];
          v22 = v17 + 2;
          LOBYTE(v21) = v23;
          if (v23 != *(a1 + 90))
          {
            goto LABEL_45;
          }

          v15 = (a1 + 91);
          v20 = v22;
        }

        else
        {
          v15 = (a1 + 90);
        }

        v17 = v20 + 1;
        if ((v21 & 0x80) != 0)
        {
          v148 = *v17;
          if (v148 != *v15)
          {
            goto LABEL_45;
          }

          v17 = v20 + 2;
          if (v148 < 0)
          {
            v155 = *v17;
            if (v155 != v15[1])
            {
              goto LABEL_45;
            }

            if (v155 < 0)
            {
              v164 = v20[3];
              if (v164 < 0 || v15[2] != v164)
              {
                goto LABEL_45;
              }

              v15 += 3;
              v17 = v20 + 4;
            }

            else
            {
              v15 += 2;
              v17 = v20 + 3;
            }
          }

          else
          {
            ++v15;
          }
        }
      }

      v40 = v17;
      v41 = a2;
      v42 = matche(v40, v15, v18, 0, 0);
      a2 = v41;
      if (v42)
      {
        findAddFlatBucket(a1, v13 | v14, 0, 0, 0, 0);
        a2 = v41;
      }
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_45;
    }

    v24 = *(a1 + 1240);
    v25 = *v24;
    v26 = *(v24 + 6);
    v27 = **v24;
    if (v27 > 4)
    {
      if (v27 == 42)
      {
        v35 = a2;
        v36 = termPropertyID((a1 + 88), *(a1 + 1140));
        a2 = v35;
        v32 = (a1 + 88);
        if (v36 == 2)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v32 = (a1 + 88);
      }
    }

    else
    {
      if (v27 != *(a1 + 88))
      {
        goto LABEL_45;
      }

      v28 = v25 + 1;
      v29 = v25[1];
      if (v29 != *(a1 + 89))
      {
        goto LABEL_45;
      }

      if (v29 == 2)
      {
        v31 = v25[2];
        v30 = v25 + 2;
        LOBYTE(v29) = v31;
        if (v31 != *(a1 + 90))
        {
          goto LABEL_45;
        }

        v32 = (a1 + 91);
        v28 = v30;
      }

      else
      {
        v32 = (a1 + 90);
      }

      v25 = v28 + 1;
      if ((v29 & 0x80) != 0)
      {
        v145 = *v25;
        if (v145 != *v32)
        {
          goto LABEL_45;
        }

        v25 = v28 + 2;
        if (v145 < 0)
        {
          v154 = *v25;
          if (v154 != v32[1])
          {
            goto LABEL_45;
          }

          if (v154 < 0)
          {
            v163 = v28[3];
            if (v163 < 0 || v32[2] != v163)
            {
              goto LABEL_45;
            }

            v32 += 3;
            v25 = v28 + 4;
          }

          else
          {
            v32 += 2;
            v25 = v28 + 3;
          }
        }

        else
        {
          ++v32;
        }
      }
    }

    v37 = v25;
    v38 = a2;
    v39 = matche(v37, v32, v26, 0, 0);
    a2 = v38;
    if (v39)
    {
      findHandleMatch(a1, v10, 0, (a1 + 88), *(a1 + 1140), 0);
      a2 = v38;
    }
  }

LABEL_45:
  v43 = *(a1 + 1224);
  v44 = *v43;
  v45 = *v43;
  if (*v43 < 0)
  {
    v48 = (v44 >> 4) & 0xC;
    if (v48 == 8)
    {
      v49 = *(a1 + 8);
      v50 = *(&tcm + v44);
      if (v4 == 1)
      {
        v65 = mgetBase(v49, v3);
        if (((*(v65 + ((v50 >> 3) & 0x1C) + 4) >> v50) & 1) == 0)
        {
          goto LABEL_250;
        }

        v51 = *(v65 + 4 * get_follows_pos(v65, v50) + 38);
      }

      else
      {
        v51 = *(*(v49 + 8) + 1028 * v3 + 4 * v50 + 4);
      }

      v66 = v51 >> 1;
      v67 = v51 >> 3;
      v68 = (v51 & 7) << 32;
      if ((v51 & 3) == 1)
      {
        v67 = v51 >> 2;
        v68 = 0x100000000;
      }

      if (v51)
      {
        v66 = v67;
        v69 = v68;
      }

      else
      {
        v69 = 0;
      }

      if (v66)
      {
        v70 = a1 + 88;
        v71 = *(a1 + 1140);
        *(a1 + 1140) = v71 + 1;
        *(v70 + v71) = v45;
        *(v70 + *(a1 + 1140)) = 0;
        ++*(a1 + 1224);
        if (v69)
        {
          *(a1 + 52) = v66;
          *(a1 + 56) = HIDWORD(v69);
          findMatchTerm(a1, 0);
          *(a1 + 52) = v3 | (v4 << 32);
        }

        else
        {
          findAddFlatBucket(a1, v66, 0, 0, 0, 0);
        }

        --*(a1 + 1224);
        --*(a1 + 1140);
      }

      goto LABEL_250;
    }

    v55 = utf8_byte_length(unsigned char)::utf8_len_table[v44 >> 4];
    v56 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v55] & v45);
    if (v48 == 12)
    {
      if (v55 <= 2)
      {
        v57 = 2;
      }

      else
      {
        v57 = utf8_byte_length(unsigned char)::utf8_len_table[v44 >> 4];
      }

      v58 = v57 - 1;
      v59 = v43 + 1;
      do
      {
        v60 = *v59++;
        v61 = v60 & 0x3F | (v56 << 6);
        v56 = v61;
        --v58;
      }

      while (v58);
    }

    else
    {
      v61 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v55] & v45);
    }

    if ((*(*(a1 + 1240) + 16) & 2) != 0)
    {
      if (v61 - 880 > 0xFFFFFF8F)
      {
        *(a1 + 1224) = &v43[v55];
        findMatchIgnoringDiacritics(a1, v3 | (v4 << 32));
        *(a1 + 1224) -= v55;
      }

      else
      {
        findMatchIgnoringDiacritics(a1, v3 | (v4 << 32));
      }
    }

    if (*(*(a1 + 1240) + 16))
    {
      Predefined = findMatchTerm_sLowerSet;
      if (!findMatchTerm_sLowerSet)
      {
        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
        findMatchTerm_sLowerSet = Predefined;
      }

      if (CFCharacterSetIsLongCharacterMember(Predefined, v61))
      {
        if (v61 <= 0xFFFE)
        {
          v76 = map_case(v61);
          v166 = v76;
          if (v61 != v76)
          {
            v168 = 0;
            v167 = 0;
            utf8_encodestr(&v166, 2uLL, &v167, &v165, 10);
            findMatchTermExpansion(a1, v55, &v167);
          }
        }
      }
    }

    v72 = *(a1 + 8);
    v73 = *(&tcm + v44);
    if (v4 == 1)
    {
      v77 = mgetBase(v72, v3);
      if (((*(v77 + ((v73 >> 3) & 0x1C) + 4) >> v73) & 1) == 0)
      {
        goto LABEL_132;
      }

      v74 = *(v77 + 4 * get_follows_pos(v77, v73) + 38);
    }

    else
    {
      v74 = *(*(v72 + 8) + 1028 * v3 + 4 * v73 + 4);
    }

    v78 = v74 >> 1;
    v79 = v74 >> 3;
    v80 = (v74 & 7) << 32;
    if ((v74 & 3) == 1)
    {
      v79 = v74 >> 2;
      v80 = 0x100000000;
    }

    if (v74)
    {
      v78 = v79;
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    if (v78)
    {
      v82 = a1 + 88;
      v83 = *(a1 + 1140);
      *(a1 + 1140) = v83 + 1;
      *(v82 + v83) = v45;
      *(v82 + *(a1 + 1140)) = 0;
      ++*(a1 + 1224);
      if (v81)
      {
        *(a1 + 52) = v78;
        *(a1 + 56) = HIDWORD(v81);
        findMatchTerm(a1, 0);
        *(a1 + 52) = v3 | (v4 << 32);
      }

      else
      {
        findAddFlatBucket(a1, v78, 0, 0, 0, 0);
      }

      --*(a1 + 1224);
      --*(a1 + 1140);
    }

LABEL_132:
    if (v45 > 196)
    {
      if (v45 != 197)
      {
        if (v45 != 226)
        {
          goto LABEL_250;
        }

        if ((*(*(a1 + 1240) + 16) & 2) == 0)
        {
          goto LABEL_250;
        }

        v106 = *(a1 + 1224);
        if (*(v106 + 1) != 128)
        {
          goto LABEL_250;
        }

        v107 = *(v106 + 2);
        if ((v107 - 152) <= 0x1A && ((1 << (v107 + 104)) & 0x400000B) != 0)
        {
          findMatchTermExpansion(a1, 3u, utf8_left_single_quote_str);
          findMatchTermExpansion(a1, 3u, utf8_right_single_quote_str);
          findMatchTermExpansion(a1, 3u, utf8_right_inverted_quote_str);
          findMatchTermExpansion(a1, 3u, utf8_right_double_prime_str);
          findMatchTermExpansion(a1, 3u, "");
          v107 = *(*(a1 + 1224) + 2);
        }

        v108 = v107 - 155;
        if (v108 > 0x17 || ((1 << v108) & 0x800007) == 0)
        {
          goto LABEL_250;
        }

        findMatchTermExpansion(a1, 3u, utf8_left_single_quote_str);
        findMatchTermExpansion(a1, 3u, utf8_right_single_quote_str);
        findMatchTermExpansion(a1, 3u, utf8_right_inverted_quote_str);
        findMatchTermExpansion(a1, 3u, utf8_prime_str);
        v105 = "'";
        v109 = a1;
        v110 = 3;
        goto LABEL_249;
      }

      v112 = *(*(a1 + 1224) + 1);
      if (v112 != 146)
      {
        if (v112 != 147)
        {
          goto LABEL_250;
        }

        findMatchTermExpansion(a1, 2u, "oe");
        findMatchTermExpansion(a1, 2u, utf8_o_umlat_lower_str);
        if ((*(*(a1 + 1240) + 16) & 1) == 0)
        {
          goto LABEL_250;
        }
      }

      findMatchTermExpansion(a1, 2u, "OE");
      v105 = utf8_o_umlat_upper_str;
LABEL_248:
      v109 = a1;
      v110 = 2;
LABEL_249:
      findMatchTermExpansion(v109, v110, v105);
      goto LABEL_250;
    }

    if (v45 != 195)
    {
      if (v45 != 196)
      {
        goto LABEL_250;
      }

      v104 = *(*(a1 + 1224) + 1);
      if (v104 != 178)
      {
        if (v104 != 179)
        {
          goto LABEL_250;
        }

        findMatchTermExpansion(a1, 2u, "ij");
        if ((*(*(a1 + 1240) + 16) & 1) == 0)
        {
          goto LABEL_250;
        }
      }

      v105 = "IJ";
      goto LABEL_248;
    }

    v111 = *(*(a1 + 1224) + 1);
    if (v111 <= 0x9E)
    {
      if (v111 != 134)
      {
        if (v111 != 152)
        {
          goto LABEL_250;
        }

        goto LABEL_233;
      }
    }

    else
    {
      if (v111 == 159)
      {
        v105 = "ss";
        goto LABEL_248;
      }

      if (v111 != 166)
      {
        if (v111 != 184)
        {
          goto LABEL_250;
        }

        findMatchTermExpansion(a1, 2u, "oe");
        findMatchTermExpansion(a1, 2u, utf8_o_umlat_lower_str);
        findMatchTermExpansion(a1, 2u, utf8_oe_ligature_lower_str);
        if ((*(*(a1 + 1240) + 16) & 1) == 0)
        {
          goto LABEL_250;
        }

LABEL_233:
        findMatchTermExpansion(a1, 2u, "OE");
        findMatchTermExpansion(a1, 2u, utf8_o_umlat_upper_str);
        v105 = &utf8_oe_ligature_upper_str;
        goto LABEL_248;
      }

      findMatchTermExpansion(a1, 2u, "ae");
      findMatchTermExpansion(a1, 2u, utf8_a_umlat_lower_str);
      if ((*(*(a1 + 1240) + 16) & 1) == 0)
      {
        goto LABEL_250;
      }
    }

    findMatchTermExpansion(a1, 2u, "AE");
    v105 = utf8_a_umlat_upper_str;
    goto LABEL_248;
  }

  if (!*v43)
  {
    v52 = *(*(a1 + 1240) + 20);
    if (v52 == 2)
    {
      v62 = *MEMORY[0x1E69E9840];
      v54 = "\x01\x02";
    }

    else
    {
      if (v52 != 1)
      {
        goto LABEL_250;
      }

      v53 = *MEMORY[0x1E69E9840];
      v54 = "\x01\x01";
    }

LABEL_72:
    v63 = a1;
    v64 = 2;
LABEL_73:

    findMatchTermExpansion(v63, v64, v54);
    return;
  }

  if ((a2 & 1) == 0 && v43 >= *(a1 + 1232))
  {
    if (v45 == 92)
    {
      v85 = v43[1];
      v84 = (v43 + 1);
      if (v85)
      {
        *(a1 + 1224) = v84;
        findMatchTerm(a1, 1);
        --*(a1 + 1224);
        goto LABEL_250;
      }
    }

    else if (v45 == 42)
    {
      v46 = v43[1] == 0;
      v47 = *MEMORY[0x1E69E9840];

      findMatchTermWildcard(a1, v3 | (v4 << 32), 0, v46);
      return;
    }
  }

  v86 = v3 | (v4 << 32);
  if ((*(*(a1 + 1240) + 16) & 2) != 0)
  {
    findMatchIgnoringDiacritics(a1, v3 | (v4 << 32));
  }

  v87 = *(a1 + 8);
  v88 = *(&tcm + v44);
  if (v4 != 1)
  {
    v89 = *(*(v87 + 8) + 1028 * v3 + 4 * v88 + 4);
    v90 = v89 >> 1;
    v91 = v89 >> 3;
    v92 = (v89 & 7) << 32;
    if ((v89 & 3) == 1)
    {
      v91 = v89 >> 2;
      v92 = 0x100000000;
    }

    if (v89)
    {
      v90 = v91;
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    goto LABEL_160;
  }

  v94 = mgetBase(v87, v3);
  v95 = (v94 + 4);
  if (((*(v94 + 4 + 4 * (v88 >> 5)) >> v88) & 1) == 0)
  {
    goto LABEL_165;
  }

  v96 = 0;
  v97 = v88 >> 6;
  if (v88 >> 6 > 1)
  {
    if (v97 != 2)
    {
      v99 = vcnt_s8(*(v94 + 20));
      v99.i16[0] = vaddlv_u8(v99);
      v96 = v99.u32[0];
    }

    v100 = vcnt_s8(*(v94 + 12));
    v100.i16[0] = vaddlv_u8(v100);
    v96 += v100.u32[0];
    goto LABEL_123;
  }

  v98 = v88 >> 6;
  if (v97)
  {
LABEL_123:
    v101 = vcnt_s8(*v95);
    v101.i16[0] = vaddlv_u8(v101);
    v98 = v101.u32[0] + v96;
  }

  v102 = vcnt_s8((*&v95[v97] & ~(-1 << v88)));
  v102.i16[0] = vaddlv_u8(v102);
  v103 = *(v94 + 38 + 4 * (v102.u32[0] + v98));
  if (v103)
  {
    if ((*(v94 + 38 + 4 * (v102.u32[0] + v98)) & 3) == 1)
    {
      v90 = v103 >> 2;
      v93 = 0x100000000;
    }

    else
    {
      v93 = (v103 & 7) << 32;
      v90 = v103 >> 3;
    }
  }

  else
  {
    v93 = 0;
    v90 = v103 >> 1;
  }

LABEL_160:
  if (v90)
  {
    v113 = a1 + 88;
    v114 = *(a1 + 1140);
    *(a1 + 1140) = v114 + 1;
    *(v113 + v114) = v45;
    *(v113 + *(a1 + 1140)) = 0;
    ++*(a1 + 1224);
    if (v93)
    {
      *(a1 + 52) = v90;
      *(a1 + 56) = HIDWORD(v93);
      findMatchTerm(a1, 0);
      *(a1 + 52) = v86;
    }

    else
    {
      findAddFlatBucket(a1, v90, 0, 0, 0, 0);
    }

    --*(a1 + 1224);
    --*(a1 + 1140);
  }

LABEL_165:
  if ((*(*(a1 + 1240) + 16) & 1) != 0 && v44 - 123 >= 0xFFFFFFFFFFFFFFE6)
  {
    v115 = sUpperTable[v44];
    v116 = *(a1 + 8);
    v117 = *(&tcm + v115);
    if (v4 == 1)
    {
      v119 = mgetBase(v116, v3);
      if (((*(v119 + ((v117 >> 3) & 0x1C) + 4) >> v117) & 1) == 0)
      {
        goto LABEL_181;
      }

      v118 = *(v119 + 4 * get_follows_pos(v119, v117) + 38);
    }

    else
    {
      v118 = *(*(v116 + 8) + 1028 * v3 + 4 * v117 + 4);
    }

    v120 = v118 >> 1;
    v121 = v118 >> 3;
    v122 = (v118 & 7) << 32;
    if ((v118 & 3) == 1)
    {
      v121 = v118 >> 2;
      v122 = 0x100000000;
    }

    if (v118)
    {
      v120 = v121;
      v123 = v122;
    }

    else
    {
      v123 = 0;
    }

    if (v120)
    {
      v124 = a1 + 88;
      v125 = *(a1 + 1140);
      *(a1 + 1140) = v125 + 1;
      *(v124 + v125) = v115;
      *(v124 + *(a1 + 1140)) = 0;
      ++*(a1 + 1224);
      if (v123)
      {
        *(a1 + 52) = v120;
        *(a1 + 56) = HIDWORD(v123);
        findMatchTerm(a1, 0);
        *(a1 + 52) = v86;
      }

      else
      {
        findAddFlatBucket(a1, v120, 0, 0, 0, 0);
      }

      --*(a1 + 1224);
      --*(a1 + 1140);
    }
  }

LABEL_181:
  if (!expansions_check[v44])
  {
    goto LABEL_250;
  }

  if (v45 > 95)
  {
    if (v45 > 104)
    {
      if (v45 != 105)
      {
        if (v45 != 111)
        {
          if (v45 != 115 || *(*(a1 + 1224) + 1) != 115)
          {
            goto LABEL_250;
          }

          v128 = *MEMORY[0x1E69E9840];
          v54 = &utf8_szed_str;
          goto LABEL_72;
        }

        v142 = *(a1 + 1224);
        v143 = *(v142 + 1);
        if (v143 == 204)
        {
          if (*(v142 + 2) != 136)
          {
            goto LABEL_250;
          }

          findMatchTermExpansion(a1, 2u, "oe");
          findMatchTermExpansion(a1, 2u, utf8_o_slash_lower_str);
          findMatchTermExpansion(a1, 2u, utf8_oe_ligature_lower_str);
          if ((*(*(a1 + 1240) + 16) & 1) == 0)
          {
            goto LABEL_250;
          }

          findMatchTermExpansion(a1, 2u, "OE");
          v144 = utf8_o_slash_upper_str;
          goto LABEL_244;
        }

        if (v143 != 101)
        {
          goto LABEL_250;
        }

        findMatchTermExpansion(a1, 2u, utf8_o_slash_lower_str);
        findMatchTermExpansion(a1, 2u, utf8_o_umlat_lower_str);
        findMatchTermExpansion(a1, 2u, utf8_oe_ligature_lower_str);
        if ((*(*(a1 + 1240) + 16) & 1) == 0)
        {
          goto LABEL_250;
        }

        goto LABEL_230;
      }

      v140 = *(*(a1 + 1240) + 16);
      if (v140)
      {
        if ((v140 & 2) == 0)
        {
          findMatchTermExpansion(a1, 1u, utf8_upper_dotted_i_str);
        }

        findMatchTermExpansion(a1, 1u, utf8_lower_dotless_i);
      }

      if (*(*(a1 + 1224) + 1) != 106)
      {
        goto LABEL_250;
      }

      findMatchTermExpansion(a1, 2u, utf8_ij_ligature_lower_str);
      if ((*(*(a1 + 1240) + 16) & 1) == 0)
      {
        goto LABEL_250;
      }

LABEL_226:
      v141 = *MEMORY[0x1E69E9840];
      v54 = &utf8_ij_ligature_upper_str;
      goto LABEL_72;
    }

    if (v45 != 96)
    {
      if (v45 != 97)
      {
        goto LABEL_250;
      }

      v133 = *(a1 + 1224);
      v134 = *(v133 + 1);
      if (v134 != 204)
      {
        if (v134 != 101)
        {
          if (v134 != 97)
          {
            goto LABEL_250;
          }

          findMatchTermExpansion(a1, 2u, utf8_a_ring_lower_str);
          if ((*(*(a1 + 1240) + 16) & 1) == 0)
          {
            goto LABEL_250;
          }

LABEL_217:
          v139 = *MEMORY[0x1E69E9840];
          v54 = &utf8_a_ring_upper_str;
          goto LABEL_72;
        }

        findMatchTermExpansion(a1, 2u, utf8_a_umlat_lower_str);
        findMatchTermExpansion(a1, 2u, utf8_ae_ligature_lower_str);
        if ((*(*(a1 + 1240) + 16) & 1) == 0)
        {
          goto LABEL_250;
        }

LABEL_255:
        findMatchTermExpansion(a1, 2u, utf8_a_umlat_upper_str);
        v149 = *MEMORY[0x1E69E9840];
        v54 = &utf8_ae_ligature_upper_str;
        goto LABEL_72;
      }

      v150 = *(v133 + 2);
      if (v150 != 138)
      {
        if (v150 != 136)
        {
          goto LABEL_250;
        }

        findMatchTermExpansion(a1, 3u, "ae");
        findMatchTermExpansion(a1, 3u, utf8_ae_ligature_lower_str);
        if ((*(*(a1 + 1240) + 16) & 1) == 0)
        {
          goto LABEL_250;
        }

LABEL_262:
        findMatchTermExpansion(a1, 3u, "AE");
        v152 = *MEMORY[0x1E69E9840];
        v54 = &utf8_ae_ligature_upper_str;
LABEL_265:
        v63 = a1;
        v64 = 3;
        goto LABEL_73;
      }

      findMatchTermExpansion(a1, 3u, "aa");
      if ((*(*(a1 + 1240) + 16) & 1) == 0)
      {
        goto LABEL_250;
      }

LABEL_264:
      v153 = *MEMORY[0x1E69E9840];
      v54 = "AA";
      goto LABEL_265;
    }

    if ((*(*(a1 + 1240) + 16) & 2) == 0)
    {
      goto LABEL_250;
    }

    findMatchTermExpansion(a1, 1u, utf8_left_single_quote_str);
    findMatchTermExpansion(a1, 1u, utf8_right_single_quote_str);
    findMatchTermExpansion(a1, 1u, utf8_right_inverted_quote_str);
    findMatchTermExpansion(a1, 1u, utf8_prime_str);
    v136 = *MEMORY[0x1E69E9840];
    v130 = a1;
    v131 = v3 | (v4 << 32);
    v132 = 39;
  }

  else
  {
    if (v45 > 64)
    {
      if (v45 != 65)
      {
        if (v45 != 73)
        {
          if (v45 == 79)
          {
            v126 = *(a1 + 1224);
            v127 = *(v126 + 1);
            if (v127 != 204)
            {
              if (v127 != 69)
              {
                goto LABEL_250;
              }

LABEL_230:
              findMatchTermExpansion(a1, 2u, utf8_o_slash_upper_str);
              v144 = utf8_o_umlat_upper_str;
LABEL_244:
              findMatchTermExpansion(a1, 2u, v144);
              v146 = *MEMORY[0x1E69E9840];
              v54 = &utf8_oe_ligature_upper_str;
              goto LABEL_72;
            }

            if (*(v126 + 2) == 136)
            {
              v144 = "OE";
              goto LABEL_244;
            }
          }

LABEL_250:
          v147 = *MEMORY[0x1E69E9840];
          return;
        }

        if (*(*(a1 + 1224) + 1) != 74)
        {
          goto LABEL_250;
        }

        goto LABEL_226;
      }

      v137 = *(a1 + 1224);
      v138 = *(v137 + 1);
      if (v138 != 204)
      {
        if (v138 != 69)
        {
          if (v138 != 65)
          {
            goto LABEL_250;
          }

          goto LABEL_217;
        }

        goto LABEL_255;
      }

      v151 = *(v137 + 2);
      if (v151 != 138)
      {
        if (v151 != 136)
        {
          goto LABEL_250;
        }

        goto LABEL_262;
      }

      goto LABEL_264;
    }

    if (v45 == 34)
    {
      if ((*(*(a1 + 1240) + 16) & 2) != 0)
      {
        findMatchTermExpansion(a1, 1u, utf8_left_double_quote_str);
        findMatchTermExpansion(a1, 1u, utf8_right_double_quote_str);
        findMatchTermExpansion(a1, 1u, utf8_right_inverted_double_quote_str);
        v135 = *MEMORY[0x1E69E9840];
        v54 = utf8_right_double_prime_str;
        v63 = a1;
        v64 = 1;
        goto LABEL_73;
      }

      goto LABEL_250;
    }

    if (v45 != 39 || (*(*(a1 + 1240) + 16) & 2) == 0)
    {
      goto LABEL_250;
    }

    findMatchTermExpansion(a1, 1u, utf8_left_single_quote_str);
    findMatchTermExpansion(a1, 1u, utf8_right_single_quote_str);
    findMatchTermExpansion(a1, 1u, utf8_right_inverted_quote_str);
    findMatchTermExpansion(a1, 1u, utf8_prime_str);
    v129 = *MEMORY[0x1E69E9840];
    v130 = a1;
    v131 = v3 | (v4 << 32);
    v132 = 96;
  }

  findMatchTermChar(v130, v131, v132);
}

uint64_t mgetBase(uint64_t a1, unint64_t a2)
{
  if (a2 >> 30)
  {
    v4 = __si_assert_copy_extra_2708(0);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie-Internal.h", 82, "offset<=0x3FFFFFFF", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = 4 * a2;
  if (4 * a2 >= *(a1 + 40))
  {
    v8 = __si_assert_copy_extra_2708(*(a1 + 112));
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s offset %ld past bounds %ld %ld", "BurstTrie-Internal.h", 84, "offset<t->bases.size", v10, v2, *(a1 + 40), *(a1 + 32));
    free(v9);
    if (__valid_fsp(*(a1 + 112)))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return *(a1 + 16) + v2;
}

void findAddFlatBucket(uint64_t a1, unint64_t a2, char *a3, size_t a4, char *a5, size_t a6)
{
  v6 = a2;
  v121 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a2) || !a2)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v92 = *__error();
      v93 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v94 = **(a1 + 1240);
        *buf = 134218754;
        v114 = a1;
        v115 = 1024;
        v116 = v6;
        v117 = 2080;
        v118 = a1 + 88;
        v119 = 2080;
        v120 = v94;
        _os_log_impl(&dword_1C278D000, v93, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p empty bucket %x %s %s", buf, 0x26u);
      }

      *__error() = v92;
    }

    goto LABEL_107;
  }

  v8 = a6;
  v10 = a4;
  v112 = *(a1 + 1240);
  if ((*(v112 + 16) & 0x3080) == 0)
  {
    goto LABEL_29;
  }

  if (!a3 && !a6)
  {
    v12 = *(a1 + 1140);
    if (v12 >= 1)
    {
      v13 = -2;
      do
      {
        v14 = v13;
        if (*(a1 + 87 + v12) == 1)
        {
          goto LABEL_107;
        }

        if (v12 < 2)
        {
          break;
        }

        ++v13;
        --v12;
      }

      while (v14);
    }

    goto LABEL_29;
  }

  if (a6 >= 1)
  {
    v15 = a6 & 0x7FFFFFFF;
    v16 = 3;
    do
    {
      if (a5[v15 - 1] == 1)
      {
        goto LABEL_107;
      }

      v17 = v16 - 1;
      if (v15 < 2)
      {
        break;
      }

      --v15;
      --v16;
    }

    while (v16);
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v17 = 3;
  if (a4)
  {
LABEL_20:
    if (a4 >= 1 && v17)
    {
      v18 = a4 & 0x7FFFFFFF;
      v19 = v17 - 1;
      do
      {
        if (a3[v18 - 1] == 1)
        {
          goto LABEL_107;
        }

        v38 = v19-- != 0;
        v20 = v38;
        if (v18 < 2)
        {
          break;
        }

        --v18;
      }

      while (v20);
    }
  }

LABEL_29:
  if (a2 << 6 >= *(a1 + 80))
  {
    v95 = __si_assert_copy_extra(*(*(a1 + 8) + 376));
    v96 = v95;
    v97 = "";
    if (v95)
    {
      v97 = v95;
    }

    __message_assert("%s:%u: failed assertion '%s' %s next: 0x%llx, max: 0x%llx", "FindTermIDs.c", 394, "flatStoreGetOffset(child) < ctx->flat_max", v97, v6 << 6, *(a1 + 80));
    free(v96);
    if (!__valid_fsp(*(*(a1 + 8) + 376)))
    {
      goto LABEL_131;
    }

    goto LABEL_124;
  }

  v21 = *(a1 + 1144);
  v22 = *(a1 + 1192);
  if (!v22)
  {
    UInt32TrieCreate(256, (a1 + 1208));
    v22 = v23;
    *(a1 + 1192) = v23;
  }

  __src = a5;
  v110 = v10;
  v111 = a3;
  if (*(a1 + 1204) == v6)
  {
    v24 = *(a1 + 1200);
    v25 = v112;
    goto LABEL_80;
  }

  v26 = 0;
  *buf = 0;
  v27 = v6;
  do
  {
    buf[v26++] = v27;
    v28 = v27 > 0xFF;
    v27 >>= 8;
  }

  while (v28);
  if ((v26 - 5) < 0xFCu)
  {
LABEL_73:
    v65 = __si_assert_copy_extra(0);
    __message_assert("%s:%u: failed assertion '%s' %s invalid key_len %d");
    goto LABEL_74;
  }

  v106 = v21;
  v107 = v6;
  v108 = v8;
  LODWORD(v8) = 0;
  v29 = 0;
  v30 = &buf[v26 - 1];
  v105 = (*(a1 + 1184) + 1);
  v31 = buf;
  while (1)
  {
    v32 = *v31;
    v33 = (v22 + 4);
    if ((*&v22[((v32 >> 3) & 0x1C) + 4] >> v32))
    {
      v34 = 0;
      v35 = v32 >> 6;
      if ((v32 >> 6) > 1)
      {
        if (v35 != 2)
        {
          v40 = vcnt_s8(*(v22 + 20));
          v40.i16[0] = vaddlv_u8(v40);
          v34 = v40.i32[0];
        }

        v41 = vcnt_s8(*(v22 + 12));
        v41.i16[0] = vaddlv_u8(v41);
        v34 += v41.i32[0];
      }

      else
      {
        v36 = v32 >> 6;
        if (!v35)
        {
LABEL_51:
          v43 = vcnt_s8((*&v33[v35] & ~(-1 << v32)));
          v43.i16[0] = vaddlv_u8(v43);
          v8 = (v36 + v43.i32[0]);
          v44 = *&v22[8 * v8 + 40];
          v29 = v22;
          if (v44)
          {
            goto LABEL_69;
          }

          goto LABEL_52;
        }
      }

      v42 = vcnt_s8(*v33);
      v42.i16[0] = vaddlv_u8(v42);
      LODWORD(v36) = v34 + v42.i32[0];
      goto LABEL_51;
    }

    v37 = v22[37];
    v38 = v37 != 255 && v22[36] + 1 >= v37;
    if (v38)
    {
      UInt32TrieCreate(2 * v37, (a1 + 1208));
      v39 = v45;
      v45[36] = v22[36];
      *v45 = *v22;
      v46 = *v33->i8;
      *(v45 + 20) = *(v22 + 20);
      *(v45 + 4) = v46;
      memcpy(v45 + 40, v22 + 40, 8 * v22[36]);
      free(v22);
      if (v29)
      {
        *&v29[8 * v8 + 40] = v39;
      }
    }

    else
    {
      v39 = v22;
    }

    v47 = 0;
    v48 = *v31;
    v49 = v39[36];
    v50 = (v39 + 4);
    *&v39[((v48 >> 3) & 0x1C) + 4] |= 1 << v48;
    v51 = v48 >> 6;
    if ((v48 >> 6) > 1)
    {
      if (v51 != 2)
      {
        v53 = vcnt_s8(*(v39 + 20));
        v53.i16[0] = vaddlv_u8(v53);
        v47 = v53.i32[0];
      }

      v54 = vcnt_s8(*(v39 + 12));
      v54.i16[0] = vaddlv_u8(v54);
      v47 += v54.i32[0];
LABEL_62:
      v55 = vcnt_s8(*v50);
      v55.i16[0] = vaddlv_u8(v55);
      LODWORD(v52) = v47 + v55.i32[0];
      goto LABEL_63;
    }

    v52 = v48 >> 6;
    if (v51)
    {
      goto LABEL_62;
    }

LABEL_63:
    v56 = vcnt_s8((*&v50[v51] & ~(-1 << v48)));
    v56.i16[0] = vaddlv_u8(v56);
    v8 = (v52 + v56.i32[0]);
    if (v8 < v49)
    {
      v57 = &v39[8 * v49 + 40];
      v58 = v49;
      v59 = v57;
      do
      {
        --v58;
        v60 = *(v59 - 1);
        v59 -= 8;
        *v57 = v60;
        v57 = v59;
      }

      while (v58 > v8);
    }

    v61 = v49 + 1;
    v39[36] = v61;
    if (v39[37] < v61)
    {
      v65 = __si_assert_copy_extra(0);
      v103 = v39[37];
      v104 = v39[36];
      __message_assert("%s:%u: failed assertion '%s' %s size: %d count:%d");
LABEL_74:
      free(v65);
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

    if (v26 == 1)
    {
      LODWORD(v62) = v105;
      *&v39[8 * v8 + 40] = (2 * v105) | 1;
      goto LABEL_79;
    }

    UInt32TrieCreate(1, (a1 + 1208));
    *&v39[8 * v8 + 40] = v44;
    v29 = v39;
    if (v44)
    {
LABEL_69:
      v62 = v44 >> 1;
      if (v26 == 1)
      {
        goto LABEL_79;
      }

      UInt32TrieCreate(1, (a1 + 1208));
      v22 = v63;
      *v63 = v62;
      *&v29[8 * v8 + 40] = v63;
      goto LABEL_71;
    }

LABEL_52:
    v22 = v44;
    if (v26 == 1)
    {
      break;
    }

LABEL_71:
    LOBYTE(v26) = v26 - 1;
    if (v31++ == v30)
    {
      goto LABEL_73;
    }
  }

  LODWORD(v62) = *v44;
  if (!*v44)
  {
    LODWORD(v62) = v105;
    *v44 = v105;
  }

LABEL_79:
  v24 = v62 - 1;
  LODWORD(v6) = v107;
  v8 = v108;
  *(a1 + 1204) = v107;
  *(a1 + 1200) = v62 - 1;
  LODWORD(v10) = v110;
  v25 = v112;
  v21 = v106;
LABEL_80:
  v67 = v25 - v21;
  v68 = (v25 - v21) >> 6;
  if (v24 != *(a1 + 1184))
  {
    v74 = *(*(a1 + 40) + 8 * v24);
    v75 = 12;
    if ((*v74 & 3) == 0)
    {
      v75 = 8;
    }

    v76 = v74 + v74[1] + v75 + (v68 >> 3);
    v76[1] |= 1 << ((v67 >> 6) & 7);
    if (*(a1 + 1288) == 1)
    {
      v77 = *(a1 + 1272);
      v78 = v77 ? automaton_state_score(*v77, v77[1]) : 0.0;
      v90 = *(*(a1 + 40) + 8 * v24);
      if ((*v90 & 3) != 0)
      {
        v91 = *(v90 + 8);
        if (v91 != 0.0 && (v78 == 0.0 || v91 < v78))
        {
          *(v90 + 8) = v78;
        }
      }
    }

    goto LABEL_107;
  }

  if (v24 != *(a1 + 1180))
  {
    goto LABEL_82;
  }

  realloc = query_realloc(*(a1 + 40), 16 * v24);
  if (!realloc)
  {
    v100 = __si_assert_copy_extra(0);
    v101 = v100;
    v102 = "";
    if (v100)
    {
      v102 = v100;
    }

    __message_assert("%s:%u: failed assertion '%s' %s grow buckets error, bucket count:%d", "FindTermIDs.c", 445, "buckets", v102, *(a1 + 1184));
    free(v101);
    if (!__valid_fs(-1))
    {
LABEL_131:
      v98 = 3072;
LABEL_132:
      *v98 = -559038737;
      abort();
    }

LABEL_124:
    v98 = 2989;
    goto LABEL_132;
  }

  *(a1 + 40) = realloc;
  *(a1 + 1180) *= 2;
LABEL_82:
  v69 = *(a1 + 1152) >> 3;
  v70 = v69 + 9;
  if (*(a1 + 1288) == 1)
  {
    v71 = *(a1 + 1272);
    v72 = v71 != 0;
    v73 = v69 + 13;
    if (v71)
    {
      v70 = v73;
    }
  }

  else
  {
    v72 = 0;
  }

  if (v111 | v8)
  {
    v79 = v8 + v10;
  }

  else
  {
    v79 = *(a1 + 1140);
  }

  v80 = v70 + v79 + 1;
  *(*(a1 + 1208) + 8) = (*(*(a1 + 1208) + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = *(a1 + 1208);
  v82 = *(v81 + 8);
  if (v82 + v80 + 8 >= *(v81 + 16))
  {
    v82 = slab_new((a1 + 1208), v80, 0xF8u);
  }

  else
  {
    *(v81 + 8) = v82 + v80;
  }

  bzero(v82, v80);
  v83 = 8 * v6;
  *v82 = 8 * v6;
  if (v72)
  {
    v83 |= 1u;
    *v82 = v83;
    *(v82 + 2) = automaton_state_score(**(a1 + 1272), *(*(a1 + 1272) + 8));
  }

  v84 = 12;
  if ((v83 & 3) == 0)
  {
    v84 = 8;
  }

  v85 = v82 + v84;
  if (v111 | v8)
  {
    memcpy(v82 + v84, v111, v110);
    memcpy(&v85[v110], __src, v8);
    v86 = v79;
  }

  else
  {
    v86 = *(a1 + 1140);
    memcpy(v82 + v84, (a1 + 88), v86);
    v79 = v86;
  }

  v85[v86] = 0;
  *(v82 + 1) = v79;
  v87 = 12;
  if ((*v82 & 3) == 0)
  {
    v87 = 8;
  }

  *(v82 + v86 + v87 + (v68 >> 3) + 1) |= 1 << ((v67 >> 6) & 7);
  v88 = *(a1 + 1184);
  *(a1 + 1184) = v88 + 1;
  *(*(a1 + 40) + 8 * v88) = v82;
LABEL_107:
  v89 = *MEMORY[0x1E69E9840];
}

uint64_t matche(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, unsigned __int8 **a5)
{
  v5 = a2;
  v6 = a1;
  v216 = 0;
  v215 = 0;
  v7 = *a1;
  v211 = a3;
  if (!*a1)
  {
    LOWORD(v21) = 0;
    LOWORD(v20) = 0;
    v19 = 0;
    v196 = 0;
    v23 = *a2;
    v24 = a3 & 2;
    v25 = 1;
    v22 = a2;
LABEL_465:
    if (v24 && v23 >= 0xC0)
    {
      v131 = a4;
      v132 = v19;
      v133 = v20;
      while (1)
      {
        v134 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v23 >> 4];
        __key[0] = v133;
        if (utf8_decodestr(v22, v134, __key, &v215, 2, &v216, 0))
        {
          break;
        }

        v133 = __key[0];
        v22 += v134;
        if (__key[0] < 0x300u)
        {
          goto LABEL_476;
        }

        v135 = __CFUniCharCombiningBitmap[__key[0] >> 8];
        if (v135 != 255 && (!__CFUniCharCombiningBitmap[__key[0] >> 8] || ((__CFUniCharCombiningBitmap[32 * v135 + 224 + (LOBYTE(__key[0]) >> 3)] >> (__key[0] & 7)) & 1) == 0))
        {
          goto LABEL_476;
        }

        v23 = *v22;
      }

      v134 = 0;
      v196 = 1;
LABEL_476:
      v22 -= v134;
      v23 = *v22;
      v19 = v132;
      a4 = v131;
    }

    goto LABEL_477;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v196 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOWORD(v20) = 0;
  LOWORD(v21) = 0;
  v190 = a3 & 2;
  v192 = v6;
  v22 = v5;
  v194 = a4;
  v195 = v5;
  while (2)
  {
    v27 = *v22;
    if (!*v22)
    {
      goto LABEL_454;
    }

    v209 = v16;
    v28 = v7 - 34;
    v29 = (v7 - 34) > 0x3Eu;
    if (*(v5 + v11))
    {
      ++v11;
    }

    else
    {
      if (v10 > 2 * v11)
      {
        return 0;
      }

      ++v10;
    }

    if (v7 != 92)
    {
      if (v7 == 42)
      {
        while (v7 == 42)
        {
          v30 = *++v6;
          v7 = v30;
        }

        if (!v7)
        {
          if (v27 < 0xC0)
          {
            v121 = v19;
            if (!a4)
            {
              return 1;
            }
          }

          else
          {
            v120 = a4;
            v121 = v19;
            v122 = a3;
            v123 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v27 >> 4];
            __key[0] = v20;
            v124 = utf8_decodestr(v22, v123, __key, &v215, 2, &v216, 0);
            LOWORD(v20) = __key[0];
            if (v124)
            {
              v196 = 1;
              LOBYTE(a3) = v122;
              v19 = v121;
              a4 = v120;
              goto LABEL_454;
            }

            if (__key[0] - 12441 < 2)
            {
              return 0;
            }

            if (v190)
            {
              v126 = 1;
            }

            else
            {
              v126 = __key[0] - 768 >= 0x70;
            }

            v127 = !v126;
            result = v127 ^ 1u;
            if (!v126)
            {
              return result;
            }

            a4 = v120;
            if (!v120)
            {
              return result;
            }
          }

          if (v121)
          {
            *a4 = &v121[-v5];
            v125 = (v22 - v121);
            goto LABEL_577;
          }

          *a5 = 0;
          *a4 = 0;
          return 1;
        }

        if (v7 == 92)
        {
          v26 = (v6 + 1);
          if (v6[1] == v27)
          {
            v7 = *v22;
LABEL_25:
            v6 = v18;
            goto LABEL_26;
          }

          v209 = 0;
          v7 = 92;
        }

        else
        {
          v209 = 0;
        }

        v17 = v6;
      }

      v26 = v6;
      goto LABEL_25;
    }

    v26 = (v6 + 1);
    v7 = v6[1];
    ++v15;
    if (!v7)
    {
      v6 = v18;
      goto LABEL_157;
    }

LABEL_26:
    if (v7 >= 0xC0u)
    {
      if ((v7 + 29) < 0xCu)
      {
LABEL_28:
        v13 = 1;
        goto LABEL_44;
      }

      if (v7 == 239)
      {
        if (v26[1] < 0xACu)
        {
          goto LABEL_28;
        }
      }

      else if (v7 == 226 && v26[1] > 0xB9u)
      {
        goto LABEL_28;
      }

      v13 = 0;
LABEL_44:
      v8 = v26;
      if (v27 < 0xC0)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if ((v7 & 0x80u) == 0)
    {
      v13 = 0;
      v8 = 0;
    }

    if (v27 < 0xC0)
    {
LABEL_45:
      if ((v27 & 0x80u) == 0)
      {
        v12 = 0;
        v9 = 0;
      }

      if (v27 == v7)
      {
LABEL_48:
        LOWORD(v21) = 0;
        LOWORD(v20) = 0;
        v31 = 0;
        v14 = 0;
        goto LABEL_169;
      }

      goto LABEL_52;
    }

LABEL_32:
    if ((v27 + 29) < 0xCu)
    {
LABEL_33:
      v12 = 1;
      goto LABEL_51;
    }

    if (v27 == 239)
    {
      if (v22[1] < 0xACu)
      {
        goto LABEL_33;
      }
    }

    else if (v27 == 226 && v22[1] > 0xB9u)
    {
      goto LABEL_33;
    }

    v12 = 0;
LABEL_51:
    v9 = v22;
    if (v27 == v7)
    {
      goto LABEL_48;
    }

LABEL_52:
    v204 = v15;
    v206 = v19;
    v208 = v17;
    v197 = v10;
    v198 = v11;
    v21 = 0;
    v20 = 0u;
    v32 = 0;
    v14 = 0;
    v33 = ((v13 | v12) == 0) & a3;
    v193 = v26 + 1;
    v34 = (v29 | (0x3FFFFFFFFFFFFFDEuLL >> v28)) & ((v8 | v9) == 0);
    v200 = v12;
    v202 = v13;
    if (v13)
    {
      v34 = 1;
    }

    v75 = v12 == 0;
    v35 = (v8 | v9) == 0;
    if (!v75)
    {
      v34 = 1;
    }

    v213 = v34;
    v212 = v8;
    while (1)
    {
      if (!v33)
      {
        goto LABEL_117;
      }

      if (v35)
      {
        v37 = *v22;
        if ((v37 & 0x8000000000000000) == 0)
        {
          v38 = *v26;
          if ((v38 & 0x8000000000000000) == 0 && tolower_map[v38] == tolower_map[v37])
          {
            goto LABEL_167;
          }
        }

        if (v26 == v208 && v37 >= 2)
        {
          v39 = v22 + 1;
          while (1)
          {
            v40 = *v39;
            if (v40 < 0)
            {
              break;
            }

            if (v40 < 2)
            {
              v13 = 0;
              v12 = 0;
              v9 = 0;
              v8 = 0;
              a4 = v194;
              v5 = v195;
              v19 = v206;
              v17 = v208;
              a3 = v211;
              v10 = v197;
              v11 = v198;
              v15 = v204;
              goto LABEL_157;
            }

            ++v39;
            if (tolower_map[*v26] == tolower_map[v40])
            {
              v31 = v32;
              v22 = v39 - 1;
LABEL_168:
              a4 = v194;
              v5 = v195;
              v19 = v206;
              v17 = v208;
              a3 = v211;
              v10 = v197;
              v11 = v198;
              v15 = v204;
              v12 = v200;
              v13 = v202;
              goto LABEL_169;
            }
          }

          v22 = v39;
        }

        goto LABEL_117;
      }

      if (v21)
      {
        if (!v20)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v8)
        {
          v32 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v8 >> 4];
          __key[0] = 0;
          v44 = utf8_decodestr(v8, v32, __key, &v215, 2, &v216, 0);
          v21 = __key[0];
          if (v44)
          {
LABEL_452:
            v196 = 1;
            goto LABEL_453;
          }

          v8 = v212;
          if (v20)
          {
            goto LABEL_84;
          }

LABEL_73:
          if (v9)
          {
            v41 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v9 >> 4];
            __key[0] = 0;
            v42 = v41;
            v43 = utf8_decodestr(v9, v41, __key, &v215, 2, &v216, 0);
            v20 = __key[0];
            if (v43)
            {
              goto LABEL_452;
            }

            v14 = v42;
            v8 = v212;
          }

          else
          {
            v20 = *v22;
          }

          goto LABEL_84;
        }

        v21 = *v26;
        if (!v20)
        {
          goto LABEL_73;
        }
      }

LABEL_84:
      if (v20 > 0x7Fu)
      {
        if ((v20 + 223) < 0x3Au || v20 < 0x587u || (v46 = v20, (v20 - 7680) <= 0x6E9u))
        {
          *__key = v20;
          v47 = bsearch(__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
          if (v47)
          {
            v46 = v47[1];
          }

          else
          {
            v46 = v20;
          }

          v8 = v212;
        }
      }

      else
      {
        v45 = v20 & 0x7F;
        if ((v20 - 97) > 0x19u)
        {
          v46 = tolower_map[v45];
        }

        else
        {
          v46 = toupper_map[v45];
        }
      }

      if (v21 == v46)
      {
        goto LABEL_167;
      }

      if (v21 > 0x7Fu)
      {
        if ((v21 + 223) < 0x3Au || v21 < 0x587u || (v49 = v21, (v21 - 7680) <= 0x6E9u))
        {
          *__key = v21;
          v50 = bsearch(__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
          if (v50)
          {
            v49 = v50[1];
          }

          else
          {
            v49 = v21;
          }

          v8 = v212;
        }
      }

      else
      {
        v48 = v21 & 0x7F;
        v49 = (v21 - 97) > 0x19u ? tolower_map[v48] : toupper_map[v48];
      }

      if (v49 == v46 || v20 == v49)
      {
LABEL_167:
        v31 = v32;
        goto LABEL_168;
      }

      if (v21 == 223)
      {
        if (v20 == 115)
        {
          if (v22[1] == 115)
          {
            v31 = v32;
            ++v22;
            LOWORD(v20) = 115;
            LOWORD(v21) = 223;
            goto LABEL_168;
          }

          v20 = 0x73u;
        }

        v21 = 223;
      }

      else if (v21 == 115 && v20 == 223)
      {
        v20 = 0xDFu;
        v21 = 115;
        if (*v193 == 115)
        {
          v31 = v32;
          ++v26;
          goto LABEL_168;
        }
      }

LABEL_117:
      if (v213)
      {
        v17 = v208;
        if (v208)
        {
          v16 = 0;
          v19 = v206;
          v58 = &v208[v204] - v26;
          if (v26 <= v208)
          {
            v58 = 0;
          }

          v22 += v58;
          v26 = v208;
          v15 = 0;
          a4 = v194;
          v5 = v195;
          a3 = v211;
          v10 = v197;
          v11 = v198;
          v12 = v200;
          v13 = v202;
          goto LABEL_187;
        }

        a4 = v194;
        v5 = v195;
        v15 = v204;
        v19 = v206;
        if (v194)
        {
          v19 = 0;
        }

        a3 = v211;
        v10 = v197;
        v11 = v198;
        v12 = v200;
        v13 = v202;
        if ((v211 & 4) != 0)
        {
          goto LABEL_208;
        }

LABEL_461:
        v129 = *v26;
        v6 = v26;
        goto LABEL_462;
      }

      if (v21)
      {
        v51 = v21;
        if (v20)
        {
          goto LABEL_130;
        }
      }

      else if (v8)
      {
        v32 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v8 >> 4];
        __key[0] = 0;
        v52 = utf8_decodestr(v8, v32, __key, &v215, 2, &v216, 0);
        v51 = __key[0];
        if (v52)
        {
          goto LABEL_439;
        }

        v8 = v212;
        if (v20)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v51 = *v26;
        if (v20)
        {
          goto LABEL_130;
        }
      }

      if (v9)
      {
        v53 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v9 >> 4];
        __key[0] = 0;
        v54 = utf8_decodestr(v9, v53, __key, &v215, 2, &v216, 0);
        v20 = __key[0];
        if (!v54)
        {
          v14 = v53;
          v8 = v212;
          goto LABEL_130;
        }

LABEL_439:
        v196 = 1;
        LOWORD(v21) = v51;
LABEL_453:
        v6 = v26;
        a4 = v194;
        v5 = v195;
        v19 = v206;
        LOBYTE(a3) = v211;
        goto LABEL_454;
      }

      v20 = *v22;
LABEL_130:
      v55 = v51 - 65281;
      v56 = v51 == 12288 ? 32 : v51;
      v21 = v55 >= 0x5E ? v56 : v51 - 65248;
      if (v20 - 65281 > 0x5D)
      {
        break;
      }

      v36 = v20 - 65248;
LABEL_58:
      v20 = v36;
      if (v21 == v36)
      {
        v31 = v32;
        LOWORD(v20) = v21;
        goto LABEL_168;
      }
    }

    if (v20 == 12288)
    {
      v36 = 32;
    }

    else
    {
      v36 = v20;
    }

    if (v51 == 12288 || v55 < 0x5E || v20 == 12288)
    {
      goto LABEL_58;
    }

    v31 = v32;
    if ((v51 | 0x20) == 0xF8)
    {
      a4 = v194;
      v5 = v195;
      v19 = v206;
      v17 = v208;
      a3 = v211;
      v10 = v197;
      v11 = v198;
      v15 = v204;
      v12 = v200;
      v13 = v202;
      if ((v20 & 0xFFFFFFDF) == 0x4F)
      {
        if (v211)
        {
          if (v56 == 216)
          {
            v21 = 248;
          }

          else
          {
            v21 = v56;
          }

          v20 = tolower_map[v20];
        }

        v57 = v22[1];
        if (v57 == 101 || v57 == 204 && v22[2] == 136)
        {
          if (v57 == 101)
          {
            ++v22;
          }

          goto LABEL_169;
        }
      }
    }

    else
    {
      a4 = v194;
      v5 = v195;
      v19 = v206;
      v17 = v208;
      a3 = v211;
      v10 = v197;
      v11 = v198;
      v15 = v204;
      v12 = v200;
      v13 = v202;
    }

    if ((v20 | 0x20) == 0xF8 && (v21 & 0xFFFFFFDF) == 0x4F)
    {
      if (a3)
      {
        if (v20 == 216)
        {
          v20 = 248;
        }

        v21 = tolower_map[v21];
      }

      v8 = v212;
      v88 = *v193;
      if (v88 == 101 || v88 == 204 && v26[2] == 136)
      {
        if (v88 == 101)
        {
          ++v26;
        }

        goto LABEL_169;
      }
    }

    v89 = v22 + 1;
    v90 = v22 + 2;
    v91 = &byte_1C2BFAF04;
    v92 = 6;
LABEL_265:
    v93 = *(v91 - 2);
    if (v21 == v93)
    {
      v94 = *(v91 - 2);
      if (a3)
      {
        if (v20 == v94 || tolower_map[v20] == tolower_map[v94])
        {
          v95 = *v89;
          if (v95 == *(v91 - 1) || tolower_map[*v89] == tolower_map[*(v91 - 1)])
          {
LABEL_304:
            ++v22;
            goto LABEL_343;
          }

          if (v95 == 204 && *v91 && *v90 == 136)
          {
            goto LABEL_342;
          }
        }

        if (v20 == v21)
        {
LABEL_283:
          if (v21 == v94 || tolower_map[v21] == tolower_map[v94])
          {
            v97 = *v193;
            if (v97 == *(v91 - 1) || tolower_map[*v193] == tolower_map[*(v91 - 1)])
            {
LABEL_303:
              ++v26;
              goto LABEL_343;
            }

LABEL_290:
            if (v97 == 204 && *v91 && v26[2] == 136)
            {
              v26 += 2;
              goto LABEL_343;
            }
          }
        }

        goto LABEL_264;
      }

      if (v20 == v94)
      {
        v96 = *v89;
        if (v96 == *(v91 - 1))
        {
          goto LABEL_304;
        }

        if (v96 == 204 && *v91 && *v90 == 136)
        {
LABEL_342:
          v22 += 2;
LABEL_343:
          v8 = v212;
          v19 = v206;
LABEL_169:
          if (a4)
          {
            if (!v19)
            {
              v19 = v22;
              if (*v22 < 0)
              {
                v59 = *v22;
                v60 = v59 >> 4;
                v61 = utf8_byte_length(unsigned char)::utf8_len_table[v59 >> 4];
                v62 = v59 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v61];
                if ((~v60 & 0xC) != 0)
                {
                  goto LABEL_179;
                }

                v61 = v61 <= 2 ? 2 : v61;
                  ;
                }

                if (v62 < 0x10000)
                {
LABEL_179:
                  if ((v62 - 12441) >= 4 && (v62 - 65438) >= 2)
                  {
                    v19 = v22;
                    if (v62 < 0x300u)
                    {
                      goto LABEL_184;
                    }

                    v87 = __CFUniCharCombiningBitmap[BYTE1(v62)];
                    if (v87 != 255)
                    {
                      v19 = v22;
                      if (!__CFUniCharCombiningBitmap[BYTE1(v62)])
                      {
                        goto LABEL_184;
                      }

                      v19 = v22;
                      if (((__CFUniCharCombiningBitmap[32 * v87 + 224 + (v62 >> 3)] >> (v62 & 7)) & 1) == 0)
                      {
                        goto LABEL_184;
                      }
                    }
                  }

LABEL_183:
                  v19 = 0;
                  goto LABEL_184;
                }

                v67 = v62 - 917760;
                v68 = v62 - 127995;
                v69 = v67 >= 0xF0 && v68 > 4;
                v19 = v22;
                if (!v69)
                {
                  goto LABEL_183;
                }
              }
            }
          }

LABEL_184:
          if (v31)
          {
            v16 = &v8[v31] - v26;
          }

          else
          {
            v16 = 1;
          }

LABEL_187:
          v65 = &v9[v14] - v22;
          if (v14)
          {
            v9 = 0;
          }

          else
          {
            v65 = 1;
          }

          if (v16 && v17 && !v26[v16])
          {
            v66 = v22[v65];
            if ((a3 & 4) != 0)
            {
              if ((v66 & 0x80) == 0 && separator_map[v66])
              {
                goto LABEL_5;
              }
            }

            else if (v66 <= 1)
            {
              goto LABEL_5;
            }

            v16 = 0;
            v15 = 0;
            v26 = v17;
          }

LABEL_5:
          v18 = v6;
          v6 = &v26[v16];
          v22 += v65;
          v7 = v26[v16];
          if (!v7)
          {
            goto LABEL_454;
          }

          continue;
        }
      }
    }

    break;
  }

  if (v20 == v93)
  {
    LODWORD(v94) = *(v91 - 2);
    if (a3)
    {
      goto LABEL_283;
    }

    if (v21 == v94)
    {
      v97 = *v193;
      if (v97 == *(v91 - 1))
      {
        goto LABEL_303;
      }

      goto LABEL_290;
    }
  }

LABEL_264:
  v91 += 6;
  if (--v92)
  {
    goto LABEL_265;
  }

  v19 = v206;
  if (!v190)
  {
    v13 = 0;
    v12 = 0;
    v8 = v212;
    goto LABEL_157;
  }

  v8 = v212;
  if (v21 != 778)
  {
    if (v20 == 778)
    {
      v99 = v21 & 0xFFFFFFDF;
      LOWORD(v20) = 778;
      goto LABEL_337;
    }

    if (v21 - 8220 <= 0x17 && ((1 << (v21 - 28)) & 0x80000B) != 0)
    {
      if (v20 == 34)
      {
        LOWORD(v20) = 34;
        goto LABEL_169;
      }

      goto LABEL_372;
    }

    v106 = v21 == 8219 || v21 >> 1 == 4108 || v21 == 8242 || v21 == 96;
    if (v20 == 39 && v106)
    {
      LOWORD(v20) = 39;
      goto LABEL_169;
    }

    if (v20 - 8220 <= 0x17 && ((1 << (v20 - 28)) & 0x80000B) != 0)
    {
      if (v21 == 34)
      {
        LOWORD(v21) = 34;
        goto LABEL_169;
      }

      goto LABEL_372;
    }

    v110 = v20 == 8219 || v20 >> 1 == 4108 || v20 == 8242 || v20 == 96;
    if (v21 == 39 && v110)
    {
      LOWORD(v21) = 39;
LABEL_388:
      a4 = v194;
      v5 = v195;
      v19 = v206;
      v17 = v208;
      a3 = v211;
      v10 = v197;
      v11 = v198;
      v15 = v204;
      v12 = v200;
      v13 = v202;
      v8 = v212;
      goto LABEL_169;
    }

    if (v21 == 776 && v22 > v195)
    {
      v111 = *(v22 - 1);
      v112 = tolower_map[v111];
      if ((v112 - 97) <= 0x14 && ((1 << (v112 - 97)) & 0x104001) != 0)
      {
        v113 = tolower_map[*v22];
        if (v113 == 101)
        {
          if ((v211 & 1) != 0 || *(v26 - 1) == v111)
          {
            LOWORD(v21) = 776;
            goto LABEL_388;
          }
        }

        else if (v112 == 97 && v113 == 97)
        {
          v13 = 0;
          v12 = 0;
          LOWORD(v21) = 776;
          a4 = v194;
          v5 = v195;
          v19 = v206;
          v17 = v208;
          a3 = v211;
          v10 = v197;
          v11 = v198;
          v15 = v204;
          v8 = v212;
          goto LABEL_157;
        }
      }
    }

    else
    {
      if (v26 > v192 && v20 == 776)
      {
        v114 = *(v26 - 1);
        v115 = tolower_map[v114];
        if ((v115 - 97) <= 0x14 && ((1 << (v115 - 97)) & 0x104001) != 0)
        {
          v116 = tolower_map[*v26];
          if (v116 == 101)
          {
            if ((v211 & 1) != 0 || v114 == *(v22 - 1))
            {
              LOWORD(v20) = 776;
              a4 = v194;
              v5 = v195;
              v19 = v206;
              v17 = v208;
              a3 = v211;
              v10 = v197;
              v11 = v198;
              v15 = v204;
              v12 = v200;
              v13 = v202;
              v8 = v212;
              goto LABEL_169;
            }
          }

          else if (v115 == 97 && v116 == 97)
          {
            v13 = 0;
            v12 = 0;
            LOWORD(v20) = 776;
LABEL_430:
            a4 = v194;
            v5 = v195;
            v19 = v206;
            v17 = v208;
            a3 = v211;
            v10 = v197;
            v11 = v198;
            v15 = v204;
            v8 = v212;
            goto LABEL_157;
          }
        }
      }

      if (v21 < 0x80)
      {
        goto LABEL_417;
      }
    }

    if (unicode_combinable(v21))
    {
      if (v208)
      {
        v117 = v31;
      }

      else
      {
        v117 = 0;
      }

      v204 += v117;
      v210 = &v212[v31] - v26;
      v212 = 0;
LABEL_418:
      if (v20 >= 0x80 && unicode_combinable(v20))
      {
        v118 = &v9[v14];
        v9 = 0;
        v65 = v118 - v22;
      }

      else
      {
        v65 = 0;
      }

      if (v210)
      {
        v13 = 0;
        v12 = 0;
        a4 = v194;
        v5 = v195;
        v19 = v206;
        v17 = v208;
        a3 = v211;
        v10 = v197;
        v11 = v198;
        v15 = v204;
        v8 = v212;
        v16 = v210;
        goto LABEL_5;
      }

      if (v65)
      {
        if (v204)
        {
          v16 = 0;
          v13 = 0;
          v12 = 0;
          v119 = v26 - 1 == v6;
          if (v26 - 1 == v6)
          {
            --v26;
          }

          v15 = v204 - v119;
        }

        else
        {
          v16 = 0;
          v15 = 0;
          v13 = 0;
          v12 = 0;
        }

        a4 = v194;
        v5 = v195;
        v19 = v206;
        v17 = v208;
        a3 = v211;
        v10 = v197;
        v11 = v198;
        v8 = v212;
        goto LABEL_5;
      }

      v209 = 0;
      v13 = 0;
      v12 = 0;
      goto LABEL_430;
    }

LABEL_417:
    v210 = 0;
    goto LABEL_418;
  }

  v99 = v20 & 0xFFFFFFDF;
  LOWORD(v21) = 778;
LABEL_337:
  if (v99 == 65)
  {
    goto LABEL_169;
  }

LABEL_372:
  v13 = 0;
  v12 = 0;
LABEL_157:
  if (a4)
  {
    v19 = 0;
  }

  if ((a3 & 4) == 0)
  {
    if (v17)
    {
      v15 = 0;
      v26 = v17;
      v16 = v209;
      goto LABEL_187;
    }

    goto LABEL_461;
  }

LABEL_208:
  if ((a3 & 8) == 0)
  {
    v70 = *v22;
    if (*v192 - 48 <= 9 && v70 - 48 <= 9)
    {
      v71 = v22;
      do
      {
        v73 = *++v71;
        v72 = v73;
      }

      while (v73 - 48 < 0xA);
      v74 = 0;
      goto LABEL_315;
    }

    v205 = v15;
    v201 = v12;
    v203 = v13;
    v214 = v26;
    v207 = v19;
    if ((v70 & 0x80) == 0)
    {
      v74 = 0;
      if (v70 < 2 || separator_map[*v22])
      {
        v71 = v22;
        goto LABEL_314;
      }

      v14 = 1;
      LOWORD(v20) = *v22;
LABEL_218:
      v71 = v22;
      while (1)
      {
        v71 += v14;
        v70 = *v71;
        if (*v71 < 0)
        {
          if (v70 != 239)
          {
            if (v70 != 227)
            {
              goto LABEL_311;
            }

LABEL_299:
            if (v71[1] == 128 && v71[2] == 128)
            {
LABEL_301:
              v74 = 0;
              goto LABEL_314;
            }

            v98 = 0xEu;
LABEL_312:
            v71 += utf8_byte_length_noerror(unsigned char)::utf8_len_table[v98];
LABEL_313:
            v74 = 1;
LABEL_314:
            v72 = *v71;
LABEL_315:
            v16 = 0;
            if (v72 < 2 || (v74 & 1) != 0)
            {
              v65 = 0;
            }

            else
            {
              if (v72 == 227)
              {
                v16 = 0;
                v65 = 0;
                v8 = 0;
                v22 = v71 + 3;
                goto LABEL_319;
              }

              v100 = *v192;
              if (v72 == v100 && v100 != 92)
              {
LABEL_324:
                v101 = v26 - (v15 + v192);
                v16 = 0;
                v102 = &v71[-(v101 & ~(v101 >> 31)) + 1];
                v69 = v101 < 2;
                v65 = 0;
                v8 = 0;
                if (v69)
                {
                  v22 = v71;
                }

                else
                {
                  v22 = v102;
                }

                v9 = 0;
                v26 = v192;
                goto LABEL_5;
              }

              if (v100 == 92)
              {
                if (v72 == v192[1])
                {
                  goto LABEL_324;
                }

                v16 = 0;
                v8 = 0;
                v65 = 1;
                v22 = v71;
LABEL_319:
                v9 = 0;
                v26 = v192;
                goto LABEL_5;
              }

              v16 = 0;
              if (v71 != v22 && v100 < 0)
              {
                goto LABEL_324;
              }

              v65 = 1;
            }

            v8 = 0;
            v22 = v71;
            v9 = 0;
            v26 = v192;
            goto LABEL_5;
          }

          v76 = v71[1];
          if (v76 != 188 && (v76 != 189 || v71[2] > 0x9Fu))
          {
            v70 = 239;
            v19 = v207;
            goto LABEL_311;
          }

          v77 = v5;
          v78 = v17;
          v79 = a4;
          v80 = v11;
          v81 = v10;
          __key[0] = v20;
          v82 = utf8_decodestr(v71, 3uLL, __key, &v215, 2, &v216, 0);
          LOWORD(v20) = __key[0];
          if (v82)
          {
            v74 = 0;
            v196 = 1;
            v14 = 3;
            a3 = v211;
            v10 = v81;
            v11 = v80;
            a4 = v79;
            v17 = v78;
            v5 = v77;
            v15 = v205;
            v19 = v207;
            goto LABEL_346;
          }

          v20 = __key[0] - 65248;
          if (((LOBYTE(__key[0]) + 32) & 0x80) != 0)
          {
            v14 = 3;
            a3 = v211;
            v10 = v81;
            v11 = v80;
            a4 = v79;
            v17 = v78;
            v5 = v77;
            v15 = v205;
            v19 = v207;
          }

          else
          {
            v14 = 3;
            a3 = v211;
            v10 = v81;
            v11 = v80;
            v19 = v207;
            if (separator_map[(LOBYTE(__key[0]) + 32) & 0x7F])
            {
              v74 = 0;
              a4 = v79;
              v17 = v78;
              v5 = v77;
              goto LABEL_345;
            }

            a4 = v79;
            v17 = v78;
            v5 = v77;
            v15 = v205;
          }

          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
        }

        else
        {
          v75 = v70 >= 2 && separator_map[*v71] == 0;
          if (!v75)
          {
            goto LABEL_301;
          }

          v14 = 1;
          v20 = *v71;
        }

        if (v20 - 123 <= 0xFFFFFFE5)
        {
          goto LABEL_313;
        }
      }
    }

    if (v70 == 227)
    {
      v71 = v22;
      goto LABEL_299;
    }

    if (v70 == 239)
    {
      v83 = a4;
      v199 = v11;
      v26 = v10;
      v84 = a3;
      v85 = v22[1];
      if (v85 == 188 || v85 == 189 && v22[2] <= 0x9Fu)
      {
        __key[0] = v20;
        v86 = utf8_decodestr(v22, 3uLL, __key, &v215, 2, &v216, 0);
        LOWORD(v20) = __key[0];
        if (v86)
        {
          v74 = 0;
          v196 = 1;
          v14 = 3;
          v71 = v22;
          a3 = v84;
          v10 = v26;
          v11 = v199;
          v15 = v205;
          v19 = v207;
          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
          a4 = v83;
          goto LABEL_314;
        }

        LOWORD(v20) = __key[0] + 288;
        v19 = v207;
        if (((__key[0] + 288) & 0x80) != 0)
        {
          v14 = 3;
          a3 = v84;
          v10 = v26;
          v11 = v199;
          v15 = v205;
          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
          a4 = v83;
        }

        else
        {
          v14 = 3;
          a3 = v84;
          a4 = v83;
          if (separator_map[v20 & 0x7F])
          {
            v74 = 0;
            v71 = v22;
            v10 = v26;
            v11 = v199;
LABEL_345:
            v15 = v205;
LABEL_346:
            v12 = v201;
            v13 = v203;
            LODWORD(v26) = v214;
            goto LABEL_314;
          }

          v10 = v26;
          v11 = v199;
          v15 = v205;
          v12 = v201;
          v13 = v203;
          LODWORD(v26) = v214;
        }

        goto LABEL_218;
      }

      v70 = 239;
      v71 = v22;
      v12 = v201;
      LODWORD(v26) = v214;
    }

    else
    {
      v71 = v22;
    }

LABEL_311:
    v98 = v70 >> 4;
    goto LABEL_312;
  }

  v6 = v26;
LABEL_454:
  v129 = *v6;
  if (v22 > v5 && (a3 & 4) != 0 && !*v6)
  {
    v130 = *(v22 - 1);
    v25 = 1;
    v24 = v190;
    if ((v130 & 0x8000000000000000) == 0 && *(v22 - 1) - 58 <= 0xFFFFFFF5)
    {
      v25 = separator_map[v130] == 0;
    }

    v23 = *v22;
    goto LABEL_465;
  }

LABEL_462:
  v24 = v190;
  v23 = *v22;
  v25 = 1;
  if (!v129)
  {
    goto LABEL_465;
  }

  if ((v23 & 0x80) != 0)
  {
    goto LABEL_496;
  }

LABEL_477:
  if (v23 >= 2 && ((v23 & 0x80) != 0 || (v211 & 4) == 0 || !separator_map[v23]) || (v211 & 2) == 0 || (v136 = *v6, v136 < 0xC0))
  {
LABEL_496:
    if (!v196)
    {
      goto LABEL_514;
    }

    goto LABEL_497;
  }

  v137 = v19;
  v138 = 0;
  v139 = v21;
  while (1)
  {
    v6 += v138;
    if (!v136)
    {
      break;
    }

    v140 = a4;
    v138 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[v136 >> 4];
    __key[0] = v139;
    if (utf8_decodestr(v6, v138, __key, &v215, 2, &v216, 0))
    {
      v19 = v137;
      v142 = v211;
      a4 = v140;
      goto LABEL_498;
    }

    v139 = __key[0];
    a4 = v140;
    if (__key[0] - 12441 < 2)
    {
      v19 = v137;
      goto LABEL_496;
    }

    if (__key[0] < 0x300u)
    {
      break;
    }

    v141 = __CFUniCharCombiningBitmap[__key[0] >> 8];
    if (v141 != 255 && (!__CFUniCharCombiningBitmap[__key[0] >> 8] || ((__CFUniCharCombiningBitmap[32 * v141 + 224 + (LOBYTE(__key[0]) >> 3)] >> (__key[0] & 7)) & 1) == 0))
    {
      break;
    }

    v136 = v6[v138];
  }

  v19 = v137;
  if (v196)
  {
    goto LABEL_497;
  }

LABEL_514:
  v154 = *v22;
  if (v154 >= 2)
  {
    if (v25)
    {
      if ((v154 & 0x80) != 0 || v154 - 58 > 0xFFFFFFF5)
      {
        v142 = v211;
        if (v154 != 227 || v22[1] != 128 || (v211 & 4) == 0)
        {
          goto LABEL_498;
        }

        if (v22[2] == 128)
        {
          goto LABEL_515;
        }
      }

      else
      {
        v142 = v211;
        if ((v211 & 4) == 0)
        {
LABEL_498:
          result = 0;
          if (v22 == v5 || (v142 & 4) == 0 || *v6)
          {
            return result;
          }

          v143 = v19;
          v144 = v22;
          while (v144 > v5)
          {
            do
            {
              v147 = *--v144;
              v146 = v147;
              v148 = v147 >> 4;
              v149 = v148 & 0xC;
            }

            while (v149 == 8);
            v145 = v146;
            if ((v146 & 0x80) != 0)
            {
              v150 = utf8_byte_length(unsigned char)::utf8_len_table[v148];
              v151 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v150] & v146;
              if (v149 == 12)
              {
                if (v150 <= 2)
                {
                  v152 = 2;
                }

                else
                {
                  v152 = v150;
                }

                for (j = 1; j != v152; ++j)
                {
                  v145 = v144[j] & 0x3F | (v151 << 6);
                  v151 = v145;
                }
              }

              else
              {
                v145 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v150] & v146;
              }
            }

            if ((v145 - 880) <= 0xFFFFFF8F)
            {
              goto LABEL_521;
            }
          }

          v146 = *v144;
LABEL_521:
          if ((v146 & 0x80) != 0)
          {
            v155 = v146 >> 4;
            v156 = ~v155;
            v157 = utf8_byte_length(unsigned char)::utf8_len_table[v155];
            v158 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v157] & v146;
            if ((v156 & 0xC) != 0)
            {
              v146 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v157];
            }

            else
            {
              if (v157 <= 2)
              {
                v159 = 2;
              }

              else
              {
                v159 = v157;
              }

              v160 = v159 - 1;
              v161 = (v144 + 1);
              do
              {
                v162 = *v161++;
                v146 = v162 & 0x3F | (v158 << 6);
                v158 = v146;
                --v160;
              }

              while (v160);
            }
          }

          v163 = *v22;
          v164 = *v22;
          if ((v163 & 0x80000000) != 0)
          {
            v165 = v163 >> 4;
            v166 = utf8_byte_length(unsigned char)::utf8_len_table[v165];
            v167 = v164 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v166];
            if ((~v165 & 0xC) != 0)
            {
              v163 = v164 & utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v166];
            }

            else
            {
              if (v166 <= 2)
              {
                v168 = 2;
              }

              else
              {
                v168 = utf8_byte_length(unsigned char)::utf8_len_table[v165];
              }

              v169 = v168 - 1;
              v170 = (v22 + 1);
              do
              {
                v171 = *v170++;
                v163 = v171 & 0x3F | (v167 << 6);
                v167 = v163;
                --v169;
              }

              while (v169);
            }
          }

          result = 0;
          if (v163 > 0xFFFE)
          {
            return result;
          }

          if (v163 - 880 > 0xFFFFFF8F || v146 > 0xFFFE)
          {
            return result;
          }

          v173 = v163 - 48;
          if (v146 - 48 > 9)
          {
            if (v173 > 9)
            {
              if (v146 - 123 < 0xFFFFFFE6)
              {
                result = 0;
                if (v146 - 91 < 0xFFFFFFE6 || v163 - 91 < 0xFFFFFFE6)
                {
                  return result;
                }

                v174 = a4;
                char_start = utf8_prev_char_start(v5, v144);
                if (utf8_to_code_point(char_start) - 91 < 0xFFFFFFE6)
                {
                  return 0;
                }

                v176 = &v22[utf8_byte_length(unsigned char)::utf8_len_table[v164 >> 4]];
                v177 = utf8_to_code_point(v176);
                if ((v177 - 880) >= 0xFFFFFF90)
                {
                  LOBYTE(v181) = *v176;
                  v179 = v174;
                  do
                  {
                    v182 = utf8_byte_length(unsigned char)::utf8_len_table[v181 >> 4];
                    v178 = &v176[v182];
                    v181 = v176[v182];
                    v177 = v181;
                    if (v181 < 0)
                    {
                      v183 = v181 >> 4;
                      v184 = utf8_byte_length(unsigned char)::utf8_len_table[v183];
                      v185 = ~v183;
                      v186 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v184] & v181);
                      if ((v185 & 0xC) != 0)
                      {
                        v177 = (utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v184] & v181);
                      }

                      else
                      {
                        if (v184 <= 2)
                        {
                          v184 = 2;
                        }

                        else
                        {
                          v184 = v184;
                        }

                        v187 = v184 - 1;
                        v188 = &v176[v182 + 1];
                        do
                        {
                          v189 = *v188++;
                          v177 = v189 & 0x3F | (v186 << 6);
                          v186 = v177;
                          --v187;
                        }

                        while (v187);
                      }
                    }

                    v176 = v178;
                  }

                  while ((v177 - 880) > 0xFFFFFF8F);
                }

                else
                {
                  v178 = v176;
                  v179 = v174;
                }

                if ((v177 - 91) > 0xFFFFFFE5)
                {
                  return 0;
                }

                if (!v179)
                {
                  return 1;
                }

                *v179 = &v143[-v5];
                v125 = (v178 - v143);
LABEL_577:
                *a5 = v125;
                return 1;
              }

              if (v163 > 0x7F)
              {
                v180 = a4;
                result = __maskrune(v163, 0x8000uLL);
                a4 = v180;
              }

              else
              {
                result = *(MEMORY[0x1E69E9830] + 4 * v163 + 60) & 0x8000;
              }

              if (!result)
              {
                return result;
              }
            }
          }

          else if (v173 < 0xA)
          {
            return 0;
          }

          if (!a4)
          {
            return 1;
          }

          *a4 = &v143[-v5];
          v125 = (v22 - v143);
          goto LABEL_577;
        }

        if (separator_map[*v22])
        {
          goto LABEL_515;
        }
      }
    }

    else if ((v211 & 4) != 0)
    {
      goto LABEL_515;
    }

LABEL_497:
    v142 = v211;
    goto LABEL_498;
  }

LABEL_515:
  if (*v6 && (*v6 != 42 || v6[1]))
  {
    goto LABEL_497;
  }

  if (a4)
  {
    *a4 = &v19[-v5];
    v125 = (v22 - v19);
    goto LABEL_577;
  }

  return 1;
}

uint64_t db_hash_qps(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2 & 0xC0000) != 0 && (*(a1 + 32) & 0x200) == 0)
  {
    v4 = *(a1 + 288);
    v5 = 8 * *(a1 + 40);
  }

  else
  {
    v4 = *(a1 + 72);
    if (v4)
    {
LABEL_6:
      v5 = strlen(v4);
      goto LABEL_8;
    }

    v15 = *(a1 + 24);
    if ((v15 - 11) > 1)
    {
      if (v15 == 15)
      {
        v4 = *(a1 + 296);
        v16 = *(a1 + 60);
        v17 = v16 & 3;
        v18 = (v16 >> 2) & 3;
        if (v17 == 3 || v18 == 3)
        {
          v5 = -1;
        }

        else
        {
          v5 = (vector_dimension_vec_sizes_15424[v17] * vector_size_elem_sizes_15423[v18]);
        }

        goto LABEL_8;
      }
    }

    else if (*(a1 + 40) == 2)
    {
      v4 = **(a1 + 168);
      goto LABEL_6;
    }

    v4 = 0;
    v5 = 0;
  }

LABEL_8:
  v6 = strlen(*a1);
  v7 = hash_bytes(*a1, v6);
  v8 = (v2 >> 5) & 0x1FFF800 ^ (((v2 & 0xFFFE) + 8) << 16) ^ ((v2 & 0xFFFE) + 8);
  v9 = (WORD2(v2) & 0xFFE2) + v8 + (v8 >> 11);
  v10 = (v2 >> 37) & 0x7FFF800 ^ (v9 << 16);
  v11 = (((v10 ^ v9) + ((v10 ^ v9) >> 11)) ^ (8 * ((v10 ^ v9) + ((v10 ^ v9) >> 11)))) + ((((v10 ^ v9) + ((v10 ^ v9) >> 11)) ^ (8 * ((v10 ^ v9) + ((v10 ^ v9) >> 11)))) >> 5);
  v12 = (v11 ^ (16 * v11)) + ((v11 ^ (16 * v11)) >> 17);
  v13 = v7 ^ (*(a1 + 24) << 24) ^ *(a1 + 52) ^ *(a1 + 56) ^ ((v12 ^ (v12 << 25)) + ((v12 ^ (v12 << 25)) >> 6));
  if (v4)
  {
    return hash_bytes(v4, v5) ^ v13;
  }

  return v13;
}

void oqsplit(uint64_t a1, unint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (*a1 != 1)
  {
    if (!a2)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 56);
      v22 = *(a1 + 32);
      *(a1 + 40) = 0;
      *(a1 + 48) = v22;
      *(a1 + 32) = 0;
      v23 = *(a1 + 16);
      v24 = *MEMORY[0x1E69E9840];

      parallel_qsort_offset_t(v23, v22);
      return;
    }

    v11 = *(a1 + 32);
    *(a1 + 48) = v11;
    if (v11 >= 100000)
    {
      v52 = v11 - 1;
      v53 = *(a1 + 16);
      v54 = qos_class_self();
      global_queue = dispatch_get_global_queue(v54, 0);
      v56 = thread_count;
      if (!thread_count)
      {
        *v77 = 0x1900000006;
        v76 = 4;
        sysctl(v77, 2u, &thread_count, &v76, 0, 0);
        v56 = thread_count;
      }

      v15 = _big_split_offset_t(v53, v52, a2, global_queue, v56);
      v11 = *(a1 + 48);
LABEL_67:
      *(a1 + 32) = v15;
      *(a1 + 40) = v15;
      if (v15 > v11)
      {
        v59 = __si_assert_copy_extra_332();
        v49 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "queue->top <= queue->end";
LABEL_103:
        __message_assert(v59, "OQueue.c", 14, v61, v60);
        goto LABEL_108;
      }

      if (v15 < v11)
      {
        v57 = v15 + 1;
        do
        {
          if (v11 == v57)
          {
            goto LABEL_75;
          }

          v58 = *(*(a1 + 16) + 8 * v57++) & 0x3FFFFFFFFFFFFFFFLL;
        }

        while (v58 >= a2);
        v59 = __si_assert_copy_extra_332();
        v49 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "current >= offset";
        goto LABEL_103;
      }

LABEL_75:
      if (v15 > 0)
      {
        v62 = 0;
        v63 = *(a1 + 16);
        while ((*(v63 + 8 * v62) & 0x3FFFFFFFFFFFFFFFuLL) <= a2)
        {
          if (v15 == ++v62)
          {
            goto LABEL_82;
          }
        }

        v70 = __si_assert_copy_extra_332();
        v36 = v70;
        v71 = "";
        if (v70)
        {
          v71 = v70;
        }

        v72 = "current <= offset";
        goto LABEL_119;
      }
    }

    else
    {
      if (v11 > 0)
      {
        v12 = 0;
        v13 = *(a1 + 16);
        v14 = v13 - 8;
        v15 = v11;
        while (1)
        {
          v16 = *(v13 + 8 * v12);
          v17 = v16 & 0x3FFFFFFFFFFFFFFFLL;
          if ((v16 & 0x3FFFFFFFFFFFFFFFuLL) >= a2)
          {
            if (v15 > v12)
            {
              while (1)
              {
                v18 = *(v14 + 8 * v15);
                if ((v18 & 0x3FFFFFFFFFFFFFFFuLL) < a2)
                {
                  break;
                }

                if (--v15 <= v12)
                {
                  v15 = v12;
                  goto LABEL_26;
                }
              }

              *(v13 + 8 * v12) = v18;
              *(v14 + 8 * v15) = v16;
              v17 = *(v13 + 8 * v12) & 0x3FFFFFFFFFFFFFFFLL;
            }

LABEL_26:
            if (v17 >= 2 * a2)
            {
              break;
            }
          }

          if (++v12 >= v15)
          {
            goto LABEL_67;
          }
        }

        v70 = __si_assert_copy_extra_332();
        v36 = v70;
        v71 = "";
        if (v70)
        {
          v71 = v70;
        }

        v72 = "!offset || offset_t_GET_VALUE(queue->offsets[i]) < offset * 2";
        goto LABEL_119;
      }

      *(a1 + 40) = v11;
      v15 = v11;
    }

    v63 = *(a1 + 16);
LABEL_82:
    parallel_qsort_offset_t(v63 + 8 * v15, v11 - v15);
    v64 = *(a1 + 48);
    if (v15 < v64)
    {
      v65 = *(a1 + 16);
      v66 = *(a1 + 40);
      v67 = *(v65 + 8 * v66) & 0x3FFFFFFFFFFFFFFFLL;
      if (v67 < a2)
      {
        v59 = __si_assert_copy_extra_332();
        v49 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "last >= offset";
      }

      else
      {
        v68 = v66 + 1;
        while (1)
        {
          if (v68 >= v64)
          {
            goto LABEL_91;
          }

          v69 = *(v65 + 8 * v68) & 0x3FFFFFFFFFFFFFFFLL;
          if (v69 < v67)
          {
            break;
          }

          ++v68;
          v67 = v69;
          if (v69 < a2)
          {
            v70 = __si_assert_copy_extra_332();
            v36 = v70;
            v71 = "";
            if (v70)
            {
              v71 = v70;
            }

            v72 = "last >= offset";
            goto LABEL_119;
          }
        }

        v59 = __si_assert_copy_extra_332();
        v49 = v59;
        v60 = "";
        if (v59)
        {
          v60 = v59;
        }

        v61 = "current >= last";
      }

      goto LABEL_103;
    }

LABEL_91:
    if (!*(a1 + 32) || (**(a1 + 16) & 0x3FFFFFFFFFFFFFFFuLL) < a2)
    {
LABEL_93:
      ++*(a1 + 56);
      *(a1 + 64) = a2;
      v73 = *MEMORY[0x1E69E9840];
      return;
    }

    v70 = __si_assert_copy_extra_332();
    v36 = v70;
    v71 = "";
    if (v70)
    {
      v71 = v70;
    }

    v72 = "last < offset";
LABEL_119:
    __message_assert(v70, "OQueue.c", 14, v72, v71);
LABEL_120:
    free(v36);
    if (__valid_fs(-1))
    {
      v75 = 2989;
    }

    else
    {
      v75 = 3072;
    }

    *v75 = -559038737;
    abort();
  }

  if (a2)
  {
    v4 = *(a1 + 32);
    *(a1 + 48) = v4;
    if (v4 >= 100000)
    {
      v25 = v4 - 1;
      v26 = *(a1 + 16);
      v27 = qos_class_self();
      v28 = dispatch_get_global_queue(v27, 0);
      v29 = thread_count;
      if (!thread_count)
      {
        *v77 = 0x1900000006;
        v76 = 4;
        sysctl(v77, 2u, &thread_count, &v76, 0, 0);
        v29 = thread_count;
      }

      v4 = _big_split_offset_with_meta_t(v26, v25, a2, v28, v29);
    }

    else if (v4 >= 1)
    {
      v5 = 0;
      v6 = *(a1 + 16);
      while (1)
      {
        v7 = (v6 + 16 * v5);
        if ((*v7 & 0x3FFFFFFFFFFFFFFFuLL) >= a2)
        {
          if (v4 > v5)
          {
            v8 = (v6 + 16 * v4 - 16);
            while (1)
            {
              v9 = *v8;
              v8 -= 2;
              if ((v9 & 0x3FFFFFFFFFFFFFFFuLL) < a2)
              {
                break;
              }

              if (--v4 <= v5)
              {
                v4 = v5;
                goto LABEL_13;
              }
            }

            memset(v77, 0, 16);
            *v77 = *v7;
            v10 = 16 * v4 - 16;
            *v7 = *(v6 + v10);
            *(*(a1 + 16) + v10) = *v77;
            v6 = *(a1 + 16);
          }

LABEL_13:
          if ((*(v6 + 16 * v5) & 0x3FFFFFFFFFFFFFFFuLL) >= 2 * a2)
          {
            break;
          }
        }

        if (++v5 >= v4)
        {
          goto LABEL_38;
        }
      }

      v35 = __si_assert_copy_extra_332();
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      v38 = "!offset || offset_with_meta_t_GET_VALUE(queue->offsets[i]) < offset * 2";
      goto LABEL_115;
    }

LABEL_38:
    *(a1 + 32) = v4;
    *(a1 + 40) = v4;
    v30 = *(a1 + 48);
    v31 = v30 - v4;
    if (v30 < v4)
    {
      v35 = __si_assert_copy_extra_332();
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      v38 = "queue->top <= queue->end";
LABEL_115:
      __message_assert(v35, "OQueue.c", 13, v38, v37);
      goto LABEL_120;
    }

    if (v30 > v4)
    {
      v32 = 16 * v4 + 16;
      v33 = v30 - v4;
      while (--v33)
      {
        v34 = *(*(a1 + 16) + v32);
        v32 += 16;
        if ((v34 & 0x3FFFFFFFFFFFFFFFuLL) < a2)
        {
          v35 = __si_assert_copy_extra_332();
          v36 = v35;
          v37 = "";
          if (v35)
          {
            v37 = v35;
          }

          v38 = "current >= offset";
          goto LABEL_115;
        }
      }
    }

    if (v4 >= 1)
    {
      v39 = *(a1 + 16);
      v40 = v4;
      while (1)
      {
        v41 = *v39;
        v39 += 2;
        if ((v41 & 0x3FFFFFFFFFFFFFFFuLL) > a2)
        {
          break;
        }

        if (!--v40)
        {
          goto LABEL_50;
        }
      }

      v35 = __si_assert_copy_extra_332();
      v36 = v35;
      v37 = "";
      if (v35)
      {
        v37 = v35;
      }

      v38 = "current <= offset";
      goto LABEL_115;
    }

LABEL_50:
    parallel_qsort_offset_with_meta_t(*(a1 + 16) + 16 * v4, v31);
    v42 = *(a1 + 48);
    if (v4 < v42)
    {
      v43 = *(a1 + 16);
      v44 = *(a1 + 40);
      v45 = *(v43 + 16 * v44) & 0x3FFFFFFFFFFFFFFFLL;
      if (v45 < a2)
      {
        v48 = __si_assert_copy_extra_332();
        v49 = v48;
        v50 = "";
        if (v48)
        {
          v50 = v48;
        }

        v51 = "last >= offset";
      }

      else
      {
        v46 = (v43 + 16 * v44 + 16);
        while (1)
        {
          if (++v44 >= v42)
          {
            goto LABEL_59;
          }

          v47 = *v46 & 0x3FFFFFFFFFFFFFFFLL;
          if (v47 < v45)
          {
            break;
          }

          v46 += 2;
          v45 = v47;
          if (v47 < a2)
          {
            v35 = __si_assert_copy_extra_332();
            v36 = v35;
            v37 = "";
            if (v35)
            {
              v37 = v35;
            }

            v38 = "last >= offset";
            goto LABEL_115;
          }
        }

        v48 = __si_assert_copy_extra_332();
        v49 = v48;
        v50 = "";
        if (v48)
        {
          v50 = v48;
        }

        v51 = "current >= last";
      }

      goto LABEL_107;
    }

LABEL_59:
    if (*(a1 + 32) && (**(a1 + 16) & 0x3FFFFFFFFFFFFFFFuLL) >= a2)
    {
      v48 = __si_assert_copy_extra_332();
      v49 = v48;
      v50 = "";
      if (v48)
      {
        v50 = v48;
      }

      v51 = "last < offset";
LABEL_107:
      __message_assert(v48, "OQueue.c", 13, v51, v50);
LABEL_108:
      free(v49);
      if (__valid_fs(-1))
      {
        v74 = 2989;
      }

      else
      {
        v74 = 3072;
      }

      *v74 = -559038737;
      abort();
    }

    goto LABEL_93;
  }

  *(a1 + 64) = 0;
  ++*(a1 + 56);
  v19 = *(a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = v19;
  *(a1 + 32) = 0;
  v20 = *(a1 + 16);
  v21 = *MEMORY[0x1E69E9840];

  parallel_qsort_offset_with_meta_t(v20, v19);
}

void parallel_qsort_offset_t(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 > 2047)
  {
    v5 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v5)
    {
      v5 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
    }

    v6 = dispatch_group_create();
    v5[3] = v6;
    v5[4] = 0;
    v5[1] = 0;
    v5[2] = a2 - 1;
    *v5 = a1;
    v7 = thread_count;
    if (!thread_count)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    *(v5 + 14) = v7;
    v5[5] = sqrt(a2) / 2;
    if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    v8 = a2 / (2 * v7);
    if (v8 <= 0x8000)
    {
      v8 = 0x8000;
    }

    else if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v8 = a2 / (2 * thread_count);
    }

    v5[6] = v8;
    if (v5[5] <= 2047)
    {
      v5[5] = 2048;
    }

    _qsort_big_offset_t(v5);
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];

    _qsort_offset_t(a1, 0, a2 - 1);
  }
}

uint64_t __CIIndexSetAddIntersectionInRange_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t a4)
{
  v4 = *(a2 + 13);
  if (v4 == *(a3 + 13))
  {
    if (v4)
    {
      return 0;
    }

    else
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        *(a2 + 12) = 1;
        v6 = a1;
        v7 = a2;
        v8 = a3;
        locked = lockedCountItemsInRange(*a2, *(a1 + 32), *(a1 + 36), a4);
        a3 = v8;
        a2 = v7;
        v10 = locked;
        a1 = v6;
        *(v7 + 8) = v10;
      }

      if (*(a3 + 12) == 1)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        *(a3 + 12) = 1;
        v12 = a2;
        v13 = a3;
        v11 = lockedCountItemsInRange(*a3, *(a1 + 32), *(a1 + 36), a4);
        a2 = v12;
        *(v13 + 8) = v11;
      }

      return (*(a2 + 8) - v11);
    }
  }

  else if (*(a2 + 13))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void CIIndexSetIntersectRanges(char *cf, unsigned int *a2, unsigned int a3, unsigned int a4)
{
  v155 = *MEMORY[0x1E69E9840];
  if (*(cf + 6) >= a2[6])
  {
    v6 = a2[6];
  }

  else
  {
    v6 = *(cf + 6);
  }

  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  if (*(cf + 5) <= a2[5])
  {
    v8 = a2[5];
  }

  else
  {
    v8 = *(cf + 5);
  }

  if (v8 >= a3)
  {
    if (v8 <= a3)
    {
      if (v6 < a4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v25 = a4;
      _CIIndexSetClearRange(cf, a3, v8 - 1);
      a4 = v25;
      if (v6 < v25)
      {
        goto LABEL_30;
      }
    }

LABEL_12:
    if (v8 <= v7)
    {
      goto LABEL_13;
    }

LABEL_31:
    if (dword_1EBF46AD0 >= 5)
    {
      v26 = *__error();
      v27 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v8;
        *&buf[8] = 1024;
        *&buf[10] = v7;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "%d start, end:%d", buf, 0xEu);
      }

      *__error() = v26;
    }

    goto LABEL_308;
  }

  v8 = a3;
  if (v6 >= a4)
  {
    goto LABEL_12;
  }

LABEL_30:
  _CIIndexSetClearRange(cf, v7 + 1, a4);
  if (v8 > v7)
  {
    goto LABEL_31;
  }

LABEL_13:
  v9 = *(cf + 4);
  if (v9)
  {
    if (v9 == -2)
    {
      goto LABEL_308;
    }
  }

  else if (CFGetTypeID(cf) != __kCIIndexSetInvertedTypeID || *(cf + 4) == -2)
  {
    goto LABEL_308;
  }

  v10 = a2[4];
  if (!v10)
  {
    if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID && a2[4] != -2)
    {
      goto LABEL_17;
    }

LABEL_40:
    v28 = *MEMORY[0x1E69E9840];

    _CIIndexSetClearRange(cf, v8, v7);
    return;
  }

  if (v10 == -2)
  {
    goto LABEL_40;
  }

LABEL_17:
  v11 = &unk_1EBF61000;
  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    _CIIndexSetForceBitmap(cf, 0, 0);
  }

  v12 = a2[4];
  v13 = *(cf + 4);
  if (v12 <= -10)
  {
    if (v13 <= -10)
    {
      v14 = *(cf + 6);
      v15 = (v14 - v7) >> 5;
      v16 = (v14 - v7) & 0x1F;
      v17 = (v14 - v8) >> 5;
      v18 = (v14 - v8) & 0x1F;
      v19 = a2[6];
      if (v14 == v19)
      {
        if (v17 != v15)
        {
          *(*(cf + 5) + 4 * v15) &= masks[v16] | *(*(a2 + 5) + 4 * v15);
          v76 = (v15 + 1);
          if (v76 < v17)
          {
            do
            {
              *(*(cf + 5) + 4 * v76) &= *(*(a2 + 5) + 4 * v76);
              ++v76;
            }

            while (v17 != v76);
          }

          *(*(cf + 5) + 4 * v17) &= *(*(a2 + 5) + 4 * v17) | ~masks[v18 + 1];
          goto LABEL_308;
        }

        v20 = v18 + 1;
        v21 = masks[v16];
        v22 = v21;
        v23 = v21;
        if (v16 != v20)
        {
          v22 = masks[v20];
          v23 = v22 & ~v21;
        }

        v24 = *(*(a2 + 5) + 4 * v15) & v23;
      }

      else
      {
        v45 = (v19 - v7) >> 5;
        v46 = (v14 - v19) & 0x1F;
        if (((v14 - v19) & 0x1F) != 0)
        {
          v47 = 32 - v46;
          if (v17 != v15)
          {
            if (v17 >= v15)
            {
              v108 = v18 + 1;
              v109 = (v19 - v14 + v46 + ((v14 - v7) & 0xFFFFFFE0)) >> 5;
              v110 = a2[8];
              v111 = v109 >= v110 ? 0 : (*(*(a2 + 5) + 4 * v109) << v46) & ~masks[v46];
              v122 = v109 - 1 >= v110 ? 0 : (*(*(a2 + 5) + 4 * (v109 - 1)) >> v47) & masks[v46];
              v123 = masks[v16];
              *(*(cf + 5) + 4 * v15) &= v122 | v111 | v123;
              if (v15 + 1 != v17 + 1)
              {
                v124 = 0;
                v125 = v17 - v15;
                v126 = 4 * v15 + 4;
                do
                {
                  v127 = a2[8];
                  if (v109 + v124 + 1 >= v127)
                  {
                    v128 = 0;
                  }

                  else
                  {
                    v128 = (*(*(a2 + 5) + 4 * v109 + 4 + 4 * v124) << v46) & ~masks[v46];
                  }

                  if (v127 <= v109 + v124)
                  {
                    v129 = 0;
                  }

                  else
                  {
                    v129 = (*(*(a2 + 5) + 4 * (v109 + v124)) >> v47) & masks[v46];
                  }

                  v130 = 0;
                  if (v124 == -1)
                  {
                    v131 = v123;
                  }

                  else
                  {
                    v131 = 0;
                  }

                  if (v125 - 1 == v124)
                  {
                    v130 = ~masks[v108];
                  }

                  *(*(cf + 5) + v126 + 4 * v124++) &= v129 | v128 | v130 | v131;
                }

                while (v125 != v124);
              }
            }

            goto LABEL_308;
          }

          v48 = *(a2 + 5);
          if (v45 + 1 >= a2[8])
          {
            v49 = 0;
          }

          else
          {
            v49 = *(v48 + 4 * (v45 + 1)) >> v47;
          }

          v117 = v49 | (*(v48 + 4 * v45) << v46);
          v118 = v18 + 1;
          v119 = masks[v16];
          v120 = v119;
          v121 = v119;
          if (v16 != v118)
          {
            v120 = masks[v118];
            v121 = v120 & ~v119;
          }

          v97 = v121 & v117 | ~v120 | v119;
LABEL_265:
          *(*(cf + 5) + 4 * v15) &= v97;
          goto LABEL_308;
        }

        v93 = *(*(a2 + 5) + 4 * v45);
        v94 = v17 - v15;
        if (v17 != v15)
        {
          *(*(cf + 5) + 4 * v15) &= masks[v16] | v93;
          if (v94 >= 2)
          {
            v112 = 1 - v94;
            v113 = v15 + 1;
            v114 = v45 + 1;
            do
            {
              *(*(cf + 5) + 4 * v113++) &= *(*(a2 + 5) + 4 * v114++);
              v116 = __CFADD__(v112++, 1);
            }

            while (!v116);
          }

          *(*(cf + 5) + 4 * v17) &= *(*(a2 + 5) + 4 * ((v19 - v8) >> 5)) | ~masks[v18 + 1];
          goto LABEL_308;
        }

        v95 = v18 + 1;
        v21 = masks[v16];
        v22 = v21;
        v96 = v21;
        if (v16 != v95)
        {
          v22 = masks[v95];
          v96 = v22 & ~v21;
        }

        v24 = v96 & v93;
      }

      v97 = v24 | ~v22 | v21;
      goto LABEL_265;
    }

    if (v13 <= -2)
    {
      v32 = (-2 - v13);
      v33 = cf + 32;
      if (v13 == -2)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        v34 = 0;
        while (*&v33[4 * v34] > v7)
        {
          if (v32 == ++v34)
          {
            LODWORD(v92) = -2 - v13;
            v35 = -2 - v13;
            goto LABEL_252;
          }
        }
      }

      if (v34 >= v32)
      {
        v35 = -2 - v13;
      }

      else
      {
        v35 = v34;
      }

      if (v34 < v32)
      {
        v92 = v34;
        v36 = -2 - (v13 + v35);
        while (1)
        {
          v37 = *&v33[4 * v92];
          if (v37 < v8)
          {
            break;
          }

          if ((*(*(a2 + 5) + 4 * ((a2[6] - v37) >> 5)) >> (*(a2 + 24) - v37)))
          {
            *&v33[4 * v35++] = v37;
          }

          ++v92;
          if (!--v36)
          {
            LODWORD(v92) = v32;
            break;
          }
        }
      }

      else
      {
        LODWORD(v92) = v35;
      }

LABEL_252:
      memmove(&v33[4 * v35], &v33[4 * v92], 4 * (v32 - v92));
      *(cf + 4) += v92 - v35;
      goto LABEL_308;
    }

    if ((v13 & 0x80000000) == 0)
    {
      v57 = *(cf + 9);
      if (v57 != v13)
      {
        memmove((*(cf + 5) + 4 * v57), (*(cf + 5) + 4 * (v57 - v13 + *(cf + 8))), 4 * (v13 - v57));
        *(cf + 9) = *(cf + 4);
      }
    }

    v58 = binarySearchMap(cf, v7);
    v59 = v58;
    v60 = *(cf + 4);
    if (v58 >= v60)
    {
      v77 = v58;
    }

    else
    {
      v61 = v58;
      do
      {
        v62 = *(cf + 5);
        v63 = *(v62 + 4 * v61);
        if (v63 < v8)
        {
          break;
        }

        if ((*(*(a2 + 5) + 4 * ((a2[6] - v63) >> 5)) >> (*(a2 + 24) - v63)))
        {
          *(v62 + 4 * v59++) = v63;
          v60 = *(cf + 4);
        }

        ++v61;
      }

      while (v61 < v60);
      v77 = v59;
      v59 = v61;
    }

    memmove((*(cf + 5) + 4 * v77), (*(cf + 5) + 4 * v59), 4 * (v60 - v59));
    v78 = v77 - v59;
LABEL_183:
    v91 = *(cf + 4) + v78;
    *(cf + 4) = v91;
    *(cf + 9) = v91;
    goto LABEL_308;
  }

  if (v13 <= -10)
  {
    if (v12 <= -2)
    {
      memset(buf, 0, sizeof(buf));
      if (v12 != -2)
      {
        v29 = 0;
        v30 = (-2 - v12);
        v31 = a2 + 8;
        while (1)
        {
          v98 = *v31;
          if (*v31 < v8 || v98 > v7)
          {
            goto LABEL_196;
          }

          if (*(cf + 5) > v98)
          {
            goto LABEL_196;
          }

          v100 = *(cf + 6);
          v101 = v100 - v98;
          if (v100 < v98)
          {
            goto LABEL_196;
          }

          v102 = *(cf + 4);
          if (v102 > -10)
          {
            if (v102 < 0)
            {
              if (v102 >= 0xFFFFFFFE || *(cf + 8) != v98 && (v102 == -3 || *(cf + 9) != v98 && (v102 == -4 || *(cf + 10) != v98 && (v102 == -5 || *(cf + 11) != v98 && (v102 == -6 || *(cf + 12) != v98 && (v102 == -7 || *(cf + 13) != v98 && (v102 == -8 || *(cf + 14) != v98)))))))
              {
                goto LABEL_196;
              }
            }

            else
            {
              v103 = v11;
              v104 = binarySearchMap(cf, *v31);
              v105 = *(cf + 9);
              if (v104 < v105 || (v106 = 0, v107 = *(cf + 8), v104 < v107) && v104 >= v107 + v105 - *(cf + 4))
              {
                v106 = *(*(cf + 5) + 4 * v104) == v98;
              }

              if (v106 == (CFGetTypeID(cf) == v103[34]))
              {
                v11 = v103;
                goto LABEL_196;
              }

              v98 = *v31;
              v11 = v103;
            }
          }

          else if (((*(*(cf + 5) + 4 * (v101 >> 5)) >> v101) & 1) == 0)
          {
            goto LABEL_196;
          }

          *&buf[4 * v29++] = v98;
LABEL_196:
          ++v31;
          if (!--v30)
          {
            goto LABEL_148;
          }
        }
      }

LABEL_147:
      v29 = 0;
LABEL_148:
      _CIIndexSetClearRange(cf, v8, v7);
      _CIIndexSetAddSortedIndexes(cf, buf, v29, 1, 0, 0, v81);
      goto LABEL_308;
    }

    v50 = *(cf + 6);
    *&buf[8] = 0;
    v154 = 0uLL;
    if (a2[6] >= v7)
    {
      v51 = v7;
    }

    else
    {
      v51 = a2[6];
    }

    if (a2[5] <= v8)
    {
      v52 = v8;
    }

    else
    {
      v52 = a2[5];
    }

    if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)
    {
      v53 = 3;
    }

    else
    {
      v53 = 1;
    }

    DWORD2(v154) = v53;
    v54 = a2[4];
    *buf = v51;
    *&buf[4] = v52;
    *&v154 = a2;
    if (v54 < 1)
    {
      if (v54 >= 0xFFFFFFF7)
      {
        v56 = -2 - v54;
        if (v54 > 0xFFFFFFFD)
        {
          goto LABEL_285;
        }

        if (v51 < a2[8])
        {
          if (v54 != -3)
          {
            if (v51 >= a2[9])
            {
              v56 = 1;
            }

            else if (v54 != -4)
            {
              if (v51 >= a2[10])
              {
                v56 = 2;
              }

              else if (v54 != -5)
              {
                if (v51 >= a2[11])
                {
                  v56 = 3;
                }

                else if (v54 != -6)
                {
                  if (v51 >= a2[12])
                  {
                    v56 = 4;
                  }

                  else if (v54 != -7)
                  {
                    if (v51 >= a2[13])
                    {
                      v56 = 5;
                    }

                    else if (v54 != -8 && v51 >= a2[14])
                    {
                      v56 = 6;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_285;
        }
      }

      v56 = 0;
    }

    else
    {
      v55 = binarySearchMap(a2, v51);
      *&buf[8] = v55;
      if (v55 != a2[9])
      {
        goto LABEL_286;
      }

      v56 = a2[8] + v55 - a2[4];
    }

LABEL_285:
    *&buf[8] = v56;
LABEL_286:
    v132 = _CIIndexSetEnumeratorNext(buf);
    if (v132)
    {
      v133 = v50 - v8;
      v134 = (v50 - v7) & 0x1F;
      v135 = (v50 - v7) >> 5;
      v136 = *(cf + 6) - v132;
      v137 = v136 >> 5;
      if (v136 >> 5 == v135)
      {
        v138 = masks[v134];
      }

      else
      {
        v138 = 0;
      }

      v142 = 1 << v136;
      v150 = v133 & 0x1F;
      v152 = (v50 - v8) >> 5;
      if (v135 == v152)
      {
        v138 = masks[v134] | ~masks[(v133 & 0x1F) + 1];
      }

      else if (v132 + 1 <= v7)
      {
        v143 = v132;
        _CIIndexSetClearRange(cf, v132 + 1, v7);
        v132 = v143;
      }

LABEL_295:
      v144 = v132;
      v145 = v142;
      while (1)
      {
        v132 = _CIIndexSetEnumeratorNext(buf);
        if (!v132)
        {
          break;
        }

        v146 = (*(cf + 6) - v132) >> 5;
        v142 = 1 << (cf[24] - v132);
        if (v146 != v137)
        {
          *(*(cf + 5) + 4 * v137) &= v138 | v145;
          v137 = v146;
          v138 = 0;
          if (v144 - 1 >= v132 + 1)
          {
            v147 = v132;
            _CIIndexSetClearRange(cf, v132 + 1, v144 - 1);
            v132 = v147;
            v138 = 0;
            v137 = v146;
          }

          goto LABEL_295;
        }

        v145 |= v142;
        v144 = v132;
      }

      if (v135 == v152 || v137 != v152)
      {
        v148 = v138 | v145;
      }

      else
      {
        v148 = v145 | ~masks[v150 + 1];
        v137 = v152;
      }

      *(*(cf + 5) + 4 * v137) &= v148;
      if (v144 <= v8)
      {
        goto LABEL_308;
      }

      v141 = v144 - 1;
      v139 = cf;
      v140 = v8;
    }

    else
    {
      v139 = cf;
      v140 = v8;
      v141 = v7;
    }

    _CIIndexSetClearRange(v139, v140, v141);
    goto LABEL_308;
  }

  if ((v13 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v38 = *(cf + 9);
      if (v38 != v13)
      {
        memmove((*(cf + 5) + 4 * v38), (*(cf + 5) + 4 * (v38 - v13 + *(cf + 8))), 4 * (v13 - v38));
        *(cf + 9) = *(cf + 4);
      }

      v39 = binarySearchMap(cf, v7);
      *buf = 0u;
      v154 = 0u;
      initializeEnumberatorForRangeLocked(buf, a2, v8, v7);
      v40 = *(cf + 4);
      if (v39 >= v40)
      {
        LODWORD(v41) = v39;
      }

      else
      {
        v41 = v39;
        v42 = -1;
        do
        {
          v43 = *(cf + 5);
          v44 = *(v43 + 4 * v41);
          if (v44 < v8)
          {
            break;
          }

          if (v44 < v42)
          {
            v42 = _CIIndexSetEnumeratorNext(buf);
            if (!v42)
            {
              goto LABEL_253;
            }
          }

          while (v44 < v42)
          {
            v42 = _CIIndexSetEnumeratorNext(buf);
          }

          if (!v42)
          {
LABEL_253:
            if (v40 > v41)
            {
              while (1)
              {
                v115 = *(v43 + 4 * v41);
                v116 = v7 >= v115 && v115 >= v8;
                if (!v116)
                {
                  break;
                }

                if (++v41 >= v40)
                {
                  LODWORD(v41) = v40;
                  goto LABEL_182;
                }
              }
            }

            break;
          }

          if (v44 == v42)
          {
            *(v43 + 4 * v39) = v44;
            v40 = *(cf + 4);
            ++v39;
          }

          ++v41;
        }

        while (v41 < v40);
      }

LABEL_182:
      memmove((*(cf + 5) + 4 * v39), (*(cf + 5) + 4 * v41), 4 * (v40 - v41));
      v78 = v39 - v41;
      goto LABEL_183;
    }

    memset(buf, 0, sizeof(buf));
    if (v12 > 0xFFFFFFFD)
    {
      goto LABEL_147;
    }

    v29 = 0;
    v79 = (-2 - v12);
    v80 = a2 + 8;
    while (1)
    {
      v82 = *v80;
      if (*v80 < v8 || v82 > v7)
      {
        goto LABEL_151;
      }

      if (*(cf + 5) > v82)
      {
        goto LABEL_151;
      }

      v84 = *(cf + 6);
      v85 = v84 - v82;
      if (v84 < v82)
      {
        goto LABEL_151;
      }

      v86 = *(cf + 4);
      if (v86 > -10)
      {
        break;
      }

      if ((*(*(cf + 5) + 4 * (v85 >> 5)) >> v85))
      {
        goto LABEL_150;
      }

LABEL_151:
      ++v80;
      if (!--v79)
      {
        goto LABEL_148;
      }
    }

    if (v86 < 0)
    {
      if (v86 >= 0xFFFFFFFE || *(cf + 8) != v82 && (v86 == -3 || *(cf + 9) != v82 && (v86 == -4 || *(cf + 10) != v82 && (v86 == -5 || *(cf + 11) != v82 && (v86 == -6 || *(cf + 12) != v82 && (v86 == -7 || *(cf + 13) != v82 && (v86 == -8 || *(cf + 14) != v82)))))))
      {
        goto LABEL_151;
      }
    }

    else
    {
      v87 = binarySearchMap(cf, *v80);
      v88 = *(cf + 9);
      if (v87 < v88 || (v89 = 0, v90 = *(cf + 8), v87 < v90) && v87 >= v90 + v88 - *(cf + 4))
      {
        v89 = *(*(cf + 5) + 4 * v87) == v82;
      }

      if (v89 == (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID))
      {
        goto LABEL_151;
      }

      v82 = *v80;
    }

LABEL_150:
    *&buf[4 * v29++] = v82;
    goto LABEL_151;
  }

  v64 = (-2 - v13);
  if (v13 > 0xFFFFFFFD)
  {
    v65 = 0;
    goto LABEL_193;
  }

  v65 = 0;
  v66 = (cf + 32);
  v151 = -2 - v13;
  do
  {
    v67 = *v66;
    if (*v66 < v8 || v67 > v7)
    {
      goto LABEL_104;
    }

    if (a2[5] <= v67)
    {
      v69 = a2[6];
      v70 = v69 - v67;
      if (v69 >= v67)
      {
        v71 = a2[4];
        if (v71 <= -10)
        {
          if (((*(*(a2 + 5) + 4 * (v70 >> 5)) >> v70) & 1) == 0)
          {
            goto LABEL_105;
          }

          goto LABEL_104;
        }

        if (v71 < 0)
        {
          if (v71 < 0xFFFFFFFE && (a2[8] == v67 || v71 != -3 && (a2[9] == v67 || v71 != -4 && (a2[10] == v67 || v71 != -5 && (a2[11] == v67 || v71 != -6 && (a2[12] == v67 || v71 != -7 && (a2[13] == v67 || v71 != -8 && a2[14] == v67)))))))
          {
            goto LABEL_104;
          }
        }

        else
        {
          v72 = binarySearchMap(a2, *v66);
          v73 = a2[9];
          if (v72 < v73 || (v74 = 0, v75 = a2[8], v72 < v75) && v72 >= v75 + v73 - a2[4])
          {
            v74 = *(*(a2 + 5) + 4 * v72) == v67;
          }

          if (v74 != (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID))
          {
            v67 = *v66;
LABEL_104:
            *&cf[4 * v65++ + 32] = v67;
          }
        }
      }
    }

LABEL_105:
    ++v66;
    --v64;
  }

  while (v64);
  v13 = *(cf + 4);
  LODWORD(v64) = v151;
LABEL_193:
  *(cf + 4) = v13 + v64 - v65;
LABEL_308:
  v149 = *MEMORY[0x1E69E9840];
}

void CIIndexSetAddRange(unsigned int *cf, _DWORD *a2, unsigned int a3, unsigned int a4, int8x8_t a5)
{
  v134 = *MEMORY[0x1E69E9840];
  v6 = cf[5];
  v5 = cf[6];
  v7 = a2[5];
  v8 = a2[6];
  if (v5 >= v8)
  {
    v9 = a2[6];
  }

  else
  {
    v9 = cf[6];
  }

  v10 = v8 >= a4 && v5 >= a4;
  if (v10)
  {
    v11 = a4;
  }

  else
  {
    v11 = v9;
  }

  if (v6 <= v7)
  {
    v12 = a2[5];
  }

  else
  {
    v12 = cf[5];
  }

  v13 = v7 > a3 || v6 > a3;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = a3;
  }

  if (v14 > v11)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v98 = *__error();
      v99 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v14;
        *&buf[8] = 1024;
        *&buf[10] = v11;
        _os_log_impl(&dword_1C278D000, v99, OS_LOG_TYPE_DEFAULT, "%d start, end:%d", buf, 0xEu);
      }

      *__error() = v98;
    }

    goto LABEL_85;
  }

  if (v14 == v11)
  {
    if (v7 <= v11)
    {
      v17 = a2[4];
      if (v17 > -10)
      {
        if (v17 < 0)
        {
          if (v17 >= 0xFFFFFFFE || a2[8] != v11 && (v17 == -3 || a2[9] != v11 && (v17 == -4 || a2[10] != v11 && (v17 == -5 || a2[11] != v11 && (v17 == -6 || a2[12] != v11 && (v17 == -7 || a2[13] != v11 && (v17 == -8 || a2[14] != v11)))))))
          {
            goto LABEL_85;
          }
        }

        else
        {
          v18 = binarySearchMap(a2, v11);
          v19 = a2[9];
          v23 = (v18 < v19 || ((v20 = a2[8], v21 = v20 + v19 - a2[4], v18 < v20) ? (v22 = v18 >= v21) : (v22 = 0), v22)) && *(*(a2 + 5) + 4 * v18) == v11;
          if (v23 == (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID))
          {
            goto LABEL_85;
          }
        }
      }

      else if (((*(*(a2 + 5) + 4 * ((v8 - v11) >> 5)) >> (v8 - v11)) & 1) == 0)
      {
        goto LABEL_85;
      }

      *buf = -1;
      _CIIndexSetAddIndex(cf, v11, 0, buf, a5);
    }

LABEL_85:
    v53 = *MEMORY[0x1E69E9840];
    return;
  }

  if (cf[4] >= -9)
  {
    if (a2[4] > -10)
    {
      if (CFGetTypeID(cf) != __kCIIndexSetInvertedTypeID)
      {
        locked = lockedCountItemsInRange(a2, v14, v11, a5);
        v25 = cf[4];
        if (v25 > -10 || ((v26 = cf[6] - cf[5], v27 = locked - v25 - 10, v26 + 1 < v27) ? (v28 = v26 + 1) : (v28 = v27), v25 = -10 - v28, cf[4] = -10 - v28, (v28 & 0x80000000) != 0))
        {
          if (v25 >= -1)
          {
            v29 = cf[8];
          }

          else
          {
            v29 = 4;
          }

          if (v25 < -1)
          {
            v25 = -2 - v25;
          }

          if (v29 < v25 + locked)
          {
            _CIIndexSetMakeSpace(cf, locked, 0, 0, 0);
          }
        }
      }
    }

    else
    {
      _CIIndexSetForceBitmap(cf, 0, 0);
    }
  }

  if (a2[4] <= -10)
  {
    v30 = cf[6];
    v31 = (v30 - v11) >> 5;
    v32 = (v30 - v11) & 0x1F;
    v33 = (v30 - v14) >> 5;
    v34 = (v30 - v14) & 0x1F;
    v35 = a2[6];
    v36 = v30 - v35;
    if (v36)
    {
      if ((v36 & 0x1F) != 0)
      {
        *buf = 0u;
        v133 = 0u;
        initializeEnumberatorForRangeLocked(buf, a2, v14, v11);
        while (1)
        {
          v105 = _CIIndexSetEnumeratorNext(buf);
          if (!v105)
          {
            break;
          }

          v131 = -1;
          _CIIndexSetAddIndex(cf, v105, 0, &v131, a5);
        }

LABEL_81:
        v50 = cf[4];
        if (v50 <= -10)
        {
          v51 = cf[6] - cf[5];
          v52 = -20 - (v50 + a2[4]);
          if (v51 + 1 < v52)
          {
            v52 = v51 + 1;
          }

          cf[4] = -10 - v52;
          _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, 0, a5);
        }

        goto LABEL_85;
      }

      v106 = (v35 - v11) >> 5;
      v107 = *(*(a2 + 5) + 4 * v106);
      v108 = v33 - v31;
      if (v33 != v31)
      {
        *(*(cf + 5) + 4 * v31) |= v107 & ~masks[v32];
        if (v108 >= 2)
        {
          v111 = 1 - v108;
          v112 = v31 + 1;
          v113 = v106 + 1;
          do
          {
            *(*(cf + 5) + 4 * v112++) |= *(*(a2 + 5) + 4 * v113++);
            v10 = __CFADD__(v111++, 1);
          }

          while (!v10);
        }

        *(*(cf + 5) + 4 * v33) |= masks[v34 + 1] & *(*(a2 + 5) + 4 * ((v35 - v14) >> 5));
        goto LABEL_81;
      }

      v109 = v34 + 1;
      v110 = masks[v32];
      if (v32 != v109)
      {
        v110 = masks[v109] & ~v110;
      }

      v40 = v110 & v107;
    }

    else
    {
      v37 = *(*(a2 + 5) + 4 * v31);
      if (v33 != v31)
      {
        *(*(cf + 5) + 4 * v31) |= v37 & ~masks[v32];
        v49 = v31 + 1;
        if (v49 < v33)
        {
          do
          {
            *(*(cf + 5) + 4 * v49) |= *(*(a2 + 5) + 4 * v49);
            ++v49;
          }

          while (v33 != v49);
        }

        *(*(cf + 5) + 4 * v33) |= masks[v34 + 1] & *(*(a2 + 5) + 4 * v33);
        goto LABEL_81;
      }

      v38 = v34 + 1;
      v39 = masks[v32];
      if (v32 != v38)
      {
        v39 = masks[v38] & ~v39;
      }

      v40 = v39 & v37;
    }

    *(*(cf + 5) + 4 * v31) |= v40;
    goto LABEL_81;
  }

  v41 = CFGetTypeID(a2);
  v43 = a2[4];
  if (v41 == __kCIIndexSetInvertedTypeID)
  {
    if (v43 == a2[6] - a2[5] + 1)
    {
      goto LABEL_85;
    }
  }

  else if (v43 == -2 || !v43)
  {
    goto LABEL_85;
  }

  v44 = cf[4];
  if (v44 <= -10)
  {
    if ((v43 & 0x80000000) != 0)
    {
      v68 = -2 - v43;
      v69 = (a2 + 8);
      if (v43 > 0xFFFFFFFD)
      {
        LODWORD(v70) = 0;
      }

      else
      {
        v70 = 0;
        while (*&v69[4 * v70] > v11)
        {
          if (v68 == ++v70)
          {
            LODWORD(v70) = -2 - v43;
            break;
          }
        }
      }

      v78 = cf[6] - cf[5];
      v79 = -12 - (v43 + v44);
      if (v78 + 1 < v79)
      {
        v79 = v78 + 1;
      }

      cf[4] = -10 - v79;
      if (v70 >= v68)
      {
        v80 = -2 - v43;
      }

      else
      {
        v80 = v70;
      }

      if (v70 < v68 && *&v69[4 * v80] > v11)
      {
        ++v80;
      }

      if (v80 < v68)
      {
        v81 = v80 + v43 + 2;
        v82 = &a2[v80 + 8];
        do
        {
          v84 = *v82++;
          v83 = v84;
          if (v84 < v14)
          {
            break;
          }

          *(*(cf + 5) + 4 * ((cf[6] - v83) >> 5)) |= 1 << (*(cf + 24) - v83);
          v10 = __CFADD__(v81++, 1);
        }

        while (!v10);
      }

      goto LABEL_211;
    }

    *&buf[8] = 0;
    v133 = 0uLL;
    if (a2[6] < v11)
    {
      v11 = a2[6];
    }

    if (a2[5] > v14)
    {
      v14 = a2[5];
    }

    if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)
    {
      v45 = 3;
    }

    else
    {
      v45 = 1;
    }

    DWORD2(v133) = v45;
    v46 = a2[4];
    *buf = v11;
    *&buf[4] = v14;
    *&v133 = a2;
    if (v46 < 1)
    {
      if (v46 >= 0xFFFFFFF7)
      {
        v48 = -2 - v46;
        if (v46 > 0xFFFFFFFD)
        {
          goto LABEL_202;
        }

        if (v11 < a2[8])
        {
          if (v46 != -3)
          {
            if (v11 >= a2[9])
            {
              v48 = 1;
            }

            else if (v46 != -4)
            {
              if (v11 >= a2[10])
              {
                v48 = 2;
              }

              else if (v46 != -5)
              {
                if (v11 >= a2[11])
                {
                  v48 = 3;
                }

                else if (v46 != -6)
                {
                  if (v11 >= a2[12])
                  {
                    v48 = 4;
                  }

                  else if (v46 != -7)
                  {
                    if (v11 >= a2[13])
                    {
                      v48 = 5;
                    }

                    else if (v46 != -8 && v11 >= a2[14])
                    {
                      v48 = 6;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_202;
        }
      }

      v48 = 0;
    }

    else
    {
      v47 = binarySearchMap(a2, v11);
      *&buf[8] = v47;
      if (v47 != a2[9])
      {
LABEL_203:
        while (1)
        {
          v100 = _CIIndexSetEnumeratorNext(buf);
          if (!v100)
          {
            break;
          }

          *(*(cf + 5) + 4 * ((cf[6] - v100) >> 5)) |= 1 << (*(cf + 24) - v100);
        }

        if (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)
        {
          v101 = a2[6] - (a2[5] + a2[4]) + 1;
        }

        else
        {
          v101 = a2[4];
        }

        v102 = cf[6] - cf[5];
        v103 = v101 - cf[4] - 10;
        if (v102 + 1 < v103)
        {
          v103 = v102 + 1;
        }

        cf[4] = -10 - v103;
LABEL_211:
        v104 = *MEMORY[0x1E69E9840];

        _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, 0, v42);
        return;
      }

      v48 = a2[8] + v47 - a2[4];
    }

LABEL_202:
    *&buf[8] = v48;
    goto LABEL_203;
  }

  if ((v43 & 0x80000000) != 0)
  {
    v71 = -2 - v43;
    v72 = (a2 + 8);
    if (v43 > 0xFFFFFFFD)
    {
      LODWORD(v73) = 0;
    }

    else
    {
      v73 = 0;
      while (*&v72[4 * v73] > v11)
      {
        if (v71 == ++v73)
        {
          LODWORD(v74) = v71;
          LODWORD(v73) = v71;
          goto LABEL_178;
        }
      }
    }

    if (v14)
    {
      v85 = v14 - 1;
    }

    else
    {
      v85 = 0;
    }

    if (v73 < v71)
    {
      v74 = v73;
      while (*&v72[4 * v74] > v85)
      {
        if (v71 == ++v74)
        {
          LODWORD(v74) = v71;
          goto LABEL_178;
        }
      }

      if (v73 > v74)
      {
        v122 = __si_assert_copy_extra_332();
        __message_assert_336(v122, v123, v124, v125, v126, v127, v128, v129, "CIIndexSet.c");
        free(v122);
        if (__valid_fs(-1))
        {
          v130 = 2989;
        }

        else
        {
          v130 = 3072;
        }

        *v130 = -559038737;
        abort();
      }
    }

    else
    {
      LODWORD(v73) = v71;
      LODWORD(v74) = v71;
    }

LABEL_178:
    if (v74 < v71)
    {
      LODWORD(v71) = v74;
    }

    v93 = *MEMORY[0x1E69E9840];
    v87 = &v72[4 * v73];
    v89 = v71 - v73;
LABEL_181:
    v88 = cf;
    goto LABEL_182;
  }

  if (v14)
  {
    v54 = v14 - 1;
  }

  else
  {
    v54 = 0;
  }

  v55 = binarySearchMap(a2, v54);
  v56 = binarySearchMap(a2, v11);
  v57 = v55 - v56;
  if (v55 < v56)
  {
    v114 = __si_assert_copy_extra_332();
    __message_assert_336(v114, v115, v116, v117, v118, v119, v120, v121, "CIIndexSet.c");
    free(v114);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v58 = v56;
  v59 = a2[9];
  v60 = CFGetTypeID(a2);
  if (v58 < v59 && v55 > v59)
  {
    if (v60 == __kCIIndexSetInvertedTypeID)
    {
      *buf = -1;
      v61 = a2[4];
      v63 = a2[8];
      v62 = a2[9];
      v64 = v63 - v61 + v62;
      if (v55 <= v64)
      {
        v92 = 0;
      }

      else
      {
        if (v55 <= v64)
        {
          v65 = *(a2 + 5);
        }

        else
        {
          v65 = *(a2 + 5);
          v66 = v55 - 1;
          do
          {
            v67 = *(v65 + 4 * v66);
            if (v67 > v14)
            {
              *buf = -1;
              _CIIndexSetAddIndexesInRange(cf, v14, *(v65 + 4 * v66) - 1, buf, v42);
              v65 = *(a2 + 5);
              v61 = a2[4];
              v63 = a2[8];
              v62 = a2[9];
              v67 = *(v65 + 4 * v66);
            }

            v14 = v67 + 1;
            v64 = v63 - v61 + v62;
            v13 = v66-- <= v64;
          }

          while (!v13);
        }

        v92 = *(v65 + 4 * v64) == v11;
      }

      if (v62 > v58)
      {
        v94 = v62;
        v95 = *(a2 + 5);
        v96 = v94 - 1;
        do
        {
          v97 = *(v95 + 4 * v96);
          if (v97 > v14)
          {
            *buf = -1;
            _CIIndexSetAddIndexesInRange(cf, v14, *(v95 + 4 * v96) - 1, buf, v42);
            v95 = *(a2 + 5);
            v97 = *(v95 + 4 * v96);
          }

          v14 = v97 + 1;
          v13 = v96-- <= v58;
        }

        while (!v13);
        if (*(v95 + 4 * v58) == v11)
        {
          v92 = 1;
        }
      }

      if (v92)
      {
        goto LABEL_85;
      }

      goto LABEL_195;
    }

    v90 = a2[8] - a2[4] + a2[9];
    _CIIndexSetAddSortedIndexes(cf, (*(a2 + 5) + 4 * v90), v55 - v90, 1, 0, 0, v42);
    v91 = *MEMORY[0x1E69E9840];
    v87 = (*(a2 + 5) + 4 * v58);
    v89 = a2[9] - v58;
    goto LABEL_181;
  }

  if (v60 == __kCIIndexSetInvertedTypeID)
  {
    *buf = -1;
    if (v55 > v58)
    {
      v75 = *(a2 + 5);
      v76 = v55 - 1;
      do
      {
        v77 = *(v75 + 4 * v76);
        if (v77 > v14)
        {
          *buf = -1;
          _CIIndexSetAddIndexesInRange(cf, v14, *(v75 + 4 * v76) - 1, buf, v42);
          v75 = *(a2 + 5);
          v77 = *(v75 + 4 * v76);
        }

        v14 = v77 + 1;
        v13 = v76-- <= v58;
      }

      while (!v13);
      if (*(v75 + 4 * v58) == v11)
      {
        goto LABEL_85;
      }
    }

LABEL_195:
    if (v11 >= v14)
    {
      *buf = -1;
      _CIIndexSetAddIndexesInRange(cf, v14, v11, buf, v42);
    }

    goto LABEL_85;
  }

  v86 = *MEMORY[0x1E69E9840];
  v87 = (*(a2 + 5) + 4 * v58);
  v88 = cf;
  v89 = v57;
LABEL_182:

  _CIIndexSetAddSortedIndexes(v88, v87, v89, 1, 0, 0, v42);
}

void __processNodes_block_invoke(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  v58 = 0;
  v57 = 1;
  if (**(a1 + 32))
  {
    return;
  }

  v4 = *(a1 + 48);
  v53 = *(a1 + 40);
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v5 = *(*(v4 + 8 * a2) + 56);
  if (*(v5 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_38;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v7 = setThreadIdAndInfo(*(v5 + 64), sIndexExceptionCallbacks, v5, 0x20000000, add_explicit + 1);
  *buf = v7;
  v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
  v51 = HIDWORD(v7);
  v50 = __PAIR64__(v9, v10);
  *(v8 + 216) = 0;
  v11 = *(v8 + 312);
  v12 = *(v8 + 224);
  if (v12)
  {
    v12(*(v8 + 288));
  }

  v49 = *buf;
  v48 = v51;
  v47 = v50;
  if (!_setjmp(v8))
  {
    v57 = 0;
    v21 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v22 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v21 + 1);
    v45 = HIDWORD(v22);
    *v46 = v22;
    v44 = __PAIR64__(v23, v24);
    v25 = threadData[9 * v22 + 1] + 320 * HIDWORD(v22);
    v26 = *(v25 + 312);
    v27 = *(v25 + 224);
    if (v27)
    {
      v27(*(v25 + 288));
    }

    v43 = *v46;
    v42 = v45;
    v41 = v44;
    if (!_setjmp(v25))
    {
      v58 = 1;
      v35 = *(*(a1 + 48) + 8 * a2);
      _ContentIndexDocSetIteratorProcessIterHits(v35, *(a1 + 76), *(a1 + 64), *(a1 + 68), *(a1 + 72), *(v35 + 34), &v53);
      v58 = 0;
      v36 = threadData[9 * v43 + 1] + 320 * v42;
      *(v36 + 312) = v26;
      v37 = *(v36 + 232);
      if (v37)
      {
        v37(*(v36 + 288));
      }

      dropThreadId(v43, 0, v21 + 1);
      goto LABEL_35;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v40 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v40, 2u);
    }

    *(v25 + 312) = v26;
    v28 = v41;
    if (__THREAD_SLOT_KEY)
    {
      v29 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v29)
      {
        goto LABEL_46;
      }
    }

    else
    {
      makeThreadId();
      v29 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v29)
      {
        goto LABEL_46;
      }
    }

    v30 = v29;
    if (v29 < 0x801)
    {
LABEL_28:
      v31 = &threadData[9 * v30];
      v33 = *(v31 - 4);
      v32 = (v31 - 2);
      if (v33 > v28)
      {
        v34 = v30 - 1;
        do
        {
          CIOnThreadCleanUpPop(v34);
        }

        while (*v32 > v28);
      }

      dropThreadId(v43, 1, v21 + 1);
      CICleanUpReset(v43, HIDWORD(v41));
LABEL_35:
      v38 = threadData[9 * v49 + 1] + 320 * v48;
      *(v38 + 312) = v11;
      v39 = *(v38 + 232);
      if (v39)
      {
        v39(*(v38 + 288));
      }

      dropThreadId(v49, 0, add_explicit + 1);
      goto LABEL_38;
    }

LABEL_46:
    makeThreadId();
    v30 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v46 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v46, 2u);
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

  v14 = v47;
  if (__THREAD_SLOT_KEY)
  {
    v15 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v15)
    {
LABEL_44:
      makeThreadId();
      v16 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_14;
    }
  }

  else
  {
    makeThreadId();
    v15 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  v16 = v15;
  if (v15 >= 0x801)
  {
    goto LABEL_44;
  }

LABEL_14:
  v17 = &threadData[9 * v16];
  v19 = *(v17 - 4);
  v18 = (v17 - 2);
  if (v19 > v14)
  {
    v20 = v16 - 1;
    do
    {
      CIOnThreadCleanUpPop(v20);
    }

    while (*v18 > v14);
  }

  dropThreadId(v49, 1, add_explicit + 1);
  CICleanUpReset(v49, HIDWORD(v47));
LABEL_38:
  CIIndexSetDisposePerThreadCache(&v53);
  if (v58 == 1)
  {
    **(a1 + 56) = 1;
  }

  if (v57 == 1)
  {
    **(a1 + 32) = 1;
  }
}

void _ContentIndexDocSetIteratorProcessIterHits(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, void *a7)
{
  v169 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    v8 = *(a1 + 24);
    v159 = a7;
    if (v8 != 0.0 && *(a1 + 12) == 0.0 && *(a1 + 16) == 0.0)
    {
      v13 = a2;
      v14 = (*(a1 + 48) & 0xFFFFFFFE) == 4;
    }

    else
    {
      v13 = a2;
      v14 = 0;
    }

    makeThreadId();
    v15 = *(a1 + 56);
    if (*(v15 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

      goto LABEL_225;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v167 = 0;
    v166 = 0;
    v17 = setThreadIdAndInfo(*(v15 + 64), sIndexExceptionCallbacks, v15, 0x20000000, add_explicit + 1);
    v167 = __PAIR64__(v17, HIDWORD(v17));
    v166 = __PAIR64__(v18, v19);
    v20 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
    *(v20 + 216) = 0;
    v158 = *(v20 + 312);
    v21 = *(v20 + 224);
    v22 = v20;
    if (v21)
    {
      v21(*(v20 + 288));
    }

    v165 = v167;
    v164 = v166;
    if (_setjmp(v22))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v22 + 312) = v158;
      if ((~*(v22 + 212) & 0xA0000000) == 0)
      {
        v23 = *(v22 + 288);
        if (v23)
        {
          _CIMakeInvalid(v23);
        }
      }

      if (__THREAD_SLOT_KEY)
      {
        v24 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v24)
        {
          goto LABEL_265;
        }
      }

      else
      {
        makeThreadId();
        v24 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v24)
        {
          goto LABEL_265;
        }
      }

      v25 = v24;
      if (v24 < 0x801)
      {
LABEL_18:
        v26 = &threadData[9 * v25];
        v28 = *(v26 - 4);
        v27 = v26 - 2;
        if (v28 > v164)
        {
          v29 = v25 - 1;
          do
          {
            CIOnThreadCleanUpPop(v29);
          }

          while (*v27 > v164);
        }

        dropThreadId(HIDWORD(v165), 1, add_explicit + 1);
        CICleanUpReset(HIDWORD(v165), HIDWORD(v164));
LABEL_225:
        *(a1 + 32) = 1;
        goto LABEL_226;
      }

LABEL_265:
      makeThreadId();
      v25 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_18;
    }

    v157 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v30 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v157 + 1);
    v163 = __PAIR64__(v30, HIDWORD(v30));
    v162 = __PAIR64__(v31, v32);
    v33 = threadData[9 * v30 + 1] + 320 * HIDWORD(v30);
    v156 = *(v33 + 312);
    v34 = *(v33 + 224);
    if (v34)
    {
      v34(*(v33 + 288));
    }

    v161 = v163;
    v160 = v162;
    v35 = _setjmp(v33);
    if (v35)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v33 + 312) = v156;
      if (__THREAD_SLOT_KEY)
      {
        v37 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v37)
        {
          goto LABEL_267;
        }
      }

      else
      {
        makeThreadId();
        v37 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v37)
        {
          goto LABEL_267;
        }
      }

      v38 = v37;
      if (v37 < 0x801)
      {
LABEL_32:
        v39 = &threadData[9 * v38];
        v41 = *(v39 - 4);
        v40 = v39 - 2;
        if (v41 > v160)
        {
          v42 = v38 - 1;
          do
          {
            CIOnThreadCleanUpPop(v42);
          }

          while (*v40 > v160);
        }

        dropThreadId(HIDWORD(v161), 1, v157 + 1);
        CICleanUpReset(HIDWORD(v161), HIDWORD(v160));
LABEL_222:
        v130 = threadData[9 * HIDWORD(v165) + 1] + 320 * v165;
        *(v130 + 312) = v158;
        v131 = *(v130 + 232);
        if (v131)
        {
          v131(*(v130 + 288));
        }

        dropThreadId(HIDWORD(v165), 0, add_explicit + 1);
        goto LABEL_225;
      }

LABEL_267:
      makeThreadId();
      v38 = pthread_getspecific(__THREAD_SLOT_KEY);
      goto LABEL_32;
    }

    v43 = a6;
    v155 = a6;
    v44 = *(a1 + 48);
    if ((v44 - 4) >= 4)
    {
      v48 = *(a1 + 48);
      v60 = v44 == 3;
      v45 = a3;
      v46 = a4;
      v47 = a5;
      if (!v60)
      {
        goto LABEL_46;
      }

      v49 = v13;
      v50 = v155;
      if (!v49)
      {
        goto LABEL_173;
      }

      v35 = ContentIndexDocSetSquashUpdate(a1, a3);
      v43 = a6;
      v47 = a5;
      v46 = a4;
      v45 = a3;
    }

    else
    {
      v45 = a3;
      v46 = a4;
      v47 = a5;
      if (!v14 && !*(a1 + 80))
      {
        v35 = NormalResolvedDocSet(a5);
        v43 = a6;
        v47 = a5;
        v46 = a4;
        v45 = a3;
        *(a1 + 80) = v35;
      }
    }

    v48 = *(a1 + 48);
LABEL_46:
    if (v48 > 4)
    {
      v50 = v155;
      if (v48 > 7)
      {
        if ((v48 - 8) < 2)
        {
          goto LABEL_173;
        }

        goto LABEL_268;
      }

      if (v48 == 5)
      {
        *(a1 + 52) = 0;
        v35 = *(a1 + 96);
        if (!v35)
        {
          goto LABEL_173;
        }

        v73 = *(a1 + 72);
        v74 = *(a1 + 96);
        v75 = 0;
        do
        {
          v76 = *v73++;
          v56 = v75 | *(v76 + 52);
          *(a1 + 52) = v56;
          v75 = v56;
          --v74;
        }

        while (v74);
      }

      else if (v48 == 6)
      {
        *(a1 + 52) = 0;
        v35 = *(a1 + 96);
        if (!v35)
        {
          goto LABEL_173;
        }

        v66 = *(a1 + 72);
        v67 = *(a1 + 96);
        v68 = 0;
        do
        {
          v69 = *v66++;
          v70 = *(v69 + 52);
          if (v70 == 1)
          {
            v71 = v43;
          }

          else
          {
            v71 = 1;
          }

          if (!v71)
          {
            v68 = 3;
          }

          v72 = v68 | v70;
          *(a1 + 52) = v68 | v70;
          v68 |= v70;
          --v67;
        }

        while (v67);
        v56 = v72;
      }

      else if (v155)
      {
        v35 = *(a1 + 96);
        if (!v35)
        {
          goto LABEL_107;
        }

        v62 = *(a1 + 72);
        v63 = *(a1 + 52);
        v64 = *(a1 + 96);
        do
        {
          v65 = *v62++;
          v56 = v63 | *(v65 + 52);
          *(a1 + 52) = v56;
          v63 = v56;
          --v64;
        }

        while (v64);
      }

      else
      {
        v77 = *(a1 + 72);
        v78 = *(*v77 + 52);
        *(a1 + 52) = v78;
        if (v78 > 2)
        {
          goto LABEL_107;
        }

        v79 = *(a1 + 96);
        if (v79 < 2)
        {
          goto LABEL_107;
        }

        v80 = v79 - 1;
        v81 = v77 + 1;
        do
        {
          v82 = *v81++;
          v83 = *(v82 + 52);
          if (v83 == 3)
          {
            v83 = 1;
          }

          v84 = v78 | v83;
          *(a1 + 52) = v78 | v83;
          v78 |= v83;
          --v80;
        }

        while (v80);
        v56 = v84;
        v35 = v79;
      }
    }

    else
    {
      v50 = v155;
      if (v48 < 4)
      {
        goto LABEL_173;
      }

      if (v48 != 4)
      {
        goto LABEL_268;
      }

      *(a1 + 52) = 0;
      v35 = *(a1 + 96);
      if (!v35)
      {
        goto LABEL_173;
      }

      v51 = *(a1 + 72);
      v52 = 0;
      v53 = v51;
      v54 = *(a1 + 96);
      do
      {
        v55 = *v53++;
        v56 = v52 | *(v55 + 52);
        *(a1 + 52) = v56;
        v52 = v56;
        --v54;
      }

      while (v54);
      v57 = v51;
      v58 = v35;
      while (1)
      {
        v59 = *(*v57 + 52);
        if (v50)
        {
          if (v59 == 1)
          {
            break;
          }
        }

        if (v56)
        {
          v60 = v59 != 3 && v43 == 0;
          if (v60)
          {
            v61 = 1;
            goto LABEL_94;
          }
        }

        ++v57;
        if (!--v58)
        {
          goto LABEL_95;
        }
      }

      v61 = 3;
LABEL_94:
      *(a1 + 52) = v61;
      v56 = v61;
    }

LABEL_95:
    if (v48 <= 4)
    {
      v85 = v56 != 1 || v14;
      if ((v85 & 1) == 0)
      {
        if (!*(a1 + 88))
        {
          v86 = NormalResolvedDocSet(v47);
          v47 = a5;
          v46 = a4;
          v45 = a3;
          *(a1 + 88) = v86;
          v35 = *(a1 + 96);
        }

        if (v35)
        {
          v87 = 0;
          do
          {
            v35 = *(*(a1 + 72) + 8 * v87);
            if (*(v35 + 52) == 3)
            {
              if (*(v35 + 48) == 1)
              {
                v96 = *(a1 + 88);
                *buf = -1;
                v35 = _CIIndexSetAddIndexesInRange(v96, v45, v46, buf, v36);
                v46 = a4;
                v45 = a3;
                v47 = a5;
              }

              else
              {
                v35 = ContentIndexDocSetGrabBitVector(v35);
                v46 = a4;
                v45 = a3;
                v47 = a5;
                if (v35)
                {
                  CIIndexSetAddRange(*(a1 + 88), v35, a3, a4, v36);
                  v47 = a5;
                  v46 = a4;
                  v45 = a3;
                }
              }
            }

            ++v87;
            v97 = *(a1 + 96);
          }

          while (v87 < v97);
          if (v97)
          {
            v107 = 0;
            while (1)
            {
              v109 = *(*(a1 + 72) + 8 * v107);
              if (*(v109 + 52) == 1)
              {
                break;
              }

LABEL_153:
              ++v107;
              v108 = *(a1 + 96);
              if (v107 >= v108)
              {
                v50 = v155;
                if (v108)
                {
                  v115 = 0;
                  do
                  {
                    v35 = *(*(a1 + 72) + 8 * v115);
                    if (!*(v35 + 52))
                    {
                      v35 = ContentIndexDocSetGrabBitVector(v35);
                      v47 = a5;
                      v46 = a4;
                      v45 = a3;
                      if (v35)
                      {
                        CIIndexSetRemoveRange(*(a1 + 88), v35, a3, a4);
                        v47 = a5;
                        v46 = a4;
                        v45 = a3;
                      }
                    }

                    ++v115;
                  }

                  while (v115 < *(a1 + 96));
                }

                goto LABEL_173;
              }
            }

            v35 = *(*(a1 + 72) + 8 * v107);
            v110 = *(v109 + 48);
            if (v110 > 9)
            {
              goto LABEL_269;
            }

            v111 = 1 << v110;
            if ((v111 & 0x307) != 0)
            {
LABEL_157:
              v112 = 0;
              v35 = ContentIndexDocSetGrabBitVector(v35);
              if (!v35)
              {
                goto LABEL_159;
              }

              goto LABEL_158;
            }

            if ((v111 & 0xF0) != 0)
            {
              v113 = (v109 + 88);
            }

            else
            {
              v114 = *(v109 + 64);
              if (!v114)
              {
                goto LABEL_157;
              }

              v113 = (v114 + 96);
            }

            v112 = *v113;
            v35 = ContentIndexDocSetGrabBitVector(v35);
            if (!v35)
            {
LABEL_159:
              v45 = a3;
              v46 = a4;
              v47 = a5;
              if (v112)
              {
                CIIndexSetAddRange(*(a1 + 88), v112, a3, a4, v36);
                v47 = a5;
                v46 = a4;
                v45 = a3;
              }

              goto LABEL_153;
            }

LABEL_158:
            CIIndexSetRemoveRange(*(a1 + 88), v35, a3, a4);
            goto LABEL_159;
          }
        }
      }

      goto LABEL_173;
    }

    if ((v48 - 5) >= 2)
    {
      if ((v48 - 8) < 2)
      {
        goto LABEL_173;
      }

      if (v48 != 7)
      {
        goto LABEL_268;
      }

LABEL_107:
      if (!v14 && *(a1 + 52) == 1)
      {
        if (!*(a1 + 88))
        {
          v35 = NormalResolvedDocSet(v47);
          v47 = a5;
          v46 = a4;
          v45 = a3;
          *(a1 + 88) = v35;
        }

        if (*(a1 + 96))
        {
          v88 = 0;
          while (1)
          {
            v90 = *(*(a1 + 72) + 8 * v88);
            v35 = v90;
            v91 = *(v90 + 52);
            if (v91 != 3)
            {
              break;
            }

            v35 = ContentIndexDocSetGrabBitVector(v90);
            v47 = a5;
            v46 = a4;
            v45 = a3;
            v89 = v35;
            if (v35)
            {
              goto LABEL_114;
            }

LABEL_115:
            if (++v88 >= *(a1 + 96))
            {
              goto LABEL_173;
            }
          }

          if (v91 != 1)
          {
            goto LABEL_115;
          }

          v92 = *(v90 + 48);
          if (v92 > 9)
          {
            goto LABEL_269;
          }

          v93 = 1 << v92;
          if ((v93 & 0x307) != 0)
          {
            goto LABEL_115;
          }

          if ((v93 & 0xF0) != 0)
          {
            v94 = (v90 + 88);
          }

          else
          {
            v95 = *(v90 + 64);
            if (!v95)
            {
              goto LABEL_115;
            }

            v94 = (v95 + 96);
          }

          v89 = *v94;
          if (!*v94)
          {
            goto LABEL_115;
          }

LABEL_114:
          CIIndexSetAddRange(*(a1 + 88), v89, a3, a4, v36);
          v47 = a5;
          v46 = a4;
          v45 = a3;
          goto LABEL_115;
        }
      }

LABEL_173:
      v116 = *(a1 + 48);
      v117 = v116;
      if (v45 == 1 && (v116 == 9 || (v116 & 0xFFFFFFFC) == 4))
      {
        v35 = CIIndexSetShrink(*(a1 + 88), v36);
        v47 = a5;
        v46 = a4;
        v45 = a3;
        v117 = *(a1 + 48);
      }

      if (v117 <= 4)
      {
        if (v117 < 4)
        {
          goto LABEL_215;
        }

        if (v117 == 4)
        {
          if (!v14)
          {
            v119 = *(a1 + 96);
            if (v119)
            {
              v120 = 0;
              while (1)
              {
                v35 = *(*(a1 + 72) + 8 * v120);
                if (v50 && *(v35 + 52))
                {
                  goto LABEL_196;
                }

                v123 = *(v35 + 48);
                if (v123 <= 3)
                {
                  if (v123 > 1)
                  {
                    if (v123 == 2)
                    {
                      goto LABEL_196;
                    }

LABEL_208:
                    v125 = *(v35 + 64);
                    if (!v125)
                    {
                      goto LABEL_196;
                    }

                    v124 = *(v125 + 88);
                    if (!v124)
                    {
                      goto LABEL_196;
                    }

LABEL_201:
                    CIIndexSetAddRange(*(a1 + 80), v124, a3, a4, v36);
                    v46 = a4;
                    v45 = a3;
                    v119 = *(a1 + 96);
                    goto LABEL_196;
                  }

                  if (v123)
                  {
                    if (v123 == 1)
                    {
                      v126 = *(a1 + 80);
                      *buf = -1;
                      _CIIndexSetAddIndexesInRange(v126, v45, v46, buf, v36);
                      v45 = a3;
                      goto LABEL_215;
                    }

LABEL_269:
                    assert_invalid_doc_type(v35);
                  }
                }

                else
                {
                  if ((v123 - 4) >= 4)
                  {
                    if (v123 == 8)
                    {
                      goto LABEL_208;
                    }

                    if (v123 != 9)
                    {
                      goto LABEL_269;
                    }
                  }

                  v124 = *(*(*(a1 + 72) + 8 * v120) + 80);
                  if (v124)
                  {
                    goto LABEL_201;
                  }
                }

LABEL_196:
                if (++v120 >= v119)
                {
                  goto LABEL_215;
                }
              }
            }
          }

          goto LABEL_215;
        }

LABEL_268:
        v35 = a1;
        goto LABEL_269;
      }

      if (v117 > 7)
      {
        if ((v117 - 8) < 2)
        {
          goto LABEL_215;
        }

        goto LABEL_268;
      }

      if (v117 == 5)
      {
        if (!v14 && (!v50 || *(a1 + 52) != 3))
        {
          v136 = *(a1 + 96);
          if (!*(a1 + 80))
          {
            v35 = NormalResolvedDocSet(v47);
            v45 = a3;
            *(a1 + 80) = v35;
          }

          if (v136)
          {
            v137 = 8 * v136;
            MEMORY[0x1EEE9AC00](v35);
            bzero(&v153 - ((8 * v136 + 15) & 0xFFFFFFFF0), 8 * v136);
            v138 = 0;
            do
            {
              v139 = ContentIndexDocSetGrabBitVector(*(*(a1 + 72) + v138));
              *(&v153 + v138 - ((v137 + 15) & 0xFFFFFFFF0)) = v139;
              if (!v139)
              {
                goto LABEL_245;
              }

              v138 += 8;
            }

            while (v137 != v138);
            CIIndexSetAddIntersectionInRange(*(a1 + 80), (&v153 - ((v137 + 15) & 0xFFFFFFFF0)), v136, a3, a4);
LABEL_245:
            v45 = a3;
            goto LABEL_215;
          }
        }

        goto LABEL_215;
      }

      if (v117 == 6)
      {
        if (!v14 && (!v50 || !*(a1 + 52)))
        {
          _CIIndexSetClearRange(*(a1 + 80), v45, v46);
          v133 = **(a1 + 72);
          if (!*(v133 + 52) || *(v133 + 48) >= 4u)
          {
            v134 = ContentIndexDocSetGrabBitVector(v133);
            if (v134)
            {
              CIIndexSetAddRange(*(a1 + 80), v134, a3, a4, v135);
            }
          }

          CIIndexSetInvertRange(*(a1 + 80), a3, a4);
          v45 = a3;
        }

        goto LABEL_215;
      }

      if (v14 || v50 && *(a1 + 52) || (v121 = ContentIndexDocSetGrabBitVector(**(a1 + 72)), v45 = a3, !v121) || (CIIndexSetAddRange(*(a1 + 80), v121, a3, a4, v36), v45 = a3, *(a1 + 96) < 2u))
      {
LABEL_215:
        if (v45 == 1)
        {
          v127 = *(a1 + 48);
          if (v127 == 9 || (v127 & 0xFFFFFFFC) == 4)
          {
            CIIndexSetShrink(*(a1 + 80), v36);
          }
        }

        v128 = threadData[9 * HIDWORD(v161) + 1] + 320 * v161;
        *(v128 + 312) = v156;
        v129 = *(v128 + 232);
        if (v129)
        {
          v129(*(v128 + 288));
        }

        dropThreadId(HIDWORD(v161), 0, v157 + 1);
        goto LABEL_222;
      }

      v154 = a4 + 32;
      v122 = 1;
      while (1)
      {
        v140 = *(*(a1 + 72) + 8 * v122);
        v141 = *(v140 + 52);
        v142 = ContentIndexDocSetGrabBitVector(v140);
        v143 = v142;
        v45 = a3;
        if (!v141)
        {
          break;
        }

        if (v142)
        {
          v144 = *(*(a1 + 72) + 8 * v122);
          v35 = v144;
          v145 = *(v144 + 48);
          if (v145 > 9)
          {
            goto LABEL_269;
          }

          v146 = 1 << v145;
          if ((v146 & 0x307) == 0)
          {
            if ((v146 & 0xF0) != 0)
            {
              v147 = *(v144 + 88);
              if (!v147)
              {
                goto LABEL_247;
              }
            }

            else
            {
              v152 = *(v144 + 64);
              if (!v152)
              {
                goto LABEL_247;
              }

              v147 = *(v152 + 96);
              if (!v147)
              {
                goto LABEL_247;
              }
            }

            if (*(v35 + 52) != 1)
            {
              goto LABEL_247;
            }

            v153 = v147;
            v148 = *(*(v35 + 56) + 68);
            if (a4 == v148)
            {
              v149 = *(*(v35 + 56) + 68);
            }

            else
            {
              v149 = v154 - ((a4 - v148) & 0x1F);
            }

            v150 = CIIndexSetCreateWithRangeWithCache(a3, v149, v159);
            CIIndexSetAddRange(v150, v143, a3, a4, v151);
            CIIndexSetRemoveRange(v150, v153, a3, a4);
            CIIndexSetRemoveRange(*(a1 + 80), v150, a3, a4);
            CIIndexSetReleaseToPerThreadCache(v150, v159);
            goto LABEL_246;
          }
        }

LABEL_247:
        if (++v122 >= *(a1 + 96))
        {
          goto LABEL_215;
        }
      }

      if (!v142)
      {
        goto LABEL_247;
      }

      CIIndexSetRemoveRange(*(a1 + 80), v142, a3, a4);
LABEL_246:
      v45 = a3;
      goto LABEL_247;
    }

    v98 = v56 != 1 || v14;
    if (v98)
    {
      goto LABEL_173;
    }

    if (!*(a1 + 88))
    {
      v99 = NormalResolvedDocSet(v47);
      v47 = a5;
      v46 = a4;
      v45 = a3;
      *(a1 + 88) = v99;
      v35 = *(a1 + 96);
    }

    if (!v35)
    {
      goto LABEL_173;
    }

    v100 = v35;
    v101 = 0;
    while (1)
    {
      v102 = *(*(a1 + 72) + 8 * v101);
      if (*(v102 + 52) != 1)
      {
        goto LABEL_141;
      }

      v35 = *(*(a1 + 72) + 8 * v101);
      v103 = *(v102 + 48);
      if (v103 > 9)
      {
        goto LABEL_269;
      }

      v104 = 1 << v103;
      if ((v104 & 0x307) != 0)
      {
        goto LABEL_141;
      }

      if ((v104 & 0xF0) != 0)
      {
        v105 = *(v102 + 88);
        if (!v105)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v106 = *(v102 + 64);
        if (!v106)
        {
          goto LABEL_141;
        }

        v105 = *(v106 + 96);
        if (!v105)
        {
          goto LABEL_141;
        }
      }

      CIIndexSetAddRange(*(a1 + 88), v105, a3, a4, v36);
      v47 = a5;
      v46 = a4;
      v45 = a3;
      v100 = *(a1 + 96);
LABEL_141:
      if (++v101 >= v100)
      {
        goto LABEL_173;
      }
    }
  }

LABEL_226:
  v132 = *MEMORY[0x1E69E9840];
}

intptr_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3(uint64_t a1)
{
  ContentIndexDocSetIteratorDispose(*(a1 + 32));
  v1 = freeSemaphore;

  return dispatch_semaphore_signal(v1);
}

uint64_t _CIIndexSetEnumeratorNext(unsigned int *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[6];
  if (!v3)
  {
    v26 = a1[2];
    if (v26 >= -2 - *(v1 + 16))
    {
      return 0;
    }

    a1[2] = v26 + 1;
    v4 = *(v1 + 4 * v26 + 32);
    if (v4 < v2)
    {
      return 0;
    }

    return v4;
  }

  v4 = *a1;
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v5 = *(v1 + 24);
      v6 = v5 - v4;
      if (v5 < v4 || v4 < v2)
      {
        return 0;
      }

      v8 = *(v1 + 40);
      v9 = v6 >> 5;
      v10 = *(v8 + 4 * v9);
      if (((v10 >> v6) & 1) == 0)
      {
        v11 = v5 - v2;
        v12 = (v5 - v2) >> 5;
        v13 = (v5 - v2) & 0x1F;
        if (v9 == v12)
        {
          v14 = v13 + 1;
          v15 = masks[v6 & 0x1F];
          if ((v6 & 0x1F) != v14)
          {
            v15 = masks[v14] & ~v15;
          }

          v4 = v15 & v10;
          if (v4)
          {
            v16 = v5 - (v6 & 0xFFFFFFE0);
            v17 = __clz(__rbit32(v4));
            v18 = v16 + ~v17;
            v19 = v16 - v17;
LABEL_54:
            *a1 = v18;
            return v19;
          }

          return v4;
        }

        v34 = v10 & ~masks[v6 & 0x1F];
        if (v34)
        {
          v35 = v5 - (v6 & 0xFFFFFFE0);
          v36 = __rbit32(v34);
LABEL_53:
          v42 = __clz(v36);
          v18 = v35 + ~v42;
          v19 = v35 - v42;
          goto LABEL_54;
        }

        while (1)
        {
          v40 = v9 + 1;
          if (v9 + 1 >= v12)
          {
            break;
          }

          v41 = *(v8 + 4 + 4 * v9++);
          if (v41)
          {
            v35 = v5 - 32 * v40;
            v36 = __rbit32(v41);
            goto LABEL_53;
          }
        }

        v43 = masks[v13 + 1] & *(v8 + 4 * v12);
        if (!v43)
        {
          return 0;
        }

        v44 = v5 - (v11 & 0xFFFFFFE0);
        v45 = __clz(__rbit32(v43));
        v4 = v44 - v45;
        *a1 = v4;
        if (v44 == v45)
        {
          return v4;
        }

        v32 = v44 + ~v45;
LABEL_33:
        *a1 = v32;
        return v4;
      }

LABEL_32:
      v32 = v4 - 1;
      goto LABEL_33;
    }

    v27 = *(v1 + 36);
    v28 = a1[2];
    if (v28 < v27)
    {
      v29 = *(v1 + 40);
      v30 = v28 + 1;
      a1[2] = v28 + 1;
      v4 = *(v29 + 4 * v28);
      if (v4 >= v2)
      {
        if (v30 == *(v1 + 36))
        {
          a1[2] = *(v1 + 32) + v30 - *(v1 + 16);
          return v4;
        }

        return v4;
      }

      return 0;
    }

    if (v27 >= *(v1 + 16))
    {
      return 0;
    }

    if (v28 >= *(v1 + 32))
    {
      return 0;
    }

    v33 = *(v1 + 40);
    a1[2] = v28 + 1;
    v4 = *(v33 + 4 * v28);
    if (v4 < v2)
    {
      return 0;
    }

    return v4;
  }

  if (v4 < v2)
  {
    return 0;
  }

  v20 = *(v1 + 16);
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = *(v1 + 36);
  LODWORD(v22) = a1[2];
  if (v22 < v21)
  {
    v23 = v21;
    v22 = v22;
    v24 = *a1;
    while (1)
    {
      v4 = v24;
      v25 = *(*(v1 + 40) + 4 * v22);
      v24 = (v24 - 1);
      *a1 = v24;
      if (v4 > v25)
      {
        return v4;
      }

      if (v24 < v2)
      {
        return 0;
      }

      a1[2] = v22 + 1;
      v21 = *(v1 + 36);
      if (v22 + 1 == v21)
      {
        LODWORD(v22) = v22 + 1 - v20 + *(v1 + 32);
        a1[2] = v22;
        v21 = *(v1 + 36);
        v4 = v24;
        break;
      }

      if (v23 == ++v22)
      {
        v4 = v24;
        break;
      }
    }
  }

  if (v21 < v20)
  {
    v37 = 4 * v22;
    while (*(v1 + 32) > v22)
    {
      v38 = *(*(v1 + 40) + v37);
      v39 = (v4 - 1);
      *a1 = v39;
      if (v4 > v38)
      {
        return v4;
      }

      if (v39 < v2)
      {
        return 0;
      }

      LODWORD(v22) = v22 + 1;
      a1[2] = v22;
      v37 += 4;
      v4 = (v4 - 1);
      if (*(v1 + 36) >= v20)
      {
        goto LABEL_49;
      }
    }
  }

  v39 = v4;
LABEL_49:
  *a1 = v39 - 1;
  return v39;
}