uint64_t ContentIndexDocSet_Step(uint64_t result, void *a2, _BYTE *a3)
{
  v168 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_18;
  }

  v3 = result;
  if (*(result + 53))
  {
    result = 0;
    goto LABEL_18;
  }

  v4 = *(result + 80);
  if (*(result + 56) != 1)
  {
    v153 = 1;
    if (!v4 || !*(v4 + 56) || (*(v4 + 48) | 2) == 2)
    {
      v8 = *(*result + 24);
      if (v8)
      {
        posreadunlock(v8);
        *(*v3 + 24) = 0;
      }

      goto LABEL_14;
    }

    v11 = a2;
    if (*(result + 72) >= 1)
    {
      v13 = 80;
      v14 = *(result + 72);
      while (!ContentIndexDocSetContainsPhrase(*(v3 + v13)))
      {
        v13 += 8;
        if (!--v14)
        {
          goto LABEL_23;
        }
      }

      v9 = ContentIndexDocSet_PositionRead(v3, v11, *(v4 + 33), a3, v15);
      goto LABEL_15;
    }

LABEL_23:
    v16 = *MEMORY[0x1E695E480];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v18 = CFSetCreateMutable(v16, 0, 0);
    v19 = *(v4 + 56);
    if (*(v19 + 8) != 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      }

LABEL_35:
      v9 = 35;
      v28 = 0;
      v29 = v11;
      if (!Mutable)
      {
LABEL_37:
        if (v18)
        {
          CFRelease(v18);
          v29 = v11;
        }

        if (v153 != 1)
        {
          *v29 += v28;
          goto LABEL_15;
        }

        if (*v3)
        {
          v30 = *(*v3 + 8);
          if (v30)
          {
            v31 = *(v30 + 4488);
            if (v31)
            {
              bzero(buf, 0x400uLL);
              v32 = fd_realpath(v31, buf);
              v33 = *__error();
              v34 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *v154 = 136315906;
                v155 = "ContentIndexDocSet_Step";
                v156 = 1024;
                v157 = 3974;
                v158 = 2048;
                v159 = v3;
                v160 = 2080;
                v161 = v32;
                _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Caught assertion for iterator %p %s", v154, 0x26u);
              }

              *__error() = v33;
            }
          }
        }

        *(v3 + 58) = 1;
        *(v3 + 53) = 1;
LABEL_14:
        v9 = 0;
LABEL_15:
        result = v9;
        goto LABEL_18;
      }

LABEL_36:
      CFRelease(Mutable);
      v29 = v11;
      goto LABEL_37;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    *v154 = 0;
    v152 = 0;
    v151 = 0;
    v21 = setThreadIdAndInfo(*(v19 + 64), sIndexExceptionCallbacks, v19, 0x20000000, add_explicit + 1);
    v152 = HIDWORD(v21);
    *v154 = v21;
    v151 = __PAIR64__(v22, v23);
    v24 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
    *(v24 + 216) = 0;
    v131 = *(v24 + 312);
    v25 = *(v24 + 224);
    v26 = v24;
    if (v25)
    {
      v25(*(v24 + 288));
    }

    v150 = *v154;
    v149 = v152;
    v148 = v151;
    if (_setjmp(v26))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v26 + 312) = v131;
      if ((~*(v26 + 212) & 0xA0000000) == 0)
      {
        v27 = *(v26 + 288);
        if (v27)
        {
          _CIMakeInvalid(v27);
        }
      }

      CIOnThreadCleanUpReset(v148);
      dropThreadId(v150, 1, add_explicit + 1);
      CICleanUpReset(v150, HIDWORD(v148));
      goto LABEL_35;
    }

    v147 = 0;
    v146 = 0;
    v145 = 0;
    v130 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v35 = setThreadIdAndInfo(-1, sIteratorExceptionCallbacks, *(v3 + 16), 0, v130 + 1);
    v147 = v35;
    v145 = v37;
    v146 = __PAIR64__(HIDWORD(v35), v36);
    v38 = threadData[9 * v35 + 1] + 320 * HIDWORD(v35);
    v129 = *(v38 + 312);
    v39 = *(v38 + 224);
    if (v39)
    {
      v39(*(v38 + 288));
    }

    v144 = v147;
    v143 = HIDWORD(v146);
    v142 = __PAIR64__(v146, v145);
    if (_setjmp(v38))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught assertion", buf, 2u);
      }

      *(v38 + 312) = v129;
      CIOnThreadCleanUpReset(v142);
      dropThreadId(v144, 1, v130 + 1);
      CICleanUpReset(v144, HIDWORD(v142));
      v9 = 35;
      v28 = 0;
      v40 = v131;
      goto LABEL_112;
    }

    v41 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v42 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v41 + 1);
    v140 = HIDWORD(v42);
    v141 = v42;
    v138 = v44;
    v139 = v43;
    v45 = threadData[9 * v42 + 1] + 320 * HIDWORD(v42);
    v126 = *(v45 + 312);
    v46 = *(v45 + 224);
    if (v46)
    {
      v46(*(v45 + 288));
    }

    v137 = v141;
    v136 = v140;
    v135 = __PAIR64__(v139, v138);
    v127 = _setjmp(v45);
    if (v127)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v45 + 312) = v126;
      CIOnThreadCleanUpReset(v135);
      dropThreadId(v137, 1, v41 + 1);
      CICleanUpReset(v137, HIDWORD(v135));
      locked = 0;
LABEL_106:
      v40 = v131;
      v153 = 0;
      v101 = threadData[9 * v144 + 1] + 320 * v143;
      *(v101 + 312) = v129;
      v102 = *(v101 + 232);
      if (v102)
      {
        v102(*(v101 + 288));
      }

      dropThreadId(v144, 0, v130 + 1);
      if (v127)
      {
        v103 = 35;
      }

      else
      {
        v103 = 0;
      }

      v28 = locked;
      v9 = v103;
LABEL_112:
      v104 = threadData[9 * v150 + 1] + 320 * v149;
      *(v104 + 312) = v40;
      v105 = *(v104 + 232);
      if (v105)
      {
        v105(*(v104 + 288));
      }

      dropThreadId(v150, 0, add_explicit + 1);
      v29 = v11;
      if (!Mutable)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v128 = v41;
    v48 = v3 + 80;
    if (*(v3 + 72))
    {
      v49 = 0;
      do
      {
        v50 = v49;
        ContentIndexDocSetIteratorFlatten(*(v48 + 8 * v49), Mutable, v18, 0);
        v49 = v50 + 1;
      }

      while (v50 + 1 < *(v3 + 72));
    }

    if (*(v3 + 52))
    {
      v51 = *(v3 + 16);
      v52 = *(v51 + 104);
      v53 = *(v51 + 40);
      v54 = *(v51 + 56);
      v55 = *(v51 + 72);
      v56 = *(v51 + 80);
      v57 = *(v51 + 88);
      v58 = *(v51 + 96);
      v59 = *(v51 + 48);
      v133 = 0;
      v134 = 0;
      if (v59)
      {
        *(v51 + 48) = -1;
      }

      *(v51 + 104) = v52;
      *(v51 + 40) = v53;
      *(v51 + 56) = v54;
      *(v51 + 72) = v55;
      *(v51 + 80) = v56;
      *(v51 + 88) = v57;
      *(v51 + 96) = v58;
      BulkPayloadIterator_Step(v51, &v134, &v133);
      *(v3 + 54) = 0;
      v61 = *(v3 + 32);
      v60 = *(v3 + 36);
      v62 = v133;
      if (v60 <= v133)
      {
        v63 = v133;
      }

      else
      {
        v63 = *(v3 + 36);
      }

      *(v3 + 44) = v63;
      if (dword_1EBF46AF4 >= 5)
      {
        v124 = v60;
        v125 = v61;
        v110 = *__error();
        v111 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          v112 = *(v3 + 32);
          v113 = *(v3 + 36);
          *buf = 67109888;
          *v163 = v134;
          *&v163[4] = 1024;
          *&v163[6] = v62;
          v164 = 1024;
          v165 = v112;
          v166 = 1024;
          v167 = v113;
          _os_log_impl(&dword_1C278D000, v111, OS_LOG_TYPE_DEFAULT, "Got (%d to %d) Squashed (%d to %d)", buf, 0x1Au);
        }

        *__error() = v110;
        v60 = v124;
        v61 = v125;
      }

      v118 = *(v3 + 28);
      v119 = *(v3 + 8);
      v64 = v60;
      processLeaves(v18, v118, 0, v61, v60, v119);
      processNodes(Mutable, v118, 0, v61, v64, v119);
      if (dword_1EBF46AF4 < 5)
      {
        goto LABEL_83;
      }

      v65 = *__error();
      v66 = _SILogForLogForCategory(10);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
LABEL_128:
        *__error() = v65;
LABEL_83:
        if (*(v3 + 72) >= 1)
        {
          v85 = 0;
          do
          {
            v86 = *(v48 + 8 * v85);
            v87 = ContentIndexDocSetSquashUpdate(v86, 0);
            v88 = *(v3 + 32);
            if (v87 > v88)
            {
              v88 = ContentIndexDocSetSquashUpdate(v86, 0);
            }

            *(v3 + 32) = v88;
            if (dword_1EBF46AF4 >= 5)
            {
              v122 = *__error();
              v89 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                v90 = *(v3 + 32);
                v91 = *(v3 + 36);
                *buf = 67109376;
                *v163 = v90;
                *&v163[4] = 1024;
                *&v163[6] = v91;
                _os_log_impl(&dword_1C278D000, v89, OS_LOG_TYPE_DEFAULT, "Finished iterator. Squashed (0 to %d) end:  %d", buf, 0xEu);
              }

              *__error() = v122;
            }

            ++v85;
          }

          while (v85 < *(v3 + 72));
        }

        ContentIndexDocSetIteratorProcessIterHits(0, 1, *(v3 + 32), *(v3 + 28), Mutable, v18, *(v3 + 8));
        *(v3 + 44) = 1;
        *(v3 + 53) = 1;
        v92 = ContentIndexDocSetGrabBitVector(*(v3 + 80));
        if (v92)
        {
          locked = lockedCountItemsInRange(v92, *(v3 + 44), *(v3 + 40) - 1, v93);
        }

        else
        {
          locked = 0;
        }

        if (dword_1EBF46AF4 >= 5)
        {
          v106 = *__error();
          v107 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = *(v3 + 44);
            v109 = *(v3 + 40) - 1;
            *buf = 67109376;
            *v163 = v108;
            *&v163[4] = 1024;
            *&v163[6] = v109;
            _os_log_impl(&dword_1C278D000, v107, OS_LOG_TYPE_DEFAULT, "OID Range %d to %d", buf, 0xEu);
          }

          *__error() = v106;
        }

        if (*(v4 + 33) == 1)
        {
          v94 = (*(v3 + 40) - *(v3 + 44)) - locked;
          locked = v94 & ~(v94 >> 63);
        }

        v95 = *__error();
        v96 = _SILogForLogForCategory(10);
        v97 = 2 * (dword_1EBF46AF4 < 4);
        if (os_log_type_enabled(v96, v97))
        {
          *buf = 134217984;
          *v163 = locked;
          _os_log_impl(&dword_1C278D000, v96, v97, "Found: %ld", buf, 0xCu);
        }

        *__error() = v95;
        v98 = *(v3 + 32);
        if (v98 >= v133)
        {
          v98 = v133;
        }

        *(v3 + 32) = v134;
        *(v3 + 36) = v98;
        v99 = threadData[9 * v137 + 1] + 320 * v136;
        *(v99 + 312) = v126;
        v100 = *(v99 + 232);
        if (v100)
        {
          v100(*(v99 + 288));
        }

        dropThreadId(v137, 0, v128 + 1);
        goto LABEL_106;
      }

      v67 = *(v3 + 32);
      v68 = *(v3 + 36);
      *buf = 67109376;
      *v163 = v67;
      *&v163[4] = 1024;
      *&v163[6] = v68;
      v69 = "Range %d to %d";
    }

    else
    {
      v70 = *(v3 + 28);
      v71 = *(v3 + 24) + 1;
      v72 = v70;
      if (v71 <= v70)
      {
        ContentIndexDocSetIteratorProcessIterHits(1, *(v3 + 24) + 1, v70, *(v3 + 28), Mutable, v18, *(v3 + 8));
        v72 = v70;
      }

      if (dword_1EBF46AF4 >= 5)
      {
        v132 = v72;
        v114 = v71;
        v123 = *__error();
        v115 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v163 = v114;
          *&v163[4] = 1024;
          *&v163[6] = v132;
          _os_log_impl(&dword_1C278D000, v115, OS_LOG_TYPE_DEFAULT, "Updates from %d to %d", buf, 0xEu);
        }

        *__error() = v123;
        v71 = v114;
        v72 = v132;
      }

      *(v3 + 52) = 1;
      *(v3 + 54) = 1;
      *(v3 + 32) = v71;
      *(v3 + 36) = v72;
      if (v70 + 1 < *(*v3 + 36))
      {
        v73 = v70 + 1;
      }

      else
      {
        v73 = *(*v3 + 36);
      }

      *(v3 + 40) = v73;
      *(v3 + 44) = v71;
      v74 = *(v3 + 16);
      v75 = *(v74 + 104);
      v76 = *(v74 + 40);
      v77 = *(v74 + 56);
      v78 = *(v74 + 72);
      v79 = *(v74 + 80);
      v80 = *(v74 + 88);
      v81 = *(v74 + 96);
      *(v3 + 32) = v71;
      *(v3 + 36) = v72;
      v82 = *(v74 + 48);
      v133 = v72;
      v134 = v71;
      if (v82)
      {
        *(v74 + 48) = -1;
      }

      *(v74 + 104) = v75;
      *(v74 + 40) = v76;
      *(v74 + 56) = v77;
      *(v74 + 72) = v78;
      *(v74 + 80) = v79;
      *(v74 + 88) = v80;
      *(v74 + 96) = v81;
      BulkPayloadIterator_Step(v74, &v134, &v133);
      v83 = *(v3 + 32);
      v121 = *(v3 + 36);
      v84 = *(v3 + 28);
      v120 = *(v3 + 8);
      processLeaves(v18, v84, 0, v83, v121, v120);
      processNodes(Mutable, v84, 0, v83, v121, v120);
      if (dword_1EBF46AF4 < 5)
      {
        goto LABEL_83;
      }

      v65 = *__error();
      v66 = _SILogForLogForCategory(10);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_128;
      }

      v116 = *(v3 + 32);
      v117 = *(v3 + 36);
      *buf = 67109376;
      *v163 = v116;
      *&v163[4] = 1024;
      *&v163[6] = v117;
      v69 = "1 Disk from %d to %d";
    }

    _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, v69, buf, 0xEu);
    goto LABEL_128;
  }

  v5 = *(*result + 24);
  if (v5)
  {
    v6 = a2;
    posreadunlock(v5);
    a2 = v6;
    *(*v3 + 24) = 0;
  }

  if (*(v4 + 33))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v3 + 28);
  }

  result = 0;
  *a2 = v7;
LABEL_18:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ContentIndexDocSetContainsPhrase(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((v1 - 4) >= 4)
  {
    return (v1 - 8) <= 1;
  }

  v3 = *(a1 + 96);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  LOBYTE(result) = 0;
  v6 = 8 * v3;
  do
  {
    if (result)
    {
      result = 1;
    }

    else
    {
      result = ContentIndexDocSetContainsPhrase(*(*(a1 + 72) + v4));
    }

    v4 += 8;
  }

  while (v6 != v4);
  return result;
}

void ContentIndexDocSetIteratorFlatten(uint64_t a1, const __CFSet *a2, const __CFSet *a3, uint64_t a4)
{
  if (!a1 || CFSetContainsValue(a2, a1))
  {
    return;
  }

  v8 = *(a1 + 48);
  if (v8 <= 3)
  {
    if (v8 >= 4)
    {
      goto LABEL_27;
    }

    if (a3)
    {
      if (CFSetContainsValue(a3, a1))
      {
        return;
      }

LABEL_22:

      CFSetAddValue(a3, a1);
      return;
    }
  }

  else
  {
    if ((v8 - 4) < 4)
    {
LABEL_6:
      CFSetAddValue(a2, a1);
      if (*(a1 + 96))
      {
        v9 = 0;
        do
        {
          ContentIndexDocSetIteratorFlatten(*(*(a1 + 72) + 8 * v9++), a2, a3, a4);
        }

        while (v9 < *(a1 + 96));
      }

      if (a4)
      {
        *(a1 + 32) = 0;
      }

      return;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        CFSetAddValue(a2, a1);
        if ((*(a1 + 128) & 0x7FFFFFFF) != 0)
        {
          v10 = 0;
          do
          {
            ContentIndexDocSetIteratorFlatten(*(*(a1 + 120) + 8 * v10++), a2, a3, a4);
          }

          while (v10 < (*(a1 + 128) & 0x7FFFFFFFu));
        }

        goto LABEL_6;
      }

LABEL_27:
      assert_invalid_doc_type(a1);
    }

    if (a3)
    {
      goto LABEL_22;
    }
  }

  if (a4)
  {
    *(a1 + 32) = 1;
  }
}

void ContentIndexDocSetIteratorProcessIterHits(char a1, int a2, int a3, int a4, const __CFSet *a5, const __CFSet *a6, uint64_t a7)
{
  processLeaves(a6, a4, a1, a2, a3, a7);

  processNodes(a5, a4, a1, a2, a3, a7);
}

