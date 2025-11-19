void _CIDocSetIteratorProcessPositionsUpdates(uint64_t *a1, int a2, int a3, int a4, int a5, char a6)
{
  LODWORD(v10) = a2;
  v30 = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (v10)
  {
    v10 = v10;
    do
    {
      v13 = *a1++;
      ContentIndexDocSetIteratorFlatten(v13, Mutable, 0, 0);
      --v10;
    }

    while (v10);
  }

  Count = CFSetGetCount(Mutable);
  v15 = Count;
  MEMORY[0x1EEE9AC00](Count);
  v17 = &block[-1] - ((v16 + 15) & 0xFFFFFFFF0);
  bzero(v17, v16);
  CFSetGetValues(Mutable, v17);
  v29 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___CIDocSetIteratorProcessPositionsUpdates_block_invoke;
  block[3] = &__block_descriptor_tmp_10_14168;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  block[4] = v17;
  block[5] = &v29;
  dispatch_apply(v15, 0, block);
  CFRelease(Mutable);
  if (v29)
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 2994, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v21);
    free(v20);
    if (__valid_fs(-1))
    {
      v22 = 2989;
    }

    else
    {
      v22 = 3072;
    }

    *v22 = -559038737;
    abort();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void _CIDocSetIteratorProcessPositionsUpdatesForNode(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v342 = *MEMORY[0x1E69E9840];
  makeThreadId();
  v10 = CICleanUpThreadLoc();
  v11 = atomic_load((*(a1 + 56) + 36));
  v12 = *(a1 + 48);
  if (v12 < 9)
  {
    goto LABEL_2;
  }

  if (v12 != 9)
  {
    v275 = __si_assert_copy_extra_332();
    v276 = v275;
    v277 = "";
    if (v275)
    {
      v277 = v275;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Expected valid doc set type. Got %d", "CIQuery.c", 2941, "0", v277, *(a1 + 48));
    v269 = v276;
    goto LABEL_318;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_2;
  }

  v15 = v10;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v337 = 0;
  v336 = 0;
  v17 = *(v14 + 64);
  v325 = add_explicit;
  v18 = setThreadIdAndInfo(v17, sIndexExceptionCallbacks, v14, 0x20000000, add_explicit + 1);
  v337 = __PAIR64__(v18, HIDWORD(v18));
  v336 = __PAIR64__(v19, v20);
  v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  *(v21 + 216) = 0;
  v324 = *(v21 + 312);
  v22 = *(v21 + 224);
  v23 = v21;
  if (v22)
  {
    v22(*(v21 + 288));
  }

  v335 = v337;
  v334 = v336;
  if (_setjmp(v23))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v23 + 312) = v324;
    if ((~*(v23 + 212) & 0xA0000000) == 0)
    {
      v24 = *(v23 + 288);
      if (v24)
      {
        _CIMakeInvalid(v24);
      }
    }

    CIOnThreadCleanUpReset(v334);
    dropThreadId(HIDWORD(v335), 1, v325 + 1);
    CICleanUpReset(HIDWORD(v335), HIDWORD(v334));
    goto LABEL_2;
  }

  v25 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v26 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v25 + 1);
  v333 = __PAIR64__(v26, HIDWORD(v26));
  v332 = __PAIR64__(v27, v28);
  v29 = threadData[9 * v26 + 1] + 320 * HIDWORD(v26);
  v322 = *(v29 + 312);
  v30 = *(v29 + 224);
  if (v30)
  {
    v30(*(v29 + 288));
  }

  v331 = v333;
  v330 = v332;
  if (_setjmp(v29))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v29 + 312) = v322;
    CIOnThreadCleanUpReset(v330);
    dropThreadId(HIDWORD(v331), 1, v25 + 1);
    CICleanUpReset(HIDWORD(v331), HIDWORD(v330));
    goto LABEL_23;
  }

  v35 = **(a1 + 72);
  v36 = *(v35 + 80);
  if (v36)
  {
    a2 = *(v36 + 16);
  }

  v37 = *(v35 + 88);
  v38 = a2;
  if (v37)
  {
    v38 = *(v37 + 16);
  }

  v321 = v38;
  if (!*(a1 + 80))
  {
    *(a1 + 80) = CIIndexSetCreateWithRange(0, a4, 1);
  }

  v323 = v25;
  v39 = *(a1 + 128);
  if (v39 < 0)
  {
    if ((v39 & 0x7FFFFFFF) != 0)
    {
      v42 = 0;
      do
      {
        v43 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + 8 * v42));
        if (v43)
        {
          CIIndexSetRemoveRange(*(a1 + 104), v43, a2, a3);
        }

        ++v42;
      }

      while (v42 < (*(a1 + 128) & 0x7FFFFFFFu));
    }
  }

  else if (v39)
  {
    v40 = 0;
    do
    {
      v41 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + 8 * v40));
      if (v41)
      {
        CIIndexSetIntersectRanges(*(a1 + 104), v41, a2, a3);
      }

      ++v40;
    }

    while (v40 < (*(a1 + 128) & 0x7FFFFFFFu));
  }

  v320 = a5;
  v319 = v15;
  v318 = v11 & 0xC;
  v317 = *(a1 + 104);
  v316 = &threadData[9 * v15];
  v44 = 1;
  *&v31 = 67109120;
  *&v32 = 67109120;
  v315 = v32;
  v314 = v32;
  v313 = v32;
  v312 = v32;
  v311 = v32;
  v310 = v32;
  v309 = v31;
  v308 = 0x8000;
  v307 = 3;
  v306 = 4;
  v45 = 0;
  v46 = 0;
  v326 = a1;
  do
  {
    v47 = v45;
    v48 = v44;
    v49 = a3;
    a3 = a2;
    v50 = *(**(a1 + 72) + 8 * v45 + 80);
    if (v50)
    {
      v299 = v47;
      v305 = v44;
      v298 = *(v50 + 256);
      v303 = *(v316 + 8);
      v304 = a2;
      v300 = v49;
      locked = lockedCountItemsInRange(v317, a2, v49, *&v31);
      v52 = (*(a1 + 96) * locked);
      malloc = query_malloc(8 * v52);
      v53 = v319;
      v297 = malloc;
      CICleanUpPush(v319, MEMORY[0x1E69E9B38], malloc);
      v54 = *(a1 + 96);
      v302 = locked;
      if (!v54)
      {
        goto LABEL_248;
      }

      v296 = v52;
      v55 = locked;
      v295 = locked;
      v56 = 0;
      v57 = locked;
      v58 = 0;
      do
      {
        v59 = v54;
        if (v57 >= 1)
        {
          v60 = &v297[8 * v56];
          v61 = v55;
          do
          {
            v62 = v61;
            v63 = v60;
            v64 = CIIndexSetCreateWithRange(0, 0x400u, 1);
            *v63 = v64;
            CICleanUpPush(v53, MEMORY[0x1E695D7C0], v64);
            v60 = v63 + 8;
            v61 = v62 - 1;
          }

          while (v62 != 1);
          v59 = *(a1 + 96);
        }

        ++v58;
        v57 = v302;
        v56 += v302;
        v54 = v59;
      }

      while (v58 < v59);
      if (!v59)
      {
        locked = v302;
        goto LABEL_248;
      }

      v65 = 0;
      v66 = v46;
      locked = v302;
      v67 = v299;
      do
      {
        v68 = v65;
        v69 = *(*(a1 + 72) + 8 * v65);
        v70 = *(*(v69 + 64) + 8 * v67 + 224);
        v293 = v69;
        if (!v70)
        {
          goto LABEL_244;
        }

        v71 = v70;
        if (*v70 < 1)
        {
          goto LABEL_244;
        }

        v291 = v68 * v295;
        v290 = locked * v68;
        v72 = &v297[8 * (locked * v68)];
        v73 = 0;
        v74 = v66;
        v294 = v68;
        v292 = v71;
        while (1)
        {
          v287 = v74;
          v75 = v73;
          *buf = 0u;
          v329 = 0u;
          v76 = v71[2];
          v289 = v75;
          v77 = 5 * v75;
          initializeEnumberatorForRangeLocked(buf, *(v76 + 40 * v75 + 32), v304, v300);
          v78 = v71[2] + 8 * v77;
          v79 = *(v78 + 4);
          if (!*v78)
          {
LABEL_72:
            v91 = v79;
            goto LABEL_83;
          }

          v80 = _CIIndexSetEnumeratorNext(buf);
          if (!CIIndexSetHasIndex(v317, v80))
          {
            if (gSILogLevels[0] >= 5)
            {
              v208 = *__error();
              v209 = _SILogForLogForCategory(0);
              if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
              {
                *v338 = v310;
                *&v338[4] = v80;
                _os_log_impl(&dword_1C278D000, v209, OS_LOG_TYPE_DEFAULT, "LL: Skip %u", v338, 8u);
              }

              *__error() = v208;
              a1 = v326;
              v53 = v319;
              v68 = v294;
            }

            v92 = *(v78 + 8);
            v91 = v79;
            locked = v302;
            if (v92)
            {
              v93 = 1;
              v94 = v78;
              do
              {
                v91 = *(v94 + 4);
                if (v93 >= v92)
                {
                  break;
                }

                v94 = v298 + 8 * v91;
                ++v93;
              }

              while (v91 && v298 != 0);
            }

            goto LABEL_83;
          }

          if (gSILogLevels[0] >= 5)
          {
            v205 = *__error();
            v206 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
            {
              *v338 = v311;
              *&v338[4] = v80;
              _os_log_impl(&dword_1C278D000, v206, OS_LOG_TYPE_DEFAULT, "LL: Read %u", v338, 8u);
            }

            *__error() = v205;
            a1 = v326;
            v53 = v319;
            v68 = v294;
          }

          v82 = lockedCountItemsInRange(v317, v80, v300, v81) - 1;
          if (v291 + v82 >= v296)
          {
            break;
          }

          locked = v302;
          if (!*(v78 + 8))
          {
            goto LABEL_72;
          }

          v84 = v82 + v290;
          if (*&malloc[8 * v82 + 8 * v290] || (v211 = CIIndexSetCreateWithRange(0, *v78, 1), *&malloc[8 * v84] = v211, v91 = v79, *(v78 + 8)))
          {
            v85 = -1;
            v86 = v78;
            v87 = 0;
            do
            {
              v88 = v85;
              CIIndexSetAddIndexExpandingRange(*&malloc[8 * v84], *v86, v83);
              if (v88 <= *v86)
              {
                v271 = __si_assert_copy_extra_332();
                v265 = v271;
                v272 = "";
                if (v271)
                {
                  v272 = v271;
                }

                v278 = "lastpos>info->position";
                v279 = v272;
                v267 = "CIQuery.c";
                v268 = 2643;
                goto LABEL_317;
              }

              v89 = *v86;
              v90 = v86[1];
              v91 = v90;
              if (v90)
              {
                v86 = (v298 + 8 * v90);
              }

              else
              {
                v86 = 0;
              }

              ++v87;
              v85 = v89;
              locked = v302;
            }

            while (v87 < *(v78 + 8));
          }

LABEL_83:
          if (v320)
          {
            v66 = v287;
          }

          else
          {
            if (v91)
            {
              while (1)
              {
                v96 = v91;
                v97 = _CIIndexSetEnumeratorNext(buf);
                v98 = v317;
                HasIndex = CIIndexSetHasIndex(v317, v97);
                v101 = (v298 + 8 * v96);
                if (HasIndex)
                {
                  break;
                }

                if (gSILogLevels[0] >= 5)
                {
                  v130 = *__error();
                  v131 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                  {
                    *v338 = v312;
                    *&v338[4] = v97;
                    _os_log_impl(&dword_1C278D000, v131, OS_LOG_TYPE_DEFAULT, "MA: Skip %u", v338, 8u);
                  }

                  *__error() = v130;
                }

                v107 = v101 + *v101 + 4;
LABEL_127:
                v91 = *v107;
                if (!v91)
                {
                  goto LABEL_135;
                }
              }

              v102 = lockedCountItemsInRange(v98, v97, v300, v100);
              if (gSILogLevels[0] >= 5)
              {
                v128 = *__error();
                v129 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                {
                  *v338 = v313;
                  *&v338[4] = v97;
                  _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_DEFAULT, "MA: Read %u", v338, 8u);
                }

                *__error() = v128;
              }

              v105 = (v101 + 1);
              v104 = *v101;
              if (v318 == 8)
              {
                if (*v105 < 0)
                {
                  v113 = *v105;
                  if (v113 >= 0xC0)
                  {
                    v114 = v306;
                    if (v113 >= 0xF0)
                    {
                      v114 = v306 + 1;
                    }

                    v115 = v113 >= 0xE0;
                    v106 = v307;
                    if (v115)
                    {
                      v106 = v114;
                    }
                  }

                  else
                  {
                    v106 = 2;
                  }
                }

                else
                {
                  v106 = 1;
                }
              }

              else
              {
                v106 = 0;
              }

              v108 = v106 + 1;
              v109 = &v105[v106];
              v110 = v105[v106];
              if (v105[v106] < 0)
              {
                if (v110 > 0xBF)
                {
                  if (v110 > 0xDF)
                  {
                    if (v110 > 0xEF)
                    {
                      v111 = *&v105[v108];
                      v112 = v106 + 5;
                    }

                    else
                    {
                      v111 = ((v110 & 0xF) << 24) | (v105[v108] << 16) | (v109[2] << 8) | v109[3];
                      v112 = v106 + 4;
                    }
                  }

                  else
                  {
                    v111 = ((v110 & 0x1F) << 16) | (v105[v108] << 8) | v109[2];
                    v112 = v106 + 3;
                  }
                }

                else
                {
                  v111 = v105[v108] | ((v110 & 0x3F) << 8);
                  v112 = v106 + 2;
                }
              }

              else
              {
                v111 = v105[v106];
                v112 = v106 + 1;
              }

              v116 = (v102 - 1);
              if (v291 + v116 < v296)
              {
                v117 = *&v72[8 * v116];
                if (!v117)
                {
                  v117 = CIIndexSetCreateWithRange(0, v111, 1);
                  *&v72[8 * v116] = v117;
                }

                CIIndexSetAddIndexExpandingRange(v117, v111, v103);
                v119 = v112;
                for (i = v111; ; i = v127)
                {
                  v121 = v119 + 1;
                  v122 = &v105[v119];
                  v123 = v105[v119];
                  if (v105[v119] < 0)
                  {
                    if (v123 > 0xBF)
                    {
                      if (v123 > 0xDF)
                      {
                        if (v123 > 0xEF)
                        {
                          v125 = *&v105[v121];
                          v121 = v119 + 5;
                        }

                        else
                        {
                          v125 = ((v123 & 0xF) << 24) | (v105[v121] << 16) | (v122[2] << 8) | v122[3];
                          v121 = v119 + 4;
                        }
                      }

                      else
                      {
                        v125 = ((v123 & 0x1F) << 16) | (v105[v121] << 8) | v122[2];
                        v121 = v119 + 3;
                      }
                    }

                    else
                    {
                      v125 = v105[v121] | ((v123 & 0x3F) << 8);
                      v121 = v119 + 2;
                    }

                    v124 = v125;
                    if (!v125)
                    {
LABEL_126:
                      v107 = &v105[v104];
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    v124 = v105[v119];
                    if (!v123)
                    {
                      goto LABEL_126;
                    }
                  }

                  v126 = v121;
                  v127 = i - v124;
                  CIIndexSetAddIndexExpandingRange(*&v72[8 * v116], i - v124, v118);
                  v119 = v126;
                }
              }
            }

LABEL_135:
            v132 = *(v78 + 16);
            v288 = v280;
            MEMORY[0x1EEE9AC00](v280);
            v133 = &v280[-32768];
            bzero(&v280[-32768], v134);
            v66 = v287;
            v53 = v319;
            if (v132)
            {
              v135 = *(**(*(a1 + 112) + 408) + 4488);
              v136 = v132 & 0x3FFFFFFFFFFFF000;
              v66 = fd_pread(v135, &v280[-32768], 0x8000uLL, v132 & 0x3FFFFFFFFFFFF000);
              if (v66 == -1)
              {
                goto LABEL_243;
              }

              v137 = v132;
              v138 = 0;
              v139 = v136;
              do
              {
                v140 = v137 - 32749 < 0xFFFFFFFFFFFF7FFFLL || v139 > v137;
                v141 = v139;
                if (v140)
                {
                  v141 = v137 & 0x3FFFFFFFFFFFF000;
                  v66 = fd_pread(v135, &v280[-32768], 0x8000uLL, v137 & 0x3FFFFFFFFFFFF000);
                  if (v66 == -1)
                  {
                    break;
                  }
                }

                *v338 = v137 - v141;
                VInt64 = v2_readVInt64(&v280[-32768], v338);
                if (VInt64)
                {
                  v145 = VInt64 >> 1;
                  v143 = v2_readVInt64(&v280[-32768], v338);
                  v144 = v145;
                }

                else
                {
                  v143 = VInt64;
                  v144 = 0;
                }

                if (v143)
                {
                  v273 = __si_assert_copy_extra_332();
                  v265 = v273;
                  v274 = "";
                  if (v273)
                  {
                    v274 = v273;
                  }

                  v278 = "(value & 1) == 0";
                  v279 = v274;
                  v267 = "PayloadIterator.h";
                  v268 = 279;
                  goto LABEL_317;
                }

                v146 = v143 >> 1;
                if (!v144)
                {
                  v144 = v138;
                }

                v147 = v143 == 0;
                v148 = v143 ? v144 : 0;
                v285 = v148;
                v149 = v147 ? v144 : v146;
                v286 = v149;
                v150 = *v338;
                v151 = v141;
                while (1)
                {
LABEL_157:
                  if (v150 - 32749 > 0xFFFFFFFFFFFF7FFELL)
                  {
                    a1 = v326;
                    v53 = v319;
                  }

                  else
                  {
                    v152 = v150 + v151;
                    v153 = (v150 + v151) & 0x3FFFFFFFFFFFF000;
                    v66 = fd_pread(v135, &v280[-32768], 0x8000uLL, v153);
                    a1 = v326;
                    v53 = v319;
                    if (v66 == -1)
                    {
                      goto LABEL_231;
                    }

                    v150 = v152 & 0xC000000000000FFFLL;
                    v151 = v153;
                  }

                  v153 = v151;
                  if (v318 == 8)
                  {
                    v154 = v150 + 1;
                    v155 = &v133[v150];
                    v156 = v133[v150];
                    if (v133[v150] < 0)
                    {
                      if (v156 > 0xBF)
                      {
                        if (v156 > 0xDF)
                        {
                          if (v156 > 0xEF)
                          {
                            v158 = *&v133[v154];
                            v154 = v150 + 5;
                          }

                          else
                          {
                            v158 = ((v156 & 0xF) << 24) | (v133[v154] << 16) | (v155[2] << 8) | v155[3];
                            v154 = v150 + 4;
                          }
                        }

                        else
                        {
                          v158 = ((v156 & 0x1F) << 16) | (v133[v154] << 8) | v155[2];
                          v154 = v150 + 3;
                        }
                      }

                      else
                      {
                        v158 = v133[v154] | ((v156 & 0x3F) << 8);
                        v154 = v150 + 2;
                      }

                      v157 = v158;
                    }

                    else
                    {
                      v157 = v133[v150];
                    }

                    v159 = v157;
                    v150 = v154;
                    if (!v159)
                    {
                      break;
                    }
                  }

                  v160 = v150 + 1;
                  v161 = &v133[v150];
                  v162 = v133[v150];
                  if (v133[v150] < 0)
                  {
                    if (v162 > 0xBF)
                    {
                      if (v162 > 0xDF)
                      {
                        if (v162 > 0xEF)
                        {
                          v163 = *&v133[v160];
                          v164 = v150 + 5;
                        }

                        else
                        {
                          v163 = ((v162 & 0xF) << 24) | (v133[v160] << 16) | (v161[2] << 8) | v161[3];
                          v164 = v150 + 4;
                        }
                      }

                      else
                      {
                        v163 = ((v162 & 0x1F) << 16) | (v133[v160] << 8) | v161[2];
                        v164 = v150 + 3;
                      }
                    }

                    else
                    {
                      v163 = v133[v160] | ((v162 & 0x3F) << 8);
                      v164 = v150 + 2;
                    }
                  }

                  else
                  {
                    v163 = v133[v150];
                    v164 = v150 + 1;
                  }

                  if (!v163)
                  {
                    break;
                  }

                  v165 = _CIIndexSetEnumeratorNext(buf);
                  if (!v165)
                  {
                    break;
                  }

                  v166 = v165;
                  v167 = v317;
                  if (CIIndexSetHasIndex(v317, v165))
                  {
                    v284 = v153;
                    if (gSILogLevels[0] >= 5)
                    {
                      v281 = *__error();
                      v201 = _SILogForLogForCategory(0);
                      if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                      {
                        *v340 = v315;
                        v341 = v166;
                        _os_log_impl(&dword_1C278D000, v201, OS_LOG_TYPE_DEFAULT, "DU: Read %u", v340, 8u);
                      }

                      *__error() = v281;
                    }

                    v169 = lockedCountItemsInRange(v167, v166, v300, v168) - 1;
                    v171 = v291 + v169;
                    v172 = v164;
                    v173 = v284;
                    v174 = v163;
                    v175 = 0;
                    while (1)
                    {
                      v176 = __OFSUB__(v174, v175);
                      v174 -= v175;
                      if ((v174 < 0) ^ v176 | (v174 == 0))
                      {
                        break;
                      }

                      if (v171 >= v296)
                      {
                        v150 = v164;
                        v151 = v284;
                        goto LABEL_157;
                      }

                      v177 = v173;
                      v178 = *&v72[8 * v169];
                      if (!v178)
                      {
                        v178 = CIIndexSetCreateWithRange(0, v174, 1);
                        *&v72[8 * v169] = v178;
                      }

                      CIIndexSetAddIndexExpandingRange(v178, v174, v170);
                      if (v172 - 32764 > 0xFFFFFFFFFFFF7FFELL || (v179 = v172 + v177, v177 = v179 & 0x3FFFFFFFFFFFF000, v180 = fd_pread(v135, &v280[-32768], 0x8000uLL, v179 & 0x3FFFFFFFFFFFF000), v150 = v179 & 0xC000000000000FFFLL, v172 = v179 & 0xC000000000000FFFLL, v151 = v177, v180 != -1))
                      {
                        v173 = v177;
                        v181 = v172 + 1;
                        v182 = &v133[v172];
                        v183 = v133[v172];
                        if (v133[v172] < 0)
                        {
                          if (v183 > 0xBF)
                          {
                            if (v183 > 0xDF)
                            {
                              if (v183 > 0xEF)
                              {
                                v185 = *&v133[v181];
                                v181 = v172 + 5;
                              }

                              else
                              {
                                v185 = ((v183 & 0xF) << 24) | (v133[v181] << 16) | (v182[2] << 8) | v182[3];
                                v181 = v172 + 4;
                              }
                            }

                            else
                            {
                              v185 = ((v183 & 0x1F) << 16) | (v133[v181] << 8) | v182[2];
                              v181 = v172 + 3;
                            }
                          }

                          else
                          {
                            v185 = v133[v181] | ((v183 & 0x3F) << 8);
                            v181 = v172 + 2;
                          }

                          v184 = v185;
                        }

                        else
                        {
                          v184 = v133[v172];
                        }

                        v186 = v184;
                        v150 = v181;
                        v172 = v181;
                        v151 = v177;
                        v175 = v186;
                        if (v186)
                        {
                          continue;
                        }
                      }

                      goto LABEL_157;
                    }

                    v264 = __si_assert_copy_extra_332();
                    v265 = v264;
                    v266 = "";
                    if (v264)
                    {
                      v266 = v264;
                    }

                    v278 = "last > nextPos";
                    v279 = v266;
                    v267 = "CIQuery.c";
                    v268 = 2785;
LABEL_317:
                    __message_assert("%s:%u: failed assertion '%s' %s ", v267, v268, v278, v279);
                    v269 = v265;
LABEL_318:
                    free(v269);
                    if (__valid_fs(-1))
                    {
                      v270 = 2989;
                    }

                    else
                    {
                      v270 = 3072;
                    }

                    *v270 = -559038737;
                    abort();
                  }

                  if (gSILogLevels[0] >= 5)
                  {
                    v202 = v153;
                    v203 = *__error();
                    v204 = _SILogForLogForCategory(0);
                    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
                    {
                      *v340 = v314;
                      v341 = v166;
                      _os_log_impl(&dword_1C278D000, v204, OS_LOG_TYPE_DEFAULT, "DU: Skip %u", v340, 8u);
                    }

                    *__error() = v203;
                    v153 = v202;
                  }

                  v187 = v153;
                  do
                  {
                    if (v164 - 32764 > 0xFFFFFFFFFFFF7FFELL)
                    {
                      v191 = v164;
                      v192 = v187;
                    }

                    else
                    {
                      v188 = v164 + v187;
                      v189 = (v164 + v187) & 0x3FFFFFFFFFFFF000;
                      v190 = fd_pread(v135, &v280[-32768], 0x8000uLL, v189);
                      v150 = v188 & 0xC000000000000FFFLL;
                      v191 = v188 & 0xC000000000000FFFLL;
                      v151 = v189;
                      v192 = v189;
                      if (v190 == -1)
                      {
                        goto LABEL_157;
                      }
                    }

                    v187 = v192;
                    v193 = v191;
                    v194 = v191 + 1;
                    v195 = &v133[v191];
                    v196 = v133[v191];
                    v197 = v133[v191];
                    if (v196 < 0)
                    {
                      if (v197 > 0xBF)
                      {
                        if (v197 > 0xDF)
                        {
                          if (v197 > 0xEF)
                          {
                            v199 = *&v133[v194];
                            v194 = v193 + 5;
                          }

                          else
                          {
                            v199 = ((v197 & 0xF) << 24) | (v133[v194] << 16) | (v195[2] << 8) | v195[3];
                            v194 = v193 + 4;
                          }
                        }

                        else
                        {
                          v199 = ((v197 & 0x1F) << 16) | (v133[v194] << 8) | v195[2];
                          v194 = v193 + 3;
                        }
                      }

                      else
                      {
                        v199 = v133[v194] | ((v197 & 0x3F) << 8);
                        v194 = v193 + 2;
                      }

                      v198 = v199;
                    }

                    else
                    {
                      v198 = v197;
                    }

                    v200 = v198;
                    v150 = v194;
                    v164 = v194;
                    v151 = v187;
                  }

                  while (v200);
                }

                v66 = 0;
LABEL_231:
                v139 = v153;
                v137 = v286;
                v138 = v285;
              }

              while (v286);
            }

            locked = v302;
            v68 = v294;
          }

          v74 = v66;
          v73 = v289 + 1;
          v71 = v292;
          if (*v292 <= v289 + 1)
          {
            goto LABEL_244;
          }
        }

        v66 = v287;
LABEL_243:
        locked = v302;
        v68 = v294;
LABEL_244:
        v212 = v66;
        v67 = v299;
        v213 = v293 + 8 * v299;
        (*(v293 + 96))(*(v213 + 80));
        *(v213 + 80) = 0;
        v65 = v68 + 1;
        v46 = v212;
        v66 = v212;
      }

      while (v68 + 1 < *(a1 + 96));
LABEL_248:
      if (v46 != -1)
      {
        v214 = locked;
        *buf = 0u;
        v329 = 0u;
        initializeEnumberatorForRangeLocked(buf, *(a1 + 104), v304, v300);
        v215 = 0;
        v283 = locked;
        v216 = v46;
        while (1)
        {
          v217 = _CIIndexSetEnumeratorNext(buf);
          if (v217 - 1 >= 0xFFFFFFFE)
          {
            v53 = v319;
            goto LABEL_297;
          }

          v218 = v217;
          v219 = v217;
          v339 = 0u;
          *v338 = 0u;
          initializeEnumberatorForRangeLocked(v338, *&malloc[8 * v215], 0, 0x7FFFFFFFu);
          v220 = *(a1 + 36);
          if (*(a1 + 48) != 9)
          {
            if (v220 == 3)
            {
LABEL_257:
              if (*(a1 + 132))
              {
                v223 = v302;
LABEL_259:
                v224 = _CIIndexSetEnumeratorNext(v338);
                if (v224 - 1 > 0xFFFFFFFD)
                {
                  goto LABEL_272;
                }

                v226 = 0;
                v227 = v214;
                v228 = v224;
                while (v226 + 1 < *(a1 + 96))
                {
                  if (*&malloc[8 * v227])
                  {
                    v229 = *(*(a1 + 136) + 4 * v226) + v228;
                    v230 = CIIndexSetHasIndex(*&malloc[8 * v227], v229);
                    v227 += v223;
                    ++v226;
                    v228 = v229;
                    if (v230)
                    {
                      continue;
                    }
                  }

                  goto LABEL_259;
                }

                goto LABEL_271;
              }
            }

LABEL_265:
            v231 = _CIIndexSetEnumeratorNext(v338);
            if ((v231 - 1) > 0xFFFFFFFD)
            {
              goto LABEL_272;
            }

            v232 = v231 + 1;
            v233 = 1;
            v234 = v214;
            while (v233 < *(a1 + 96))
            {
              if (*&malloc[8 * v234])
              {
                v235 = CIIndexSetHasIndex(*&malloc[8 * v234], v232);
                ++v233;
                ++v232;
                v234 += v302;
                if (v235)
                {
                  continue;
                }
              }

              goto LABEL_265;
            }

LABEL_271:
            v236 = *(a1 + 80);
            *v340 = -1;
            _CIIndexSetAddIndex(v236, v219, 0, v340, v225);
            goto LABEL_272;
          }

          if (!v220)
          {
            goto LABEL_265;
          }

          if (v220 == 3)
          {
            goto LABEL_257;
          }

          v221 = *(a1 + 132);
          v222 = v221 ? *(*(a1 + 136) + 4 * (v221 - 1)) : 5;
          v282 = v218;
          v237 = 0xFFFFFFFFLL;
          v238 = 0;
          v239 = v216;
          while (1)
          {
            v240 = v238;
            v241 = _CIIndexSetEnumeratorNext(v338);
            if (v241 - 1 > 0xFFFFFFFD)
            {
              v216 = v239;
              goto LABEL_272;
            }

            v242 = 0;
            v327 = v237;
            if (*(a1 + 144))
            {
              v242 = &v327;
            }

            if (checkNearness_14185(1u, v222, a1, v241, malloc, v283, v215, v241, v241, v242, *(a1 + 36)))
            {
              break;
            }

LABEL_289:
            v238 = v240;
          }

          v244 = *(a1 + 144);
          if (v244)
          {
            v245 = v237;
            if (v327 < v237)
            {
              v246 = v327;
              changesSetMinCount(v244, v282, v327 + 1);
              v245 = v246;
            }
          }

          else
          {
            v245 = v237;
          }

          v237 = v245;
          if ((v240 & 1) == 0)
          {
            if (dword_1EBF46AF4 >= 5)
            {
              v248 = *__error();
              v249 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
              {
                *v340 = v309;
                v341 = v219;
                _os_log_impl(&dword_1C278D000, v249, OS_LOG_TYPE_DEFAULT, "Yes: %d", v340, 8u);
              }

              *__error() = v248;
            }

            v247 = *(a1 + 80);
            *v340 = -1;
            _CIIndexSetAddIndex(v247, v219, 0, v340, v243);
          }

          if (*(a1 + 144) && v237 + 1 != *(a1 + 96))
          {
            break;
          }

          v216 = 1;
LABEL_272:
          ++v215;
          ++v214;
        }

        v239 = 1;
        v240 = 1;
        goto LABEL_289;
      }

      v216 = -1;
LABEL_297:
      CICleanUpReset(v53, v303);
      v46 = v216;
      v48 = v305;
      a3 = v304;
    }

    v44 = 0;
    v45 = 1;
    a2 = v321;
  }

  while ((v48 & 1) != 0);
  v250 = *(a1 + 96);
  v251 = 0;
  v252 = 1;
  do
  {
    v253 = v252;
    if (v250)
    {
      v254 = 0;
      do
      {
        v255 = *(*(*(a1 + 72) + 8 * v254) + 64) + 8 * v251;
        v256 = *(v255 + 224);
        *(v255 + 224) = 0;
        if (v256)
        {
          if (*v256 >= 1)
          {
            v257 = 32;
            v258 = 0;
            do
            {
              v259 = v258;
              v260 = v257;
              CFRelease(*(*(v256 + 2) + v257));
              v258 = v259 + 1;
              v257 = v260 + 40;
            }

            while (*v256 > v259 + 1);
          }

          free(*(v256 + 2));
          free(v256);
        }

        ++v254;
      }

      while (v254 < *(a1 + 96));
      v261 = *(a1 + 96);
    }

    else
    {
      v261 = 0;
    }

    v250 = v261;
    v251 = 1;
    v252 = 0;
  }

  while ((v253 & 1) != 0);
  v262 = threadData[9 * HIDWORD(v331) + 1] + 320 * v331;
  *(v262 + 312) = v322;
  v263 = *(v262 + 232);
  if (v263)
  {
    v263(*(v262 + 288));
  }

  dropThreadId(HIDWORD(v331), 0, v323 + 1);
LABEL_23:
  v33 = threadData[9 * HIDWORD(v335) + 1] + 320 * v335;
  *(v33 + 312) = v324;
  v34 = *(v33 + 232);
  if (v34)
  {
    v34(*(v33 + 288));
  }

  dropThreadId(HIDWORD(v335), 0, v325 + 1);
LABEL_2:
  *(a1 + 32) = 1;
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t checkNearness_14185(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int *a10, unsigned int a11)
{
  v12 = *(a5 + 8 * a1 * a6 + 8 * a7);
  if (v12)
  {
    memset(v33, 0, sizeof(v33));
    v19 = a2;
    if (*(a3 + 132) >= a1)
    {
      v19 = *(*(a3 + 136) + 4 * (a1 - 1));
    }

    v20 = ~v19 + a4;
    if (v19 + 1 >= a4)
    {
      v20 = 1;
    }

    if (a11 <= 1)
    {
      v21 = v20;
    }

    else
    {
      v21 = a4;
    }

    initializeEnumberatorForRangeLocked(v33, v12, v21, v19 + a4);
    if (a10)
    {
      v22 = *a10;
    }

    else
    {
      v22 = -1;
    }

    v23 = 0;
    v24 = a1 + 1;
LABEL_14:
    while (2)
    {
      v31 = v23;
      do
      {
        while (1)
        {
          v25 = _CIIndexSetEnumeratorNext(v33);
          if ((v25 - 1) > 0xFFFFFFFD)
          {
            v23 = v31;
            return v23 & 1;
          }

          if (v25 != a4)
          {
            v26 = v25 >= a8 ? a8 : v25;
            v27 = v25 <= a9 ? a9 : v25;
            v28 = v27 - v26;
            if (v27 - v26 <= v22)
            {
              break;
            }
          }
        }

        if (v24 >= *(a3 + 96))
        {
          v23 = 1;
          if (!a10)
          {
            goto LABEL_14;
          }

          LODWORD(v29) = *a10;
          if (*a10 >= v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v29;
          }

          *a10 = v29;
          goto LABEL_33;
        }
      }

      while (!checkNearness_14185(v24, a2, a3, v25, a5, a6, a7));
      if (!a10)
      {
        v23 = 1;
        return v23 & 1;
      }

      v29 = *a10;
      v23 = 1;
LABEL_33:
      if (v29 != a6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t CICompactPayloads(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, int a7, char a8, int *a9)
{
  v394 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  bzero(v380, 0x400uLL);
  v350 = *(a5 + 4456);
  Current = CFAbsoluteTimeGetCurrent();
  v13 = *__error();
  v14 = _SILogForLogForCategory(10);
  v15 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = "position";
    if (a2 == 1)
    {
      v16 = "posting";
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&dword_1C278D000, v14, v15, "Compacting %s payloads ", buf, 0xCu);
  }

  *__error() = v13;
  v378 = 0u;
  v379 = 0u;
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  *v372 = 0u;
  v373 = 0u;
  *v370 = 0u;
  v371 = 0u;
  *ptr = 0u;
  v369 = 0u;
  *buf = 0u;
  v367 = 0u;
  v17 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v17 = __THREAD_SLOT_KEY;
  }

  v332 = a6;
  v18 = pthread_getspecific(v17);
  if (!v18 || v18 >= 0x801)
  {
    makeThreadId();
    v18 = pthread_getspecific(__THREAD_SLOT_KEY);
  }

  v340 = LODWORD(threadData[9 * v18 - 5]);
  v341 = v18 - 1;
  CICleanUpPush(v18 - 1, CICompactPayloadsCtxFree, buf);
  allocator = *MEMORY[0x1E695E480];
  v344 = a5;
  v343 = a2;
  while (2)
  {
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v374 = 0u;
    v375 = 0u;
    *v372 = 0u;
    v373 = 0u;
    *v370 = 0u;
    v371 = 0u;
    *ptr = 0u;
    v369 = 0u;
    *buf = 0u;
    v367 = 0u;
    HIDWORD(ptr[0]) = 64;
    ptr[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
    v369 = xmmword_1C2BFA6B0;
    v370[0] = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
    v19 = *(a5 + 24);
    *&v367 = *(a5 + 4488);
    *(&v367 + 1) = v19;
    v391 = 0;
    *__src = *a5;
    *&__src[16] = v367;
    *&__src[24] = 0;
    v386 = v19;
    v387 = 4096;
    v20 = malloc_type_malloc(0x1000uLL, 0xA69262FDuLL);
    v388 = v20;
    v389 = v20;
    v390 = v20;
    LODWORD(v391) = 0;
    memset(v353, 0, 20);
    v21 = v20;
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            while (1)
            {
              do
              {
                while (1)
                {
                  do
                  {
                    while (v21 < v20)
                    {
                      v389 = v21 + 1;
                      v353[0] = *v21++;
                      if (v353[0] == 255)
                      {
                        goto LABEL_14;
                      }
                    }

                    if (!_PayloadScannerReadNextChar(__src, v353))
                    {
                      goto LABEL_93;
                    }

                    v21 = v389;
                    v20 = v390;
                  }

                  while (v353[0] != 255);
LABEL_14:
                  if (v21 >= v20)
                  {
                    break;
                  }

                  v389 = v21 + 1;
                  v353[1] = *v21++;
                  if (v353[1] == 255)
                  {
                    goto LABEL_16;
                  }
                }

                if (!_PayloadScannerReadNextChar(__src, &v353[1]))
                {
                  goto LABEL_93;
                }

                v21 = v389;
                v20 = v390;
              }

              while (v353[1] != 255);
LABEL_16:
              if (v21 >= v20)
              {
                break;
              }

              v389 = v21 + 1;
              v353[2] = *v21++;
              if (v353[2] == 255)
              {
                goto LABEL_18;
              }
            }

            if (!_PayloadScannerReadNextChar(__src, &v353[2]))
            {
              goto LABEL_93;
            }

            v21 = v389;
            v20 = v390;
          }

          while (v353[2] != 255);
LABEL_18:
          if (v21 >= v20)
          {
            break;
          }

          v389 = v21 + 1;
          v353[3] = *v21++;
          if (v353[3] == 255)
          {
            goto LABEL_20;
          }
        }

        if (!_PayloadScannerReadNextChar(__src, &v353[3]))
        {
          goto LABEL_93;
        }

        v21 = v389;
        v20 = v390;
      }

      while (v353[3] != 255);
LABEL_20:
      if (((v20 - v21) & 0xFFFFFFF0) == 0)
      {
        break;
      }

      v22 = *v21;
      v21 += 16;
      *&v353[4] = v22;
      v389 = v21;
LABEL_22:
      if (*&v353[16] == -1)
      {
        v23 = *&__src[24];
        v24 = v388;
        v25 = *&v353[4];
        v26 = *&v353[12];
        v27 = ptr[0];
        if (LODWORD(ptr[0]) == HIDWORD(ptr[0]))
        {
          HIDWORD(ptr[0]) = 2 * LODWORD(ptr[0]);
          v28 = malloc_type_realloc(ptr[1], 32 * (2 * LODWORD(ptr[0])), 0x1000040F6D918ACuLL);
          ptr[1] = v28;
          v27 = ptr[0];
        }

        else
        {
          v28 = ptr[1];
        }

        v29 = &v21[v23] - v24;
        LODWORD(ptr[0]) = v27 + 1;
        v30 = &v28[32 * v27];
        *v30 = v29;
        *(v30 + 1) = v25;
        *(v30 + 3) = 0;
        *(v30 + 4) = v26;
        *(v30 + 5) = 0;
        v31 = v29 + v25;
        v32 = *&__src[24];
        v21 = v388;
        if (v31 >= *&__src[24] && (v20 = v390, &v390[*&__src[24] - v388] >= v31))
        {
          v33 = v388;
          v21 = v388 + v31 - *&__src[24];
          v389 = v21;
        }

        else
        {
          v390 = v388;
          v33 = v388;
          v32 = v31;
          v20 = v388;
          v389 = v388;
          *&__src[24] = v31;
        }

        if (v21 - v33 + v32 != v31)
        {
LABEL_850:
          v307 = __si_assert_copy_extra_2708(0);
          v308 = v307;
          v309 = "";
          if (v307)
          {
            v309 = v307;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 100, "PayloadScannerPosition(scanner) == position", v309);
          goto LABEL_853;
        }
      }

      else
      {
        v20 = v390;
      }
    }

    if (v21 < v20)
    {
      v34 = v21 + 1;
      v389 = v21 + 1;
      v353[4] = *v21;
      if (v21 + 1 < v20)
      {
        goto LABEL_46;
      }

LABEL_63:
      if (!_PayloadScannerReadNextChar(__src, &v353[5]))
      {
        goto LABEL_93;
      }

      v35 = v389;
      v20 = v390;
      if (v389 >= v390)
      {
        goto LABEL_65;
      }

LABEL_47:
      v36 = v35 + 1;
      v389 = v35 + 1;
      v353[6] = *v35;
      if (v35 + 1 < v20)
      {
        goto LABEL_48;
      }

LABEL_67:
      if (!_PayloadScannerReadNextChar(__src, &v353[7]))
      {
        goto LABEL_93;
      }

      v37 = v389;
      v20 = v390;
      if (v389 >= v390)
      {
        goto LABEL_69;
      }

LABEL_49:
      v38 = v37 + 1;
      v389 = v37 + 1;
      v353[8] = *v37;
      if (v37 + 1 < v20)
      {
        goto LABEL_50;
      }

LABEL_71:
      if (!_PayloadScannerReadNextChar(__src, &v353[9]))
      {
        goto LABEL_93;
      }

      v39 = v389;
      v20 = v390;
      if (v389 >= v390)
      {
        goto LABEL_73;
      }

LABEL_51:
      v40 = v39 + 1;
      v389 = v39 + 1;
      v353[10] = *v39;
      if (v39 + 1 < v20)
      {
        goto LABEL_52;
      }

LABEL_75:
      if (!_PayloadScannerReadNextChar(__src, &v353[11]))
      {
        goto LABEL_93;
      }

      v41 = v389;
      v20 = v390;
      if (v389 >= v390)
      {
        goto LABEL_77;
      }

LABEL_53:
      v42 = v41 + 1;
      v389 = v41 + 1;
      v353[12] = *v41;
      if (v41 + 1 < v20)
      {
        goto LABEL_54;
      }

LABEL_79:
      if (!_PayloadScannerReadNextChar(__src, &v353[13]))
      {
        goto LABEL_93;
      }

      v43 = v389;
      v20 = v390;
      if (v389 >= v390)
      {
        goto LABEL_81;
      }

LABEL_55:
      v44 = v43 + 1;
      v389 = v43 + 1;
      v353[14] = *v43;
      if (v43 + 1 < v20)
      {
        goto LABEL_56;
      }

LABEL_83:
      if (!_PayloadScannerReadNextChar(__src, &v353[15]))
      {
        goto LABEL_93;
      }

      v45 = v389;
      v20 = v390;
      if (v389 >= v390)
      {
        goto LABEL_85;
      }

LABEL_57:
      v46 = v45 + 1;
      v389 = v45 + 1;
      v353[16] = *v45;
      if (v45 + 1 < v20)
      {
        goto LABEL_58;
      }

LABEL_87:
      if (!_PayloadScannerReadNextChar(__src, &v353[17]))
      {
        goto LABEL_93;
      }

      v47 = v389;
      v20 = v390;
      if (v389 >= v390)
      {
        goto LABEL_89;
      }

LABEL_59:
      v48 = v47 + 1;
      v389 = v47 + 1;
      v353[18] = *v47;
      if (v47 + 1 >= v20)
      {
        goto LABEL_91;
      }

      goto LABEL_60;
    }

    if (!_PayloadScannerReadNextChar(__src, &v353[4]))
    {
      goto LABEL_93;
    }

    v34 = v389;
    v20 = v390;
    if (v389 >= v390)
    {
      goto LABEL_63;
    }

LABEL_46:
    v35 = v34 + 1;
    v389 = v34 + 1;
    v353[5] = *v34;
    if (v34 + 1 < v20)
    {
      goto LABEL_47;
    }

LABEL_65:
    if (!_PayloadScannerReadNextChar(__src, &v353[6]))
    {
      goto LABEL_93;
    }

    v36 = v389;
    v20 = v390;
    if (v389 >= v390)
    {
      goto LABEL_67;
    }

LABEL_48:
    v37 = v36 + 1;
    v389 = v36 + 1;
    v353[7] = *v36;
    if (v36 + 1 < v20)
    {
      goto LABEL_49;
    }

LABEL_69:
    if (!_PayloadScannerReadNextChar(__src, &v353[8]))
    {
      goto LABEL_93;
    }

    v38 = v389;
    v20 = v390;
    if (v389 >= v390)
    {
      goto LABEL_71;
    }

LABEL_50:
    v39 = v38 + 1;
    v389 = v38 + 1;
    v353[9] = *v38;
    if (v38 + 1 < v20)
    {
      goto LABEL_51;
    }

LABEL_73:
    if (!_PayloadScannerReadNextChar(__src, &v353[10]))
    {
      goto LABEL_93;
    }

    v40 = v389;
    v20 = v390;
    if (v389 >= v390)
    {
      goto LABEL_75;
    }

LABEL_52:
    v41 = v40 + 1;
    v389 = v40 + 1;
    v353[11] = *v40;
    if (v40 + 1 < v20)
    {
      goto LABEL_53;
    }

LABEL_77:
    if (!_PayloadScannerReadNextChar(__src, &v353[12]))
    {
      goto LABEL_93;
    }

    v42 = v389;
    v20 = v390;
    if (v389 >= v390)
    {
      goto LABEL_79;
    }

LABEL_54:
    v43 = v42 + 1;
    v389 = v42 + 1;
    v353[13] = *v42;
    if (v42 + 1 < v20)
    {
      goto LABEL_55;
    }

LABEL_81:
    if (!_PayloadScannerReadNextChar(__src, &v353[14]))
    {
      goto LABEL_93;
    }

    v44 = v389;
    v20 = v390;
    if (v389 >= v390)
    {
      goto LABEL_83;
    }

LABEL_56:
    v45 = v44 + 1;
    v389 = v44 + 1;
    v353[15] = *v44;
    if (v44 + 1 < v20)
    {
      goto LABEL_57;
    }

LABEL_85:
    if (!_PayloadScannerReadNextChar(__src, &v353[16]))
    {
      goto LABEL_93;
    }

    v46 = v389;
    v20 = v390;
    if (v389 >= v390)
    {
      goto LABEL_87;
    }

LABEL_58:
    v47 = v46 + 1;
    v389 = v46 + 1;
    v353[17] = *v46;
    if (v46 + 1 < v20)
    {
      goto LABEL_59;
    }

LABEL_89:
    if (!_PayloadScannerReadNextChar(__src, &v353[18]))
    {
      goto LABEL_93;
    }

    v48 = v389;
    if (v389 < v390)
    {
LABEL_60:
      v21 = v48 + 1;
      v389 = v48 + 1;
      v353[19] = *v48;
      goto LABEL_22;
    }

LABEL_91:
    if (_PayloadScannerReadNextChar(__src, &v353[19]))
    {
      v21 = v389;
      goto LABEL_22;
    }

LABEL_93:
    if (v391)
    {
      if (!HIDWORD(v370[1]))
      {
        HIDWORD(v370[1]) = v391;
      }
    }

    else
    {
      qsort_r(ptr[1], LODWORD(ptr[0]), 0x20uLL, (a5 + 32), postingsOffsetCompare);
    }

    if (v388)
    {
      free(v388);
    }

    v49 = HIDWORD(v370[1]);
    if (HIDWORD(v370[1]))
    {
      goto LABEL_100;
    }

    v50 = 0;
    if (*a9)
    {
      v49 = 0;
      goto LABEL_101;
    }

    v49 = 0;
    if (!LODWORD(ptr[0]))
    {
      goto LABEL_101;
    }

    v60 = a7;
    if (a7 == -1)
    {
      v61 = *(a5 + 4488);
      if (v61)
      {
        v60 = *(v61 + 44);
      }

      else
      {
        v60 = -1;
      }
    }

    v62 = getpid();
    snprintf(__str, 0x400uLL, "%s.mds.%d.%d.compactPayloads1.idx", v332, v62, atomic_fetch_add_explicit(&CICompactPayloads_sUnique, 1u, memory_order_relaxed) + 1);
    *buf = fd_create_protected(v60, __str, 536873474, 0);
    if (!*buf || (v63 = getpid(), snprintf(v380, 0x400uLL, "%s.mds.%d.%d.compactPayloads2.idx", v332, v63, atomic_fetch_add_explicit(&CICompactPayloads_sUnique, 1u, memory_order_relaxed) + 1), (*&buf[8] = fd_create_protected(v60, v380, 536873474, 0)) == 0))
    {
LABEL_764:
      v50 = 0;
      v49 = 0;
      goto LABEL_101;
    }

    v64 = *buf;
    LOBYTE(v370[1]) = a8;
    v65 = CFAbsoluteTimeGetCurrent();
    *&v371 = 0;
    HIDWORD(v374) = 0;
    v372[0] = 0x4000000000;
    v372[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
    v373 = xmmword_1C2BFA6B0;
    *&v374 = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
    v371 = v64;
    *__src = -1;
    *&__src[4] = 0;
    v66 = __src;
    v67 = 20;
    *&__src[12] = 0xFFFFFFFF00000000;
    do
    {
      while (1)
      {
        v69 = *(&v373 + 1) - v373 >= v67 ? v67 : *(&v373 + 1) - v373;
        if (*(&v373 + 1) == v373)
        {
          break;
        }

        memcpy((v374 + v373), v66, v69);
        *&v373 = v373 + v69;
        v66 += v69;
        if (v373 == *(&v373 + 1))
        {
          break;
        }

        v67 -= v69;
        if (!v67)
        {
          goto LABEL_137;
        }
      }

      PayloadPulsesWrite(&v371);
      v67 -= v69;
      if (HIDWORD(v374))
      {
        v68 = 1;
      }

      else
      {
        v68 = v67 == 0;
      }
    }

    while (!v68);
LABEL_137:
    PayloadPulsesWrite(&v371);
    v49 = PayloadPulsesReorder(&v367);
    free(ptr[1]);
    ptr[1] = 0;
    free(v370[0]);
    v367 = v371;
    *ptr = *v372;
    v369 = v373;
    *v370 = v374;
    v371 = 0u;
    *v372 = 0u;
    if (v64 == *buf)
    {
      v70 = *&buf[8];
    }

    else
    {
      v70 = *buf;
    }

    v373 = 0uLL;
    v374 = 0uLL;
    v71 = *__error();
    v72 = _SILogForLogForCategory(10);
    v73 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = CFAbsoluteTimeGetCurrent() - v65;
      *__src = 134217984;
      *&__src[4] = v74;
      _os_log_impl(&dword_1C278D000, v72, v73, "Reorder time (%f)", __src, 0xCu);
    }

    *__error() = v71;
    if (v49)
    {
LABEL_100:
      v50 = 0;
      goto LABEL_101;
    }

    v75 = ptr[0];
    if (!LODWORD(ptr[0]))
    {
      goto LABEL_764;
    }

    if (*a9 || LODWORD(ptr[0]) == 1)
    {
      goto LABEL_763;
    }

    v327 = 1;
    while (2)
    {
      LOBYTE(v370[1]) = 0;
      *&v371 = 0;
      HIDWORD(v374) = 0;
      v372[0] = 0x4000000000;
      v372[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
      v373 = xmmword_1C2BFA6B0;
      *&v374 = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
      v325 = v70;
      v371 = v70;
      v76 = CFAbsoluteTimeGetCurrent();
      *__src = -1;
      *&__src[4] = 0;
      v77 = __src;
      v78 = 20;
      *&__src[12] = 0xFFFFFFFF00000000;
      do
      {
        while (1)
        {
          v80 = *(&v373 + 1) - v373 >= v78 ? v78 : *(&v373 + 1) - v373;
          if (*(&v373 + 1) == v373)
          {
            break;
          }

          memcpy((v374 + v373), v77, v80);
          *&v373 = v373 + v80;
          v77 += v80;
          if (v373 == *(&v373 + 1))
          {
            break;
          }

          v78 -= v80;
          if (!v78)
          {
            goto LABEL_158;
          }
        }

        PayloadPulsesWrite(&v371);
        v78 -= v80;
        if (HIDWORD(v374))
        {
          v79 = 1;
        }

        else
        {
          v79 = v78 == 0;
        }
      }

      while (!v79);
LABEL_158:
      PayloadPulsesWrite(&v371);
      v391 = 0;
      v360 = 0;
      *&__src[8] = 0;
      *__src = 0;
      *&__src[16] = v367;
      *&__src[24] = 0;
      v386 = *(&v367 + 1);
      v387 = 0x1000000;
      v388 = malloc_type_malloc(0x1000000uLL, 0xDD6FD5F7uLL);
      v389 = v388;
      v390 = v388;
      LODWORD(v391) = 0;
      *v353 = 0;
      *&v353[8] = 0;
      *&v353[16] = v367;
      v354 = 0;
      v355 = *(&v367 + 1);
      v356 = 0x1000000;
      v357 = malloc_type_malloc(0x1000000uLL, 0xDD6FD5F7uLL);
      v358 = v357;
      v359 = v357;
      LODWORD(v360) = 0;
      v326 = malloc_type_malloc(0x8000uLL, 0x82ECAA0EuLL);
      v347 = 0;
      while (2)
      {
        if (*a9)
        {
          v85 = 1;
        }

        else
        {
          v85 = v347 >= LODWORD(ptr[0]);
        }

        if (v85)
        {
          goto LABEL_736;
        }

        v86 = *(&v371 + 1);
        v87 = v372[0];
        if (LODWORD(v372[0]) == HIDWORD(v372[0]))
        {
          HIDWORD(v372[0]) = 2 * LODWORD(v372[0]);
          v88 = malloc_type_realloc(v372[1], 32 * (2 * LODWORD(v372[0])), 0x1000040F6D918ACuLL);
          v372[1] = v88;
          v87 = v372[0];
        }

        else
        {
          v88 = v372[1];
        }

        LODWORD(v372[0]) = v87 + 1;
        v89 = &v88[32 * v87];
        *(v89 + 1) = 0;
        *(v89 + 2) = 0;
        *v89 = v86;
        *(v89 + 3) = 1;
        v90 = CFAbsoluteTimeGetCurrent();
        v91 = ptr[1] + 32 * v347;
        v92 = *v91;
        v93 = *(v91 + 4);
        v346 = *(v91 + 6);
        v337 = *(v91 + 1);
        v94 = v337 + *v91;
        v386 = v94;
        v95 = *&__src[24];
        v96 = v388;
        v342 = v92;
        if (v92 >= *&__src[24] && (v97 = v390, &v390[*&__src[24]] - v388 >= v92))
        {
          v98 = v388;
          v96 = v388 + v92 - *&__src[24];
          v389 = v96;
          v99 = v92;
        }

        else
        {
          v390 = v388;
          v98 = v388;
          v97 = v388;
          v99 = v92;
          v95 = v92;
          v389 = v388;
          *&__src[24] = v92;
        }

        if (&v96[v95] - v98 != v99)
        {
          goto LABEL_850;
        }

        if (v99 >= v94)
        {
          v103 = 0;
        }

        else
        {
          v382[4] = 0;
          *v382 = 0;
          if (v96 < v97)
          {
            v389 = (v96 + 1);
            v382[0] = *v96;
            v100 = v382[0];
            if ((v382[0] & 0x80) == 0)
            {
              goto LABEL_187;
            }

LABEL_191:
            if (v100 >= 0xC0)
            {
              if (v100 >= 0xE0)
              {
                if (v100 < 0xF0)
                {
                  v101 = 3;
                }

                else
                {
                  v101 = 4;
                }
              }

              else
              {
                v101 = 2;
              }
            }

            else
            {
              v101 = 1;
            }

            v102 = v389;
            if ((v390 - v389) >= v101)
            {
              goto LABEL_199;
            }

            if (_PayloadScannerReadBytes(__src, &v382[1], v101))
            {
              v100 = v382[0];
              if ((v382[0] & 0x80) != 0)
              {
                goto LABEL_200;
              }

              goto LABEL_207;
            }

LABEL_252:
            v100 = 0;
            goto LABEL_207;
          }

          if (!_PayloadScannerReadNextChar(__src, v382))
          {
            goto LABEL_252;
          }

          v100 = v382[0];
          if ((v382[0] & 0x80) != 0)
          {
            goto LABEL_191;
          }

LABEL_187:
          v101 = 0;
          v102 = v389;
LABEL_199:
          __memcpy_chk();
          v389 = &v102[v101];
          if ((v100 & 0x80) != 0)
          {
LABEL_200:
            if (v100 > 0xBF)
            {
              if (v100 > 0xDF)
              {
                if (v100 > 0xEF)
                {
                  v100 = *&v382[1];
                }

                else
                {
                  v100 = ((v100 & 0xF) << 24) | (v382[1] << 16) | (v382[2] << 8) | v382[3];
                }
              }

              else
              {
                v100 = ((v100 & 0x1F) << 16) | (v382[1] << 8) | v382[2];
              }
            }

            else
            {
              v100 = v382[1] | ((v100 & 0x3F) << 8);
            }
          }

LABEL_207:
          v103 = v100 + v93;
        }

        if (v103 >= v350)
        {
LABEL_862:
          v313 = __si_assert_copy_extra_2708(0);
          v308 = v313;
          v314 = "";
          if (v313)
          {
            v314 = v313;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1300, "termId < maxTermId", v314);
          goto LABEL_853;
        }

        if (v347 + 1 >= LODWORD(ptr[0]))
        {
          if (v103)
          {
            v113 = v372[1] + 32 * (LODWORD(v372[0]) - 1);
            if (*(v113 + 4))
            {
              v114 = v103 - *(v113 + 5);
            }

            else
            {
              *(v113 + 4) = v103;
              v114 = v103;
            }

            memset(v382, 0, sizeof(v382));
            if (v114 > 0x7F)
            {
              if (v114 >> 14)
              {
                if (v114 >> 21)
                {
                  if (v114 >> 28)
                  {
                    v382[0] = -16;
                    *&v382[1] = v114;
                    v119 = 5;
                  }

                  else
                  {
                    v382[0] = HIBYTE(v114) | 0xE0;
                    v382[1] = BYTE2(v114);
                    v382[2] = BYTE1(v114);
                    v382[3] = v114;
                    v119 = 4;
                  }
                }

                else
                {
                  v382[0] = BYTE2(v114) | 0xC0;
                  v382[1] = BYTE1(v114);
                  v382[2] = v114;
                  v119 = 3;
                }
              }

              else
              {
                v382[0] = BYTE1(v114) | 0x80;
                v382[1] = v114;
                v119 = 2;
              }
            }

            else
            {
              v382[0] = v114;
              v119 = 1;
            }

            v120 = v382;
            do
            {
              while (1)
              {
                v122 = *(&v373 + 1) - v373 >= v119 ? v119 : *(&v373 + 1) - v373;
                if (*(&v373 + 1) == v373)
                {
                  break;
                }

                memcpy((v374 + v373), v120, v122);
                *&v373 = v373 + v122;
                v120 += v122;
                if (v373 == *(&v373 + 1))
                {
                  break;
                }

                v119 -= v122;
                if (!v119)
                {
                  goto LABEL_245;
                }
              }

              PayloadPulsesWrite(&v371);
              v119 -= v122;
              if (HIDWORD(v374))
              {
                v121 = 1;
              }

              else
              {
                v121 = v119 == 0;
              }
            }

            while (!v121);
LABEL_245:
            *(v113 + 5) = v103;
            PayloadPulsesWriteBytesFromScanner(&v371, __src, v389 - v388 + *&__src[24], v386 - (v389 - v388 + *&__src[24]));
            a2 = v343;
          }

          v123 = *__error();
          v124 = _SILogForLogForCategory(10);
          v125 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v124, v125))
          {
            *v382 = 134218240;
            *&v382[4] = v342;
            *&v382[12] = 2048;
            *&v382[14] = v337;
            _os_log_impl(&dword_1C278D000, v124, v125, "Merge (offset: %llx, length: %llx)", v382, 0x16u);
          }

          ++v347;
          goto LABEL_730;
        }

        v104 = ptr[1] + 32 * v347 + 32;
        if (v346 != *(v104 + 6))
        {
          v317 = __si_assert_copy_extra_2708(0);
          v308 = v317;
          v318 = "";
          if (v317)
          {
            v318 = v317;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1332, "p1.hasLength==p2.hasLength", v318);
LABEL_853:
          free(v308);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v106 = *v104;
        v105 = *(v104 + 1);
        v107 = *(v104 + 4);
        v108 = v105 + *v104;
        v355 = v108;
        v109 = v354;
        v110 = v357;
        v331 = v105;
        if (v106 >= v354 && (v111 = v359, &v359[v354] - v357 >= v106))
        {
          v112 = v357;
          v110 = v357 + v106 - v354;
          v358 = v110;
        }

        else
        {
          v358 = v357;
          v359 = v357;
          v112 = v357;
          v111 = v357;
          v109 = v106;
          v354 = v106;
        }

        if (&v110[v109] - v112 != v106)
        {
          goto LABEL_857;
        }

        v348 = v106;
        if (v106 >= v108)
        {
          v118 = 0;
        }

        else
        {
          v382[4] = 0;
          *v382 = 0;
          if (v110 < v111)
          {
            v358 = (v110 + 1);
            v382[0] = *v110;
            v115 = v382[0];
            if ((v382[0] & 0x80) == 0)
            {
              goto LABEL_222;
            }

LABEL_255:
            if (v115 >= 0xC0)
            {
              if (v115 >= 0xE0)
              {
                if (v115 < 0xF0)
                {
                  v116 = 3;
                }

                else
                {
                  v116 = 4;
                }
              }

              else
              {
                v116 = 2;
              }
            }

            else
            {
              v116 = 1;
            }

            v117 = v358;
            if ((v359 - v358) >= v116)
            {
              goto LABEL_263;
            }

            if (_PayloadScannerReadBytes(v353, &v382[1], v116))
            {
              v115 = v382[0];
              if ((v382[0] & 0x80) != 0)
              {
                goto LABEL_264;
              }

              goto LABEL_271;
            }

LABEL_735:
            v115 = 0;
            goto LABEL_271;
          }

          if (!_PayloadScannerReadNextChar(v353, v382))
          {
            goto LABEL_735;
          }

          v115 = v382[0];
          if ((v382[0] & 0x80) != 0)
          {
            goto LABEL_255;
          }

LABEL_222:
          v116 = 0;
          v117 = v358;
LABEL_263:
          __memcpy_chk();
          v358 = &v117[v116];
          if ((v115 & 0x80) != 0)
          {
LABEL_264:
            if (v115 > 0xBF)
            {
              if (v115 > 0xDF)
              {
                if (v115 > 0xEF)
                {
                  v115 = *&v382[1];
                }

                else
                {
                  v115 = ((v115 & 0xF) << 24) | (v382[1] << 16) | (v382[2] << 8) | v382[3];
                }
              }

              else
              {
                v115 = ((v115 & 0x1F) << 16) | (v382[1] << 8) | v382[2];
              }
            }

            else
            {
              v115 = v382[1] | ((v115 & 0x3F) << 8);
            }
          }

LABEL_271:
          v118 = v115 + v107;
          v106 = v348;
        }

        if (v118 >= v350)
        {
          goto LABEL_857;
        }

        if (!v103 || !v118)
        {
LABEL_678:
          if (v103)
          {
            v240 = v372[1] + 32 * (LODWORD(v372[0]) - 1);
            if (*(v240 + 4))
            {
              v241 = v103 - *(v240 + 5);
            }

            else
            {
              *(v240 + 4) = v103;
              v241 = v103;
            }

            memset(v382, 0, sizeof(v382));
            v242 = a2;
            if (v241 > 0x7F)
            {
              if (v241 >> 14)
              {
                if (v241 >> 21)
                {
                  if (v241 >> 28)
                  {
                    v382[0] = -16;
                    *&v382[1] = v241;
                    v243 = 5;
                  }

                  else
                  {
                    v382[0] = HIBYTE(v241) | 0xE0;
                    v382[1] = BYTE2(v241);
                    v382[2] = BYTE1(v241);
                    v382[3] = v241;
                    v243 = 4;
                  }
                }

                else
                {
                  v382[0] = BYTE2(v241) | 0xC0;
                  v382[1] = BYTE1(v241);
                  v382[2] = v241;
                  v243 = 3;
                }
              }

              else
              {
                v382[0] = BYTE1(v241) | 0x80;
                v382[1] = v241;
                v243 = 2;
              }
            }

            else
            {
              v382[0] = v241;
              v243 = 1;
            }

            v244 = v118;
            v245 = v382;
            do
            {
              while (1)
              {
                v247 = *(&v373 + 1) - v373 >= v243 ? v243 : *(&v373 + 1) - v373;
                if (*(&v373 + 1) == v373)
                {
                  break;
                }

                memcpy((v374 + v373), v245, v247);
                *&v373 = v373 + v247;
                v245 += v247;
                if (v373 == *(&v373 + 1))
                {
                  break;
                }

                v243 -= v247;
                if (!v243)
                {
                  goto LABEL_702;
                }
              }

              PayloadPulsesWrite(&v371);
              v243 -= v247;
              if (HIDWORD(v374))
              {
                v246 = 1;
              }

              else
              {
                v246 = v243 == 0;
              }
            }

            while (!v246);
LABEL_702:
            *(v240 + 5) = v103;
            PayloadPulsesWriteBytesFromScanner(&v371, __src, v389 - v388 + *&__src[24], v386 - (v389 - v388 + *&__src[24]));
            v106 = v348;
            v118 = v244;
            a2 = v242;
            a5 = v344;
          }

          if (v118)
          {
            v248 = v372[1] + 32 * (LODWORD(v372[0]) - 1);
            if (*(v248 + 4))
            {
              v249 = v118 - *(v248 + 5);
            }

            else
            {
              *(v248 + 4) = v118;
              v249 = v118;
            }

            memset(v382, 0, sizeof(v382));
            v250 = a2;
            v251 = v118;
            if (v249 > 0x7F)
            {
              if (v249 >> 14)
              {
                if (v249 >> 21)
                {
                  if (v249 >> 28)
                  {
                    v382[0] = -16;
                    *&v382[1] = v249;
                    v252 = 5;
                  }

                  else
                  {
                    v382[0] = HIBYTE(v249) | 0xE0;
                    v382[1] = BYTE2(v249);
                    v382[2] = BYTE1(v249);
                    v382[3] = v249;
                    v252 = 4;
                  }
                }

                else
                {
                  v382[0] = BYTE2(v249) | 0xC0;
                  v382[1] = BYTE1(v249);
                  v382[2] = v249;
                  v252 = 3;
                }
              }

              else
              {
                v382[0] = BYTE1(v249) | 0x80;
                v382[1] = v249;
                v252 = 2;
              }
            }

            else
            {
              v382[0] = v249;
              v252 = 1;
            }

            v253 = v382;
            do
            {
              while (1)
              {
                v255 = *(&v373 + 1) - v373 >= v252 ? v252 : *(&v373 + 1) - v373;
                if (*(&v373 + 1) == v373)
                {
                  break;
                }

                memcpy((v374 + v373), v253, v255);
                *&v373 = v373 + v255;
                v253 += v255;
                if (v373 == *(&v373 + 1))
                {
                  break;
                }

                v252 -= v255;
                if (!v252)
                {
                  goto LABEL_727;
                }
              }

              PayloadPulsesWrite(&v371);
              v252 -= v255;
              if (HIDWORD(v374))
              {
                v254 = 1;
              }

              else
              {
                v254 = v252 == 0;
              }
            }

            while (!v254);
LABEL_727:
            *(v248 + 5) = v251;
            PayloadPulsesWriteBytesFromScanner(&v371, v353, v358 - v357 + v354, v355 - (v358 - v357 + v354));
            a2 = v250;
            a5 = v344;
          }

          v347 += 2;
          v123 = *__error();
          v256 = _SILogForLogForCategory(10);
          v257 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v256, v257))
          {
            *v382 = 134218752;
            *&v382[4] = v342;
            *&v382[12] = 2048;
            *&v382[14] = v337;
            *&v382[22] = 2048;
            *&v382[24] = v106;
            v383 = 2048;
            v384 = v331;
            _os_log_impl(&dword_1C278D000, v256, v257, "Merge (offset: %llx, length: %llx) (offset: %llx, length: %llx)", v382, 0x2Au);
          }

LABEL_730:
          *__error() = v123;
          PayloadPulsesWrite(&v371);
          v258 = v372[1] + 32 * (LODWORD(v372[0]) - 1);
          v258[1] = *(&v371 + 1) - *v258;
          v258[2] = 0;
          v259 = *__error();
          v260 = _SILogForLogForCategory(10);
          v261 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v260, v261))
          {
            v262 = CFAbsoluteTimeGetCurrent() - v90;
            *v382 = 134217984;
            *&v382[4] = v262;
            _os_log_impl(&dword_1C278D000, v260, v261, "Merge time (%f)", v382, 0xCu);
          }

          *__error() = v259;
          v81 = v391;
          if (v360)
          {
            v82 = v391 == 0;
          }

          else
          {
            v82 = 0;
          }

          if (v82)
          {
            v81 = v360;
          }

          if (v81)
          {
            v83 = 1;
          }

          else
          {
            v83 = HIDWORD(v374) == 0;
          }

          if (v83)
          {
            v84 = v81;
          }

          else
          {
            v84 = HIDWORD(v374);
          }

          if (v84)
          {
            goto LABEL_737;
          }

          continue;
        }

        break;
      }

      while (2)
      {
        if (!*a9)
        {
          v351 = v118;
          if (v103 == v118)
          {
            v126 = v372[1] + 32 * (LODWORD(v372[0]) - 1);
            if (*(v126 + 4))
            {
              v127 = v118 - *(v126 + 5);
            }

            else
            {
              *(v126 + 4) = v118;
              v127 = v118;
            }

            memset(v382, 0, sizeof(v382));
            if (v127 > 0x7F)
            {
              if (v127 >> 14)
              {
                if (v127 >> 21)
                {
                  if (v127 >> 28)
                  {
                    v382[0] = -16;
                    *&v382[1] = v127;
                    v132 = 5;
                  }

                  else
                  {
                    v382[0] = HIBYTE(v127) | 0xE0;
                    v382[1] = BYTE2(v127);
                    v382[2] = BYTE1(v127);
                    v382[3] = v127;
                    v132 = 4;
                  }
                }

                else
                {
                  v382[0] = BYTE2(v127) | 0xC0;
                  v382[1] = BYTE1(v127);
                  v382[2] = v127;
                  v132 = 3;
                }
              }

              else
              {
                v382[0] = BYTE1(v127) | 0x80;
                v382[1] = v127;
                v132 = 2;
              }
            }

            else
            {
              v382[0] = v127;
              v132 = 1;
            }

            v135 = v382;
            do
            {
              while (1)
              {
                v137 = *(&v373 + 1) - v373 >= v132 ? v132 : *(&v373 + 1) - v373;
                if (*(&v373 + 1) == v373)
                {
                  break;
                }

                memcpy((v374 + v373), v135, v137);
                *&v373 = v373 + v137;
                v135 += v137;
                if (v373 == *(&v373 + 1))
                {
                  break;
                }

                v132 -= v137;
                if (!v132)
                {
                  goto LABEL_319;
                }
              }

              PayloadPulsesWrite(&v371);
              v132 -= v137;
              if (HIDWORD(v374))
              {
                v136 = 1;
              }

              else
              {
                v136 = v132 == 0;
              }
            }

            while (!v136);
LABEL_319:
            *(v126 + 5) = v351;
            if (a2 == 1)
            {
              memset(v382, 0, sizeof(v382));
              v365 = 0;
              memset(v364, 0, 12);
              v363 = 0;
              v138 = PayloadScannerFirstPostingIfLink(__src, v364, &v363, &v365);
              memset(v362, 0, sizeof(v362));
              v361 = 0;
              v139 = PayloadScannerFirstPostingIfLink(v353, v362, &v361, &v365);
              v140 = v139;
              v141 = *&v362[4];
              if (*(v364 + 4) && *&v362[4] && *(v364 + 4) <= *&v362[4] && !(v138 | v139))
              {
                goto LABEL_857;
              }

              memset(v393, 0, sizeof(v393));
              v142 = v363;
              if (v363)
              {
                if (*(v364 + 4))
                {
                  goto LABEL_857;
                }

LABEL_326:
                v143 = 0;
              }

              else
              {
                if (!*(v364 + 4))
                {
                  goto LABEL_326;
                }

                v143 = packPostingChunkForSingleDocIDOfType(v393, *(v364 + 4), v138);
              }

              memset(v392, 0, sizeof(v392));
              v160 = v361;
              if (v361)
              {
                if (v141)
                {
                  v315 = __si_assert_copy_extra_2708(0);
                  v308 = v315;
                  v316 = "";
                  if (v315)
                  {
                    v316 = v315;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1231, "pe2.docId == 0", v316);
                  goto LABEL_853;
                }

LABEL_349:
                v161 = 0;
              }

              else
              {
                if (!v141)
                {
                  goto LABEL_349;
                }

                v161 = packPostingChunkForSingleDocIDOfType(v392, v141, v140);
              }

              v339 = v160;
              v162 = v143 + v161 + (v160 + v142);
              v382[0] = 1;
              v163 = v382;
              do
              {
                v165 = *(&v373 + 1);
                v166 = v373;
                if (*(&v373 + 1) != v373)
                {
                  v167 = *v163++;
                  *(v374 + v373) = v167;
                  *&v373 = v373 + 1;
                  if (v373 != *(&v373 + 1))
                  {
                    break;
                  }
                }

                PayloadPulsesWrite(&v371);
              }

              while (!HIDWORD(v374) && v165 == v166);
              if (v162 >> 28)
              {
                v382[0] = v162 | 0x80;
                v382[1] = (v162 >> 7) | 0x80;
                v382[2] = (v162 >> 14) | 0x80;
                v382[3] = (v162 >> 21) | 0x80;
                v382[4] = v162 >> 28;
                v168 = 5;
                v106 = v348;
              }

              else
              {
                v106 = v348;
                if (v162 >= 0x200000)
                {
                  v382[0] = v162 | 0x80;
                  v382[1] = (v162 >> 7) | 0x80;
                  v382[2] = (v162 >> 14) | 0x80;
                  v382[3] = v162 >> 21;
                  v168 = 4;
                }

                else if (v162 >= 0x4000)
                {
                  v382[0] = v162 | 0x80;
                  v382[1] = (v162 >> 7) | 0x80;
                  v382[2] = v162 >> 14;
                  v168 = 3;
                }

                else if (v162 >= 0x80)
                {
                  v382[0] = v162 | 0x80;
                  v382[1] = v162 >> 7;
                  v168 = 2;
                }

                else
                {
                  v382[0] = v162;
                  v168 = 1;
                }
              }

              v191 = v382;
              do
              {
                while (1)
                {
                  v193 = *(&v373 + 1) - v373 >= v168 ? v168 : *(&v373 + 1) - v373;
                  if (*(&v373 + 1) == v373)
                  {
                    break;
                  }

                  memcpy((v374 + v373), v191, v193);
                  *&v373 = v373 + v193;
                  v191 += v193;
                  if (v373 == *(&v373 + 1))
                  {
                    break;
                  }

                  v168 -= v193;
                  if (!v168)
                  {
                    goto LABEL_426;
                  }
                }

                PayloadPulsesWrite(&v371);
                v168 -= v193;
                if (HIDWORD(v374))
                {
                  v192 = 1;
                }

                else
                {
                  v192 = v168 == 0;
                }
              }

              while (!v192);
LABEL_426:
              if (v142)
              {
                PayloadPulsesWriteBytesFromScanner(&v371, __src, &v389[*&__src[24]] - v388, v142);
                a5 = v344;
                a2 = v343;
              }

              else
              {
                a5 = v344;
                a2 = v343;
                if (v143)
                {
                  v196 = v393;
                  do
                  {
                    while (1)
                    {
                      v198 = *(&v373 + 1) - v373 >= v143 ? v143 : *(&v373 + 1) - v373;
                      if (*(&v373 + 1) == v373)
                      {
                        break;
                      }

                      memcpy((v374 + v373), v196, v198);
                      *&v373 = v373 + v198;
                      v196 = (v196 + v198);
                      if (v373 == *(&v373 + 1))
                      {
                        break;
                      }

                      v143 -= v198;
                      if (!v143)
                      {
                        goto LABEL_428;
                      }
                    }

                    PayloadPulsesWrite(&v371);
                    v143 -= v198;
                    if (HIDWORD(v374))
                    {
                      v197 = 1;
                    }

                    else
                    {
                      v197 = v143 == 0;
                    }
                  }

                  while (!v197);
                }
              }

LABEL_428:
              v194 = v339;
              if (v339)
              {
                v195 = &v358[v354] - v357;
                goto LABEL_608;
              }

              if (v161)
              {
                v199 = v392;
                do
                {
                  while (1)
                  {
                    v201 = *(&v373 + 1) - v373 >= v161 ? v161 : *(&v373 + 1) - v373;
                    if (*(&v373 + 1) == v373)
                    {
                      break;
                    }

                    memcpy((v374 + v373), v199, v201);
                    *&v373 = v373 + v201;
                    v199 = (v199 + v201);
                    if (v373 == *(&v373 + 1))
                    {
                      break;
                    }

                    v161 -= v201;
                    if (!v161)
                    {
                      goto LABEL_609;
                    }
                  }

                  PayloadPulsesWrite(&v371);
                  v161 -= v201;
                  if (HIDWORD(v374))
                  {
                    v200 = 1;
                  }

                  else
                  {
                    v200 = v161 == 0;
                  }
                }

                while (!v200);
              }

LABEL_609:
              v228 = v389;
              if (&v389[*&__src[24]] - v388 >= v386)
              {
                v103 = 0;
              }

              else
              {
                v382[4] = 0;
                *v382 = 0;
                if (v389 < v390)
                {
                  ++v389;
                  v382[0] = *v228;
                  v229 = v382[0];
                  if ((v382[0] & 0x80) == 0)
                  {
                    goto LABEL_612;
                  }

LABEL_616:
                  v232 = 3;
                  if (v229 >= 0xF0)
                  {
                    v232 = 4;
                  }

                  if (v229 < 0xE0)
                  {
                    v232 = 2;
                  }

                  if (v229 >= 0xC0)
                  {
                    v230 = v232;
                  }

                  else
                  {
                    v230 = 1;
                  }

                  v231 = v389;
                  if ((v390 - v389) >= v230)
                  {
                    goto LABEL_624;
                  }

                  if (_PayloadScannerReadBytes(__src, &v382[1], v230))
                  {
                    v229 = v382[0];
                    v233 = v351;
                    if ((v382[0] & 0x80) != 0)
                    {
                      goto LABEL_625;
                    }

                    goto LABEL_632;
                  }

LABEL_642:
                  v229 = 0;
                  v233 = v351;
                  goto LABEL_632;
                }

                if (!_PayloadScannerReadNextChar(__src, v382))
                {
                  goto LABEL_642;
                }

                v229 = v382[0];
                if ((v382[0] & 0x80) != 0)
                {
                  goto LABEL_616;
                }

LABEL_612:
                v230 = 0;
                v231 = v389;
LABEL_624:
                __memcpy_chk();
                v389 = &v231[v230];
                v233 = v351;
                if ((v229 & 0x80) != 0)
                {
LABEL_625:
                  if (v229 > 0xBF)
                  {
                    if (v229 > 0xDF)
                    {
                      if (v229 > 0xEF)
                      {
                        v229 = *&v382[1];
                      }

                      else
                      {
                        v229 = ((v229 & 0xF) << 24) | (v382[1] << 16) | (v382[2] << 8) | v382[3];
                      }
                    }

                    else
                    {
                      v229 = ((v229 & 0x1F) << 16) | (v382[1] << 8) | v382[2];
                    }
                  }

                  else
                  {
                    v229 = v382[1] | ((v229 & 0x3F) << 8);
                  }
                }

LABEL_632:
                v103 = v229 + v233;
              }

              if (v103 >= v350)
              {
                goto LABEL_857;
              }

              v234 = v358;
              if (&v358[v354] - v357 >= v355)
              {
                v118 = 0;
              }

              else
              {
                v382[4] = 0;
                *v382 = 0;
                if (v358 < v359)
                {
                  ++v358;
                  v382[0] = *v234;
                  v235 = v382[0];
                  if ((v382[0] & 0x80) == 0)
                  {
                    goto LABEL_637;
                  }

LABEL_645:
                  v238 = 3;
                  if (v235 >= 0xF0)
                  {
                    v238 = 4;
                  }

                  if (v235 < 0xE0)
                  {
                    v238 = 2;
                  }

                  if (v235 >= 0xC0)
                  {
                    v236 = v238;
                  }

                  else
                  {
                    v236 = 1;
                  }

                  v237 = v358;
                  if ((v359 - v358) >= v236)
                  {
                    goto LABEL_653;
                  }

                  if (_PayloadScannerReadBytes(v353, &v382[1], v236))
                  {
                    v235 = v382[0];
                    v239 = v351;
                    if ((v382[0] & 0x80) != 0)
                    {
                      goto LABEL_654;
                    }

                    goto LABEL_661;
                  }

LABEL_670:
                  v235 = 0;
                  v239 = v351;
                  goto LABEL_661;
                }

                if (!_PayloadScannerReadNextChar(v353, v382))
                {
                  goto LABEL_670;
                }

                v235 = v382[0];
                if ((v382[0] & 0x80) != 0)
                {
                  goto LABEL_645;
                }

LABEL_637:
                v236 = 0;
                v237 = v358;
LABEL_653:
                __memcpy_chk();
                v358 = &v237[v236];
                v239 = v351;
                if ((v235 & 0x80) != 0)
                {
LABEL_654:
                  if (v235 > 0xBF)
                  {
                    if (v235 > 0xDF)
                    {
                      if (v235 > 0xEF)
                      {
                        v235 = *&v382[1];
                      }

                      else
                      {
                        v235 = ((v235 & 0xF) << 24) | (v382[1] << 16) | (v382[2] << 8) | v382[3];
                      }
                    }

                    else
                    {
                      v235 = ((v235 & 0x1F) << 16) | (v382[1] << 8) | v382[2];
                    }
                  }

                  else
                  {
                    v235 = v382[1] | ((v235 & 0x3F) << 8);
                  }
                }

LABEL_661:
                v118 = v235 + v239;
              }

              if (v118 >= v350)
              {
                goto LABEL_857;
              }

LABEL_663:
              if (!v103 || !v118 || HIDWORD(v374))
              {
                break;
              }

              continue;
            }

            if (v346)
            {
              VInt64 = PayloadScannerReadVInt64(__src);
              v336 = v389;
              v338 = *&__src[24];
              v145 = v388;
              v146 = PayloadScannerReadVInt64(v353);
              v334 = v358;
              v335 = v354;
              v333 = v357;
              memset(v382, 0, sizeof(v382));
              v147 = writeVInt64(v382, 0, v146 + VInt64 - 1);
              v148 = v147;
              if (v147)
              {
                v149 = v382;
                do
                {
                  while (1)
                  {
                    v151 = *(&v373 + 1) - v373 >= v148 ? v148 : *(&v373 + 1) - v373;
                    if (*(&v373 + 1) == v373)
                    {
                      break;
                    }

                    memcpy((v374 + v373), v149, v151);
                    *&v373 = v373 + v151;
                    v149 += v151;
                    if (v373 == *(&v373 + 1))
                    {
                      break;
                    }

                    v148 -= v151;
                    if (!v148)
                    {
                      goto LABEL_340;
                    }
                  }

                  PayloadPulsesWrite(&v371);
                  v148 -= v151;
                  if (HIDWORD(v374))
                  {
                    v150 = 1;
                  }

                  else
                  {
                    v150 = v148 == 0;
                  }
                }

                while (!v150);
              }

LABEL_340:
              v152 = v336 - v145 + v338;
              PayloadPulsesWriteBytesFromScanner(&v371, __src, v152, VInt64 - 1);
              v153 = v152 + VInt64;
              v154 = *&__src[24];
              v155 = v388;
              if (v152 + VInt64 < *&__src[24])
              {
                a5 = v344;
                goto LABEL_367;
              }

              a5 = v344;
              if (&v390[*&__src[24] - v388] >= v153)
              {
                v169 = v388;
                v155 = v388 + v152 + VInt64 - *&__src[24];
                v389 = v155;
              }

              else
              {
LABEL_367:
                v390 = v388;
                v169 = v388;
                v154 = v152 + VInt64;
                v389 = v388;
                *&__src[24] = v152 + VInt64;
              }

              a2 = v343;
              v106 = v348;
              if (v155 - v169 + v154 != v153)
              {
                goto LABEL_850;
              }

              v170 = v334 - v333 + v335;
              PayloadPulsesWriteBytesFromScanner(&v371, v353, v170, v146);
              v171 = v170 + v146;
              v172 = v354;
              v173 = v357;
              if (v170 + v146 >= v354 && &v359[v354 - v357] >= v171)
              {
                v174 = v357;
                v173 = v357 + v170 + v146 - v354;
                v358 = v173;
              }

              else
              {
                v358 = v357;
                v359 = v357;
                v174 = v357;
                v172 = v170 + v146;
                v354 = v170 + v146;
              }

              if (v173 - v174 + v172 != v171)
              {
                goto LABEL_850;
              }

              goto LABEL_609;
            }

            *&v382[8] = 0;
            *v382 = 0;
            v156 = v389;
            if (v389 >= v390)
            {
              if (!_PayloadScannerReadNextChar(__src, v382))
              {
                goto LABEL_550;
              }

              v157 = v382[0];
              if ((v382[0] & 0x80) != 0)
              {
                goto LABEL_508;
              }

LABEL_344:
              v158 = 0;
              v159 = v389;
LABEL_524:
              __memcpy_chk();
              v389 = &v159[v158];
            }

            else
            {
              ++v389;
              v157 = *v156;
              v382[0] = v157;
              if ((v157 & 0x80) == 0)
              {
                goto LABEL_344;
              }

LABEL_508:
              if (v157 >= 0xC0)
              {
                if (v157 >= 0xE0)
                {
                  if (v157 >= 0xF0)
                  {
                    if (v157 >= 0xF8)
                    {
                      if (v157 >= 0xFC)
                      {
                        if (v157 >= 0xFE)
                        {
                          if (v157 == 255)
                          {
                            v158 = 8;
                          }

                          else
                          {
                            v158 = 7;
                          }
                        }

                        else
                        {
                          v158 = 6;
                        }
                      }

                      else
                      {
                        v158 = 5;
                      }
                    }

                    else
                    {
                      v158 = 4;
                    }
                  }

                  else
                  {
                    v158 = 3;
                  }
                }

                else
                {
                  v158 = 2;
                }
              }

              else
              {
                v158 = 1;
              }

              v159 = v389;
              if ((v390 - v389) >= v158)
              {
                goto LABEL_524;
              }

              if ((_PayloadScannerReadBytes(__src, &v382[1], v158) & 1) == 0)
              {
LABEL_550:
                v209 = v389 - v388 + *&__src[24];
                PayloadScannerSkipPositionsData(__src);
                v210 = v389 - v388 + *&__src[24];
                LOBYTE(v392[0]) = 0;
                v211 = v392;
                do
                {
                  v213 = *(&v373 + 1);
                  v214 = v373;
                  if (*(&v373 + 1) != v373)
                  {
                    v215 = *v211++;
                    *(v374 + v373) = v215;
                    *&v373 = v373 + 1;
                    if (v373 != *(&v373 + 1))
                    {
                      break;
                    }
                  }

                  PayloadPulsesWrite(&v371);
                }

                while (!HIDWORD(v374) && v213 == v214);
                PayloadPulsesWriteBytesFromScanner(&v371, __src, v209, v210 + ~v209);
                v216 = *&__src[24];
                v217 = v388;
                if (v210 >= *&__src[24] && &v390[*&__src[24] - v388] >= v210)
                {
                  v218 = v388;
                  v217 = v388 + v210 - *&__src[24];
                  v389 = v217;
                }

                else
                {
                  v390 = v388;
                  v218 = v388;
                  v216 = v210;
                  v389 = v388;
                  *&__src[24] = v210;
                }

                v106 = v348;
                if (v217 - v218 + v216 != v210)
                {
                  goto LABEL_857;
                }

                *&v382[8] = 0;
                *v382 = 0;
                v219 = v358;
                if (v358 >= v359)
                {
                  if (!_PayloadScannerReadNextChar(v353, v382))
                  {
                    goto LABEL_607;
                  }

                  v220 = v382[0];
                  if ((v382[0] & 0x80) != 0)
                  {
                    goto LABEL_568;
                  }

LABEL_565:
                  v221 = 0;
                  v222 = v358;
LABEL_584:
                  __memcpy_chk();
                  v358 = &v222[v221];
                }

                else
                {
                  ++v358;
                  v220 = *v219;
                  v382[0] = v220;
                  if ((v220 & 0x80) == 0)
                  {
                    goto LABEL_565;
                  }

LABEL_568:
                  if (v220 >= 0xC0)
                  {
                    if (v220 >= 0xE0)
                    {
                      if (v220 >= 0xF0)
                      {
                        if (v220 >= 0xF8)
                        {
                          if (v220 >= 0xFC)
                          {
                            if (v220 >= 0xFE)
                            {
                              if (v220 == 255)
                              {
                                v221 = 8;
                              }

                              else
                              {
                                v221 = 7;
                              }
                            }

                            else
                            {
                              v221 = 6;
                            }
                          }

                          else
                          {
                            v221 = 5;
                          }
                        }

                        else
                        {
                          v221 = 4;
                        }
                      }

                      else
                      {
                        v221 = 3;
                      }
                    }

                    else
                    {
                      v221 = 2;
                    }
                  }

                  else
                  {
                    v221 = 1;
                  }

                  v222 = v358;
                  if ((v359 - v358) >= v221)
                  {
                    goto LABEL_584;
                  }

                  if ((_PayloadScannerReadBytes(v353, &v382[1], v221) & 1) == 0)
                  {
LABEL_607:
                    v227 = v358 - v357 + v354;
                    PayloadScannerSkipPositionsData(v353);
                    v194 = &v358[v354] - v357 - v227;
                    v195 = v227;
LABEL_608:
                    PayloadPulsesWriteBytesFromScanner(&v371, v353, v195, v194);
                    goto LABEL_609;
                  }
                }

                *&v393[0] = 0;
                if ((v2_readVInt64_2873(v382, v393) & 1) == 0)
                {
                  goto LABEL_607;
                }

                *&v382[8] = 0;
                *v382 = 0;
                v223 = v358;
                if (v358 >= v359)
                {
                  v223 = v382;
                  if (!_PayloadScannerReadNextChar(v353, v382))
                  {
                    goto LABEL_607;
                  }
                }

                else
                {
                  ++v358;
                }

                if (*v223 < 0)
                {
                  v226 = *v223;
                  if (v226 >= 0xC0)
                  {
                    if (v226 >= 0xE0)
                    {
                      if (v226 >= 0xF0)
                      {
                        if (v226 >= 0xF8)
                        {
                          if (v226 >= 0xFC)
                          {
                            if (v226 >= 0xFE)
                            {
                              if (v226 == 255)
                              {
                                v224 = 8;
                              }

                              else
                              {
                                v224 = 7;
                              }
                            }

                            else
                            {
                              v224 = 6;
                            }
                          }

                          else
                          {
                            v224 = 5;
                          }
                        }

                        else
                        {
                          v224 = 4;
                        }
                      }

                      else
                      {
                        v224 = 3;
                      }
                    }

                    else
                    {
                      v224 = 2;
                    }
                  }

                  else
                  {
                    v224 = 1;
                  }

                  v225 = v358;
                  if ((v359 - v358) < v224)
                  {
                    _PayloadScannerReadBytes(v353, &v382[1], v224);
                    goto LABEL_607;
                  }
                }

                else
                {
                  v224 = 0;
                  v225 = v358;
                }

                __memcpy_chk();
                v358 = &v225[v224];
                goto LABEL_607;
              }
            }

            *&v393[0] = 0;
            if ((v2_readVInt64_2873(v382, v393) & 1) == 0)
            {
              goto LABEL_550;
            }

            *&v382[8] = 0;
            *v382 = 0;
            v205 = v389;
            if (v389 >= v390)
            {
              if (!_PayloadScannerReadNextChar(__src, v382))
              {
                goto LABEL_550;
              }

              v206 = v382[0];
              if ((v382[0] & 0x80) != 0)
              {
                goto LABEL_533;
              }

LABEL_528:
              v207 = 0;
              v208 = v389;
            }

            else
            {
              ++v389;
              v206 = *v205;
              v382[0] = v206;
              if ((v206 & 0x80) == 0)
              {
                goto LABEL_528;
              }

LABEL_533:
              if (v206 >= 0xC0)
              {
                if (v206 >= 0xE0)
                {
                  if (v206 >= 0xF0)
                  {
                    if (v206 >= 0xF8)
                    {
                      if (v206 >= 0xFC)
                      {
                        if (v206 >= 0xFE)
                        {
                          if (v206 == 255)
                          {
                            v207 = 8;
                          }

                          else
                          {
                            v207 = 7;
                          }
                        }

                        else
                        {
                          v207 = 6;
                        }
                      }

                      else
                      {
                        v207 = 5;
                      }
                    }

                    else
                    {
                      v207 = 4;
                    }
                  }

                  else
                  {
                    v207 = 3;
                  }
                }

                else
                {
                  v207 = 2;
                }
              }

              else
              {
                v207 = 1;
              }

              v208 = v389;
              if ((v390 - v389) < v207)
              {
                _PayloadScannerReadBytes(__src, &v382[1], v207);
                goto LABEL_550;
              }
            }

            __memcpy_chk();
            v389 = &v208[v207];
            goto LABEL_550;
          }

          v128 = v372[1] + 32 * (LODWORD(v372[0]) - 1);
          v129 = *(v128 + 4);
          if (v103 < v118)
          {
            if (v129)
            {
              v130 = v103 - *(v128 + 5);
            }

            else
            {
              *(v128 + 4) = v103;
              v130 = v103;
            }

            memset(v382, 0, sizeof(v382));
            if (v130 > 0x7F)
            {
              if (v130 >> 14)
              {
                if (v130 >> 21)
                {
                  if (v130 >> 28)
                  {
                    v382[0] = -16;
                    *&v382[1] = v130;
                    v133 = 5;
                  }

                  else
                  {
                    v382[0] = HIBYTE(v130) | 0xE0;
                    v382[1] = BYTE2(v130);
                    v382[2] = BYTE1(v130);
                    v382[3] = v130;
                    v133 = 4;
                  }
                }

                else
                {
                  v382[0] = BYTE2(v130) | 0xC0;
                  v382[1] = BYTE1(v130);
                  v382[2] = v130;
                  v133 = 3;
                }
              }

              else
              {
                v382[0] = BYTE1(v130) | 0x80;
                v382[1] = v130;
                v133 = 2;
              }
            }

            else
            {
              v382[0] = v130;
              v133 = 1;
            }

            v175 = v382;
            do
            {
              while (1)
              {
                v177 = *(&v373 + 1) - v373 >= v133 ? v133 : *(&v373 + 1) - v373;
                if (*(&v373 + 1) == v373)
                {
                  break;
                }

                memcpy((v374 + v373), v175, v177);
                *&v373 = v373 + v177;
                v175 += v177;
                if (v373 == *(&v373 + 1))
                {
                  break;
                }

                v133 -= v177;
                if (!v133)
                {
                  goto LABEL_394;
                }
              }

              PayloadPulsesWrite(&v371);
              v133 -= v177;
              if (HIDWORD(v374))
              {
                v176 = 1;
              }

              else
              {
                v176 = v133 == 0;
              }
            }

            while (!v176);
LABEL_394:
            *(v128 + 5) = v103;
            PayloadPulsesAppend(__src, &v371, a2, 0, v346 != 0);
            v178 = 0;
            v179 = v389;
            v106 = v348;
            v118 = v351;
            if (&v389[*&__src[24]] - v388 < v386)
            {
              v382[4] = 0;
              *v382 = 0;
              if (v389 < v390)
              {
                ++v389;
                v382[0] = *v179;
                v180 = v382[0];
                if ((v382[0] & 0x80) == 0)
                {
                  goto LABEL_397;
                }

LABEL_458:
                v202 = 3;
                if (v180 >= 0xF0)
                {
                  v202 = 4;
                }

                if (v180 < 0xE0)
                {
                  v202 = 2;
                }

                if (v180 >= 0xC0)
                {
                  v181 = v202;
                }

                else
                {
                  v181 = 1;
                }

                v182 = v389;
                if ((v390 - v389) >= v181)
                {
                  goto LABEL_466;
                }

                if (_PayloadScannerReadBytes(__src, &v382[1], v181))
                {
                  v180 = v382[0];
                  v118 = v351;
                  if ((v382[0] & 0x80) != 0)
                  {
                    goto LABEL_467;
                  }

                  goto LABEL_474;
                }

LABEL_501:
                v180 = 0;
                v118 = v351;
                goto LABEL_474;
              }

              if (!_PayloadScannerReadNextChar(__src, v382))
              {
                goto LABEL_501;
              }

              v180 = v382[0];
              if ((v382[0] & 0x80) != 0)
              {
                goto LABEL_458;
              }

LABEL_397:
              v181 = 0;
              v182 = v389;
LABEL_466:
              __memcpy_chk();
              v389 = &v182[v181];
              v118 = v351;
              if ((v180 & 0x80) != 0)
              {
LABEL_467:
                if (v180 > 0xBF)
                {
                  if (v180 > 0xDF)
                  {
                    if (v180 > 0xEF)
                    {
                      v180 = *&v382[1];
                    }

                    else
                    {
                      v180 = ((v180 & 0xF) << 24) | (v382[1] << 16) | (v382[2] << 8) | v382[3];
                    }
                  }

                  else
                  {
                    v180 = ((v180 & 0x1F) << 16) | (v382[1] << 8) | v382[2];
                  }
                }

                else
                {
                  v180 = v382[1] | ((v180 & 0x3F) << 8);
                }
              }

LABEL_474:
              v178 = v180 + v103;
            }

            v103 = v178;
            if (v178 >= v350)
            {
              goto LABEL_862;
            }

            goto LABEL_663;
          }

          if (v129)
          {
            v131 = v118 - *(v128 + 5);
          }

          else
          {
            *(v128 + 4) = v118;
            v131 = v118;
          }

          memset(v382, 0, sizeof(v382));
          if (v131 > 0x7F)
          {
            if (v131 >> 14)
            {
              if (v131 >> 21)
              {
                if (v131 >> 28)
                {
                  v382[0] = -16;
                  *&v382[1] = v131;
                  v134 = 5;
                }

                else
                {
                  v382[0] = HIBYTE(v131) | 0xE0;
                  v382[1] = BYTE2(v131);
                  v382[2] = BYTE1(v131);
                  v382[3] = v131;
                  v134 = 4;
                }
              }

              else
              {
                v382[0] = BYTE2(v131) | 0xC0;
                v382[1] = BYTE1(v131);
                v382[2] = v131;
                v134 = 3;
              }
            }

            else
            {
              v382[0] = BYTE1(v131) | 0x80;
              v382[1] = v131;
              v134 = 2;
            }
          }

          else
          {
            v382[0] = v131;
            v134 = 1;
          }

          v183 = v382;
          do
          {
            while (1)
            {
              v185 = *(&v373 + 1) - v373 >= v134 ? v134 : *(&v373 + 1) - v373;
              if (*(&v373 + 1) == v373)
              {
                break;
              }

              memcpy((v374 + v373), v183, v185);
              *&v373 = v373 + v185;
              v183 += v185;
              if (v373 == *(&v373 + 1))
              {
                break;
              }

              v134 -= v185;
              if (!v134)
              {
                goto LABEL_410;
              }
            }

            PayloadPulsesWrite(&v371);
            v134 -= v185;
            if (HIDWORD(v374))
            {
              v184 = 1;
            }

            else
            {
              v184 = v134 == 0;
            }
          }

          while (!v184);
LABEL_410:
          *(v128 + 5) = v351;
          PayloadPulsesAppend(v353, &v371, a2, 0, v346 != 0);
          v186 = 0;
          v187 = v358;
          v106 = v348;
          if (&v358[v354] - v357 < v355)
          {
            v382[4] = 0;
            *v382 = 0;
            if (v358 < v359)
            {
              ++v358;
              v382[0] = *v187;
              v188 = v382[0];
              if ((v382[0] & 0x80) == 0)
              {
                goto LABEL_413;
              }

LABEL_479:
              v203 = 3;
              if (v188 >= 0xF0)
              {
                v203 = 4;
              }

              if (v188 < 0xE0)
              {
                v203 = 2;
              }

              if (v188 >= 0xC0)
              {
                v189 = v203;
              }

              else
              {
                v189 = 1;
              }

              v190 = v358;
              if ((v359 - v358) >= v189)
              {
                goto LABEL_487;
              }

              if (_PayloadScannerReadBytes(v353, &v382[1], v189))
              {
                v188 = v382[0];
                v204 = v351;
                if ((v382[0] & 0x80) != 0)
                {
                  goto LABEL_488;
                }

                goto LABEL_495;
              }

LABEL_505:
              v188 = 0;
              v204 = v351;
              goto LABEL_495;
            }

            if (!_PayloadScannerReadNextChar(v353, v382))
            {
              goto LABEL_505;
            }

            v188 = v382[0];
            if ((v382[0] & 0x80) != 0)
            {
              goto LABEL_479;
            }

LABEL_413:
            v189 = 0;
            v190 = v358;
LABEL_487:
            __memcpy_chk();
            v358 = &v190[v189];
            v204 = v351;
            if ((v188 & 0x80) != 0)
            {
LABEL_488:
              if (v188 > 0xBF)
              {
                if (v188 > 0xDF)
                {
                  if (v188 > 0xEF)
                  {
                    v188 = *&v382[1];
                  }

                  else
                  {
                    v188 = ((v188 & 0xF) << 24) | (v382[1] << 16) | (v382[2] << 8) | v382[3];
                  }
                }

                else
                {
                  v188 = ((v188 & 0x1F) << 16) | (v382[1] << 8) | v382[2];
                }
              }

              else
              {
                v188 = v382[1] | ((v188 & 0x3F) << 8);
              }
            }

LABEL_495:
            v186 = v188 + v204;
          }

          v118 = v186;
          if (v186 >= v350)
          {
            goto LABEL_857;
          }

          goto LABEL_663;
        }

        break;
      }

      if (!(*a9 | HIDWORD(v374)))
      {
        goto LABEL_678;
      }