void processLeaves(const __CFSet *a1, int a2, char a3, int a4, int a5, uint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(a1);
  v13 = Count;
  MEMORY[0x1EEE9AC00](Count);
  v15 = block - ((v14 + 15) & 0xFFFFFFFF0);
  bzero(v15, v14);
  CFSetGetValues(a1, v15);
  v25 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __processLeaves_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = v15;
  block[5] = a6;
  v24 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a2;
  block[6] = &v25;
  dispatch_apply(v13, 0, block);
  if (v25)
  {
    v17 = __si_assert_copy_extra_332();
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3082, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void processNodes(const __CFSet *a1, int a2, char a3, int a4, int a5, uint64_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  Count = CFSetGetCount(a1);
  MEMORY[0x1EEE9AC00](Count);
  v14 = &block[-1] - ((v13 + 15) & 0xFFFFFFFF0);
  bzero(v14, v13);
  CFSetGetValues(a1, v14);
  if (Count)
  {
    if (Count > 1uLL)
    {
      v15 = Count - (Count & 1);
      v16 = (v14 + 8);
      v17 = v15;
      do
      {
        v18 = *v16;
        *(*(v16 - 1) + 32) = 0;
        *(v18 + 32) = 0;
        v16 += 2;
        v17 -= 2;
      }

      while (v17);
      if ((Count & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = 0;
    }

    v19 = Count - v15;
    v20 = &v14[8 * v15];
    do
    {
      v21 = *v20;
      v20 += 8;
      *(v21 + 32) = 0;
      --v19;
    }

    while (v19);
    goto LABEL_9;
  }

  do
  {
LABEL_9:
    if (Count)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = Count;
      do
      {
        v26 = *&v14[8 * v24];
        if (*(v26 + 32))
        {
          v25 = (v25 - 1);
          if (v24 < v25)
          {
            *&v14[8 * v24] = *&v14[8 * v25];
            *&v14[8 * v25] = v26;
          }
        }

        else
        {
          v27 = *(v26 + 48);
          v28 = (v27 - 4) < 4 || v27 == 9;
          if (v28 && (v29 = *(v26 + 96), v29))
          {
            v30 = *(v26 + 72);
            while (*(*v30 + 32) == 1)
            {
              v30 += 8;
              if (!--v29)
              {
                goto LABEL_26;
              }
            }

            v22 = 1;
          }

          else
          {
LABEL_26:
            if (v23 < v24)
            {
              v31 = *&v14[8 * v23];
              *&v14[8 * v23] = v26;
              *&v14[8 * v24] = v31;
            }

            ++v23;
          }

          ++v24;
        }
      }

      while (v24 < v25);
    }

    else
    {
      v25 = 0;
      v23 = 0;
      v22 = 0;
    }

    if (Count < v25)
    {
      v33 = __si_assert_copy_extra_332();
      v34 = v33;
      v35 = "";
      if (v33)
      {
        v35 = v33;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3162, "oldNodeCount >= nodeCount", v35);
LABEL_46:
      free(v34);
      if (__valid_fs(-1))
      {
        v40 = 2989;
      }

      else
      {
        v40 = 3072;
      }

      *v40 = -559038737;
      abort();
    }

    if (v25 && !v23)
    {
      v36 = __si_assert_copy_extra_332();
      v34 = v36;
      v37 = "";
      if (v36)
      {
        v37 = v36;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3163, "processCount || nodeCount == 0", v37);
      goto LABEL_46;
    }

    v47 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __processNodes_block_invoke;
    block[3] = &__block_descriptor_tmp_26_6414;
    block[4] = &v47;
    block[5] = a6;
    v46 = a3;
    v43 = a4;
    v44 = a5;
    v45 = a2;
    block[6] = v14;
    block[7] = &v47 + 1;
    dispatch_apply(v23, 0, block);
    if ((v47 & 0x100) != 0)
    {
      v38 = __si_assert_copy_extra_332();
      v34 = v38;
      v39 = "";
      if (v38)
      {
        v39 = v38;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3197, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v39);
      goto LABEL_46;
    }

    if (v47)
    {
      break;
    }

    Count = v25;
  }

  while (((v25 != 0) & v22) != 0);
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t ContentIndexCopyQueryTerms(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = CIRetainIndexingTokenizer(a2);
  CITokenizerGetQueryTokensWithOptions(v6);
  CIReleaseIndexingTokenizer(v6);
  *a5 = 0;
  icu_locale_release();
  return 0;
}

void *CIRetainIndexingTokenizer(unsigned int a1)
{
  if (a1 >= 4)
  {
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CITokenizer.c", 254, "version>=0 && version<=kCITokenizerVersionCurrent", v7);
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

  v2 = OSAtomicDequeue(&gIndexingTokenizerStack + a1, 0);
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    OSAtomicEnqueue(&gIndexingTokenizerHeap, v2, 0);
    return v3;
  }

  else
  {

    return CITokenizerCreate(a1);
  }
}

void CITokenizerGetQueryTokensWithOptions(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  if (v2)
  {
    v8 = v4;
    v9 = v3;
    v10 = v2;
    v11 = v1;
    v12 = v5;
    if (CFStringGetLength(v2))
    {
      v15[0] = v12;
      v15[1] = v7;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      bzero(&cf, 0x1810uLL);
      CITokenizerSetLocale(v11, v9, 0);
      _CITokenizerGetTokens(v11, *(v11 + 8), v10, &cf, v8 | 0x46u, _CITokenizerGetQueryTokensStart, _CITokenizerGetQueryTokens, 0, 0, _CITokenizerGetQueryTokensEnd, v15);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        free(v14);
      }
    }

    else
    {

      v12();
    }
  }

  else
  {

    (v5)(0);
  }
}

void _CITokenizerGetTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, _OWORD *, uint64_t *), void (*a10)(void, uint64_t, uint64_t), uint64_t a11)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v216 = v12;
  v212 = v13;
  v15 = v14;
  v17 = v16;
  v208 = v18;
  v20 = v19;
  v22 = v21;
  v23 = v11;
  v248 = *MEMORY[0x1E69E9840];
  bzero(v221, 0xC30uLL);
  v223 = -1;
  v24 = *(v23 + 8);
  v217 = v22;
  v218 = v17;
  if (v24 != v22)
  {
    goto LABEL_2;
  }

  if ((v17 & 4) != 0)
  {
    LOBYTE(v25) = 1;
    goto LABEL_7;
  }

  v26 = *(v23 + 72);
  if (v26 <= 0x36)
  {
    v25 = 0x40000000300030uLL >> v26;
  }

  else
  {
LABEL_2:
    LOBYTE(v25) = 0;
  }

LABEL_7:
  v209 = a10;
  v27 = *(v23 + 24);
  v28 = *(v23 + 40);
  v233 = 0;
  v232 = 0u;
  v231 = 0u;
  v230 = 0u;
  v229 = 0u;
  memset(v228, 0, sizeof(v228));
  v227 = 0u;
  v226 = 0u;
  bzero(v247, 0x1010uLL);
  bzero(v246, 0x808uLL);
  bzero(&v242, 0x1010uLL);
  bzero(v238, 0x808uLL);
  bzero(v236, 0x808uLL);
  bzero(v235, 0x808uLL);
  CITokenizerStateInit(&v226, v20, v25 & 1, (v218 >> 6) & 1);
  v220 = v23;
  if (*(v23 + 16) == v217)
  {
    LOBYTE(v233) = 1;
  }

  v219 = a11;
  v29 = *(&v232 + 1);
  v30 = v216;
  if (!*(&v232 + 1))
  {
    if (v218)
    {
      if (v15)
      {
        v15(0, 0, v219);
      }

      if (v212)
      {
        v212(0, 0, 0, v219);
      }
    }

    goto LABEL_344;
  }

  v215 = a9;
  v31 = *(v220 + 72);
  _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  if (v15)
  {
    v15(v231, v29, v219);
  }

  v211 = v29;
  v214 = 0;
  v32 = *MEMORY[0x1E695E498];
  v213 = &v222;
  v202 = &v244;
  v203 = v32;
  v200 = (v208 + 24);
  v201 = &v239;
  v210 = &v243;
  v206 = &v237;
  v207 = &v241;
  v204 = &v240;
  v205 = &v245;
  while (1)
  {
LABEL_13:
    v33 = *(&v227 + 1);
    for (i = v227; v33 < v227; i = v227)
    {
      v35 = &v242 + 2 * v33;
      v229 = *v35;
      v36 = v238[v33];
      *&v230 = v36;
      if (v33)
      {
        v37 = v33 + 2;
        if (v33 + 2 < i)
        {
          v38 = v33 - 1;
          v39 = v33 - 2;
          if (v33 < 2 || (v238[v39] & 0x20) == 0 || *(&v242 + 2 * v39 + 1) + *(&v242 + 2 * v39) != *(&v242 + 2 * v38))
          {
            v40 = v36 & 0x20;
            if ((v238[v38] & 0x30) == 0 && v40 != 0 && v35[1] == 1)
            {
              v42 = v228[1];
              v43 = v231 + 2 * v228[1];
              if (*(v43 + 2 * *v35) == 46)
              {
                v44 = v33 + 1;
                if ((v238[v33 + 1] & 0x30) == 0 && (v238[v37] & 0x20) != 0)
                {
                  v45 = &v242 + 2 * v37;
                  if (v45[1] == 1 && *(v43 + 2 * *v45) == 46)
                  {
                    memset(v234, 0, 512);
                    v46 = &v242 + 2 * v38;
                    v47 = v46[1];
                    v199 = v46;
                    if (v47 > 255)
                    {
                      v50 = 0;
                    }

                    else
                    {
                      v48 = 2 * v47;
                      v49 = *v46;
                      __memcpy_chk();
                      v50 = v48;
                    }

                    v51 = &v202[2 * v33];
                    v52 = &v201[v33];
                    while ((*(v52 - 1) & 0x30) == 0)
                    {
                      if ((*v52 & 0x20) == 0)
                      {
                        goto LABEL_41;
                      }

                      if (*v51 != 1)
                      {
                        goto LABEL_41;
                      }

                      if (*(v43 + 2 * *(v51 - 1)) != 46)
                      {
                        goto LABEL_41;
                      }

                      v53 = *(v51 - 2);
                      v54 = v50 + 2 * v53;
                      if (v54 > 511)
                      {
                        goto LABEL_41;
                      }

                      memcpy(v234 + v50, (v43 + 2 * *(v51 - 3)), 2 * v53);
                      v44 += 2;
                      v37 += 2;
                      v51 += 4;
                      v52 += 2;
                      v50 = v54;
                      if (v37 >= i)
                      {
                        v44 = v37 - 1;
                        goto LABEL_42;
                      }
                    }

                    v44 = v37 - 1;
LABEL_41:
                    v54 = v50;
LABEL_42:
                    v55 = *v199 + v42;
                    v56 = *(&v242 + 2 * v44 - 2) - v55 + *(&v242 + 2 * v44 - 1);
                    v57 = v220;
                    *(v220 + 88) = v55;
                    *(v57 + 96) = v56;
                    *(v57 + 104) = *(&v226 + 1) - 1;
                    v30 = v216;
                    if (v216)
                    {
                      (v216)(v234, v54 >> 1, 0, v219);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v58 = v229;
      v59 = v228[0];
      if (*(&v229 + 1) + v229 > v228[0])
      {
        if ((v230 & 0x20) != 0)
        {
          if (v28 < 2 || *(&v229 + 1) != 1 || (v95 = *(v231 + 2 * v228[1] + 2 * v229), (v95 - 8208) >= 2) && (v95 != 45 ? (v96 = v95 == 65293) : (v96 = 1), !v96))
          {
            v228[0] = *(&v229 + 1) + v229;
            v33 = *(&v227 + 1) + 1;
            v59 = *(&v229 + 1) + v229;
            goto LABEL_133;
          }
        }

        v84 = *(&v242 + 2 * *(&v227 + 1));
        v85 = *(&v242 + 2 * v227 - 1) + *(&v242 + 2 * v227 - 2);
        v228[0] = v85;
        if (v227 <= *(&v227 + 1))
        {
          v59 = v85;
          goto LABEL_132;
        }

        v86 = 0;
        v87 = 0;
        v88 = v231 + 2 * v228[1];
        v89 = &v210[2 * *(&v227 + 1)];
        v90 = 1;
        v91 = *(&v227 + 1);
        while (1)
        {
          v59 = *(v89 - 1);
          v92 = *v89;
          if ((v238[v91] & 0x10000020) == 0x20)
          {
            if (v28 < 2 || v92 != 1)
            {
              goto LABEL_127;
            }

            v93 = *(v88 + 2 * v59);
            if ((v93 - 8208) < 2)
            {
              v92 = 1;
            }

            else
            {
              v94 = v93 == 45 || v93 == 65293;
              v92 = 1;
              if (!v94)
              {
LABEL_127:
                v228[0] = *(v89 - 1);
LABEL_128:
                if (v87 >= 9)
                {
                  if (v86 - v84 <= 63 && (v86 - v84) / v87 > 2)
                  {
                    if (v90)
                    {
                      v113 = v91;
                    }

                    else
                    {
                      v113 = v227 - 1;
                    }

                    if ((v238[v113] & 0x20) != 0)
                    {
                      if (v28 < 2 || (v114 = &v242 + 2 * v113, v114[1] != 1) || (v115 = *(v88 + 2 * *v114), (v115 - 8208) >= 2) && (v115 != 45 ? (v116 = v115 == 65293) : (v116 = 1), !v116))
                      {
                        --v113;
                      }
                    }

                    v117 = 0;
                    v118 = &v207[2 * v113];
                    v33 = v113 - 7;
                    v119 = &v206[v113];
                    v120 = &v205[2 * *(&v227 + 1)];
                    v121 = &v204[*(&v227 + 1)];
                    do
                    {
                      v122 = *v121--;
                      *v119-- = v122;
                      *&v118[v117] = *&v120[v117];
                      v117 -= 2;
                    }

                    while (v117 != -10);
                  }

                  else
                  {
                    *&v229 = v84;
                    *(&v229 + 1) = v86 - v84;
                    v33 = v87 + *(&v227 + 1);
                    v58 = v84;
                  }

                  goto LABEL_133;
                }

LABEL_132:
                v33 = *(&v227 + 1) + 1;
LABEL_133:
                *(&v227 + 1) = v33;
                DWORD2(v230) = 0;
                goto LABEL_185;
              }
            }
          }

          v89 += 2;
          ++v87;
          v86 = v92 + v59;
          v90 = ++v91 < v227;
          if (v227 == v91)
          {
            v59 = v85;
            v87 = v227 - *(&v227 + 1);
            v91 = v227;
            goto LABEL_128;
          }
        }
      }

      DWORD2(v230) = 1;
      v60 = *(&v227 + 1);
      v33 = ++*(&v227 + 1);
      if (v60 < 1)
      {
        goto LABEL_185;
      }

      v61 = v228[1];
      if (v28 >= 2 && *(&v229 + 1) == 1)
      {
        v62 = *(v231 + 2 * v228[1] + 2 * v229);
        v63 = (v62 - 8208) < 2 || v62 == 65293;
        if (v63 || v62 == 45)
        {
          continue;
        }
      }

      v83 = v228[2];
      goto LABEL_186;
    }

    v64 = *(&v226 + 1);
    v65 = v226;
    if (*(&v226 + 1) >= v226)
    {
      *(&v226 + 1) = 0;
      if ((v218 & 2) != 0)
      {
        v65 = _NLStringTokenizerTokenize();
      }

      else
      {
        v65 = _NLStringTokenizerTokenizeWithTranscriptions();
      }

      *&v226 = v65;
      if (!v65)
      {
        if (v214 < v211 && *(v220 + 8) == v217)
        {
          handle_missing_punctuation(v231, v214, v211, v212, v219, 0);
        }

        goto LABEL_327;
      }

      v214 = *(&v247[v65 - 1] + 1) + *&v247[v65 - 1];
      v64 = *(&v226 + 1);
    }

    v66 = v64 + 1;
    v67 = v246[v64];
    *(&v226 + 1) = v64 + 1;
    v228[3] = v67;
    *&v228[1] = v247[v64];
    if (v228[2] != 1)
    {
      break;
    }

    if (*(v231 + 2 * v228[1]) == 8204)
    {
      continue;
    }

    if (v233)
    {
      goto LABEL_84;
    }

LABEL_67:
    if (v67 & 1) != 0 || v66 < v65 && (v246[v66])
    {
      if ((v67 & 0x40001000) != 0 || (v68 = *(v231 + 2 * v228[1]), v68 >> 8 >= 0x11) && ((v68 & 0xFF00) == 0x1100 || (v68 - 11904) >> 7 < 0x197 || v68 - 65376 <= 0x4F))
      {
        v234[0] = 0;
        unorm2_getNFCInstance();
        v29 = v211;
        if (v234[0] <= 0)
        {
          v188 = v228[1];
          v189 = v211 - v228[1];
          v190 = malloc_type_malloc(2 * (v211 - v228[1]), 0xE21ED15EuLL);
          if (v190)
          {
            v191 = v190;
            v192 = unorm2_normalize();
            if (v234[0] <= 0)
            {
              v193 = v189 >= v192 ? v192 : v29 - v188;
              v194 = CFStringCreateWithCharactersNoCopy(0, v191, v193, v203);
              if (v194)
              {
                v195 = v194;
                v196 = v220;
                if (!*(v220 + 16))
                {
                  *(v196 + 16) = NLStringTokenizerCreate();
                }

                v197 = *(v196 + 56);
                _NLStringTokenizerSetLocale();
                _CITokenizerGetTokens(v196, *(v196 + 16), v195, v208, v218 & 0xFFFFFFFE, 0, v212, v216, 0, 0, v219);
                CFRelease(v195);
              }
            }

            free(v191);
          }
        }

        goto LABEL_344;
      }
    }

    if (v228[2] > 256)
    {
      continue;
    }

    if ((~v67 & 0x401) != 0)
    {
      goto LABEL_84;
    }

    v234[0] = 0;
    NFCInstance = unorm2_getNFCInstance();
    if (v234[0] > 0)
    {
      goto LABEL_84;
    }

    v70 = v228[2];
    v71 = v228[2];
    MEMORY[0x1EEE9AC00](NFCInstance);
    v73 = &v199 - ((v72 + 15) & 0x3FFFFFFF0);
    bzero(v73, v72);
    v74 = unorm2_normalize();
    if (v234[0] > 0 || (v75 = v74, v74 > v70) || v74 == v70 && memcmp(v73, (v231 + 2 * v228[1]), 2 * v71) || (v76 = CFStringCreateWithCharactersNoCopy(0, v73, v75, v203)) == 0)
    {
      v30 = v216;
      goto LABEL_84;
    }

    v180 = v76;
    v181 = v220;
    if (!*(v220 + 16))
    {
      *(v181 + 16) = NLStringTokenizerCreate();
    }

    v182 = *(v181 + 56);
    _NLStringTokenizerSetLocale();
    v183 = *(v181 + 16);
    v184 = v181;
    v30 = v216;
    _CITokenizerGetTokens(v184, v183, v180, v208, v218 & 0xFFFFFFFE, 0, v212, v216, 0, 0, v219);
    CFRelease(v180);
  }

  if ((v233 & 1) == 0)
  {
    goto LABEL_67;
  }

  if (v228[2] > 256)
  {
    goto LABEL_13;
  }

LABEL_84:
  v77 = v218;
  if ((v218 & 2) == 0)
  {
    if (v236[v64])
    {
      v78 = v220;
      *(v220 + 88) = *&v228[1];
      *(v78 + 104) = v64;
      if (v30)
      {
        v30(v235[v64]);
      }
    }
  }

  *(&v227 + 1) = 0;
  DWORD2(v230) = 0;
  if ((v228[3] & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    *&v227 = 1;
    v242 = 0;
    v243 = v228[2];
    v238[0] = 0;
LABEL_117:
    SubTokensOfCompound = 1;
    goto LABEL_136;
  }

  if ((v228[3] & 0x400) == 0)
  {
    goto LABEL_90;
  }

  v171 = v208;
  v172 = *v208;
  if (*v208)
  {
    v249.length = CFStringGetLength(*v208);
    v249.location = 0;
    CFStringDelete(v172, v249);
    v173 = *v171;
    v30 = v216;
  }

  else
  {
    v174 = *(v208 + 8);
    v30 = v216;
    if (!v174)
    {
      v174 = malloc_type_malloc(0x400uLL, 0x1000040BDFB0063uLL);
      *(v208 + 8) = v174;
      if (!v174)
      {
        goto LABEL_327;
      }
    }

    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v174, 0, 512, v203);
    *v208 = MutableWithExternalCharactersNoCopy;
    if (!MutableWithExternalCharactersNoCopy)
    {
      goto LABEL_327;
    }
  }

  *&v227 = 0;
  DerivedTokens = _NLStringTokenizerGetDerivedTokens();
  *&v227 = DerivedTokens;
  if (DerivedTokens == 1)
  {
    v79 = v228[2];
    v77 = v218;
    if (v228[2] == v243)
    {
      *&v227 = 0;
      goto LABEL_91;
    }

    DerivedTokens = 1;
LABEL_310:
    v177 = 0;
    v178 = v200;
    do
    {
      if (*v178)
      {
        v179 = v220;
        *(v220 + 88) = *&v228[1];
        *(v179 + 104) = v64;
        if (v216)
        {
          (v216)(*(v208 + 8) + 2 * *(v178 - 1), *v178, 2, v219, &v242, 1, 4294959088);
          DerivedTokens = v227;
        }
      }

      ++v177;
      v178 += 2;
    }

    while (v177 < DerivedTokens);
  }

  else
  {
    v77 = v218;
    if (DerivedTokens >= 1)
    {
      goto LABEL_310;
    }
  }

LABEL_90:
  v79 = v228[2];
  v30 = v216;
LABEL_91:
  if (v79 < 2 || (v77 & 0x20) != 0 && (v228[3] & 0x200) == 0)
  {
LABEL_135:
    *&v227 = 1;
    v242 = 0;
    v243 = v79;
    SubTokensOfCompound = 1;
    v238[0] = 0;
    goto LABEL_136;
  }

  SubTokensOfCompound = _NLStringTokenizerGetSubTokensOfCompound();
  *&v227 = SubTokensOfCompound;
  if (!SubTokensOfCompound)
  {
    v79 = v228[2];
    goto LABEL_135;
  }

  if (SubTokensOfCompound < 2)
  {
    v112 = SubTokensOfCompound;
LABEL_160:
    SubTokensOfCompound = v112;
    if (!v112)
    {
      goto LABEL_13;
    }
  }

  else if ((v228[3] & 0x20) != 0)
  {
    if ((v77 & 8) != 0 && (v228[3] & 0x40001000) == 0)
    {
      v81 = v228[2];
      v82 = &v242 + 2 * *(&v227 + 1);
      *v82 = 0;
      v82[1] = v81;
      *&v227 = 1;
      goto LABEL_117;
    }

    LOBYTE(v161) = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = v231 + 2 * v228[1];
    v166 = v210;
    v112 = SubTokensOfCompound;
    while (2)
    {
      v167 = v238[v163];
      if ((v167 & 0x20) != 0)
      {
        if (*v166 != 1)
        {
          goto LABEL_288;
        }

        v168 = *(v165 + 2 * *(v166 - 1));
        if (v168 != 8217 && v168 != 39)
        {
          goto LABEL_288;
        }

        if (!v163)
        {
          goto LABEL_160;
        }

        if (!v161)
        {
LABEL_288:
          LOBYTE(v161) = 0;
          goto LABEL_290;
        }

        --v164;
        ++*(&v242 + 2 * v164 + 1);
        v169 = v238[v164];
        if ((v169 & 0x20) == 0)
        {
          v238[v164] = v169 | 0x10000020;
        }

        LOBYTE(v161) = 0;
        *&v227 = --v112;
        v162 = 1;
      }

      else
      {
        v161 = (v167 & 0xFFFFFFFFFFFFFFD1) == 0;
        if ((v162 & v161) == 1)
        {
          if (*v166 <= 2)
          {
            v162 = 0;
            LOBYTE(v161) = 0;
            *(&v242 + 2 * v164 + 1) += *v166;
            v238[v164++] |= v167;
            *&v227 = --v112;
            goto LABEL_291;
          }

          LOBYTE(v161) = 1;
        }

LABEL_290:
        v170 = v164 + (v162 & 1);
        *(&v242 + v170) = *(v166 - 1);
        v164 = v170 + 1;
        v238[v170] = v167;
        v162 = 0;
      }

LABEL_291:
      ++v163;
      v166 += 2;
      if (SubTokensOfCompound == v163)
      {
        goto LABEL_160;
      }

      continue;
    }
  }

LABEL_136:
  v97 = &v242 + 2 * *(&v227 + 1);
  v229 = *v97;
  v98 = v238[*(&v227 + 1)];
  *&v230 = v98;
  if ((v98 & 0x20) != 0)
  {
    v59 = *(&v229 + 1) + v229;
    v228[0] = *(&v229 + 1) + v229;
LABEL_183:
    v33 = *(&v227 + 1) + 1;
    goto LABEL_184;
  }

  v99 = *v97;
  v100 = *(&v242 + 2 * SubTokensOfCompound - 1) + *(&v242 + 2 * SubTokensOfCompound - 2);
  v228[0] = v100;
  if (*(&v227 + 1) >= SubTokensOfCompound)
  {
    v107 = v98;
    v59 = v100;
LABEL_182:
    *&v230 = v107 | v98;
    goto LABEL_183;
  }

  v101 = 0;
  v102 = 0;
  v103 = v231 + 2 * v228[1];
  v104 = &v210[2 * *(&v227 + 1)];
  v105 = 1;
  v106 = *(&v227 + 1);
  v107 = v98;
  while (1)
  {
    if ((v238[v106] & 0x10000020) != 0x20)
    {
      ++v101;
      v59 = *(v104 - 1);
      v108 = *v104;
      goto LABEL_155;
    }

    v59 = *(v104 - 1);
    if (v28 < 2)
    {
      break;
    }

    v108 = *v104;
    if (*v104 != 1)
    {
      v109 = v108 == 2 && BYTE1(v233) & (v228[2] + v228[1] == *(&v232 + 1));
      if (!v109 || *(v103 + 2 + 2 * v59) != 42)
      {
        break;
      }
    }

    v110 = *(v103 + 2 * v59);
    if ((v110 - 8208) >= 2 && v110 != 45 && v110 != 65293)
    {
      break;
    }

    v107 |= 0x10uLL;
LABEL_155:
    v102 = v108 + v59;
    v105 = ++v106 < SubTokensOfCompound;
    v104 += 2;
    if (SubTokensOfCompound == v106)
    {
      v59 = v100;
      v106 = SubTokensOfCompound;
      goto LABEL_178;
    }
  }

  v228[0] = *(v104 - 1);
LABEL_178:
  v30 = v216;
  if (v101 < 9)
  {
    goto LABEL_182;
  }

  if (v102 - v99 <= 63 && (v102 - v99) / v101 > 2)
  {
    if (v105)
    {
      v145 = v106;
    }

    else
    {
      v145 = SubTokensOfCompound - 1;
    }

    if ((v238[v145] & 0x20) != 0)
    {
      if (v28 < 2 || (v152 = &v242 + 2 * v145, v152[1] != 1) || (v153 = *(v231 + 2 * v228[1] + 2 * *v152), (v153 - 8208) >= 2) && (v153 != 45 ? (v154 = v153 == 65293) : (v154 = 1), !v154))
      {
        --v145;
      }
    }

    v155 = 0;
    v156 = &v207[2 * v145];
    v33 = v145 - 7;
    v157 = &v206[v145];
    v158 = &v205[2 * *(&v227 + 1)];
    v159 = &v204[*(&v227 + 1)];
    do
    {
      v160 = *v159--;
      *v157-- = v160;
      *&v156[v155] = *&v158[v155];
      v155 -= 2;
    }

    while (v155 != -10);
  }

  else
  {
    *&v229 = v99;
    *(&v229 + 1) = v102 - v99;
    v33 = v101 + *(&v227 + 1);
  }

LABEL_184:
  *(&v227 + 1) = v33;
  v58 = v229;
LABEL_185:
  v61 = v228[1];
  v83 = v228[2];
  v123 = v228[2];
  v124 = v228[1];
  if (v33)
  {
LABEL_186:
    v124 = v61;
    v123 = v83;
    v61 += v58;
    v83 -= v58;
  }

  v125 = v220;
  *(v220 + 88) = v61;
  *(v125 + 96) = v83;
  v126 = v231;
  *(v125 + 104) = *(&v226 + 1) - 1;
  v127 = (v126 + 2 * v124 + 2 * v58);
  v128 = v59 - v58;
  v129 = *v127;
  if ((v129 - 12441) <= 1)
  {
    if (!v128)
    {
      goto LABEL_13;
    }

    while (*v127 - 12441 <= 1)
    {
      ++v127;
      if (!--v128)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v123 == 1 && (v129 & 0xF800 | 0x400) == 0xDC00)
  {
    goto LABEL_13;
  }

  if (DWORD2(v230))
  {
    if (v30)
    {
      v130 = (v30)(v127, v128, 0, v219);
      if (v130)
      {
        goto LABEL_226;
      }
    }

    else
    {
      v130 = 0;
    }

    goto LABEL_221;
  }

  v131 = v212;
  if ((v218 & 0x10) == 0 || ((v228[3] & 0x40001000) != 0 ? (v132 = v128 < 2) : (v132 = 1), v132))
  {
    if (v212)
    {
      v130 = v212(v127, v128, v230, v219);
    }

    else
    {
      v130 = 0;
    }

    goto LABEL_204;
  }

  v141 = 0;
  v142 = 0;
  while (1)
  {
    v143 = &v127[v141];
    if ((*v143 & 0xFC00) == 0xD800)
    {
      break;
    }

    if (v131)
    {
      v144 = 1;
      goto LABEL_237;
    }

LABEL_238:
    v142 = 0;
LABEL_239:
    if (++v141 >= v128 || (v142 & 1) != 0)
    {
      goto LABEL_241;
    }
  }

  if (++v141 < v128 && (v127[v141] & 0xFC00) == 0xDC00)
  {
    if (v131)
    {
      v144 = 2;
LABEL_237:
      v142 = v131(v143, v144, v230, v219);
      goto LABEL_239;
    }

    goto LABEL_238;
  }

LABEL_241:
  if (v142)
  {
    v130 = v142;
  }

  else
  {
    v130 = 0;
  }

  if (v142)
  {
LABEL_204:
    v30 = v216;
    goto LABEL_205;
  }

  v30 = v216;
  if (v216)
  {
    v130 = (v216)(v127, v128, 3, v219);
  }

LABEL_205:
  if (!v215)
  {
LABEL_220:
    if (v130)
    {
      goto LABEL_226;
    }

    goto LABEL_221;
  }

  if (v225 < 128)
  {
    v133 = (v127 - v231) >> 1;
    if (v225)
    {
      v134 = *(&v221[v225 - 1] + 1) + *&v221[v225 - 1];
      if (v134 < v133)
      {
        handle_missing_punctuation(v231, v134, (v127 - v231) >> 1, sentenceTokenizerMissingPunctuation, v221, 1);
      }
    }
  }

  else
  {
    v215(v231, v221, v213);
    v225 = 0;
    v133 = (v127 - v231) >> 1;
  }

  if (v128)
  {
    v223 = v133;
    v224 = v128;
    v135 = &v221[v225];
    *v135 = v133;
    v135[1] = v128;
    v213[v225++] = v230;
  }

  v136 = &v127[v128];
  if (v136 >= v231 + 2 * v211)
  {
    goto LABEL_218;
  }

  v137 = *v136;
  switch(v137)
  {
    case 9:
      goto LABEL_218;
    case 8200:
      goto LABEL_218;
    case 12288:
      goto LABEL_218;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  if (CFCharacterSetIsCharacterMember(Predefined, v137))
  {
    goto LABEL_218;
  }

  if (*(&v227 + 1) != v227)
  {
LABEL_219:
    v30 = v216;
    goto LABEL_220;
  }

  if (*(&v226 + 1) < v226)
  {
    v146 = v231 + 2 * *&v247[*(&v226 + 1)];
    if (v136 < v146)
    {
      v147 = *(&v247[*(&v226 + 1) - 1] + 1) + *&v247[*(&v226 + 1) - 1];
      v148 = 2 * v147 + 2;
      while (1)
      {
        v149 = *v136;
        if (v149 == 9 || v149 == 8200)
        {
          break;
        }

        if (v149 == 12288)
        {
          break;
        }

        v151 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
        if (CFCharacterSetIsCharacterMember(v151, v149))
        {
          break;
        }

        ++v147;
        v136 = (v231 + v148);
        v148 += 2;
        if (v231 + 2 * v147 >= v146)
        {
          goto LABEL_219;
        }
      }

LABEL_218:
      (v215)(v231, v221, v213, v225, v219);
      v225 = 0;
      goto LABEL_219;
    }
  }

  v30 = v216;
  if ((v130 & 1) == 0)
  {
LABEL_221:
    if (*(v220 + 8) == v217 && v227 == *(&v227 + 1) && *(&v226 + 1) < v226)
    {
      v139 = &v247[*(&v226 + 1)];
      v140 = *(v139 - 1) + *(v139 - 2);
      if (v140 < *v139)
      {
        v130 = handle_missing_punctuation(v231, v140, *v139, v212, v219, 0);
      }
    }
  }

LABEL_226:
  if ((v130 & 1) == 0)
  {
    if ((v130 & 2) != 0 && !DWORD2(v230))
    {
      v228[3] &= ~0x400uLL;
    }

    goto LABEL_13;
  }

LABEL_327:
  v29 = v211;
  if (v215)
  {
    v185 = v225;
    if (v225)
    {
      if (v225 <= 127)
      {
        v186 = *(&v221[v225 - 1] + 1) + *&v221[v225 - 1];
        v187 = v231;
        if (v186 < v211)
        {
          handle_missing_punctuation(v231, v186, v211, sentenceTokenizerMissingPunctuation, v221, 1);
          v187 = v231;
          v185 = v225;
        }

        (v215)(v187, v221, v213, v185, v219);
        v225 = 0;
      }
    }
  }

LABEL_344:
  if (v209)
  {
    v209(v231, v29, v219);
  }

  if (v232)
  {
    CFRelease(v232);
  }

  if (*(&v231 + 1))
  {
    free(*(&v231 + 1));
  }

  v198 = *MEMORY[0x1E69E9840];
}

void CITokenizerStateInit(uint64_t a1, CFStringRef theString, int a3, int a4)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  CharactersPtr = CFStringGetCharactersPtr(theString);
  *(a1 + 96) = CharactersPtr;
  if (!CharactersPtr)
  {
    v10 = malloc_type_malloc(2 * Length + 32, 0x1000040BDFB0063uLL);
    *(a1 + 104) = v10;
    if (!v10)
    {
      v20 = __si_assert_copy_extra_332();
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = "";
      }

      v23 = __error();
      __message_assert("%s:%u: failed assertion '%s' %s alloc err:%d (%x)", "CITokenizer.c", 78, "state->uniChars", v22, *v23, Length);
      free(v21);
      if (__valid_fs(-1))
      {
        v24 = 2989;
      }

      else
      {
        v24 = 3072;
      }

      *v24 = -559038737;
      abort();
    }

    v25.location = 0;
    v25.length = Length;
    CFStringGetCharacters(theString, v25, v10);
    *(a1 + 96) = *(a1 + 104);
  }

  *(a1 + 120) = Length;
  if (!a3 || Length < 1)
  {
    goto LABEL_10;
  }

  unorm2_getNFCInstance();
  v13 = *(a1 + 96);
  if (unorm2_quickCheck() == 1)
  {
    *(a1 + 128) = 1;
    if (!a4)
    {
      return;
    }

    goto LABEL_11;
  }

  v14 = malloc_type_malloc(2 * (Length & 0x7FFFFFFF), 0x1000040BDFB0063uLL);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = *(a1 + 96);
  v17 = unorm2_normalize();
  v18 = v17;
  *(a1 + 128) = 1;
  if (v17 == Length && !memcmp(*(a1 + 96), v15, Length & 0x7FFFFFFF))
  {
    free(v15);
LABEL_10:
    if (!a4)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v18 < Length)
  {
    LODWORD(Length) = v18;
  }

  v19 = *(a1 + 104);
  if (v19)
  {
    free(v19);
  }

  *(a1 + 96) = v15;
  *(a1 + 104) = v15;
  *(a1 + 112) = CFStringCreateWithCharactersNoCopy(0, v15, Length, *MEMORY[0x1E695E498]);
  *(a1 + 120) = Length;
  if (a4)
  {
LABEL_11:
    v11 = *(a1 + 120);
    if (v11 >= 2)
    {
      v12 = *(a1 + 96) + 2 * v11;
      if (*(v12 - 2) == 42 && (*(v12 - 4) != 92 || v11 != 2 && *(v12 - 6) != 92))
      {
        *(a1 + 129) = 1;
      }
    }
  }
}

uint64_t _CITokenizerGetQueryTokensStart(uint64_t result, uint64_t a2, void *a3)
{
  a3[5] = result;
  a3[2] = result;
  a3[3] = result + 2 * a2;
  return result;
}

uint64_t ContentIndexDocSetGrabBitVector(uint64_t a1)
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
      goto LABEL_12;
    }
  }

  else
  {
    if ((v1 - 4) < 4)
    {
      return *(a1 + 80);
    }

    if (v1 != 8)
    {
      if (v1 == 9)
      {
        return *(a1 + 80);
      }

LABEL_12:
      assert_invalid_doc_type(a1);
    }
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 0;
  }

  return *(v3 + 88);
}

_DWORD *CIIndexSetCreateWithRangeWithCache(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    a1 = 1;
  }

  if (a1 > a2)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v3 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

  if (*v3 != 2882339105)
  {
LABEL_16:
    v10 = __si_assert_copy_extra_332();
    __message_assert_336(v10, v11, v12, v13, v14, v15, v16, v17, "CIIndexSet.c");
    free(v10);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v4 = *(a3 + 8);
  if (v4)
  {
    goto LABEL_9;
  }

  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = cicachelistdequeue((v3 + 1), 20);
  a3 = v7;
  a2 = v6;
  v4 = v8;
  a1 = v5;
  if (v4)
  {
LABEL_9:
    *(a3 + 8) = *(v4 + 40);
    *(v4 + 16) = -2;
    *(v4 + 20) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    if (CIIndexSetGetTypeID_onceToken != -1)
    {
      dispatch_once(&CIIndexSetGetTypeID_onceToken, &__block_literal_global_5901);
    }

    _CFRuntimeSetInstanceTypeID();
    if (*(v4 + 20) > *(v4 + 24))
    {
      v18 = __si_assert_copy_extra_332();
      __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "CIIndexSet.c");
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

    return v4;
  }

LABEL_13:

  return CIIndexSetCreateWithRange(a1, a2, 1);
}

uint64_t _CITokenizerGetQueryTokens(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1;
    if (*(a4 + 16) <= a1)
    {
      v6 = a2;
      v7 = *(a4 + 24);
      if (v7 > a1 && a1 + 2 * a2 <= v7)
      {
        v9 = (a1 - 2);
        v10 = *(a4 + 40);
        if (a1 - 2 >= v10)
        {
          while (1)
          {
            v11 = v9 - 1;
            if (*v9 != 42)
            {
              break;
            }

            --v9;
            if (v11 > v10 && *v11 == 92)
            {
              goto LABEL_14;
            }

            --v5;
            ++v6;
            if (v11 < v10)
            {
              v5 = v11 + 1;
              goto LABEL_14;
            }
          }

          v5 = v9 + 1;
        }

LABEL_14:
        v12 = *(a4 + 48);
        if (v12)
        {
          v13 = *(a4 + 32);
          for (i = (v13 + 2 * v12); i < v5 && *i == 42; ++i)
          {
            *(a4 + 48) = ++v12;
          }

          v15 = (v13 + 2 * v12);
          if (v15 == v5)
          {
            if (*(v15 - 1) == 42 && (v12 < 2 || *(v15 - 2) != 92))
            {
              *(a4 + 48) = v12 + v6;
              return 0;
            }
          }

          else
          {
            v16 = *(a4 + 8);
            (*a4)();
            v12 = 0;
            v17 = *(a4 + 32) + 2 * *(a4 + 48);
            *(a4 + 32) = 0;
            *(a4 + 40) = v17;
            *(a4 + 48) = 0;
          }
        }

        v18 = &v5[v6];
        if (*(v18 - 1) == 42 && (v6 < 2 || *(v18 - 2) != 92) || v18 < *(a4 + 24) && *v18 == 42)
        {
          v19 = *(a4 + 32);
          if (!v19)
          {
            *(a4 + 32) = v5;
            v19 = v5;
          }

          *(a4 + 40) = &v19[v12 + v6];
          *(a4 + 48) = v12 + v6;
        }

        else
        {
          if (v12)
          {
            (*a4)(*(a4 + 32), v12, *(a4 + 8));
            v20 = *(a4 + 32) + 2 * *(a4 + 48);
            *(a4 + 32) = 0;
            *(a4 + 40) = v20;
            *(a4 + 48) = 0;
          }

          (*a4)(v5, v6, *(a4 + 8));
          *(a4 + 40) = v18;
        }
      }
    }
  }

  return 0;
}

uint64_t _CITokenizerGetQueryTokensEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  if (v3)
  {
    return (*a3)(*(a3 + 32), v3, *(a3 + 8));
  }

  return result;
}

void CIIndexSetRemoveRange(unsigned int *cf, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v138 = *MEMORY[0x1E69E9840];
  v5 = cf[5];
  v4 = cf[6];
  v7 = *(a2 + 20);
  v6 = *(a2 + 24);
  if (v4 >= v6)
  {
    v8 = *(a2 + 24);
  }

  else
  {
    v8 = cf[6];
  }

  v9 = v6 >= a4 && v4 >= a4;
  if (v9)
  {
    v10 = a4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= v7)
  {
    v11 = *(a2 + 20);
  }

  else
  {
    v11 = cf[5];
  }

  v12 = v7 > a3 || v5 > a3;
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = a3;
  }

  if (v13 > v10)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v133 = *__error();
      v134 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        v135[0] = 67109376;
        v135[1] = v13;
        v136 = 1024;
        v137 = v10;
        _os_log_impl(&dword_1C278D000, v134, OS_LOG_TYPE_DEFAULT, "%d start, end:%d", v135, 0xEu);
      }

      *__error() = v133;
    }

    goto LABEL_287;
  }

  v16 = *(a2 + 16);
  if (v16 <= -10)
  {
    if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
    {
      _CIIndexSetForceBitmap(cf, 0, 0);
    }

    v16 = *(a2 + 16);
  }

  v17 = cf[4];
  if (v17 <= -10)
  {
    if (v16 <= -10)
    {
      v18 = cf[6];
      v19 = (v18 - v10) >> 5;
      v20 = (v18 - v10) & 0x1F;
      v21 = (v18 - v13) >> 5;
      v22 = (v18 - v13) & 0x1F;
      v23 = *(a2 + 24);
      if (v18 == v23)
      {
        v24 = *(*(a2 + 40) + 4 * v19);
        if (v21 == v19)
        {
          v25 = masks[v20];
          if (v20 != v22 + 1)
          {
            v25 = masks[v22 + 1] & ~v25;
          }

          *(*(cf + 5) + 4 * v19) &= ~(v25 & v24);
        }

        else
        {
          *(*(cf + 5) + 4 * v19) &= masks[v20] | ~v24;
          v98 = (v19 + 1);
          if (v98 < v21)
          {
            do
            {
              *(*(cf + 5) + 4 * v98) &= ~*(*(a2 + 40) + 4 * v98);
              ++v98;
            }

            while (v21 != v98);
          }

          *(*(cf + 5) + 4 * v21) &= ~(masks[v22 + 1] & *(*(a2 + 40) + 4 * v21));
        }
      }

      else
      {
        v58 = (v23 - v10) >> 5;
        v59 = (v18 - v23) & 0x1F;
        if (((v18 - v23) & 0x1F) != 0)
        {
          v60 = 32 - v59;
          if (v21 != v19)
          {
            if (v21 >= v19)
            {
              v105 = v22 + 1;
              v106 = (v23 - v18 + v59 + ((v18 - v10) & 0xFFFFFFE0)) >> 5;
              v107 = *(a2 + 32);
              v108 = v106 >= v107 ? 0 : (*(*(a2 + 40) + 4 * v106) << ((v18 - v23) & 0x1F)) & ~masks[(v18 - v23) & 0x1F];
              v114 = v106 - 1 >= v107 ? 0 : (*(*(a2 + 40) + 4 * (v106 - 1)) >> v60) & masks[v59];
              v115 = masks[v20];
              *(*(cf + 5) + 4 * v19) &= v115 | ~(v114 | v108);
              if (v19 + 1 != v21 + 1)
              {
                v116 = 0;
                v117 = v21 - v19;
                v118 = 4 * v19 + 4;
                do
                {
                  v120 = *(a2 + 32);
                  if (v106 + v116 + 1 >= v120)
                  {
                    v121 = 0;
                  }

                  else
                  {
                    v121 = (*(*(a2 + 40) + 4 * v106 + 4 + 4 * v116) << v59) & ~masks[v59];
                  }

                  if (v120 <= v106 + v116)
                  {
                    v122 = 0;
                  }

                  else
                  {
                    v122 = (*(*(a2 + 40) + 4 * (v106 + v116)) >> v60) & masks[v59];
                  }

                  if (v116 == -1)
                  {
                    v123 = ~v115;
                  }

                  else
                  {
                    v123 = -1;
                  }

                  if (v117 - 1 == v116)
                  {
                    v119 = masks[v105];
                  }

                  else
                  {
                    v119 = -1;
                  }

                  *(*(cf + 5) + v118 + 4 * v116++) &= ~(v123 & (v122 | v121) & v119);
                }

                while (v117 != v116);
              }
            }

            goto LABEL_287;
          }

          v61 = *(a2 + 40);
          v62 = *(v61 + 4 * v58) << v59;
          if (v58 + 1 < *(a2 + 32))
          {
            v62 |= *(v61 + 4 * (v58 + 1)) >> v60;
          }

          v63 = ~v62;
        }

        else
        {
          v99 = *(*(a2 + 40) + 4 * v58);
          v100 = v21 - v19;
          if (v21 != v19)
          {
            *(*(cf + 5) + 4 * v19) &= masks[v20] | ~v99;
            if (v100 >= 2)
            {
              v109 = 1 - v100;
              v110 = v19 + 1;
              v111 = v58 + 1;
              do
              {
                *(*(cf + 5) + 4 * v110++) &= ~*(*(a2 + 40) + 4 * v111++);
                v9 = __CFADD__(v109++, 1);
              }

              while (!v9);
            }

            *(*(cf + 5) + 4 * v21) &= ~(masks[v22 + 1] & *(*(a2 + 40) + 4 * ((v23 - v13) >> 5)));
            goto LABEL_287;
          }

          v63 = ~v99;
        }

        v101 = v22 + 1;
        v102 = masks[v20];
        v103 = v102;
        v104 = v102;
        if (v20 != v101)
        {
          v103 = masks[v101];
          v104 = v103 & ~v102;
        }

        *(*(cf + 5) + 4 * v19) &= v104 & v63 | ~v103 | v102;
      }

LABEL_287:
      v132 = *MEMORY[0x1E69E9840];
      return;
    }

    if ((v16 & 0x80000000) == 0)
    {
      if (v13)
      {
        v32 = v13 - 1;
      }

      else
      {
        v32 = 0;
      }

      v33 = binarySearchMap(a2, v32);
      LODWORD(v34) = binarySearchMap(a2, v10);
      v35 = *(a2 + 36);
      v36 = v33 > v35 && v34 > v35;
      v37 = v33 > v35 || v34 >= v35;
      v38 = CFGetTypeID(a2);
      if (!v36 && v37)
      {
        if (v38 == __kCIIndexSetInvertedTypeID)
        {
          v39 = *(a2 + 16);
          v41 = *(a2 + 32);
          v40 = *(a2 + 36);
          v42 = v41 - v39 + v40;
          if (v33 <= v42)
          {
            v113 = 0;
          }

          else
          {
            if (v33 <= v42)
            {
              v43 = *(a2 + 40);
            }

            else
            {
              v43 = *(a2 + 40);
              v44 = v33 - 1;
              do
              {
                v45 = *(v43 + 4 * v44);
                if (v45 > v13)
                {
                  _CIIndexSetClearRange(cf, v13, v45 - 1);
                  v43 = *(a2 + 40);
                  v39 = *(a2 + 16);
                  v41 = *(a2 + 32);
                  v40 = *(a2 + 36);
                  v45 = *(v43 + 4 * v44);
                }

                v13 = v45 + 1;
                v42 = v41 - v39 + v40;
                v12 = v44-- <= v42;
              }

              while (!v12);
            }

            v113 = *(v43 + 4 * v42) == v10;
          }

          if (v40 > v34)
          {
            v124 = v40;
            v34 = v34;
            v125 = *(a2 + 40);
            v126 = v124 - 1;
            do
            {
              v127 = *(v125 + 4 * v126);
              if (v127 > v13)
              {
                _CIIndexSetClearRange(cf, v13, v127 - 1);
                v125 = *(a2 + 40);
                v127 = *(v125 + 4 * v126);
              }

              v13 = v127 + 1;
              v12 = v126-- <= v34;
            }

            while (!v12);
LABEL_273:
            if (*(v125 + 4 * v34) == v10)
            {
              v113 = 1;
            }

            goto LABEL_275;
          }

          goto LABEL_275;
        }

LABEL_139:
        v80 = *(a2 + 32) - *(a2 + 16) + *(a2 + 36);
        CIIndexSetRemoveSortedIndexes(cf, (*(a2 + 40) + 4 * v80), v33 - v80);
        v81 = *MEMORY[0x1E69E9840];
        v76 = (*(a2 + 40) + 4 * v34);
        v77 = *(a2 + 36) - v34;
        goto LABEL_200;
      }

      if (v38 == __kCIIndexSetInvertedTypeID)
      {
        if (v33 <= v34)
        {
          v112 = 0;
        }

        else
        {
          v69 = *(a2 + 40);
          v70 = v33 - 1;
          do
          {
            v71 = *(v69 + 4 * v70);
            if (v71 > v13)
            {
              _CIIndexSetClearRange(cf, v13, v71 - 1);
              v69 = *(a2 + 40);
              v71 = *(v69 + 4 * v70);
            }

            v13 = v71 + 1;
            v12 = v70-- <= v34;
          }

          while (!v12);
          v112 = *(v69 + 4 * v34) == v10;
        }

        if (v112)
        {
          goto LABEL_287;
        }

        goto LABEL_276;
      }

LABEL_135:
      v75 = *MEMORY[0x1E69E9840];
      v76 = (*(a2 + 40) + 4 * v34);
      v77 = v33 - v34;
LABEL_200:

      CIIndexSetRemoveSortedIndexes(cf, v76, v77);
      return;
    }

    v66 = -2 - v16;
    v67 = (a2 + 32);
    if (v16 > 0xFFFFFFFD || *v67 <= v10)
    {
      v68 = 0;
      goto LABEL_177;
    }

    if (v16 != -3)
    {
      if (*(a2 + 36) <= v10)
      {
        v68 = 1;
        goto LABEL_177;
      }

      if (v16 != -4)
      {
        if (*(a2 + 40) <= v10)
        {
          v68 = 2;
          goto LABEL_177;
        }

        if (v16 != -5)
        {
          if (*(a2 + 44) <= v10)
          {
            v68 = 3;
            goto LABEL_177;
          }

          if (v16 != -6)
          {
            if (*(a2 + 48) <= v10)
            {
              v68 = 4;
              goto LABEL_177;
            }

            if (v16 != -7)
            {
              if (*(a2 + 52) <= v10)
              {
                v68 = 5;
                goto LABEL_177;
              }

              if (v16 != -8 && *(a2 + 56) <= v10)
              {
                v68 = 6;
LABEL_177:
                if (v13)
                {
                  v93 = v13 - 1;
                }

                else
                {
                  v93 = 0;
                }

                if (v68 < v66)
                {
                  v94 = v68;
                  v95 = v68;
                  while (v67[v95] > v93)
                  {
                    if (v66 == ++v95)
                    {
                      goto LABEL_195;
                    }
                  }

                  goto LABEL_197;
                }

                v68 = v66;
LABEL_196:
                v94 = v68;
                LODWORD(v95) = v68;
LABEL_197:
                if (v95 < v66)
                {
                  v66 = v95;
                }

                v97 = *MEMORY[0x1E69E9840];
                v76 = &v67[v94];
                v77 = v66 - v68;
                goto LABEL_200;
              }
            }
          }
        }
      }
    }

LABEL_122:
    v68 = v66;
    goto LABEL_196;
  }

  if (v16 <= -10)
  {
    if ((v17 & 0x80000000) == 0)
    {
      v26 = cf[9];
      if (v26 != v17)
      {
        memmove((*(cf + 5) + 4 * v26), (*(cf + 5) + 4 * (v26 - v17 + cf[8])), 4 * (v17 - v26));
        cf[9] = cf[4];
      }

      v27 = binarySearchMap(cf, v10);
      v28 = cf[4];
      if (v27 < v28 && *(*(cf + 5) + 4 * v27) > v10)
      {
        ++v27;
      }

      if (v27 >= v28)
      {
        v78 = v27;
      }

      else
      {
        v29 = v27;
        do
        {
          v30 = *(cf + 5);
          v31 = *(v30 + 4 * v29);
          if (v31 > v10)
          {
            break;
          }

          if (v31 < v13 || ((*(*(a2 + 40) + 4 * ((*(a2 + 24) - v31) >> 5)) >> (*(a2 + 24) - v31)) & 1) == 0)
          {
            *(v30 + 4 * v27) = v31;
            v28 = cf[4];
            ++v27;
          }

          ++v29;
        }

        while (v29 < v28);
        v78 = v27;
        v27 = v29;
      }

      v79 = v78 - v27 + v28;
      cf[4] = v79;
      cf[9] = v79;
      goto LABEL_287;
    }

    v64 = cf + 8;
    if (v17 > 0xFFFFFFFD || *v64 <= v10)
    {
      v65 = 0;
    }

    else
    {
      if (v17 == -3)
      {
        goto LABEL_287;
      }

      if (cf[9] <= v10)
      {
        v65 = 1;
      }

      else
      {
        if (v17 == -4)
        {
          goto LABEL_287;
        }

        if (cf[10] <= v10)
        {
          v65 = 2;
        }

        else
        {
          if (v17 == -5)
          {
            goto LABEL_287;
          }

          if (cf[11] <= v10)
          {
            v65 = 3;
          }

          else
          {
            if (v17 == -6)
            {
              goto LABEL_287;
            }

            if (cf[12] <= v10)
            {
              v65 = 4;
            }

            else
            {
              if (v17 == -7)
              {
                goto LABEL_287;
              }

              if (cf[13] <= v10)
              {
                v65 = 5;
              }

              else
              {
                if (v17 == -8 || cf[14] > v10)
                {
                  goto LABEL_287;
                }

                v65 = 6;
              }
            }
          }
        }
      }
    }

    v82 = (-2 - v17);
    if (v65 >= v82)
    {
      goto LABEL_287;
    }

    v83 = v82 - v65;
    v84 = &cf[v65 + 8];
    while (1)
    {
      v85 = *v84;
      if (*v84 < v13)
      {
        goto LABEL_287;
      }

      if (a2)
      {
        if (*(a2 + 20) <= v85)
        {
          v86 = *(a2 + 24);
          v87 = v86 - v85;
          if (v86 >= v85)
          {
            v88 = *(a2 + 16);
            if (v88 > -10)
            {
              if (v88 < 0)
              {
                if (v88 < 0xFFFFFFFE && (*(a2 + 32) == v85 || v88 != -3 && (*(a2 + 36) == v85 || v88 != -4 && (*(a2 + 40) == v85 || v88 != -5 && (*(a2 + 44) == v85 || v88 != -6 && (*(a2 + 48) == v85 || v88 != -7 && (*(a2 + 52) == v85 || v88 != -8 && *(a2 + 56) == v85)))))))
                {
                  goto LABEL_162;
                }
              }

              else
              {
                v89 = binarySearchMap(a2, *v84);
                v90 = *(a2 + 36);
                if (v89 < v90 || (v91 = 0, v92 = *(a2 + 32), v89 < v92) && v89 >= v92 + v90 - *(a2 + 16))
                {
                  v91 = *(*(a2 + 40) + 4 * v89) == v85;
                }

                if ((v91 ^ (CFGetTypeID(a2) == __kCIIndexSetInvertedTypeID)))
                {
LABEL_162:
                  ++cf[4];
                  goto LABEL_148;
                }

                v85 = *v84;
              }
            }

            else if ((*(*(a2 + 40) + 4 * (v87 >> 5)) >> v87))
            {
              goto LABEL_162;
            }
          }
        }
      }

      v64[v65++] = v85;
LABEL_148:
      ++v84;
      if (!--v83)
      {
        goto LABEL_287;
      }
    }
  }

  if (v16 < 0)
  {
    v66 = -2 - v16;
    v67 = (a2 + 32);
    if (v16 > 0xFFFFFFFD || *v67 <= v10)
    {
      v68 = 0;
    }

    else
    {
      if (v16 == -3)
      {
        goto LABEL_122;
      }

      if (*(a2 + 36) <= v10)
      {
        v68 = 1;
      }

      else
      {
        if (v16 == -4)
        {
          goto LABEL_122;
        }

        if (*(a2 + 40) <= v10)
        {
          v68 = 2;
        }

        else
        {
          if (v16 == -5)
          {
            goto LABEL_122;
          }

          if (*(a2 + 44) <= v10)
          {
            v68 = 3;
          }

          else
          {
            if (v16 == -6)
            {
              goto LABEL_122;
            }

            if (*(a2 + 48) <= v10)
            {
              v68 = 4;
            }

            else
            {
              if (v16 == -7)
              {
                goto LABEL_122;
              }

              if (*(a2 + 52) <= v10)
              {
                v68 = 5;
              }

              else
              {
                if (v16 == -8 || *(a2 + 56) > v10)
                {
                  goto LABEL_122;
                }

                v68 = 6;
              }
            }
          }
        }
      }
    }

    if (v13)
    {
      v96 = v13 - 1;
    }

    else
    {
      v96 = 0;
    }

    if (v68 < v66)
    {
      v94 = v68;
      v95 = v68;
      while (v67[v95] > v96)
      {
        if (v66 == ++v95)
        {
LABEL_195:
          LODWORD(v95) = v66;
          goto LABEL_197;
        }
      }

      goto LABEL_197;
    }

    v68 = v66;
    goto LABEL_196;
  }

  if (v13)
  {
    v46 = v13 - 1;
  }

  else
  {
    v46 = 0;
  }

  v33 = binarySearchMap(a2, v46);
  LODWORD(v34) = binarySearchMap(a2, v10);
  v47 = *(a2 + 36);
  v48 = v33 > v47 && v34 > v47;
  v49 = v33 > v47 || v34 >= v47;
  v50 = CFGetTypeID(a2);
  if (!v48 && v49)
  {
    if (v50 == __kCIIndexSetInvertedTypeID)
    {
      v51 = *(a2 + 16);
      v53 = *(a2 + 32);
      v52 = *(a2 + 36);
      v54 = v53 - v51 + v52;
      if (v33 <= v54)
      {
        v113 = 0;
      }

      else
      {
        if (v33 <= v54)
        {
          v55 = *(a2 + 40);
        }

        else
        {
          v55 = *(a2 + 40);
          v56 = v33 - 1;
          do
          {
            v57 = *(v55 + 4 * v56);
            if (v57 > v13)
            {
              _CIIndexSetClearRange(cf, v13, v57 - 1);
              v55 = *(a2 + 40);
              v51 = *(a2 + 16);
              v53 = *(a2 + 32);
              v52 = *(a2 + 36);
              v57 = *(v55 + 4 * v56);
            }

            v13 = v57 + 1;
            v54 = v53 - v51 + v52;
            v12 = v56-- <= v54;
          }

          while (!v12);
        }

        v113 = *(v55 + 4 * v54) == v10;
      }

      if (v52 > v34)
      {
        v128 = v52;
        v34 = v34;
        v125 = *(a2 + 40);
        v129 = v128 - 1;
        do
        {
          v130 = *(v125 + 4 * v129);
          if (v130 > v13)
          {
            _CIIndexSetClearRange(cf, v13, v130 - 1);
            v125 = *(a2 + 40);
            v130 = *(v125 + 4 * v129);
          }

          v13 = v130 + 1;
          v12 = v129-- <= v34;
        }

        while (!v12);
        goto LABEL_273;
      }

LABEL_275:
      if (v113)
      {
        goto LABEL_287;
      }

      goto LABEL_276;
    }

    goto LABEL_139;
  }

  if (v50 != __kCIIndexSetInvertedTypeID)
  {
    goto LABEL_135;
  }

  if (v33 > v34)
  {
    v72 = *(a2 + 40);
    v73 = v33 - 1;
    do
    {
      v74 = *(v72 + 4 * v73);
      if (v74 > v13)
      {
        _CIIndexSetClearRange(cf, v13, v74 - 1);
        v72 = *(a2 + 40);
        v74 = *(v72 + 4 * v73);
      }

      v13 = v74 + 1;
      v12 = v73-- <= v34;
    }

    while (!v12);
    if (*(v72 + 4 * v34) == v10)
    {
      goto LABEL_287;
    }
  }