LABEL_736:
      v84 = 0;
LABEL_737:
      free(v326);
      if (v357)
      {
        free(v357);
        v357 = 0;
      }

      if (v388)
      {
        free(v388);
      }

      v263 = HIDWORD(v370[1]);
      if (HIDWORD(v370[1]))
      {
        v264 = v84 == 0;
      }

      else
      {
        v264 = 0;
      }

      if (!v264)
      {
        v263 = v84;
      }

      if (v263)
      {
        v265 = 1;
      }

      else
      {
        v265 = HIDWORD(v374) == 0;
      }

      if (v265)
      {
        v49 = v263;
      }

      else
      {
        v49 = HIDWORD(v374);
      }

      v266 = *__error();
      v267 = _SILogForLogForCategory(10);
      v268 = 2 * (dword_1EBF46AF4 < 4);
      v269 = os_log_type_enabled(v267, v268);
      if (v49)
      {
        if (v269)
        {
          v304 = ptr[0];
          v305 = v372[0];
          v306 = CFAbsoluteTimeGetCurrent();
          *__src = 67110144;
          *&v306 = v306 - v76;
          *&__src[4] = v327;
          *&__src[8] = 1024;
          *&__src[10] = v304;
          *&__src[14] = 1024;
          *&__src[16] = v305;
          a2 = v343;
          *&__src[20] = 2048;
          *&__src[22] = *&v306;
          *&__src[30] = 1024;
          LODWORD(v386) = v49;
          _os_log_impl(&dword_1C278D000, v267, v268, "Compact iteration:%d, src cnt:%d, new cnt:%d, time (%f) ERROR: %d", __src, 0x24u);
        }

        v50 = 0;
        *__error() = v266;
        goto LABEL_101;
      }

      if (v269)
      {
        v270 = ptr[0];
        v271 = v372[0];
        v272 = CFAbsoluteTimeGetCurrent();
        *__src = 67109888;
        *&v272 = v272 - v76;
        *&__src[4] = v327;
        *&__src[8] = 1024;
        *&__src[10] = v270;
        *&__src[14] = 1024;
        *&__src[16] = v271;
        *&__src[20] = 2048;
        *&__src[22] = *&v272;
        _os_log_impl(&dword_1C278D000, v267, v268, "Compact iteration:%d, src cnt:%d, new cnt:%d, time (%f)", __src, 0x1Eu);
      }

      *__error() = v266;
      if (!*a9 && LODWORD(ptr[0]) <= LODWORD(v372[0]))
      {
        goto LABEL_857;
      }

      PayloadPulsesWrite(&v371);
      v49 = HIDWORD(v374);
      free(ptr[1]);
      ptr[1] = 0;
      free(v370[0]);
      v367 = v371;
      *ptr = *v372;
      v369 = v373;
      *v370 = v374;
      v371 = 0u;
      *v372 = 0u;
      v373 = 0u;
      v374 = 0u;
      if (v49)
      {
        goto LABEL_100;
      }

      if (v325 == *buf)
      {
        v70 = *&buf[8];
      }

      else
      {
        v70 = *buf;
      }

      v75 = ptr[0];
      if (!*a9)
      {
        ++v327;
        if (LODWORD(ptr[0]) >= 2)
        {
          continue;
        }
      }

      break;
    }

LABEL_763:
    if (*a9)
    {
      goto LABEL_764;
    }

    if (v75 != 1)
    {
      v321 = __si_assert_copy_extra_2708(0);
      v308 = v321;
      v322 = "";
      if (v321)
      {
        v322 = v321;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1753, "PayloadPulsesCount(&ctx.src) == 1", v322);
      goto LABEL_853;
    }

    v273 = v367;
    if (*buf && *buf != v367)
    {
      _fd_unlink_with_origin(*buf, 0);
      fd_release(*buf);
      *buf = 0;
      v273 = v367;
    }

    if (*&buf[8] && *&buf[8] != v273)
    {
      _fd_unlink_with_origin(*&buf[8], 0);
      fd_release(*&buf[8]);
      *&buf[8] = 0;
    }

    v352 = *(ptr[1] + 6);
    *&v371 = 0;
    HIDWORD(v374) = 0;
    v372[0] = 0x4000000000;
    v372[1] = malloc_type_malloc(0x800uLL, 0x1000040F6D918ACuLL);
    v373 = xmmword_1C2BFA6B0;
    *&v374 = malloc_type_malloc(0x10000uLL, 0x2F8734D0uLL);
    v274 = *a1;
    *&v371 = a1[561];
    *(&v371 + 1) = v274;
    v275 = v372[0];
    if (LODWORD(v372[0]) == HIDWORD(v372[0]))
    {
      HIDWORD(v372[0]) = 2 * LODWORD(v372[0]);
      v276 = malloc_type_realloc(v372[1], 32 * (2 * LODWORD(v372[0])), 0x1000040F6D918ACuLL);
      v372[1] = v276;
      v275 = v372[0];
    }

    else
    {
      v276 = v372[1];
    }

    LODWORD(v372[0]) = v275 + 1;
    v277 = &v276[32 * v275];
    *v277 = v274;
    *(v277 + 1) = 0;
    *(v277 + 2) = 0;
    *(v277 + 3) = 0;
    v375 = 0uLL;
    v376 = v367;
    *&v377 = *(&v367 + 1);
    *(&v377 + 1) = 0x100000;
    v278 = malloc_type_malloc(0x100000uLL, 0xDD6FD5F7uLL);
    *&v378 = v278;
    *&v379 = v278;
    DWORD2(v379) = 0;
    v279 = *ptr[1];
    v280 = *(ptr[1] + 1) + *ptr[1];
    *&v377 = v280;
    if (*(&v376 + 1) != v279)
    {
      *(&v376 + 1) = v279;
    }

    *(&v378 + 1) = v278;
    if (v279 >= v280)
    {
      VInt32_v2 = 0;
    }

    else
    {
      VInt32_v2 = PayloadScannerReadVInt32_v2(&v375);
    }

    if (VInt32_v2 >= v350)
    {
LABEL_857:
      v311 = __si_assert_copy_extra_2708(0);
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_858;
    }

    if (v343 == 2 || VInt32_v2 <= 1)
    {
      while (1)
      {
        if (!VInt32_v2 || *a9)
        {
LABEL_839:
          PayloadPulsesWrite(&v371);
          a1[1] = *a1;
          v301 = *(&v371 + 1);
          a1[3] = *(&v371 + 1);
          a1[4] = v301;
          if (HIDWORD(v374))
          {
            v302 = DWORD2(v379) == 0;
          }

          else
          {
            v302 = 0;
          }

          if (v302)
          {
            v49 = HIDWORD(v374);
          }

          else
          {
            v49 = DWORD2(v379);
          }

          v303 = *a9;
          goto LABEL_846;
        }

        v284 = *(&v378 + 1) - v378 + *(&v376 + 1);
        if (v284 <= v279 || v284 >= v280)
        {
          v319 = __si_assert_copy_extra_2708(0);
          v308 = v319;
          v320 = "";
          if (v319)
          {
            v320 = v319;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 1804, "PayloadScannerPosition(&ctx.scanner) > p.offset && PayloadScannerPosition(&ctx.scanner) < p.offset+p.length", v320);
          goto LABEL_853;
        }

        v286 = v373 + *(&v371 + 1);
        if ((v373 + *(&v371 + 1)) >> 62)
        {
          v311 = __si_assert_copy_extra_2708(0);
          __message_assert("%s:%u: failed assertion '%s' %s write invalid offset %llu");
LABEL_858:
          free(v311);
          if (__valid_fs(-1))
          {
            v312 = 2989;
          }

          else
          {
            v312 = 3072;
          }

          *v312 = -559038737;
          abort();
        }

        v287 = 8 * VInt32_v2;
        v288 = v287 / *MEMORY[0x1E69E9AC8];
        v289 = a1;
        v290 = a1[559];
        if (v290 <= v288)
        {
          if (v290)
          {
            v296 = a1[559];
          }

          else
          {
            v296 = 32;
          }

          while (1)
          {
            v296 *= 2;
            if (v296 > v288)
            {
              break;
            }

            if (v296 <= v290)
            {
              goto LABEL_857;
            }
          }

          v349 = v287 / *MEMORY[0x1E69E9AC8];
          v297 = a1[560];
          if (v297)
          {
            MutableCopy = CFBitVectorCreateMutableCopy(allocator, v296, v297);
          }

          else
          {
            MutableCopy = CFBitVectorCreateMutable(allocator, v296);
          }

          v299 = MutableCopy;
          if (!MutableCopy)
          {
            v323 = __si_assert_copy_extra_2708(0);
            v308 = v323;
            v324 = "";
            if (v323)
            {
              v324 = v323;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v324);
            goto LABEL_853;
          }

          CFBitVectorSetCount(MutableCopy, v296);
          v300 = a1[560];
          if (v300)
          {
            CFRelease(v300);
          }

          v289 = a1;
          a1[560] = v299;
          a1[559] = v296;
          v288 = v349;
        }

        if (v289[558] <= v288)
        {
          v289[558] = v288 + 1;
        }

        v291 = v289;
        CFBitVectorSetBitAtIndex(v289[560], v288, 1u);
        *storageResolvePtr((v291 + 5), 8 * VInt32_v2, 8, 1) = v286;
        PayloadPulsesAppend(&v375, &v371, v343, 1, v352 != 0);
        if (HIDWORD(v374))
        {
          goto LABEL_839;
        }

        v292 = *(&v378 + 1);
        if (*(&v376 + 1) + *(&v378 + 1) - v378 < v377)
        {
          break;
        }

        VInt32_v2 = 0;
LABEL_787:
        if (VInt32_v2 >= v350)
        {
          goto LABEL_857;
        }
      }

      __src[4] = 0;
      *__src = 0;
      if (*(&v378 + 1) >= v379)
      {
        if (!_PayloadScannerReadNextChar(&v375, __src))
        {
          goto LABEL_833;
        }

        v293 = __src[0];
        if ((__src[0] & 0x80) == 0)
        {
          goto LABEL_802;
        }
      }

      else
      {
        ++*(&v378 + 1);
        __src[0] = *v292;
        v293 = __src[0];
        if ((__src[0] & 0x80) == 0)
        {
LABEL_802:
          v294 = 0;
          v295 = *(&v378 + 1);
          goto LABEL_821;
        }
      }

      if (v293 >= 0xC0)
      {
        if (v293 >= 0xE0)
        {
          if (v293 < 0xF0)
          {
            v294 = 3;
          }

          else
          {
            v294 = 4;
          }
        }

        else
        {
          v294 = 2;
        }
      }

      else
      {
        v294 = 1;
      }

      v295 = *(&v378 + 1);
      if ((v379 - DWORD2(v378)) >= v294)
      {
LABEL_821:
        __memcpy_chk();
        *(&v378 + 1) = v295 + v294;
        if ((v293 & 0x80) != 0)
        {
          goto LABEL_822;
        }

        goto LABEL_829;
      }

      if (_PayloadScannerReadBytes(&v375, &__src[1], v294))
      {
        v293 = __src[0];
        if ((__src[0] & 0x80) != 0)
        {
LABEL_822:
          if (v293 > 0xBF)
          {
            if (v293 > 0xDF)
            {
              if (v293 > 0xEF)
              {
                v293 = *&__src[1];
              }

              else
              {
                v293 = ((v293 & 0xF) << 24) | (__src[1] << 16) | (__src[2] << 8) | __src[3];
              }
            }

            else
            {
              v293 = ((v293 & 0x1F) << 16) | (__src[1] << 8) | __src[2];
            }
          }

          else
          {
            v293 = __src[1] | ((v293 & 0x3F) << 8);
          }
        }

LABEL_829:
        VInt32_v2 += v293;
        goto LABEL_787;
      }

LABEL_833:
      v293 = 0;
      goto LABEL_829;
    }

    v282 = *__error();
    v283 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
    {
      *__src = 136315650;
      *&__src[4] = "CICompactPayloads";
      *&__src[12] = 1024;
      *&__src[14] = 1797;
      *&__src[18] = 1024;
      *&__src[20] = VInt32_v2;
      _os_log_error_impl(&dword_1C278D000, v283, OS_LOG_TYPE_ERROR, "%s:%d: expected term id 1%d", __src, 0x18u);
    }

    *__error() = v282;
    v49 = -1;