LABEL_276:
  if (v10 < v13)
  {
    goto LABEL_287;
  }

  v131 = *MEMORY[0x1E69E9840];

  _CIIndexSetClearRange(cf, v13, v10);
}

void *copyQueryTokensCallback(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x414uLL);
  result = utf8_encodestr(a1, 2 * a2, __s, v13, 1043);
  if (!result)
  {
    v7 = strlen(__s);
    v8 = malloc_type_zone_malloc(queryZone, v7 + 1, 0xA4971684uLL);
    if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v13, 2u);
    }

    memcpy(v8, __s, v7);
    *(v8 + v7) = 0;
    v10 = *(a3 + 8);
    v9 = *(a3 + 12);
    result = *a3;
    if (v9 >= v10)
    {
      v11 = 2 * v10;
      if (!v10)
      {
        v11 = 16;
      }

      *(a3 + 8) = v11;
      result = malloc_type_realloc(result, 8 * v11, 0x80040B8603338uLL);
      *a3 = result;
      v9 = *(a3 + 12);
    }

    *(a3 + 12) = v9 + 1;
    *(result + v9) = v8;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void CIIndexSetRemoveSortedIndexes(uint64_t a1, unsigned int *a2, int a3)
{
  if (a3 < 1)
  {
    return;
  }

  if (CFGetTypeID(a1) == __kCIIndexSetInvertedTypeID)
  {
    v6 = *(a1 + 16);
    if (v6 > -10 || ((v7 = *(a1 + 24) - *(a1 + 20), v8 = a3 - v6 - 10, v7 + 1 < v8) ? (v9 = v7 + 1) : (v9 = v8), v6 = -10 - v9, *(a1 + 16) = -10 - v9, (v9 & 0x80000000) != 0))
    {
      if (v6 >= -1)
      {
        v10 = *(a1 + 32);
      }

      else
      {
        v10 = 4;
      }

      if (v6 < -1)
      {
        v6 = -2 - v6;
      }

      if (v10 < v6 + a3)
      {
        _CIIndexSetMakeSpace(a1, a3, 0, 0, 0);
      }
    }
  }

  v11 = *(a1 + 16);
  if (v11 <= -10)
  {
    v12 = a3;
    while (1)
    {
      v14 = *a2++;
      v13 = v14;
      if (v14 >= *(a1 + 20))
      {
        v15 = *(a1 + 24);
        v16 = v15 >= v13;
        v17 = v15 - v13;
        if (!v16)
        {
          return;
        }

        *(*(a1 + 40) + 4 * (v17 >> 5)) &= ~(1 << v17);
      }

      if (!--v12)
      {
        return;
      }
    }
  }

  if ((v11 & 0x80000000) == 0)
  {
    if (CFGetTypeID(a1) == __kCIIndexSetInvertedTypeID)
    {
      if (a3 == 1)
      {
        v77 = -1;
        v18 = *a2;
        v19 = *(a1 + 16);
        if (v19)
        {
          v20 = searchMapWithHint(a1, v18, &v77, 1);
        }

        else
        {
          v20 = 0;
        }

        v64 = *(a1 + 32);
        v65 = *(a1 + 36);
        if (v65 == v20)
        {
          if (v64 <= v19)
          {
            return;
          }

          v66 = *(a1 + 40);
        }

        else
        {
          if (v20 == v64)
          {
            if (v19 >= v20)
            {
              return;
            }

            v66 = *(a1 + 40);
          }

          else
          {
            v66 = *(a1 + 40);
            if (*(v66 + 4 * v20) == v18 || v64 <= v19)
            {
              return;
            }
          }

          if (v65 >= v20)
          {
            memmove((v66 + 4 * (v20 - v19 + v64)), (v66 + 4 * v20), 4 * (v65 - v20));
          }

          else
          {
            memmove((v66 + 4 * v65), (v66 + 4 * (v64 - v19 + v65)), 4 * (v20 - (v64 - v19 + v65)));
            v20 = v20 + v19 - v64;
          }
        }

        if (!v20)
        {
          v67 = 0;
          goto LABEL_112;
        }

        if (*(v66 + 4 * v20 - 4) > v18)
        {
          v67 = v20;
LABEL_112:
          *(v66 + 4 * v67) = v18;
          *(a1 + 36) = v20 + 1;
          *(a1 + 16) = v19 + 1;
          return;
        }

        v68 = __si_assert_copy_extra_332();
        v76 = v68;
LABEL_115:
        __message_assert_336(v68, v69, v70, v71, v72, v73, v74, v75, "CIIndexSet.c");
        free(v76);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      CIIndexSetAddSortedIndexes_ArrayBackwards(a1, a2, a3);
      return;
    }

    v28 = *(a1 + 36);
    v29 = *(a1 + 16);
    if (v28 > v29)
    {
LABEL_114:
      v68 = __si_assert_copy_extra_332();
      v76 = v68;
      goto LABEL_115;
    }

    LODWORD(v30) = *(a1 + 32) - v29;
    memmove((*(a1 + 40) + 4 * v30), *(a1 + 40), 4 * v28);
    v31 = *(a1 + 16);
    *(a1 + 36) = v31;
    if (v31 < 1 || v31 + a3 <= (__clz(v31) ^ 0x1F) * a3)
    {
      v34 = 0;
      LODWORD(v35) = 0;
      do
      {
        v36 = a2[v34];
        if (v36 > *(a1 + 24) || v36 < *(a1 + 20))
        {
          break;
        }

        if (v30 < *(a1 + 32))
        {
          v35 = v35;
          v30 = v30;
          while (1)
          {
            v37 = *(a1 + 40);
            v38 = *(v37 + 4 * v30);
            if (v38 <= v36)
            {
              break;
            }

            ++v30;
            v39 = v35 + 1;
            *(v37 + 4 * v35++) = v38;
            if (v30 >= *(a1 + 32))
            {
              LODWORD(v35) = v39;
              goto LABEL_42;
            }
          }

          if (v38 == v36)
          {
            --*(a1 + 16);
            LODWORD(v30) = v30 + 1;
          }
        }

LABEL_42:
        ++v34;
      }

      while (v34 != a3);
      v40 = *(a1 + 16);
      if (v35 <= v40)
      {
        *(a1 + 36) = v35;
      }

      else
      {
        *(a1 + 36) = v40;
      }

      return;
    }

    v32 = 0;
    v33 = 0;
    while (1)
    {
      v55 = a2[v32];
      if (v55 >= *(a1 + 20))
      {
        if (v55 > *(a1 + 24))
        {
LABEL_93:
          v63 = *(a1 + 16);
          if (v33 <= v63)
          {
            *(a1 + 36) = v33;
          }

          else
          {
            *(a1 + 36) = v63;
          }

          return;
        }

        v56 = *(a1 + 40);
        v57 = *(a1 + 32);
        v58 = v57 - 1;
        LODWORD(v59) = v30;
        if ((v57 - 33) < v30)
        {
LABEL_79:
          v59 = v59;
          v60 = v58 + 1 > v59 ? v58 + 1 : v59;
          while (v59 <= v58)
          {
            v62 = *(v56 + 4 * v59++);
            if (v62 <= v55)
            {
              v60 = v59 - 1;
              break;
            }
          }
        }

        else
        {
          while (1)
          {
            v60 = v59 + (v58 - v59) / 2;
            v61 = *(v56 + 4 * v60);
            if (v61 == v55)
            {
              break;
            }

            if (v61 > v55)
            {
              LODWORD(v59) = v60 + 1;
            }

            else
            {
              v58 = v60 - 1;
            }

            if (v59 > (v58 - 32))
            {
              goto LABEL_79;
            }
          }
        }

        if (v60 < v57)
        {
          if (v60 == v30)
          {
            if (*(v56 + 4 * v30) != v55)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          memmove((v56 + 4 * v33), (v56 + 4 * v30), 4 * (v60 - v30));
          v33 += v60 - v30;
          if (*(*(a1 + 40) + 4 * v60) == v55)
          {
            LODWORD(v30) = v60;
LABEL_69:
            --*(a1 + 16);
            LODWORD(v30) = v30 + 1;
            goto LABEL_70;
          }

          LODWORD(v30) = v60;
          if (v33 >= *(a1 + 32))
          {
            goto LABEL_114;
          }
        }
      }

LABEL_70:
      if (++v32 == a3)
      {
        goto LABEL_93;
      }
    }
  }

  v21 = -2 - v11;
  if (v11 > 0xFFFFFFFD)
  {
    v24 = 0;
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = a1 + 32;
    do
    {
      v26 = a2[v23];
      v27 = *(v25 + 4 * v22);
      if (v27 == v26)
      {
        ++v22;
        ++v23;
        ++*(a1 + 16);
      }

      else if (v27 > v26)
      {
        ++v22;
        *(v25 + 4 * v24++) = v27;
      }

      else
      {
        ++v23;
      }
    }

    while (v22 < v21 && v23 < a3);
  }

  if (v22 < v21)
  {
    v41 = v22;
    v42 = v24;
    v43 = v22 + v11;
    v44 = (-3 - v43);
    if (v44 > 6 && ((v24 - v41) & 0x3FFFFFFFFFFFFFF8) != 0)
    {
      v45 = v44 + 1;
      v46 = (v44 + 1) & 0x1FFFFFFF8;
      v47 = (a1 + 4 * v24 + 48);
      v48 = (a1 + 4 * v41 + 48);
      v49 = v46;
      do
      {
        v50 = *v48;
        *(v47 - 1) = *(v48 - 1);
        *v47 = v50;
        v47 += 2;
        v48 += 2;
        v49 -= 8;
      }

      while (v49);
      if (v45 == v46)
      {
        return;
      }

      v41 += v46;
      v42 = v46 + v24;
    }

    v51 = (a1 + 4 * v42 + 32);
    v52 = v24 - v43 - v42 - 2;
    v53 = (a1 + 4 * v41 + 32);
    do
    {
      v54 = *v53++;
      *v51++ = v54;
      --v52;
    }

    while (v52);
  }
}

void CIReleaseIndexingTokenizer(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 4)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CITokenizer.c", 291, "version>=0 && version<=kCITokenizerVersionCurrent", v8);
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

  if (*(a1 + 8))
  {
    v3 = *(a1 + 24);
    _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  }

  if (*(a1 + 16))
  {
    v4 = *(a1 + 24);
    _NLStringTokenizerSetStringWithOptionsAndLanguageID();
  }

  v5 = OSAtomicDequeue(&gIndexingTokenizerHeap, 0);
  if (!v5)
  {
    v5 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  }

  v5[1] = a1;

  OSAtomicEnqueue(&gIndexingTokenizerStack + v1, v5, 0);
}

void CIIndexSetReleaseToPerThreadCache(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= 0xFFFFFFF6)
  {
    blob_free(*(a1 + 40), *(a1 + 32), a2);
  }

  *(a1 + 40) = a2[1];
  *(a1 + 32) = -2;
  a2[1] = a1;
}