LABEL_846:
    v50 = 1;
    a5 = v344;
    a2 = v343;
LABEL_101:
    CICleanUpReset(v341, v340);
    v51 = *__error();
    v52 = _SILogForLogForCategory(10);
    v53 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = CFAbsoluteTimeGetCurrent() - Current;
      *__src = 134217984;
      *&__src[4] = v54;
      _os_log_impl(&dword_1C278D000, v52, v53, "Compacted payloads (%f)", __src, 0xCu);
    }

    *__error() = v51;
    if (v49)
    {
      v55 = 1;
    }

    else
    {
      v55 = *a9 == 0;
    }

    if (v55)
    {
      result = v49;
    }

    else
    {
      result = 89;
    }

    if (a7 == -1)
    {
      v57 = 1;
    }

    else
    {
      v57 = v50;
    }

    if (result == 28 && (v57 & 1) == 0)
    {
      v58 = *__error();
      v59 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *__src = 136315650;
        *&__src[4] = "CICompactPayloads";
        *&__src[12] = 1024;
        *&__src[14] = 1852;
        *&__src[18] = 1024;
        *&__src[20] = 28;
        _os_log_error_impl(&dword_1C278D000, v59, OS_LOG_TYPE_ERROR, "%s:%d: Error %d compacting, retrying", __src, 0x18u);
      }

      *__error() = v58;
      a7 = -1;
      continue;
    }

    break;
  }

  v310 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _PayloadScannerReadNextChar(uint64_t a1, _BYTE *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    goto LABEL_33;
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = &v2[*(a1 + 24) - *(a1 + 48)];
  if (v4 >= v3)
  {
    goto LABEL_33;
  }

  if (v2 < *(a1 + 64))
  {
LABEL_32:
    *(a1 + 56) = v2 + 1;
    *a2 = *v2;
    result = 1;
    goto LABEL_34;
  }

  v5 = *(a1 + 40);
  v6 = *a1;
  if (*a1 || *(a1 + 8))
  {
    if (v6 <= v4 && (v7 = *(a1 + 8), v4 <= v7))
    {
      v8 = a2;
      *(a1 + 24) = v7;
      v4 = v7;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      v8 = a2;
      if (v5 + v4 > v6 && v6 > v4)
      {
        v5 = v6 - v4;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v31 = 0;
  v10 = a1;
  v11 = _fd_acquire_fd(*(a1 + 16), &v31);
  if (v11 != -1)
  {
    v12 = v11;
    if (v3 - v4 >= v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = v3 - v4;
    }

    v14 = *(v10 + 48);
    while (1)
    {
      v15 = pread(v12, v14, v13, v4);
      if (v15 != -1)
      {
        break;
      }

      v16 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v17 = __error();
      if (((*(v16 + 16))(v16, v12, *v17, 4) & 1) == 0)
      {
        v15 = -1;
        break;
      }
    }

    if (v13 != -1)
    {
      v18 = v10;
      if (v15 != -1)
      {
        goto LABEL_31;
      }

      *(v10 + 32) = 0;
      *(v10 + 72) = *__error();
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v30 = *(v10 + 72);
        *buf = 136315650;
        v33 = "_PayloadScannerReadNextChar";
        v34 = 1024;
        v35 = 198;
        v36 = 1024;
        v37 = v30;
        _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: pread err: %d", buf, 0x18u);
      }

      v21 = __error();
      v15 = 0;
      *v21 = v19;
    }

    v18 = v10;
LABEL_31:
    v22 = v15;
    _fd_release_fd(*(v18 + 16), v12, 0, v31);
    a1 = v10;
    *(v10 + 24) = v4;
    v2 = *(v10 + 48);
    *(v10 + 56) = v2;
    *(v10 + 64) = &v2[v22];
    a2 = v8;
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  *(v10 + 72) = *__error();
  v25 = *__error();
  v26 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v29 = *(v10 + 72);
    *buf = 136315650;
    v33 = "_PayloadScannerReadNextChar";
    v34 = 1024;
    v35 = 191;
    v36 = 1024;
    v37 = v29;
    _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d", buf, 0x18u);
  }

  v27 = __error();
  result = 0;
  *v27 = v25;
  *(v10 + 24) = v4;
  v28 = *(v10 + 48);
  *(v10 + 56) = v28;
  *(v10 + 64) = v28;
LABEL_34:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

int *PayloadPulsesWrite(int *result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!result[15])
  {
    v1 = result;
    if (*(result + 4))
    {
      v19 = 0;
      v2 = _fd_acquire_fd(*result, &v19);
      if (v2 == -1)
      {
        v1[15] = *__error();
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = v1[15];
          *buf = 136315650;
          v21 = "PayloadPulsesWrite";
          v22 = 1024;
          v23 = 448;
          v24 = 1024;
          v25 = v17;
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: open err:%d", buf, 0x18u);
        }

        result = __error();
        v4 = 0;
        *result = v12;
      }

      else
      {
        v3 = v2;
        v4 = 0;
        v5 = *(v1 + 6);
        v6 = *(v1 + 4);
        v7 = *(v1 + 1);
        do
        {
          while (1)
          {
            v8 = guarded_pwrite_np();
            if ((v8 & 0x8000000000000000) != 0)
            {
              break;
            }

            v4 += v8;
            v11 = v6 > v8;
            v6 -= v8;
            if (!v11)
            {
              goto LABEL_13;
            }

            v5 += v8;
            v7 += v8;
          }

          v9 = g_prot_error_callback;
          if (!g_prot_error_callback)
          {
            break;
          }

          v10 = __error();
        }

        while (((*(v9 + 16))(v9, v3, *v10, 5) & 1) != 0);
        v4 = -1;
LABEL_13:
        result = _fd_release_fd(*v1, v3, 0, v19);
        if (v4 != *(v1 + 4))
        {
          if (v4 == -1)
          {
            v1[15] = *__error();
            v14 = *__error();
            v15 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v18 = v1[15];
              *buf = 136315650;
              v21 = "PayloadPulsesWrite";
              v22 = 1024;
              v23 = 455;
              v24 = 1024;
              v25 = v18;
              _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err:%d", buf, 0x18u);
            }

            result = __error();
            *result = v14;
            v4 = -1;
          }

          else
          {
            v1[15] = -1;
          }
        }
      }

      *(v1 + 1) += v4;
      *(v1 + 4) = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PayloadPulsesReorder(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v464 = v5;
  v462 = v6;
  v460 = v7;
  v459 = v8;
  v510[129] = *MEMORY[0x1E69E9840];
  v461 = v3;
  if (v3 + 1 < 0x80000)
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = 0x80000;
  }

  v10 = *v1;
  if (!*v1)
  {
    result = 22;
    goto LABEL_744;
  }

  v11 = v2;
  v463 = v4;
  v12 = v1;
  bzero(v482, 0x1140uLL);
  atomic_fetch_add_explicit((v10 + 32), 1u, memory_order_relaxed);
  v466 = v12;
  v13 = v12[1];
  v487 = 1;
  v483 = v10;
  v484 = v13;
  v486 = 1;
  v489 = 0;
  v490 = 26;
  bzero(&v491, 0x1000uLL);
  v14 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
  v492 = v14;
  *&v14->__sig = 0u;
  *&v14->__opaque[8] = 0u;
  *&v14->__opaque[24] = 0u;
  *&v14->__opaque[40] = 0u;
  *&v14->__opaque[56] = 0u;
  *&v14->__opaque[72] = 0u;
  *&v14->__opaque[88] = 0u;
  *&v14->__opaque[104] = 0u;
  *&v14->__opaque[120] = 0u;
  *&v14->__opaque[136] = 0u;
  *&v14->__opaque[152] = 0u;
  *&v14->__opaque[168] = 0u;
  *&v14->__opaque[184] = 0;
  pthread_rwlock_init(v492, 0);
  v492[1].__sig = 0;
  v485 = v13;
  v488 = 0;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v15 = setThreadIdAndInfo(-1, sStorageExceptionCallbacks, v482, 0, add_explicit + 1);
  v480 = HIDWORD(v15);
  v481 = v15;
  v479 = v16;
  v478 = v17;
  v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
  v458 = *(v18 + 312);
  v19 = *(v18 + 224);
  if (v19)
  {
    v19(*(v18 + 288));
  }

  v477 = v481;
  v476 = v480;
  v475 = __PAIR64__(v479, v478);
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v510[0]) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v510, 2u);
    }

    *(v18 + 312) = v458;
    if (__THREAD_SLOT_KEY)
    {
      v20 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v20)
      {
        goto LABEL_795;
      }
    }

    else
    {
      makeThreadId();
      v20 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v20)
      {
        goto LABEL_795;
      }
    }

    v21 = v20;
    if (v20 < 0x801)
    {
LABEL_13:
      v22 = &threadData[9 * v21];
      v24 = *(v22 - 4);
      v23 = v22 - 2;
      if (v24 > v475)
      {
        v25 = v21 - 1;
        do
        {
          CIOnThreadCleanUpPop(v25);
        }

        while (*v23 > v475);
      }

      dropThreadId(v477, 1, add_explicit + 1);
      CICleanUpReset(v477, HIDWORD(v475));
      v26 = -1;
      goto LABEL_733;
    }