_BYTE *copyQueryTerm(const char *a1, unsigned int a2)
{
  v4 = strlen(a1);
  v5 = v4;
  v6 = 5;
  v7 = a2 >> 28;
  v8 = 4;
  v9 = a2 >> 21;
  v10 = 3;
  v11 = a2 >> 14;
  v12 = 1;
  if (a2 >= 0x80)
  {
    v12 = 2;
  }

  if (!v11)
  {
    v10 = v12;
  }

  if (!v9)
  {
    v8 = v10;
  }

  if (!v7)
  {
    v6 = v8;
  }

  v13 = malloc_type_zone_malloc(queryZone, v4 + v6 + 3, 0xA4971684uLL);
  if (!v13)
  {
    _log_fault_for_malloc_failure();
  }

  if (a2 >= 2)
  {
    *v13 = 1;
    if (v7)
    {
      v19 = a2 >> 7;
      v13[1] = a2 | 0x80;
      v16 = 28;
      v20 = 21;
      v21 = 14;
      v17 = 6;
      v14 = 5;
      v15 = 4;
      v22 = 3;
      v23 = 2;
    }

    else
    {
      if (!v9)
      {
        if (!v11)
        {
          v14 = 2;
          v15 = 1;
          if (a2 < 0x80)
          {
LABEL_23:
            v13[v15] = a2;
            memcpy(&v13[v14], a1, v5);
            v5 += v14;
            goto LABEL_24;
          }

          v16 = 7;
          v17 = 3;
          LOBYTE(v18) = a2;
LABEL_22:
          v13[v15] = v18 | 0x80;
          a2 >>= v16;
          v15 = v14;
          v14 = v17;
          goto LABEL_23;
        }

        v16 = 14;
        v20 = 7;
        v17 = 4;
        v14 = 3;
        v15 = 2;
        v22 = 1;
        LOBYTE(v24) = a2;
LABEL_21:
        v13[v22] = v24 | 0x80;
        v18 = a2 >> v20;
        goto LABEL_22;
      }

      v16 = 21;
      v20 = 14;
      v21 = 7;
      v17 = 5;
      v14 = 4;
      v15 = 3;
      v22 = 2;
      v23 = 1;
      LOBYTE(v19) = a2;
    }

    v13[v23] = v19 | 0x80;
    v24 = a2 >> v21;
    goto LABEL_21;
  }

  memcpy(v13, a1, v5);
LABEL_24:
  v13[v5] = 0;
  return v13;
}

void findMatchTermWildcard(uint64_t a1, unint64_t a2, int a3, int a4)
{
  LODWORD(v5) = a3;
  v8 = HIDWORD(a2);
  if (!a4)
  {
    goto LABEL_50;
  }

  if (HIDWORD(a2) == 1)
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 8);
    if (a2 >= v11)
    {
      v43 = __si_assert_copy_extra_2708(*(v12 + 112));
      v44 = v43;
      v45 = "";
      if (v43)
      {
        v45 = v43;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4368, "ptr.next < ctx->trie_max", v45, a2, *(a1 + 64));
      free(v44);
      if (__valid_fsp(*(*(a1 + 8) + 112)))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v10 = mgetBase(v12, a2);
  }

  else
  {
    if (HIDWORD(a2) != 3)
    {
      if (*(a1 + 48) != 1)
      {
        goto LABEL_50;
      }

      LODWORD(v13) = 0;
LABEL_15:
      v15 = 0;
      v14 = v13 >> 1;
      if (!(v13 >> 1))
      {
        goto LABEL_50;
      }

      goto LABEL_16;
    }

    v9 = *(a1 + 8);
    if (a2 >= *(a1 + 64))
    {
      v39 = __si_assert_copy_extra_2708(*(v9 + 4576));
      v40 = v39;
      v41 = "";
      if (v39)
      {
        v41 = v39;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 4365, "ptr.next < ctx->trie_fat_max", v41, a2, *(a1 + 64));
      free(v40);
      if (__valid_fsp(*(*(a1 + 8) + 4576)))
      {
        v42 = 2989;
      }

      else
      {
        v42 = 3072;
      }

      *v42 = -559038737;
      abort();
    }

    v10 = (*(v9 + 8) + 1028 * a2);
  }

  v13 = *v10;
  if (*(a1 + 48) != 1)
  {
    if (!v13)
    {
      goto LABEL_50;
    }

    v16 = *(a1 + 1240);
    v17 = *(v16 + 4);
    if (v17 & 0x610) != 0 || (**a1)
    {
      goto LABEL_50;
    }

    if ((v17 & 4) != 0)
    {
      v25 = *(a1 + 88);
      if ((v25 - 2) > 2 || v25 != **v16)
      {
        goto LABEL_50;
      }

      v26 = termNumberCompare((a1 + 88), *v16);
      if ((v17 & 0x20) != 0)
      {
        if (v26 < 0)
        {
          goto LABEL_50;
        }
      }

      else if (v26 < 1)
      {
        goto LABEL_50;
      }

      v27 = termNumberCompare((a1 + 88), v16[1]);
      if ((v17 & 0x40) != 0)
      {
        if (v27 > 0)
        {
          goto LABEL_50;
        }
      }

      else if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else if ((v17 & 0x8000) != 0 || **v16 != 42 || (*v16)[1])
    {
      v18 = v16[4];
      v19 = v16[5];
      if (v18)
      {
        if (!v19)
        {
          if (!localizedFieldTermMatch(v18, *(v16 + 5), (a1 + 88), *(a1 + 1140), *(v16 + 4)))
          {
            goto LABEL_50;
          }

          v20 = *(a1 + 1140);
          v21 = (a1 + 88);
          v22 = a1;
          v23 = v13;
          v24 = 1;
LABEL_49:
          findHandleMatch(v22, v23, 0, v21, v20, v24);
          goto LABEL_50;
        }

LABEL_103:
        if (*(a1 + 88) != 1)
        {
          v46 = termPropertyID((a1 + 88), *(a1 + 1140));
          v47 = 0;
          goto LABEL_134;
        }

        v46 = *(a1 + 89);
        if (v46 == 2)
        {
          v46 = *(a1 + 90);
          if ((*(a1 + 90) & 0x80000000) == 0)
          {
            v47 = 3;
            goto LABEL_134;
          }

          v48 = *(a1 + 91);
          if ((*(a1 + 91) & 0x80000000) == 0)
          {
            v46 = v46 & 0x7F | (v48 << 7);
            v47 = 4;
            goto LABEL_134;
          }

          v50 = *(a1 + 92);
          if ((*(a1 + 92) & 0x80000000) == 0)
          {
            v51 = ((v48 & 0x7F) << 7) | (v50 << 14);
LABEL_132:
            v53 = v51 & 0xFFFFFF80 | v46 & 0x7F;
            v47 = 5;
            goto LABEL_133;
          }

          v54 = *(a1 + 93);
          if ((*(a1 + 93) & 0x80000000) == 0)
          {
            v53 = ((v50 & 0x7F) << 14) | (v54 << 21) | ((v48 & 0x7F) << 7) | v46 & 0x7F;
            v47 = 6;
            goto LABEL_133;
          }

          v59 = *(a1 + 94);
          if ((v59 & 0x80000000) == 0)
          {
            v60 = ((v54 & 0x7F) << 21) | (v59 << 28) | ((v50 & 0x7F) << 14) | ((v48 & 0x7F) << 7) | v46 & 0x7F;
            v47 = 7;
            v46 = v60;
            goto LABEL_134;
          }
        }

        else
        {
          if ((v46 & 0x80) == 0)
          {
            v47 = 2;
            goto LABEL_134;
          }

          v49 = *(a1 + 90);
          if ((*(a1 + 90) & 0x80000000) == 0)
          {
            v46 = v46 & 0x7F | (v49 << 7);
            v47 = 3;
            goto LABEL_134;
          }

          v52 = *(a1 + 91);
          if ((*(a1 + 91) & 0x80000000) == 0)
          {
            v53 = ((v49 & 0x7F) << 7) | (v52 << 14) | v46 & 0x7F;
            v47 = 4;
LABEL_133:
            v46 = v53;
            goto LABEL_134;
          }

          v55 = *(a1 + 92);
          if ((*(a1 + 92) & 0x80000000) == 0)
          {
            v51 = ((v52 & 0x7F) << 14) | (v55 << 21) | ((v49 & 0x7F) << 7);
            goto LABEL_132;
          }

          v61 = *(a1 + 93);
          if ((v61 & 0x80000000) == 0)
          {
            v62 = ((v55 & 0x7F) << 21) | (v61 << 28) | ((v52 & 0x7F) << 14) | ((v49 & 0x7F) << 7) | v46 & 0x7F;
            v47 = 6;
            v46 = v62;
LABEL_134:
            if (*(v16 + 5) == v46)
            {
              v56 = *(a1 + 1140) - v47;
              while (v56 >= 1)
              {
                v57 = *(a1 + 88 + v47 - 1 + v56);
                if (v57 > 5)
                {
                  v58 = *(*(a1 + 1240) + 40);
                  if (!__findTermIDsContextMatchPatternsRegExMatch())
                  {
                    goto LABEL_50;
                  }

                  v20 = *(a1 + 1140);
                  v22 = a1;
                  v23 = v13;
                  v21 = (a1 + 88);
                  v24 = 1;
                  goto LABEL_49;
                }

                --v56;
                if ((v57 & 5) != 1)
                {
                  goto LABEL_50;
                }
              }
            }

            goto LABEL_50;
          }
        }

        v38 = __si_assert_copy_extra_2708(0);
        __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_81:
        free(v38);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if (v19)
      {
        goto LABEL_103;
      }

      if (*(v16 + 5) == 1 && termPropertyID((a1 + 88), *(a1 + 1140)) != 1 || !termMatch((a1 + 88), *(a1 + 1140), *v16, *(v16 + 6)))
      {
        goto LABEL_50;
      }
    }

    else if (!termFieldMatch(*(v16 + 5), (a1 + 88), *(a1 + 1140), *(v16 + 4)))
    {
      goto LABEL_50;
    }

    if ((v17 & 0x8000) != 0)
    {
      goto LABEL_50;
    }

    v20 = *(a1 + 1140);
    v21 = (a1 + 88);
    v22 = a1;
    v23 = v13;
    v24 = 0;
    goto LABEL_49;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((*v10 & 3) == 1)
  {
    v14 = v13 >> 2;
    v15 = 0x100000000;
    if (!(v13 >> 2))
    {
      goto LABEL_50;
    }

LABEL_16:
    findAddFlatBucket(a1, v15 | v14, 0, 0, 0, 0);
    goto LABEL_50;
  }

  v14 = v13 >> 3;
  v15 = (v13 & 7) << 32;
  if (v13 >> 3)
  {
    goto LABEL_16;
  }

LABEL_50:
  if (v8 != 1)
  {
    if (v8 == 3)
    {
      v5 = v5;
      v28 = *(*(a1 + 8) + 8) + 1028 * a2 + 4;
      do
      {
        v29 = *(v28 + 4 * v5);
        v30 = v29 >> 1;
        v31 = v29 >> 3;
        v32 = (v29 & 7) << 32;
        if ((v29 & 3) == 1)
        {
          v32 = 0x100000000;
          v31 = v29 >> 2;
        }

        v75 = (*(v28 + 4 * v5) & 1) == 0;
        if (v29)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if (*(v28 + 4 * v5))
        {
          v30 = v31;
        }

        if (v30)
        {
          _findMatchTermWildcard(a1, a2, v33 | v30, tcmr[v5], a4);
        }

        ++v5;
      }

      while (v5 != 256);
    }

    return;
  }

  v34 = mgetBase(*(a1 + 8), a2);
  if (v5)
  {
    v38 = __si_assert_copy_extra_2708(0);
    __message_assert("%s:%u: failed assertion '%s' %s ");
    goto LABEL_81;
  }

  v35 = v34[36];
  v36 = (v34 + 4);
  v78 = v34;
  if (v34[4])
  {
    v37 = 0;
  }

  else if (v34[5])
  {
    v37 = 8u;
  }

  else if (v34[6])
  {
    v37 = 0x10u;
  }

  else if (v34[7])
  {
    v37 = 0x18u;
  }

  else if (v34[8])
  {
    v37 = 0x20u;
  }

  else if (v34[9])
  {
    v37 = 0x28u;
  }

  else if (v34[10])
  {
    v37 = 0x30u;
  }

  else if (v34[11])
  {
    v37 = 0x38u;
  }

  else if (v34[12])
  {
    v37 = 0x40u;
  }

  else if (v34[13])
  {
    v37 = 0x48u;
  }

  else if (v34[14])
  {
    v37 = 0x50u;
  }

  else if (v34[15])
  {
    v37 = 0x58u;
  }

  else if (v34[16])
  {
    v37 = 0x60u;
  }

  else if (v34[17])
  {
    v37 = 0x68u;
  }

  else if (v34[18])
  {
    v37 = 0x70u;
  }

  else if (v34[19])
  {
    v37 = 0x78u;
  }

  else if (v34[20])
  {
    v37 = 0x80u;
  }

  else if (v34[21])
  {
    v37 = 0x88u;
  }

  else if (v34[22])
  {
    v37 = 0x90u;
  }

  else if (v34[23])
  {
    v37 = 0x98u;
  }

  else if (v34[24])
  {
    v37 = 0xA0u;
  }

  else if (v34[25])
  {
    v37 = 0xA8u;
  }

  else if (v34[26])
  {
    v37 = 0xB0u;
  }

  else if (v34[27])
  {
    v37 = 0xB8u;
  }

  else if (v34[28])
  {
    v37 = 0xC0u;
  }

  else if (v34[29])
  {
    v37 = 0xC8u;
  }

  else if (v34[30])
  {
    v37 = 0xD0u;
  }

  else if (v34[31])
  {
    v37 = 0xD8u;
  }

  else if (v34[32])
  {
    v37 = 0xE0u;
  }

  else if (v34[33])
  {
    v37 = 0xE8u;
  }

  else if (v34[34])
  {
    v37 = 0xF0u;
  }

  else
  {
    if (!v34[35])
    {
      return;
    }

    v37 = 0xF8u;
  }

  if (v34[36])
  {
    v63 = v34 + 38;
    while (((*(v36->i32 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v37) & 1) == 0)
    {
LABEL_195:
      if (v35)
      {
        if (v37++ < 0xFF)
        {
          continue;
        }
      }

      return;
    }

    v64 = 0;
    v65 = v37 >> 6;
    if (v37 >> 6 > 1)
    {
      if (v65 != 2)
      {
        v67 = vcnt_s8(*(v78 + 20));
        v67.i16[0] = vaddlv_u8(v67);
        v64 = v67.u32[0];
      }

      v68 = vcnt_s8(*(v78 + 12));
      v68.i16[0] = vaddlv_u8(v68);
      v64 += v68.u32[0];
    }

    else
    {
      v66 = v65;
      if (!v65)
      {
        goto LABEL_187;
      }
    }

    v69 = vcnt_s8(*v36);
    v69.i16[0] = vaddlv_u8(v69);
    v66 = v69.u32[0] + v64;
LABEL_187:
    v70 = vcnt_s8((*&v36[v65] & ~(-1 << v37)));
    v70.i16[0] = vaddlv_u8(v70);
    v71 = *&v63[4 * v70.u32[0] + 4 * v66];
    v72 = v71 >> 1;
    v73 = v71 >> 3;
    v74 = (v71 & 7) << 32;
    if ((v71 & 3) == 1)
    {
      v74 = 0x100000000;
      v73 = v71 >> 2;
    }

    v75 = (v71 & 1) == 0;
    if (v71)
    {
      v76 = v74;
    }

    else
    {
      v76 = 0;
    }

    if (!v75)
    {
      v72 = v73;
    }

    _findMatchTermWildcard(a1, a2, v76 | v72, tcmr[v37], a4);
    LOBYTE(v35) = v35 - 1;
    goto LABEL_195;
  }
}

void cicachelistenqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != 4292677391)
  {
    v6 = __si_assert_copy_extra_332();
    __message_assert_336(v6, v7, v8, v9, v10, v11, v12, v13, "CIIndexSet.c");
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 16));
  *(a2 + a3) = *(a1 + 8);
  *(a1 + 8) = a2;

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t flat_levels_cf_set_applier1(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  do
  {
    for (; v3; v3 = *v3 & 0x7FFFFFFFFFFFFFFFLL)
    {
      result = (*a2)(*(v3 + 32), v3 + 34, v3 + 16, *(v3 + 28), *(a2 + 16));
      if ((*(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        *(v7 + v4++) = *(v3 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v5 = __OFSUB__(v4--, 1);
    if (v4 < 0 != v5)
    {
      break;
    }

    v3 = *(v7 + v4);
  }

  while (v3);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void resolveQueryInfoCallback(unsigned int a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t *a5)
{
  v102 = *MEMORY[0x1E69E9840];
  if (a1 >= 0x415)
  {
    v84 = __si_assert_copy_extra_332();
    v85 = v84;
    v86 = "";
    if (v84)
    {
      v86 = v84;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %d", "CIQuery.c", 1369, "termLen <= CI_UTF8CHARS_BUFFER_SIZE", v86, a1);
    free(v85);
    if (__valid_fs(-1))
    {
      v87 = 2989;
    }

    else
    {
      v87 = 3072;
    }

    *v87 = -559038737;
    abort();
  }

  bzero(&v95, 0x415uLL);
  if (a1)
  {
    v10 = &v95;
    v11 = a1;
    do
    {
      v12 = *a2++;
      *v10++ = tcmr[v12];
      --v11;
    }

    while (v11);
  }

  v13 = &v95 + a1;
  *v13 = 0;
  if (*(a5 + 2))
  {
    v14 = 0;
    v92 = *(v13 - 1);
    do
    {
      v15 = a5[2];
      v16 = (v15 + (v14 << 6));
      v17 = *(v16 + 4);
      if ((v17 & 0x610) == 0)
      {
        if ((v17 & 4) != 0)
        {
          v20 = v95;
          if (v95 - 2 > 2 || v95 != **v16)
          {
            goto LABEL_8;
          }

          v22 = *v16 + 1;
          v23 = &v96;
          if ((v17 & 0x20) != 0)
          {
            do
            {
              v31 = *v23++;
              v30 = v31;
              v33 = *v22++;
              v32 = v33;
              if (v30)
              {
                v34 = v30 == v32;
              }

              else
              {
                v34 = 0;
              }
            }

            while (v34);
            v35 = v32 != 0;
            if (v30)
            {
              v35 = v30 < v32;
            }

            if (v35)
            {
              goto LABEL_8;
            }
          }

          else
          {
            do
            {
              v25 = *v23++;
              v24 = v25;
              v27 = *v22++;
              v26 = v27;
              if (v24)
              {
                v28 = v24 == v26;
              }

              else
              {
                v28 = 0;
              }
            }

            while (v28);
            if (v24)
            {
              v29 = v24 >= v26;
            }

            else
            {
              v29 = 0;
            }

            if (!v29)
            {
              goto LABEL_8;
            }
          }

          v36 = v16[1];
          v37 = *v36;
          v38 = v95 == 0;
          v39 = v95 != v37 || v95 == 0;
          if ((v17 & 0x40) != 0)
          {
            if (!v39)
            {
              v63 = v36 + 1;
              v64 = &v96;
              do
              {
                v65 = *v64++;
                v20 = v65;
                LOBYTE(v38) = v65 == 0;
                v66 = *v63++;
                v37 = v66;
                if (v20)
                {
                  v67 = v20 == v37;
                }

                else
                {
                  v67 = 0;
                }
              }

              while (v67);
            }

            if (v20 >= v37 && !v38)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (!v39)
            {
              v40 = v36 + 1;
              v41 = &v96;
              do
              {
                v42 = *v41++;
                v20 = v42;
                v38 = v42 == 0;
                v43 = *v40++;
                v37 = v43;
                if (v20)
                {
                  v44 = v20 == v37;
                }

                else
                {
                  v44 = 0;
                }
              }

              while (v44);
            }

            if (v37)
            {
              v45 = -1;
            }

            else
            {
              v45 = 0;
            }

            v46 = (v20 < v37) << 31;
            if (v38)
            {
              v46 = v45;
            }

            if ((v46 & 0x80000000) == 0)
            {
              goto LABEL_8;
            }
          }

LABEL_89:
          v70 = *(v15 + (v14 << 6) + 20);
          if (v70 != -1)
          {
            v71 = termPropertyID_14135(&v95, a1);
            if (v71 != v70 && (v17 & 0x3080 | v70 || v71 != 2))
            {
              goto LABEL_8;
            }
          }

LABEL_13:
          v19 = a5[8];
          if (v19)
          {
            (*(v19 + 16))(v19, v14, a3, *a5);
          }

          else
          {
            v49 = *(a5[3] + 8 * v14);
            if ((*(a5[2] + (v14 << 6) + 16) & 0x3080) != 0)
            {
              if (a4)
              {
                v50 = *a5;
                v51 = a5[5];
                v52 = a5[6];
                v53 = *(a5 + 14);
                v9.n128_u64[0] = 0;
                (*(v49 + 56))(v9);
              }
            }

            else
            {
              v68 = *a5;
              v69 = *(a5 + 14);
              v9.n128_u64[0] = 0;
              (*(v49 + 56))(v9);
            }
          }

          goto LABEL_8;
        }

        v18 = v16[4];
        if (v18)
        {
          if (localizedFieldTermMatch_14134(v18, *(v16 + 5), &v95, a1, *(v16 + 4)))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v16[5])
          {
            if (v95 != 1)
            {
              v47 = termPropertyID_14135(&v95, a1);
              v48 = 0;
              v15 = a5[2];
              goto LABEL_112;
            }

            v47 = v96;
            if (v96 == 2)
            {
              v47 = v97;
              if (v97 < 0)
              {
                if ((v98 & 0x80000000) == 0)
                {
                  v47 = v97 & 0x7F | (v98 << 7);
                  v48 = 4;
                  goto LABEL_112;
                }

                if ((v99 & 0x80000000) == 0)
                {
                  v73 = ((v98 & 0x7F) << 7) | (v99 << 14);
                  goto LABEL_110;
                }

                if ((v100 & 0x80000000) == 0)
                {
                  v74 = ((v99 & 0x7F) << 14) | (v100 << 21) | ((v98 & 0x7F) << 7) | v97 & 0x7F;
                  v48 = 6;
                  goto LABEL_111;
                }

                if (v101 < 0)
                {
                  goto LABEL_138;
                }

                v80 = ((v100 & 0x7F) << 21) | (v101 << 28) | ((v99 & 0x7F) << 14) | ((v98 & 0x7F) << 7) | v97 & 0x7F;
                v48 = 7;
LABEL_124:
                v47 = v80;
                goto LABEL_112;
              }
            }

            else
            {
              if ((v96 & 0x80) == 0)
              {
                v48 = 2;
                goto LABEL_112;
              }

              if (v97 < 0)
              {
                if ((v98 & 0x80000000) == 0)
                {
                  v74 = ((v97 & 0x7F) << 7) | (v98 << 14) | v96 & 0x7F;
                  v48 = 4;
                  goto LABEL_111;
                }

                if (v99 < 0)
                {
                  if (v100 < 0)
                  {
LABEL_138:
                    v88 = __si_assert_copy_extra_332();
                    v89 = v88;
                    v90 = "";
                    if (v88)
                    {
                      v90 = v88;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v90);
                    free(v89);
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

                  v80 = ((v99 & 0x7F) << 21) | (v100 << 28) | ((v98 & 0x7F) << 14) | ((v97 & 0x7F) << 7) | v96 & 0x7F;
                  v48 = 6;
                  goto LABEL_124;
                }

                v73 = ((v98 & 0x7F) << 14) | (v99 << 21) | ((v97 & 0x7F) << 7);
LABEL_110:
                v74 = v73 & 0xFFFFFF80 | v47 & 0x7F;
                v48 = 5;
LABEL_111:
                v47 = v74;
LABEL_112:
                v75 = v15 + (v14 << 6);
                if (*(v75 + 20) == v47)
                {
                  v76 = a1 - v48;
                  v77 = &v94 + v48;
                  while (v76 >= 1)
                  {
                    v78 = v77[v76];
                    if (v78 > 5)
                    {
                      v79 = *(v75 + 40);
                      if ((icu_regex_find() & 1) == 0)
                      {
                        goto LABEL_8;
                      }

                      goto LABEL_13;
                    }

                    --v76;
                    if ((v78 & 5) != 1)
                    {
                      goto LABEL_8;
                    }
                  }
                }

                goto LABEL_8;
              }

              v47 = v96 & 0x7F | (v97 << 7);
            }

            v48 = 3;
            goto LABEL_112;
          }

          v54 = *v16;
          v55 = *(v16 + 6);
          v56 = **v16;
          if (v56 > 4)
          {
            v59 = &v95;
            if (v56 == 42 && termPropertyID_14135(&v95, a1) == 2)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v56 != v95)
            {
              goto LABEL_8;
            }

            v57 = v54 + 1;
            v58 = v54[1];
            if (v58 != v96)
            {
              goto LABEL_8;
            }

            v59 = &v97;
            if (v58 == 2)
            {
              v61 = v54[2];
              v60 = v54 + 2;
              LOBYTE(v58) = v61;
              if (v61 != v97)
              {
                goto LABEL_8;
              }

              v57 = v60;
              v59 = &v98;
            }

            v54 = v57 + 1;
            if ((v58 & 0x80) != 0)
            {
              v62 = *v54;
              if (v62 != *v59)
              {
                goto LABEL_8;
              }

              v54 = v57 + 2;
              if (v62 < 0)
              {
                v81 = *v54;
                if (v81 != v59[1])
                {
                  goto LABEL_8;
                }

                if (v81 < 0)
                {
                  v82 = v57[3];
                  if (v82 < 0 || v59[2] != v82)
                  {
                    goto LABEL_8;
                  }

                  v59 += 3;
                  v54 = v57 + 4;
                }

                else
                {
                  v59 += 2;
                  v54 = v57 + 3;
                }
              }

              else
              {
                ++v59;
              }
            }
          }

          if (matche(v54, v59, v55, 0, 0))
          {
            v15 = a5[2];
            v17 = *(v15 + (v14 << 6) + 16);
            goto LABEL_89;
          }
        }
      }

LABEL_8:
      ++v14;
    }

    while (v14 < *(a5 + 2));
  }

  v83 = *MEMORY[0x1E69E9840];
}

uint64_t PayloadIterate_UpdateSet(uint64_t result, uint64_t a2, uint64_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11)
{
  if (a2)
  {
    v11 = *a4.i32;
    v14 = a2;
    v15 = result;
    v24 = a4.u32[0] << 32;
    LODWORD(v25) = 0;
    do
    {
      if (*v14)
      {
        if (*(v14 + 4))
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        v25 = v25 & 0xFFFFFF00 | a10;
        v23 = v23 & 0xFFFFFFFF00000000 | a11;
        result = handleUpdate(v15, *(v14 + 8), v22, v24 | v25, a11);
      }

      else if (!*(v15 + 136) || (v16 = *(v14 + 8), **(v15 + 128) < v16) || (result = checkAgainstChangeHolder(v15 + 128, *(v15 + 112) + v16), (result & 1) == 0))
      {
        if ((a9 & 1) == 0 && _CIIndexSetRemoveIndex(*(v15 + 96), *(v14 + 8)))
        {
          --*(v15 + 104);
        }

        v17 = *(v15 + 88);
        v18 = *(v14 + 8);
        v26 = -1;
        result = _CIIndexSetAddIndex(v17, v18, 0, &v26, a4);
        if (result)
        {
          if (a9)
          {
            v19 = *(v15 + 96);
            v20 = *(v14 + 8);
            v27 = -1;
            result = _CIIndexSetAddIndex(v19, v20, 0, &v27, a4);
            if (result)
            {
              ++*(v15 + 104);
            }
          }
        }

        if (a10)
        {
          v21 = *(v15 + 72);
          if (!v21)
          {
            v21 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200406E8F4065uLL);
            atomic_store(1u, v21 + 8);
            *(v15 + 72) = v21;
          }

          result = distanceHolderSetMinDistance(v21, *(v15 + 112) + *(v14 + 8), a11, v11);
        }
      }

      if (*v14 < 2u)
      {
        break;
      }

      v14 = a3 + 12 * (*v14 >> 1);
    }

    while (a3);
  }

  return result;
}

uint64_t lockedCountItemsInRange(uint64_t a1, unsigned int a2, unsigned int a3, int8x8_t a4)
{
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  if (v4 == a3)
  {
    if (!a1)
    {
      return 0;
    }

    if (*(a1 + 20) > a3)
    {
      return 0;
    }

    v5 = *(a1 + 24);
    v12 = v5 >= a3;
    v6 = v5 - a3;
    if (!v12)
    {
      return 0;
    }

    v7 = *(a1 + 16);
    if (v7 <= -10)
    {
      return (*(*(a1 + 40) + 4 * (v6 >> 5)) >> v6) & 1;
    }

    if ((v7 & 0x80000000) == 0)
    {
      v30 = a1;
      v32 = binarySearchMap(a1, a3);
      v33 = v30;
      v34 = *(v30 + 36);
      if (v32 < v34 || (v35 = 0, v36 = *(v33 + 32), v32 < v36) && v32 >= v36 + v34 - *(v33 + 16))
      {
        v35 = *(*(v33 + 40) + 4 * v32) == a3;
      }

      return v35 ^ (CFGetTypeID(v33) == __kCIIndexSetInvertedTypeID);
    }

    if (v7 <= 0xFFFFFFFD)
    {
      v8 = *(a1 + 32) == a3;
      if (*(a1 + 32) != a3 && v7 != -3)
      {
        v8 = *(a1 + 36) == a3;
        if (*(a1 + 36) != a3 && v7 != -4)
        {
          v8 = *(a1 + 40) == a3;
          if (*(a1 + 40) != a3 && v7 != -5)
          {
            v8 = *(a1 + 44) == a3;
            if (*(a1 + 44) != a3 && v7 != -6)
            {
              v8 = *(a1 + 48) == a3;
              if (*(a1 + 48) != a3 && v7 != -7)
              {
                v8 = *(a1 + 52) == a3;
                if (*(a1 + 52) != a3 && v7 != -8)
                {
                  return *(a1 + 56) == a3;
                }
              }
            }
          }
        }
      }

      return v8;
    }

    return 0;
  }

  v10 = *(a1 + 20);
  v9 = *(a1 + 24);
  if (v4 <= v10)
  {
    v11 = *(a1 + 20);
  }

  else
  {
    v11 = v4;
  }

  v12 = v10 <= a3 && v9 >= v11;
  if (!v12)
  {
    return 0;
  }

  v13 = v9 >= a3 ? a3 : *(a1 + 24);
  if (v4 > a3)
  {
    return 0;
  }

  v15 = *(a1 + 16);
  if (v15 <= -10)
  {
    v16 = v9 - v13;
    v17 = (v9 - v13) >> 5;
    v18 = v9 - v11;
    v19 = v18 >> 5;
    if (v17 > v18 >> 5)
    {
      return 0;
    }

    v20 = v16 & 0x1F;
    v21 = v18 & 0x1F;
    v22 = *(a1 + 40);
    v23 = (v22 + 4 * v17);
    v24 = *v23;
    if (v17 == v19)
    {
      v25 = masks[v20];
      if (v20 != v21 + 1)
      {
        v25 = masks[v21 + 1] & ~v25;
      }

      a4.i32[0] = v25 & v24;
      v26 = vcnt_s8(a4);
      v26.i16[0] = vaddlv_u8(v26);
      v27 = v26.i32[0];
    }

    else
    {
      a4.i32[0] = v24 & ~masks[v20];
      v44 = vcnt_s8(a4);
      v44.i16[0] = vaddlv_u8(v44);
      v45 = v44.i32[0];
      v46 = a1;
      v47 = array_popcount(v23 + 4, v19 + ~v17);
      a1 = v46;
      v48.i32[0] = masks[v21 + 1] & *(v22 + 4 * v19);
      v49 = vcnt_s8(v48);
      v49.i16[0] = vaddlv_u8(v49);
      v27 = v45 + v47 + v49.i32[0];
    }

    goto LABEL_79;
  }

  if (v15 < 0)
  {
    if (v15 > 0xFFFFFFFD)
    {
      return 0;
    }

    if (*(a1 + 32) <= v13)
    {
      v37 = 0;
    }

    else
    {
      if (v15 == -3)
      {
        return 0;
      }

      if (*(a1 + 36) <= v13)
      {
        v37 = 1;
      }

      else
      {
        if (v15 == -4)
        {
          return 0;
        }

        if (*(a1 + 40) <= v13)
        {
          v37 = 2;
        }

        else
        {
          if (v15 == -5)
          {
            return 0;
          }

          if (*(a1 + 44) <= v13)
          {
            v37 = 3;
          }

          else
          {
            if (v15 == -6)
            {
              return 0;
            }

            if (*(a1 + 48) <= v13)
            {
              v37 = 4;
            }

            else
            {
              if (v15 == -7)
              {
                return 0;
              }

              if (*(a1 + 52) <= v13)
              {
                v37 = 5;
              }

              else
              {
                if (v15 == -8 || *(a1 + 56) > v13)
                {
                  return 0;
                }

                v37 = 6;
              }
            }
          }
        }
      }
    }

    v61 = (-2 - v15);
    LODWORD(v62) = v37;
    if (v61 > v37)
    {
      v62 = v37;
      while (*(a1 + 32 + 4 * v62) >= v11)
      {
        if (++v62 >= v61)
        {
          LODWORD(v62) = -2 - v15;
          return (v62 - v37);
        }
      }
    }

    return (v62 - v37);
  }

  else
  {
    if (v10 < v4 || v9 > a3)
    {
      v38 = *(a1 + 36);
      v39 = a1;
      v40 = binarySearchMap(a1, v11 - 1);
      v41 = v39;
      v42 = binarySearchMap(v39, v13);
      v43 = v42;
      if (v38 == v15)
      {
        v27 = v40 - v42;
        if (v40 < v42)
        {
          goto LABEL_84;
        }

        a1 = v41;
      }

      else
      {
        v27 = v40 - v42;
        if (v40 < v42)
        {
          goto LABEL_84;
        }

        a1 = v41;
        v50 = v41[9];
        if (v40 > v50 && v43 <= v50)
        {
          v27 = v40 - (v43 + v41[8]) + v41[4];
        }
      }

LABEL_79:
      v51 = a1;
      if (CFGetTypeID(a1) == __kCIIndexSetInvertedTypeID)
      {
        v8 = v13 - v11 - v27 + 1;
      }

      else
      {
        v8 = v27;
      }

      if ((v8 & 0x80000000) == 0)
      {
        return v8;
      }

      v52 = countItemsInRangeByEnumeration(v51, v11, v13);
      if ((v52 & 0x80000000) == 0)
      {
        return v52;
      }

LABEL_84:
      v53 = __si_assert_copy_extra_332();
      __message_assert_336(v53, v54, v55, v56, v57, v58, v59, v60, "CIIndexSet.c");
      free(v53);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v28 = a1;
    v29 = CFGetTypeID(a1);
    v8 = *(v28 + 16);
    if (v29 == __kCIIndexSetInvertedTypeID)
    {
      return v13 - (v11 + v8) + 1;
    }
  }

  return v8;
}

void BulkPayloadIterator_Step(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 56) = -1;
  *(a1 + 64) = -1;
  *(a1 + 72) = *(a1 + 76);
  v6 = (a1 + 160);
  do
  {
    do
    {
      v7 = *(a1 + 104);
      if (v7)
      {
        if (*(a1 + 24) == 1)
        {
          while (1)
          {
            v8 = *(a1 + 152);
            *(a1 + 152) = 0;
            *(a1 + 128) = 0;
            v7 >>= 1;
            *(a1 + 104) = v7;
            *(a1 + 56) = *(a1 + 64);
            *(a1 + 64) = -1;
            if (v7 < *(*(a1 + 80) + 32))
            {
              v7 = 0;
              *(a1 + 104) = 0;
            }

            if (v8 >= 1)
            {
              v9 = v6;
              do
              {
                v10 = *v9;
                v11 = *(*v9 + 8) & 0x3FFFFFFFFFFFFFFFLL;
                if (v11 <= *(a1 + 104))
                {
                  if (v11)
                  {
                    v12 = *(a1 + 152);
                    *(a1 + 152) = v12 + 1;
                    v6[v12] = v10;
                  }
                }

                else
                {
                  ipqpush(a1 + 8, v10);
                }

                ++v9;
                --v8;
              }

              while (v8);
              if (*(a1 + 24) != 1)
              {
                break;
              }

              v7 = *(a1 + 104);
            }

            if (!v7)
            {
              goto LABEL_29;
            }
          }
        }
      }

      else
      {
        if (*(a1 + 152))
        {
          v19 = __si_assert_copy_extra(0);
          v20 = v19;
          v21 = "";
          if (v19)
          {
            v21 = v19;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1817, "iterator->split>0 || iterator->futureCount==0", v21);
LABEL_37:
          free(v20);
          if (__valid_fs(-1))
          {
            v24 = 2989;
          }

          else
          {
            v24 = 3072;
          }

          *v24 = -559038737;
          abort();
        }

        if (*(a1 + 24) == 1)
        {
          goto LABEL_30;
        }
      }

      v13 = ipqpop((a1 + 8));
      if ((*(v13 + 40))(v13, a1 + 32))
      {
        v14 = *(v13 + 8) & 0x3FFFFFFFFFFFFFFFLL;
        if (v14 > *(a1 + 104))
        {
          ipqpush(a1 + 8, v13);
          goto LABEL_28;
        }

        if (!v14)
        {
          v22 = __si_assert_copy_extra(0);
          v20 = v22;
          v23 = "";
          if (v22)
          {
            v23 = v22;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 1937, "((((iter->ptr.has_meta?iter->ptr.with_meta.offset:iter->ptr.just_offset) & 0x3FFFFFFFFFFFFFFF)))", v23);
          goto LABEL_37;
        }

        v18 = *(a1 + 152);
        *(a1 + 152) = v18 + 1;
        v6[v18] = v13;
      }

      else
      {
        v15 = *(v13 + 48);
        if (v15)
        {
          v16 = v15(v13, 0);
          v17 = *(a1 + 76);
          if (v16 > v17)
          {
            v17 = v16;
          }

          *(a1 + 76) = v17;
        }
      }

LABEL_28:
      *a1 |= *(v13 + 64);
    }

    while (*(a1 + 24) != 1);
LABEL_29:
    ;
  }

  while (*(a1 + 152));
LABEL_30:
  *a2 = *(a1 + 76);
  *a3 = *(a1 + 72);
  *(a1 + 144) = 1;
}

BOOL _CIIndexSetRemoveIndex(int *cf, unsigned int a2)
{
  if (cf[5] > a2 || cf[6] < a2)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    v47 = -1;
    v5 = cf[4];
    if (v5 > -10)
    {
      if (v5 >= -1)
      {
        v8 = cf[8];
      }

      else
      {
        v8 = 4;
      }

      if (v5 < -1)
      {
        v5 = -2 - v5;
      }

      if (v8 < v5 + 1)
      {
        _CIIndexSetMakeSpace(cf, 1, 0, &v47, 0);
      }
    }

    else
    {
      v6 = cf[6] - cf[5];
      v7 = -9 - v5;
      if (v6 + 1 < v7)
      {
        v7 = v6 + 1;
      }

      cf[4] = -10 - v7;
    }
  }

  v9 = CFGetTypeID(cf);
  v10 = cf[4];
  if (v9 == __kCIIndexSetInvertedTypeID)
  {
    if (!v10)
    {
      v12 = 0;
      goto LABEL_31;
    }

    v11 = binarySearchMap(cf, a2);
    v10 = v11;
    v12 = cf[4];
    if (!v12 || v11 == cf[9] || v11 == cf[8] || *(*(cf + 5) + 4 * v11) != a2)
    {
LABEL_31:
      v17 = cf[8];
      if (v17 != v12)
      {
        v18 = cf[9];
        if (v18 == v10)
        {
          goto LABEL_34;
        }

        v28 = *(cf + 5);
        if (v18 >= v10)
        {
          memmove((v28 + 4 * (v17 - (v12 - v10))), (v28 + 4 * v10), 4 * (v18 - v10));
        }

        else
        {
          memmove((v28 + 4 * v18), (v28 + 4 * (v18 + v17 - v12)), 4 * (v10 - (v18 + v17 - v12)));
          v10 = v10 - cf[8] + cf[4];
        }
      }

      cf[9] = v10;
LABEL_34:
      v19 = *(cf + 5);
      if (v10)
      {
        if (*(v19 + 4 * v10 - 4) <= a2)
        {
          v36 = __si_assert_copy_extra_332();
          __message_assert_336(v36, v37, v38, v39, v40, v41, v42, v43, "CIIndexSet.c");
          free(v36);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v20 = v10;
      }

      else
      {
        v20 = 0;
      }

      *(v19 + 4 * v20) = a2;
      ++cf[9];
      v21 = cf[4] + 1;
      goto LABEL_39;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  if (v10 <= -10)
  {
    v13 = cf[6] - a2;
    v14 = v13 >> 5;
    v15 = 1 << v13;
    v16 = *(cf + 5);
    result = (v15 & *(v16 + 4 * v14)) != 0;
    if ((v15 & *(v16 + 4 * v14)) != 0)
    {
      cf[4] = v10 + 1;
      if (v10 == -10)
      {
        cf[4] = -10;
      }
    }

    *(v16 + 4 * v14) &= ~v15;
    return result;
  }

  if (v10 < 0)
  {
    if (v10 > 0xFFFFFFFD)
    {
      return 0;
    }

    v29 = cf[8];
    if (v29 < a2)
    {
      return 0;
    }

    if (v29 == a2)
    {
      v30 = 0;
      v31 = (cf + 8);
    }

    else
    {
      if (v10 == -3)
      {
        return 0;
      }

      v31 = (cf + 9);
      v34 = cf[9];
      if (v34 < a2)
      {
        return 0;
      }

      if (v34 == a2)
      {
        v30 = 1;
      }

      else
      {
        if (v10 == -4)
        {
          return 0;
        }

        v31 = (cf + 10);
        v35 = cf[10];
        if (v35 < a2)
        {
          return 0;
        }

        if (v35 == a2)
        {
          v30 = 2;
        }

        else
        {
          if (v10 == -5)
          {
            return 0;
          }

          v31 = (cf + 11);
          v44 = cf[11];
          if (v44 < a2)
          {
            return 0;
          }

          if (v44 == a2)
          {
            v30 = 3;
          }

          else
          {
            if (v10 == -6)
            {
              return 0;
            }

            v31 = (cf + 12);
            v45 = cf[12];
            if (v45 < a2)
            {
              return 0;
            }

            if (v45 == a2)
            {
              v30 = 4;
            }

            else
            {
              if (v10 == -7)
              {
                return 0;
              }

              v31 = (cf + 13);
              v46 = cf[13];
              if (v46 < a2)
              {
                return 0;
              }

              if (v46 == a2)
              {
                v30 = 5;
              }

              else
              {
                if (v10 == -8)
                {
                  return 0;
                }

                v31 = (cf + 14);
                if (cf[14] != a2)
                {
                  return 0;
                }

                v30 = 6;
              }
            }
          }
        }
      }
    }

    if (-3 - v10 > v30)
    {
      memmove(v31, &cf[v30 + 9], 4 * (~v30 - v10) - 8);
    }

    v21 = v10 + 1;
    goto LABEL_39;
  }

  v22 = binarySearchMap(cf, a2);
  v23 = cf[9];
  if (v23 > v22 || (result = 0, v24 = cf[8], v22 < v24) && v22 >= v24 + v23 - cf[4])
  {
    v25 = *(cf + 5);
    if (*(v25 + 4 * v22) != a2)
    {
      return 0;
    }

    v26 = cf[8];
    v27 = cf[4];
    if (v23 <= v22)
    {
      v32 = v26 - v27 + v23;
      v33 = v22 - v32;
      if (v22 <= v32)
      {
LABEL_60:
        v21 = v27 - 1;
LABEL_39:
        cf[4] = v21;
        return 1;
      }

      memmove((v25 + 4 * v23), (v25 + 4 * v32), 4 * (v22 - v32));
      v22 = cf[9] + v33;
    }

    else
    {
      memmove((v25 + 4 * (v26 - (v27 - v22) + 1)), (v25 + 4 * (v22 + 1)), 4 * (v23 - v22 - 1));
    }

    cf[9] = v22;
    v27 = cf[4];
    goto LABEL_60;
  }

  return result;
}

BOOL _CIIndexSetAddIndex(unsigned int *cf, unsigned int a2, void *a3, _DWORD *a4, int8x8_t a5)
{
  if (cf[5] > a2 || cf[6] < a2)
  {
    return 0;
  }

  v8 = cf[4];
  if (v8 < -9)
  {
    goto LABEL_4;
  }

  v14 = 0;
  v18 = cf + 8;
  while (1)
  {
    if (v8 < 0)
    {
      if (v8 > 0xFFFFFFFD)
      {
        v20 = 0;
LABEL_41:
        cf[4] = v8 - 1;
      }

      else
      {
        v19 = 0;
        v20 = (-2 - v8);
        while (1)
        {
          v21 = cf[v19 + 8];
          if (v21 < a2)
          {
            break;
          }

          if (v21 == a2)
          {
            return 0;
          }

          if (v20 == ++v19)
          {
            if (v8 != -6)
            {
              goto LABEL_41;
            }

            goto LABEL_20;
          }
        }

        if (v8 == -6)
        {
LABEL_20:
          _CIIndexSetMakeSpace(cf, 1, 0, a4, 0);
          v8 = cf[4];
          goto LABEL_21;
        }

        cf[4] = v8 - 1;
        v28 = v19;
        memmove(&v18[(v19 + 1)], &v18[v19], 4 * (v20 - v19));
        v20 = v28;
      }

      v18[v20] = a2;
      return 1;
    }

    v22 = CFGetTypeID(cf);
    v23 = cf[4];
    if (v22 == __kCIIndexSetInvertedTypeID)
    {
      if (v23)
      {
        v29 = binarySearchMap(cf, a2);
        v30 = cf[9];
        if (v30 <= v29)
        {
          v14 = 0;
          v31 = cf[8];
          if (v29 >= v31 || v29 < v31 + v30 - cf[4])
          {
            return v14;
          }
        }

        v32 = *(cf + 5);
        if (*(v32 + 4 * v29) == a2)
        {
          v33 = cf[8];
          v34 = cf[4];
          if (v30 <= v29)
          {
            v43 = v33 - v34 + v30;
            v44 = v29 - v43;
            if (v29 <= v43)
            {
LABEL_69:
              cf[4] = v34 - 1;
              return 1;
            }

            memmove((v32 + 4 * v30), (v32 + 4 * v43), 4 * (v29 - v43));
            v36 = cf[9] + v44;
          }

          else
          {
            v35 = v29;
            memmove((v32 + 4 * (v33 - (v34 - v29) + 1)), (v32 + 4 * (v29 + 1)), 4 * (v30 - v29 - 1));
            v36 = v35;
          }

          cf[9] = v36;
          v34 = cf[4];
          goto LABEL_69;
        }
      }

      return 0;
    }

    v24 = v23 ? searchMapWithHint(cf, a2, a4, 1) : 0;
    v25 = cf[9];
    if (v24 == v25)
    {
      v8 = cf[4];
      v26 = cf[8];
      if (v8 < v26)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v26 = *v18;
      if (v24 != *v18 && *(*(cf + 5) + 4 * v24) == a2)
      {
        return v14;
      }

      v8 = cf[4];
      if (v26 > v8)
      {
        v40 = *(cf + 5);
        if (v25 >= v24)
        {
          memmove((v40 + 4 * (v24 - v8 + v26)), (v40 + 4 * v24), 4 * (v25 - v24));
        }

        else
        {
          memmove((v40 + 4 * v25), (v40 + 4 * (v26 - v8 + v25)), 4 * (v24 - (v26 - v8 + v25)));
          v24 = v24 - cf[8] + cf[4];
        }

        cf[9] = v24;
LABEL_61:
        v41 = *(cf + 5);
        if (v24)
        {
          if (*(v41 + 4 * v24 - 4) <= a2)
          {
            v45 = __si_assert_copy_extra_332();
            __message_assert_336(v45, v46, v47, v48, v49, v50, v51, v52, "CIIndexSet.c");
            free(v45);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          v42 = v24;
        }

        else
        {
          v42 = 0;
        }

        *(v41 + 4 * v42) = a2;
        ++cf[9];
        ++cf[4];
        return 1;
      }
    }

    if (v8 <= -10)
    {
      break;
    }

    v27 = -2 - v8;
    if (v8 >= -1)
    {
      v27 = v8;
    }

    else
    {
      v26 = 4;
    }

    if (v26 < v27 + 1)
    {
      _CIIndexSetMakeSpace(cf, 1, a3, a4, 0);
      v8 = cf[4];
    }

    v14 = 1;
LABEL_21:
    if (v8 < -9)
    {
      goto LABEL_4;
    }
  }

  v38 = cf[6] - cf[5];
  v39 = -9 - v8;
  if (v38 + 1 < v39)
  {
    v39 = v38 + 1;
  }

  cf[4] = -10 - v39;
LABEL_4:
  v9 = cf[6] - a2;
  v10 = v9 >> 5;
  v11 = *(cf + 5);
  v12 = *(v11 + 4 * (v9 >> 5));
  v13 = 1 << v9;
  v14 = (v13 & v12) == 0;
  *(v11 + 4 * v10) = v13 | v12;
  if ((v13 & v12) == 0)
  {
    v15 = cf[6] - cf[5];
    if (v15 + 1 < -9 - cf[4])
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = -9 - cf[4];
    }

    cf[4] = -10 - v16;
  }

  _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, a3, a5);
  return v14;
}

void _CIIndexSetMakeSpace(unsigned int *cf, int a2, void *a3, _DWORD *a4, int a5)
{
  if (a4)
  {
    *a4 = -1;
  }

  v9 = cf[4];
  if ((v9 + 1) >= 0xFFFFFFF8)
  {
    v10 = 4294967294 - v9;
    v11 = (~v9 | (~v9 >> 1) | ((~v9 | (~v9 >> 1)) >> 2)) + 1;
    v12 = blob_calloc(v11, a3);
    memcpy(v12, cf + 8, 4 * v10);
    *(cf + 5) = v12;
    cf[4] = v10;
    LODWORD(v9) = v10;
    cf[8] = v11;
    cf[9] = v10;
  }

  v13 = (a2 + v9 - 1) | ((a2 + v9 - 1) >> 1);
  v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
  v15 = v14 | (v14 >> 8) | ((v14 | (v14 >> 8)) >> 16);
  v16 = v15 + 1;
  CFGetTypeID(cf);
  if (v15 + 1 < (cf[6] - cf[5] + 31) >> 5 || a5 != 0)
  {
    v18 = 4 * (v15 + 1);
    v19 = *MEMORY[0x1E69E9AC8] >> 1;
    if (v18 >= v19)
    {
      v21 = mmap(0, (v18 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 3, 4098, -134217728, 0);
    }

    else
    {
      if (v19 > 4 * cf[8])
      {
        v20 = *(cf + 5);
        if (cf[9] == cf[4])
        {
          *(cf + 5) = blob_realloc(*(cf + 5), cf[8], v15 + 1, a3);
LABEL_33:
          cf[8] = v16;
          return;
        }

        if (!a3)
        {
          goto LABEL_40;
        }

        HIDWORD(v28) = v15 - 7;
        LODWORD(v28) = v15 - 7;
        v27 = v28 >> 3;
        v29 = v15 - 7 > 0x37 || v27 > 7;
        if (!v29 && ((0x8Bu >> v27) & 1) != 0 && ((v31 = qword_1C2BFF6A8[v27], (v21 = a3[v31 + 2]) != 0) || *a3 && (v21 = cicachelistdequeue(*a3 + 24 * v31 + 32, 0), v18 = 4 * (v15 + 1), v21)))
        {
          a3[v31 + 2] = v21[1];
        }

        else
        {
LABEL_40:
          v21 = malloc_type_zone_malloc(queryZone, v18, 0xA4971684uLL);
          if (!v21)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *v32 = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v32, 2u);
            }

            v21 = 0;
          }
        }

LABEL_31:
        *(cf + 5) = v21;
        if (v20)
        {
          memcpy(v21, v20, 4 * cf[9]);
          memcpy((*(cf + 5) + 4 * (v16 - cf[4] + cf[9])), &v20[4 * (cf[9] - cf[4]) + 4 * cf[8]], 4 * (cf[4] - cf[9]));
          blob_free(v20, cf[8], a3);
        }

        goto LABEL_33;
      }

      if (!a3)
      {
        goto LABEL_23;
      }

      HIDWORD(v23) = v15 - 7;
      LODWORD(v23) = v15 - 7;
      v22 = v23 >> 3;
      v24 = v15 - 7 > 0x37 || v22 > 7;
      if (!v24 && ((0x8Bu >> v22) & 1) != 0 && ((v30 = qword_1C2BFF6A8[v22], (v21 = a3[v30 + 2]) != 0) || *a3 && (v21 = cicachelistdequeue(*a3 + 24 * v30 + 32, 0), v18 = 4 * (v15 + 1), v21)))
      {
        a3[v30 + 2] = v21[1];
      }

      else
      {
LABEL_23:
        v21 = malloc_type_zone_malloc(queryZone, v18, 0xA4971684uLL);
        if (!v21)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          v21 = 0;
        }
      }
    }

    v20 = *(cf + 5);
    if (cf[9] == cf[4])
    {
      v25 = cf[8];
      if (v16 < v25)
      {
        v25 = v15 + 1;
      }

      v26 = v21;
      memcpy(v21, *(cf + 5), 4 * v25);
      blob_free(*(cf + 5), cf[8], a3);
      v21 = v26;
      v20 = 0;
    }

    goto LABEL_31;
  }

  _CIIndexSetForceBitmap(cf, a3, a2);
}

void *blob_calloc(unsigned int a1, void *a2)
{
  v3 = 4 * a1;
  v4 = MEMORY[0x1E69E9AC8];
  v5 = *MEMORY[0x1E69E9AC8];
  if (v3 >= *MEMORY[0x1E69E9AC8] >> 1)
  {

    return mmap(0, (v3 + v5 - 1) & -v5, 3, 4098, -134217728, 0);
  }

  else
  {
    if (a2)
    {
      if (a1 - 8 <= 0x37)
      {
        HIDWORD(v7) = a1 - 8;
        LODWORD(v7) = a1 - 8;
        v6 = v7 >> 3;
        if (v6 <= 7 && ((0x8Bu >> v6) & 1) != 0)
        {
          v8 = qword_1C2BFF6A8[v6];
          v9 = a2 + 2;
          v10 = a2[v8 + 2];
          if (v10)
          {
LABEL_7:
            v9[v8] = v10[1];
            bzero(v10, v3);
            return v10;
          }

          if (*a2)
          {
            v12 = 4 * a1;
            v13 = cicachelistdequeue(*a2 + 24 * v8 + 32, 0);
            v3 = v12;
            v10 = v13;
            if (v13)
            {
              goto LABEL_7;
            }

            v5 = *v4;
          }
        }
      }
    }

    if (!(a1 >> 15) && v5 < v3)
    {
      ++sTotal_5923;
    }

    result = malloc_type_zone_calloc(queryZone, 1uLL, v3, 0x5BAF1CEAuLL);
    if (!result)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v14[0] = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v14, 2u);
      }

      return 0;
    }
  }

  return result;
}

void *blob_realloc(void *__src, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *MEMORY[0x1E69E9AC8] >> 1;
  v6 = 4 * a3;
  if (v5 <= 4 * a2 || v6 >= v5)
  {
    v22 = __si_assert_copy_extra_332();
    __message_assert_336(v22, v23, v24, v25, v26, v27, v28, v29, "CIIndexSet.c");
    free(v22);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (!a4)
  {
    goto LABEL_16;
  }

  if (a3 - 8 > 0x37)
  {
    goto LABEL_16;
  }

  HIDWORD(v10) = a3 - 8;
  LODWORD(v10) = a3 - 8;
  v9 = v10 >> 3;
  if (v9 > 7)
  {
    goto LABEL_16;
  }

  if (((0x8Bu >> v9) & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = qword_1C2BFF6A8[v9];
  v12 = a4 + 2;
  v13 = a4[v11 + 2];
  if (v13 || *a4 && (v19 = a2, v20 = a4, v21 = v6, v13 = cicachelistdequeue(*a4 + 24 * v11 + 32, 0), v6 = v21, a2 = v19, a4 = v20, v13))
  {
    v12[v11] = v13[1];
    if (a3 >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    v15 = v13;
    v16 = a2;
    v17 = a4;
    memcpy(v13, __src, 4 * v14);
    blob_free(__src, v16, v17);
    return v15;
  }

  else
  {
LABEL_16:
    if (__src)
    {
      result = malloc_type_zone_realloc(queryZone, __src, v6, 0xA1A7ADA0uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = malloc_type_zone_malloc(queryZone, v6, 0x566E289CuLL);
      if (result)
      {
        return result;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    return 0;
  }
}

uint64_t PartialQueryResults::PartialQueryResults(uint64_t a1, CFArrayRef theArray, const void *a3, uint64_t a4, const __CFArray *a5, const void *a6, int a7, uint64_t a8, double a9, int a10, atomic_uint *a11, atomic_uint *a12, uint64_t a13, unsigned int a14)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = theArray;
  *(a1 + 128) = a4;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  *(a1 + 232) = Count;
  *(a1 + 240) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  *(a1 + 248) = a3;
  *(a1 + 256) = a8;
  v21 = 0uLL;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = a9;
  *(a1 + 312) = a13;
  *(a1 + 320) = a10;
  *(a1 + 352) = 0;
  if (a5)
  {
    v22 = CFArrayGetCount(a5);
    v21 = 0uLL;
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 360) = v22;
  *(a1 + 368) = a5;
  *(a1 + 432) = 0;
  *(a1 + 408) = 0;
  *(a1 + 376) = v21;
  *(a1 + 392) = v21;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 3536) = a14;
  *(a1 + 4568) = 0;
  if (a11)
  {
    atomic_fetch_add(a11, 1u);
    *(a1 + 328) = a11;
  }

  else
  {
    *(a1 + 328) = 0;
  }

  *(a1 + 336) = md_deadline_once_create();
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 344) = dispatch_time(0, ((a9 - Current) * 1000000000.0 + 100000000.0));
  if (a12)
  {
    atomic_fetch_add(a12, 1u);
  }

  *(a1 + 424) = a12;
  if (a7 >= 4)
  {
    if (a6)
    {
      Mutable = CFRetain(a6);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCIQueryZoneAllocator, 0, 0, MEMORY[0x1E695E9E8]);
    }

    *(a1 + 112) = Mutable;
  }

  *(a1 + 88) = 0;
  if (a14)
  {
    if (a14 <= 3)
    {
      for (i = 0; i != a14; ++i)
      {
LABEL_25:
        v29 = (a1 + 8 * i);
        v29[58] = 0;
        v29[443] = 0;
        v29[186] = 0;
        v29[314] = 0;
      }

      return a1;
    }

    i = a14 & 0x7FFFFFFC;
    v26 = a1;
    v27 = i;
    do
    {
      v28 = (v26 + 3544);
      v26[29] = 0uLL;
      v26[30] = 0uLL;
      v26[93] = 0uLL;
      v26[94] = 0uLL;
      v26[157] = 0uLL;
      v26[158] = 0uLL;
      v26 += 2;
      *v28 = 0uLL;
      v28[1] = 0uLL;
      v27 -= 4;
    }

    while (v27);
    if (i != a14)
    {
      goto LABEL_25;
    }
  }

  return a1;
}

uint64_t oqpop(void *a1, _BYTE *a2)
{
  v2 = *a1;
  *a2 = v2;
  v3 = a1[5];
  v4 = a1[6];
  if (v2 == 1)
  {
    if (v3 < v4)
    {
      v5 = a1[2];
      a1[5] = v3 + 1;
      v6 = (v5 + 16 * v3);
      result = *v6;
      v8 = v6[1];
      return result;
    }
  }

  else if (v3 < v4)
  {
    v9 = a1[2];
    a1[5] = v3 + 1;
    return *(v9 + 8 * v3);
  }

  return 0;
}

uint64_t searchMapWithHint(uint64_t a1, unsigned int a2, _DWORD *a3, int a4)
{
  v6 = *a3;
  if (v6 == -1 || (v7 = *(a1 + 32), v7 <= v6) || (v8 = *(a1 + 36), v9 = *(a1 + 16), v8 < v6) && v8 + v7 - v9 > v6)
  {
LABEL_5:
    v8 = binarySearchMap(a1, a2);
LABEL_6:
    v10 = v8;
LABEL_7:
    *a3 = v8;
    return v10;
  }

  v12 = v7 - v9 + v8;
  if (v6 >= v8 && v6 < v12)
  {
    goto LABEL_25;
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 4 * v6);
  if (v15 == a2)
  {
    return v6;
  }

  if (v15 >= a2)
  {
LABEL_25:
    v10 = (v6 + 1);
    if (v10 < v8 || v12 == 0)
    {
      v17 = v7 - v9 + v8;
      if (v10 >= v7)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v12 >= v7)
      {
        goto LABEL_6;
      }

      v17 = 0;
      LODWORD(v6) = v7 - v9 + v8;
      v10 = v6;
    }

    v18 = *(a1 + 40);
    v19 = *(v18 + 4 * v10);
    if (v19 == a2)
    {
      goto LABEL_35;
    }

    if (v19 > a2)
    {
      v6 = (v10 + 1);
      if (v6 >= v8 && v17)
      {
        if (v17 >= v7)
        {
          goto LABEL_6;
        }

        LODWORD(v10) = v17;
        v6 = v17;
        v17 = 0;
      }

      if (v6 >= v7)
      {
        goto LABEL_78;
      }

      v20 = *(v18 + 4 * v6);
      if (v20 == a2)
      {
LABEL_43:
        LODWORD(v8) = v6;
        v10 = v6;
        goto LABEL_7;
      }

      if (v20 <= a2)
      {
        goto LABEL_78;
      }

      v10 = (v6 + 1);
      if (v10 >= v8 && v17)
      {
        if (v17 >= v7)
        {
          goto LABEL_6;
        }

        LODWORD(v6) = v17;
        v10 = v17;
        v17 = 0;
      }

      if (v10 >= v7)
      {
        goto LABEL_77;
      }

      v21 = *(v18 + 4 * v10);
      if (v21 == a2)
      {
        goto LABEL_35;
      }

      if (v21 <= a2)
      {
        goto LABEL_77;
      }

      v6 = (v10 + 1);
      if (v6 >= v8 && v17)
      {
        if (v17 >= v7)
        {
          goto LABEL_6;
        }

        LODWORD(v10) = v17;
        v6 = v17;
        v17 = 0;
      }

      if (v6 >= v7)
      {
        goto LABEL_78;
      }

      v22 = *(v18 + 4 * v6);
      if (v22 == a2)
      {
        goto LABEL_43;
      }

      if (v22 <= a2)
      {
LABEL_78:
        LODWORD(v8) = v10;
        v10 = v6;
        goto LABEL_7;
      }

      v10 = (v6 + 1);
      if (v10 >= v8)
      {
        if (v17)
        {
          LODWORD(v6) = v17;
          v10 = v17;
          if (v17 >= v7)
          {
            goto LABEL_6;
          }
        }
      }

      if (v10 < v7)
      {
        if (*(v18 + 4 * v10) != a2)
        {
          if (v8 == v9)
          {
            v23 = v8 - 1;
            if (v8 - 33 >= v10)
            {
              do
              {
                v8 = (v10 + (v23 - v10) / 2);
                v24 = *(v18 + 4 * v8);
                if (v24 == a2)
                {
                  goto LABEL_6;
                }

                if (v24 > a2)
                {
                  LODWORD(v10) = v8 + 1;
                }

                else
                {
                  v23 = v8 - 1;
                }
              }

              while (v10 <= v23 - 32);
            }

            v25 = v10;
            if (v23 + 1 > v10)
            {
              v10 = v23 + 1;
            }

            else
            {
              v10 = v10;
            }

            while (v25 <= v23)
            {
              v26 = *(v18 + 4 * v25++);
              if (v26 <= a2)
              {
                goto LABEL_110;
              }
            }
          }

          else if (v8 && (v27 = v8 - 1, *(v18 + 4 * v27) <= a2))
          {
            if (v8 > v7)
            {
              v33 = __si_assert_copy_extra_332();
              __message_assert_336(v33, v34, v35, v36, v37, v38, v39, v40, "CIIndexSet.c");
              free(v33);
              if (__valid_fs(-1))
              {
                v41 = 2989;
              }

              else
              {
                v41 = 3072;
              }

              *v41 = -559038737;
              abort();
            }

            if (v8 < v10)
            {
              LODWORD(v10) = v27;
            }

            if (v8 - 33 >= v10)
            {
              while (1)
              {
                v8 = (v10 + (v27 - v10) / 2);
                v31 = *(v18 + 4 * v8);
                if (v31 == a2)
                {
                  goto LABEL_6;
                }

                if (v31 > a2)
                {
                  LODWORD(v10) = v8 + 1;
                }

                else
                {
                  LODWORD(v27) = v8 - 1;
                }

                if (v10 > v27 - 32)
                {
                  v27 = v27;
                  break;
                }
              }
            }

            v25 = v10;
            if (v27 + 1 > v10)
            {
              v10 = v27 + 1;
            }

            else
            {
              v10 = v10;
            }

            while (v25 <= v27)
            {
              v32 = *(v18 + 4 * v25++);
              if (v32 <= a2)
              {
LABEL_110:
                v10 = v25 - 1;
                break;
              }
            }
          }

          else
          {
            if (v12 > v10)
            {
              LODWORD(v10) = v7 - v9 + v8;
            }

            v28 = v7 - 1;
            if ((v7 - 33) >= v10)
            {
              do
              {
                v8 = (v10 + (v28 - v10) / 2);
                v29 = *(v18 + 4 * v8);
                if (v29 == a2)
                {
                  goto LABEL_6;
                }

                if (v29 > a2)
                {
                  LODWORD(v10) = v8 + 1;
                }

                else
                {
                  v28 = v8 - 1;
                }
              }

              while (v10 <= v28 - 32);
            }

            v25 = v10;
            if (v28 + 1 > v10)
            {
              v10 = v28 + 1;
            }

            else
            {
              v10 = v10;
            }

            while (v25 <= v28)
            {
              v30 = *(v18 + 4 * v25++);
              if (v30 <= a2)
              {
                goto LABEL_110;
              }
            }
          }

          LODWORD(v8) = v10;
          goto LABEL_7;
        }

LABEL_35:
        LODWORD(v8) = v10;
        goto LABEL_7;
      }
    }

LABEL_77:
    LODWORD(v8) = v6;
    goto LABEL_7;
  }

  if (a4 && (!v8 || v6 != v12 || *(v14 + 4 * v8 - 4) <= a2) && (!v6 || v6 >= v8 && v6 <= v12 || *(v14 + 4 * (v6 - 1)) <= a2))
  {
    goto LABEL_5;
  }

  return v6;
}

void ipqpush(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v18 = __si_assert_copy_extra(0);
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 88, "item!=0", v20);
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

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
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

    *(a1 + 8) = v9;
    v10 = 8 * v9;
    if (*a1)
    {
      v11 = malloc_type_zone_realloc(queryZone, *a1, v10 + 16, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10 + 16, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v12;
    *v12 = 0;
    v6 = *(a1 + 16);
  }

  *(a1 + 16) = v6 + 1;
  *(*a1 + 8 * v5) = a2;
  if (v5 >= 2)
  {
    do
    {
      v13 = *a1;
      v14 = *(*a1 + 8 * v5);
      v15 = v14;
      if (v14 + 1 >= 2)
      {
        v15 = *(v14 + 8);
      }

      v16 = v13[v5 >> 1];
      v17 = v16;
      if (v16 + 1 >= 2)
      {
        v17 = *(v16 + 8);
      }

      if (v15 > v17)
      {
        break;
      }

      v13[v5] = v16;
      *(*a1 + 8 * (v5 >> 1)) = v14;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }
}

uint64_t binarySearchMap(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    if (v2 > *(a1 + 32))
    {
      v18 = __si_assert_copy_extra_332();
      __message_assert_336(v18, v19, v20, v21, v22, v23, v24, v25, "CIIndexSet.c");
      free(v18);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v4 = v2 - 1;
    v5 = *(a1 + 40);
    if (v2 >= 33)
    {
      LODWORD(v6) = 0;
      while (1)
      {
        result = (v6 + (v4 - v6) / 2);
        v14 = *(v5 + 4 * result);
        if (v14 == a2)
        {
          break;
        }

        if (v14 > a2)
        {
          LODWORD(v6) = result + 1;
        }

        else
        {
          v4 = result - 1;
        }

        if (v6 > v4 - 32)
        {
          v6 = v6;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v6 = 0;
LABEL_26:
      if (v4 + 1 > v6)
      {
        result = v4 + 1;
      }

      else
      {
        result = v6;
      }

      while (v6 <= v4)
      {
        v15 = *(v5 + 4 * v6++);
        if (v15 <= a2)
        {
          return v6 - 1;
        }
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v2 && (v8 = v2 - 1, *(v7 + 4 * (v2 - 1)) <= a2))
    {
      if (v2 > *(a1 + 32))
      {
        v26 = __si_assert_copy_extra_332();
        __message_assert_336(v26, v27, v28, v29, v30, v31, v32, v33, "CIIndexSet.c");
        free(v26);
        if (__valid_fs(-1))
        {
          v34 = 2989;
        }

        else
        {
          v34 = 3072;
        }

        *v34 = -559038737;
        abort();
      }

      if (v2 >= 33)
      {
        LODWORD(v2) = 0;
        while (1)
        {
          result = (v2 + (v8 - v2) / 2);
          v16 = *(v7 + 4 * result);
          if (v16 == a2)
          {
            break;
          }

          if (v16 > a2)
          {
            LODWORD(v2) = result + 1;
          }

          else
          {
            LODWORD(v8) = result - 1;
          }

          if (v2 > v8 - 32)
          {
            v8 = v8;
            v2 = v2;
            goto LABEL_42;
          }
        }
      }

      else
      {
        v2 = 0;
LABEL_42:
        if (v8 + 1 > v2)
        {
          result = v8 + 1;
        }

        else
        {
          result = v2;
        }

        while (v2 <= v8)
        {
          v17 = *(v7 + 4 * v2++);
          if (v17 <= a2)
          {
            return v2 - 1;
          }
        }
      }
    }

    else
    {
      v9 = *(a1 + 32);
      LODWORD(v2) = v9 - v3 + v2;
      v10 = v9 - 1;
      if (v9 - 33 < v2)
      {
LABEL_13:
        v2 = v2;
        if (v10 + 1 > v2)
        {
          result = v10 + 1;
        }

        else
        {
          result = v2;
        }

        while (v2 <= v10)
        {
          v13 = *(v7 + 4 * v2++);
          if (v13 <= a2)
          {
            return v2 - 1;
          }
        }
      }

      else
      {
        while (1)
        {
          result = (v2 + (v10 - v2) / 2);
          v12 = *(v7 + 4 * result);
          if (v12 == a2)
          {
            break;
          }

          if (v12 > a2)
          {
            LODWORD(v2) = result + 1;
          }

          else
          {
            v10 = result - 1;
          }

          if (v2 > v10 - 32)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  return result;
}

void _CIIndexSetForceBitmap(uint64_t a1, void *a2, int a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) < -9)
  {
    goto LABEL_30;
  }

  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  v8 = CFGetTypeID(a1);
  v9 = __kCIIndexSetInvertedTypeID;
  if (CIIndexSetGetTypeID_onceToken != -1)
  {
    dispatch_once(&CIIndexSetGetTypeID_onceToken, &__block_literal_global_5901);
  }

  v10 = _CFRuntimeSetInstanceTypeID();
  v11 = *(a1 + 16);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      v12 = *(a1 + 36);
      v13 = *(a1 + 40);
      v14 = (*(a1 + 24) - *(a1 + 20) + 32) >> 5;
      *(a1 + 32) = v14;
      *(a1 + 40) = blob_calloc(v14, a2);
      *(a1 + 16) = -10;
      *(a1 + 36) = -1;
      _CIIndexSetAddSortedIndexes(a1);
      _CIIndexSetAddSortedIndexes(a1);
      *(a1 + 16) = -10 - v11;
      blob_free(v13, v6, a2);
      if (v8 != v9)
      {
        goto LABEL_23;
      }

LABEL_9:
      v16 = *(a1 + 20);
      v17 = *(a1 + 24);
      v18 = (v17 - v16) >> 5;
      if (v17 - v16 >= 0x20)
      {
        v19 = 0;
        if (v18 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18;
        }

        v21 = 4 * v20;
        do
        {
          *(*(a1 + 40) + v19) = ~*(*(a1 + 40) + v19);
          v19 += 4;
        }

        while (v21 != v19);
        v16 = *(a1 + 20);
        v17 = *(a1 + 24);
      }

      if (v16 <= v17)
      {
        v22 = -v16;
        do
        {
          if (v18 != (v17 + v22) >> 5)
          {
            break;
          }

          *(*(a1 + 40) + 4 * v18) ^= 1 << (v17 + v22);
          ++v16;
          v17 = *(a1 + 24);
          --v22;
        }

        while (v16 <= v17);
        v16 = *(a1 + 20);
      }

      v23 = v16 - (v17 + *(a1 + 16)) - 21;
      goto LABEL_28;
    }

    MEMORY[0x1EEE9AC00](v10);
    v25 = v39 - v24;
    bzero(v39 - v24, v26);
    memcpy(v25, v7, 4 * (-2 - v11));
    v27 = (*(a1 + 24) - *(a1 + 20) + 32) >> 5;
    *(a1 + 32) = v27;
    *(a1 + 40) = blob_calloc(v27, a2);
    *(a1 + 16) = -10;
    *(a1 + 36) = -1;
    _CIIndexSetAddSortedIndexes(a1);
    *(a1 + 16) = v11 - 8;
    if (v8 == v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = (*(a1 + 24) - *(a1 + 20) + 32) >> 5;
    *(a1 + 16) = -10;
    *(a1 + 32) = v15;
    *(a1 + 36) = -1;
    blob_free(*(a1 + 40), v6, a2);
    *(a1 + 40) = blob_calloc(*(a1 + 32), a2);
    if (v8 == v9)
    {
      goto LABEL_9;
    }
  }

LABEL_23:
  if (!a3)
  {
    goto LABEL_29;
  }

  v28 = *(a1 + 24) - *(a1 + 20);
  if (v28 + 1 < (a3 - *(a1 + 16) - 10))
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = a3 - *(a1 + 16) - 10;
  }

  v23 = -10 - v29;
LABEL_28:
  *(a1 + 16) = v23;
LABEL_29:
  if (!*(a1 + 40))
  {
    v31 = __si_assert_copy_extra_332();
    __message_assert_336(v31, v32, v33, v34, v35, v36, v37, v38, "CIIndexSet.c");
    free(v31);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_30:
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t performSearch_METADATA(SISearchCtx_METADATA *a1, PartialQueryResults *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(13);
  v6 = 2 * (dword_1EBF46B00 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 67109120;
    LODWORD(v45) = qos_class_self();
    _os_log_impl(&dword_1C278D000, v5, v6, "at qos 0x%x", buf, 8u);
  }

  *__error() = v4;
  v7 = *(a1 + 3);
  *buf = 0;
  v8 = fd_setDir(*(v7 + 32), buf);
  v9 = 0;
  if (v8)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v11 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(v7 + 1192), 0x40000000, add_explicit + 1);
    v13 = v12;
    v14 = v11;
    v15 = HIDWORD(v11);
    v17 = v16;
    v18 = threadData[9 * v11 + 1] + 320 * HIDWORD(v11);
    *(v18 + 216) = 0;
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    if (v20)
    {
      v20(*(v18 + 288));
    }

    v42 = v15;
    v43 = v14;
    v40 = v13;
    v41 = v17;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v39, 2u);
      }

      *(v18 + 312) = v19;
      CIOnThreadCleanUpReset(v40);
      dropThreadId(v43, 1, add_explicit + 1);
      CICleanUpReset(v43, v41);
      v21 = 0;
LABEL_26:
      v32 = *buf;
      MEMORY[0x1C6921200](*buf);
      if ((v32 & 0x80000000) == 0)
      {
        close(v32);
      }

      v9 = v21;
      goto LABEL_29;
    }

    v21 = inner_performSearch(a1, a2);
    if (v21)
    {
LABEL_23:
      v30 = threadData[9 * v43 + 1] + 320 * v42;
      *(v30 + 312) = v19;
      v31 = *(v30 + 232);
      if (v31)
      {
        v31(*(v30 + 288));
      }

      dropThreadId(v43, 0, add_explicit + 1);
      goto LABEL_26;
    }

    v22 = *(a1 + 647);
    if (v22 == 1)
    {
      v23 = *__error();
      v24 = _SILogForLogForCategory(1);
      v25 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v24, v25))
      {
        *v39 = 0;
        v26 = "Query detected merge is required";
LABEL_17:
        _os_log_impl(&dword_1C278D000, v24, v25, v26, v39, 2u);
      }
    }

    else
    {
      if (*(a1 + 646) != 1)
      {
        goto LABEL_19;
      }

      v23 = *__error();
      v24 = _SILogForLogForCategory(1);
      v25 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v24, v25))
      {
        *v39 = 0;
        v26 = "Query detected merge is needed";
        goto LABEL_17;
      }
    }

    *__error() = v23;
    si_merge_for_badness(*(a1 + 3), v22);
LABEL_19:
    if ((*(a1 + 1192) & 1) == 0)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(1);
      v29 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v28, v29))
      {
        *v39 = 0;
        _os_log_impl(&dword_1C278D000, v28, v29, "performSearch_METADATA: complete", v39, 2u);
      }

      *__error() = v27;
      *(a1 + 1192) = 1;
      emitResults(a1, a2, 1);
    }

    goto LABEL_23;
  }