LABEL_795:
    makeThreadId();
    v21 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_13;
  }

  if (__THREAD_SLOT_KEY)
  {
    v28 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v28)
    {
      goto LABEL_20;
    }
  }

  else
  {
    makeThreadId();
    v28 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v28)
    {
LABEL_20:
      v29 = v28;
      if (v28 < 0x801)
      {
        goto LABEL_21;
      }
    }
  }

  makeThreadId();
  v29 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_21:
  v30 = v29 - 1;
  v456 = threadData[9 * v29 - 5];
  v474 = 0;
  v31 = malloc_type_malloc((12 * v9), 0x10000403E1C8BA9uLL);
  v457 = v30;
  if (!v31)
  {
LABEL_728:
    v39 = *__error();
    goto LABEL_730;
  }

  v32 = v31;
  v474 = v31;
  CICleanUpPush(v30, PayloadReorderInfoFree, &v474);
  v33 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
  if (!v33)
  {
    v430 = __si_assert_copy_extra_2708(0);
    v396 = v430;
    v431 = "";
    if (v430)
    {
      v431 = v430;
    }

    v440 = "list";
    v442 = v431;
    v398 = 911;
    goto LABEL_769;
  }

  v34 = v33;
  v33[2] = 256;
  v35 = malloc_type_malloc(0x1000uLL, 0x1000040451B5BE8uLL);
  *v34 = v35;
  if (!v35)
  {
    v432 = __si_assert_copy_extra_2708(0);
    v396 = v432;
    v433 = "";
    if (v432)
    {
      v433 = v432;
    }

    v440 = "list->items";
    v442 = v433;
    v398 = 914;
    goto LABEL_769;
  }

  *(v34 + 12) = 0;
  *(v34 + 16) = 0;
  v455 = v34;
  CICleanUpPush(v30, PositionRunInfoListFree, v34);
  v473 = 0;
  CICleanUpPush(v30, PayloadReorderInfoDestroyScanner, &v473);
  v36 = 0;
  v37 = v9;
  while (2)
  {
    if (*v464 || v36 >= *(v466 + 4))
    {
      v39 = 0;
      break;
    }

    v40 = v32;
    v454 = v36;
    v41 = v466[3] + 32 * v36;
    v42 = *(v41 + 8);
    v448 = *v41;
    v43 = *(v41 + 16);
    v471 = 0u;
    v472 = 0u;
    v44 = *v466;
    v467[0] = 0;
    v467[1] = 0;
    v467[2] = v44;
    v468 = 0;
    v469 = v42 + v448;
    v470 = v42;
    v45 = malloc_type_malloc(v42, 0xDD6FD5F7uLL);
    *&v471 = v45;
    *&v472 = v45;
    DWORD2(v472) = 0;
    v473 = v467;
    if (v468 != v448)
    {
      v468 = v448;
    }

    *(&v471 + 1) = v45;
    v46 = *(v11 + 8);
    v47 = *(v11 + 16);
    if (v47 == *(v11 + 20))
    {
      v48 = 2 * v47;
      *(v11 + 20) = v48;
      v49 = malloc_type_realloc(*(v11 + 24), 32 * v48, 0x1000040F6D918ACuLL);
      *(v11 + 24) = v49;
    }

    else
    {
      v49 = *(v11 + 24);
    }

    v50 = *(v11 + 16);
    *(v11 + 16) = v50 + 1;
    v51 = &v49[32 * v50];
    *(v51 + 1) = 0;
    *(v51 + 2) = 0;
    *v51 = v46;
    *(v51 + 3) = 1;
    v52 = *(&v471 + 1);
    if (v468 + *(&v471 + 1) - v471 >= v469)
    {
      v57 = 0;
      goto LABEL_58;
    }

    BYTE4(v510[0]) = 0;
    LODWORD(v510[0]) = 0;
    if (*(&v471 + 1) >= v472)
    {
      if (!_PayloadScannerReadNextChar(v467, v510))
      {
        goto LABEL_727;
      }

      v54 = LOBYTE(v510[0]);
      if ((v510[0] & 0x80) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      ++*(&v471 + 1);
      v53 = *v52;
      LOBYTE(v510[0]) = v53;
      v54 = v53;
      if ((v53 & 0x80) == 0)
      {
LABEL_36:
        v55 = 0;
        v56 = *(&v471 + 1);
        goto LABEL_49;
      }
    }

    if (v54 >= 0xC0)
    {
      if (v54 >= 0xE0)
      {
        if (v54 < 0xF0)
        {
          v58 = 3;
        }

        else
        {
          v58 = 4;
        }
      }

      else
      {
        v58 = 2;
      }
    }

    else
    {
      v58 = 1;
    }

    v56 = *(&v471 + 1);
    if ((v472 - DWORD2(v471)) >= v58)
    {
      v55 = v58;
LABEL_49:
      __memcpy_chk();
      *(&v471 + 1) = v56 + v55;
      v59 = v54;
      if ((v54 & 0x80) != 0)
      {
        goto LABEL_50;
      }

      goto LABEL_57;
    }

    if (!_PayloadScannerReadBytes(v467, v510 + 1, v58))
    {
LABEL_727:
      v59 = 0;
      goto LABEL_57;
    }

    v59 = LOBYTE(v510[0]);
    if ((v510[0] & 0x80) != 0)
    {
LABEL_50:
      if (v59 > 0xBF)
      {
        if (v59 > 0xDF)
        {
          if (v59 > 0xEF)
          {
            v59 = *(v510 + 1);
          }

          else
          {
            v59 = ((v59 & 0xF) << 24) | (BYTE1(v510[0]) << 16) | (BYTE2(v510[0]) << 8) | BYTE3(v510[0]);
          }
        }

        else
        {
          v59 = ((v59 & 0x1F) << 16) | (BYTE1(v510[0]) << 8) | BYTE2(v510[0]);
        }
      }

      else
      {
        v59 = BYTE1(v510[0]) | ((v59 & 0x3F) << 8);
      }
    }

LABEL_57:
    v57 = v59 + v43;
LABEL_58:
    if (v57 >= v461)
    {
LABEL_748:
      v399 = __si_assert_copy_extra_2708(0);
      v396 = v399;
      v400 = "";
      if (v399)
      {
        v400 = v399;
      }

      v440 = "termId < maxTermId";
      v442 = v400;
      v398 = 1300;
      goto LABEL_769;
    }

    if (v459 != 1)
    {
      v92 = 0;
      v93 = v40;
      v94 = v37;
      while (1)
      {
        v96 = v93;
        if (!v57)
        {
          if (DWORD2(v472))
          {
            goto LABEL_710;
          }

          if (!v460)
          {
            v145 = v92;
            v146 = 0;
            goto LABEL_258;
          }

          v121 = malloc_type_malloc(0x28uLL, 0x108004020E64A48uLL);
          v121[4] = -1;
          *v121 = 0;
          *(v121 + 1) = 0;
          *(v121 + 3) = -1;
          v121[8] = 0;
          v122 = v121;
          bzero(v510, 0x400uLL);
          v123 = getpid();
          v124 = atomic_fetch_add_explicit(scratch_file_create_sCount, 1u, memory_order_relaxed) + 1;
          if (v463 == -1)
          {
            snprintf(v510, 0x400uLL, "/mds_scratch.%d.%d", v123, v124);
            bzero(v501, 0x400uLL);
            if (confstr(65537, v501, 0x400uLL) - 1 <= 0x3FF && __strlcat_chk() <= 0x400)
            {
              v147 = open(v501, 2562, 384);
              v122[4] = v147;
              if (v147 == -1)
              {
                snprintf(v501, 0x400uLL, "/tmp/%s", v510);
                v148 = open(v501, 2562, 384);
                v122[4] = v148;
                if (v148 == -1)
                {
                  v122[8] = *__error();
                  v149 = *__error();
                  v385 = _SILogForLogForCategory(0);
                  if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
                  {
                    v387 = v122[8];
                    v493 = 136315906;
                    v494 = "scratch_file_create";
                    v495 = 1024;
                    v496 = 1892;
                    v497 = 1024;
                    v498 = v387;
                    v499 = 2080;
                    v500 = v501;
                    _os_log_error_impl(&dword_1C278D000, v385, OS_LOG_TYPE_ERROR, "%s:%d: open err:%d %s", &v493, 0x22u);
                  }

                  goto LABEL_245;
                }
              }

              unlink(v501);
            }
          }

          else
          {
            snprintf(v510, 0x400uLL, "tmp.scratch.%d.%d", v123, v124);
            v125 = openat(v463, v510, 536873474, 384);
            v122[4] = v125;
            if (v125 != -1)
            {
              unlinkat(v463, v510, 0);
              goto LABEL_246;
            }

            v122[8] = *__error();
            v149 = *__error();
            v150 = _SILogForLogForCategory(0);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              v384 = v122[8];
              *v501 = 136316162;
              *&v501[4] = "scratch_file_create";
              v502 = 1024;
              v503 = 1875;
              v504 = 1024;
              v505 = v384;
              v506 = 1024;
              v507 = v463;
              v508 = 2080;
              v509 = v510;
              _os_log_error_impl(&dword_1C278D000, v150, OS_LOG_TYPE_ERROR, "%s:%d: openat err:%d %d %s", v501, 0x28u);
            }

LABEL_245:
            *__error() = v149;
          }

LABEL_246:
          v151 = v122[4];
          if (v151 != -1)
          {
            if (_fd_ftruncate(v151, 0x8000) == -1)
            {
              v122[8] = *__error();
              v153 = *__error();
              v154 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_253;
              }

              v155 = v122[8];
              *v501 = 136315906;
              *&v501[4] = "scratch_file_create";
              v502 = 1024;
              v503 = 1911;
              v504 = 1024;
              v505 = v155;
              v506 = 1024;
              v507 = 0x8000;
              v156 = v154;
              v157 = "%s:%d: ftruncate err:%d size:%d";
            }

            else
            {
              v152 = mmap(0, 0x8000uLL, 3, 1025, v122[4], 0);
              *(v122 + 3) = v152;
              if (v152 != -1)
              {
                v145 = v92;
                *v122 = 0x8000;
LABEL_257:
                v159 = v122[8];
                v146 = v122;
                if (v159)
                {
                  goto LABEL_703;
                }

LABEL_258:
                v452 = v145;
                mergesort(v93, v145, 0xCuLL, PayloadReorderInfoCompare);
                if (!v145)
                {
                  goto LABEL_699;
                }

                v160 = 0;
                v453 = v93;
                while (2)
                {
                  v161 = v160;
                  v162 = &v96[12 * v160];
                  v163 = v448 + v162[1];
                  v164 = v468;
                  if (v163 >= v468 && v468 + v472 - v471 >= v163)
                  {
                    v165 = v471 + v163 - v468;
                    *(&v471 + 1) = v165;
                  }

                  else
                  {
                    v164 = v448 + v162[1];
                    *(&v471 + 1) = v471;
                    *&v472 = v471;
                    v468 = v163;
                    v165 = v471;
                  }

                  if (v164 + v165 - v471 != v163)
                  {
                    goto LABEL_776;
                  }

                  v166 = *v162;
                  v167 = *(v11 + 24) + 32 * (*(v11 + 16) - 1);
                  if (*(v167 + 16))
                  {
                    v168 = *v162 - *(v167 + 20);
                  }

                  else
                  {
                    *(v167 + 16) = v166;
                    v168 = v166;
                  }

                  memset(v510, 0, 32);
                  v451 = v161;
                  if (v168 > 0x7F)
                  {
                    if (v168 >> 14)
                    {
                      if (v168 >> 21)
                      {
                        if (v168 >> 28)
                        {
                          LOBYTE(v510[0]) = -16;
                          *(v510 + 1) = v168;
                          v169 = 5;
                        }

                        else
                        {
                          LOBYTE(v510[0]) = HIBYTE(v168) | 0xE0;
                          BYTE1(v510[0]) = BYTE2(v168);
                          BYTE2(v510[0]) = BYTE1(v168);
                          BYTE3(v510[0]) = v168;
                          v169 = 4;
                        }
                      }

                      else
                      {
                        LOBYTE(v510[0]) = BYTE2(v168) | 0xC0;
                        BYTE1(v510[0]) = BYTE1(v168);
                        BYTE2(v510[0]) = v168;
                        v169 = 3;
                      }
                    }

                    else
                    {
                      LOBYTE(v510[0]) = BYTE1(v168) | 0x80;
                      BYTE1(v510[0]) = v168;
                      v169 = 2;
                    }
                  }

                  else
                  {
                    LOBYTE(v510[0]) = v168;
                    v169 = 1;
                  }

                  v170 = v510;
                  v171 = v169;
                  do
                  {
                    while (1)
                    {
                      v173 = *(v11 + 32);
                      v174 = *(v11 + 40);
                      v175 = v174 - v173 >= v171 ? v171 : v174 - v173;
                      if (v174 == v173)
                      {
                        break;
                      }

                      memcpy((*(v11 + 48) + v173), v170, v175);
                      v176 = *(v11 + 40);
                      v177 = *(v11 + 32) + v175;
                      *(v11 + 32) = v177;
                      v170 = (v170 + v175);
                      if (v177 == v176)
                      {
                        break;
                      }

                      v171 -= v175;
                      if (!v171)
                      {
                        goto LABEL_292;
                      }
                    }

                    PayloadPulsesWrite(v11);
                    if (*(v11 + 60))
                    {
                      v172 = 1;
                    }

                    else
                    {
                      v172 = v171 == v175;
                    }

                    v171 -= v175;
                  }

                  while (!v172);
LABEL_292:
                  *(v167 + 20) = v166;
                  v178 = v162[2];
                  v179 = v468;
                  v180 = v471;
                  LOWORD(v510[1]) = 0;
                  v510[0] = 0;
                  if (*(&v471 + 1) >= v472)
                  {
                    if (!_PayloadScannerReadNextChar(v467, v510))
                    {
                      goto LABEL_374;
                    }

                    v181 = LOBYTE(v510[0]);
                    if ((v510[0] & 0x80) != 0)
                    {
                      goto LABEL_297;
                    }

LABEL_294:
                    v182 = 0;
                    v183 = *(&v471 + 1);
LABEL_314:
                    __memcpy_chk();
                    *(&v471 + 1) = v183 + v182;
                  }

                  else
                  {
                    ++*(&v471 + 1);
                    LOBYTE(v510[0]) = **(&v180 + 1);
                    v181 = LOBYTE(v510[0]);
                    if ((v510[0] & 0x80) == 0)
                    {
                      goto LABEL_294;
                    }

LABEL_297:
                    if (v181 >= 0xC0)
                    {
                      if (v181 >= 0xE0)
                      {
                        if (v181 >= 0xF0)
                        {
                          if (v181 >= 0xF8)
                          {
                            if (v181 >= 0xFC)
                            {
                              if (v181 >= 0xFE)
                              {
                                if (v181 == 255)
                                {
                                  v184 = 8;
                                }

                                else
                                {
                                  v184 = 7;
                                }
                              }

                              else
                              {
                                v184 = 6;
                              }
                            }

                            else
                            {
                              v184 = 5;
                            }
                          }

                          else
                          {
                            v184 = 4;
                          }
                        }

                        else
                        {
                          v184 = 3;
                        }
                      }

                      else
                      {
                        v184 = 2;
                      }
                    }

                    else
                    {
                      v184 = 1;
                    }

                    v183 = *(&v471 + 1);
                    if ((v472 - DWORD2(v471)) >= v184)
                    {
                      v182 = v184;
                      goto LABEL_314;
                    }

                    if ((_PayloadScannerReadBytes(v467, v510 + 1, v184) & 1) == 0)
                    {
LABEL_374:
                      VInt64_2873 = 0;
                      goto LABEL_342;
                    }
                  }

                  *v501 = 0;
                  VInt64_2873 = v2_readVInt64_2873(v510, v501);
                  if (VInt64_2873)
                  {
                    LOWORD(v510[1]) = 0;
                    v510[0] = 0;
                    v186 = *(&v471 + 1);
                    if (*(&v471 + 1) >= v472)
                    {
                      if (!_PayloadScannerReadNextChar(v467, v510))
                      {
                        goto LABEL_374;
                      }

                      v187 = LOBYTE(v510[0]);
                      if ((v510[0] & 0x80) != 0)
                      {
                        goto LABEL_323;
                      }

LABEL_318:
                      v188 = 0;
                      v189 = *(&v471 + 1);
LABEL_340:
                      __memcpy_chk();
                      *(&v471 + 1) = v189 + v188;
                    }

                    else
                    {
                      ++*(&v471 + 1);
                      v187 = *v186;
                      LOBYTE(v510[0]) = v187;
                      if ((v187 & 0x80) == 0)
                      {
                        goto LABEL_318;
                      }

LABEL_323:
                      if (v187 >= 0xC0)
                      {
                        if (v187 >= 0xE0)
                        {
                          if (v187 >= 0xF0)
                          {
                            if (v187 >= 0xF8)
                            {
                              if (v187 >= 0xFC)
                              {
                                if (v187 >= 0xFE)
                                {
                                  if (v187 == 255)
                                  {
                                    v190 = 8;
                                  }

                                  else
                                  {
                                    v190 = 7;
                                  }
                                }

                                else
                                {
                                  v190 = 6;
                                }
                              }

                              else
                              {
                                v190 = 5;
                              }
                            }

                            else
                            {
                              v190 = 4;
                            }
                          }

                          else
                          {
                            v190 = 3;
                          }
                        }

                        else
                        {
                          v190 = 2;
                        }
                      }

                      else
                      {
                        v190 = 1;
                      }

                      v189 = *(&v471 + 1);
                      if ((v472 - DWORD2(v471)) >= v190)
                      {
                        v188 = v190;
                        goto LABEL_340;
                      }

                      if (!_PayloadScannerReadBytes(v467, v510 + 1, v190))
                      {
                        goto LABEL_374;
                      }
                    }

                    *v501 = 0;
                    VInt64_2873 = v2_readVInt64_2873(v510, v501);
                  }

LABEL_342:
                  v191 = *(&v471 + 1);
                  v192 = v468;
                  v193 = v179 + v178 + *(&v180 + 1) - v180;
                  v194 = v193 - v468;
                  if (v193 >= v468 && v468 - v471 + v472 >= v193)
                  {
                    *(&v471 + 1) = v471 + v194;
                    v197 = v468 - v471;
                    v196 = v471 + v194;
                    v198 = v472;
                    v195 = v468;
                  }

                  else
                  {
                    v195 = v179 + v178 + *(&v180 + 1) - v180;
                    v196 = v471;
                    *(&v471 + 1) = v471;
                    *&v472 = v471;
                    v197 = v193 - v471;
                    v468 = v195;
                    v198 = v471;
                  }

                  if (v196 + v197 != v193)
                  {
                    goto LABEL_760;
                  }

                  v199 = v191 - v471 + v192;
                  v200 = v199;
                  v201 = v193 - v199;
                  if (VInt64_2873 <= 1)
                  {
                    if (v201 <= 2)
                    {
                      v428 = __si_assert_copy_extra_2708(0);
                      v404 = v428;
                      v429 = "";
                      if (v428)
                      {
                        v429 = v428;
                      }

                      v441 = "positionLen > 2";
                      v443 = v429;
                      v406 = 962;
                      goto LABEL_791;
                    }

                    if (!v460)
                    {
                      v209 = v193 - v199;
                      memset(v510, 0, 32);
                      v210 = writeVInt64(v510, 0, v193 - v199);
                      v211 = v210;
                      if (v210)
                      {
                        v212 = v510;
                        do
                        {
                          while (1)
                          {
                            v214 = *(v11 + 32);
                            v215 = *(v11 + 40);
                            v216 = v215 - v214 >= v211 ? v211 : v215 - v214;
                            if (v215 == v214)
                            {
                              break;
                            }

                            memcpy((*(v11 + 48) + v214), v212, v216);
                            v217 = *(v11 + 40);
                            v218 = *(v11 + 32) + v216;
                            *(v11 + 32) = v218;
                            v212 = (v212 + v216);
                            if (v218 == v217)
                            {
                              break;
                            }

                            v211 -= v216;
                            if (!v211)
                            {
                              goto LABEL_367;
                            }
                          }

                          PayloadPulsesWrite(v11);
                          if (*(v11 + 60))
                          {
                            v213 = 1;
                          }

                          else
                          {
                            v213 = v211 == v216;
                          }

                          v211 -= v216;
                        }

                        while (!v213);
                      }

LABEL_367:
                      PayloadPulsesWriteBytesFromScanner(v11, v467, v200, v209);
                      goto LABEL_691;
                    }

                    v202 = v199 - v195;
                    if (v199 < v195 || v197 + v198 < v199)
                    {
                      v203 = v471;
                      v197 = v199 - v471;
                      *&v472 = v471;
                      v468 = v199;
                      v204 = v471;
                      v205 = v471;
                    }

                    else
                    {
                      v203 = v471 + v202;
                      v204 = (v471 + v202);
                      v205 = v198;
                    }

                    *(&v471 + 1) = v204;
                    if (v203 + v197 == v199)
                    {
                      BYTE4(v510[0]) = 0;
                      LODWORD(v510[0]) = 0;
                      v450 = v179 + v178 + *(&v180 + 1) - v180;
                      if (v204 >= v205)
                      {
                        if (!_PayloadScannerReadNextChar(v467, v510))
                        {
                          goto LABEL_473;
                        }

                        v219 = LOBYTE(v510[0]);
                        if ((v510[0] & 0x80) != 0)
                        {
                          goto LABEL_377;
                        }

LABEL_372:
                        v220 = 0;
                        v221 = *(&v471 + 1);
LABEL_386:
                        __memcpy_chk();
                        *(&v471 + 1) = v221 + v220;
                        v223 = v219;
                      }

                      else
                      {
                        *(&v471 + 1) = v204 + 1;
                        LOBYTE(v510[0]) = *v204;
                        v219 = LOBYTE(v510[0]);
                        if ((v510[0] & 0x80) == 0)
                        {
                          goto LABEL_372;
                        }

LABEL_377:
                        if (v219 >= 0xC0)
                        {
                          if (v219 >= 0xE0)
                          {
                            if (v219 < 0xF0)
                            {
                              v222 = 3;
                            }

                            else
                            {
                              v222 = 4;
                            }
                          }

                          else
                          {
                            v222 = 2;
                          }
                        }

                        else
                        {
                          v222 = 1;
                        }

                        v221 = *(&v471 + 1);
                        if ((v472 - DWORD2(v471)) >= v222)
                        {
                          v220 = v222;
                          goto LABEL_386;
                        }

                        if (!_PayloadScannerReadBytes(v467, v510 + 1, v222))
                        {
                          goto LABEL_473;
                        }

                        v223 = LOBYTE(v510[0]);
                      }

                      if ((v223 & 0x80) != 0)
                      {
                        if (v223 > 0xBF)
                        {
                          if (v223 > 0xDF)
                          {
                            if (v223 > 0xEF)
                            {
                              v223 = *(v510 + 1);
                            }

                            else
                            {
                              v223 = ((v223 & 0xF) << 24) | (BYTE1(v510[0]) << 16) | (BYTE2(v510[0]) << 8) | BYTE3(v510[0]);
                            }
                          }

                          else
                          {
                            v223 = ((v223 & 0x1F) << 16) | (BYTE1(v510[0]) << 8) | BYTE2(v510[0]);
                          }
                        }

                        else
                        {
                          v223 = BYTE1(v510[0]) | ((v223 & 0x3F) << 8);
                        }
                      }

                      if (!v223)
                      {
                        goto LABEL_473;
                      }

                      v224 = v223;
LABEL_397:
                      v225 = (*(&v471 + 1) - v471 + v468);
                      LOBYTE(v510[0]) = 0;
                      v226 = *(&v471 + 1);
                      while (1)
                      {
                        if (v226 >= v472)
                        {
                          if (!_PayloadScannerReadNextChar(v467, v510) || (v227 = LOBYTE(v510[0]), !LOBYTE(v510[0])))
                          {
LABEL_428:
                            v240 = v471;
                            v241 = v468;
                            if (*v460 > v224 && CFBitVectorGetBitAtIndex(*(v460 + 16), v224))
                            {
                              if (scratch_file_grow(v146, 2))
                              {
                                *(*(v146 + 24) + *(v146 + 8)) = 1;
                                v242 = 2;
                                goto LABEL_440;
                              }

LABEL_473:
                              if (scratch_file_grow(v146, 1))
                              {
                                *(*(v146 + 24) + (*(v146 + 8))++) = 0;
                              }

                              if (v468 + *(&v471 + 1) - v471 != v450 && !*(v146 + 32))
                              {
                                v438 = __si_assert_copy_extra_2708(0);
                                v404 = v438;
                                v439 = "";
                                if (v438)
                                {
                                  v439 = v438;
                                }

                                v441 = "processed==positionLen||scratch->err";
                                v443 = v439;
                                v406 = 988;
                                goto LABEL_791;
                              }

                              memset(v510, 0, 32);
                              v263 = *(v146 + 8);
                              v264 = writeVInt64(v510, 0, v263);
                              v265 = v264;
                              if (v264)
                              {
                                v266 = v510;
                                do
                                {
                                  while (1)
                                  {
                                    v268 = *(v11 + 32);
                                    v269 = *(v11 + 40);
                                    v270 = v269 - v268 >= v265 ? v265 : v269 - v268;
                                    if (v269 == v268)
                                    {
                                      break;
                                    }

                                    memcpy((*(v11 + 48) + v268), v266, v270);
                                    v271 = *(v11 + 40);
                                    v272 = *(v11 + 32) + v270;
                                    *(v11 + 32) = v272;
                                    v266 = (v266 + v270);
                                    if (v272 == v271)
                                    {
                                      break;
                                    }

                                    v265 -= v270;
                                    if (!v265)
                                    {
                                      goto LABEL_489;
                                    }
                                  }

                                  PayloadPulsesWrite(v11);
                                  if (*(v11 + 60))
                                  {
                                    v267 = 1;
                                  }

                                  else
                                  {
                                    v267 = v265 == v270;
                                  }

                                  v265 -= v270;
                                }

                                while (!v267);
LABEL_489:
                                v273 = *(v146 + 8);
                                if (!v273)
                                {
                                  goto LABEL_691;
                                }
                              }

                              else
                              {
                                v273 = v263;
                                if (!v263)
                                {
                                  goto LABEL_691;
                                }
                              }

                              v274 = *(v146 + 24);
                              do
                              {
                                while (1)
                                {
                                  v276 = *(v11 + 32);
                                  v277 = *(v11 + 40);
                                  v278 = v277 - v276 >= v273 ? v273 : v277 - v276;
                                  if (v277 == v276)
                                  {
                                    break;
                                  }

                                  memcpy((*(v11 + 48) + v276), v274, v278);
                                  v279 = *(v11 + 40);
                                  v280 = *(v11 + 32) + v278;
                                  *(v11 + 32) = v280;
                                  v274 += v278;
                                  if (v280 == v279)
                                  {
                                    break;
                                  }

                                  v273 -= v278;
                                  if (!v273)
                                  {
                                    goto LABEL_691;
                                  }
                                }

                                PayloadPulsesWrite(v11);
                                if (*(v11 + 60))
                                {
                                  v275 = 1;
                                }

                                else
                                {
                                  v275 = v273 == v278;
                                }

                                v273 -= v278;
                              }

                              while (!v275);
                              goto LABEL_691;
                            }

                            v243 = v241 + *(&v240 + 1) - &v225[v240];
                            v242 = v243;
                            if (!scratch_file_grow(v146, v243))
                            {
                              goto LABEL_473;
                            }

                            if (v225 >= v468 && v468 - v471 + v472 >= v225)
                            {
                              v244 = &v225[v471 - v468];
                              *(&v471 + 1) = v244;
                              v247 = v244;
                              v245 = v471;
                              v246 = v472;
                              v248 = v468;
                            }

                            else
                            {
                              *(&v471 + 1) = v471;
                              *&v472 = v471;
                              v244 = v471;
                              v245 = v471;
                              v246 = v471;
                              v247 = v471;
                              v248 = v225;
                              v468 = v225;
                            }

                            if (&v244[v248 - v245] != v225)
                            {
                              break;
                            }

                            v249 = v244;
                            v250 = *(v146 + 24);
                            v251 = *(v146 + 8);
                            if ((v246 - v249) < v243)
                            {
                              _PayloadScannerReadBytes(v467, (v250 + v251), v243);
                            }

                            else
                            {
                              memcpy((v250 + v251), v247, v243);
                              *(&v471 + 1) += v243;
                            }

LABEL_440:
                            *(v146 + 8) += v242;
                            BYTE4(v510[0]) = 0;
                            LODWORD(v510[0]) = 0;
                            v252 = *(&v471 + 1);
                            if (*(&v471 + 1) < v472)
                            {
                              ++*(&v471 + 1);
                              v253 = *v252;
                              LOBYTE(v510[0]) = v253;
                              v254 = v253;
                              if ((v253 & 0x80) == 0)
                              {
                                goto LABEL_442;
                              }

LABEL_445:
                              v257 = 2;
                              v258 = 3;
                              if (v254 >= 0xF0)
                              {
                                v258 = 4;
                              }

                              if (v254 >= 0xE0)
                              {
                                v257 = v258;
                              }

                              if (v254 >= 0xC0)
                              {
                                v255 = v257;
                              }

                              else
                              {
                                v255 = 1;
                              }

                              v256 = *(&v471 + 1);
                              if ((v472 - DWORD2(v471)) >= v255)
                              {
                                goto LABEL_453;
                              }

                              if (_PayloadScannerReadBytes(v467, v510 + 1, v255))
                              {
                                v259 = LOBYTE(v510[0]);
                                if ((v510[0] & 0x80) != 0)
                                {
                                  goto LABEL_457;
                                }

                                goto LABEL_464;
                              }

LABEL_469:
                              v259 = 0;
                              goto LABEL_464;
                            }

                            if (!_PayloadScannerReadNextChar(v467, v510))
                            {
                              goto LABEL_469;
                            }

                            v254 = LOBYTE(v510[0]);
                            if ((v510[0] & 0x80) != 0)
                            {
                              goto LABEL_445;
                            }

LABEL_442:
                            v255 = 0;
                            v256 = *(&v471 + 1);
LABEL_453:
                            __memcpy_chk();
                            *(&v471 + 1) = v256 + v255;
                            v259 = v254;
                            if ((v254 & 0x80) != 0)
                            {
LABEL_457:
                              if (v259 > 0xBF)
                              {
                                if (v259 > 0xDF)
                                {
                                  if (v259 > 0xEF)
                                  {
                                    v259 = *(v510 + 1);
                                  }

                                  else
                                  {
                                    v259 = ((v259 & 0xF) << 24) | (BYTE1(v510[0]) << 16) | (BYTE2(v510[0]) << 8) | BYTE3(v510[0]);
                                  }
                                }

                                else
                                {
                                  v259 = ((v259 & 0x1F) << 16) | (BYTE1(v510[0]) << 8) | BYTE2(v510[0]);
                                }
                              }

                              else
                              {
                                v259 = BYTE1(v510[0]) | ((v259 & 0x3F) << 8);
                              }
                            }

LABEL_464:
                            v260 = v259;
                            v261 = v224 >= v259;
                            v262 = v224 - v259;
                            if (v262 == 0 || !v261)
                            {
                              v426 = __si_assert_copy_extra_2708(0);
                              v404 = v426;
                              v427 = "";
                              if (v426)
                              {
                                v427 = v426;
                              }

                              v441 = "!delta||delta<docId";
                              v443 = v427;
                              v406 = 981;
                              goto LABEL_791;
                            }

                            if (!v260)
                            {
                              goto LABEL_473;
                            }

                            v224 = v262;
                            if (!v262)
                            {
                              goto LABEL_473;
                            }

                            goto LABEL_397;
                          }
                        }

                        else
                        {
                          *(&v471 + 1) = v226 + 1;
                          LOBYTE(v510[0]) = *v226;
                          v227 = LOBYTE(v510[0]);
                          if (!LOBYTE(v510[0]))
                          {
                            goto LABEL_428;
                          }
                        }

                        if ((v227 & 0x80) != 0)
                        {
                          v228 = 2;
                          v229 = 3;
                          v230 = 4;
                          v231 = 5;
                          v232 = 6;
                          v233 = 7;
                          if (v227 == 255)
                          {
                            v233 = 8;
                          }

                          if (v227 >= 0xFE)
                          {
                            v232 = v233;
                          }

                          if (v227 >= 0xFC)
                          {
                            v231 = v232;
                          }

                          if (v227 >= 0xF8)
                          {
                            v230 = v231;
                          }

                          if (v227 >= 0xF0)
                          {
                            v229 = v230;
                          }

                          if (v227 >= 0xE0)
                          {
                            v228 = v229;
                          }

                          if (v227 >= 0xC0)
                          {
                            v234 = v228;
                          }

                          else
                          {
                            v234 = 1;
                          }

                          v226 = (*(&v471 + 1) + v234);
                          if (v472 < *(&v471 + 1) + v234)
                          {
                            v235 = v468;
                            v236 = v234 + *(&v471 + 1) + v468 - v471;
                            v237 = v236 - v468;
                            if (v236 >= v468 && v468 + v472 - v471 >= v236)
                            {
                              v239 = v471 + v237;
                              *(&v471 + 1) = v471 + v237;
                              v238 = (v471 + v237);
                            }

                            else
                            {
                              v235 = v236;
                              *(&v471 + 1) = v471;
                              *&v472 = v471;
                              v238 = v471;
                              v468 = v236;
                              v239 = v471;
                            }

                            v226 = v238;
                            if (v239 - v471 + v235 != v236)
                            {
                              break;
                            }
                          }

                          else
                          {
                            *(&v471 + 1) += v234;
                          }
                        }

                        else
                        {
                          v226 = *(&v471 + 1);
                        }
                      }
                    }

LABEL_760:
                    v409 = __si_assert_copy_extra_2708(0);
                    v396 = v409;
                    v410 = "";
                    if (v409)
                    {
                      v410 = v409;
                    }

                    v440 = "PayloadScannerPosition(scanner) == position";
                    v442 = v410;
                    v398 = 100;
                    goto LABEL_769;
                  }

                  v449 = v179 + v178 + *(&v180 + 1) - v180;
                  *(v455 + 12) = 0;
                  *(v455 + 16) = 0;
                  if (v201 < 3)
                  {
                    goto LABEL_505;
                  }

                  v206 = v201 - 1;
                  v207 = v455;
                  v208 = v199;
LABEL_504:
                  PositionRunInfoListAdd(v207, v208, v206);
LABEL_505:
                  v281 = VInt64_2873 >> 1;
                  v510[0] = v482;
                  v510[1] = VInt64_2873 >> 1;
                  v282 = storageResolvePtr(v482, VInt64_2873 >> 1, 20, 0);
                  v510[4] = 0;
                  v510[2] = v282;
                  v510[3] = 0;
                  VInt64_2873 = v2_readVInt64_2873(v282, &v510[3]);
                  if (VInt64_2873)
                  {
                    v413 = __si_assert_copy_extra_2708(0);
                    v396 = v413;
                    v414 = "";
                    if (v413)
                    {
                      v414 = v413;
                    }

                    v440 = "!(next & 0x01)";
                    v442 = v414;
                    v398 = 862;
                    goto LABEL_769;
                  }

                  v283 = v510[3];
                  v284 = v510[3] + 1;
                  v285 = v510[2] + v510[3];
                  v286 = *(v510[2] + v510[3]);
                  if ((*(v510[2] + v510[3]) & 0x80000000) == 0)
                  {
                    if (*(v510[2] + v510[3]))
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_513;
                  }

                  if (v286 <= 0xBF)
                  {
                    v286 = *(v510[2] + v284) | ((v286 & 0x3F) << 8);
                    v284 = v510[3] + 2;
                    if (v286)
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_513;
                  }

                  if (v286 <= 0xDF)
                  {
                    v286 = ((v286 & 0x1F) << 16) | (*(v510[2] + v284) << 8) | *(v285 + 2);
                    v284 = v510[3] + 3;
                    if (v286)
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_513;
                  }

                  if (v286 <= 0xEF)
                  {
                    v286 = ((v286 & 0xF) << 24) | (*(v510[2] + v284) << 16) | (*(v285 + 2) << 8) | *(v285 + 3);
                    v284 = v510[3] + 4;
                    if (v286)
                    {
                      goto LABEL_508;
                    }

LABEL_513:
                    v291 = v284 + 1;
                    v292 = v510[2] + v284;
                    v293 = *(v510[2] + v284);
                    if (*(v510[2] + v284) < 0)
                    {
                      if (v293 > 0xBF)
                      {
                        if (v293 > 0xDF)
                        {
                          if (v293 > 0xEF)
                          {
                            v294 = *(v510[2] + v291);
                            v291 = v284 + 5;
                          }

                          else
                          {
                            v294 = ((v293 & 0xF) << 24) | (*(v510[2] + v291) << 16) | (*(v292 + 2) << 8) | *(v292 + 3);
                            v291 = v284 + 4;
                          }
                        }

                        else
                        {
                          v294 = ((v293 & 0x1F) << 16) | (*(v510[2] + v291) << 8) | *(v292 + 2);
                          v291 = v284 + 3;
                        }
                      }

                      else
                      {
                        v294 = *(v510[2] + v291) | ((v293 & 0x3F) << 8);
                        v291 = v284 + 2;
                      }
                    }

                    else
                    {
                      v294 = *(v510[2] + v284);
                    }

                    v313 = v294;
                    v303 = v291;
                    if (v313)
                    {
                      v422 = __si_assert_copy_extra_2708(0);
                      v404 = v422;
                      v423 = "";
                      if (v422)
                      {
                        v423 = v422;
                      }

                      v441 = "position == 0";
                      v443 = v423;
                      v406 = 873;
                      goto LABEL_791;
                    }

LABEL_578:
                    v314 = v303 - v283;
                    v206 = v314 - 1;
                    if (v314 <= 1)
                    {
                      v416 = __si_assert_copy_extra_2708(0);
                      v404 = v416;
                      v417 = "";
                      if (v416)
                      {
                        v417 = v416;
                      }

                      v441 = "data_len >= 2";
                      v443 = v417;
                      v406 = 1015;
                      goto LABEL_791;
                    }

                    if (!VInt64_2873)
                    {
                      if (v314 == 2)
                      {
                        v434 = __si_assert_copy_extra_2708(0);
                        v404 = v434;
                        v435 = "";
                        if (v434)
                        {
                          v435 = v434;
                        }

                        v441 = "data_len > 2";
                        v443 = v435;
                        v406 = 1017;
                        goto LABEL_791;
                      }

                      v315 = v455;
                      PositionRunInfoListAdd(v455, v283 + v281, v314);
                      if (!v460)
                      {
                        memset(v510, 0, 32);
                        v350 = writeVInt64(v510, 0, *(v455 + 16));
                        v351 = v350;
                        if (v350)
                        {
                          v352 = v510;
                          do
                          {
                            while (1)
                            {
                              v354 = *(v11 + 32);
                              v355 = *(v11 + 40);
                              v356 = v355 - v354 >= v351 ? v351 : v355 - v354;
                              if (v355 == v354)
                              {
                                break;
                              }

                              memcpy((*(v11 + 48) + v354), v352, v356);
                              v357 = *(v11 + 40);
                              v358 = *(v11 + 32) + v356;
                              *(v11 + 32) = v358;
                              v352 = (v352 + v356);
                              if (v358 == v357)
                              {
                                break;
                              }

                              v351 -= v356;
                              if (!v351)
                              {
                                goto LABEL_663;
                              }
                            }

                            PayloadPulsesWrite(v11);
                            if (*(v11 + 60))
                            {
                              v353 = 1;
                            }

                            else
                            {
                              v353 = v351 == v356;
                            }

                            v351 -= v356;
                          }

                          while (!v353);
                        }

LABEL_663:
                        v359 = v455;
                        if (!*(v455 + 12))
                        {
                          goto LABEL_691;
                        }

                        v360 = 0;
                        while (1)
                        {
                          v361 = storageResolvePtr(v482, *(*v359 + 16 * v360), *(*v359 + 16 * v360 + 8), 1);
                          if (*(*v359 + 16 * v360 + 8))
                          {
                            v362 = v361;
                            v363 = *(*v359 + 16 * v360 + 8);
                            do
                            {
                              while (1)
                              {
                                v365 = *(v11 + 32);
                                v366 = *(v11 + 40);
                                v367 = v366 - v365 >= v363 ? v363 : v366 - v365;
                                if (v366 == v365)
                                {
                                  break;
                                }

                                memcpy((*(v11 + 48) + v365), v362, v367);
                                v368 = *(v11 + 40);
                                v369 = *(v11 + 32) + v367;
                                *(v11 + 32) = v369;
                                v362 += v367;
                                if (v369 == v368)
                                {
                                  break;
                                }

                                v363 -= v367;
                                if (!v363)
                                {
                                  goto LABEL_665;
                                }
                              }

                              PayloadPulsesWrite(v11);
                              if (*(v11 + 60))
                              {
                                v364 = 1;
                              }

                              else
                              {
                                v364 = v363 == v367;
                              }

                              v363 -= v367;
                            }

                            while (!v364);
                          }

LABEL_665:
                          ++v360;
                          v359 = v455;
                          if (v360 >= *(v455 + 12))
                          {
                            goto LABEL_691;
                          }
                        }
                      }

                      if (*(v455 + 12))
                      {
                        v316 = 0;
                        do
                        {
                          v317 = v316;
                          v318 = (*v315 + 16 * v316);
                          v319 = v318[1];
                          v320 = storageResolvePtr(v482, *v318, v319, 1);
                          v321 = v320;
                          v322 = v320;
                          v323 = *v320;
                          v445 = v317;
                          if ((v323 & 0x80) != 0)
                          {
                            if (v323 > 0xBF)
                            {
                              if (v323 > 0xDF)
                              {
                                if (v323 > 0xEF)
                                {
                                  v323 = *(v320 + 1);
                                  v324 = 5;
                                  if (v323)
                                  {
LABEL_600:
                                    v325 = v323;
                                    v326 = v324;
                                    while (1)
                                    {
                                      v327 = v326;
                                      if (v326 < v319)
                                      {
                                        v328 = v326;
                                        while (1)
                                        {
                                          v330 = v322[v328];
                                          if (!v322[v328])
                                          {
                                            break;
                                          }

                                          if ((v330 & 0x80) != 0)
                                          {
                                            v331 = 3;
                                            v332 = 4;
                                            if (v330 >= 0xF0)
                                            {
                                              v332 = 5;
                                            }

                                            if (v330 >= 0xE0)
                                            {
                                              v331 = v332;
                                            }

                                            if (v330 >= 0xC0)
                                            {
                                              v329 = v331;
                                            }

                                            else
                                            {
                                              v329 = 2;
                                            }
                                          }

                                          else
                                          {
                                            v329 = 1;
                                          }

                                          v328 += v329;
                                          v327 = v328;
                                          if (v328 >= v319)
                                          {
                                            goto LABEL_615;
                                          }
                                        }

                                        v327 = v328 + 1;
                                      }

LABEL_615:
                                      if (*v460 > v325 && CFBitVectorGetBitAtIndex(*(v460 + 16), v325))
                                      {
                                        if (!scratch_file_grow(v146, 2))
                                        {
                                          goto LABEL_586;
                                        }

                                        *(*(v146 + 24) + *(v146 + 8)) = 1;
                                        v333 = 2;
                                      }

                                      else
                                      {
                                        v333 = v327 - v326;
                                        if (!scratch_file_grow(v146, v327 - v326))
                                        {
                                          goto LABEL_586;
                                        }

                                        memcpy((*(v146 + 24) + *(v146 + 8)), &v321[v326], v327 - v326);
                                      }

                                      *(v146 + 8) += v333;
                                      v334 = v327 + 1;
                                      v335 = &v321[v327];
                                      v336 = v321[v327];
                                      if (v321[v327] < 0)
                                      {
                                        if (v336 > 0xBF)
                                        {
                                          if (v336 > 0xDF)
                                          {
                                            if (v336 > 0xEF)
                                            {
                                              v336 = *&v322[v334];
                                              v334 = v327 + 5;
                                            }

                                            else
                                            {
                                              v336 = ((v336 & 0xF) << 24) | (v322[v334] << 16) | (v335[2] << 8) | v335[3];
                                              v334 = v327 + 4;
                                            }
                                          }

                                          else
                                          {
                                            v336 = ((v336 & 0x1F) << 16) | (v322[v334] << 8) | v335[2];
                                            v334 = v327 + 3;
                                          }
                                        }

                                        else
                                        {
                                          v336 = v322[v334] | ((v336 & 0x3F) << 8);
                                          v334 = v327 + 2;
                                        }
                                      }

                                      v337 = v336;
                                      v261 = v325 >= v336;
                                      v338 = v325 - v336;
                                      if (v338 == 0 || !v261)
                                      {
                                        break;
                                      }

                                      if (v337)
                                      {
                                        v325 = v338;
                                        v326 = v334;
                                        if (v338)
                                        {
                                          continue;
                                        }
                                      }

                                      goto LABEL_586;
                                    }

                                    v401 = __si_assert_copy_extra_2708(0);
                                    v396 = v401;
                                    v402 = "";
                                    if (v401)
                                    {
                                      v402 = v401;
                                    }

                                    v440 = "!delta||delta<docId";
                                    v442 = v402;
                                    v398 = 1061;
LABEL_769:
                                    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", v398, v440, v442);
                                    free(v396);
                                    if (__valid_fs(-1))
                                    {
                                      v415 = 2989;
                                    }

                                    else
                                    {
                                      v415 = 3072;
                                    }

                                    *v415 = -559038737;
                                    abort();
                                  }
                                }

                                else
                                {
                                  v323 = ((v323 & 0xF) << 24) | (v320[1] << 16) | (v320[2] << 8) | v320[3];
                                  v324 = 4;
                                  if (v323)
                                  {
                                    goto LABEL_600;
                                  }
                                }
                              }

                              else
                              {
                                v323 = ((v323 & 0x1F) << 16) | (v320[1] << 8) | v320[2];
                                v324 = 3;
                                if (v323)
                                {
                                  goto LABEL_600;
                                }
                              }
                            }

                            else
                            {
                              v324 = 2;
                              v323 = v322[1] | ((v323 & 0x3F) << 8);
                              if (v323)
                              {
                                goto LABEL_600;
                              }
                            }
                          }

                          else
                          {
                            v324 = 1;
                            if (v323)
                            {
                              goto LABEL_600;
                            }
                          }

LABEL_586:
                          v316 = v445 + 1;
                          v315 = v455;
                        }

                        while (v445 + 1 < *(v455 + 12));
                      }

                      if (scratch_file_grow(v146, 1))
                      {
                        *(*(v146 + 24) + (*(v146 + 8))++) = 0;
                      }

                      if (v468 + *(&v471 + 1) - v471 != v449)
                      {
                        v436 = __si_assert_copy_extra_2708(0);
                        v396 = v436;
                        v437 = "";
                        if (v436)
                        {
                          v437 = v436;
                        }

                        v440 = "processed==positionLen";
                        v442 = v437;
                        v398 = 1069;
                        goto LABEL_769;
                      }

                      memset(v510, 0, 32);
                      v339 = *(v146 + 8);
                      v340 = writeVInt64(v510, 0, v339);
                      v341 = v340;
                      if (v340)
                      {
                        v342 = v510;
                        do
                        {
                          while (1)
                          {
                            v344 = *(v11 + 32);
                            v345 = *(v11 + 40);
                            v346 = v345 - v344 >= v341 ? v341 : v345 - v344;
                            if (v345 == v344)
                            {
                              break;
                            }

                            memcpy((*(v11 + 48) + v344), v342, v346);
                            v347 = *(v11 + 40);
                            v348 = *(v11 + 32) + v346;
                            *(v11 + 32) = v348;
                            v342 = (v342 + v346);
                            if (v348 == v347)
                            {
                              break;
                            }

                            v341 -= v346;
                            if (!v341)
                            {
                              goto LABEL_649;
                            }
                          }

                          PayloadPulsesWrite(v11);
                          if (*(v11 + 60))
                          {
                            v343 = 1;
                          }

                          else
                          {
                            v343 = v341 == v346;
                          }

                          v341 -= v346;
                        }

                        while (!v343);
LABEL_649:
                        v349 = *(v146 + 8);
                        if (!v349)
                        {
                          goto LABEL_691;
                        }
                      }

                      else
                      {
                        v349 = v339;
                        if (!v339)
                        {
                          goto LABEL_691;
                        }
                      }

                      v370 = *(v146 + 24);
                      do
                      {
                        while (1)
                        {
                          v372 = *(v11 + 32);
                          v373 = *(v11 + 40);
                          v374 = v373 - v372 >= v349 ? v349 : v373 - v372;
                          if (v373 == v372)
                          {
                            break;
                          }

                          memcpy((*(v11 + 48) + v372), v370, v374);
                          v375 = *(v11 + 40);
                          v376 = *(v11 + 32) + v374;
                          *(v11 + 32) = v376;
                          v370 += v374;
                          if (v376 == v375)
                          {
                            break;
                          }

                          v349 -= v374;
                          if (!v349)
                          {
                            goto LABEL_691;
                          }
                        }

                        PayloadPulsesWrite(v11);
                        if (*(v11 + 60))
                        {
                          v371 = 1;
                        }

                        else
                        {
                          v371 = v349 == v374;
                        }

                        v349 -= v374;
                      }

                      while (!v371);
LABEL_691:
                      v96 = v453;
                      if (*(v11 + 60))
                      {
                        goto LABEL_699;
                      }

                      if (!v460)
                      {
                        goto LABEL_263;
                      }

                      v159 = *(v146 + 32);
                      if (!v159)
                      {
                        v377 = *(v146 + 8);
                        if (v377 > 0x100000)
                        {
                          v378 = *(v146 + 24);
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

                          msync(v378, v377, 2);
                          v96 = v453;
                        }

                        *(v146 + 8) = 0;
LABEL_263:
                        v160 = v451 + 1;
                        if (v451 + 1 != v452)
                        {
                          continue;
                        }

LABEL_699:
                        if (v460)
                        {
                          v159 = *(v146 + 32);
                          v122 = v146;
                          v379 = v146;
                          if (!v159)
                          {
                            goto LABEL_705;
                          }

                          goto LABEL_703;
                        }

LABEL_710:
                        v32 = v96;
                        v37 = v94;
                        goto LABEL_711;
                      }

                      v122 = v146;
LABEL_703:
                      v379 = v122;
                      if (!*(v11 + 60))
                      {
                        *(v11 + 60) = v159;
                      }

LABEL_705:
                      v380 = *(v379 + 24);
                      if (v380 != -1)
                      {
                        munmap(v380, *v379);
                      }

                      v381 = *(v379 + 16);
                      if (v381 != -1)
                      {
                        close(v381);
                      }

                      free(v379);
                      goto LABEL_710;
                    }

                    if (v314 != 2)
                    {
                      v208 = v283 + v281;
                      v207 = v455;
                      goto LABEL_504;
                    }

                    goto LABEL_505;
                  }

                  break;
                }

                v286 = *(v510[2] + v284);
                v284 = v510[3] + 5;
                if (!v286)
                {
                  goto LABEL_513;
                }

LABEL_508:
                if (v460)
                {
                  v287 = v284 + 1;
                  v288 = v510[2] + v284;
                  v289 = *(v510[2] + v284);
                  if (*(v510[2] + v284) < 0)
                  {
                    if (v289 > 0xBF)
                    {
                      if (v289 > 0xDF)
                      {
                        if (v289 > 0xEF)
                        {
                          v290 = *(v510[2] + v287);
                          v287 = v284 + 5;
                        }

                        else
                        {
                          v290 = ((v289 & 0xF) << 24) | (*(v510[2] + v287) << 16) | (*(v288 + 2) << 8) | *(v288 + 3);
                          v287 = v284 + 4;
                        }
                      }

                      else
                      {
                        v290 = ((v289 & 0x1F) << 16) | (*(v510[2] + v287) << 8) | *(v288 + 2);
                        v287 = v284 + 3;
                      }
                    }

                    else
                    {
                      v290 = *(v510[2] + v287) | ((v289 & 0x3F) << 8);
                      v287 = v284 + 2;
                    }
                  }

                  else
                  {
                    v290 = *(v510[2] + v284);
                  }

                  v284 = v287;
                  v286 = v290;
                  if (!v290)
                  {
                    v420 = __si_assert_copy_extra_2708(0);
                    v404 = v420;
                    v421 = "";
                    if (v420)
                    {
                      v421 = v420;
                    }

                    v441 = "position != 0";
                    v443 = v421;
                    v406 = 877;
                    goto LABEL_791;
                  }
                }

                v295 = v510[0];
                v296 = v510[1];
                v297 = v284;
                v298 = v286;
                while (2)
                {
                  v304 = storageResolvePtr(v295, v296, v297 + 10, 0);
                  v300 = v297 + 1;
                  v305 = v304 + v297;
                  v299 = *(v304 + v297);
                  if ((v299 & 0x80) == 0)
                  {
                    if (!*(v304 + v297))
                    {
                      goto LABEL_543;
                    }

LABEL_539:
                    v301 = v298 - v299;
                    if (v298 < v299)
                    {
                      v395 = __si_assert_copy_extra_2708(0);
                      v396 = v395;
                      v397 = "";
                      if (v395)
                      {
                        v397 = v395;
                      }

                      v440 = "delta <= position";
                      v442 = v397;
                      v398 = 883;
                      goto LABEL_769;
                    }

LABEL_540:
                    v302 = v301;
                    v297 = v300;
                    v303 = v300;
                    v298 = v302;
                    if (!v302)
                    {
                      goto LABEL_578;
                    }

                    continue;
                  }

                  break;
                }

                if (v299 <= 0xBF)
                {
                  v299 = *(v304 + v300) | ((v299 & 0x3F) << 8);
                  v300 = v297 + 2;
                  if (!v299)
                  {
                    goto LABEL_543;
                  }

                  goto LABEL_539;
                }

                if (v299 > 0xDF)
                {
                  if (v299 > 0xEF)
                  {
                    v299 = *(v304 + v300);
                    v300 = v297 + 5;
                    if (v299)
                    {
                      goto LABEL_539;
                    }
                  }

                  else
                  {
                    v299 = ((v299 & 0xF) << 24) | (*(v304 + v300) << 16) | (*(v305 + 2) << 8) | *(v305 + 3);
                    v300 = v297 + 4;
                    if (v299)
                    {
                      goto LABEL_539;
                    }
                  }
                }

                else
                {
                  v299 = ((v299 & 0x1F) << 16) | (*(v304 + v300) << 8) | *(v305 + 2);
                  v300 = v297 + 3;
                  if (v299)
                  {
                    goto LABEL_539;
                  }
                }

LABEL_543:
                v306 = v300 + 1;
                v307 = v304 + v300;
                v308 = *(v304 + v300);
                if (*(v304 + v300) < 0)
                {
                  if (v308 <= 0xBF)
                  {
                    v309 = *(v304 + v306) | ((v308 & 0x3F) << 8);
                    v300 += 2;
                    if (!v460)
                    {
                      goto LABEL_568;
                    }

                    goto LABEL_565;
                  }

                  if (v308 <= 0xDF)
                  {
                    v309 = ((v308 & 0x1F) << 16) | (*(v304 + v306) << 8) | *(v307 + 2);
                    v300 += 3;
                    if (!v460)
                    {
                      goto LABEL_568;
                    }

                    goto LABEL_565;
                  }

                  if (v308 <= 0xEF)
                  {
                    v309 = ((v308 & 0xF) << 24) | (*(v304 + v306) << 16) | (*(v307 + 2) << 8) | *(v307 + 3);
                    v300 += 4;
                    if (!v460)
                    {
                      goto LABEL_568;
                    }

                    goto LABEL_565;
                  }

                  v309 = *(v304 + v306);
                  v300 += 5;
                  if (v460)
                  {
                    goto LABEL_565;
                  }
                }

                else
                {
                  ++v300;
                  v309 = v308;
                  if (!v460)
                  {
                    goto LABEL_568;
                  }

LABEL_565:
                  if (v309)
                  {
                    v310 = v300 + 1;
                    v311 = v304 + v300;
                    v312 = *(v304 + v300);
                    if (*(v304 + v300) < 0)
                    {
                      if (v312 > 0xBF)
                      {
                        if (v312 > 0xDF)
                        {
                          if (v312 > 0xEF)
                          {
                            v301 = *(v304 + v310);
                            v300 += 5;
                          }

                          else
                          {
                            v301 = ((v312 & 0xF) << 24) | (*(v304 + v310) << 16) | (*(v311 + 2) << 8) | *(v311 + 3);
                            v300 += 4;
                          }
                        }

                        else
                        {
                          v301 = ((v312 & 0x1F) << 16) | (*(v304 + v310) << 8) | *(v311 + 2);
                          v300 += 3;
                        }
                      }

                      else
                      {
                        v301 = *(v304 + v310) | ((v312 & 0x3F) << 8);
                        v300 += 2;
                      }
                    }

                    else
                    {
                      ++v300;
                      v301 = v312;
                    }

                    goto LABEL_540;
                  }
                }

LABEL_568:
                v301 = v309;
                goto LABEL_540;
              }

              v122[8] = *__error();
              v153 = *__error();
              v158 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
              {
LABEL_253:
                *__error() = v153;
                goto LABEL_254;
              }

              v386 = v122[8];
              *v501 = 136315906;
              *&v501[4] = "scratch_file_create";
              v502 = 1024;
              v503 = 1916;
              v504 = 1024;
              v505 = v386;
              v506 = 1024;
              v507 = 0x8000;
              v156 = v158;
              v157 = "%s:%d: mmap err:%d size:%d";
            }

            _os_log_error_impl(&dword_1C278D000, v156, OS_LOG_TYPE_ERROR, v157, v501, 0x1Eu);
            goto LABEL_253;
          }

LABEL_254:
          v145 = v92;
          if (!*v122)
          {
            close(v122[4]);
            v122[4] = -1;
            if (!v122[8])
            {
              v122[8] = -1;
            }
          }

          goto LABEL_257;
        }

        v97 = *(&v471 + 1);
        v446 = v471;
        v447 = v468;
        LOWORD(v510[1]) = 0;
        v510[0] = 0;
        if (*(&v471 + 1) >= v472)
        {
          if (!_PayloadScannerReadNextChar(v467, v510))
          {
            goto LABEL_164;
          }

          v98 = LOBYTE(v510[0]);
          if ((v510[0] & 0x80) == 0)
          {
LABEL_117:
            v99 = 0;
            v100 = *(&v471 + 1);
            goto LABEL_137;
          }
        }

        else
        {
          ++*(&v471 + 1);
          LOBYTE(v510[0]) = *v97;
          v98 = LOBYTE(v510[0]);
          if ((v510[0] & 0x80) == 0)
          {
            goto LABEL_117;
          }
        }

        if (v98 >= 0xC0)
        {
          if (v98 >= 0xE0)
          {
            if (v98 >= 0xF0)
            {
              if (v98 >= 0xF8)
              {
                if (v98 >= 0xFC)
                {
                  if (v98 >= 0xFE)
                  {
                    if (v98 == 255)
                    {
                      v101 = 8;
                    }

                    else
                    {
                      v101 = 7;
                    }
                  }

                  else
                  {
                    v101 = 6;
                  }
                }

                else
                {
                  v101 = 5;
                }
              }

              else
              {
                v101 = 4;
              }
            }

            else
            {
              v101 = 3;
            }
          }

          else
          {
            v101 = 2;
          }
        }

        else
        {
          v101 = 1;
        }

        v100 = *(&v471 + 1);
        if ((v472 - DWORD2(v471)) < v101)
        {
          if ((_PayloadScannerReadBytes(v467, v510 + 1, v101) & 1) == 0)
          {
            goto LABEL_164;
          }

          goto LABEL_138;
        }

        v99 = v101;
LABEL_137:
        __memcpy_chk();
        *(&v471 + 1) = v100 + v99;
LABEL_138:
        *v501 = 0;
        if ((v2_readVInt64_2873(v510, v501) & 1) == 0)
        {
          goto LABEL_164;
        }

        LOWORD(v510[1]) = 0;
        v510[0] = 0;
        v102 = *(&v471 + 1);
        if (*(&v471 + 1) >= v472)
        {
          if (!_PayloadScannerReadNextChar(v467, v510))
          {
            goto LABEL_164;
          }

          v103 = LOBYTE(v510[0]);
          if ((v510[0] & 0x80) == 0)
          {
LABEL_141:
            v104 = 0;
            v105 = *(&v471 + 1);
LABEL_163:
            __memcpy_chk();
            *(&v471 + 1) = v105 + v104;
            goto LABEL_164;
          }
        }

        else
        {
          ++*(&v471 + 1);
          v103 = *v102;
          LOBYTE(v510[0]) = v103;
          if ((v103 & 0x80) == 0)
          {
            goto LABEL_141;
          }
        }

        if (v103 >= 0xC0)
        {
          if (v103 >= 0xE0)
          {
            if (v103 >= 0xF0)
            {
              if (v103 >= 0xF8)
              {
                if (v103 >= 0xFC)
                {
                  if (v103 >= 0xFE)
                  {
                    if (v103 == 255)
                    {
                      v106 = 8;
                    }

                    else
                    {
                      v106 = 7;
                    }
                  }

                  else
                  {
                    v106 = 6;
                  }
                }

                else
                {
                  v106 = 5;
                }
              }

              else
              {
                v106 = 4;
              }
            }

            else
            {
              v106 = 3;
            }
          }

          else
          {
            v106 = 2;
          }
        }

        else
        {
          v106 = 1;
        }

        v105 = *(&v471 + 1);
        if ((v472 - DWORD2(v471)) >= v106)
        {
          v104 = v106;
          goto LABEL_163;
        }

        _PayloadScannerReadBytes(v467, v510 + 1, v106);
LABEL_164:
        PayloadScannerSkipPositionsData(v467);
        v94 = v94;
        if (v92 >= v94)
        {
          v474 = 0;
          v117 = reallocf(v93, 12 * (2 * v94));
          if (!v117)
          {
            goto LABEL_728;
          }

          v93 = v117;
          v474 = v117;
          v94 = (2 * v94);
        }

        v107 = uint32_map_get(v462, v57);
        *&v93[12 * v92] = v107;
        if (!v107)
        {
          v403 = __si_assert_copy_extra_2708(0);
          v404 = v403;
          v405 = "";
          if (v403)
          {
            v405 = v403;
          }

          v441 = "reorderInfo[reorderCount].newTermId";
          v443 = v405;
          v406 = 1550;
          goto LABEL_791;
        }

        v108 = v97 - v446 + v447;
        v109 = &v93[12 * v92];
        v110 = *(&v471 + 1);
        v111 = v468 + *(&v471 + 1) - v471;
        v112 = v468 + DWORD2(v471) - v471 - v108;
        *(v109 + 1) = v108 - v448;
        *(v109 + 2) = v112;
        if (v111 < v469)
        {
          BYTE4(v510[0]) = 0;
          LODWORD(v510[0]) = 0;
          if (v110 >= v472)
          {
            if (_PayloadScannerReadNextChar(v467, v510))
            {
              v114 = LOBYTE(v510[0]);
              if ((v510[0] & 0x80) != 0)
              {
                goto LABEL_174;
              }

LABEL_169:
              v115 = 0;
              v116 = *(&v471 + 1);
LABEL_182:
              __memcpy_chk();
              *(&v471 + 1) = v116 + v115;
              v120 = v114;
              if ((v114 & 0x80) != 0)
              {
LABEL_183:
                if (v120 > 0xBF)
                {
                  if (v120 > 0xDF)
                  {
                    if (v120 > 0xEF)
                    {
                      v120 = *(v510 + 1);
                    }

                    else
                    {
                      v120 = ((v120 & 0xF) << 24) | (BYTE1(v510[0]) << 16) | (BYTE2(v510[0]) << 8) | BYTE3(v510[0]);
                    }
                  }

                  else
                  {
                    v120 = ((v120 & 0x1F) << 16) | (BYTE1(v510[0]) << 8) | BYTE2(v510[0]);
                  }
                }

                else
                {
                  v120 = BYTE1(v510[0]) | ((v120 & 0x3F) << 8);
                }
              }

LABEL_190:
              v95 = v120 + v57;
              goto LABEL_113;
            }
          }

          else
          {
            *(&v471 + 1) = v110 + 1;
            v113 = *v110;
            LOBYTE(v510[0]) = v113;
            v114 = v113;
            if ((v113 & 0x80) == 0)
            {
              goto LABEL_169;
            }

LABEL_174:
            v118 = 2;
            v119 = 3;
            if (v114 >= 0xF0)
            {
              v119 = 4;
            }

            if (v114 >= 0xE0)
            {
              v118 = v119;
            }

            if (v114 >= 0xC0)
            {
              v115 = v118;
            }

            else
            {
              v115 = 1;
            }

            v116 = *(&v471 + 1);
            if ((v472 - DWORD2(v471)) >= v115)
            {
              goto LABEL_182;
            }

            if (_PayloadScannerReadBytes(v467, v510 + 1, v115))
            {
              v120 = LOBYTE(v510[0]);
              if ((v510[0] & 0x80) != 0)
              {
                goto LABEL_183;
              }

              goto LABEL_190;
            }
          }

          v120 = 0;
          goto LABEL_190;
        }

        v95 = 0;
LABEL_113:
        ++v92;
        v57 = v95;
        if (v95 >= v461)
        {
          goto LABEL_748;
        }
      }
    }

    v60 = 0;
    while (1)
    {
      v62 = v60;
      if (!v57)
      {
        break;
      }

      v64 = v471;
      v63 = DWORD2(v471);
      v65 = v468;
      if (PayloadScannerReadVInt64(v467))
      {
        VInt32 = PayloadScannerReadVInt32(v467);
        v67 = v468 + VInt32 + *(&v471 + 1) - v471;
        if (v67 > v469)
        {
          v411 = __si_assert_copy_extra_2708(0);
          v396 = v411;
          v412 = "";
          if (v411)
          {
            v412 = v411;
          }

          v440 = "PayloadScannerPosition(s) + runLength <= s->end";
          v442 = v412;
          v398 = 732;
          goto LABEL_769;
        }

        v68 = VInt32 + *(&v471 + 1) - v471;
        if (v67 >= v468 && v468 - v471 + v472 >= v67)
        {
          *(&v471 + 1) += VInt32;
          v69 = v471 + v68;
          v70 = v468 - v471;
        }

        else
        {
          *(&v471 + 1) = v471;
          *&v472 = v471;
          v69 = v471;
          v468 = v67;
          v70 = v67 - v471;
        }

        if (v69 + v70 != v67)
        {
          goto LABEL_760;
        }
      }

      else if ((PayloadScannerReadVInt64(v467) & 1) == 0 && !PayloadScannerReadVInt32(v467) && PayloadScannerReadVInt32(v467) >= 3)
      {
        v424 = __si_assert_copy_extra_2708(0);
        v404 = v424;
        v425 = "";
        if (v424)
        {
          v425 = v424;
        }

        v441 = "type >= 0 && type <= 2";
        v443 = v425;
        v406 = 741;
        goto LABEL_791;
      }

      if (v62 >= v37)
      {
        v37 = (2 * v37);
        v474 = 0;
        v88 = reallocf(v40, 12 * v37);
        if (!v88)
        {
          goto LABEL_728;
        }

        v474 = v88;
        v71 = v88;
      }

      else
      {
        v71 = v40;
      }

      v72 = uint32_map_get(v462, v57);
      v73 = &v71[12 * v62];
      *v73 = v72;
      if (v72)
      {
        v74 = v63 - v64 + v65;
        v75 = v471;
        v76 = v468 + *(&v471 + 1);
        v77 = *(&v471 + 1);
        v78 = v468 + DWORD2(v471) - v471 - v74;
        v60 = (v62 + 1);
        *(v73 + 1) = v74 - v448;
        *(v73 + 2) = v78;
        v79 = v76;
        v80 = v75;
        v81 = v77;
      }

      else
      {
        v82 = *__error();
        v83 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v510[0]) = 136315650;
          *(v510 + 4) = "PayloadPulsesReorder";
          WORD2(v510[1]) = 1024;
          *(&v510[1] + 6) = 1515;
          WORD1(v510[2]) = 1024;
          HIDWORD(v510[2]) = v57;
          _os_log_error_impl(&dword_1C278D000, v83, OS_LOG_TYPE_ERROR, "%s:%d: compact missing termID %u", v510, 0x18u);
        }

        *__error() = v82;
        v81 = *(&v471 + 1);
        v80 = v471;
        v79 = v468 + *(&v471 + 1);
        v60 = v62;
      }

      if (v79 - v80 < v469)
      {
        BYTE4(v510[0]) = 0;
        LODWORD(v510[0]) = 0;
        if (v81 >= v472)
        {
          if (_PayloadScannerReadNextChar(v467, v510))
          {
            v85 = LOBYTE(v510[0]);
            if ((v510[0] & 0x80) != 0)
            {
              goto LABEL_90;
            }

LABEL_85:
            v86 = 0;
            v87 = *(&v471 + 1);
LABEL_98:
            __memcpy_chk();
            *(&v471 + 1) = v87 + v86;
            v91 = v85;
            if ((v85 & 0x80) != 0)
            {
LABEL_99:
              if (v91 > 0xBF)
              {
                if (v91 > 0xDF)
                {
                  if (v91 > 0xEF)
                  {
                    v91 = *(v510 + 1);
                  }

                  else
                  {
                    v91 = ((v91 & 0xF) << 24) | (BYTE1(v510[0]) << 16) | (BYTE2(v510[0]) << 8) | BYTE3(v510[0]);
                  }
                }

                else
                {
                  v91 = ((v91 & 0x1F) << 16) | (BYTE1(v510[0]) << 8) | BYTE2(v510[0]);
                }
              }

              else
              {
                v91 = BYTE1(v510[0]) | ((v91 & 0x3F) << 8);
              }
            }

LABEL_106:
            v61 = v91 + v57;
            goto LABEL_62;
          }
        }

        else
        {
          *(&v471 + 1) = v81 + 1;
          v84 = *v81;
          LOBYTE(v510[0]) = v84;
          v85 = v84;
          if ((v84 & 0x80) == 0)
          {
            goto LABEL_85;
          }

LABEL_90:
          v89 = 2;
          v90 = 3;
          if (v85 >= 0xF0)
          {
            v90 = 4;
          }

          if (v85 >= 0xE0)
          {
            v89 = v90;
          }

          if (v85 >= 0xC0)
          {
            v86 = v89;
          }

          else
          {
            v86 = 1;
          }

          v87 = *(&v471 + 1);
          if ((v472 - DWORD2(v471)) >= v86)
          {
            goto LABEL_98;
          }

          if (_PayloadScannerReadBytes(v467, v510 + 1, v86))
          {
            v91 = LOBYTE(v510[0]);
            if ((v510[0] & 0x80) != 0)
            {
              goto LABEL_99;
            }

            goto LABEL_106;
          }
        }

        v91 = 0;
        goto LABEL_106;
      }

      v61 = 0;
LABEL_62:
      v57 = v61;
      v40 = v71;
      if (v61 >= v461)
      {
        v407 = __si_assert_copy_extra_2708(0);
        v404 = v407;
        v408 = "";
        if (v407)
        {
          v408 = v407;
        }

        v441 = "termId < maxTermId";
        v443 = v408;
        v406 = 1300;
        goto LABEL_791;
      }
    }

    if (!DWORD2(v472))
    {
      v444 = v60;
      mergesort(v40, v60, 0xCuLL, PayloadReorderInfoCompare);
      if (v60)
      {
        v126 = 0;
        v127 = v448;
        while (1)
        {
          v128 = &v40[12 * v126];
          v129 = v127 + v128[1];
          v130 = v468;
          if (v129 >= v468 && v468 + v472 - v471 >= v129)
          {
            v131 = v471 + v129 - v468;
            *(&v471 + 1) = v131;
          }

          else
          {
            v130 = v127 + v128[1];
            *(&v471 + 1) = v471;
            *&v472 = v471;
            v468 = v129;
            v131 = v471;
          }

          if (v130 + v131 - v471 != v129)
          {
            break;
          }

          v132 = *v128;
          v133 = *(v11 + 24) + 32 * (*(v11 + 16) - 1);
          if (*(v133 + 16))
          {
            v134 = *v128 - *(v133 + 20);
          }

          else
          {
            *(v133 + 16) = v132;
            v134 = v132;
          }

          memset(v510, 0, 32);
          if (v134 > 0x7F)
          {
            if (v134 >> 14)
            {
              if (v134 >> 21)
              {
                if (v134 >> 28)
                {
                  LOBYTE(v510[0]) = -16;
                  *(v510 + 1) = v134;
                  v136 = 5;
                }

                else
                {
                  LOBYTE(v510[0]) = HIBYTE(v134) | 0xE0;
                  BYTE1(v510[0]) = BYTE2(v134);
                  BYTE2(v510[0]) = BYTE1(v134);
                  BYTE3(v510[0]) = v134;
                  v136 = 4;
                }
              }

              else
              {
                LOBYTE(v510[0]) = BYTE2(v134) | 0xC0;
                BYTE1(v510[0]) = BYTE1(v134);
                BYTE2(v510[0]) = v134;
                v136 = 3;
              }
            }

            else
            {
              LOBYTE(v510[0]) = BYTE1(v134) | 0x80;
              BYTE1(v510[0]) = v134;
              v136 = 2;
            }

            v135 = v136;
          }

          else
          {
            LOBYTE(v510[0]) = v134;
            v135 = 1;
          }

          v137 = v510;
          v138 = v135;
          do
          {
            while (1)
            {
              v140 = *(v11 + 32);
              v141 = *(v11 + 40);
              v142 = v141 - v140 >= v138 ? v138 : v141 - v140;
              if (v141 == v140)
              {
                break;
              }

              memcpy((*(v11 + 48) + v140), v137, v142);
              v143 = *(v11 + 40);
              v144 = *(v11 + 32) + v142;
              *(v11 + 32) = v144;
              v137 = (v137 + v142);
              if (v144 == v143)
              {
                break;
              }

              v138 -= v142;
              if (!v138)
              {
                goto LABEL_205;
              }
            }

            PayloadPulsesWrite(v11);
            if (*(v11 + 60))
            {
              v139 = 1;
            }

            else
            {
              v139 = v138 == v142;
            }

            v138 -= v142;
          }

          while (!v139);
LABEL_205:
          *(v133 + 20) = v132;
          v127 = v448;
          PayloadPulsesWriteBytesFromScanner(v11, v467, v448 + v128[1], v128[2]);
          if (++v126 == v444)
          {
            goto LABEL_202;
          }
        }

LABEL_776:
        v418 = __si_assert_copy_extra_2708(0);
        v404 = v418;
        v419 = "";
        if (v418)
        {
          v419 = v418;
        }

        v441 = "PayloadScannerPosition(scanner) == position";
        v443 = v419;
        v406 = 100;
LABEL_791:
        __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", v406, v441, v443);
        free(v404);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

LABEL_202:
    v32 = v40;
LABEL_711:
    if (DWORD2(v472))
    {
      v382 = 1;
    }

    else
    {
      v382 = *(v11 + 60) == 0;
    }

    if (v382)
    {
      v383 = DWORD2(v472);
    }

    else
    {
      v383 = *(v11 + 60);
    }

    v473 = 0;
    if (v471)
    {
      free(v471);
      *&v471 = 0;
    }

    PayloadPulsesWrite(v11);
    v38 = (*(v11 + 24) + 32 * (*(v11 + 16) - 1));
    v38[1] = *(v11 + 8) - *v38;
    v38[2] = 0;
    v36 = v454 + 1;
    v39 = v383;
    if (!v383)
    {
      continue;
    }

    break;
  }

LABEL_730:
  v26 = v39;
  CICleanUpReset(v457, v456);
  v388 = threadData[9 * v477 + 1] + 320 * v476;
  *(v388 + 312) = v458;
  v389 = *(v388 + 232);
  if (v389)
  {
    v389(*(v388 + 288));
  }

  dropThreadId(v477, 0, add_explicit + 1);
LABEL_733:
  storageClose(v482);
  v390 = *(v466 + 15);
  if (v26)
  {
    v391 = 1;
  }

  else
  {
    v391 = v390 == 0;
  }

  if (v391)
  {
    v390 = v26;
  }

  v392 = *(v11 + 60);
  if (v390)
  {
    v393 = 1;
  }

  else
  {
    v393 = v392 == 0;
  }

  if (v393)
  {
    result = v390;
  }

  else
  {
    result = v392;
  }

LABEL_744:
  v394 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PayloadScannerReadVInt32_v2(uint64_t a1)
{
  memset(v9, 0, 5);
  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 64))
  {
    if (!_PayloadScannerReadNextChar(a1, v9))
    {
      return 0;
    }

    v3 = LOBYTE(v9[0]);
    if ((v9[0] & 0x80) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 56) = v2 + 1;
    LOBYTE(v9[0]) = *v2;
    v3 = LOBYTE(v9[0]);
    if ((v9[0] & 0x80) == 0)
    {
LABEL_3:
      v4 = 0;
      v5 = *(a1 + 56);
      goto LABEL_14;
    }
  }

  v6 = 2;
  v7 = 3;
  if (v3 >= 0xF0)
  {
    v7 = 4;
  }

  if (v3 >= 0xE0)
  {
    v6 = v7;
  }

  if (v3 >= 0xC0)
  {
    v4 = v6;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 56);
  if ((*(a1 + 64) - v5) >= v4)
  {
LABEL_14:
    __memcpy_chk();
    *(a1 + 56) = v5 + v4;
    if ((v3 & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_15;
  }

  if (!_PayloadScannerReadBytes(a1, v9 + 1, v4))
  {
    return 0;
  }

  v3 = LOBYTE(v9[0]);
  if ((v9[0] & 0x80) == 0)
  {
    return v3;
  }

LABEL_15:
  if (v3 <= 0xBF)
  {
    return BYTE1(v9[0]) | ((v3 & 0x3F) << 8);
  }

  if (v3 <= 0xDF)
  {
    return ((v3 & 0x1F) << 16) | (BYTE1(v9[0]) << 8) | BYTE2(v9[0]);
  }

  if (v3 > 0xEF)
  {
    return *(v9 + 1);
  }

  return ((v3 & 0xF) << 24) | (BYTE1(v9[0]) << 16) | (BYTE2(v9[0]) << 8) | HIBYTE(v9[0]);
}

uint64_t PayloadPulsesAppend(void *a1, uint64_t a2, int a3, char a4, char a5)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    VInt64 = PayloadScannerReadVInt64(a1);
    v8 = a1[7] - a1[6] + a1[3];
    if (VInt64)
    {
      VInt32 = PayloadScannerReadVInt32(a1);
      if (a1[3] + VInt32 + a1[7] - a1[6] <= a1[4])
      {
        v22 = 5;
        v23 = 4;
        v24 = 3;
        if (VInt32 < 0x80)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (!(VInt32 >> 14))
        {
          v24 = v25;
        }

        if (!(VInt32 >> 21))
        {
          v23 = v24;
        }

        if (!(VInt32 >> 28))
        {
          v22 = v23;
        }

        v9 = v22 + VInt32;
        LOBYTE(v69) = 1;
        v26 = &v69;
        do
        {
          v29 = *(a2 + 32);
          v28 = *(a2 + 40);
          if (v28 != v29)
          {
            v30 = *v26++;
            *(*(a2 + 48) + v29) = v30;
            v31 = *(a2 + 40);
            v32 = *(a2 + 32) + 1;
            *(a2 + 32) = v32;
            if (v32 != v31)
            {
              break;
            }
          }

          PayloadPulsesWrite(a2);
        }

        while (!*(a2 + 60) && v28 == v29);
        goto LABEL_36;
      }

      v47 = __si_assert_copy_extra_2708(0);
      v48 = v47;
      v49 = "";
      if (v47)
      {
        v49 = v47;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 786, "PayloadScannerPosition(s) + docInfoLength <= s->end", v49);
    }

    else
    {
      if ((PayloadScannerReadVInt64(a1) & 1) != 0 || PayloadScannerReadVInt32(a1) || PayloadScannerReadVInt32(a1) < 3)
      {
        v9 = a1[3] + a1[7] - a1[6] - v8;
        LOBYTE(v69) = 0;
        v10 = &v69;
        do
        {
          v13 = *(a2 + 32);
          v12 = *(a2 + 40);
          if (v12 != v13)
          {
            v14 = *v10++;
            *(*(a2 + 48) + v13) = v14;
            v15 = *(a2 + 40);
            v16 = *(a2 + 32) + 1;
            *(a2 + 32) = v16;
            if (v16 != v15)
            {
              break;
            }
          }

          PayloadPulsesWrite(a2);
        }

        while (!*(a2 + 60) && v12 == v13);
LABEL_36:
        v33 = *MEMORY[0x1E69E9840];
        v34 = a2;
        v35 = a1;
        v20 = v8;
        v19 = v9;
LABEL_42:

        return PayloadPulsesWriteBytesFromScanner(v34, v35, v20, v19);
      }

      v65 = __si_assert_copy_extra_2708(0);
      v48 = v65;
      v66 = "";
      if (v65)
      {
        v66 = v65;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 801, "_type >= 0 && _type <= 2", v66);
    }

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

  v67 = 0;
  if (a5)
  {
    if (a4)
    {
      v17 = PayloadScannerReadVInt64(a1);
      v18 = *MEMORY[0x1E69E9840];
      v19 = v17;
      v20 = a1[3] + a1[7] - a1[6];
    }

    else
    {
      v41 = a1[3];
      v43 = a1[6];
      v42 = a1[7];
      v44 = PayloadScannerReadVInt64(a1);
      v45 = *MEMORY[0x1E69E9840];
      v20 = v42 - v43 + v41;
      v19 = v44 + *(a1 + 6) + *(a1 + 14) - *(a1 + 12) - v20;
    }

    v34 = a2;
    v35 = a1;
    goto LABEL_42;
  }

  v70 = 0;
  v69 = 0;
  v36 = a1[7];
  if (v36 >= a1[8])
  {
    v38 = a4;
    if (!_PayloadScannerReadNextChar(a1, &v69))
    {
      goto LABEL_91;
    }

    v37 = v69;
    a4 = v38;
    if ((v69 & 0x80) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    a1[7] = v36 + 1;
    v37 = *v36;
    LOBYTE(v69) = v37;
    if ((v37 & 0x80) == 0)
    {
LABEL_39:
      v38 = a4;
      v39 = 0;
      v40 = a1[7];
LABEL_68:
      __memcpy_chk();
      a1[7] = v40 + v39;
      goto LABEL_69;
    }
  }

  if (v37 >= 0xC0)
  {
    if (v37 >= 0xE0)
    {
      if (v37 >= 0xF0)
      {
        if (v37 >= 0xF8)
        {
          if (v37 >= 0xFC)
          {
            if (v37 >= 0xFE)
            {
              if (v37 == 255)
              {
                v39 = 8;
              }

              else
              {
                v39 = 7;
              }
            }

            else
            {
              v39 = 6;
            }
          }

          else
          {
            v39 = 5;
          }
        }

        else
        {
          v39 = 4;
        }
      }

      else
      {
        v39 = 3;
      }
    }

    else
    {
      v39 = 2;
    }
  }

  else
  {
    v39 = 1;
  }

  v40 = a1[7];
  v38 = a4;
  if ((*(a1 + 16) - v40) >= v39)
  {
    goto LABEL_68;
  }

  if ((_PayloadScannerReadBytes(a1, &v69 + 1, v39) & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_69:
  v68 = 0;
  if (v2_readVInt64_2873(&v69, &v68))
  {
    v70 = 0;
    v69 = 0;
    v51 = a1[7];
    if (v51 >= a1[8])
    {
      v51 = &v69;
      if (!_PayloadScannerReadNextChar(a1, &v69))
      {
        goto LABEL_91;
      }
    }

    else
    {
      a1[7] = v51 + 1;
    }

    if (*v51 < 0)
    {
      v54 = *v51;
      if (v54 >= 0xC0)
      {
        if (v54 >= 0xE0)
        {
          if (v54 >= 0xF0)
          {
            if (v54 >= 0xF8)
            {
              if (v54 >= 0xFC)
              {
                if (v54 >= 0xFE)
                {
                  if (v54 == 255)
                  {
                    v52 = 8;
                  }

                  else
                  {
                    v52 = 7;
                  }
                }

                else
                {
                  v52 = 6;
                }
              }

              else
              {
                v52 = 5;
              }
            }

            else
            {
              v52 = 4;
            }
          }

          else
          {
            v52 = 3;
          }
        }

        else
        {
          v52 = 2;
        }
      }

      else
      {
        v52 = 1;
      }

      v53 = a1[7];
      if ((*(a1 + 16) - v53) < v52)
      {
        _PayloadScannerReadBytes(a1, &v69 + 1, v52);
        goto LABEL_91;
      }
    }

    else
    {
      v52 = 0;
      v53 = a1[7];
    }

    __memcpy_chk();
    a1[7] = v53 + v52;
  }

LABEL_91:
  v55 = a1[7] - a1[6] + a1[3];
  PayloadScannerSkipPositionsData(a1);
  v56 = a1[3] + a1[7] - a1[6];
  if ((v38 & 1) == 0)
  {
    v57 = &v67;
    do
    {
      v60 = *(a2 + 32);
      v59 = *(a2 + 40);
      if (v59 != v60)
      {
        v61 = *v57++;
        *(*(a2 + 48) + v60) = v61;
        v62 = *(a2 + 40);
        v63 = *(a2 + 32) + 1;
        *(a2 + 32) = v63;
        if (v63 != v62)
        {
          break;
        }
      }

      PayloadPulsesWrite(a2);
    }

    while (!*(a2 + 60) && v59 == v60);
  }

  result = PayloadPulsesWriteBytesFromScanner(a2, a1, v55, v56 - v55);
  v64 = *MEMORY[0x1E69E9840];
  return result;
}