LABEL_29:
  v33 = v9;
  if (dword_1EBF46AD0 >= 5)
  {
    v36 = *__error();
    v37 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = atomic_load(a1 + 68);
      *buf = 134217984;
      v45 = v38;
      _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Result count: %lld", buf, 0xCu);
    }

    *__error() = v36;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

void _CIIndexSetAddSortedIndexes(int *cf, unsigned int *a2, unsigned int a3, int a4, void *a5, int a6, int8x8_t a7)
{
  v134 = *MEMORY[0x1E69E9840];
  v7 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_5;
  }

  v9 = a2;
  if (a3 == 1 && (a6 & 1) == 0)
  {
    LODWORD(v133) = -1;
    _CIIndexSetAddIndex(cf, *a2, a5, &v133, a7);
    goto LABEL_5;
  }

  if (CFGetTypeID(cf) != __kCIIndexSetInvertedTypeID)
  {
    v16 = cf[4];
    if (v16 > -10)
    {
      if (v16 < -1)
      {
        v16 = -2 - v16;
        v20 = 4;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = cf[6] - cf[5];
      v18 = a3 - v16 - 10;
      if (v17 + 1 < v18)
      {
        v19 = v17 + 1;
      }

      else
      {
        v19 = v18;
      }

      v16 = -10 - v19;
      cf[4] = -10 - v19;
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    v20 = cf[8];
LABEL_16:
    if (v20 < v16 + a3)
    {
      _CIIndexSetMakeSpace(cf, a3, a5, 0, a6);
    }
  }

LABEL_18:
  if (cf[4] <= -10)
  {
    v21 = a3;
    do
    {
      v23 = *v9++;
      v22 = v23;
      v24 = cf[6];
      v25 = v24 >= v23;
      v26 = v24 - v23;
      if (v25 && v22 >= cf[5])
      {
        *(*(cf + 5) + 4 * (v26 >> 5)) |= 1 << v26;
      }

      --v21;
    }

    while (v21);
    if (a6)
    {
      goto LABEL_5;
    }

    v34 = *MEMORY[0x1E69E9840];

    _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(cf, a5, v15);
    return;
  }

  if (CFGetTypeID(cf) == __kCIIndexSetInvertedTypeID)
  {
    v27 = cf[9];
    v28 = cf[4];
    if (v27 > v28)
    {
      v124 = __si_assert_copy_extra_332();
      __message_assert_336(v124, v125, v126, v127, v128, v129, v130, v131, "CIIndexSet.c");
      free(v124);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    LODWORD(v29) = cf[8] - v28;
    memmove((*(cf + 5) + 4 * v29), *(cf + 5), 4 * v27);
    v30 = cf[4];
    cf[9] = v30;
    if (v30 < 1 || v30 + a3 <= (__clz(v30) ^ 0x1F) * a3)
    {
      v37 = 0;
      if (a4)
      {
        LODWORD(v31) = 0;
        do
        {
          v38 = v9[v37];
          if (v38 > cf[6] || v38 < cf[5])
          {
            break;
          }

          if (v29 < cf[8])
          {
            v29 = v29;
            v31 = v31;
            while (1)
            {
              v39 = *(cf + 5);
              v40 = *(v39 + 4 * v29);
              if (v40 <= v38)
              {
                break;
              }

              ++v29;
              v41 = v31 + 1;
              *(v39 + 4 * v31++) = v40;
              if (v29 >= cf[8])
              {
                LODWORD(v31) = v41;
                goto LABEL_41;
              }
            }

            if (v40 == v38)
            {
              --cf[4];
              LODWORD(v29) = v29 + 1;
            }
          }

LABEL_41:
          ++v37;
        }

        while (v37 != a3);
      }

      else
      {
        LODWORD(v70) = 0;
        while (1)
        {
          v71 = v9[a3 + ~v37];
          if (v71 > cf[6] || v71 < cf[5])
          {
            break;
          }

          if (v29 < cf[8])
          {
            v29 = v29;
            v70 = v70;
            while (1)
            {
              v72 = *(cf + 5);
              v73 = *(v72 + 4 * v29);
              if (v73 <= v71)
              {
                break;
              }

              ++v29;
              v74 = v70 + 1;
              *(v72 + 4 * v70++) = v73;
              if (v29 >= cf[8])
              {
                LODWORD(v70) = v74;
                goto LABEL_92;
              }
            }

            if (v73 == v71)
            {
              --cf[4];
              LODWORD(v29) = v29 + 1;
            }
          }

LABEL_92:
          ++v37;
          LODWORD(v31) = v70;
          if (v37 == a3)
          {
            goto LABEL_106;
          }
        }

        LODWORD(v31) = v70;
      }

LABEL_106:
      v79 = cf[4];
      if (v31 < v79)
      {
        v79 = v31;
      }

      cf[9] = v79;
      goto LABEL_5;
    }

    LODWORD(v31) = 0;
    v32 = 0;
    v33 = a4;
    while (1)
    {
      v42 = ~v32 + a3;
      if (v33)
      {
        v42 = v32;
      }

      v43 = v9[v42];
      if (v43 >= cf[5])
      {
        if (v43 > cf[6])
        {
          goto LABEL_106;
        }

        v44 = *(cf + 5);
        v45 = cf[8];
        v46 = v45 - 1;
        LODWORD(v47) = v29;
        if ((v45 - 33) < v29)
        {
LABEL_64:
          v47 = v47;
          v48 = v46 + 1 > v47 ? v46 + 1 : v47;
          while (v47 <= v46)
          {
            v50 = *(v44 + 4 * v47++);
            if (v50 <= v43)
            {
              v48 = v47 - 1;
              break;
            }
          }
        }

        else
        {
          while (1)
          {
            v48 = v47 + (v46 - v47) / 2;
            v49 = *(v44 + 4 * v48);
            if (v49 == v43)
            {
              break;
            }

            if (v49 > v43)
            {
              LODWORD(v47) = v48 + 1;
            }

            else
            {
              v46 = v48 - 1;
            }

            if (v47 > v46 - 32)
            {
              goto LABEL_64;
            }
          }
        }

        if (v48 < v45)
        {
          if (v48 == v29)
          {
            if (*(v44 + 4 * v29) != v43)
            {
              goto LABEL_53;
            }
          }

          else
          {
            memmove((v44 + 4 * v31), (v44 + 4 * v29), 4 * (v48 - v29));
            LODWORD(v31) = v48 - v29 + v31;
            if (*(*(cf + 5) + 4 * v48) != v43)
            {
              LODWORD(v29) = v48;
              v33 = a4;
              if (v31 >= cf[8])
              {
                v51 = __si_assert_copy_extra_332();
                __message_assert_336(v51, v52, v53, v54, v55, v56, v57, v58, "CIIndexSet.c");
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

              goto LABEL_53;
            }

            LODWORD(v29) = v48;
            v33 = a4;
          }

          --cf[4];
          LODWORD(v29) = v29 + 1;
        }
      }

LABEL_53:
      if (++v32 == a3)
      {
        goto LABEL_106;
      }
    }
  }

  v35 = cf[4];
  if ((v35 & 0x80000000) != 0)
  {
    v60 = -2;
    v61 = -2 - v35;
    v62 = (cf + 8);
    v133 = *(cf + 2);
    cf[4] = -2;
    v63 = a4;
    if (v35 <= 0xFFFFFFFD)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      while (1)
      {
        v67 = ~v66 + a3;
        if (v63)
        {
          v67 = v66;
        }

        v68 = v9[v67];
        v69 = *(&v133 + v65);
        if (v69 <= v68)
        {
          --v60;
          if (v69 == v68)
          {
            ++v65;
            *&v62[4 * v64] = v68;
            cf[4] = v60;
            ++v66;
            goto LABEL_88;
          }

          *&v62[4 * v64] = v68;
          ++v66;
        }

        else
        {
          ++v65;
          *&v62[4 * v64] = v69;
          --v60;
        }

        cf[4] = v60;
LABEL_88:
        ++v64;
        if (v66 >= a3 || v65 >= v61)
        {
          goto LABEL_110;
        }
      }
    }

    v66 = 0;
    v65 = 0;
    LODWORD(v64) = 0;
LABEL_110:
    if (v66 >= a3)
    {
LABEL_161:
      if (v65 < v61)
      {
        memcpy(&cf[v64 + 8], &v133 + 4 * v65, 4 * (-3 - (v65 + v35)) + 4);
        cf[4] = v65 + v35 + v60 + 2;
      }

      goto LABEL_5;
    }

    v64 = v64;
    if ((v63 & 1) == 0)
    {
      v109 = v66;
      v110 = a3 - v66;
      if (v110 <= 0xF)
      {
        goto LABEL_158;
      }

      v114 = ~v66 + a3;
      if ((~v66 + a3) < 0)
      {
        goto LABEL_158;
      }

      if (HIDWORD(v114))
      {
        goto LABEL_158;
      }

      v115 = v110 & 0xFFFFFFFFFFFFFFF8;
      v109 = (v110 & 0xFFFFFFFFFFFFFFF8) + v66;
      v116 = &cf[v64 + 12];
      v117 = v110 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v118 = &v9[v114];
        v119 = vrev64q_s32(*(v118 - 3));
        v120 = vrev64q_s32(*(v118 - 7));
        v116[-1] = vextq_s8(v119, v119, 8uLL);
        *v116 = vextq_s8(v120, v120, 8uLL);
        LODWORD(v114) = v114 - 8;
        v116 += 2;
        v117 -= 8;
      }

      while (v117);
      v64 = v115 + v64;
      if (v110 != v115)
      {
LABEL_158:
        v111 = a3 - v109;
        v112 = ~v109 + a3;
        do
        {
          *&v62[4 * v64++] = v9[v112--];
          --v111;
        }

        while (v111);
      }

      goto LABEL_160;
    }

    v80 = v66;
    memcpy(&cf[v64 + 8], &v9[v66], 4 * (~v66 + a3) + 4);
    v81 = a3 - v66;
    if (v81 >= 4)
    {
      v82 = v81 & 0xFFFFFFFFFFFFFFFCLL;
      v83 = 0uLL;
      v84 = v64;
      v85 = vdupq_n_s64(1uLL);
      v86 = v81 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v84 = vaddq_s64(v84, v85);
        v83 = vaddq_s64(v83, v85);
        v86 -= 4;
      }

      while (v86);
      LODWORD(v64) = vaddvq_s64(vaddq_s64(v83, v84));
      if (v81 == v82)
      {
        goto LABEL_160;
      }

      v80 = v82 + v66;
    }

    LODWORD(v64) = v64 + a3 - v80;
LABEL_160:
    v60 = v66 + v60 - a3;
    cf[4] = v60;
    goto LABEL_161;
  }

  if (a4)
  {
    v36 = *MEMORY[0x1E69E9840];

    CIIndexSetAddSortedIndexes_ArrayBackwards(cf, v9, a3);
    return;
  }

  v132 = &v9[a3];
  v75 = binarySearchMap(cf, *(v132 - 1));
  v76 = v75;
  v77 = cf[4];
  v78 = cf[8];
  if (v78 == v77)
  {
    v78 = cf[4];
LABEL_104:
    cf[9] = v76;
    goto LABEL_119;
  }

  v87 = cf[9];
  if (v87 != v75)
  {
    v113 = *(cf + 5);
    if (v87 >= v75)
    {
      memmove((v113 + 4 * (v78 - v77 + v75)), (v113 + 4 * v75), 4 * (v87 - v75));
      v78 = cf[8];
      v77 = cf[4];
    }

    else
    {
      memmove((v113 + 4 * v87), (v113 + 4 * (v87 + v78 - v77)), 4 * (v75 - (v87 + v78 - v77)));
      v78 = cf[8];
      v77 = cf[4];
      v76 = v76 - v78 + v77;
    }

    goto LABEL_104;
  }

LABEL_119:
  v89 = &v9[a3];
  v88 = a3;
  v90 = v78 - v77 + v76;
  if (v77 < 1 || (v77 + a3) <= ((__clz(v77) ^ 0x1F) * a3))
  {
    v104 = 0;
    while (1)
    {
      v106 = v132[~v104];
      if (v106 <= cf[6] && v106 >= cf[5])
      {
        if (v90 >= cf[8])
        {
          goto LABEL_145;
        }

        v90 = v90;
        while (1)
        {
          v107 = *(cf + 5);
          v108 = *(v107 + 4 * v90);
          if (v108 <= v106)
          {
            break;
          }

          ++v90;
          v105 = v76 + 1;
          *(v107 + 4 * v76++) = v108;
          if (v90 >= cf[8])
          {
            goto LABEL_146;
          }
        }

        if (v108 == v106)
        {
          LODWORD(v90) = v90 + 1;
          *(v107 + 4 * v76++) = v106;
        }

        else
        {
LABEL_145:
          v105 = v76;
LABEL_146:
          v76 = v105 + 1;
          *(*(cf + 5) + 4 * v105) = v106;
          ++cf[4];
        }
      }

      if (++v104 == a3)
      {
        goto LABEL_173;
      }
    }
  }

  v91 = 0;
  v92 = a3 - 2;
  while (1)
  {
    v94 = v89[~v91];
    if (v94 > cf[6] || v94 < cf[5])
    {
      goto LABEL_124;
    }

    v95 = *(cf + 5);
    v96 = cf[8];
    v97 = v96 - 1;
    LODWORD(v98) = v90;
    if ((v96 - 33) < v90)
    {
LABEL_133:
      v98 = v98;
      v93 = v97 + 1 > v98 ? v97 + 1 : v98;
      while (v98 <= v97)
      {
        v100 = *(v95 + 4 * v98++);
        if (v100 <= v94)
        {
          v93 = v98 - 1;
          break;
        }
      }
    }

    else
    {
      while (1)
      {
        v93 = (v98 + (v97 - v98) / 2);
        v99 = *(v95 + 4 * v93);
        if (v99 == v94)
        {
          break;
        }

        if (v99 > v94)
        {
          LODWORD(v98) = v93 + 1;
        }

        else
        {
          v97 = v93 - 1;
        }

        if (v98 > v97 - 32)
        {
          goto LABEL_133;
        }
      }
    }

    if (v93 < v96 && v94 == *(v95 + 4 * v93))
    {
      goto LABEL_124;
    }

    ++cf[4];
    v101 = v93 - v90;
    if (v93 != v90)
    {
      break;
    }

    v93 = v90;
LABEL_123:
    *(v95 + 4 * v76++) = v94;
    v90 = v93;
LABEL_124:
    ++v91;
    --v7;
    --v92;
    if (v91 == v88)
    {
      goto LABEL_173;
    }
  }

  v102 = (v95 + 4 * v76);
  v103 = (v95 + 4 * v90);
  if (v93 != v96)
  {
    memmove(v102, v103, 4 * (v93 - v90));
    v89 = &v9[a3];
    v88 = a3;
    v76 += v101;
    v95 = *(cf + 5);
    goto LABEL_123;
  }

  v121 = v96 - v90;
  memmove(v102, v103, 4 * (v96 - v90));
  v122 = v121 + v76;
  v76 += v121 + 1;
  *(*(cf + 5) + 4 * v122) = v94;
  if (v91 + 1 < a3)
  {
    do
    {
      v123 = v9[v92];
      if (v123 <= cf[6] && v123 >= cf[5])
      {
        *(*(cf + 5) + 4 * v76++) = v123;
        ++cf[4];
      }

      --v92;
      --v7;
    }

    while (v7);
  }

LABEL_173:
  cf[9] = v76;
LABEL_5:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t inner_performSearch(SISearchCtx_METADATA *a1, PartialQueryResults *a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v193 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 13);
  if (*(v4 + 96))
  {
    goto LABEL_5;
  }

  v5 = v3;
  v6 = v2;
  do
  {
    v7 = v4;
    v4 = *(v4 + 80);
  }

  while (v4);
  if (*(*(v7 + 8) + 12) == 1)
  {
LABEL_5:
    v8 = *__error();
    v9 = _SILogForLogForCategory(1);
    v10 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v9, v10))
    {
      LOWORD(v185[0]) = 0;
      _os_log_impl(&dword_1C278D000, v9, v10, "query invalidated", v185, 2u);
    }

    v11 = 0;
    *__error() = v8;
    goto LABEL_155;
  }

  v12 = *(v2 + 103);
  if (!v12)
  {
    if (*(v2 + 85) || *(v2 + 76) < *(v2 + 75))
    {
      v14 = *(v2 + 3);
      if (*(v2 + 69) != *(v14 + 1400) || (v15 = *(v2 + 73)) != 0 && v15 != *(v14 + 1384) || (v16 = *(v2 + 72)) != 0 && v16 != *(v14 + 1392))
      {
        v17 = *__error();
        v18 = _SILogForLogForCategory(1);
        v19 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v18, v19))
        {
          LOWORD(v185[0]) = 0;
          _os_log_impl(&dword_1C278D000, v18, v19, "merge completed; restart query", v185, 2u);
        }

        *__error() = v17;
        cleanUp(v6);
        v11 = gatherIndexInfo(v6, 0, 1);
        goto LABEL_155;
      }

      v70 = _performSearch(v2, v3);
      v71 = *__error();
      v72 = _SILogForLogForCategory(1);
      v73 = 2 * (dword_1EBF46AD0 < 4);
      v74 = os_log_type_enabled(v72, v73);
      if (v70 != -1)
      {
        if (v70 == 1)
        {
          if (v74)
          {
            LOWORD(v185[0]) = 0;
            _os_log_impl(&dword_1C278D000, v72, v73, "inner_performSearch: continue", v185, 2u);
          }

          *__error() = v71;
          v11 = 1;
        }

        else
        {
          if (v74)
          {
            LOWORD(v185[0]) = 0;
            _os_log_impl(&dword_1C278D000, v72, v73, "inner_performSearch: emit", v185, 2u);
          }

          *__error() = v71;
          emitResults(v6, v5, 0);
          v109 = *(v6 + 208);
          MEMORY[0x1EEE9AC00](v110);
          v112 = &v164 - ((v111 + 15) & 0xFFFFFFFF0);
          bzero(v112, v111);
          v113 = *(v6 + 208);
          if (v113)
          {
            v114 = (*(v6 + 105) + 32);
            v115 = v112;
            do
            {
              *v115++ = *v114;
              *v114 = 0;
              v114 += 6;
              --v113;
            }

            while (v113);
          }

          SISearchCtx_METADATA::cleanUp(v6, 0);
          *&v185[0] = v6;
          *(&v185[0] + 1) = v112;
          v116 = CICleanUpThreadLoc();
          v117 = CICleanUpPush(v116, cleanupDocSets, v185);
          v11 = gatherIndexInfo(v6, v112, 1);
          CICleanUpClearItem(v116, v117);
          cleanupDocSets(v185);
        }

        goto LABEL_155;
      }

      if (v74)
      {
        LOWORD(v185[0]) = 0;
        _os_log_impl(&dword_1C278D000, v72, v73, "_performSearch returned -1", v185, 2u);
      }

      *__error() = v71;
      cleanUp(v6);
    }

    v11 = 0;
    goto LABEL_155;
  }

  v175[4] = 0;
  v175[5] = 0;
  v13 = *(v2 + 2);
  v175[1] = *(v2 + 3);
  v175[2] = v2;
  v175[3] = v13;
  v175[0] = &unk_1F427CB68;
  *(v12 + 24) = v175;
  if (dword_1EBF46AD0 >= 5)
  {
    v135 = *__error();
    v136 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v185[0]) = 136315138;
      *(v185 + 4) = "_performSearch_degenerate";
      _os_log_impl(&dword_1C278D000, v136, OS_LOG_TYPE_DEFAULT, "%s", v185, 0xCu);
    }

    *__error() = v135;
  }

  if (*(v6 + 40) == 4)
  {
    v172 = 0;
  }

  else
  {
    v20 = *(v6 + 13);
    v21 = v20;
    do
    {
      v22 = v21;
      v21 = *(v21 + 80);
    }

    while (v21);
    v23 = *(*(v22 + 8) + 80);
    v24 = *(v20 + 80);
    if (v24)
    {
      v25 = 0;
      do
      {
        v25 ^= *(v20 + 104) == 0;
        v20 = v24;
        v24 = *(v24 + 80);
      }

      while (v24);
      if (v25)
      {
        v26 = 3553;
      }

      else
      {
        v26 = 2781;
      }
    }

    else
    {
      v26 = 2781;
    }

    v172 = PartialQueryResults::start(v5, v23, v26, 0x400uLL, 0);
  }

  bzero(v185, 0x2000uLL);
  bzero(v184, 0x400uLL);
  v28 = *(v6 + 103);
  if (*v28 != 3506)
  {
    v158 = __si_assert_copy_extra_332();
    v159 = v158;
    if (v158)
    {
      v160 = v158;
    }

    else
    {
      v160 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 571, v160);
    free(v159);
    goto LABEL_195;
  }

  v29 = *(v28 + 16);
  v173 = v6;
  if (!v29)
  {
    *(v28 + 1996) = 0;
    goto LABEL_43;
  }

  if (!*(v28 + 2000))
  {
    goto LABEL_43;
  }

  if (*(v28 + 1996) >= 1)
  {
    v30 = 0;
    do
    {
      free(*(v28 + 32 + 8 * v30++));
    }

    while (v30 < *(v28 + 1996));
  }

  *(v28 + 1996) = 0;
  if (*(v28 + 2008) == -1)
  {
    goto LABEL_43;
  }

  v177 = 0;
  v178 = 0;
  v31 = CICleanUpThreadLocGet(&v177);
  v32 = _db_write_lock(v29 + 584);
  if (v32)
  {
    v161 = v32;
    v162 = *__error();
    v163 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
    {
      *v186 = 136315650;
      *&v186[4] = "db2_read_query";
      *&v186[12] = 1024;
      *&v186[14] = 146;
      *&v186[18] = 1024;
      *&v186[20] = v161;
      _os_log_error_impl(&dword_1C278D000, v163, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", v186, 0x18u);
    }

    *__error() = v162;
    sdb2_die(v29, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 146);
  }

  LODWORD(v174) = v31;
  if (v31)
  {
    v33 = CIOnThreadCleanUpPush(v177, db_write_unlock, v29 + 584);
  }

  else
  {
    v33 = -1;
  }

  v45 = *(v28 + 2040);
  v46 = (v45 + *(v28 + 2024));
  v47 = v45[2];
  v48 = v45 + v47;
  if (v46 + 1 < (v45 + v47) && v46 + *v46 <= v48)
  {
    v54 = *v45;
    goto LABEL_137;
  }

  v170 = v33;
  v49 = v45[3];
  while (1)
  {
    if ((v49 & 4) != 0)
    {
      v50 = 4;
    }

    else
    {
      v50 = 1;
    }

    v51 = v45[v50];
    v52 = *(v28 + 2016) + v51;
    *(v28 + 2016) = v52;
    v53 = fd_pread(*(*(v28 + 16) + 848), v45, v51, v52);
    if (!v53)
    {
      if (db_write_unlock(v29 + 584))
      {
        sdb2_die(v29, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 160);
      }

      if (v174)
      {
        v92 = v177;
        CIOnThreadCleanUpClearItem(v177, v170);
        v93 = &threadData[9 * v92];
        v94 = *(v93 + 14);
        v58 = v93 + 7;
        v59 = v94;
        if ((&v170->isa + 1) == v94)
        {
          goto LABEL_134;
        }
      }

      goto LABEL_43;
    }

    if (v53 != v51)
    {
      *(v28 + 2008) = -1;
    }

    if (db2_page_uncompress_swap(v29, *(v28 + 2040), &v178, 0))
    {
      *(v28 + 2008) = -1;
    }

    v45 = *(v28 + 2040);
    if (v178)
    {
      free(*(v28 + 2040));
      v45 = v178;
      *(v28 + 2040) = v178;
    }

    v54 = *v45;
    if (*v45 != 1684172850)
    {
      goto LABEL_136;
    }

    v49 = v45[3];
    if ((v49 & 0xF0) == 0)
    {
      break;
    }

    if (*(v28 + 2008) == -1)
    {
      if (db_write_unlock(v29 + 584))
      {
        sdb2_die(v29, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 192);
      }

      v55 = v174;
LABEL_79:
      if (v55)
      {
        v56 = v177;
        CIOnThreadCleanUpClearItem(v177, v170);
        v57 = &threadData[9 * v56];
        v60 = *(v57 + 14);
        v58 = v57 + 7;
        v59 = v60;
        if ((&v170->isa + 1) == v60)
        {
LABEL_134:
          *v58 = v59 - 1;
        }
      }

LABEL_43:
      v34 = *(v6 + 103);
      v35 = *(v34 + 1996);
      if (!v35)
      {
        v11 = 0;
        goto LABEL_148;
      }

      goto LABEL_44;
    }
  }

  v54 = 1684172850;
LABEL_136:
  *(v28 + 2024) = 20;
  v46 = v45 + 5;
  v47 = v45[2];
  v48 = v45 + v47;
  v33 = v170;
LABEL_137:
  if (v54 != 1684172850 || v47 > v45[1] || (v45[3] & 1) == 0)
  {
    v95 = *__error();
    v96 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      v129 = *(v28 + 2016);
      v130 = *(*(v28 + 16) + 44);
      v131 = *(v28 + 2040);
      v132 = *v131;
      v133 = v131[1];
      v134 = v131[2];
      LODWORD(v131) = v131[3];
      *v186 = 136317186;
      *&v186[4] = "db2_read_query";
      *&v186[12] = 1024;
      *&v186[14] = 210;
      *&v186[18] = 2080;
      *&v186[20] = v29 + 324;
      *&v186[28] = 2048;
      *&v186[30] = v129;
      v187 = 1024;
      WORD2(v188[0]) = 1024;
      *(v188 + 6) = v132;
      WORD1(v188[1]) = 1024;
      LODWORD(v188[0]) = v130;
      HIDWORD(v188[1]) = v133;
      LOWORD(v188[2]) = 1024;
      *(&v188[2] + 2) = v134;
      HIWORD(v188[2]) = 1024;
      LODWORD(v189) = v131;
      _os_log_error_impl(&dword_1C278D000, v96, OS_LOG_TYPE_ERROR, "%s:%d: %s : read_query: page at offset 0x%llx not valid (skipping %d)! (0x%x %d %d 0x%x)\n", v186, 0x44u);
    }

    *__error() = v95;
    *(*(v28 + 16) + 4) |= 0x40u;
    *&v179 = MEMORY[0x1E69E9820];
    *(&v179 + 1) = 0x40000000;
    *&v180 = __db2_read_query_block_invoke;
    *(&v180 + 1) = &__block_descriptor_tmp_14555;
    *&v181 = v29;
    *(&v181 + 1) = v28;
    analytics_send_event_lazy();
    v97 = *(*(v28 + 16) + 44);
    v98 = *(v28 + 2040);
    v98[1] = v97;
    v98[2] = v97;
    v98[4] = v97;
    *(v28 + 2024) = *(*(v28 + 16) + 44);
    if (db_write_unlock(v29 + 584))
    {
      sdb2_die(v29, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 241);
    }

    if (v174)
    {
      v99 = v177;
      CIOnThreadCleanUpClearItem(v177, v33);
      v100 = &threadData[9 * v99];
      v103 = *(v100 + 14);
      v101 = v100 + 7;
      v102 = v103;
      if (v33 + 1 == v103)
      {
        goto LABEL_145;
      }
    }

    goto LABEL_146;
  }

  v170 = v33;
  if (v46 + *v46 <= v48 && *(v28 + 1996) <= 244 && v46 < v48)
  {
    do
    {
      v123 = v5;
      v176 = 0;
      _inflateDBO(v29, v46, &v176, 0, 0, 0);
      v124 = v176;
      *v186 = v176;
      *&v186[8] = 0;
      *&v186[16] = 0;
      if ((*(v176 + 40) & 5) != 0)
      {
        free(v176);
      }

      else
      {
        v125 = *(v28 + 2000);
        v126 = *(v28 + 2032);
        v127 = *(v28 + 24);
        if (db_eval_obj_with_options(*(v28 + 16)))
        {
          v128 = *(v28 + 1996);
          *(v28 + 1996) = v128 + 1;
          *(v28 + 32 + 8 * v128) = v124;
        }

        else
        {
          free(v124);
          ++*(v28 + 1992);
        }
      }

      if (*v46)
      {
        v46 = (v46 + *v46 + 4);
      }

      else
      {
        v46 = v48;
      }

      *(v28 + 2024) = v46 - *(v28 + 2040);
      v5 = v123;
    }

    while ((v46 + 1) < v48 && v46 + *v46 + 4 <= v48 && *(v28 + 1996) < 245);
  }

  v118 = *(v28 + 2008);
  v119 = db_write_unlock(v29 + 584);
  if (v118 == -1)
  {
    v6 = v173;
    v55 = v174;
    if (v119)
    {
      sdb2_die(v29, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 277);
    }

    goto LABEL_79;
  }

  v6 = v173;
  if (v119)
  {
    sdb2_die(v29, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2_query.c", 281);
  }

  if (v174)
  {
    v120 = v177;
    CIOnThreadCleanUpClearItem(v177, v170);
    v121 = &threadData[9 * v120];
    v122 = *(v121 + 14);
    v101 = v121 + 7;
    v102 = v122;
    if ((&v170->isa + 1) == v122)
    {
LABEL_145:
      *v101 = v102 - 1;
    }
  }

LABEL_146:
  v34 = *(v6 + 103);
  v35 = *(v34 + 1996);
  if (!v35)
  {
LABEL_147:
    v11 = 1;
    goto LABEL_148;
  }

LABEL_44:
  for (i = 0; v35 != i; ++i)
  {
    *(v185 + i) = **(v34 + 8 * i + 32);
  }

  if (!i)
  {
    goto LABEL_147;
  }

  if (*(v6 + 40) != 4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v42 = *(v5 + 29);
    v43 = *(v6 + 3);
    v171 = v5;
    if (v42)
    {
      if (*v5 == 1)
      {
        if (!*(v5 + 13))
        {
          v44 = *(v5 + 16);
          if (v44)
          {
            *v186 = 0;
            SIFlattenArrayToCStringVector(v44, v5 + 13, v186, &v179);
          }
        }
      }

      else if (!*(v5 + 12))
      {
        v75 = *(v5 + 15);
        if (v75)
        {
          SIFlattenArrayToCStringVector(v75, v5 + 12, v5 + 30, v5 + 29);
          if (!*(v5 + 12))
          {
            v149 = __si_assert_copy_extra_332();
            __message_assert_336(v149, v150, v151, v152, v153, v154, v155, v156, "SISearchCtx.h");
            free(v149);
            if (__valid_fs(-1))
            {
              v157 = 2989;
            }

            else
            {
              v157 = 3072;
            }

            *v157 = -559038737;
            abort();
          }
        }
      }

      LODWORD(v170) = *(v5 + 29) > 0;
    }

    else
    {
      LODWORD(v170) = 0;
    }

    if (i)
    {
      v76 = (*(v173 + 103) + 32);
      v77 = *(v173 + 19);
      *&v174 = *(v173 + 2);
      v78 = *(v173 + 29);
      v168 = *(v173 + 28);
      v169 = v77;
      v167 = v78;
      i = i;
      v79 = v185;
      v80 = v184;
      *&v40 = 134217984;
      v166 = v40;
      do
      {
        if (*v80++)
        {
          if (dword_1EBF46AD0 >= 5)
          {
            v165 = *__error();
            v82 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              v83 = *v79;
              *v186 = v166;
              *&v186[4] = v83;
              _os_log_impl(&dword_1C278D000, v82, OS_LOG_TYPE_DEFAULT, "No permission for %llx", v186, 0xCu);
            }

            *__error() = v165;
          }
        }

        else
        {
          if (v170)
          {
            v84 = *v76;
          }

          else
          {
            v84 = 0;
          }

          bzero(&v186[8], 0x470uLL);
          v85 = *v79;
          *&v186[16] = v43;
          *&v186[24] = v174;
          *&v188[1] = 0u;
          v189 = 0u;
          v190 = 0;
          if (v43)
          {
            v86 = *(v43 + 6586) >> 7;
          }

          else
          {
            LOBYTE(v86) = 1;
          }

          v191 = v86;
          v192 = v85;
          *v186 = &unk_1F42826E0;
          v188[0] = v84;
          if (v173)
          {
            v87 = *(v173 + 1);
          }

          else
          {
            v87 = 0;
          }

          *&v186[8] = 8;
          v181 = xmmword_1C2C00670;
          v182 = unk_1C2C00680;
          v183 = xmmword_1C2C00690;
          v28 &= 0xFFFFFF0000000000;
          v179 = ZERO_RANKING_BITS;
          v180 = unk_1C2C00660;
          writeDBOToPlistBytes(v43, v172, v171, v169, v186, v174, v168, v167, 0, &v179, v28, SBYTE4(v28), &ZERO_VECTOR_DISTANCES, 0, 0, v173, v87, 0);
          if (v188[0] == v84)
          {
            v188[0] = 0;
          }

          CatInfoGotten_OID::~CatInfoGotten_OID(v186);
        }

        ++v76;
        ++v79;
        --i;
      }

      while (i);
    }

    v88 = *__error();
    v89 = _SILogForLogForCategory(1);
    v90 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = CFAbsoluteTimeGetCurrent();
      *v186 = 134217984;
      *&v186[4] = v91 - Current;
      _os_log_impl(&dword_1C278D000, v89, v90, "Encoded results in %f seconds!", v186, 0xCu);
    }

    *__error() = v88;
    v11 = 1;
    v6 = v173;
    v5 = v171;
    goto LABEL_148;
  }

  v37 = *(v6 + 3);
  v38 = *(v5 + 29);
  if (*v5 != 1)
  {
    if (!v38)
    {
      goto LABEL_86;
    }

    if (*(v5 + 12))
    {
      goto LABEL_86;
    }

    v61 = *(v5 + 15);
    if (!v61)
    {
      goto LABEL_86;
    }

    SIFlattenArrayToCStringVector(v61, v5 + 12, v5 + 30, v5 + 29);
    if (*(v5 + 12))
    {
      goto LABEL_86;
    }

    v140 = __si_assert_copy_extra_332();
    __message_assert_336(v140, v141, v142, v143, v144, v145, v146, v147, "SISearchCtx.h");
    free(v140);
    if (!__valid_fs(-1))
    {
      v148 = 3072;
LABEL_197:
      *v148 = -559038737;
      abort();
    }

LABEL_195:
    v148 = 2989;
    goto LABEL_197;
  }

  if (v38 && !*(v5 + 13))
  {
    v39 = *(v5 + 16);
    if (v39)
    {
      *v186 = 0;
      SIFlattenArrayToCStringVector(v39, v5 + 13, v186, &v179);
    }

LABEL_86:
    v38 = *(v5 + 29);
    v34 = *(v6 + 103);
  }

  v62 = v5;
  v63 = v6;
  v64 = (v34 + 32);
  v65 = *(v63 + 19);
  i = i;
  v66 = v185;
  v67 = v184;
  *&v27 = 134217984;
  v174 = v27;
  do
  {
    if (*v67++)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        LODWORD(v172) = *__error();
        v170 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
        {
          v69 = *v66;
          *v186 = v174;
          *&v186[4] = v69;
          _os_log_impl(&dword_1C278D000, v170, OS_LOG_TYPE_DEFAULT, "No permission for %llx", v186, 0xCu);
        }

        *__error() = v172;
      }
    }

    else if (v38 >= 1)
    {
      collectAttributesFromDBO(v37, *v64, v38, v62, v65);
    }

    ++v66;
    ++v64;
    --i;
  }

  while (i);
  v11 = 1;
  v6 = v173;
  v5 = v62;
LABEL_148:
  if (*(v6 + 40) != 4)
  {
    if (*(v5 + 186))
    {
      _MDPlistBytesEndArray();
      v104 = *(v5 + 186);
      _MDPlistBytesEndPlist();
    }

    if (*(v5 + 58))
    {
      v105 = *(v5 + 443);
      _MDStoreOIDArrayEndBulkAdd();
      v106 = *(v5 + 58);
      _MDStoreOIDArrayEndSequence();
      *(v5 + 443) = 0;
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v137 = *__error();
      v138 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        v139 = PartialQueryResults::totalcount(v5);
        *v186 = 134218240;
        *&v186[4] = v6;
        *&v186[12] = 2048;
        *&v186[14] = v139;
        _os_log_impl(&dword_1C278D000, v138, OS_LOG_TYPE_DEFAULT, "%p found %ld results\n", v186, 0x16u);
      }

      *__error() = v137;
    }
  }

  *(*(v6 + 103) + 24) = 0;
  QueryFunctionCallbackContext_METADATA::~QueryFunctionCallbackContext_METADATA(v175);
LABEL_155:
  v107 = *MEMORY[0x1E69E9840];
  return v11;
}