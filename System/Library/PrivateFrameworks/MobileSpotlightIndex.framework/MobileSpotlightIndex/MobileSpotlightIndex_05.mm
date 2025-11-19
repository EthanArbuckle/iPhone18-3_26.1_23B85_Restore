uint64_t CICleanUpPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &threadData[9 * a1];
  v7 = *(v5 + 8);
  v6 = *(v5 + 9);
  if (v7 >= v6)
  {
    if (v6)
    {
      v9 = 2 * v6;
    }

    else
    {
      v9 = 4;
    }

    *(v5 + 9) = v9;
    v8 = malloc_type_realloc(v5[6], 16 * v9, 0x80040803F642BuLL);
    v5[6] = v8;
    if (!*(v5 + 9))
    {
      v12 = __si_assert_copy_extra_332();
      v13 = v12;
      v14 = "";
      if (v12)
      {
        v14 = v12;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexExceptionHandler.c", 1571, "td->cleanUpSize", v14);
      free(v13);
      if (__valid_fs(-1))
      {
        v15 = 2989;
      }

      else
      {
        v15 = 3072;
      }

      *v15 = -559038737;
      abort();
    }

    v7 = *(v5 + 8);
  }

  else
  {
    v8 = v5[6];
  }

  v10 = &v8[16 * v7];
  *v10 = a2;
  *(v10 + 1) = a3;
  *(v5 + 8) = v7 + 1;
  return v7;
}

uint64_t gatherIndexInfo(SISearchCtx_METADATA *a1, uint64_t a2, int a3)
{
  v240 = a3;
  v275 = *MEMORY[0x1E69E9840];
  v248 = a1;
  v5 = *__error();
  v6 = _SILogForLogForCategory(1);
  v7 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_1C278D000, v6, v7, "%p Start gatherIndexInfo", buf, 0xCu);
  }

  *__error() = v5;
  CFAbsoluteTimeGetCurrent();
  __dmb(0xBu);
  v8 = v248;
  v9 = *(v248 + 3);
  v10 = *(v9 + 1400);
  if (*(v248 + 69) == v10)
  {
    v11 = *(v248 + 73);
    if (v11)
    {
      v12 = *(v9 + 1384);
      if (v11 != v12)
      {
        *(v248 + 73) = v12;
        *(v8 + 70) = *(v12 + 8);
        cleanUp(v8);
        v9 = *(v8 + 3);
      }
    }

    v13 = *(v8 + 72);
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = *(v9 + 1392);
    if (v13 == v14)
    {
      goto LABEL_15;
    }

    *(v8 + 72) = v14;
    *(v8 + 71) = *(v14 + 8);
  }

  else
  {
    *(v248 + 69) = v10;
    if (*(v8 + 72))
    {
      v15 = *(v9 + 1392);
      *(v8 + 72) = v15;
      *(v8 + 71) = *(v15 + 8);
    }

    if (*(v8 + 70))
    {
      v16 = *(v9 + 1384);
      *(v8 + 73) = v16;
      *(v8 + 70) = *(v16 + 8);
    }
  }

  cleanUp(v8);
  v17 = *(v8 + 3);
LABEL_15:
  v18 = *(v8 + 113);
  kdebug_trace();
  Log = _MDPerf_QueryLog();
  v20 = *(v8 + 1);
  if (v20 + 1 >= 2)
  {
    v38 = Log;
    if (os_signpost_enabled(Log))
    {
      v39 = *(v20 + 608);
      v40 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v39;
      *&buf[12] = 1024;
      *&buf[14] = v40;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v20, "QueryGatherIndexInfo", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", buf, 0x12u);
    }
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v211 = *__error();
    v212 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v212, OS_LOG_TYPE_DEFAULT, "Get doc set!", buf, 2u);
    }

    *__error() = v211;
  }

  v239 = a2;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v22 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(v8 + 3) + 1192), 0x40000000, add_explicit + 1);
  v24 = v23;
  v25 = v22;
  v26 = HIDWORD(v22);
  v28 = v27;
  v29 = threadData[9 * v22 + 1] + 320 * HIDWORD(v22);
  *(v29 + 216) = 0;
  v241 = *(v29 + 312);
  v30 = *(v29 + 224);
  if (v30)
  {
    v30(*(v29 + 288));
  }

  v247 = v25;
  v246 = v26;
  v245 = v28;
  v244 = v24;
  v31 = _setjmp(v29);
  if (v31)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v29 + 312) = v241;
    CIOnThreadCleanUpReset(v244);
    dropThreadId(v247, 1, add_explicit + 1);
    CICleanUpReset(v247, v245);
    v34 = 0;
    goto LABEL_212;
  }

  v35 = *(v8 + 593);
  v242 = add_explicit;
  if (v35)
  {
    v36 = 0;
    v37 = v8;
    goto LABEL_109;
  }

  v236 = &buf[16];
  v237 = v252;
  v235 = &v259;
  v238 = 0;
  *&v32 = 134218240;
  *&v33 = 134218240;
  v233 = v33;
  v234 = v33;
  v231 = v32;
  v232 = v33;
  v230 = 32;
  v229 = 256;
  v228 = 1538202858;
  v227 = 16;
  *&v32 = 134217984;
  v226 = v32;
  v225 = 2761365124;
  v41 = v8;
  v42 = 0;
  while (1)
  {
    v43 = *(*(v41 + 105) + 32);
    if (v43 && *(v43 + 48))
    {
      goto LABEL_98;
    }

    if (*(v41 + 70) <= 0 && *(v41 + 71) < 1)
    {
      goto LABEL_98;
    }

    if (*(*(v41 + 13) + 96))
    {
      goto LABEL_98;
    }

    v44 = *(v41 + 13);
    do
    {
      v45 = v44;
      v44 = *(v44 + 80);
    }

    while (v44);
    if (*(*(v45 + 8) + 12))
    {
LABEL_98:
      v37 = v41;
      v36 = v42;
      goto LABEL_109;
    }

    v223 = v215;
    v46 = *(v41 + 208);
    MEMORY[0x1EEE9AC00](v31);
    v224 = v215 - ((v47 + 15) & 0xFFFFFFFF0);
    bzero(v224, v47);
    v48 = v239;
    if (*(v41 + 208))
    {
      v49 = 32;
      v50 = 0;
      do
      {
        if (v48 && (v51 = *(v48 + 8 * v50)) != 0 || (v51 = *(*(v41 + 105) + v49)) != 0)
        {
          atomic_fetch_add(v51, 1u);
        }

        *&v224[8 * v50] = v51;
        v52 = *(v41 + 105);
        v53 = *(v52 + v49);
        if (v53)
        {
          ContentIndexDocSetCleanupBorrowedChildren(v53);
          ContentIndexDocSetDispose(*(*(v41 + 105) + v49));
          v52 = *(v41 + 105);
        }

        *(v52 + v49) = 0;
        ++v50;
        v49 += 48;
      }

      while (v50 < *(v41 + 208));
    }

    v54 = v41;
    if (v42)
    {
      ContentIndexDocSetContextRelease(v42);
      v54 = v248;
    }

    v55 = *(v54 + 70);
    if (v55)
    {
      v56 = v55 - 1;
      *(v54 + 70) = v56;
      v57 = *(**(v54 + 73) + 8 * v56);
      v58 = *__error();
      v59 = _SILogForLogForCategory(1);
      v60 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v54 + 70);
        *buf = v232;
        *&buf[4] = v54;
        *&buf[12] = 2048;
        *&buf[14] = v61;
        _os_log_impl(&dword_1C278D000, v59, v60, "%p gII live: %ld", buf, 0x16u);
      }

      *__error() = v58;
      if (!*(v54 + 70))
      {
        v62 = *(v54 + 3);
        v63 = *(v62 + 1392);
        *(v54 + 72) = v63;
        *(v54 + 71) = *(v63 + 8);
        *(v54 + 69) = *(v62 + 1400);
      }

      v64 = v57;
      v65 = v224;
    }

    else
    {
      v64 = *(v54 + 71);
      if (!v64)
      {
        v65 = v224;
        goto LABEL_62;
      }

      *(v54 + 71) = v64 - 1;
      v66 = *__error();
      v67 = _SILogForLogForCategory(1);
      v68 = 2 * (dword_1EBF46AD0 < 4);
      v69 = os_log_type_enabled(v67, v68);
      v65 = v224;
      if (v69)
      {
        v70 = *(v54 + 71);
        *buf = v231;
        *&buf[4] = v54;
        *&buf[12] = 2048;
        *&buf[14] = v70;
        _os_log_impl(&dword_1C278D000, v67, v68, "%p gII scan: %ld", buf, 0x16u);
      }

      *__error() = v66;
      v64 = *(**(v54 + 72) + 8 * *(v54 + 71));
    }

    if (*(v54 + 592) == 1 && v64 && *(v64 + 56) == *(v54 + 149))
    {
      *(v54 + 593) = 1;
    }

LABEL_62:
    v222 = v64;
    v71 = *__error();
    v72 = _SILogForLogForCategory(1);
    v73 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v72, v73))
    {
      *buf = v234;
      *&buf[4] = v54;
      *&buf[12] = 2048;
      *&buf[14] = v222;
      _os_log_impl(&dword_1C278D000, v72, v73, "%p gatherIndexInfo at %p", buf, 0x16u);
    }

    *__error() = v71;
    Current = CFAbsoluteTimeGetCurrent();
    if (*(v54 + 46))
    {
      v75 = v54;
    }

    else
    {
      v243 = v230;
      *(v54 + 47) = 0;
      if (*MEMORY[0x1E69E9AC8] <= 0xFFuLL)
      {
        ++sTotal;
      }

      v76 = malloc_type_zone_calloc(queryZone, 1uLL, v229, v228);
      if (!v76)
      {
        _log_fault_for_malloc_failure();
      }

      *(v54 + 46) = v76;
      v250[4] = v238;
      memset(v250, 0, 32);
      si_opt_cache_init(v250, *(v54 + 2));
      if (*(v54 + 208))
      {
        v77 = 0;
        v78 = *(v54 + 3);
        v219 = MEMORY[0x1E69E9820];
        v220 = v54 + 376;
        v218 = __preIterateQueryForIndex_block_invoke;
        v217 = MEMORY[0x1E69E9820];
        v216 = __preIterateQueryForIndex_block_invoke_167;
        v79 = 0;
        v80 = v76;
        do
        {
          v215[0] = v79;
          v81 = *(v54 + 105) + v77;
          v249 = *(v81 + 40);
          v82 = *(v54 + 2);
          v83 = v238;
          v253 = v238;
          v254 = &v253;
          v255 = 0x2000000000;
          v256 = v80;
          v84 = v227;
          if (!*(v78 + 2073))
          {
            v84 = v238;
          }

          if (*(v78 + 2072))
          {
            v85 = -124;
          }

          else
          {
            v85 = 12;
          }

          v251[0] = v219;
          v251[1] = 0x40000000;
          v252[0] = v218;
          v252[1] = &__block_descriptor_tmp_166;
          v252[2] = v78;
          *buf = v217;
          *&buf[8] = 0x40000000;
          *&buf[16] = v216;
          v263 = &unk_1E8196448;
          v266 = v84;
          v267 = v220;
          v264 = &v253;
          v265 = v250;
          v273 = v77 == 0;
          v268 = &v243;
          v269 = &v249;
          v270 = v78;
          v271 = v222;
          v272 = v82;
          v274 = v85;
          v86 = CICleanUpThreadLoc();
          db_string_table_rdlock(*(v78 + 1192));
          CIOnThreadCleanUpPush(v86, db_string_table_unlock, *(v78 + 1192));
          v87 = *v81;
          v257 = MEMORY[0x1E69E9820];
          v258 = 0x40000000;
          v259 = __db_query_tree_apply_block_block_invoke;
          v260 = &unk_1E8198ED0;
          v261 = v251;
          db_query_tree_apply_block_with_meta(v87, &v257, v83);
          db_optimize_query_tree(v81);
          v88 = *v81;
          v257 = MEMORY[0x1E69E9820];
          v258 = 0x40000000;
          v259 = __db_query_tree_apply_block_block_invoke;
          v260 = &unk_1E8198ED0;
          v261 = buf;
          db_query_tree_apply_block_with_meta(v88, &v257, v83);
          CIOnThreadCleanUpPop(v86);
          v76 = v254[3];
          _Block_object_dispose(&v253, 8);
          if (v249 == 1)
          {
            *(v54 + 641) = 1;
            v89 = *(v54 + 105) + v77;
            if (*(v89 + 40) != 1)
            {
              *(v54 + 642) = 0;
              *(v89 + 40) = 1;
            }
          }

          v79 = v215[0] + 1;
          v77 += 48;
          v80 = v76;
        }

        while (v215[0] + 1 < *(v54 + 208));
        v75 = v248;
        v65 = v224;
      }

      else
      {
        v75 = v54;
      }

      si_opt_cache_destroy(v250);
      *(v54 + 46) = v76;
    }

    v215[1] = v223;
    v90 = *(v75 + 1);
    *(v90 + 392) = *(v90 + 392) + CFAbsoluteTimeGetCurrent() - Current;
    v91 = CFAbsoluteTimeGetCurrent();
    v92 = *(v75 + 47);
    v93 = v92;
    v94 = CICleanUpThreadLoc();
    v257 = v75;
    v258 = v65;
    v95 = v94;
    v96 = CICleanUpPush(v94, cleanupDocSets, &v257);
    v221 = v96;
    if (v92 <= 0x400)
    {
      v97 = *(v75 + 47);
      MEMORY[0x1EEE9AC00](v96);
      v99 = v215 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v99, v98);
      v100 = *(v75 + 47);
      MEMORY[0x1EEE9AC00](v101);
      v103 = v215 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v103, v102);
      v104 = v222;
      v105 = processNodes(v75, v222, v65, v99, v103, v93);
      if (!v105)
      {
        v123 = *__error();
        v124 = _SILogForLogForCategory(1);
        v125 = 2 * (dword_1EBF46AD0 < 4);
        v126 = os_log_type_enabled(v124, v125);
        add_explicit = v242;
        if (v126)
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v124, v125, "Got NULL context from processNodes", buf, 2u);
        }

        *__error() = v123;
        goto LABEL_108;
      }

      v106 = v99;
      v107 = v105;
      evaluateFuzzyQuery(v75, v104, v106);
      v36 = v107;
      add_explicit = v242;
      goto LABEL_92;
    }

    v108 = *__error();
    v109 = _SILogForLogForCategory(1);
    v110 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v109, v110))
    {
      v111 = *(v75 + 208);
      *buf = v233;
      *&buf[4] = v92;
      *&buf[12] = 2048;
      *&buf[14] = v111;
      _os_log_impl(&dword_1C278D000, v109, v110, "alloc %ld cinodes for %ld noded", buf, 0x16u);
    }

    *__error() = v108;
    v112 = malloc_type_zone_malloc(queryZone, 16 * v92, v225);
    if (!v112)
    {
      break;
    }

    v113 = v112;
    v114 = &v112[v92];
    v115 = v222;
    v116 = processNodes(v75, v222, v65, v112, v114, v93);
    add_explicit = v242;
    if (!v116)
    {
      v131 = *__error();
      v132 = _SILogForLogForCategory(1);
      v133 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v132, v133))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v132, v133, "Got NULL context from processNodes", buf, 2u);
      }

      *__error() = v131;
      free(v113);
      goto LABEL_108;
    }

    v36 = v116;
    evaluateFuzzyQuery(v75, v115, v113);
    free(v113);
LABEL_92:
    CFAbsoluteTimeGetCurrent();
    v37 = v248;
    v117 = *(v248 + 1);
    *(v117 + 400) = *(v117 + 400) + CFAbsoluteTimeGetCurrent() - v91;
    v118 = *__error();
    v119 = _SILogForLogForCategory(1);
    v120 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v119, v120))
    {
      v121 = CFAbsoluteTimeGetCurrent();
      *buf = v226;
      *&buf[4] = v121 - v91;
      _os_log_impl(&dword_1C278D000, v119, v120, "Computed doc set in %f seconds!", buf, 0xCu);
    }

    v122 = v221;
    *__error() = v118;
    CICleanUpClearItem(v95, v122);
    cleanupDocSets(&v257);
    if (*(v37 + 593) == 1)
    {
      *(v37 + 35) = 0u;
    }

    v41 = v37;
    v42 = v36;
    if (*(v37 + 593))
    {
      goto LABEL_109;
    }
  }

  _log_fault_for_malloc_failure();
  v127 = *__error();
  v128 = _SILogForLogForCategory(1);
  v129 = 2 * (dword_1EBF46AD0 < 4);
  v130 = os_log_type_enabled(v128, v129);
  add_explicit = v242;
  if (v130)
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v128, v129, "query_malloc failed", buf, 2u);
  }

  *__error() = v127;
LABEL_108:
  v36 = 0;
  v37 = v248;
LABEL_109:
  if (*(*(v37 + 13) + 96))
  {
    goto LABEL_113;
  }

  v134 = v240;
  v135 = *(v37 + 13);
  do
  {
    v136 = v135;
    v135 = *(v135 + 80);
  }

  while (v135);
  if (*(*(v136 + 8) + 12) == 1)
  {
LABEL_113:
    v137 = *__error();
    v138 = _SILogForLogForCategory(1);
    v139 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v138, v139))
    {
      *buf = 0;
      v140 = "Query invalidated";
      goto LABEL_133;
    }

    goto LABEL_134;
  }

  if (!v36)
  {
    v137 = *__error();
    v138 = _SILogForLogForCategory(1);
    v139 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v138, v139))
    {
      *buf = 0;
      v140 = "Null context";
LABEL_133:
      _os_log_impl(&dword_1C278D000, v138, v139, v140, buf, 2u);
    }

LABEL_134:
    v34 = 0;
    *__error() = v137;
    v8 = v37;
    goto LABEL_208;
  }

  if (*(v37 + 641) == 1 && (*(v37 + 642) & 1) == 0)
  {
    preparePostCheckQueries(&v248);
  }

  v141 = CFAbsoluteTimeGetCurrent();
  v142 = *(*(v37 + 105) + 32);
  if (!v142 || (v143 = *(v142 + 48)) == 0)
  {
LABEL_205:
    v34 = 0;
    goto LABEL_206;
  }

  if (v143 != 1)
  {
    v257 = 0;
    v150 = *(v37 + 85);
    if (v150)
    {
      ContentIndexDocSetIteratorDispose(v150);
    }

    v151 = *(v37 + 208);
    MEMORY[0x1EEE9AC00](v150);
    v153 = v215 - ((v152 + 15) & 0xFFFFFFFF0);
    bzero(v153, v152);
    v154 = *(v37 + 208);
    if (v154)
    {
      v155 = 0;
      v156 = 0;
      do
      {
        v157 = *(*(v37 + 105) + v156 + 32);
        *&v153[8 * v155] = v157;
        v158 = *(*(v37 + 105) + v156);
        if (v158)
        {
          v159 = *(v158 + 48);
          if (v159 == 4)
          {
            v160 = *(v158 + 16);
            if (v160)
            {
              LODWORD(v160) = (*(v160 + 24) < 0xFu) & (0x5060u >> *(v160 + 24));
            }
          }

          else
          {
            LODWORD(v160) = 0;
          }

          if (v160 != ((v159 >> 3) & 1))
          {
            *(v157 + 33) = 1;
            v154 = *(v37 + 208);
          }
        }

        ++v155;
        v156 += 48;
        v161 = v154;
      }

      while (v155 < v154);
    }

    else
    {
      v161 = 0;
    }

    if (*(v37 + 650))
    {
      v192 = *(v37 + 651);
    }

    else
    {
      v192 = 0;
    }

    Iterator = ContentIndexDocSetsCreateIterator(v153, v161, v36, v192 & 1, *(v37 + 1248), v37 + 688);
    v37 = v248;
    *(v248 + 85) = Iterator;
    v194 = *(v37 + 212);
    if (v194 && Iterator)
    {
      Iterator[8] = v194;
      Iterator = *(v37 + 85);
    }

    ContentIndexDocSet_Step(Iterator, &v257, (*(v37 + 13) + 96));
    v195 = *__error();
    v196 = _SILogForLogForCategory(10);
    v197 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v196, v197))
    {
      goto LABEL_198;
    }

    *buf = 134217984;
    *&buf[4] = v257;
    v198 = "2 - count: %ld";
    goto LABEL_197;
  }

  if (*(v37 + 23) && *(v37 + 22) || (*(v37 + 40) & 0x80) == 0 || (v144 = *(v37 + 7)) == 0 || !CFArrayGetCount(v144) || (v134 & 1) != 0)
  {
    v257 = 0;
    v162 = *(v37 + 85);
    if (v162)
    {
      ContentIndexDocSetIteratorDispose(v162);
    }

    v163 = *(v37 + 208);
    MEMORY[0x1EEE9AC00](v162);
    v165 = (v215 - ((v164 + 15) & 0xFFFFFFFF0));
    bzero(v165, v164);
    v166 = *(v37 + 208);
    v167 = (v166 - 1);
    if (v166 <= 1)
    {
      if (v166)
      {
        v179 = 0;
        v180 = 0;
        v181 = *(v37 + 208);
        do
        {
          v182 = v179;
          v183 = *(*(v37 + 105) + v180 + 32);
          v165[v182] = v183;
          v184 = *(*(v37 + 105) + v180);
          if (v184)
          {
            v185 = *(v184 + 48);
            if (v185 == 4)
            {
              v186 = *(v184 + 16);
              if (v186)
              {
                LODWORD(v186) = (*(v186 + 24) < 0xFu) & (0x5060u >> *(v186 + 24));
              }
            }

            else
            {
              LODWORD(v186) = 0;
            }

            if (v186 != ((v185 >> 3) & 1))
            {
              *(v183 + 33) = 1;
              v181 = *(v37 + 208);
            }
          }

          v166 = v182 + 1;
          v178 = v166 >= v181;
          v179 = v166;
          v180 += 48;
          LODWORD(v166) = v181;
        }

        while (!v178);
      }
    }

    else
    {
      v168 = 8 * v166;
      v169 = 8;
      v170 = 80;
      do
      {
        v165[v169 / 8] = *(*(v37 + 105) + v170);
        v169 += 8;
        v170 += 48;
      }

      while (v168 != v169);
      *v165 = ContentIndexDocSetUnionLazy(v167, v165 + 1, 0.0);
      LODWORD(v166) = *(v37 + 208);
      if (v166 >= 2)
      {
        v171 = 1;
        v172 = 48;
        v173 = *(v37 + 208);
        do
        {
          v174 = v171;
          v175 = *(*(v37 + 105) + v172);
          if (v175)
          {
            v176 = *(v175 + 48);
            if (v176 == 4)
            {
              v177 = *(v175 + 16);
              if (v177)
              {
                LODWORD(v177) = (*(v177 + 24) < 0xFu) & (0x5060u >> *(v177 + 24));
              }
            }

            else
            {
              LODWORD(v177) = 0;
            }

            if (v177 != ((v176 >> 3) & 1))
            {
              *(v165[v174] + 33) = 1;
              v173 = *(v37 + 208);
            }
          }

          v166 = v174 + 1;
          v178 = v166 >= v173;
          v171 = v166;
          v172 += 48;
          LODWORD(v166) = v173;
        }

        while (!v178);
      }
    }

    if (*(v37 + 650) == 1)
    {
      v187 = *(v37 + 651);
    }

    else
    {
      v187 = 0;
    }

    v188 = ContentIndexDocSetsCreateIterator(v165, v166, v36, v187 & 1, *(v37 + 1248), v37 + 688);
    v37 = v248;
    *(v248 + 85) = v188;
    v189 = v188;
    if (*(v37 + 208) >= 2u)
    {
      ContentIndexDocSetDispose(*v165);
      v189 = *(v37 + 85);
    }

    v190 = *(v37 + 212);
    if (v190)
    {
      if (v189)
      {
        v189[8] = v190;
        v191 = *(v37 + 85);
      }

      else
      {
        v191 = 0;
      }
    }

    else
    {
      v191 = v189;
    }

    ContentIndexDocSet_Step(v191, &v257, (*(v37 + 13) + 96));
    v195 = *__error();
    v196 = _SILogForLogForCategory(10);
    v197 = 2 * (dword_1EBF46AF4 < 4);
    if (!os_log_type_enabled(v196, v197))
    {
      goto LABEL_198;
    }

    *buf = 134217984;
    *&buf[4] = v257;
    v198 = "1 - count: %ld";
LABEL_197:
    _os_log_impl(&dword_1C278D000, v196, v197, v198, buf, 0xCu);
LABEL_198:
    *__error() = v195;
LABEL_199:
    v34 = 1;
LABEL_206:
    v8 = v37;
    goto LABEL_207;
  }

  v145 = *(v37 + 105);
  query_node_with_ann = *(v145 + 8);
  if (query_node_with_ann)
  {
    v147 = *(v145 + 16);
    if (v147)
    {
      *(v37 + 102) = makeAndNode(query_node_with_ann, v147, 1, 1);
      v148 = *(v37 + 105);
      *(v148 + 8) = 0;
      *(v148 + 16) = 0;
      v149 = *(v37 + 102);
      goto LABEL_203;
    }

    *(v37 + 102) = query_node_with_ann;
    *(v145 + 8) = 0;
  }

  else
  {
    query_node_with_ann = db_make_query_node_with_ann("*=*", 0);
    *(v37 + 102) = query_node_with_ann;
  }

  v149 = query_node_with_ann;
LABEL_203:
  v199 = db_open_query_with_expr(*(*(v37 + 3) + 1192), v149);
  *(v37 + 103) = v199;
  if (v199)
  {
    goto LABEL_199;
  }

  if (dword_1EBF46AD0 < 5)
  {
    goto LABEL_205;
  }

  v213 = *__error();
  v214 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v214, OS_LOG_TYPE_DEFAULT, "Couldn't create raw sdb iterator", buf, 2u);
  }

  v34 = 0;
  *__error() = v213;
  v8 = v37;
  add_explicit = v242;
LABEL_207:
  *(*(v8 + 1) + 408) = *(*(v8 + 1) + 408) + CFAbsoluteTimeGetCurrent() - v141;
LABEL_208:
  v200 = threadData[9 * v247 + 1] + 320 * v246;
  *(v200 + 312) = v241;
  v201 = *(v200 + 232);
  if (v201)
  {
    v201(*(v200 + 288));
  }

  dropThreadId(v247, 0, add_explicit + 1);
  if (v36)
  {
    ContentIndexDocSetContextRelease(v36);
    v8 = v248;
  }

LABEL_212:
  v202 = *(v8 + 3);
  v203 = *(v8 + 113);
  kdebug_trace();
  v204 = _MDPerf_QueryLog();
  v205 = *(v8 + 1);
  if (v205 + 1 >= 2)
  {
    v208 = v204;
    if (os_signpost_enabled(v204))
    {
      v209 = *(v205 + 608);
      v210 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v209;
      *&buf[12] = 1024;
      *&buf[14] = v210;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v208, OS_SIGNPOST_INTERVAL_END, v205, "QueryGatherIndexInfo", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", buf, 0x12u);
    }
  }

  v206 = *MEMORY[0x1E69E9840];
  return v34;
}

void clear_node_field_caches(query_node *a1)
{
  var0 = a1->var0;
  if (var0)
  {
    clear_node_field_caches(var0);
  }

  var1 = a1->var1;
  if (var1)
  {
    clear_node_field_caches(var1);
  }

  var2 = a1->var2;
  if (var2)
  {
    v5 = *(var2 + 15);
    if (v5 != -1)
    {
      if (!v5)
      {
LABEL_11:
        var4 = a1->var4;
        if (var4 && var2 && (*(var2 + 33) & 8) == 0)
        {
          if (var4 != -1)
          {
            ContentIndexDocSetDispose(var4);
          }

          a1->var4 = 0;
        }

        return;
      }

      v6 = *(var2 + 16);
      if (v6)
      {
        v6();
        var2 = a1->var2;
      }
    }

    *(var2 + 15) = 0;
    *(var2 + 16) = 0;
    goto LABEL_11;
  }
}

void evaluateFuzzyQuery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v5 = *__error();
  v6 = _SILogForLogForCategory(1);
  v7 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v6, v7))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&dword_1C278D000, v6, v7, "evaluateFuzzyQuery for %p", &buf, 0xCu);
  }

  *__error() = v5;
  if (*(a1 + 832))
  {
    v8 = 0;
    v9 = 0;
    v36 = MEMORY[0x1E69E9820];
    v37 = *(a1 + 24);
    v10 = *(a1 + 840);
    do
    {
      v11 = (v10 + v8);
      v41 = *(v11 + 40);
      v12 = *v11;
      v40[0] = v36;
      v40[1] = 0x40000000;
      v40[2] = ___ZL19_evaluateFuzzyQueryP20SISearchCtx_METADATAP14__ContentIndexPP19_ContentIndexDocSetPm_block_invoke;
      v40[3] = &__block_descriptor_tmp_182;
      v40[4] = a1;
      if (v12 && (*(v12 + 56) & 1) != 0)
      {
        v14 = *(v12 + 24);
        if (!v14)
        {
          v14 = malloc_type_calloc(0x20uLL, 1uLL, 0xAEF55CC4uLL);
          *(v12 + 24) = v14;
        }

        v14[3] = 0;
        v14[1] = 0;
        v13 = 1;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v45 = __evaluateFuzzyQueryForIndex_block_invoke;
      v46 = &unk_1E8196470;
      v55 = v8 == 0;
      v49 = a2;
      v50 = a3;
      v51 = &v39;
      v52 = v12;
      v48 = &v41;
      v47 = v40;
      v56 = v13;
      v53 = v14;
      v54 = v37;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 0x40000000;
      v42[2] = __evaluateFuzzyQueryForIndex_block_invoke_184;
      v42[3] = &__block_descriptor_tmp_187;
      v42[4] = a2;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 0x40000000;
      v43[2] = __db_query_tree_apply_block_block_invoke;
      v43[3] = &unk_1E8198ED0;
      v43[4] = &buf;
      db_query_tree_apply_block_with_meta(v12, v43, v42);
      if (!Empty)
      {
        Empty = ContentIndexDocSetCreateEmpty(a2);
      }

      v10 = *(a1 + 840);
      v16 = v10 + v8;
      *(v10 + v8 + 32) = Empty;
      if (v41 == 1)
      {
        *(a1 + 641) = 1;
        if (*(v16 + 40) != 1)
        {
          *(a1 + 642) = 0;
          *(v16 + 40) = 1;
        }
      }

      ++v9;
      v8 += 48;
    }

    while (v9 < *(a1 + 832));
  }

  v17 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &kCIDocSetSetCallbacks);
  if (*(a1 + 832))
  {
    v19 = 0;
    v20 = *(a1 + 840);
    v21 = 32;
    do
    {
      _ContentIndexDocSetIteratorMarkNegation(*(v20 + v21), 0);
      v22 = *(*(a1 + 840) + v21);
      v23 = CFArrayCreateMutable(v17, 2, 0);
      v24 = _ContentIndexMemoizeDocSet(v22, Mutable, v23);
      CFRelease(v23);
      v20 = *(a1 + 840);
      *(v20 + v21) = v24;
      ++v19;
      v25 = *(a1 + 832);
      v21 += 48;
    }

    while (v19 < v25);
    if (v25)
    {
      v26 = 0;
      v27 = 32;
      do
      {
        v28 = *(*(a1 + 840) + v27);
        ContentIndexFlattenDocSet(v28, Mutable);
        _ContentIndexOptimizeDocSet(v28, 0, 0, Mutable);
        ++v26;
        v27 += 48;
      }

      while (v26 < *(a1 + 832));
    }
  }

  CFRelease(Mutable);
  v29 = *(a1 + 848);
  if (v29)
  {
    ContentIndexOrganizeWeightedTree(*(*(a1 + 840) + 48 * v29 + 32));
    v30 = *(*(a1 + 840) + 48 * *(a1 + 848) + 32);
    ContentIndexAnnotateWeightedTreeInner(v30, 0.0);
    *(v30 + 28) = *(v30 + 24);
  }

  if (v39 != *(a1 + 376))
  {
    v32 = __si_assert_copy_extra_332();
    v33 = v32;
    v34 = "";
    if (v32)
    {
      v34 = v32;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 5769, "idx==ctx->cinodeCount", v34);
    free(v33);
    if (__valid_fs(-1))
    {
      v35 = 2989;
    }

    else
    {
      v35 = 3072;
    }

    *v35 = -559038737;
    abort();
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t _ContentIndexDocSetIteratorMarkNegation(uint64_t result, unsigned int a2)
{
  v2 = result;
  *(result + 34) = a2;
  v3 = *(result + 48);
  if (v3 > 9)
  {
    assert_invalid_doc_type(result);
  }

  v4 = 1 << v3;
  if ((v4 & 0x10F) == 0)
  {
    if ((v4 & 0xF0) != 0)
    {
      if (*(result + 64))
      {
        return result;
      }
    }

    else
    {
      *(result + 128) ^= 0x80000000;
      if (*(result + 64))
      {
        return result;
      }
    }

    if (*(result + 96))
    {
      v6 = 0;
      v7 = a2 ^ 1;
      do
      {
        v8 = *(v2 + 48);
        if (v8 == 6)
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }

        if ((v8 - 4) < 2 || v8 == 7)
        {
          v11 = a2;
        }

        else
        {
          v11 = v9;
        }

        result = _ContentIndexDocSetIteratorMarkNegation(*(*(v2 + 72) + 8 * v6++), v11);
      }

      while (v6 < *(v2 + 96));
    }
  }

  return result;
}

atomic_uint *_ContentIndexMemoizeDocSet(uint64_t a1, const __CFSet *a2, __CFArray *a3)
{
  v3 = a1;
  if (a1 && (*(a1 + 48) & 0xFFFFFFFC) == 4)
  {
    if (*(a1 + 96))
    {
      v6 = 0;
      do
      {
        *(*(v3 + 72) + 8 * v6) = _ContentIndexMemoizeDocSet(*(*(v3 + 72) + 8 * v6), a2, a3);
        ++v6;
      }

      while (v6 < *(v3 + 96));
    }

    Value = CFSetGetValue(a2, v3);
    if (Value)
    {
      if (Value != v3)
      {
        atomic_fetch_add(Value, 1u);
        v8 = Value;
        ContentIndexDocSetDispose(v3);
        CFArrayRemoveAllValues(a3);
        CFArrayAppendValue(a3, v8);
        return v8;
      }
    }

    else
    {
      CFSetAddValue(a2, v3);
      v10.length = CFArrayGetCount(a3);
      v10.location = 0;
      CFArrayApplyFunction(a3, v10, setShared, 0);
      CFArrayRemoveAllValues(a3);
    }
  }

  return v3;
}

void ContentIndexDocSetCleanupBorrowedChildren(uint64_t a1)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  _ContentIndexDocSetCleanupBorrowedChildren(a1, Mutable);

  CFRelease(Mutable);
}

void ContentIndexDocSetContextRelease(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v3 = a1[2];
    if (v3)
    {
      v4 = *(v3 + 4496);
      if (v4 != -1)
      {
        _fd_release_fd(*(v3 + 4488), v4, 0, *(v3 + 4504));
        *(v3 + 4496) = -1;
      }

      fd_release(*(v3 + 4488));
      free(v3);
    }

    v5 = a1[1];
    if (v5)
    {
      v6 = *(v5 + 4496);
      if (v6 != -1)
      {
        _fd_release_fd(*(v5 + 4488), v6, 0, *(v5 + 4504));
        *(v5 + 4496) = -1;
      }

      fd_release(*(v5 + 4488));
      free(v5);
    }

    v7 = a1[3];
    if (v7)
    {
      posreadunlock(v7);
    }

    free(a1);
  }
}

void ContentIndexDocSetDispose(uint64_t a1)
{
  if (!a1 || atomic_fetch_add(a1, 0xFFFFFFFF) != 1)
  {
    return;
  }

  v2 = *(a1 + 48);
  if (v2 > 3)
  {
    if ((v2 - 4) >= 4)
    {
      if (v2 != 9)
      {
        if (v2 == 8)
        {
          v3 = *(a1 + 64);
          if (v3)
          {
            PayloadIteratorDestroy__Positions(v3);
            free(*(a1 + 64));
          }

          v4 = *(a1 + 72);
          if (v4)
          {
            PositionIteratorDestroy(v4);
            free(*(a1 + 72));
          }

          if (*(a1 + 80))
          {
            (*(a1 + 96))();
          }

          if (*(a1 + 88))
          {
            (*(a1 + 96))();
          }
        }

        goto LABEL_40;
      }

      v7 = *(a1 + 112);
      if (v7)
      {
        BulkPositionIterator_Dispose(v7);
      }

      if ((*(a1 + 128) & 0x7FFFFFFF) != 0)
      {
        v8 = 0;
        do
        {
          ContentIndexDocSetDispose(*(*(a1 + 120) + 8 * v8++));
        }

        while (v8 < (*(a1 + 128) & 0x7FFFFFFFu));
      }

      v9 = *(a1 + 120);
      if (v9 != -1)
      {
        free(v9);
      }
    }

    goto LABEL_27;
  }

  if ((v2 - 1) < 2)
  {
LABEL_27:
    v10 = *(a1 + 80);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 88);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 136);
    if (v13)
    {
      free(v13);
    }

    if (*(a1 + 96))
    {
      v14 = 0;
      do
      {
        ContentIndexDocSetDispose(*(*(a1 + 72) + 8 * v14++));
      }

      while (v14 < *(a1 + 96));
    }

    v6 = *(a1 + 72);
    goto LABEL_39;
  }

  if (v2 == 3)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      PayloadIteratorDestroy(v5);
      v6 = *(a1 + 64);
LABEL_39:
      free(v6);
    }
  }

LABEL_40:

  free(a1);
}

void fd_release(atomic_uint *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1 + 8, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1 != -50529037)
    {
      v3 = __si_assert_copy_extra_661(-1);
      v4 = v3;
      v5 = "";
      if (v3)
      {
        v5 = v3;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 495, "obj->_magic==(0xFCFCFCF3)", v5);
      free(v4);
      if (__valid_fs(-1))
      {
        v6 = 2989;
      }

      else
      {
        v6 = 3072;
      }

      *v6 = -559038737;
      abort();
    }

    v7 = 0;
    pthread_mutex_lock(&g_fd_lock);
    v2 = _fd_remove_locked(a1, &v7);
    pthread_mutex_unlock(&g_fd_lock);
    if (v2 != -1)
    {
      guarded_close_np();
    }

    *a1 = 0;
    free(*(a1 + 9));
    if (*(a1 + 10))
    {
      fd_release();
    }

    free(a1);
  }
}

void cleanupDocSets(void *a1)
{
  v1 = *(*a1 + 832);
  if (v1)
  {
    v3 = 0;
    v4 = 8 * v1;
    do
    {
      v5 = *(a1[1] + v3);
      if (v5)
      {
        ContentIndexDocSetCleanupBorrowedChildren(v5);
        ContentIndexDocSetDispose(*(a1[1] + v3));
        *(a1[1] + v3) = 0;
      }

      v3 += 8;
    }

    while (v4 != v3);
  }
}

void _ContentIndexDocSetCleanupBorrowedChildren(uint64_t a1, const __CFSet *a2)
{
  if (CFSetContainsValue(a2, a1))
  {
    return;
  }

  CFSetAddValue(a2, a1);
  v4 = *(a1 + 48);
  if (v4 > 9)
  {
    return;
  }

  if (((1 << v4) & 0xF6) != 0)
  {
    if (*(a1 + 96))
    {
      goto LABEL_5;
    }

LABEL_17:
    if ((*(a1 + 64) & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v4 != 9)
  {
    return;
  }

  v8 = *(a1 + 128);
  if ((v8 & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    do
    {
      _ContentIndexDocSetCleanupBorrowedChildren(*(*(a1 + 120) + 8 * v9), a2);
      ContentIndexDocSetDispose(*(*(a1 + 120) + 8 * v9));
      *(*(a1 + 120) + 8 * v9++) = 0;
      v8 = *(a1 + 128);
    }

    while (v9 < (v8 & 0x7FFFFFFFu));
  }

  *(a1 + 128) = v8 & 0x80000000;
  if (!*(a1 + 96))
  {
    goto LABEL_17;
  }

LABEL_5:
  v5 = 0;
  do
  {
    _ContentIndexDocSetCleanupBorrowedChildren(*(*(a1 + 72) + 8 * v5++), a2);
    v6 = *(a1 + 96);
  }

  while (v5 < v6);
  if (*(a1 + 64))
  {
    if (v6)
    {
      v7 = 0;
      do
      {
        ContentIndexDocSetDispose(*(*(a1 + 72) + 8 * v7++));
      }

      while (v7 < *(a1 + 96));
    }

LABEL_18:
    *(a1 + 64) = 0;
    *(a1 + 96) = 0;
  }
}

void userinteractive_query_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

uint64_t __preIterateQueryForIndex_block_invoke(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48) & 0xFFF7;
  if (v4 > 0x20)
  {
    goto LABEL_74;
  }

  if (((1 << (*(a2 + 48) & 0xF7)) & 0x100010006) != 0)
  {
    goto LABEL_3;
  }

  if (v4 != 4)
  {
LABEL_74:
    v43 = __si_assert_copy_extra_661(*(*(a1 + 32) + 32));
    v48 = *(a2 + 48);
    __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected type %d");
    goto LABEL_75;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "Factor.", buf, 2u);
    }

    *__error() = v33;
  }

  v7 = *(a2 + 16);
  if ((*(v7 + 33) & 8) == 0)
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "Metadata or Content.", buf, 2u);
      }

      *__error() = v35;
      v7 = *(a2 + 16);
    }

    v8 = *(v7 + 24);
    if ((v8 - 11) < 2)
    {
      v10 = *v7;
      if (dword_1EBF46AD0 >= 5)
      {
        v37 = *v7;
        v38 = *__error();
        v39 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "Range query.", buf, 2u);
        }

        *__error() = v38;
        v7 = *(a2 + 16);
        v10 = v37;
      }

      if (*(v7 + 40) != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if ((v8 - 13) < 2)
    {
      v9 = *(a1 + 32);
      v10 = *v7;
LABEL_16:
      if (db_get_id_for_field_locked(*(v9 + 1192), v10) != -2)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    }

    if (v8 == 15)
    {
      v10 = *v7;
      if (dword_1EBF46AD0 >= 5)
      {
        v40 = *v7;
        v41 = *__error();
        v42 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "Vector query.", buf, 2u);
        }

        *__error() = v41;
        v7 = *(a2 + 16);
        v10 = v40;
      }

      if (*(v7 + 40) != 5)
      {
LABEL_21:
        v11 = *(v7 + 24);
        goto LABEL_22;
      }

LABEL_13:
      if (**v7 == 42 && !*(*v7 + 1))
      {
        goto LABEL_3;
      }

      v9 = *(a1 + 32);
      goto LABEL_16;
    }

    if (everythingQuery(v7))
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(1);
      v16 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v15, v16, "Found *=* query", buf, 2u);
      }

      *__error() = v14;
      goto LABEL_3;
    }

    v17 = *v7;
    if (**v7 != 42 || v17[1])
    {
      v18 = *(v7 + 32);
      if ((v18 & 0x400) != 0)
      {
        id_for_field_locked = 0;
LABEL_38:
        String = copyQueryString(a2);
        if (String)
        {
          v21 = *(*(a2 + 16) + 24);
          if (v21 <= 0xF)
          {
            v22 = String;
            v23 = 1 << v21;
            if ((v23 & 0x8198) != 0)
            {
LABEL_48:
              CFRelease(v22);
              goto LABEL_3;
            }

            if ((v23 & 0x66) != 0)
            {
              if (id_for_field_locked <= 1 && (!CFEqual(String, @"*") || db_get_id_for_field_locked(*(*(a1 + 32) + 1192), "_kMDItemTextContentIndexExists") == -2) && !id_for_field_locked)
              {
                if (*(*(a1 + 32) + 2008))
                {
                  v24 = *(a2 + 16);
                  v25 = *v24;
                  if (!strncmp(*v24, "_kMDItemOCRContent", 0x12uLL) && strncmp(v25 + 18, "Title", 5uLL) && strncmp(v25 + 18, "Level1", 6uLL) && strncmp(v25 + 18, "Level2", 6uLL) && strncmp(v25 + 18, "Level3", 6uLL))
                  {
                    if (dword_1EBF46AD0 >= 5)
                    {
                      v45 = *__error();
                      v46 = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                      {
                        v47 = **(a2 + 16);
                        *buf = 136315138;
                        v51 = v47;
                        _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "Invalid property name %s", buf, 0xCu);
                      }

                      *__error() = v45;
                      v24 = *(a2 + 16);
                    }

                    v31 = *(v24 + 24) - 5;
                    if (v31 > 9)
                    {
                      v32 = 16;
                    }

                    else
                    {
                      v32 = *&asc_1C2BFFC88[2 * v31];
                    }

                    *(a2 + 48) = v32;
                  }
                }
              }

              goto LABEL_48;
            }
          }

          v43 = __si_assert_copy_extra_661(*(*(a1 + 32) + 32));
          v49 = *(*(a2 + 16) + 24);
          __message_assert("%s:%u: failed assertion '%s' %s Bad query node; unexpected op %d");
LABEL_75:
          free(v43);
          if (__valid_fs(*(*(a1 + 32) + 32)))
          {
            v44 = 2989;
          }

          else
          {
            v44 = 3072;
          }

          *v44 = -559038737;
          abort();
        }

        if (dword_1EBF46AD0 >= 5)
        {
          v26 = *__error();
          v27 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a2 + 16);
            v29 = *v28;
            v30 = v28[9];
            *buf = 136315394;
            v51 = v29;
            v52 = 2080;
            v53 = v30;
            _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "No string for %s = %s", buf, 0x16u);
          }

          *__error() = v26;
        }

LABEL_17:
        v11 = *(*(a2 + 16) + 24);
LABEL_22:
        v12 = v11 - 5;
        if (v12 > 9)
        {
          v13 = 16;
        }

        else
        {
          v13 = *&asc_1C2BFFC88[2 * v12];
        }

        *(a2 + 48) = v13;
        goto LABEL_3;
      }

      if ((v18 & 0x40000) == 0)
      {
        id_for_field_locked = db_get_id_for_field_locked(*(*(a1 + 32) + 1192), v17);
        if (id_for_field_locked == -2)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }
    }

    id_for_field_locked = 1;
    goto LABEL_38;
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return a2;
}

void executeSearchCtx_Start(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v29) = qos_class_self();
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "QOS executeSearchCtx_Start: %d", buf, 8u);
    }

    *__error() = v13;
  }

  v4 = *a1;
  if (a2)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(1);
    v7 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v6, v7, "Search canceled while waiting on scheduler\n", buf, 2u);
    }

    *__error() = v5;
    si_querypipe_remove_process(v4[13], v4[1], 0, 1);
    search_ctx_destroy(a1, a2);
    goto LABEL_21;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = Current - *(a1 + 8);
  *(v4[1] + 448) = *(v4[1] + 448) + v9;
  if (dword_1EBF46AD0 >= 5)
  {
    v27 = v9;
    v15 = *__error();
    v16 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = qos_class_self();
      *buf = 134218240;
      v29 = v27;
      v30 = 1024;
      v31 = v17;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Search waited %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v15;
  }

  *(a1 + 16) = "executeSearchCtx_Start";
  v10 = (*(*v4 + 40))(v4);
  v11 = v4[1];
  v12 = CFAbsoluteTimeGetCurrent();
  siquery_addactivetime(v11, v12 - Current);
  if (dword_1EBF46AD0 >= 5)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = CFAbsoluteTimeGetCurrent() - Current;
      v21 = qos_class_self();
      *buf = 134218240;
      v29 = v20;
      v30 = 1024;
      v31 = v21;
      _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "Search was active (preIterate) for %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v18;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else if (v10)
  {
LABEL_9:
    executeSearchContextCracked_2(*a1);
    goto LABEL_20;
  }

  si_querypipe_remove_process(v4[13], v4[1], 0, 0);
  search_ctx_destroy(a1, 0);
LABEL_20:
  if (dword_1EBF46AD0 >= 5)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = CFAbsoluteTimeGetCurrent() - Current;
      v26 = qos_class_self();
      *buf = 134218240;
      v29 = v25;
      v30 = 1024;
      v31 = v26;
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Search was active for %f seconds on the scheduler at qos 0x%x\n", buf, 0x12u);
    }

    *__error() = v23;
  }

LABEL_21:
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t _bt_findBulk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, char a13)
{
  v516 = a8;
  v17 = a2;
  v502 = a1;
  v556 = *MEMORY[0x1E69E9840];
  v503 = *(a2 + 160);
  v507 = *(a2 + 4589);
  v18 = __THREAD_SLOT_KEY;
  v513 = a2;
  if (!__THREAD_SLOT_KEY)
  {
    v456 = a6;
    makeThreadId();
    a6 = v456;
    v17 = v513;
    v18 = __THREAD_SLOT_KEY;
  }

  v514 = a6;
  v19 = pthread_getspecific(v18);
  if (!v19 || v19 >= 0x801)
  {
    makeThreadId();
    v19 = pthread_getspecific(__THREAD_SLOT_KEY);
  }

  v20 = v19 - 1;
  v508 = LODWORD(threadData[9 * v19 - 5]);
  atomic_fetch_add_explicit((v17 + 4592), 1u, memory_order_relaxed);
  db_read_lock(v513 + 4600);
  atomic_fetch_add_explicit((v17 + 4592), 0xFFFFFFFF, memory_order_relaxed);
  CIOnThreadCleanUpPush(v20, si_dglock_rdunlock, v513 + 4600);
  v21 = malloc_type_zone_malloc(queryZone, 0x510uLL, 0xA4971684uLL);
  v22 = v21;
  if (v21)
  {
    v530[0] = 0;
    if (a10)
    {
      v23 = a10;
    }

    else
    {
      v23 = v530;
    }

    v511 = v23;
    v24 = v514;
    findTermIDsInit(v513, a3, a4, a5, v23, v514, a7, v516, a9, v21);
    v25 = v20;
    v26 = v22;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v542[0]) = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v542, 2u);
    }

    v530[0] = 0;
    if (a10)
    {
      v27 = a10;
    }

    else
    {
      v27 = v530;
    }

    v511 = v27;
    v24 = v514;
    findTermIDsInit(v513, a3, a4, a5, v27, v514, a7, v516, a9, 0);
    v25 = v20;
    v26 = 0;
  }

  CICleanUpPush(v25, findTermIDsFree, v26);
  Current = CFAbsoluteTimeGetCurrent();
  v30 = 0x1EBF46000uLL;
  v512 = v20;
  if (!v24)
  {
    goto LABEL_19;
  }

  if (!a11)
  {
    if (!*(v22 + 1152))
    {
      goto LABEL_19;
    }

    v41 = 0;
    v493 = 0;
    v42 = v22 + 88;
    v491 = *MEMORY[0x1E695E480];
    v515 = &v540[1];
    v516 = &v542[1];
    v504 = &v542[1] + 8;
    *&v28 = 134217984;
    v489 = v28;
    *&v28 = 136315394;
    v492 = v28;
    *&v28 = 134218240;
    v490 = v28;
    v510 = v22 + 88;
LABEL_35:
    if (**v22)
    {
      goto LABEL_19;
    }

    v43 = *(v22 + 1144) + (v41 << 6);
    *(v22 + 1240) = v43;
    if (*(v30 + 2768) >= 5)
    {
      v327 = v41;
      v328 = *__error();
      v329 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v542[0]) = v489;
        *(v542 + 4) = v43;
        _os_log_impl(&dword_1C278D000, v329, OS_LOG_TYPE_DEFAULT, "Comparing query %p", v542, 0xCu);
      }

      *__error() = v328;
      v30 = 0x1EBF46000;
      v41 = v327;
    }

    if ((*(v43 + 16) & 0x610) != 0)
    {
      v44 = *(v22 + 1240);
      v45 = *(v44 + 16);
      v46 = *(v30 + 2768);
      if ((v45 & 0x10) == 0)
      {
        if (v46 >= 5)
        {
          v358 = v41;
          v359 = *__error();
          v360 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v360, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v542[0]) = v489;
            *(v542 + 4) = v43;
            _os_log_impl(&dword_1C278D000, v360, OS_LOG_TYPE_DEFAULT, "Path node %p", v542, 0xCu);
          }

          *__error() = v359;
          v44 = *(v22 + 1240);
          v45 = *(v44 + 16);
          v30 = 0x1EBF46000;
          v41 = v358;
        }

        v47 = *(*(v22 + 1160) + 8 * v41);
        *(v22 + 1248) = v47;
        v48 = *(v22 + 24);
        if (!v48)
        {
          v42 = v510;
          goto LABEL_34;
        }

        v500 = v47;
        v506 = v41;
        v494 = (v45 & 0x400) == 0;
        v49 = *(v22 + 32);
        v50 = *(v44 + 20);
        *&v509 = *v44;
        v51 = __THREAD_SLOT_KEY;
        if (!__THREAD_SLOT_KEY)
        {
          makeThreadId();
          v51 = __THREAD_SLOT_KEY;
        }

        LODWORD(v501) = v45;
        v52 = v20;
        v53 = pthread_getspecific(v51);
        if (!v53 || v53 >= 0x801)
        {
          makeThreadId();
          v53 = pthread_getspecific(__THREAD_SLOT_KEY);
        }

        v54 = (v48 + 4424);
        v55 = (v53 - 1);
        v496 = LODWORD(threadData[9 * v53 - 5]);
        v56 = *(v48 + 4440);
        v57 = *(v48 + 4448);
        v58 = v57 - v56 < 0x100000001 && v57 > v56;
        v59 = v57 & 0xFFFFFFFF00000000;
        if (!v58)
        {
          v59 = 0;
        }

        v498 = v59;
        v499 = v56;
        v60 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
        storage_reader_init(v48 + 8, v60);
        CICleanUpPush(v55, MEMORY[0x1E69E9B38], v60);
        v505 = v55;
        v497 = v60;
        CICleanUpPush(v55, storage_reader_destroy, v60);
        if (v50)
        {
          v63 = v509;
          v64 = v50 - (*(v509 + 8 * v50 - 8) == *v54);
          if (v49)
          {
            v495 = v54;
            v65 = (v49 + 8);
            pthread_rwlock_rdlock((v49 + 8));
            v66 = (v49 + 208);
            v67 = v501;
            if (v64)
            {
              v68 = ~(*(v509 + 8 * v64 - 8) == *v66) + v64;
            }

            else
            {
              v68 = -1;
            }

LABEL_286:
            *v539 = -1;
            *&v540[0] = 0;
            BestDirectory = getBestDirectory(v66, v68, v63, v539, v540);
            v235 = BestDirectory;
            v236 = 0;
            if ((*v539 & 0x80000000) == 0 && *&v540[0])
            {
              v236 = *(*&v540[0] + 16) != 0;
            }

            if (BestDirectory)
            {
              v237 = *(BestDirectory + 16);
              v236 = v237 != 0;
              if ((v67 & 0x400) == 0)
              {
                v238 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
                v238[1] = 1024;
                *(v238 + 1) = malloc_type_malloc(0x400uLL, 0xACA06861uLL);
                directoryDumpDirectoryPaths(v235, v238);
LABEL_298:
                pthread_rwlock_unlock(v65);
                pthread_rwlock_rdlock((v49 + 240));
                CIOnThreadCleanUpPush(v505, directoryOverlay_unlock, v49);
                if (v64 >= 1)
                {
                  v248 = v64;
                  v250 = (v509 + 8);
                  v249 = *v509;
                  do
                  {
                    v252 = *v250++;
                    v251 = v252;
                    Child = negativeFindChild(v49 + 440, v249, v540);
                    if (Child)
                    {
                      v236 |= *(Child + 8) == v251;
                    }

                    v249 = v251;
                    --v248;
                  }

                  while (v248);
                }

                if (v238)
                {
                  *&v542[0] = MEMORY[0x1E69E9820];
                  *(&v542[0] + 1) = 0x40000000;
                  *&v542[1] = __directoryStoreGetFileListOffsets_block_invoke;
                  *(&v542[1] + 1) = &__block_descriptor_tmp_4578;
                  v543[0] = v497;
                  v543[1] = v495;
                  v543[2] = v49;
                  v543[3] = v500;
                  LOBYTE(v544) = v494;
                  v543[4] = v499;
                  v543[5] = v498;
                  if (*v238)
                  {
                    v254 = 0;
                    do
                    {
                      v255 = (*(v238 + 1) + v254);
                      (*&v542[1])(v542, *v255, v255 + 2);
                      v254 += 8 * *v255 + 8;
                    }

                    while (v254 < *v238);
                  }

                  free(*(v238 + 1));
                  free(v238);
                }

                if ((v236 & 1) == 0)
                {
                  _directoryStoreGetFileListOffsets(v497, v495, v49, v64, v509, v500, (v501 & 0x400) == 0, v499, v246, v247, v498);
                }

                v126 = v505;
                CIOnThreadCleanUpPop(v505);
                v20 = v512;
                goto LABEL_313;
              }

              if (v237)
              {
                v238 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
                v239 = (8 * *(v235 + 16) + 16);
                v238[1] = v239;
                v240 = malloc_type_malloc(v239, 0x8E19CCC3uLL);
                *(v238 + 1) = v240;
                v241 = *(v235 + 16);
                v243 = *v238;
                LODWORD(v242) = v238[1];
                v244 = *v238 + 8 * v241 + 16;
                if (v244 > v242)
                {
                  do
                  {
                    v242 = (2 * v242);
                  }

                  while (v244 > v242);
                  v238[1] = v242;
                  v240 = reallocf(v240, v242);
                  *(v238 + 1) = v240;
                  v243 = *v238;
                  v241 = *(v235 + 16);
                }

                v245 = &v240[v243];
                *v245 = v241 + 1;
                *(v245 + 1) = *v235;
                memcpy(v245 + 16, *(v235 + 24), 8 * *(v235 + 16));
                *v238 += 8 * *(v235 + 16) + 16;
                goto LABEL_298;
              }
            }

            v238 = 0;
            goto LABEL_298;
          }

          v20 = v52;
          v126 = v505;
        }

        else
        {
          v495 = (v48 + 4424);
          v63 = v509;
          if (v49)
          {
            v65 = (v49 + 8);
            pthread_rwlock_rdlock((v49 + 8));
            v64 = 0;
            v66 = (v49 + 208);
            v68 = -1;
            v67 = v501;
            goto LABEL_286;
          }

          v20 = v52;
          v64 = 0;
          v126 = v505;
          v54 = v495;
        }

        _directoryStoreGetFileListOffsets(v497, v54, 0, v64, v63, v500, (v501 & 0x400) == 0, v499, v61, v62, v498);
LABEL_313:
        CICleanUpReset(v126, v496);
        v30 = 0x1EBF46000;
        v42 = v510;
        v41 = v506;
        goto LABEL_34;
      }

      if (v46 < 5)
      {
        if (!*(v22 + 16))
        {
LABEL_513:
          v296 = v41;
          v366 = *__error();
          v367 = _SILogForLogForCategory(1);
          v368 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v367, v368))
          {
            LOWORD(v542[0]) = 0;
            _os_log_impl(&dword_1C278D000, v367, v368, "Skip ANN; no vector index", v542, 2u);
          }

          *__error() = v366;
          v30 = 0x1EBF46000;
          v42 = v510;
          goto LABEL_516;
        }
      }

      else
      {
        v362 = v41;
        v363 = *__error();
        v364 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v542[0]) = v489;
          *(v542 + 4) = v43;
          _os_log_impl(&dword_1C278D000, v364, OS_LOG_TYPE_DEFAULT, "Vector node %p", v542, 0xCu);
        }

        *__error() = v363;
        v41 = v362;
        if (!*(v22 + 16))
        {
          goto LABEL_513;
        }
      }

      v77 = *(v22 + 1160);
      v506 = v41;
      v78 = *(v77 + 8 * v41);
      *(v22 + 1248) = v78;
      oq_force_meta(v78);
      v79 = *(v22 + 1248);
      v80 = *(v79 + 32);
      *&v509 = *(v22 + 16);
      v81 = *(v22 + 1240);
      v82 = *(v81 + 5);
      v83 = *(v81 + 15);
      v84 = v83 >> 25;
      v498 = v80;
      if (!v84)
      {
        if (current_vector_version::onceToken != -1)
        {
          dispatch_once(&current_vector_version::onceToken, &__block_literal_global_7971);
        }

        v84 = current_vector_version::vecVersion;
        v81 = *(v22 + 1240);
        v83 = *(v81 + 15);
        v79 = *(v22 + 1248);
      }

      v85 = *v81;
      v86 = *(v81 + 14);
      if (__THREAD_SLOT_KEY)
      {
        v87 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v87)
        {
          goto LABEL_518;
        }
      }

      else
      {
        makeThreadId();
        v87 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v87)
        {
          goto LABEL_518;
        }
      }

      if (v87 < 0x801)
      {
        v88 = 0;
LABEL_83:
        if (v87 <= 0x800)
        {
          v89 = &threadData[9 * v87];
          v88 = *(v89 - 11);
          *(v89 - 11) = 1;
        }

LABEL_85:
        LODWORD(v497) = v88;
        v90 = _SILogForLogForCategory(0);
        v91 = os_signpost_id_make_with_pointer(v90, 0);
        v92 = _SILogForLogForCategory(0);
        v499 = v91;
        v500 = v91 - 1;
        if (v91 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v93 = v92;
          if (os_signpost_enabled(v92))
          {
            LOWORD(v542[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C278D000, v93, OS_SIGNPOST_INTERVAL_BEGIN, v499, "VectorIndexANN", "Start", v542, 2u);
          }
        }

        *&v540[0] = MEMORY[0x1E69E9820];
        *(&v540[0] + 1) = 0x40000000;
        *&v540[1] = __vectorIndexANN_block_invoke;
        *(&v540[1] + 1) = &__block_descriptor_tmp_9_8236;
        *&v541[0] = v79;
        v534 = 0uLL;
        IVFVectorIndex_s::getVectorIndex(&v534, v509 + 8, v82, v84, v83 & 3, (v83 >> 2) & 3, 0);
        v94 = v534;
        v20 = v512;
        if (v534)
        {
          LODWORD(v505) = *__error();
          v95 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v96 = (v509 + 128);
            if (*(v509 + 151) < 0)
            {
              v96 = *v96;
            }

            (*(*v94 + 312))(v539, v94, v509 + 104);
            v97 = v539;
            if (v539[23] < 0)
            {
              v97 = *v539;
            }

            *buf = v492;
            *&buf[4] = v96;
            *&buf[12] = 2080;
            *&buf[14] = v97;
            _os_log_impl(&dword_1C278D000, v95, OS_LOG_TYPE_DEFAULT, "[%s] aNN search on %s", buf, 0x16u);
            if ((v539[23] & 0x80000000) != 0)
            {
              operator delete(*v539);
            }
          }

          *__error() = v505;
          operator new();
        }

        v505 = 0;
        v501 = 0;
        v538 = 0uLL;
        IVFVectorIndex_s::getVectorIndex(&v538, v509 + 8, v82, v84, v83 & 3, (v83 >> 2) & 3, 1u);
        v118 = v538;
        if (v538)
        {
          v119 = *__error();
          v120 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v496) = v119;
            v121 = (v509 + 128);
            if (*(v509 + 151) < 0)
            {
              v121 = *v121;
            }

            (*(*v118 + 312))(v539, v118, v509 + 104);
            v122 = v539;
            if (v539[23] < 0)
            {
              v122 = *v539;
            }

            *buf = v492;
            *&buf[4] = v121;
            *&buf[12] = 2080;
            *&buf[14] = v122;
            _os_log_impl(&dword_1C278D000, v120, OS_LOG_TYPE_DEFAULT, "[%s] aNN search on %s", buf, 0x16u);
            if ((v539[23] & 0x80000000) != 0)
            {
              operator delete(*v539);
            }

            v119 = v496;
          }

          *__error() = v119;
          v123 = v505 - v501;
          v124 = ((v505 - v501) >> 3) + 1;
          if (v124 >> 61)
          {
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          if (v123 >> 2 > v124)
          {
            v124 = v123 >> 2;
          }

          if (v123 >= 0x7FFFFFFFFFFFFFF8)
          {
            v124 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v124)
          {
            if (!(v124 >> 61))
            {
              operator new();
            }

            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          v127 = (8 * (v123 >> 3));
          v127->isa = v118;
          v505 = &v127[1];
          memcpy(0, v501, v123);
          if (v501)
          {
            operator delete(v501);
          }

          v20 = v512;
          v125 = 0;
        }

        else
        {
          v125 = v501;
        }

        v501 = v125;
        if (v505 == v125)
        {
          LODWORD(v505) = *__error();
          v133 = _SILogForLogForCategory(16);
          v134 = dword_1EBF46B0C < 3;
          if (os_log_type_enabled(v133, (dword_1EBF46B0C < 3)))
          {
            v135 = (v509 + 128);
            if (*(v509 + 151) < 0)
            {
              v135 = *v135;
            }

            IVFIndexName(v539, v82, v84, v83 & 3, (v83 >> 2) & 3, 0);
            v136 = *(v509 + 104);
            v137 = *(v509 + 127);
            if (v137 >= 0)
            {
              v138 = (v509 + 104);
            }

            else
            {
              v138 = *(v509 + 104);
            }

            if (v137 >= 0)
            {
              v139 = *(v509 + 127);
            }

            else
            {
              v139 = *(v509 + 112);
            }

            v140 = std::string::insert(v539, 0, v138, v139);
            v141 = v140->__r_.__value_.__r.__words[2];
            *buf = *&v140->__r_.__value_.__l.__data_;
            *&buf[16] = v141;
            v140->__r_.__value_.__l.__size_ = 0;
            v140->__r_.__value_.__r.__words[2] = 0;
            v140->__r_.__value_.__r.__words[0] = 0;
            if ((v539[23] & 0x80000000) != 0)
            {
              operator delete(*v539);
            }

            v142 = buf;
            if (buf[23] < 0)
            {
              v142 = *buf;
            }

            *v539 = v492;
            *&v539[4] = v135;
            *&v539[12] = 2080;
            *&v539[14] = v142;
            _os_log_impl(&dword_1C278D000, v133, v134, "*warn* [%s] aNN search on %s not found", v539, 0x16u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v20 = v512;
          }

          *__error() = v505;
        }

        else
        {
          v128 = (v505 - v125) >> 3;
          v129 = v125;
          v130 = (*(*v125->isa + 240))(v125->isa, (v83 >> 4) & 0xFFFFF);
          if (v128 <= 1)
          {
            v128 = 1;
          }

          do
          {
            isa = v129->isa;
            ++v129;
            (*(*isa + 248))(isa, v82, v84, v85, v83 & 3, (v83 >> 2) & 3, HIBYTE(v83) & 1, v130, v86);
            --v128;
          }

          while (v128);
          v132 = *(v505 - 1);
          *&v542[0] = MEMORY[0x1E69E9820];
          *(&v542[0] + 1) = 0x40000000;
          *&v542[1] = ___ZNK16IVFVectorIndex_s3aNNEjtPKv14vec_dimensions15vec_data_formatfjbP12__CIIndexSetU13block_pointerFvPyfjE_block_invoke;
          *(&v542[1] + 1) = &unk_1E8194D50;
          v543[0] = v540;
          (*(*v132 + 256))();
          v20 = v512;
        }

        v143 = *(&v538 + 1);
        v110 = v506;
        v42 = v510;
        if (*(&v538 + 1) && !atomic_fetch_add((*(&v538 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v143->__on_zero_shared)(v143);
          std::__shared_weak_count::__release_weak(v143);
        }

        v144 = *(&v534 + 1);
        if (*(&v534 + 1) && !atomic_fetch_add((*(&v534 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v144->__on_zero_shared)(v144);
          std::__shared_weak_count::__release_weak(v144);
        }

        if (v501)
        {
          operator delete(v501);
        }

        v145 = _SILogForLogForCategory(0);
        if (v500 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v146 = v145;
          if (os_signpost_enabled(v145))
          {
            LOWORD(v542[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C278D000, v146, OS_SIGNPOST_INTERVAL_END, v499, "VectorIndexANN", "End", v542, 2u);
          }
        }

        if (__THREAD_SLOT_KEY)
        {
          v147 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (v147)
          {
            goto LABEL_186;
          }
        }

        else
        {
          makeThreadId();
          v147 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (v147)
          {
LABEL_186:
            if (v147 < 0x801)
            {
              goto LABEL_187;
            }
          }
        }

        makeThreadId();
        v147 = pthread_getspecific(__THREAD_SLOT_KEY);
        if (!v147)
        {
LABEL_189:
          v148 = *(*(v22 + 1248) + 32);
          v149 = *__error();
          v150 = _SILogForLogForCategory(1);
          v151 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v150, v151))
          {
            v152 = *(v22 + 16);
            LODWORD(v542[0]) = v490;
            *(v542 + 4) = v152;
            WORD6(v542[0]) = 2048;
            *(v542 + 14) = v148 - v498;
            _os_log_impl(&dword_1C278D000, v150, v151, "%p Added %ld items from aNN", v542, 0x16u);
          }

          *__error() = v149;
          goto LABEL_384;
        }

LABEL_187:
        if (v147 <= 0x800)
        {
          *(&threadData[9 * v147 - 5] - 1) = v497;
        }

        goto LABEL_189;
      }

LABEL_518:
      makeThreadId();
      v87 = pthread_getspecific(__THREAD_SLOT_KEY);
      v88 = 0;
      if (!v87)
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }

    if (*(v30 + 2768) >= 5)
    {
      v355 = v41;
      v356 = *__error();
      v357 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v542[0]) = v489;
        *(v542 + 4) = v43;
        _os_log_impl(&dword_1C278D000, v357, OS_LOG_TYPE_DEFAULT, "BT node %p", v542, 0xCu);
      }

      *__error() = v356;
      v30 = 0x1EBF46000;
      v41 = v355;
    }

    v69 = *v43;
    *(v22 + 1224) = *v43;
    *(v22 + 1232) = v69;
    v70 = *(v22 + 1160);
    if (v70)
    {
      v70 = *(v70 + 8 * v41);
    }

    *(v22 + 1248) = v70;
    v71 = *(v22 + 1168);
    if (v71)
    {
      v71 = *(v71 + 8 * v41);
    }

    *(v22 + 1256) = v71;
    *(v22 + 1140) = 0;
    *(v22 + 88) = 0;
    v72 = *(v22 + 8);
    v73 = *v72 >> 3;
    v74 = (*v72 & 7) << 32;
    if ((*v72 & 3) == 1)
    {
      v74 = 0x100000000;
      v73 = *v72 >> 2;
    }

    if (*v72)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    if (*v72)
    {
      v76 = v73;
    }

    else
    {
      v76 = *v72 >> 1;
    }

    *(v22 + 52) = v75 | v76;
    if ((*(v43 + 16) & 4) == 0)
    {
      if (**v43 == 42)
      {
        if (v493)
        {
          v493 = 1;
          *(v22 + 1289) = 1;
        }

        else if (**v22)
        {
          v493 = 1;
        }

        else
        {
          v493 = 1;
          findMatchTermWildcard(v22, v75 | v76, 4, 1);
          v30 = 0x1EBF46000;
        }

        goto LABEL_34;
      }

      v105 = *(v22 + 1240);
      if (*(v43 + 32))
      {
        v106 = v105[4];
        is_fuzzy = icu_search_context_is_fuzzy();
        v108 = *(v22 + 1240);
        if (is_fuzzy)
        {
          v109 = *(v108 + 48);
          *(v22 + 1264) = v109;
          if (!v109)
          {
            v468 = __si_assert_copy_extra_2708(0);
            v469 = v468;
            v470 = "";
            if (v468)
            {
              v470 = v468;
            }

            __message_assert("%s:%u: failed assertion '%s' %s Failed to set up ctx->_node->la for %s %s", "BurstTrie.c", 6099, "ctx->la", v470, **(v22 + 1240), *(*(v22 + 1240) + 8));
            free(v469);
            goto LABEL_670;
          }
        }

        v110 = v41;
        v111 = *v108;
        *&v509 = strlen(*v108);
        *buf = 16;
        if (*MEMORY[0x1E69E9AC8] <= 0x27FuLL)
        {
          ++sTotal;
        }

        v112 = malloc_type_zone_calloc(queryZone, 0x10uLL, 0x28uLL, 0x5BAF1CEAuLL);
        if (!v112 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          LOWORD(v542[0]) = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v542, 2u);
        }

        *&buf[8] = v112;
        *&buf[16] = CFSetCreateMutable(v491, 0, &kTrieLevelInfoSetCallbacks);
        *&v534 = 16;
        if (*MEMORY[0x1E69E9AC8] <= 0x27FuLL)
        {
          ++sTotal;
        }

        v113 = malloc_type_zone_calloc(queryZone, 0x10uLL, 0x28uLL, 0x5BAF1CEAuLL);
        if (!v113 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          LOWORD(v542[0]) = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v542, 2u);
        }

        Mutable = 0;
        *(&v534 + 1) = v113;
        Mutable = CFSetCreateMutable(v491, 0, &kTrieLevelInfoSetCallbacks);
        if (__THREAD_SLOT_KEY)
        {
          v114 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (v114)
          {
            goto LABEL_120;
          }

LABEL_525:
          makeThreadId();
          v114 = pthread_getspecific(__THREAD_SLOT_KEY);
        }

        else
        {
          makeThreadId();
          v114 = pthread_getspecific(__THREAD_SLOT_KEY);
          if (!v114)
          {
            goto LABEL_525;
          }

LABEL_120:
          if (v114 >= 0x801)
          {
            goto LABEL_525;
          }
        }

        v115 = (v114 - 1);
        v501 = LODWORD(threadData[9 * v114 - 5]);
        CICleanUpPush(v114 - 1, trie_level_list_destroy, buf);
        v505 = v115;
        CICleanUpPush(v115, trie_level_list_destroy, &v534);
        if (*(*(v22 + 1240) + 20) < 7)
        {
          trie_level_list_insert_with_state(buf, *(v22 + 52), 0, 0, 1, 0);
          goto LABEL_196;
        }

        if (*v111 != 1)
        {
          goto LABEL_196;
        }

        v116 = v111[1];
        if ((v111[1] & 0x80000000) == 0)
        {
          v117 = 2;
          goto LABEL_460;
        }

        v261 = v111[2];
        if ((v111[2] & 0x80000000) == 0)
        {
          v116 = v116 & 0x7F | (v261 << 7);
          v117 = 3;
          goto LABEL_460;
        }

        v270 = v111[3];
        if ((v111[3] & 0x80000000) == 0)
        {
          v117 = 4;
          v116 = ((v261 & 0x7F) << 7) | (v270 << 14) | v116 & 0x7F;
          goto LABEL_460;
        }

        v326 = v111[4];
        if ((v111[4] & 0x80000000) == 0)
        {
          v117 = 5;
          v116 = ((v270 & 0x7F) << 14) | (v326 << 21) | ((v261 & 0x7F) << 7) | v116 & 0x7F;
          goto LABEL_460;
        }

        v334 = v111[5];
        if (v334 < 0)
        {
          goto LABEL_686;
        }

        v117 = 6;
        v116 = ((v326 & 0x7F) << 21) | (v334 << 28) | ((v270 & 0x7F) << 14) | ((v261 & 0x7F) << 7) | v116 & 0x7F;
LABEL_460:
        if (v116 == 2)
        {
          v335 = v117 + 1;
          if ((v111[v117] & 0x80000000) == 0)
          {
            goto LABEL_462;
          }

          v336 = v117 + 2;
          if ((v111[v335] & 0x80000000) == 0)
          {
LABEL_464:
            v117 = v336;
            goto LABEL_465;
          }

          v335 = v117 + 3;
          if ((v111[v336] & 0x80000000) == 0)
          {
LABEL_462:
            v117 = v335;
            goto LABEL_465;
          }

          v336 = v117 + 4;
          if ((v111[v335] & 0x80000000) == 0)
          {
            goto LABEL_464;
          }

          if ((v111[v336] & 0x80000000) == 0)
          {
            v117 += 5;
            goto LABEL_465;
          }

LABEL_686:
          v486 = __si_assert_copy_extra_2708(0);
          v487 = v486;
          v488 = "";
          if (v486)
          {
            v488 = v486;
          }

          __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v488);
          free(v487);
          if (__valid_fs(-1))
          {
            v471 = 2989;
LABEL_671:
            *v471 = -559038737;
            abort();
          }

LABEL_670:
          v471 = 3072;
          goto LABEL_671;
        }

LABEL_465:
        if (v117 > v509)
        {
          goto LABEL_196;
        }

        v337 = 0;
        v338 = *(v22 + 8);
        v339 = *(v22 + 52);
        v340 = v339;
        v341 = HIDWORD(v339);
        while (2)
        {
          if (v341 != 3)
          {
            if (v341 != 1)
            {
              if (!v337 || v341 || !v340)
              {
                goto LABEL_196;
              }

LABEL_503:
              findAddFlatBucket(v22, v340, v111, v337, 0, 0);
              goto LABEL_196;
            }

            v342 = mgetBase(v338, v340);
            v343 = *(&tcm + v111[v337]);
            v344 = (v342 + 4);
            if (((*(v342 + 4 + ((v343 >> 3) & 0x1C)) >> v343) & 1) == 0)
            {
              goto LABEL_196;
            }

            v345 = 0;
            v346 = v343 >> 6;
            if ((v343 >> 6) > 1)
            {
              if (v346 != 2)
              {
                v349 = vcnt_s8(*(v342 + 20));
                v349.i16[0] = vaddlv_u8(v349);
                v345 = v349.u32[0];
              }

              v350 = vcnt_s8(*(v342 + 12));
              v350.i16[0] = vaddlv_u8(v350);
              v345 += v350.u32[0];
            }

            else
            {
              v347 = v343 >> 6;
              if (!v346)
              {
LABEL_483:
                v352 = vcnt_s8((*&v344[v346] & ~(-1 << v343)));
                v352.i16[0] = vaddlv_u8(v352);
                v348 = *(v342 + 38 + 4 * (v352.u32[0] + v347));
                if (v348)
                {
                  goto LABEL_484;
                }

LABEL_477:
                v340 = v348 >> 1;
                if (!(v348 >> 1))
                {
                  goto LABEL_196;
                }

                v341 = 0;
                goto LABEL_469;
              }
            }

            v351 = vcnt_s8(*v344);
            v351.i16[0] = vaddlv_u8(v351);
            v347 = v351.u32[0] + v345;
            goto LABEL_483;
          }

          v348 = *(*(v338 + 8) + 1028 * v340 + 4 * *(&tcm + v111[v337]) + 4);
          if ((v348 & 1) == 0)
          {
            goto LABEL_477;
          }

LABEL_484:
          if ((v348 & 3) == 1)
          {
            v340 = v348 >> 2;
            if (!(v348 >> 2))
            {
              goto LABEL_196;
            }

            v341 = 1;
          }

          else
          {
            v340 = v348 >> 3;
            if (!(v348 >> 3))
            {
              goto LABEL_196;
            }

            v341 = v348 & 7;
          }

LABEL_469:
          if (v117 != ++v337)
          {
            continue;
          }

          break;
        }

        if (!v117)
        {
          goto LABEL_196;
        }

        if (!v341)
        {
          LODWORD(v337) = v117;
          goto LABEL_503;
        }

        v353 = v340;
        v354 = malloc_type_zone_malloc(queryZone, (v117 + 1), 0xA4971684uLL);
        if (!v354)
        {
          _log_fault_for_malloc_failure();
        }

        memcpy(v354, v111, v117);
        *(v354 + v117) = 0;
        trie_level_list_insert_with_state(buf, v353 | (v341 << 32), v354, v117, 1, 0);
        if (v117 < v509 && v111[v117] == 42)
        {
          v42 = v510;
          __memcpy_chk();
          *(v510 + v117) = 0;
          *(v22 + 1140) = v117;
          findMatchTermWildcard(v22, **&buf[8], 0, 1);
          v158 = 0;
          LODWORD(v509) = 0;
          v533 = 0;
          v532 = 0;
          v531 = 0;
          goto LABEL_271;
        }

LABEL_196:
        v533 = 0;
        v532 = 0;
        v531 = 0;
        v156 = *(*(v22 + 1240) + 32);
        v42 = v510;
        if (icu_search_context_is_fuzzy())
        {
          while (*&buf[4])
          {
            if (*&buf[4] >= 1)
            {
              v200 = 0;
              v201 = 0;
              do
              {
                v538 = 0uLL;
                v210 = *&buf[8];
                v538 = *(*&buf[8] + v200 + 24);
                v211 = *(v22 + 1264);
                v212 = DWORD2(v538);
                if (*(v211 + 48))
                {
                  v213 = v538 == 0;
                }

                else
                {
                  v213 = 1;
                }

                if (v213)
                {
                  goto LABEL_249;
                }

                v214 = *(v211 + 16) - *(v211 + 32);
                v215 = 5 * (BYTE8(v538) - v214);
                v216 = v214 >= DWORD2(v538);
                v217 = 5 * (v214 - BYTE8(v538));
                if (v216)
                {
                  v215 = 0;
                }

                if (!v216)
                {
                  v217 = 0;
                }

                if (((v538 << v215 >> v217) & 0x1F79C61) == 0)
                {
LABEL_249:
                  v202 = 2 * *(v211 + 32);
                  if (v202 < *(v211 + 16) - DWORD2(v538))
                  {
                    v203 = v202 + 1;
                  }

                  else
                  {
                    v203 = *(v211 + 16) - BYTE8(v538);
                  }

                  LOBYTE(v540[0]) = 0;
                  *&v542[0] = 0;
                  tt_transition_for_state(**v211, v538, v203 << 8, v542, v540);
                  v204 = *&v542[0];
                  v205 = *(v211 + 40) + 24 * v212;
                  *(v205 + 8) = *&v542[0];
                  *(v205 + 16) = LOBYTE(v540[0]) + v212;
                  v206 = *v205;
                  v207 = *(v205 + 16);
                  v208 = *(*&buf[8] + v200);
                  *v539 = *(*&buf[8] + v200 + 8);
                  *&v539[16] = *(*&buf[8] + v200 + 24);
                  v537 = 0;
                  v536 = 0;
                  v209 = *(v22 + 8);
                  *&v540[0] = MEMORY[0x1E69E9820];
                  *(&v540[0] + 1) = 0x40000000;
                  *&v540[1] = __trie_resolve_fuzzy_transition_block_invoke;
                  *(&v540[1] + 1) = &__block_descriptor_tmp_111;
                  *&v541[0] = v22;
                  *(&v541[0] + 1) = v208;
                  v541[1] = *v539;
                  v541[2] = *&v539[16];
                  *&v542[0] = MEMORY[0x1E69E9820];
                  *(&v542[0] + 1) = 0x40000000;
                  *&v542[1] = __trie_resolve_fuzzy_transition_block_invoke_2;
                  *(&v542[1] + 1) = &__block_descriptor_tmp_113;
                  *&v543[3] = *&v539[16];
                  *&v543[1] = *v539;
                  v543[0] = v208;
                  v543[5] = v204;
                  *&v544 = v207;
                  *(&v544 + 1) = v22;
                  *&v545 = &v534;
                  _trie_resolve_sub_trie(v209, v208, v206, &v536, 0, v204 != 0, v540, v542);
                }

                else
                {
                  v218 = (*&buf[8] + v200);
                  *(v22 + 1140) = *(*&buf[8] + v200 + 16);
                  v219 = *(v210 + v200 + 8);
                  __memcpy_chk();
                  *(v42 + *(v22 + 1140)) = 0;
                  *(v22 + 1272) = &v538;
                  findMatchTermWildcard(v22, *v218, 0, 1);
                  *(v22 + 1272) = 0;
                }

                ++v201;
                v200 += 40;
              }

              while (v201 < *&buf[4]);
            }

            v220 = v504;
            v221 = 0uLL;
            if ((*(*(v22 + 1240) + 16) & 2) != 0 && SDWORD1(v534) >= 1)
            {
              v222 = 0;
              v223 = 0;
              do
              {
                v543[0] = 0;
                v542[0] = v221;
                v542[1] = v221;
                v224 = *(*(&v534 + 1) + v222 + 32);
                v225 = *(*(&v534 + 1) + v222 + 16);
                v542[0] = *(*(&v534 + 1) + v222);
                v226 = v542[0];
                v542[1] = v225;
                v543[0] = v224;
                *(v22 + 1272) = v220;
                v540[0] = v226;
                v540[1] = v225;
                *&v541[0] = v224;
                _trie_resolve_combining(v22, v540, &v534);
                v221 = 0uLL;
                *(v22 + 1272) = 0;
                ++v223;
                v222 += 40;
              }

              while (v223 < SDWORD1(v534));
            }

            v198 = Mutable;
            v199 = v534;
            v534 = *buf;
            Mutable = *&buf[16];
            DWORD1(v534) = 0;
            *buf = v199;
            *&buf[16] = v198;
          }

          v158 = 0;
          LODWORD(v509) = 0;
        }

        else
        {
          v157 = *(*(v22 + 1240) + 32);
          LODWORD(v509) = icu_search_context_item_get_item_count();
          v158 = 0;
          if (v509 >= 1 && *&buf[4] != 0)
          {
            do
            {
              v160 = *(*(v22 + 1240) + 32);
              info = icu_search_context_item_get_info();
              if (!info)
              {
                v455 = __si_assert_copy_extra_2708(0);
                __message_assert("%s:%u: failed assertion '%s' %s ");
                goto LABEL_654;
              }

              v162 = info;
              v163 = *&buf[4];
              if (*&buf[4] < 1)
              {
                goto LABEL_227;
              }

              if (info <= 2)
              {
                if (info == 1)
                {
                  v193 = 0;
                  v194 = v42;
                  v195 = 0;
                  do
                  {
                    v196 = (*&buf[8] + v193);
                    *(v22 + 1140) = *(*&buf[8] + v193 + 16);
                    v197 = v196[1];
                    __memcpy_chk();
                    *(v194 + *(v22 + 1140)) = 0;
                    findMatchTermWildcard(v22, *v196, 0, 1);
                    ++v195;
                    v193 += 40;
                  }

                  while (v195 < *&buf[4]);
                  v42 = v194;
                }

                else if (info == 2)
                {
                  v177 = 0;
                  v178 = 0;
                  do
                  {
                    v542[0] = *(*&buf[8] + v177);
                    v542[1] = *(*&buf[8] + v177 + 16);
                    v543[0] = *(*&buf[8] + v177 + 32);
                    _trie_resolve_combining(v22, v542, buf);
                    ++v178;
                    v163 = *&buf[4];
                    v177 += 40;
                  }

                  while (v178 < *&buf[4]);
LABEL_226:
                  v42 = v510;
LABEL_227:
                  if (v162 == 2)
                  {
                    goto LABEL_229;
                  }
                }
              }

              else
              {
                switch(info)
                {
                  case 3:
                    v181 = v20;
                    v182 = v110;
                    v183 = 0;
                    v184 = 0;
                    do
                    {
                      v185 = strlen(v531);
                      v542[0] = *(*&buf[8] + v183);
                      v542[1] = *(*&buf[8] + v183 + 16);
                      v543[0] = *(*&buf[8] + v183 + 32);
                      trie_resolve_sub_string(v22, v542, v531, v185, &v534);
                      ++v184;
                      v183 += 40;
                    }

                    while (v184 < *&buf[4]);
                    v110 = v182;
                    v20 = v181;
                    v42 = v510;
                    break;
                  case 5:
                    v186 = 0;
                    do
                    {
                      if (v532 >= 1)
                      {
                        for (i = 0; i < v532; ++i)
                        {
                          v188 = *(v533 + 8 * i);
                          v189 = *&buf[8] + 40 * v186;
                          v190 = *v188;
                          v542[0] = *v189;
                          v542[1] = *(v189 + 16);
                          v543[0] = *(v189 + 32);
                          trie_resolve_sub_string(v22, v542, v188 + 1, v190, &v534);
                        }
                      }

                      if (v531)
                      {
                        v191 = *&buf[8] + 40 * v186;
                        v192 = strlen(v531);
                        v542[0] = *v191;
                        v542[1] = *(v191 + 16);
                        v543[0] = *(v191 + 32);
                        trie_resolve_sub_string(v22, v542, v531, v192, &v534);
                      }

                      ++v186;
                      v163 = *&buf[4];
                    }

                    while (v186 < *&buf[4]);
                    goto LABEL_226;
                  case 4:
                    v164 = 0;
                    do
                    {
                      if ((*(*(v22 + 1240) + 16) & 2) != 0)
                      {
                        if (v532 >= 1)
                        {
                          for (j = 0; j < v532; ++j)
                          {
                            v170 = *(v533 + 8 * j);
                            v171 = *v170;
                            v173 = v170[1];
                            v172 = (v170 + 1);
                            v174 = *&buf[8] + 40 * v164;
                            if (utf8_byte_length_noerror(unsigned char)::utf8_len_table[v173 >> 4] == v171)
                            {
                              v542[0] = *v174;
                              v542[1] = *(v174 + 16);
                              v543[0] = *(v174 + 32);
                              trie_resolve_sub_string(v22, v542, v172, v171, &v534);
                            }

                            else
                            {
                              v540[0] = *v174;
                              v540[1] = *(v174 + 16);
                              *&v541[0] = *(v174 + 32);
                              v553 = 0u;
                              v554 = 0u;
                              v551 = 0u;
                              v552 = 0u;
                              v549 = 0u;
                              v550 = 0u;
                              v547 = 0u;
                              v548 = 0u;
                              v545 = 0u;
                              v546 = 0u;
                              v544 = 0u;
                              memset(v543, 0, sizeof(v543));
                              memset(v542, 0, sizeof(v542));
                              _trie_resolve_sub_string_ignore_diacritics(v22, v540, v172, v171, &v534, v542, 0);
                            }
                          }
                        }
                      }

                      else if (v532 >= 1)
                      {
                        for (k = 0; k < v532; ++k)
                        {
                          v166 = *(v533 + 8 * k);
                          v167 = *&buf[8] + 40 * v164;
                          v168 = *v166;
                          v542[0] = *v167;
                          v542[1] = *(v167 + 16);
                          v543[0] = *(v167 + 32);
                          trie_resolve_sub_string(v22, v542, v166 + 1, v168, &v534);
                        }
                      }

                      if (v531)
                      {
                        v175 = *&buf[8] + 40 * v164;
                        v176 = strlen(v531);
                        v542[0] = *v175;
                        v542[1] = *(v175 + 16);
                        v543[0] = *(v175 + 32);
                        trie_resolve_sub_string(v22, v542, v531, v176, &v534);
                      }

                      ++v164;
                      v163 = *&buf[4];
                    }

                    while (v164 < *&buf[4]);
                    goto LABEL_226;
                }
              }

              v179 = Mutable;
              v180 = v534;
              v534 = *buf;
              Mutable = *&buf[16];
              DWORD1(v534) = 0;
              *buf = v180;
              *&buf[16] = v179;
              v163 = DWORD1(v180);
LABEL_229:
              ++v158;
            }

            while (v158 < v509 && v163);
          }
        }

LABEL_271:
        v227 = *(*(v22 + 1240) + 32);
        if (icu_search_context_is_fuzzy())
        {
          if (!*(*(v22 + 1264) + 48))
          {
LABEL_278:
            v229 = *(v22 + 1240);
            v231 = *(v229 + 16);
            v230 = *(v229 + 20);
            if ((v231 & 0x800) != 0)
            {
              if (v230)
              {
                if (v230 == 1)
                {
                  if (*&buf[4] >= 1)
                  {
                    v271 = 0;
                    v272 = 0;
                    do
                    {
                      v542[0] = *(*&buf[8] + v271);
                      v542[1] = *(*&buf[8] + v271 + 16);
                      v543[0] = *(*&buf[8] + v271 + 32);
                      trie_resolve_sub_string(v22, v542, "\x01\x04", 2, &v534);
                      v542[0] = *(*&buf[8] + v271);
                      v542[1] = *(*&buf[8] + v271 + 16);
                      v543[0] = *(*&buf[8] + v271 + 32);
                      trie_resolve_sub_string(v22, v542, "\x01\x04\x03", 2, &v534);
                      ++v272;
                      v271 += 40;
                    }

                    while (v272 < *&buf[4]);
                  }
                }

                else if (v230 == 5 && *&buf[4] >= 1)
                {
                  v258 = 0;
                  v259 = 0;
                  do
                  {
                    v542[0] = *(*&buf[8] + v258);
                    v542[1] = *(*&buf[8] + v258 + 16);
                    v543[0] = *(*&buf[8] + v258 + 32);
                    trie_resolve_sub_string(v22, v542, "\x01\x05", 2, &v534);
                    v542[0] = *(*&buf[8] + v258);
                    v542[1] = *(*&buf[8] + v258 + 16);
                    v543[0] = *(*&buf[8] + v258 + 32);
                    trie_resolve_sub_string(v22, v542, "\x01\x05\x03", 2, &v534);
                    ++v259;
                    v258 += 40;
                  }

                  while (v259 < *&buf[4]);
                }
              }

              else if (*&buf[4] >= 1)
              {
                v273 = 0;
                v274 = 0;
                do
                {
                  v542[0] = *(*&buf[8] + v273);
                  v542[1] = *(*&buf[8] + v273 + 16);
                  v543[0] = *(*&buf[8] + v273 + 32);
                  trie_resolve_sub_string(v22, v542, "\x01", 1, &v534);
                  ++v274;
                  v273 += 40;
                }

                while (v274 < *&buf[4]);
              }

              v275 = Mutable;
              v276 = v534;
              v534 = *buf;
              Mutable = *&buf[16];
              DWORD1(v534) = 0;
              *buf = v276;
              *&buf[16] = v275;
            }

            else if (v230)
            {
              if (v230 == 1)
              {
                if (*&buf[4] >= 1)
                {
                  v232 = 0;
                  v233 = 0;
                  do
                  {
                    v542[0] = *(*&buf[8] + v232);
                    v542[1] = *(*&buf[8] + v232 + 16);
                    v543[0] = *(*&buf[8] + v232 + 32);
                    trie_resolve_sub_string(v22, v542, "\x01\x01", 2, &v534);
                    v542[0] = *(*&buf[8] + v232);
                    v542[1] = *(*&buf[8] + v232 + 16);
                    v543[0] = *(*&buf[8] + v232 + 32);
                    trie_resolve_sub_string(v22, v542, "\x01\x01\x03", 3, &v534);
                    ++v233;
                    v232 += 40;
                  }

                  while (v233 < *&buf[4]);
                }
              }

              else if (v230 >= 7 && *&buf[4] >= 1)
              {
                v266 = 0;
                v267 = 0;
                do
                {
                  v542[0] = *(*&buf[8] + v266);
                  v542[1] = *(*&buf[8] + v266 + 16);
                  v543[0] = *(*&buf[8] + v266 + 32);
                  trie_resolve_sub_string(v22, v542, "\x01\x03", 2, &v534);
                  ++v267;
                  v266 += 40;
                }

                while (v267 < *&buf[4]);
              }
            }

            else if ((v231 & 0x3080) == 0 && *&buf[4] >= 1)
            {
              v264 = 0;
              v265 = 0;
              do
              {
                v542[0] = *(*&buf[8] + v264);
                v542[1] = *(*&buf[8] + v264 + 16);
                v543[0] = *(*&buf[8] + v264 + 32);
                trie_resolve_sub_string(v22, v542, "\x01\x02", 2, &v534);
                ++v265;
                v264 += 40;
              }

              while (v265 < *&buf[4]);
            }

            while (*(v22 + 48) == 1)
            {
              if (*&buf[4] >= 1)
              {
                v277 = 0;
                v278 = 0;
                while (1)
                {
                  v279 = *(*&buf[8] + v277);
                  v280 = *(*&buf[8] + v277 + 4);
                  if (v280 == 3)
                  {
                    break;
                  }

                  if (v280 == 1)
                  {
                    v281 = *mgetBase(*(v22 + 8), v279);
LABEL_361:
                    v282 = v281 >> 3;
                    v283 = (v281 & 7) << 32;
                    if ((v281 & 3) == 1)
                    {
                      v282 = v281 >> 2;
                      v283 = 0x100000000;
                    }

                    v284 = (v281 & 1) == 0;
                    if (v281)
                    {
                      v285 = v282;
                    }

                    else
                    {
                      v285 = v281 >> 1;
                    }

                    if (v284)
                    {
                      v286 = 0;
                    }

                    else
                    {
                      v286 = v283;
                    }

                    if (v285)
                    {
                      findAddFlatBucket(v22, v286 | v285, *(*&buf[8] + v277 + 8), *(*&buf[8] + v277 + 16), 0, 0);
                    }
                  }

                  ++v278;
                  v277 += 40;
                  if (v278 >= *&buf[4])
                  {
                    goto LABEL_382;
                  }
                }

                v281 = *(*(*(v22 + 8) + 8) + 1028 * v279);
                goto LABEL_361;
              }

LABEL_382:
              if (!DWORD1(v534))
              {
                goto LABEL_383;
              }

              v542[0] = v534;
              *&v542[1] = Mutable;
              v534 = *buf;
              Mutable = *&buf[16];
              DWORD1(v534) = 0;
              CFSetRemoveAllValues(*&buf[16]);
              *buf = v542[0];
              *&buf[16] = *&v542[1];
            }

            if (*&buf[4] < 1)
            {
              goto LABEL_382;
            }

            v287 = 0;
            v288 = 0;
            while (1)
            {
              v289 = *(*&buf[8] + v287);
              v290 = *(*&buf[8] + v287 + 4);
              if (v290 == 3)
              {
                v291 = *(*(*(v22 + 8) + 8) + 1028 * v289);
                if (v291)
                {
                  goto LABEL_379;
                }
              }

              else if (v290 == 1)
              {
                v291 = *mgetBase(*(v22 + 8), v289);
                if (v291)
                {
LABEL_379:
                  v292 = *(v22 + 1240);
                  if (termFieldMatch(*(v292 + 20), *(*&buf[8] + v287 + 8), *(*&buf[8] + v287 + 16), *(v292 + 16)))
                  {
                    v293 = *(v292 + 32);
                    *&v542[0] = 0;
                    *&v540[0] = 0;
                    if (icu_search_match())
                    {
                      findHandleMatch(v22, v291, 0, *(*&buf[8] + v287 + 8), *(*&buf[8] + v287 + 16), 1);
                    }
                  }
                }
              }

              ++v288;
              v287 += 40;
              if (v288 >= *&buf[4])
              {
                goto LABEL_382;
              }
            }
          }
        }

        else if (v158)
        {
          if (v158 == v509)
          {
            if (*&buf[4])
            {
              v228 = *(*(v22 + 1240) + 32);
              if (icu_search_context_item_get_info() != 1)
              {
                goto LABEL_278;
              }
            }
          }
        }

LABEL_383:
        CICleanUpReset(v505, v501);
        *(v22 + 1264) = 0;
LABEL_384:
        v30 = 0x1EBF46000;
        v41 = v110;
        goto LABEL_34;
      }

      v153 = *v105;
      if (*v153 > 3u)
      {
LABEL_453:
        findMatchTerm(v22, 0);
        v30 = 0x1EBF46000;
        goto LABEL_34;
      }

      v154 = v153[1];
      if (v153[1] < 0)
      {
        v260 = v153[2];
        if (v153[2] < 0)
        {
          v268 = v153[3];
          if (v153[3] < 0)
          {
            v324 = v153[4];
            if (v153[4] < 0)
            {
              v330 = v153[5];
              if (v330 < 0)
              {
                goto LABEL_686;
              }

              v331 = ((v324 & 0x7F) << 21) | (v330 << 28) | ((v268 & 0x7F) << 14) | ((v260 & 0x7F) << 7) | v154 & 0x7F;
              v155 = 6;
              v154 = v331;
            }

            else
            {
              v325 = ((v268 & 0x7F) << 14) | (v324 << 21) | ((v260 & 0x7F) << 7) | v154 & 0x7F;
              v155 = 5;
              v154 = v325;
            }
          }

          else
          {
            v269 = ((v260 & 0x7F) << 7) | (v268 << 14) | v154 & 0x7F;
            v155 = 4;
            v154 = v269;
          }
        }

        else
        {
          v154 = v154 & 0x7F | (v260 << 7);
          v155 = 3;
        }
      }

      else
      {
        v155 = 2;
      }

      if ((v154 - 1) > 5)
      {
LABEL_452:
        *(v22 + 1232) = &v69[v155];
        goto LABEL_453;
      }

      v332 = v155 + 1;
      if ((v153[v155] & 0x80000000) == 0)
      {
LABEL_449:
        v155 = v332;
        goto LABEL_452;
      }

      v333 = v155 + 2;
      if (v153[v332] < 0)
      {
        v332 = v155 + 3;
        if ((v153[v333] & 0x80000000) == 0)
        {
          goto LABEL_449;
        }

        v333 = v155 + 4;
        if (v153[v332] < 0)
        {
          if (v153[v333] < 0)
          {
            goto LABEL_686;
          }

          v155 += 5;
          goto LABEL_452;
        }
      }

      v155 = v333;
      goto LABEL_452;
    }

    v98 = *(v22 + 1240);
    v100 = *v98;
    v99 = v98[1];
    v101 = **v98;
    v102 = (v101 - 2) <= 2 && v101 == *v99;
    if (!v102)
    {
      goto LABEL_34;
    }

    v103 = *(v100 + 1);
    if (*(v100 + 1) < 0)
    {
      v104 = *(v100 + 2);
      if (*(v100 + 2) < 0)
      {
        v256 = *(v100 + 3);
        if (*(v100 + 3) < 0)
        {
          v262 = *(v100 + 4);
          if (*(v100 + 4) < 0)
          {
            v294 = *(v100 + 5);
            if (v294 < 0)
            {
              goto LABEL_686;
            }

            v263 = ((v262 & 0x7F) << 21) | (v294 << 28) | ((v256 & 0x7F) << 14);
          }

          else
          {
            v263 = ((v256 & 0x7F) << 14) | (v262 << 21);
          }

          v257 = v263 & 0xFFFFC07F | ((v104 & 0x7F) << 7);
        }

        else
        {
          v257 = ((v104 & 0x7F) << 7) | (v256 << 14);
        }

        v103 = v257 & 0xFFFFFF80 | v103 & 0x7F;
      }

      else
      {
        v103 = v103 & 0x7F | (v104 << 7);
      }
    }

    v295 = v99[1];
    if (v99[1] < 0)
    {
      v298 = v99[2];
      if (v99[2] < 0)
      {
        v299 = v99[3];
        if (v99[3] < 0)
        {
          v301 = v99[4];
          if (v99[4] < 0)
          {
            v302 = v99[5];
            if (v302 < 0)
            {
              v455 = __si_assert_copy_extra_2708(0);
              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
LABEL_654:
              free(v455);
              if (!__valid_fs(-1))
              {
                goto LABEL_682;
              }

              goto LABEL_655;
            }

            v296 = v41;
            v300 = ((v301 & 0x7F) << 21) | (v302 << 28) | ((v299 & 0x7F) << 14) | ((v298 & 0x7F) << 7) | v295 & 0x7F;
            v297 = 6;
          }

          else
          {
            v296 = v41;
            v300 = ((v299 & 0x7F) << 14) | (v301 << 21) | ((v298 & 0x7F) << 7) | v295 & 0x7F;
            v297 = 5;
          }
        }

        else
        {
          v296 = v41;
          v300 = ((v298 & 0x7F) << 7) | (v299 << 14) | v295 & 0x7F;
          v297 = 4;
        }

        v295 = v300;
        if (!v103)
        {
          goto LABEL_516;
        }
      }

      else
      {
        v296 = v41;
        v295 = v295 & 0x7F | (v298 << 7);
        v297 = 3;
        if (!v103)
        {
          goto LABEL_516;
        }
      }
    }

    else
    {
      v296 = v41;
      v297 = 2;
      if (!v103)
      {
        goto LABEL_516;
      }
    }

    if (v103 != v295)
    {
      goto LABEL_516;
    }

    v303 = HIDWORD(v75);
    if (HIDWORD(v75) == 1)
    {
      if (*(v22 + 72) > v76)
      {
        goto LABEL_408;
      }

      v476 = __si_assert_copy_extra_2708(*(v72 + 112));
      v477 = v476;
      v478 = "";
      if (v476)
      {
        v478 = v476;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 6045, "ptr.next < ctx->trie_max", v478, v76, *(v22 + 64));
      free(v477);
      v479 = *(*(v22 + 8) + 112);
LABEL_681:
      if (!__valid_fsp(v479))
      {
LABEL_682:
        MEMORY[0xC00] = -559038737;
        abort();
      }

LABEL_655:
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (HIDWORD(v75) == 3 && *(v22 + 64) <= v76)
    {
      v480 = __si_assert_copy_extra_2708(*(v72 + 4576));
      v481 = v480;
      v482 = "";
      if (v480)
      {
        v482 = v480;
      }

      __message_assert("%s:%u: failed assertion '%s' %s next: %d, max: %d", "BurstTrie.c", 6043, "ptr.next < ctx->trie_fat_max", v482, v76, *(v22 + 64));
      free(v481);
      v479 = *(*(v22 + 8) + 4576);
      goto LABEL_681;
    }

LABEL_408:
    while (1)
    {
      v304 = *(v22 + 1224);
      *(v22 + 1224) = v304 + 1;
      v305 = *v304;
      v306 = *(v22 + 8);
      v307 = v76;
      v308 = *(&tcm + v305);
      if (v303 == 1)
      {
        break;
      }

      if (v303 != 3)
      {
        goto LABEL_437;
      }

      v309 = *(*(v306 + 8) + 1028 * v307 + 4 * v308 + 4);
      v310 = v309 >> 3;
      v311 = (v309 & 7) << 32;
      if ((v309 & 3) == 1)
      {
        v310 = v309 >> 2;
        v311 = 0x100000000;
      }

      if (v309)
      {
        LODWORD(v76) = v310;
      }

      else
      {
        LODWORD(v76) = v309 >> 1;
      }

      if (v309)
      {
        v312 = v311;
      }

      else
      {
        v312 = 0;
      }

      v30 = 0x1EBF46000;
LABEL_432:
      if (!v76)
      {
        goto LABEL_516;
      }

      v323 = *(v22 + 1140);
      *(v22 + 1140) = v323 + 1;
      *(v42 + v323) = v305;
      *(v42 + *(v22 + 1140)) = 0;
      if (!v312)
      {
        findAddFlatBucket(v22, v76, 0, 0, 0, 0);
LABEL_437:
        v30 = 0x1EBF46000;
LABEL_516:
        v41 = v296;
LABEL_34:
        if (++v41 >= *(v22 + 1152))
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }

      v303 = HIDWORD(v312);
      if (!--v297)
      {
        findMatchRangeChars(v22, v312 | v76);
        goto LABEL_437;
      }
    }

    v313 = mgetBase(v306, v307);
    v314 = (v313 + 4);
    if (((*(v313 + 4 + 4 * (v308 >> 5)) >> v308) & 1) == 0)
    {
      goto LABEL_437;
    }

    v315 = 0;
    v316 = v308 >> 6;
    v30 = 0x1EBF46000;
    if (v308 >> 6 > 1)
    {
      if (v316 != 2)
      {
        v318 = vcnt_s8(*(v313 + 20));
        v318.i16[0] = vaddlv_u8(v318);
        v315 = v318.u32[0];
      }

      v319 = vcnt_s8(*(v313 + 12));
      v319.i16[0] = vaddlv_u8(v319);
      v315 += v319.u32[0];
    }

    else
    {
      v317 = v308 >> 6;
      if (!v316)
      {
LABEL_427:
        v321 = vcnt_s8((*&v314[v316] & ~(-1 << v308)));
        v321.i16[0] = vaddlv_u8(v321);
        v322 = *(v313 + 38 + 4 * (v321.u32[0] + v317));
        if (v322)
        {
          if ((*(v313 + 38 + 4 * (v321.u32[0] + v317)) & 3) == 1)
          {
            LODWORD(v76) = v322 >> 2;
            v312 = 0x100000000;
          }

          else
          {
            LODWORD(v76) = v322 >> 3;
            v312 = (v322 & 7) << 32;
          }
        }

        else
        {
          v312 = 0;
          LODWORD(v76) = v322 >> 1;
        }

        goto LABEL_432;
      }
    }

    v320 = vcnt_s8(*v314);
    v320.i16[0] = vaddlv_u8(v320);
    v317 = v320.u32[0] + v315;
    goto LABEL_427;
  }

  (*(a11 + 16))(a11, v22);
  v30 = 0x1EBF46000uLL;
LABEL_19:
  if (*(v30 + 2768) >= 5)
  {
    v457 = *__error();
    v458 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
    {
      v459 = *(v22 + 1184);
      v460 = CFAbsoluteTimeGetCurrent() - Current;
      LODWORD(v542[0]) = 67109376;
      DWORD1(v542[0]) = v459;
      WORD4(v542[0]) = 2048;
      *(v542 + 10) = v460;
      _os_log_impl(&dword_1C278D000, v458, OS_LOG_TYPE_DEFAULT, "resolve trie terms bc:%u : %f seconds", v542, 0x12u);
    }

    *__error() = v457;
    v31 = *(v22 + 1184);
    if (!v31)
    {
      goto LABEL_545;
    }
  }

  else
  {
    v31 = *(v22 + 1184);
    if (!v31)
    {
      goto LABEL_545;
    }
  }

  if (**v22)
  {
    goto LABEL_545;
  }

  if (v31 < 0x15)
  {
    goto LABEL_542;
  }

  if ((*(v22 + 1288) & 1) == 0)
  {
    goto LABEL_542;
  }

  v32 = CFAbsoluteTimeGetCurrent();
  v33 = *(v22 + 1184);
  memset(v543, 0, sizeof(v543));
  memset(v542, 0, sizeof(v542));
  v34 = 0x1EBF46000;
  if (!v33)
  {
    goto LABEL_542;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = *(v22 + 40);
  while (1)
  {
    v39 = *(v38 + 8 * v35);
    if ((*v39 & 3) == 0)
    {
      goto LABEL_26;
    }

    v40 = *(v39 + 8);
    if (v40 == 0.0)
    {
      goto LABEL_26;
    }

    ++v37;
    if (v36 > 19)
    {
      break;
    }

    *(v542 + v36++) = v40;
LABEL_26:
    if (v33 == ++v35)
    {
      goto LABEL_540;
    }
  }

  v369 = v32;
  qsort(v542, v36, 4uLL, _floatCompare);
  if (v33 <= v35)
  {
    v32 = v369;
    v34 = 0x1EBF46000uLL;
  }

  else
  {
    v370 = *(v22 + 40);
    v32 = v369;
    v34 = 0x1EBF46000;
    do
    {
      v372 = *(v370 + 8 * v35);
      if ((*v372 & 3) != 0)
      {
        v373 = *(v372 + 8);
        if (v373 != 0.0)
        {
          ++v37;
          if (v373 > *v542)
          {
            LODWORD(v542[0]) = *(v372 + 8);
            v374 = 1;
            while (1)
            {
              v375 = *(v542 + v374);
              if (v373 > v375)
              {
                break;
              }

              if (v374 <= 0x12)
              {
                ++v374;
                v102 = v373 == v375;
                v373 = v375;
                if (!v102)
                {
                  continue;
                }
              }

              goto LABEL_529;
            }

            v371 = v542 + v374;
            *(v371 - 1) = v375;
            *v371 = v373;
          }
        }
      }

LABEL_529:
      ++v35;
    }

    while (v35 != v33);
  }

LABEL_540:
  if (v37 < 0x15)
  {
LABEL_542:
    v382 = CFAbsoluteTimeGetCurrent();
    psort(*(v22 + 40), v31, 8uLL, flatPageSearchBucketCompare);
    v383 = *__error();
    v384 = _SILogForLogForCategory(1);
    v385 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v384, v385))
    {
      v386 = CFAbsoluteTimeGetCurrent() - v382;
      LODWORD(v542[0]) = 67109376;
      DWORD1(v542[0]) = v31;
      WORD4(v542[0]) = 2048;
      *(v542 + 10) = v386;
      _os_log_impl(&dword_1C278D000, v384, v385, "sort %d flat pages: %f seconds", v542, 0x12u);
    }

    *__error() = v383;
    goto LABEL_545;
  }

  v376 = 0;
  v377 = 0;
  v378 = 0;
  v379 = *v542;
  v380 = *(v22 + 40);
  v381 = v33;
  do
  {
    v391 = *v380;
    if ((**v380 & 3) != 0)
    {
      v392 = v391[2];
      if (v392 != 0.0)
      {
        if (v392 >= v379)
        {
          if (v392 <= v379)
          {
            ++v377;
          }

          else
          {
            ++v378;
          }
        }

        else
        {
          if (*(v22 + 1288) == 1)
          {
            v391[2] = -1.0;
          }

          ++v376;
        }
      }
    }

    ++v380;
    --v381;
  }

  while (v381);
  *(v22 + 1284) = v379;
  if (*(v34 + 2768) >= 5)
  {
    v472 = v32;
    v473 = *__error();
    v474 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
    {
      v475 = CFAbsoluteTimeGetCurrent();
      LODWORD(v540[0]) = 134219776;
      *(v540 + 4) = v22;
      WORD6(v540[0]) = 1024;
      *(v540 + 14) = v33;
      WORD1(v540[1]) = 1024;
      DWORD1(v540[1]) = v37;
      WORD4(v540[1]) = 1024;
      *(&v540[1] + 10) = v378;
      HIWORD(v540[1]) = 1024;
      LODWORD(v541[0]) = v377;
      WORD2(v541[0]) = 1024;
      *(v541 + 6) = v376;
      WORD5(v541[0]) = 2048;
      *(v541 + 12) = v379;
      WORD2(v541[1]) = 2048;
      *(&v541[1] + 6) = v475 - v472;
      _os_log_impl(&dword_1C278D000, v474, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p invalidate fuzzy pages bc: %u fc: %u gc: %u mc:%u lc: %u s: %f took %f seconds", v540, 0x3Eu);
    }

    *__error() = v473;
    v20 = v512;
  }

  if ((**v22 & 1) == 0)
  {
    v447 = CFAbsoluteTimeGetCurrent();
    psort(*(v22 + 40), v31, 8uLL, flatPageSearchFuzzyBucketCompare);
    v448 = *__error();
    v449 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v449, OS_LOG_TYPE_DEFAULT))
    {
      v450 = CFAbsoluteTimeGetCurrent() - v447;
      LODWORD(v542[0]) = 134218496;
      *(v542 + 4) = v22;
      WORD6(v542[0]) = 1024;
      *(v542 + 14) = v31;
      WORD1(v542[1]) = 2048;
      *(&v542[1] + 4) = v450;
      _os_log_impl(&dword_1C278D000, v449, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p fuzzy sort %d flat pages: %f seconds", v542, 0x1Cu);
    }

    *__error() = v448;
    v451 = v31 - 1;
    if (v31 - 1 >= -1)
    {
      v451 = -1;
    }

    v452 = v451 + 1;
    while (1)
    {
      v453 = v31 - 1;
      if (v31 - 1 < 0)
      {
        break;
      }

      v454 = *(*(v22 + 40) + 8 * (v453 & 0x7FFFFFFF));
      if ((*v454 & 3) == 0)
      {
        v452 = v31;
        break;
      }

      LODWORD(v31) = v31 - 1;
      if (*(v454 + 8) >= 0.0)
      {
        v452 = v453 + 1;
        break;
      }
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v483 = *__error();
      v484 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v484, OS_LOG_TYPE_DEFAULT))
      {
        v485 = *(v22 + 1184);
        LODWORD(v542[0]) = 134218496;
        *(v542 + 4) = v22;
        WORD6(v542[0]) = 1024;
        *(v542 + 14) = v485;
        WORD1(v542[1]) = 1024;
        DWORD1(v542[1]) = v452;
        _os_log_impl(&dword_1C278D000, v484, OS_LOG_TYPE_DEFAULT, "FindTermIDsContext %p, fuzzy bc: %d -> %d", v542, 0x18u);
      }

      *__error() = v483;
      v20 = v512;
    }

    *(v22 + 1184) = v452;
  }

LABEL_545:
  if ((*v511 & 1) == 0)
  {
    v387 = *(v22 + 1184);
    if (v387)
    {
      v389 = CFAbsoluteTimeGetCurrent();
      v539[0] = 0;
      *(v22 + 1280) = 0;
      *&v542[0] = 0;
      *(&v542[0] + 1) = v542;
      *&v542[1] = 0x2000000000;
      BYTE8(v542[1]) = 0;
      if (v387 != 1 && (a13 & 1) == 0)
      {
        v528[0] = MEMORY[0x1E69E9820];
        v528[1] = 0x40000000;
        v515 = v528;
        v528[2] = ___bt_findBulk_block_invoke;
        v528[3] = &__block_descriptor_tmp_80;
        v528[4] = v22;
        v529 = v387;
        v390 = 1;
        goto LABEL_567;
      }

      v515 = 0;
      v393 = (2 * gCPUCount);
      if (!a13)
      {
        v393 = 1;
      }

      if (v393 >= v387)
      {
        v390 = v387;
      }

      else
      {
        v390 = v393;
      }

      if (v387 == 1)
      {
        v394 = 1;
        v395 = 1;
      }

      else
      {
LABEL_567:
        v394 = v387;
        v395 = (v390 + v387 - 1) / v390;
      }

      v516 = &v489;
      v510 = a12;
      MEMORY[0x1EEE9AC00](v388);
      v396 = &v489 - ((8 * v390 + 15) & 0xFFFFFFFF0);
      bzero(v396, 8 * v390);
      MEMORY[0x1EEE9AC00](v397);
      bzero(v396, 8 * v390);
      v400 = 0x1EBF46000uLL;
      if (v390)
      {
        v401 = 0;
        v402 = 0;
        *&v399 = 134218496;
        do
        {
          *&v396[8 * v402] = v401;
          v403 = v401 + v395;
          if (v401 + v395 >= v394)
          {
            v403 = v394;
          }

          if (v394 <= v403 + 1)
          {
            v404 = v403 + 1;
          }

          else
          {
            v404 = v394;
          }

          v401 = v404 - 1;
          while (v401 != v403)
          {
            v405 = v403 + 1;
            v406 = **(*(v22 + 40) + 8 * v403 + 8) ^ **(*(v22 + 40) + 8 * v403);
            ++v403;
            if (v406 >= 8)
            {
              v401 = v405 - 1;
              break;
            }
          }

          *&v396[8 * v402] = v401;
          if (*(v400 + 2768) >= 5)
          {
            v509 = v399;
            LODWORD(v506) = *__error();
            v505 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v505, OS_LOG_TYPE_DEFAULT))
            {
              v407 = *&v396[8 * v402];
              LODWORD(v540[0]) = v509;
              *(v540 + 4) = v402;
              WORD6(v540[0]) = 2048;
              *(v540 + 14) = v407;
              WORD3(v540[1]) = 2048;
              *(&v540[1] + 1) = v407;
              _os_log_impl(&dword_1C278D000, v505, OS_LOG_TYPE_DEFAULT, "Index %lu starting at %lu ending at %lu", v540, 0x20u);
            }

            v398 = __error();
            *v398 = v506;
            v400 = 0x1EBF46000;
            v399 = v509;
          }

          ++v402;
        }

        while (v402 != v390);
      }

      MEMORY[0x1EEE9AC00](v398);
      v409 = &v489 - v390 * v408;
      bzero(v409, v410);
      v517[0] = MEMORY[0x1E69E9820];
      v517[1] = 0x40000000;
      v517[2] = ___bt_findBulk_block_invoke_81;
      v517[3] = &unk_1E8193428;
      v517[6] = v542;
      v518 = &v489 - ((8 * v390 + 15) & 0xFFFFFFFF0);
      v519 = v409;
      v520 = v22;
      v521 = v513;
      v522 = v518;
      v523 = v502;
      v524 = v511;
      v525 = v387;
      v411 = v514;
      v526 = v514;
      v527 = v503;
      v517[4] = v510;
      v517[5] = v515;
      dispatch_apply(v390, 0, v517);
      v412 = 0x1EBF46000uLL;
      if (v390)
      {
        if (*(v22 + 1160))
        {
          v413 = 0;
          v414 = 8 * v411;
          do
          {
            v415 = &v409[1296 * v413];
            *(v22 + 1280) += *(v415 + 320);
            if (*(v22 + 1160))
            {
              if (v411)
              {
                v416 = 0;
                do
                {
                  v424 = *(v415 + 145);
                  if (v424)
                  {
                    v425 = *(v424 + v416);
                    if (v425)
                    {
                      if ((*(*(&v542[0] + 1) + 24) & 1) == 0)
                      {
                        v426 = *(v425 + 32);
                        if (v426)
                        {
                          v427 = *(*(v22 + 1160) + v416);
                          if (*v425 == 1)
                          {
                            oq_force_meta(*(*(v22 + 1160) + v416));
                            v426 = *(v425 + 32);
                          }

                          v429 = *(v427 + 24);
                          v428 = *(v427 + 32);
                          v430 = v426 + v428;
                          if (*v427 == 1)
                          {
                            if (v429 >= v430)
                            {
                              v431 = *(v427 + 16);
                            }

                            else
                            {
                              *(v427 + 24) = v430;
                              v431 = malloc_type_realloc(*(v427 + 16), 16 * v430, 0x1000040451B5BE8uLL);
                              *(v427 + 16) = v431;
                              v428 = *(v427 + 32);
                              v426 = *(v425 + 32);
                            }

                            v433 = *(v425 + 16);
                            v434 = 16 * v426;
                            v435 = &v431[16 * v428];
                          }

                          else
                          {
                            if (v429 >= v430)
                            {
                              v432 = *(v427 + 16);
                            }

                            else
                            {
                              *(v427 + 24) = v430;
                              v432 = malloc_type_realloc(*(v427 + 16), 8 * v430, 0x100004000313F17uLL);
                              *(v427 + 16) = v432;
                              v428 = *(v427 + 32);
                              v426 = *(v425 + 32);
                            }

                            v433 = *(v425 + 16);
                            v434 = 8 * v426;
                            v435 = &v432[8 * v428];
                          }

                          memcpy(v435, v433, v434);
                          *(v427 + 32) += *(v425 + 32);
                          v425 = *(*(v415 + 145) + v416);
                        }
                      }

                      free(*(v425 + 16));
                      free(*(*(v415 + 145) + v416));
                    }
                  }

                  v436 = *(v22 + 1168);
                  if (v436)
                  {
                    v437 = *(v436 + v416);
                    if (v437)
                    {
                      v438 = *(v415 + 146);
                      if (v438)
                      {
                        v423 = *(v438 + v416);
                        if (v423)
                        {
                          if ((*(*(&v542[0] + 1) + 24) & 1) == 0)
                          {
                            v419 = *(v423 + 32);
                            if (v419)
                            {
                              if (*v423 == 1)
                              {
                                oq_force_meta(v437);
                                v419 = *(v423 + 32);
                              }

                              v439 = *(v437 + 24);
                              v418 = *(v437 + 32);
                              v440 = v419 + v418;
                              if (*v437 == 1)
                              {
                                if (v439 < v440)
                                {
                                  *(v437 + 24) = v440;
                                  v417 = malloc_type_realloc(*(v437 + 16), 16 * v440, 0x1000040451B5BE8uLL);
                                  *(v437 + 16) = v417;
                                  v418 = *(v437 + 32);
                                  v419 = *(v423 + 32);
                                }

                                else
                                {
                                  v417 = *(v437 + 16);
                                }

                                v420 = *(v423 + 16);
                                v421 = 16 * v419;
                                v422 = &v417[16 * v418];
                              }

                              else
                              {
                                if (v439 >= v440)
                                {
                                  v441 = *(v437 + 16);
                                }

                                else
                                {
                                  *(v437 + 24) = v440;
                                  v441 = malloc_type_realloc(*(v437 + 16), 8 * v440, 0x100004000313F17uLL);
                                  *(v437 + 16) = v441;
                                  v418 = *(v437 + 32);
                                  v419 = *(v423 + 32);
                                }

                                v420 = *(v423 + 16);
                                v421 = 8 * v419;
                                v422 = &v441[8 * v418];
                              }

                              memcpy(v422, v420, v421);
                              *(v437 + 32) += *(v423 + 32);
                              v423 = *(*(v415 + 146) + v416);
                            }
                          }

                          free(*(v423 + 16));
                          free(*(*(v415 + 146) + v416));
                        }
                      }
                    }
                  }

                  v416 += 8;
                }

                while (v414 != v416);
              }

              free(*(v415 + 145));
              free(*(v415 + 146));
              v411 = v514;
              v412 = 0x1EBF46000;
            }

            ++v413;
          }

          while (v413 != v390);
        }

        else
        {
          v442 = v409 + 1280;
          v443 = *(v22 + 1280);
          do
          {
            v443 += *v442;
            *(v22 + 1280) = v443;
            v442 += 324;
            --v390;
          }

          while (v390);
        }
      }

      v539[0] = *(*(&v542[0] + 1) + 24) ^ 1;
      v444 = v539[0] != 1 || *(v412 + 2768) <= 4;
      v20 = v512;
      if (!v444)
      {
        v461 = *__error();
        v462 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v462, OS_LOG_TYPE_DEFAULT))
        {
          v464 = *(v22 + 1280);
          LODWORD(v540[0]) = 67109376;
          DWORD1(v540[0]) = v514;
          WORD4(v540[0]) = 1024;
          *(v540 + 10) = v464;
          _os_log_impl(&dword_1C278D000, v462, OS_LOG_TYPE_DEFAULT, "node count: %d, compare count %d", v540, 0xEu);
        }

        *__error() = v461;
        if (dword_1EBF46AD0 >= 5)
        {
          v465 = *__error();
          v466 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v466, OS_LOG_TYPE_DEFAULT))
          {
            v467 = CFAbsoluteTimeGetCurrent() - v389;
            LODWORD(v540[0]) = 134217984;
            *(v540 + 4) = v467;
            _os_log_impl(&dword_1C278D000, v466, OS_LOG_TYPE_DEFAULT, "resolve flat page terms: %f seconds", v540, 0xCu);
          }

          *__error() = v465;
        }
      }

      _Block_object_dispose(v542, 8);
    }
  }

  CIOnThreadCleanUpPop(v20);
  CICleanUpReset(v20, v508);
  v445 = *MEMORY[0x1E69E9840];
  return v507;
}

uint64_t indexFindBulk(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7, char a8, _BYTE *a9, char **a10, char **a11, void *a12, uint64_t a13)
{
  v276 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v18 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
  v268 = v19;
  v267 = v20;
  v21 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  v22 = *(v21 + 312);
  v23 = *(v21 + 224);
  if (v23)
  {
    v23(*(v21 + 288));
  }

  if (_setjmp(v21))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v21 + 312) = v22;
    if (__THREAD_SLOT_KEY)
    {
      v24 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v24)
      {
        goto LABEL_224;
      }
    }

    else
    {
      makeThreadId();
      v24 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v24)
      {
        goto LABEL_224;
      }
    }

    v25 = v24;
    if (v24 < 0x801)
    {
LABEL_9:
      v26 = &threadData[9 * v25];
      v28 = *(v26 - 4);
      v27 = (v26 - 2);
      if (v28 > v267)
      {
        v29 = v25 - 1;
        do
        {
          CIOnThreadCleanUpPop(v29);
        }

        while (*v27 > v267);
      }

      dropThreadId(v18, 1, add_explicit + 1);
      result = CICleanUpReset(v18, v268);
      goto LABEL_48;
    }

LABEL_224:
    makeThreadId();
    v25 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_9;
  }

  v259 = a7;
  v260 = v22;
  v31 = *__error();
  v32 = _SILogForLogForCategory(1);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (a13)
  {
    if (v33)
    {
      v34 = *(a13 + 8);
      *buf = 138412546;
      *&buf[4] = v34;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "client bundle: %@, query nodes count %u", buf, 0x12u);
    }

    *__error() = v31;
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      v35 = *(a13 + 8);
      v36 = *__error();
      v37 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = @"unknown-client";
        if (v35)
        {
          v38 = v35;
        }

        *v271 = 138412546;
        *&v271[4] = v38;
        *&v271[12] = 1024;
        *&v271[14] = a3;
        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "Bulk index search from %@ with %u nodes", v271, 0x12u);
      }

      *__error() = v36;
      if (a3 >= 0x3E9)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __analytics_log_large_index_find_block_invoke;
        v273 = &__block_descriptor_tmp_3736;
        v275 = a3;
        v274 = a13;
        analytics_send_event_lazy();
      }
    }
  }

  else
  {
    if (v33)
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "client bundle: UNKNOWN, query nodes count %u", buf, 8u);
    }

    *__error() = v31;
  }

  if (__THREAD_SLOT_KEY)
  {
    v39 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v39)
    {
      goto LABEL_30;
    }
  }

  else
  {
    makeThreadId();
    v39 = pthread_getspecific(__THREAD_SLOT_KEY);
    if (v39)
    {
LABEL_30:
      v40 = v39;
      if (v39 < 0x801)
      {
        goto LABEL_31;
      }
    }
  }

  makeThreadId();
  v40 = pthread_getspecific(__THREAD_SLOT_KEY);
LABEL_31:
  v41 = v40 - 1;
  v42 = threadData[9 * v40 - 5];
  v43 = a3;
  if (a3)
  {
    v44 = a3;
    v45 = a5;
    do
    {
      v46 = *v45++;
      *v46 = 0;
      *(v46 + 16) = 0uLL;
      *(v46 + 32) = 0uLL;
      *(v46 + 44) = 0uLL;
      *(v46 + 64) = 0xFFFFFFFFLL;
      *(v46 + 8) = 0;
      --v44;
    }

    while (v44);
  }

  v257 = v42;
  if (!a6)
  {
    v47 = -1;
    goto LABEL_40;
  }

  if (!a12)
  {
    v47 = -1;
    if (!a3)
    {
      goto LABEL_40;
    }

    goto LABEL_74;
  }

  if (pthread_rwlock_rdlock((a1 + 14184)))
  {
    v230 = __si_assert_copy_extra_332();
    v231 = v230;
    v232 = "";
    if (v230)
    {
      v232 = v230;
    }

    __message_assert(v230, "poslock.c", 14, "result==0", v232);
LABEL_230:
    free(v231);
    if (__valid_fs(-1))
    {
      v233 = 2989;
    }

    else
    {
      v233 = 3072;
    }

    *v233 = -559038737;
    abort();
  }

  v47 = CIOnThreadCleanUpPush(v41, posreadunlock, a1 + 14184);
  v43 = a3;
  if (a3)
  {
LABEL_74:
    v85 = v43;
    v86 = a6;
    do
    {
      v87 = *v86;
      if (*v86)
      {
        *v87 = 0;
        *(v87 + 16) = 0uLL;
        *(v87 + 32) = 0uLL;
        *(v87 + 44) = 0uLL;
        *(v87 + 64) = 0xFFFFFFFFLL;
        *(v87 + 8) = 0;
      }

      ++v86;
      --v85;
    }

    while (v85);
  }

LABEL_40:
  v256 = v41;
  v261 = add_explicit;
  v254 = v47;
  v48 = *__error();
  v49 = _SILogForLogForCategory(1);
  v50 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v49, v50))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_1C278D000, v49, v50, "process for %p", buf, 0xCu);
  }

  *__error() = v48;
  v51 = atomic_load((a1 + 36));
  v52 = a9;
  v53 = a3;
  if ((*a9 & 1) == 0)
  {
    v59 = 4685;
    if (a3)
    {
      _ZF = a6 == 0;
    }

    else
    {
      _ZF = 1;
    }

    v61 = !_ZF;
    v62 = 0uLL;
    while (1)
    {
      v63 = v51;
      v64 = *(a1 + 4680);
      if (v259)
      {
        v65 = 0;
      }

      else
      {
        v66 = *(a1 + 4928);
        v67 = *(a1 + 4912);
        v68 = a6;
        if (!v64)
        {
          v68 = 0;
        }

        v69 = a1 + 96;
        v70 = a1;
        v71 = a5;
        v72 = a5;
        v73 = a1;
        v74 = v51;
        v75 = v59;
        Bulk = _bt_findBulk(v70, v69, v67, v66, a2, v53, a4, v71, v68, v52, 0, 0, a8);
        v62 = 0uLL;
        v53 = a3;
        v52 = a9;
        if (*a9)
        {
          goto LABEL_43;
        }

        v59 = v75;
        v63 = v74;
        a1 = v73;
        a5 = v72;
        v65 = Bulk;
      }

      v77 = v65;
      if (v65 == *(a1 + v59))
      {
        if ((v63 & 4) != 0)
        {
          break;
        }

        v78 = atomic_load((a1 + 36));
        if ((v78 & 4) == 0)
        {
          break;
        }
      }

      v79 = a5;
      v80 = a3;
      if (v53)
      {
        do
        {
          v81 = *v79++;
          *v81 = 0;
          *(v81 + 16) = v62;
          *(v81 + 32) = v62;
          *(v81 + 44) = v62;
          *(v81 + 64) = 0xFFFFFFFFLL;
          *(v81 + 8) = 0;
          --v80;
        }

        while (v80);
        v82 = a6;
        v83 = a3;
        if (v61)
        {
          do
          {
            v84 = *v82;
            if (*v82)
            {
              *v84 = 0;
              *(v84 + 16) = v62;
              *(v84 + 32) = v62;
              *(v84 + 44) = v62;
              *(v84 + 64) = 0xFFFFFFFFLL;
              *(v84 + 8) = 0;
            }

            ++v82;
            --v83;
          }

          while (v83);
        }
      }

      v51 = atomic_load((a1 + 36));
      if (*v52)
      {
        goto LABEL_43;
      }
    }

    v88 = v53;
    v251 = v77;
    v253 = v59;
    Current = CFAbsoluteTimeGetCurrent();
    v243 = v64;
    v250 = a5;
    if (v64)
    {
      v90 = 0;
      v91 = v256;
    }

    else
    {
      v92 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
      v90 = v92;
      v92[1] = a3;
      v92[2] = 1;
      v91 = v256;
      if (v88)
      {
        v93 = malloc_type_zone_malloc(queryZone, 40 * a3 + 80, 0xA4971684uLL);
        if (!v93)
        {
          _log_fault_for_malloc_failure();
        }

        *v90 = v93;
        v93[4] = 0;
        *v93 = 0u;
        *(v93 + 1) = 0u;
        v88 = a3;
      }

      else
      {
        *v92 = 0;
      }

      CICleanUpPush(v256, PQueue_bulk_TermIdQueue_free, v90);
    }

    Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, a3, 0);
    CICleanUpPush(v91, MEMORY[0x1E695D7C0], Mutable);
    if (!v88)
    {
LABEL_116:
      v266 = 0;
      if (v243)
      {
        v266 = 1;
        v125 = a9;
        goto LABEL_150;
      }

      v126 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
      storage_reader_init(a1 + 4984, v126);
      CICleanUpPush(v256, storage_reader_free, v126);
      if (a6)
      {
        v127 = malloc_type_malloc(0x18uLL, 0x1020040F21E5318uLL);
        storage_reader_init(a1 + 9704, v127);
        CICleanUpPush(v256, storage_reader_free, v127);
      }

      else
      {
        v127 = 0;
      }

      v128 = *(a1 + 9400);
      if (v126 && *(v126 + 16) != 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
        }

LABEL_148:
        v125 = a9;
        if ((*a9 & 1) == 0 && v90[2] != 1)
        {
          v234 = __si_assert_copy_extra_3233(0, -1);
          v153 = v234;
          v235 = "";
          if (v234)
          {
            v235 = v234;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 960, "*canceled || pqcount_bulk_TermIdQueue_t(q_pqueue) == 0", v235);
LABEL_237:
          free(v153);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

LABEL_150:
        if (v266 != 1 || (*v125 & 1) != 0)
        {
          goto LABEL_43;
        }

        v148 = *(a1 + v253);
        if (v251 != v148 || (v63 & 4) != 0)
        {
          v150 = v259;
          v151 = a10;
          if (v251 != v148)
          {
            goto LABEL_155;
          }
        }

        else
        {
          v149 = atomic_load((a1 + 36));
          v150 = v259;
          v151 = a10;
          if ((v149 & 4) != 0)
          {
LABEL_155:
            v152 = __si_assert_copy_extra_3233(0, -1);
            v153 = v152;
            v154 = "";
            if (v152)
            {
              v154 = v152;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "JHContentIndex.c", 966, "!((renamed != cindex->trie.renamed) || (!isCompact && (cindex->flags & kIndexFlagCompact)))", v154);
            goto LABEL_237;
          }
        }

        if (v151)
        {
          *v151 = clonePayloadData((a1 + 4944), *(a1 + 56), v150 ^ 1u);
        }

        v54 = v261;
        if (a6 && a11)
        {
          *a11 = clonePayloadData((a1 + 9664), *(a1 + 56), v259 ^ 1u);
        }

        v155 = *__error();
        v156 = _SILogForLogForCategory(1);
        v157 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v156, v157))
        {
          v158 = CFAbsoluteTimeGetCurrent() - Current;
          *buf = 134217984;
          *&buf[4] = v158;
          _os_log_impl(&dword_1C278D000, v156, v157, "resolve term ids: %f seconds", buf, 0xCu);
        }

        *__error() = v155;
        v55 = v256;
        if (v254 == -1)
        {
          goto LABEL_45;
        }

        CIOnThreadCleanUpClearItem(v256, v254);
        *a12 = a1 + 14184;
        goto LABEL_44;
      }

      v129 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v130 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v126, 0, v129 + 1);
      v265 = v131;
      v264 = v132;
      v133 = threadData[9 * v130 + 1] + 320 * HIDWORD(v130);
      v134 = *(v133 + 312);
      v135 = *(v133 + 224);
      if (v135)
      {
        v135(*(v133 + 288));
      }

      if (_setjmp(v133))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v133 + 312) = v134;
        CIOnThreadCleanUpReset(v264);
        dropThreadId(v130, 1, v129 + 1);
        CICleanUpReset(v130, v265);
        goto LABEL_148;
      }

      if (v127 && *(v127 + 16) != 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
        }

        goto LABEL_145;
      }

      v245 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v136 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, v127, 0, v245 + 1);
      v263 = v137;
      v262 = v138;
      v139 = threadData[9 * v136 + 1] + 320 * HIDWORD(v136);
      v244 = *(v139 + 312);
      v140 = *(v139 + 224);
      if (v140)
      {
        v140(*(v139 + 288));
      }

      if (_setjmp(v139))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v139 + 312) = v244;
        CIOnThreadCleanUpReset(v262);
        dropThreadId(v136, 1, v245 + 1);
        CICleanUpReset(v136, v263);
LABEL_145:
        v146 = threadData[9 * v130 + 1] + 320 * HIDWORD(v130);
        *(v146 + 312) = v134;
        v147 = *(v146 + 232);
        if (v147)
        {
          v147(*(v146 + 288));
        }

        dropThreadId(v130, 0, v129 + 1);
        goto LABEL_148;
      }

      v246 = v126;
      v249 = v129;
      v142 = v90[2];
      v143 = a9;
      if (v142 == 1)
      {
LABEL_142:
        v266 = 1;
        v144 = threadData[9 * v136 + 1] + 320 * HIDWORD(v136);
        *(v144 + 312) = v244;
        v145 = *(v144 + 232);
        if (v145)
        {
          v145(*(v144 + 288));
        }

        dropThreadId(v136, 0, v245 + 1);
        v129 = v249;
        goto LABEL_145;
      }

      v252 = v63;
LABEL_171:
      if (*v143)
      {
        goto LABEL_142;
      }

      v159 = *v90;
      v160 = *(*v90 + 40);
      v161 = *(*v90 + 56);
      v240 = *(*v90 + 64);
      v162 = *(*v90 + 72);
      v241 = v161;
      v163 = *v90 + 40 * v142;
      v164 = *(v163 - 32);
      v165 = *(v163 - 40);
      v269 = *(v163 - 24);
      v166 = *(v163 - 8);
      *(v159 + 40) = v165;
      *(v159 + 48) = v164;
      *(v159 + 56) = v269;
      *(v159 + 72) = v166;
      v168 = v90[1];
      v167 = v90[2];
      v270 = v166;
      v90[2] = v167 - 1;
      v169 = v168 >> 1;
      v170 = 1;
      v171 = 2;
      v172 = 3;
      while (1)
      {
        v173 = v172;
        v174 = *v90;
        v175 = *v90 + 40 * v171;
        v176 = *v175;
        v177 = *(v175 + 8);
        *buf = *(v175 + 16);
        *&buf[16] = *(v175 + 32);
        v178 = (v174 + 40 * v173);
        v179 = v178->n128_u64[0];
        v180 = v178->n128_u64[1];
        v181 = v178[1];
        *v271 = v181;
        *&v271[16] = v178[2].n128_u64[0];
        if (v173 >= v167)
        {
          memset(v271, 0, 24);
          if (v171 >= v167)
          {
            goto LABEL_190;
          }

          v184 = 0;
          v183 = -1;
          if (v177 < v164)
          {
LABEL_175:
            _CF = v183 >= v177;
            if (v183 >= v177)
            {
              v186 = buf;
            }

            else
            {
              v176 = v184;
              v177 = v183;
              v186 = v271;
            }

            if (_CF)
            {
              v173 = v171;
            }

            v187 = v186;
            goto LABEL_182;
          }
        }

        else
        {
          v182 = v179;
          v183 = v180;
          v184 = v182;
          if (v177 < v164)
          {
            goto LABEL_175;
          }
        }

        if (v183 >= v164)
        {
          _X8 = v174 + 80 * v170;
          __asm { PRFM            #1, [X8] }

LABEL_190:
          v196 = 3;
          if (*v160)
          {
            v196 = 4;
          }

          v197 = *(*(v160 + 16) + (v161 << v196));
          if ((v197 & 0x3FFFFFFFFFFFFFFFuLL) >= v128)
          {
            v205 = v162;
            goto LABEL_210;
          }

          v242 = v161;
          ptr = storage_reader_get_ptr(*v246, v246[1], 8 * *(*(v160 + 16) + (v161 << v196)), 8, v181, v141);
          if (ptr == -1)
          {
            v236 = __si_assert_copy_extra_3233(0, -1);
            v231 = v236;
            v237 = "";
            if (v236)
            {
              v237 = v236;
            }

            __message_assert("%s:%u: failed assertion '%s' %s failed to read offset for term %d", "TermIdStore.h", 89, "(intptr_t)ptr!=-1", v237, v197);
            goto LABEL_230;
          }

          v200 = *ptr;
          if (*ptr)
          {
            if (v127 && (*(a4 + (v240 << 6) + 16) & 0x3080) != 0)
            {
              Next = termIdStoreReaderGetNext(*v127, *(v127 + 1), v197, v199, v141);
              oqpush_3290(a6[v240], Next, v202);
            }

            v203 = v197 & 0x4000000000000000;
            if (*v160 == 1)
            {
              v204 = oq_meta_at_index(v160, v241);
              oq_set_offset_with_meta_at_index(v160, v162, v200 | v203, v204);
            }

            else
            {
              oq_set_offset_at_index(v160, v162, v200 | v203);
            }

            v206 = 3;
            if (*v160)
            {
              v206 = 4;
            }

            if (*(*(v160 + 16) + (v162 << v206)))
            {
              v205 = v162 + 1;
            }

            else
            {
              v205 = v162;
            }

            v143 = a9;
          }

          else
          {
            v205 = v162;
            v143 = a9;
          }

          v161 = v242;
LABEL_210:
          v207 = v161 + 1;
          if (v161 + 1 >= *(v160 + 32))
          {
            *(v160 + 32) = v205;
          }

          else
          {
            v208 = 3;
            if (*v160)
            {
              v208 = 4;
            }

            v209 = *(*(v160 + 16) + (v207 << v208));
            v210 = v90[1];
            v211 = v90[2];
            v212 = v211;
            v213 = *v90;
            if (v211 + 2 >= v210)
            {
              v215 = 2 * v210;
              v108 = v210 < 4;
              v216 = 4;
              if (!v108)
              {
                v216 = v215;
              }

              v90[1] = v216;
              v238 = v209;
              realloc = query_realloc(v213, 40 * v216 + 80);
              v209 = v238;
              v212 = v211;
              v143 = a9;
              *v90 = realloc;
              *realloc = 0u;
              realloc[1] = 0u;
              *(realloc + 4) = 0;
              v214 = v90[2];
              v213 = *v90;
            }

            else
            {
              v214 = v90[2];
            }

            v90[2] = v214 + 1;
            v218 = &v213[40 * v211];
            *v218 = v160;
            v218[1] = v209;
            v218[2] = v207;
            v218[3] = v240;
            v218[4] = v205;
            if (v211 >= 2)
            {
              v219 = v212;
              do
              {
                v220 = v219;
                v221 = *v90;
                if (*(*v90 + 40 * v220 + 8) > *(*v90 + 40 * (v220 >> 1) + 8))
                {
                  break;
                }

                v222 = v221 + 40 * v220;
                v223 = *(v222 + 32);
                v141 = *v222;
                v224 = *(v222 + 16);
                v225 = 40 * (v220 >> 1);
                v226 = v221 + v225;
                v227 = *(v226 + 32);
                v228 = *(v226 + 16);
                *v222 = *v226;
                *(v222 + 16) = v228;
                *(v222 + 32) = v227;
                v229 = *v90 + v225;
                *v229 = v141;
                *(v229 + 16) = v224;
                *(v229 + 32) = v223;
                v219 = v220 >> 1;
              }

              while (v220 > 3);
            }
          }

          v142 = v90[2];
          v63 = v252;
          if (v142 == 1)
          {
            goto LABEL_142;
          }

          goto LABEL_171;
        }

        v187 = v271;
        v176 = v184;
        v177 = v183;
LABEL_182:
        _X1 = v174 + 80 * v173;
        __asm { PRFM            #1, [X1] }

        if (v173 != v170)
        {
          v192 = v174 + 40 * v173;
          *v192 = v165;
          *(v192 + 8) = v164;
          *(v192 + 16) = v269;
          *(v192 + 32) = v270;
          v193 = *v90 + 40 * v170;
          *v193 = v176;
          *(v193 + 8) = v177;
          v181 = *v187;
          *(v193 + 16) = *v187;
          *(v193 + 32) = *(v187 + 2);
          v172 = (2 * v173) | 1;
          v171 = 2 * v173;
          v170 = v173;
          if (v173 < v169)
          {
            continue;
          }
        }

        goto LABEL_190;
      }
    }

    if (v64)
    {
      v95 = v250;
      v96 = a3;
      do
      {
        v97 = *v95;
        if (!CFSetContainsValue(Mutable, *v95))
        {
          CFSetAddValue(Mutable, v97);
          v98 = (v97 + 8);
          if (*v97 == 1)
          {
            oqsort_offset_with_meta_t(v98);
          }

          else
          {
            oqsort_offset_t(v98);
          }
        }

        ++v95;
        --v96;
      }

      while (v96);
      goto LABEL_116;
    }

    v99 = 0;
    while (1)
    {
      v100 = v250[v99];
      if (!CFSetContainsValue(Mutable, v100))
      {
        CFSetAddValue(Mutable, v100);
        v101 = (v100 + 8);
        if (*v100)
        {
          oqsort_offset_with_meta_t(v101);
          if (*(v100 + 4))
          {
            goto LABEL_101;
          }
        }

        else
        {
          oqsort_offset_t(v101);
          if (*(v100 + 4))
          {
LABEL_101:
            v102 = **(v100 + 2);
            v103 = v90[1];
            v104 = v90[2];
            v105 = v104;
            v106 = v104;
            if (v104 + 2 >= v103)
            {
              v239 = **(v100 + 2);
              v107 = 2 * v103;
              v108 = v103 < 4;
              v109 = 4;
              if (!v108)
              {
                v109 = v107;
              }

              v90[1] = v109;
              v110 = 40 * v109 + 80;
              if (*v90)
              {
                v111 = malloc_type_zone_realloc(queryZone, *v90, v110, 0xA1A7ADA0uLL);
                if (!v111)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                v111 = malloc_type_zone_malloc(queryZone, v110, 0x566E289CuLL);
                if (!v111)
                {
LABEL_108:
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
                  }
                }
              }

              *v90 = v111;
              v111[4] = 0;
              *v111 = 0u;
              *(v111 + 1) = 0u;
              v106 = v90[2];
              v102 = v239;
              v105 = v104;
            }

            v90[2] = v106 + 1;
            v112 = (*v90 + 40 * v104);
            *v112 = v100;
            v112[1] = v102;
            v112[2] = 0;
            v112[3] = v99;
            v112[4] = 0;
            if (v104 >= 2)
            {
              v113 = v105;
              do
              {
                v114 = v113;
                v115 = *v90;
                if (*(*v90 + 40 * v114 + 8) > *(*v90 + 40 * (v114 >> 1) + 8))
                {
                  break;
                }

                v116 = &v115[40 * v114];
                v117 = *(v116 + 4);
                v119 = *v116;
                v118 = *(v116 + 1);
                v120 = 40 * (v114 >> 1);
                v121 = &v115[v120];
                v122 = *(v121 + 4);
                v123 = *(v121 + 1);
                *v116 = *v121;
                *(v116 + 1) = v123;
                *(v116 + 4) = v122;
                v124 = *v90 + v120;
                *v124 = v119;
                *(v124 + 16) = v118;
                *(v124 + 32) = v117;
                v113 = v114 >> 1;
              }

              while (v114 > 3);
            }
          }
        }
      }

      if (++v99 == a3)
      {
        goto LABEL_116;
      }
    }
  }

LABEL_43:
  v54 = v261;
  v55 = v256;
  if (v254 != -1)
  {
LABEL_44:
    CIOnThreadCleanUpPop(v55);
  }

LABEL_45:
  CICleanUpReset(v55, v257);
  v56 = threadData[9 * v18 + 1] + 320 * HIDWORD(v18);
  *(v56 + 312) = v260;
  v57 = *(v56 + 232);
  if (v57)
  {
    v57(*(v56 + 288));
  }

  result = dropThreadId(v18, 0, v54 + 1);
LABEL_48:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SISearchCtx_METADATA::vinitContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFArray *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, char a14)
{
  SISearchCtx::initContext(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
  v20 = *(a2 + 152);
  if ((v20 - 1) < 3)
  {
    goto LABEL_4;
  }

  if (v20 != 4)
  {
    goto LABEL_6;
  }

  if (*(a1 + 176))
  {
LABEL_4:
    v21 = currentCategoryCount(a3);
    *(a1 + 656) = v21;
    v22 = malloc_type_malloc(32 * v21 + 40, 0x10000400A747E1EuLL);
    *(a1 + 928) = v22;
    v23 = *(a1 + 656);
    *v22 = 0u;
    v22[1] = 0u;
    *(v22 + 4) = 0;
    *(v22 + 1) = v23;
    if (v23)
    {
      L1ComboQueueInit();
    }
  }

  else if (*(a1 + 650) == 1 && (*(a1 + 641) & 1) == 0)
  {
    v39 = *(a1 + 56);
    if (v39)
    {
      if (CFArrayGetCount(v39) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), 0);
        if (CFEqual(ValueAtIndex, @"_kMDItemBundleID"))
        {
          *(a1 + 1256) = SIUINT32SetCreate();
        }
      }
    }
  }

LABEL_6:
  if (!*(a3 + 1192))
  {
    v41 = __si_assert_copy_extra_332();
    v42 = v41;
    v43 = "";
    if (v41)
    {
      v43 = v41;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 5356, "db->store", v43);
    free(v42);
    if (__valid_fs(-1))
    {
      v44 = 2989;
    }

    else
    {
      v44 = 3072;
    }

    *v44 = -559038737;
    abort();
  }

  *(a1 + 644) = 1;
  *(a1 + 832) = 1;
  if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
  {
    ++sTotal;
  }

  v24 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
  if (!v24)
  {
    _log_fault_for_malloc_failure();
  }

  *(a1 + 840) = v24;
  if (a5)
  {
    v25 = compileToSDBTree(a5, factorRewrite);
    setupCannedFields(v25);
    *(*(a1 + 840) + 16) = v25;
    v26 = 21;
    if (*(a1 + 650))
    {
      v26 = 255;
    }

    *(a1 + 192) = v26;
    if ((*(a1 + 304) & 0x80000000) == 0)
    {
      *(a1 + 304) = 0;
    }
  }

  else
  {
    v27 = 21;
    if (*(a1 + 650))
    {
      v27 = 255;
    }

    *(a1 + 192) = v27;
    if ((*(a1 + 304) & 0x80000000) == 0)
    {
      *(a1 + 304) = 1;
    }
  }

  **(a1 + 840) = compileToIndexQuery(a4, *(a2 + 360));
  if (a6 && (*(a3 + 6624) || (*(a3 + 6584) & 0x10) != 0))
  {
    scope_node = si_query_get_scope_node(a3, a2, a6);
    if (scope_node)
    {
      v29 = scope_node;
      v45 = MEMORY[0x1E69E9820];
      v46 = 0x40000000;
      v47 = __db_query_tree_apply_block_block_invoke;
      v48 = &unk_1E8198ED0;
      v49 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(scope_node, &v45, &__block_literal_global_25_15416);
      v31 = v30;
      if (*(a2 + 224) != v29)
      {
        db_free_query_node(v29);
      }

      _rewriteQuery(v31, *(a2 + 360));
      **(a1 + 840) = makeAndNode(**(a1 + 840), v31, 1, 1);
      CFRelease(*(a1 + 32));
      *(a1 + 32) = 0;
    }
  }

  if (!*(*(a1 + 840) + 16))
  {
    v32 = *(a2 + 280);
    if (v32)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 0x40000000;
      v47 = __db_query_tree_apply_block_block_invoke;
      v48 = &unk_1E8198ED0;
      v49 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v32, &v45, &__block_literal_global_25_15416);
      *(*(a1 + 840) + 16) = v33;
    }
  }

  v34 = *(a3 + 1384);
  *(a1 + 584) = v34;
  if (v34)
  {
    v35 = *(v34 + 8);
    *(a1 + 560) = v35;
    *(a1 + 552) = *(a3 + 1400);
    if (v35)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(a1 + 560) = 0;
    *(a1 + 552) = *(a3 + 1400);
  }

  v36 = *(a3 + 1392);
  *(a1 + 576) = v36;
  if (v36)
  {
    v36 = *(v36 + 8);
  }

  *(a1 + 568) = v36;
LABEL_37:
  if ((*(a1 + 42) & 2) != 0)
  {
    *(a1 + 649) = 1;
    v37 = *(a2 + 8);
    if (v37)
    {
      if (CFStringCompare(v37, @"*=*", 0) == kCFCompareEqualTo)
      {
        *(a1 + 648) = 1;
      }
    }
  }

  *(a1 + 652) = *(*(a1 + 8) + 673);
  *(a1 + 1248) = a14;
  *(a1 + 688) = xmmword_1C2BFA420;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 4292677391;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 4292677391;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 4292677391;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 4292677391;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  return 1;
}

uint64_t compileToIndexQuery(uint64_t a1, double a2)
{
  v4 = compileToSDBTree(a1, indexFactorRewrite);
  setupCannedFields(v4);
  _rewriteQuery(v4, a2);
  v5 = *(v4 + 48);
  if ((v5 & 8) != 0)
  {
    v6 = *v4;
    if (*v4)
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        v8 = *(v6 + 48);
        if (v8 == 4)
        {
          v9 = *(v6 + 16);
          if (v9)
          {
            LODWORD(v9) = (*(v9 + 24) < 0xFu) & (0x5060u >> *(v9 + 24));
          }
        }

        else
        {
          LODWORD(v9) = 0;
        }

        if (v9 != ((v8 >> 3) & 1))
        {
          goto LABEL_14;
        }

        v10 = *(v7 + 48);
        if (v10 == 4)
        {
          v11 = *(v7 + 16);
          if (v11)
          {
            LODWORD(v11) = (*(v11 + 24) < 0xFu) & (0x5060u >> *(v11 + 24));
          }
        }

        else
        {
          LODWORD(v11) = 0;
        }

        if (v11 != ((v10 >> 3) & 1))
        {
LABEL_14:
          if ((v5 & 2) != 0)
          {
            v12 = 1;
          }

          else
          {
            if ((v5 & 1) == 0)
            {
LABEL_19:
              negateQuery(v6);
              negateQuery(*(v4 + 8));
              goto LABEL_20;
            }

            v12 = 2;
          }

          *(v4 + 48) = v12;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:
  if (*(a1 + 16) == 1)
  {
    *(v4 + 56) |= 1u;
  }

  return v4;
}

uint64_t compileToSDBTree(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = 0;
  v5 = *a1;
  if (*a1 > 1)
  {
    if (v5 == 2)
    {
      v4 = compileToSDBTree(*(a1 + 24), a2);
      v36 = MEMORY[0x1E69E9820];
      v37 = 0x40000000;
      v38 = __db_query_tree_apply_block_block_invoke;
      v39 = &unk_1E8198ED0;
      v40 = &__block_literal_global_15374;
      db_query_tree_apply_block_with_meta(v4, &v36, 0);
      return v4;
    }

    if (v5 != 3)
    {
      return v4;
    }

    v7 = *(a1 + 24);
    v8 = v7[2];
    if (a2)
    {
      if (v8)
      {
        v9 = *(v8 + 24);
      }

      else
      {
        v9 = 0;
      }

      if ((*(a1 + 4) & 4) != 0)
      {
        if (v9 == 2)
        {
          v29 = 1;
          goto LABEL_68;
        }

        if (v9 == 6)
        {
          v29 = 5;
LABEL_68:
          *(v8 + 24) = v29;
          v30 = (a2)(*(a1 + 24));
LABEL_72:
          v4 = v30;
LABEL_73:
          *(*(*(a1 + 24) + 16) + 24) = v9;
          return v4;
        }
      }

      v4 = a2();
      if (!v9)
      {
        return v4;
      }

      goto LABEL_73;
    }

    v9 = *(v8 + 24);
    if ((*(a1 + 4) & 4) != 0)
    {
      if (v9 == 2)
      {
        v28 = 1;
        goto LABEL_70;
      }

      if (v9 == 6)
      {
        v28 = 5;
LABEL_70:
        *(v8 + 24) = v28;
        v7 = *(a1 + 24);
      }
    }

    v36 = MEMORY[0x1E69E9820];
    v37 = 0x40000000;
    v38 = __db_query_tree_apply_block_block_invoke;
    v39 = &unk_1E8198ED0;
    v40 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v7, &v36, &__block_literal_global_25_15416);
    goto LABEL_72;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      return v4;
    }

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v10 = *(a1 + 24) / 2;
  v11 = MEMORY[0x1E69E9AC8];
  if (((v10 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * v10 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal_4940;
  }

  v13 = malloc_type_zone_calloc(queryZone, v10, 8uLL, 0x5BAF1CEAuLL);
  if (!v13)
  {
    _log_fault_for_malloc_failure();
  }

  v14 = *(a1 + 24);
  v34 = v14 - 1;
  if (v14 == 1)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + 24);
  v16 = 0;
  do
  {
    if (*v11 <= 0x4FuLL)
    {
      ++sTotal_4940;
    }

    v17 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v17)
    {
      _log_fault_for_malloc_failure();
    }

    *v17 = compileToSDBTree(*(*(a1 + 32) + 8 * v16), a2);
    v17[1] = compileToSDBTree(*(*(a1 + 32) + 8 * v16 + 8), a2);
    *(v17 + 24) = v6;
    *(v17 + 28) = v17[7] & 0xFDFF | (*(a1 + 17) << 9);
    v13[v16 / 2] = v17;
    v16 += 2;
  }

  while (v16 < v34);
  v14 = v15;
  if (v15)
  {
LABEL_27:
    if (*v11 <= 0x4FuLL)
    {
      ++sTotal_4940;
    }

    v18 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v18)
    {
      _log_fault_for_malloc_failure();
    }

    *v18 = compileToSDBTree(*(*(a1 + 32) + 8 * v34), a2);
    v19 = 2;
    if (v14 >> 1 > 2)
    {
      v19 = v14 >> 1;
    }

    v20 = &v13[v19];
    v18[1] = *(v20 - 2);
    *(v18 + 24) = v6;
    *(v18 + 28) = v18[7] & 0xFDFF | (*(a1 + 17) << 9);
    *(v20 - 2) = v18;
  }

  if (v14 >= 4)
  {
    v32 = v13 - 2;
    do
    {
      v33 = v14 >> 1;
      v35 = v14;
      v21 = (v14 >> 1) - 1;
      if (v14 >> 1 != 1)
      {
        v22 = 0;
        v23 = v13;
        do
        {
          if (*v11 <= 0x4FuLL)
          {
            ++sTotal_4940;
          }

          v24 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v24)
          {
            _log_fault_for_malloc_failure();
          }

          v25 = &v13[v22];
          *v24 = *v25;
          v24[1] = v25[1];
          *(v24 + 24) = v6;
          *(v24 + 28) = v24[7] & 0xFDFF | (*(a1 + 17) << 9);
          *v23++ = v24;
          v22 += 2;
        }

        while (v22 < v21);
      }

      if ((v35 & 2) != 0)
      {
        if (*v11 <= 0x4FuLL)
        {
          ++sTotal_4940;
        }

        v26 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        if (!v26)
        {
          _log_fault_for_malloc_failure();
        }

        v27 = v35 >> 2;
        *v26 = v13[v21];
        if (v35 >> 2 <= 2)
        {
          v27 = 2;
        }

        v26[1] = v32[v27];
        *(v26 + 24) = v6;
        *(v26 + 28) = v26[7] & 0xFDFF | (*(a1 + 17) << 9);
        v32[v27] = v26;
      }

      v14 = v33;
    }

    while (v35 > 7);
  }

  v4 = *v13;
  if (*(a1 + 17) == 1)
  {
    *(v4 + 48) |= 8u;
  }

  free(v13);
  return v4;
}

void SISearchCtx::initContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFArray *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12)
{
  v48 = a3;
  v51 = *MEMORY[0x1E69E9840];
  atomic_fetch_add((a2 + 584), 1u);
  *(a1 + 8) = a2;
  if (a2)
  {
    v19 = *(a2 + 576);
    if (v19)
    {
      CFRetain(*(a2 + 576));
      v20 = *(a1 + 8);
      *(a1 + 88) = v19;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 88) = 0;
      v20 = a2;
    }

    v21 = *(v20 + 48);
    if (v21)
    {
      Length = CFStringGetLength(v21);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v47 = a8;
      v24 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      CFStringGetCString(*(v20 + 48), v24, MaximumSizeForEncoding + 1, 0x8000100u);
      v20 = *(a1 + 8);
      *(a1 + 264) = v24;
      a8 = v47;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 264) = 0;
    }

    v25 = *(v20 + 40);
    if (v25)
    {
      v25 = CFRetain(v25);
    }

    *(a1 + 72) = v25;
  }

LABEL_13:
  v26 = *(a9 + 88);
  if (v26)
  {
    CFRetain(*(a9 + 88));
  }

  *(a1 + 16) = v26;
  atomic_fetch_add(a9, 1u);
  *(a1 + 104) = a9;
  *(a1 + 24) = v48;
  *(a1 + 152) = a8;
  if (a4)
  {
    Node = cloneQueryNode(a4, 0);
  }

  else
  {
    Node = 0;
  }

  *(a1 + 112) = Node;
  if (a5)
  {
    v28 = cloneQueryNode(a5, 0);
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 120) = v28;
  if (a10)
  {
    CFRetain(a10);
  }

  *(a1 + 56) = a10;
  *(a1 + 64) = 0;
  *(a1 + 40) = a7;
  *(a1 + 48) = a7;
  v29 = *(a2 + 152);
  *(a1 + 160) = v29;
  v30 = (a7 & 0xF) - 2;
  if ((a7 & 0xC) != 0)
  {
    v30 = 1;
  }

  *(a1 + 304) = v30;
  if (v29 == 4 && (*(a2 + 357) & 1) == 0)
  {
    *(a1 + 208) = CFDictionaryCreateMutable(kCIQueryZoneAllocator, 0, 0, MEMORY[0x1E695E9E8]);
  }

  v32 = a11;
  v31 = a12;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 248) = *(a2 + 56);
  v33 = *(a2 + 160);
  *(a1 + 176) = v33;
  *(a1 + 184) = v33;
  if (a6)
  {
    Count = CFArrayGetCount(a6);
    if (Count >= 1)
    {
      v35 = Count;
      v47 = a11;
      v48 = a12;
      v46[1] = v46;
      MEMORY[0x1EEE9AC00](Count);
      v37 = (v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v37, v36);
      for (i = 0; i != v35; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a6, i);
        v40 = CFGetTypeID(ValueAtIndex);
        if (v40 == CFStringGetTypeID() && !CFStringHasSuffix(ValueAtIndex, @"/"))
        {
          ValueAtIndex = CFStringCreateWithFormat(kCIQueryZoneAllocator, 0, @"%@/", ValueAtIndex);
        }

        else if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        v37[i] = ValueAtIndex;
      }

      *(a1 + 32) = CFArrayCreate(kCIQueryZoneAllocator, v37, v35, MEMORY[0x1E695E9C0]);
      do
      {
        v41 = *v37++;
        CFRelease(v41);
        --v35;
      }

      while (v35);
      v32 = v47;
      v31 = v48;
      if (dword_1EBF46AD0 > 4)
      {
        v43 = *__error();
        v44 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 32);
          *buf = 138412290;
          v50 = v45;
          _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "Scopes: %@", buf, 0xCu);
        }

        *__error() = v43;
      }
    }
  }

  *(a1 + 224) = v32;
  *(a1 + 232) = v31;
  v42 = *MEMORY[0x1E69E9840];
}

void indexFactorRewrite(void *a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = __db_query_tree_apply_block_block_invoke;
  v1[3] = &unk_1E8198ED0;
  v1[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a1, v1, &__block_literal_global_25_15416);
}

const char **setupCannedFields(uint64_t a1)
{
  if (*a1)
  {
    setupCannedFields();
  }

  result = *(a1 + 8);
  if (result)
  {
    result = setupCannedFields();
  }

  if (*(a1 + 48) == 4)
  {
    v3 = *(a1 + 16);
    if (!*(v3 + 8))
    {
      v4 = strlen(*v3);
      result = CannedFieldTable::in_word_set(*v3, v4);
      if (result)
      {
        *(v3 + 32) |= 0x80uLL;
        *(v3 + 8) = _qpCannedFieldQuery;
      }
    }
  }

  return result;
}

const char **CannedFieldTable::in_word_set(CannedFieldTable *this, const char *a2)
{
  if ((a2 - 11) > 0x1B)
  {
    return 0;
  }

  if ((a2 - 12) >= 6)
  {
    if (a2 == 11)
    {
      goto LABEL_4;
    }

    LODWORD(a2) = CannedFieldTable::hash(char const*,unsigned int)::asso_values[*(this + 17)] + a2;
  }

  LODWORD(a2) = a2 + CannedFieldTable::hash(char const*,unsigned int)::asso_values[*(this + 11)];
LABEL_4:
  v2 = a2 + CannedFieldTable::hash(char const*,unsigned int)::asso_values[*(this + 10)];
  if (v2 > 0x74)
  {
    return 0;
  }

  v3 = (&CannedFieldTable::in_word_set(char const*,unsigned int)::wordlist + 40 * v2);
  v4 = *v3;
  if (!*v3 || *this != *v4 || strcmp(this + 1, v4 + 1))
  {
    return 0;
  }

  return v3;
}

uint64_t ___rewriteQuery_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != a3)
  {
    v31 = __si_assert_copy_extra_332();
    v32 = v31;
    v33 = "";
    if (v31)
    {
      v33 = v31;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 1153, "node->lchild==lchild", v33);
    free(v32);
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

  if (*(a2 + 8) != a4)
  {
    v35 = __si_assert_copy_extra_332();
    v27 = v35;
    v36 = "";
    if (v35)
    {
      v36 = v35;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 1154, "node->rchild==rchild", v36);
LABEL_50:
    free(v27);
    if (__valid_fs(-1))
    {
      v37 = 2989;
    }

    else
    {
      v37 = 3072;
    }

    *v37 = -559038737;
    abort();
  }

  v5 = *(a2 + 48);
  v6 = v5 & 0xFFFFFFF7;
  if ((v5 & 0xFFFFFFF7) - 1 > 1)
  {
LABEL_36:
    v26 = __si_assert_copy_extra_332();
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 985, "0", v28);
    goto LABEL_50;
  }

  while (1)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(*a2 + 56);
    v10 = *(v8 + 56);
    v11 = *(a2 + 56) | 0x100;
    *(a2 + 56) = v11;
    if (v6 == 1)
    {
      break;
    }

    if ((v9 & 0x200) != 0 && (v10 & 0x200) != 0)
    {
      goto LABEL_41;
    }

    if ((v9 & 0x200) != 0)
    {
      v12 = *(v8 + 16);
      if (v12)
      {
        if ((*(v12 + 33) & 8) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    if ((v10 & 0x200) != 0)
    {
      v13 = *(v7 + 16);
      if (v13)
      {
        if ((*(v13 + 33) & 8) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    if ((v9 & 0x200) != 0)
    {
      v14 = *(v7 + 48);
      if (v14 == 4)
      {
        v15 = *(v7 + 16);
        if (v15)
        {
          LODWORD(v15) = (*(v15 + 24) < 0xFu) & (0x5060u >> *(v15 + 24));
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

      if (v15 != ((v14 >> 3) & 1))
      {
        v16 = *(v8 + 16);
        if (!v16 || (*(v16 + 33) & 8) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    if ((v10 & 0x200) != 0)
    {
      v17 = *(v8 + 48);
      if (v17 == 4)
      {
        v18 = *(v8 + 16);
        if (v18)
        {
          LODWORD(v18) = (*(v18 + 24) < 0xFu) & (0x5060u >> *(v18 + 24));
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }

      if (v18 != ((v17 >> 3) & 1))
      {
        v19 = *(v7 + 16);
        if (!v19 || (*(v19 + 33) & 8) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    if ((v9 & 0x200) != 0 && (*(v7 + 48) & 0xFFF7) == 1)
    {
      *(a2 + 48) = v5 ^ 0xB;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v7, &v38, &__block_literal_global_25_15416);
      v20 = *(a2 + 8);
      *(a2 + 8) = v21;
      *(v21 + 48) = 2;
      *v21 = v20;
      *(*a2 + 48) = 2;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v20, &v38, &__block_literal_global_25_15416);
      *(*a2 + 8) = v22;
    }

    else
    {
      if ((v10 & 0x200) == 0 || (*(v8 + 48) & 0xFFF7) != 1)
      {
        goto LABEL_40;
      }

      *(a2 + 48) = v5 ^ 0xB;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v8, &v38, &__block_literal_global_25_15416);
      v23 = *a2;
      *a2 = v24;
      *(v24 + 48) = 2;
      *(v24 + 8) = v23;
      *(*(a2 + 8) + 48) = 2;
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v23, &v38, &__block_literal_global_25_15416);
      **(a2 + 8) = v25;
    }

    v5 = *(a2 + 48);
    v6 = v5 & 0xFFFFFFF7;
    if ((v5 & 0xFFFFFFF7) - 1 >= 2)
    {
      goto LABEL_36;
    }
  }

  if (((v9 | v10) & 0x200) == 0)
  {
LABEL_40:
    v29 = v11 & 0xFDFF;
    goto LABEL_42;
  }

LABEL_41:
  *(a2 + 48) = v5 ^ 0xB;
  negateQuery(v7);
  negateQuery(*(a2 + 8));
  v29 = *(a2 + 56) | 0x200;
LABEL_42:
  *(a2 + 56) = v29;
  return a2;
}

uint64_t si_enqueue_routine(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, unsigned int a5)
{
  pthread_mutex_lock((a2 + 48));
  if (*(a2 + 36))
  {
    pthread_mutex_unlock((a2 + 48));

    return (a3)(a4, 1);
  }

  else
  {
    si_enqueue_work_for_job(*(a1 + 8 * a5 + 1008), a3, a4, a2);

    return pthread_mutex_unlock((a2 + 48));
  }
}

uint64_t db2_string_table_unlock(uint64_t a1)
{
  v2 = *(a1 + 912);
  if ((*(a1 + 804) & 0x14) != 0)
  {
    _data_map_unlock(v2);
    _data_map_unlock(*(a1 + 904));
    _data_map_unlock(*(a1 + 896));
    _data_map_unlock(*(a1 + 888));
    _data_map_unlock(*(a1 + 880));
  }

  else
  {
    pthread_rwlock_unlock(*(v2 + 16));
    pthread_rwlock_unlock(*(*(a1 + 904) + 16));
    pthread_rwlock_unlock(*(*(a1 + 896) + 16));
    pthread_rwlock_unlock(*(*(a1 + 888) + 16));
    pthread_rwlock_unlock(*(*(a1 + 880) + 16));
  }

  v3 = *(a1 + 920);

  return _data_map_unlock(v3);
}

unsigned int *si_scheduler_suspend_async(uint64_t a1)
{
  if (!a1 || *(a1 + 104))
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B618E767uLL);
  atomic_store(1u, v2);
  *(v2 + 1) = a1;
  pthread_mutex_lock(*(a1 + 8));
  v3 = *(a1 + 116);
  if (v3)
  {
    *(a1 + 116) = v3 + 1;
    *(v2 + 4) = 1;
  }

  else
  {
    *(v2 + 2) = *(a1 + 144);
    *(a1 + 144) = v2;
    atomic_fetch_add(v2, 1u);
    if (!*(v2 + 2) && !*(a1 + 120))
    {
      _scheduler_suspension_locked(a1);
    }
  }

  pthread_mutex_unlock(*(a1 + 8));
  return v2;
}

uint64_t SISearchCtx_METADATA::enqueue(uint64_t a1, uint64_t (*a2)(), void *a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13[0]) = 67109120;
      HIDWORD(v13[0]) = qos_class_self();
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "enqueue at qos 0x%x", v13, 8u);
    }

    *__error() = v11;
  }

  v13[0] = 0;
  v8 = si_backtrace_routine_resolve(*(a1 + 24), *(*(a1 + 8) + 656), a2, a3, v13);
  result = si_sdb_enqueue(*(a1 + 24), a4, v8, v13[0], *(a1 + 304));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t termUpdateSetResolveQueryInfo(uint64_t a1, unsigned int a2, _BYTE **a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v303 = *MEMORY[0x1E69E9840];
  db_read_lock(a1 + 304);
  if (a6 && *(v12 + 584) != a6)
  {
    _TermUpdateSetReadUnlock(v12);
    result = 1;
    goto LABEL_385;
  }

  memset(&v277[56], 0, 32);
  *&v277[40] = 0u;
  *&v277[24] = 0u;
  *&v277[8] = 0u;
  v13 = CICleanUpThreadLoc();
  CIOnThreadCleanUpPush(v13, _TermUpdateSetReadUnlock, v12);
  v14 = LODWORD(threadData[9 * v13 + 4]);
  *v277 = *(v12 + 88);
  *&v277[8] = a2;
  *&v277[16] = a3;
  *&v277[24] = a4;
  *&v277[64] = a7;
  *&v277[56] = a5;
  v15 = *(v12 + 256);
  *&v277[40] = *(v12 + 240);
  *&v277[48] = v15;
  count = a2;
  if (a2 <= 0xFFF && 32 * a2 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal_14063;
  }

  v16 = malloc_type_zone_calloc(queryZone, a2, 0x20uLL, 0x5BAF1CEAuLL);
  if (v16)
  {
    v17 = MEMORY[0x1E69E9B38];
    v18 = v13;
    v19 = v16;
  }

  else
  {
    _log_fault_for_malloc_failure();
    v17 = MEMORY[0x1E69E9B38];
    v18 = v13;
    v19 = 0;
  }

  CICleanUpPush(v18, v17, v19);
  *&v277[32] = v16;
  v277[80] = (*(v12 + 616) & 0x40) != 0;
  v233 = a4;
  v234 = v12;
  v232 = v13;
  if (a2)
  {
    v21 = a2;
    v22 = a3;
    do
    {
      if (**v22 == 42)
      {
        __p[0] = resolveQueryInfoCallback;
        __p[1] = v277;
        v31 = *(v12 + 24);
        *&v278 = 0;
        *(&v278 + 1) = &v278;
        LODWORD(v280) = 0;
        v279 = 0x2000000000;
        buf[0] = MEMORY[0x1E69E9820];
        buf[1] = 0x40000000;
        buf[2] = ___hashTableIterate_block_invoke_2;
        buf[3] = &unk_1E81939C8;
        buf[6] = __p;
        buf[5] = termUpdateSetApplier;
        buf[4] = &v278;
        _TermTrieWalkFatWithOptions(v31 + 32, 0, 0, 0, buf, 0, 0);
        _Block_object_dispose(&v278, 8);
        if (a4)
        {
          goto LABEL_310;
        }

        goto LABEL_384;
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  Mutable = CFSetCreateMutable(0, 0, 0);
  __p[0] = 128;
  v24 = malloc_type_zone_malloc(queryZone, 0xC00uLL, 0xA4971684uLL);
  if (!v24)
  {
    _log_fault_for_malloc_failure();
  }

  __p[1] = v24;
  *v300 = 128;
  v25 = malloc_type_zone_malloc(queryZone, 0xC00uLL, 0xA4971684uLL);
  if (!v25)
  {
    _log_fault_for_malloc_failure();
  }

  *&v300[8] = v25;
  v26 = malloc_type_zone_malloc(queryZone, 0x10uLL, 0xA4971684uLL);
  v27 = v26;
  v231 = a6;
  if (v26)
  {
    *&v277[72] = v26;
    v28 = MEMORY[0x1E69E9B38];
    v29 = v13;
    v30 = v27;
  }

  else
  {
    _log_fault_for_malloc_failure();
    *&v277[72] = 0;
    v28 = MEMORY[0x1E69E9B38];
    v29 = v13;
    v30 = 0;
  }

  CICleanUpPush(v29, v28, v30);
  *v27 = 0;
  v27[1] = 0;
  if (!a2)
  {
    goto LABEL_307;
  }

  v32 = 0;
  do
  {
    HIDWORD(__p[0]) = 0;
    *&v300[4] = 0;
    v237 = v32;
    v33 = &a3[8 * v32];
    v34 = *(v33 + 4);
    if ((v34 & 0x10) != 0)
    {
      goto LABEL_303;
    }

    v35 = *v33;
    v36 = strlen(*v33);
    v37 = (*(v234 + 24) + 32) | 1;
    if ((v34 & 4) != 0)
    {
      v41 = v33[1];
      v42 = strcmp(v35, v41);
      v43 = *v35;
      if (v43 != *v41 || (v43 - 2) > 2)
      {
        goto LABEL_303;
      }

      v45 = *(v35 + 1);
      if (v35[1] < 0)
      {
        v48 = *(v35 + 2);
        if (v35[2] < 0)
        {
          v64 = *(v35 + 3);
          if (v35[3] < 0)
          {
            v66 = *(v35 + 4);
            if (v35[4] < 0)
            {
              v70 = v35[5];
              if (v70 < 0)
              {
                goto LABEL_391;
              }

              v46 = 6;
              v45 = ((v66 & 0x7F) << 21) | (v70 << 28) | ((v64 & 0x7F) << 14) | ((v48 & 0x7F) << 7) | v45 & 0x7F;
              if (!v42)
              {
                goto LABEL_281;
              }
            }

            else
            {
              v46 = 5;
              v45 = ((v64 & 0x7F) << 14) | (v66 << 21) | ((v48 & 0x7F) << 7) | v45 & 0x7F;
              if (!v42)
              {
                goto LABEL_281;
              }
            }
          }

          else
          {
            v46 = 4;
            v45 = ((v48 & 0x7F) << 7) | (v64 << 14) | v45 & 0x7F;
            if (!v42)
            {
              goto LABEL_281;
            }
          }
        }

        else
        {
          v45 = v45 & 0x7F | (v48 << 7);
          v46 = 3;
          if (!v42)
          {
            goto LABEL_281;
          }
        }
      }

      else
      {
        v46 = 2;
        if (!v42)
        {
LABEL_281:
          v171 = 0;
          while (1)
          {
            v172 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            v173 = v37 & 3;
            if (v173 <= 1)
            {
              if (v173 != 1)
              {
                goto LABEL_303;
              }

              v37 = v172[*(&tcm + v35[v171]) + 1];
              if (!v37)
              {
                goto LABEL_303;
              }

              goto LABEL_296;
            }

            if (v173 != 2)
            {
              v37 |= 3uLL;
              v46 = v171;
LABEL_299:
              if ((~v37 & 3) != 0)
              {
                bzero(buf, 0x400uLL);
                TermTrieMatchRangeChars(v37, &v35[v46], &v41[v46], Mutable, buf, 0);
                goto LABEL_303;
              }

              v63 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
              goto LABEL_301;
            }

            v174 = *(&tcm + v35[v171]);
            v175 = v172 + 1;
            if (((*(v172[1].i32 + ((v174 >> 3) & 0x1C)) >> v174) & 1) == 0)
            {
              goto LABEL_303;
            }

            v176 = 0;
            v177 = v174 >> 6;
            if ((v174 >> 6) > 1)
            {
              break;
            }

            v178 = v174 >> 6;
            if (v177)
            {
              goto LABEL_294;
            }

LABEL_295:
            v182 = vcnt_s8((*&v175[v177] & ~(-1 << v174)));
            v182.i16[0] = vaddlv_u8(v182);
            v37 = v172[v182.u32[0] + 6 + v178];
            if (!v37)
            {
              goto LABEL_303;
            }

LABEL_296:
            if (v46 == ++v171)
            {
              goto LABEL_299;
            }
          }

          if (v177 != 2)
          {
            v179 = vcnt_s8(v172[3]);
            v179.i16[0] = vaddlv_u8(v179);
            v176 = v179.u32[0];
          }

          v180 = vcnt_s8(v172[2]);
          v180.i16[0] = vaddlv_u8(v180);
          v176 += v180.u32[0];
LABEL_294:
          v181 = vcnt_s8(*v175);
          v181.i16[0] = vaddlv_u8(v181);
          v178 = v181.u32[0] + v176;
          goto LABEL_295;
        }
      }

      v71 = *(v41 + 1);
      if (v41[1] < 0)
      {
        v72 = *(v41 + 2);
        if (v41[2] < 0)
        {
          v73 = *(v41 + 3);
          if (v41[3] < 0)
          {
            v74 = *(v41 + 4);
            if (v41[4] < 0)
            {
              v169 = v41[5];
              if (v169 < 0)
              {
                goto LABEL_392;
              }

              v71 = ((v74 & 0x7F) << 21) | (v169 << 28) | ((v73 & 0x7F) << 14) | ((v72 & 0x7F) << 7) | v71 & 0x7F;
            }

            else
            {
              v71 = ((v73 & 0x7F) << 14) | (v74 << 21) | ((v72 & 0x7F) << 7) | v71 & 0x7F;
            }
          }

          else
          {
            v71 = ((v72 & 0x7F) << 7) | (v73 << 14) | v71 & 0x7F;
          }
        }

        else
        {
          v71 = v71 & 0x7F | (v72 << 7);
        }
      }

      if (v45)
      {
        v170 = v45 == v71;
      }

      else
      {
        v170 = 0;
      }

      if (!v170)
      {
        goto LABEL_303;
      }

      goto LABEL_281;
    }

    if (v33[4])
    {
      v38 = v33;
      if (*(v33 + 5) < 7)
      {
        goto LABEL_126;
      }

      if (*v35 != 1)
      {
        goto LABEL_135;
      }

      v39 = *(v35 + 1);
      if ((v35[1] & 0x80000000) == 0)
      {
        v40 = 2;
        goto LABEL_98;
      }

      v65 = *(v35 + 2);
      if ((v35[2] & 0x80000000) == 0)
      {
        v39 = v39 & 0x7F | (v65 << 7);
        v40 = 3;
        goto LABEL_98;
      }

      v67 = *(v35 + 3);
      if ((v35[3] & 0x80000000) == 0)
      {
        v68 = ((v65 & 0x7F) << 7) | (v67 << 14) | v39 & 0x7F;
        v40 = 4;
LABEL_97:
        v39 = v68;
        goto LABEL_98;
      }

      v75 = *(v35 + 4);
      if ((v35[4] & 0x80000000) == 0)
      {
        v68 = ((v67 & 0x7F) << 14) | (v75 << 21) | ((v65 & 0x7F) << 7) | v39 & 0x7F;
        v40 = 5;
        goto LABEL_97;
      }

      v183 = v35[5];
      if ((v183 & 0x80000000) == 0)
      {
        v184 = ((v75 & 0x7F) << 21) | (v183 << 28) | ((v67 & 0x7F) << 14) | ((v65 & 0x7F) << 7) | v39 & 0x7F;
        v40 = 6;
        v39 = v184;
LABEL_98:
        if (v39 != 2)
        {
          goto LABEL_103;
        }

        v76 = v40 + 1;
        if ((v35[v40] & 0x80000000) == 0)
        {
          goto LABEL_100;
        }

        v77 = v40 + 2;
        if ((v35[v76] & 0x80000000) == 0)
        {
          goto LABEL_102;
        }

        v76 = v40 + 3;
        if ((v35[v77] & 0x80000000) == 0)
        {
LABEL_100:
          v40 = v76;
          goto LABEL_103;
        }

        v77 = v40 + 4;
        if ((v35[v76] & 0x80000000) == 0)
        {
LABEL_102:
          v40 = v77;
          goto LABEL_103;
        }

        if ((v35[v77] & 0x80000000) == 0)
        {
          v40 += 5;
LABEL_103:
          if (v40 > v36)
          {
            goto LABEL_135;
          }

          v78 = 0;
          while (1)
          {
            v79 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            v80 = v37 & 3;
            if (v80 <= 1)
            {
              if (v80 != 1)
              {
                goto LABEL_135;
              }

              v37 = v79[*(&tcm + v35[v78]) + 1];
              if (!v37)
              {
                goto LABEL_135;
              }

              goto LABEL_119;
            }

            if (v80 != 2)
            {
              break;
            }

            v81 = *(&tcm + v35[v78]);
            v82 = v79 + 1;
            if (((*(v79[1].i32 + ((v81 >> 3) & 0x1C)) >> v81) & 1) == 0)
            {
              goto LABEL_135;
            }

            v83 = 0;
            v84 = v81 >> 6;
            if ((v81 >> 6) > 1)
            {
              if (v84 != 2)
              {
                v86 = vcnt_s8(v79[3]);
                v86.i16[0] = vaddlv_u8(v86);
                v83 = v86.u32[0];
              }

              v87 = vcnt_s8(v79[2]);
              v87.i16[0] = vaddlv_u8(v87);
              v83 += v87.u32[0];
LABEL_117:
              v88 = vcnt_s8(*v82);
              v88.i16[0] = vaddlv_u8(v88);
              v85 = v88.u32[0] + v83;
              goto LABEL_118;
            }

            v85 = v81 >> 6;
            if (v84)
            {
              goto LABEL_117;
            }

LABEL_118:
            v89 = vcnt_s8((*&v82[v84] & ~(-1 << v81)));
            v89.i16[0] = vaddlv_u8(v89);
            v37 = v79[v89.u32[0] + 6 + v85];
            if (!v37)
            {
              goto LABEL_135;
            }

LABEL_119:
            if (v40 == ++v78)
            {
              LODWORD(v78) = v40;
              goto LABEL_123;
            }
          }

          if (v78)
          {
            v37 |= 3uLL;
LABEL_123:
            if ((~v37 & 3) == 0)
            {
              CFSetAddValue(Mutable, (v37 & 0xFFFFFFFFFFFFFFFCLL));
              goto LABEL_135;
            }

            if (v40 != v78)
            {
              goto LABEL_135;
            }

LABEL_126:
            v90 = __p[0];
            if (SLODWORD(__p[0]) < 1)
            {
              LODWORD(__p[0]) *= 2;
              v93 = 48 * v90;
              if (__p[1])
              {
                v94 = malloc_type_zone_realloc(queryZone, __p[1], v93, 0xA1A7ADA0uLL);
              }

              else
              {
                v94 = malloc_type_zone_malloc(queryZone, v93, 0x566E289CuLL);
              }

              v92 = v94;
              if (!v94)
              {
                _log_fault_for_malloc_failure();
              }

              __p[1] = v92;
              v91 = HIDWORD(__p[0]);
            }

            else
            {
              v91 = 0;
              v92 = __p[1];
            }

            v95 = &v92[24 * v91];
            *v95 = v37;
            *(v95 + 8) = xmmword_1C2BFA340;
            ++HIDWORD(__p[0]);
          }

LABEL_135:
          v286 = 0;
          v275 = 0;
          __s = 0;
          v96 = v33[4];
          v241 = v33;
          if (icu_search_context_is_fuzzy())
          {
            v97 = *&v277[72];
            if (!**&v277[72])
            {
              **&v277[72] = Mutable;
            }

            if (!*(v97 + 8))
            {
              v98 = *(v33 + 4);
              la_init(v33[4]);
            }

            while (HIDWORD(__p[0]))
            {
              if (SHIDWORD(__p[0]) >= 1)
              {
                v99 = 0;
                v100 = 0;
                do
                {
                  v101 = *(__p[1] + v99 + 8);
                  v102 = *(__p[1] + v99 + 16);
                  v103 = *(*&v277[72] + 8);
                  if (*(v103 + 48))
                  {
                    v104 = v101 == 0;
                  }

                  else
                  {
                    v104 = 1;
                  }

                  if (v104)
                  {
                    goto LABEL_155;
                  }

                  v105 = *(v103 + 16) - *(v103 + 32);
                  v106 = 5 * (v102 - v105);
                  v107 = v105 >= v102;
                  v108 = 5 * (v105 - v102);
                  if (v107)
                  {
                    v106 = 0;
                  }

                  if (!v107)
                  {
                    v108 = 0;
                  }

                  if ((((v101 << v106) >> v108) & 0x1F79C61) == 0)
                  {
LABEL_155:
                    v110 = 2 * *(v103 + 32);
                    if (v110 < *(v103 + 16) - v102)
                    {
                      v111 = v110 + 1;
                    }

                    else
                    {
                      v111 = *(v103 + 16) - v102;
                    }

                    LOBYTE(v278) = 0;
                    buf[0] = 0;
                    tt_transition_for_state(**v103, v101, v111 << 8, buf, &v278);
                    v112 = buf[0];
                    v113 = *(v103 + 40) + 24 * v102;
                    *(v113 + 8) = buf[0];
                    *(v113 + 16) = v278 + v102;
                    v114 = *v113;
                    v115 = *(v113 + 16);
                    if (dword_1EBF46AD0 >= 5)
                    {
                      v235 = *__error();
                      log = _SILogForLogForCategory(1);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        buf[0].i32[0] = 134218752;
                        *(buf + 4) = v101;
                        buf[1].i16[2] = 1024;
                        *(&buf[1].i32[1] + 2) = v102;
                        buf[2].i16[1] = 2048;
                        *(&buf[2] + 4) = v112;
                        buf[3].i16[2] = 1024;
                        *(&buf[3].i32[1] + 2) = v115.i32[0];
                        _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "la_transition_context_for_state, current_state: %llu %d: transition_ctx.default_state: %llu %d", buf, 0x22u);
                      }

                      *__error() = v235;
                    }

                    v116 = *(__p[1] + v99);
                    *v302 = *(__p[1] + v99 + 8);
                    *&v278 = MEMORY[0x1E69E9820];
                    *(&v278 + 1) = 0x40000000;
                    v279 = __term_trie_resolve_fuzzy_transition_block_invoke;
                    v280 = &__block_descriptor_tmp_55_14115;
                    v281 = *&v277[72];
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = __term_trie_resolve_fuzzy_transition_block_invoke_2;
                    buf[3] = &__block_descriptor_tmp_57_14116;
                    buf[4] = v112;
                    buf[5] = v115;
                    *buf[7].i8 = *v302;
                    buf[6] = v116;
                    buf[9] = *&v277[72];
                    *&v289 = v300;
                    _term_trie_resolve_sub_trie(v116, v114, *&v112 != 0, &v278, buf);
                  }

                  else
                  {
                    v109 = *(__p[1] + v99);
                    if ((v109 & 3) == 2)
                    {
                      v261[0] = MEMORY[0x1E69E9820];
                      v261[1] = 0x40000000;
                      v261[2] = __termUpdateSetResolveQueryInfo_block_invoke_3;
                      v261[3] = &__block_descriptor_tmp_34_14113;
                      v264 = *&v277[32];
                      v265 = *&v277[48];
                      v266 = *&v277[64];
                      v267 = *&v277[80];
                      v262 = *v277;
                      v263 = *&v277[16];
                      _TermTrieWalkCompactWithOptions(v109 & 0xFFFFFFFFFFFFFFFCLL, 0, 0, 1u, v261, 0, 0);
                    }

                    else if ((v109 & 3) == 1)
                    {
                      v268[0] = MEMORY[0x1E69E9820];
                      v268[1] = 0x40000000;
                      v268[2] = __termUpdateSetResolveQueryInfo_block_invoke_2;
                      v268[3] = &__block_descriptor_tmp_33_14112;
                      v271 = *&v277[32];
                      v272 = *&v277[48];
                      v273 = *&v277[64];
                      v274 = *&v277[80];
                      v269 = *v277;
                      v270 = *&v277[16];
                      _TermTrieWalkFatWithOptions(v109 & 0xFFFFFFFFFFFFFFFCLL, 0, 0, 1, v268, 0, 0);
                    }
                  }

                  ++v100;
                  v99 += 24;
                }

                while (v100 < SHIDWORD(__p[0]));
              }

              if ((v241[2] & 2) != 0 && *&v300[4] >= 1)
              {
                v117 = 0;
                v118 = 0;
                do
                {
                  v119 = **&v277[72];
                  *buf[0].i8 = *(*&v300[8] + v117);
                  buf[2] = *(*&v300[8] + v117 + 16);
                  term_trie_resolve_combining(buf, v119, v300);
                  ++v118;
                  v117 += 24;
                }

                while (v118 < *&v300[4]);
              }

              v120 = *v300;
              *v300 = *__p;
              *&v300[4] = 0;
              *__p = v120;
            }

            v38 = v241;
            v121 = v241[4];
            if (!icu_search_context_is_fuzzy())
            {
              goto LABEL_303;
            }

LABEL_223:
            if (*(*(*&v277[72] + 8) + 48))
            {
              goto LABEL_303;
            }

            goto LABEL_224;
          }

          v122 = v33[4];
          item_count = icu_search_context_item_get_item_count();
          if (item_count < 1 || HIDWORD(__p[0]) == 0)
          {
            v124 = v33[4];
            if (icu_search_context_is_fuzzy())
            {
              goto LABEL_223;
            }

            goto LABEL_303;
          }

          v125 = 0;
LABEL_181:
          v126 = v38[4];
          info = icu_search_context_item_get_info();
          if (info)
          {
            v128 = info;
            v129 = HIDWORD(__p[0]);
            if (SHIDWORD(__p[0]) < 1)
            {
              goto LABEL_218;
            }

            v130 = 0;
            v131 = info & 0xFFFFFFFE;
            while (1)
            {
              if (v128 <= 2)
              {
                if (v128 == 1)
                {
                  v137 = *(__p[1] + 3 * v130);
                  if ((v137 & 3) == 2)
                  {
                    v259[0] = MEMORY[0x1E69E9820];
                    v259[1] = 0x40000000;
                    v259[2] = __termUpdateSetResolveQueryInfo_block_invoke_2_38;
                    v259[3] = &__block_descriptor_tmp_39_14118;
                    v259[4] = Mutable;
                    _TermTrieWalkCompactWithOptions(v137 & 0xFFFFFFFFFFFFFFFCLL, 0, 0, 1u, v259, 0, 0);
                  }

                  else if ((v137 & 3) == 1)
                  {
                    v260[0] = MEMORY[0x1E69E9820];
                    v260[1] = 0x40000000;
                    v260[2] = __termUpdateSetResolveQueryInfo_block_invoke_36;
                    v260[3] = &__block_descriptor_tmp_37;
                    v260[4] = Mutable;
                    _TermTrieWalkFatWithOptions(v137 & 0xFFFFFFFFFFFFFFFCLL, 0, 0, 1, v260, 0, 0);
                  }
                }

                else
                {
                  if (v128 != 2)
                  {
LABEL_204:
                    if (v131 != 6)
                    {
                      break;
                    }

                    goto LABEL_215;
                  }

                  v133 = __p[1] + 24 * v130;
                  *buf[0].i8 = *v133;
                  buf[2] = *(v133 + 16);
                  term_trie_resolve_combining(buf, Mutable, __p);
                }
              }

              else
              {
                switch(v128)
                {
                  case 3:
                    v134 = __p[1] + 24 * v130;
                    v135 = __s;
LABEL_214:
                    v144 = strlen(v135);
                    term_trie_resolve_sub_string(*v134, v135, v144, v300, Mutable, *(v134 + 8));
                    goto LABEL_215;
                  case 4:
                    if ((v241[2] & 2) != 0)
                    {
                      if (v275 >= 1)
                      {
                        for (i = 0; i < v275; ++i)
                        {
                          v139 = *(v286 + 8 * i);
                          v140 = *v139;
                          v142 = v139[1];
                          v141 = v139 + 1;
                          v143 = __p[1] + 24 * v130;
                          if (utf8_byte_length_noerror(unsigned char)::utf8_len_table[v142 >> 4] == v140)
                          {
                            term_trie_resolve_sub_string(*v143, v141, v140, v300, Mutable, *(v143 + 8));
                          }

                          else
                          {
                            v278 = *v143;
                            v279 = *(v143 + 2);
                            v298 = 0u;
                            v299 = 0u;
                            v296 = 0u;
                            v297 = 0u;
                            v294 = 0u;
                            v295 = 0u;
                            v292 = 0u;
                            v293 = 0u;
                            v290 = 0u;
                            v291 = 0u;
                            v289 = 0u;
                            memset(buf, 0, sizeof(buf));
                            _term_trie_resolve_sub_string_ignore_diacritics(&v278, v141, v140, v300, Mutable, buf, 0);
                          }
                        }
                      }
                    }

                    else if (v275 >= 1)
                    {
                      for (j = 0; j < v275; ++j)
                      {
                        term_trie_resolve_sub_string(*(__p[1] + 3 * v130), *(v286 + 8 * j) + 1, **(v286 + 8 * j), v300, Mutable, *(__p[1] + 24 * v130 + 8));
                      }
                    }

                    break;
                  case 5:
                    if (v275 >= 1)
                    {
                      for (k = 0; k < v275; ++k)
                      {
                        term_trie_resolve_sub_string(*(__p[1] + 3 * v130), *(v286 + 8 * k) + 1, **(v286 + 8 * k), v300, Mutable, *(__p[1] + 24 * v130 + 8));
                      }
                    }

                    break;
                  default:
                    goto LABEL_204;
                }

                v135 = __s;
                if (__s)
                {
                  v134 = __p[1] + 24 * v130;
                  goto LABEL_214;
                }
              }

LABEL_215:
              ++v130;
              v129 = HIDWORD(__p[0]);
              if (v130 >= SHIDWORD(__p[0]))
              {
                v38 = v241;
LABEL_218:
                if (v128 != 2)
                {
                  v145 = *v300;
                  *v300 = *__p;
                  *&v300[4] = 0;
                  *__p = v145;
                  v129 = DWORD1(v145);
                }

                if (++v125 >= item_count || !v129)
                {
                  v146 = v38[4];
                  if (icu_search_context_is_fuzzy())
                  {
                    goto LABEL_223;
                  }

                  if (v125 != item_count)
                  {
                    goto LABEL_303;
                  }

                  if (!HIDWORD(__p[0]))
                  {
                    goto LABEL_303;
                  }

                  v151 = v38[4];
                  if (icu_search_context_item_get_info() == 1)
                  {
                    goto LABEL_303;
                  }

LABEL_224:
                  v148 = *(v38 + 4);
                  v147 = *(v38 + 5);
                  if ((v148 & 0x800) != 0)
                  {
                    if (v147)
                    {
                      if (v147 == 1)
                      {
                        if (SHIDWORD(__p[0]) >= 1)
                        {
                          v158 = 0;
                          v159 = 0;
                          do
                          {
                            term_trie_resolve_sub_string(*(__p[1] + v158), "\x01\x04", 2, v300, Mutable, *(__p[1] + v158 + 8));
                            term_trie_resolve_sub_string(*(__p[1] + v158), "\x01\x04\x03", 2, v300, Mutable, *(__p[1] + v158 + 8));
                            ++v159;
                            v158 += 24;
                          }

                          while (v159 < SHIDWORD(__p[0]));
                        }
                      }

                      else if (v147 == 5 && SHIDWORD(__p[0]) >= 1)
                      {
                        v152 = 0;
                        v153 = 0;
                        do
                        {
                          term_trie_resolve_sub_string(*(__p[1] + v152), "\x01\x05", 2, v300, Mutable, *(__p[1] + v152 + 8));
                          term_trie_resolve_sub_string(*(__p[1] + v152), "\x01\x05\x03", 2, v300, Mutable, *(__p[1] + v152 + 8));
                          ++v153;
                          v152 += 24;
                        }

                        while (v153 < SHIDWORD(__p[0]));
                      }
                    }

                    else if (SHIDWORD(__p[0]) >= 1)
                    {
                      v160 = 0;
                      v161 = 0;
                      do
                      {
                        term_trie_resolve_sub_string(*(__p[1] + v160), "\x01", 1, v300, Mutable, *(__p[1] + v160 + 8));
                        ++v161;
                        v160 += 24;
                      }

                      while (v161 < SHIDWORD(__p[0]));
                    }

                    v162 = *v300;
                    *v300 = *__p;
                    *&v300[4] = 0;
                    *__p = v162;
                  }

                  else if (v147)
                  {
                    if (v147 == 1)
                    {
                      if (SHIDWORD(__p[0]) >= 1)
                      {
                        v149 = 0;
                        v150 = 0;
                        do
                        {
                          term_trie_resolve_sub_string(*(__p[1] + v149), "\x01\x01", 2, v300, Mutable, *(__p[1] + v149 + 8));
                          term_trie_resolve_sub_string(*(__p[1] + v149), "\x01\x01\x03", 3, v300, Mutable, *(__p[1] + v149 + 8));
                          ++v150;
                          v149 += 24;
                        }

                        while (v150 < SHIDWORD(__p[0]));
                      }
                    }

                    else if (v147 >= 7 && SHIDWORD(__p[0]) >= 1)
                    {
                      v156 = 0;
                      v157 = 0;
                      do
                      {
                        term_trie_resolve_sub_string(*(__p[1] + v156), "\x01\x03", 2, v300, Mutable, *(__p[1] + v156 + 8));
                        ++v157;
                        v156 += 24;
                      }

                      while (v157 < SHIDWORD(__p[0]));
                    }
                  }

                  else if ((v148 & 0x3080) == 0 && SHIDWORD(__p[0]) >= 1)
                  {
                    v154 = 0;
                    v155 = 0;
                    do
                    {
                      term_trie_resolve_sub_string(*(__p[1] + v154), "\x01\x02", 2, v300, Mutable, *(__p[1] + v154 + 8));
                      ++v155;
                      v154 += 24;
                    }

                    while (v155 < SHIDWORD(__p[0]));
                  }

                  while (1)
                  {
                    v164 = HIDWORD(__p[0]);
                    if (SHIDWORD(__p[0]) >= 1)
                    {
                      v165 = 0;
                      v166 = 0;
                      do
                      {
                        v167 = *(__p[1] + v165) & 3;
                        if (v167 == 1 || v167 == 2)
                        {
                          v168 = *(*(__p[1] + v165) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v168)
                          {
                            CFSetAddValue(Mutable, v168);
                            v164 = HIDWORD(__p[0]);
                          }
                        }

                        ++v166;
                        v165 += 24;
                      }

                      while (v166 < v164);
                    }

                    if (!*&v300[4])
                    {
                      break;
                    }

                    v163 = *v300;
                    *v300 = *__p;
                    *&v300[4] = 0;
                    *__p = v163;
                  }

                  goto LABEL_303;
                }

                goto LABEL_181;
              }
            }
          }

          v224 = __si_assert_copy_extra_332();
          __message_assert("%s:%u: failed assertion '%s' %s ");
LABEL_387:
          free(v224);
          if (__valid_fs(-1))
          {
            v225 = 2989;
          }

          else
          {
            v225 = 3072;
          }

          *v225 = -559038737;
          abort();
        }

LABEL_391:
        v224 = __si_assert_copy_extra_332();
        __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
        goto LABEL_387;
      }

LABEL_392:
      v226 = __si_assert_copy_extra_332();
      v227 = v226;
      v228 = "";
      if (v226)
      {
        v228 = v226;
      }

      __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v228);
      free(v227);
      if (__valid_fs(-1))
      {
        v229 = 2989;
      }

      else
      {
        v229 = 3072;
      }

      *v229 = -559038737;
      abort();
    }

    v47 = v36 >= 2 && v35[v36 - 1] == 42;
    v49 = v36 - v47;
    if (v36 - v47 < 1)
    {
LABEL_62:
      LODWORD(v50) = v36 - v47;
      goto LABEL_63;
    }

    v50 = 0;
    while (1)
    {
      v51 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      v52 = v37 & 3;
      if (v52 <= 1)
      {
        if (v52 != 1)
        {
          goto LABEL_303;
        }

        v37 = v51[*(&tcm + v35[v50]) + 1];
        if (!v37)
        {
          goto LABEL_303;
        }

        goto LABEL_61;
      }

      if (v52 != 2)
      {
        break;
      }

      v53 = *(&tcm + v35[v50]);
      v54 = v51 + 1;
      if (((*(v51[1].i32 + ((v53 >> 3) & 0x1C)) >> v53) & 1) == 0)
      {
        goto LABEL_303;
      }

      v55 = 0;
      v56 = v53 >> 6;
      if ((v53 >> 6) > 1)
      {
        if (v56 != 2)
        {
          v58 = vcnt_s8(v51[3]);
          v58.i16[0] = vaddlv_u8(v58);
          v55 = v58.u32[0];
        }

        v59 = vcnt_s8(v51[2]);
        v59.i16[0] = vaddlv_u8(v59);
        v55 += v59.u32[0];
LABEL_59:
        v60 = vcnt_s8(*v54);
        v60.i16[0] = vaddlv_u8(v60);
        v57 = v60.u32[0] + v55;
        goto LABEL_60;
      }

      v57 = v53 >> 6;
      if (v56)
      {
        goto LABEL_59;
      }

LABEL_60:
      v61 = vcnt_s8((*&v54[v56] & ~(-1 << v53)));
      v61.i16[0] = vaddlv_u8(v61);
      v37 = v51[v61.u32[0] + 6 + v57];
      if (!v37)
      {
        goto LABEL_303;
      }

LABEL_61:
      if ((v49 & 0x7FFFFFFF) == ++v50)
      {
        goto LABEL_62;
      }
    }

    v37 |= 3uLL;
LABEL_63:
    v276[0] = MEMORY[0x1E69E9820];
    v276[1] = 0x40000000;
    v276[2] = __termUpdateSetResolveQueryInfo_block_invoke;
    v276[3] = &__block_descriptor_tmp_31_14111;
    v276[4] = Mutable;
    v62 = v37 & 3;
    if (v62 == 3)
    {
      v63 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v37 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_303;
      }

      goto LABEL_301;
    }

    if (v50 != v49)
    {
      goto LABEL_303;
    }

    if (v62 != 1)
    {
      if (v62 == 2 && v47)
      {
        _TermTrieWalkCompactWithOptions(v37 & 0xFFFFFFFFFFFFFFFCLL, 0, 0, 1u, 0, v276, 0);
      }

      goto LABEL_303;
    }

    v69 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      _TermTrieWalkFatWithOptions(v69, 0, 0, 1, 0, v276, 0);
      goto LABEL_303;
    }

    v63 = *v69;
    if (*v69)
    {
LABEL_301:
      CFSetAddValue(Mutable, v63);
    }

LABEL_303:
    v32 = v237 + 1;
  }

  while (v237 + 1 != a2);
LABEL_307:
  v256 = 0;
  context = resolveQueryInfoCallback;
  v257 = v277;
  v258 = Mutable;
  v185 = flat_levels_cf_set_applier1;
  v12 = v234;
  if (v231)
  {
    LODWORD(v256) = v231 - *(v234 + 8);
    v185 = flat_levels_cf_set_applier2;
  }

  CFSetApplyFunction(Mutable, v185, &context);
  CFRelease(Mutable);
  free(__p[1]);
  free(*&v300[8]);
  a4 = v233;
  if (v233)
  {
LABEL_310:
    if (a2)
    {
      v186 = 0;
      do
      {
        v187 = *(a4 + 8 * v186);
        v188 = &a3[8 * v186];
        v189 = *(v188 + 4);
        if ((v189 & 0x600) != 0)
        {
          v190 = *(v188 + 5);
          v191 = *v188;
          v245[0] = MEMORY[0x1E69E9820];
          v245[1] = 0x40000000;
          v251 = *&v277[32];
          v252 = *&v277[48];
          v253 = *&v277[64];
          v249 = *v277;
          v246 = __termUpdateSetResolveQueryInfo_block_invoke_3_49;
          v247 = &__block_descriptor_tmp_51_14129;
          v248 = v187;
          v254 = *&v277[80];
          v250 = *&v277[16];
          if (v190)
          {
            v192 = *(v191 + 8 * v190 - 8);
            v194 = v192 == 2 || v192 == *(v12 + 48);
            v195 = ~v194 + v190;
          }

          else
          {
            v195 = -1;
          }

          Directory_355 = getDirectory_355((v12 + 48), v195, v191, 0);
          if (Directory_355)
          {
            if ((v189 & 0x400) != 0)
            {
              if (*(Directory_355 + 24))
              {
                v246(v245, Directory_355 + 16);
              }
            }

            else
            {
              getAllPostings(Directory_355, v245);
            }
          }
        }

        else if ((v189 & 0x10) != 0)
        {
          *&v278 = 0;
          *(&v278 + 1) = &v278;
          v279 = 0x2000000000;
          v280 = 0;
          v196 = 0;
          if (_os_feature_enabled_impl())
          {
            v196 = *(v12 + 80);
          }

          v197 = *(v188 + 5);
          v198 = *(v188 + 15);
          v199 = v198 >> 25;
          if (!v199)
          {
            if (current_vector_version::onceToken != -1)
            {
              dispatch_once(&current_vector_version::onceToken, &__block_literal_global_7971);
            }

            v199 = current_vector_version::vecVersion;
            v198 = *(v188 + 15);
          }

          v200 = *v188;
          v201 = *(v188 + 14);
          v202 = __THREAD_SLOT_KEY;
          if (!__THREAD_SLOT_KEY)
          {
            makeThreadId();
            v202 = __THREAD_SLOT_KEY;
          }

          v203 = pthread_getspecific(v202);
          if (!v203 || v203 >= 0x801)
          {
            makeThreadId();
            v203 = pthread_getspecific(__THREAD_SLOT_KEY);
          }

          v204 = 0;
          if (v203 && v203 <= 0x800)
          {
            v205 = &threadData[9 * v203];
            v204 = *(v205 - 11);
            *(v205 - 11) = 1;
          }

          v240 = v204;
          v287 = 0;
          v286 = 0;
          IVFVectorIndexUpdateSet::getVectorIndex(&v286, v196, v197, v199, v198 & 3, (v198 >> 2) & 3, 0);
          v206 = v286;
          if (v286)
          {
            v244 = *__error();
            v207 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
            {
              v301 = 3;
              strcpy(v300, "<U>");
              (*(*v206 + 312))(__p, v206, v300);
              v208 = __p;
              if (v285 < 0)
              {
                v208 = __p[0];
              }

              *v302 = 134218242;
              *&v302[4] = v196;
              *&v302[12] = 2080;
              *&v302[14] = v208;
              _os_log_impl(&dword_1C278D000, v207, OS_LOG_TYPE_DEFAULT, "aNN search on <UpdateSet> %p %s", v302, 0x16u);
              if (v285 < 0)
              {
                operator delete(__p[0]);
              }

              if (v301 < 0)
              {
                operator delete(*v300);
              }
            }

            *__error() = v244;
            operator new();
          }

          v283 = 0;
          __s = 0;
          IVFVectorIndexUpdateSet::getVectorIndex(&__s, v196, v197, v199, v198 & 3, (v198 >> 2) & 3, 1u);
          if (__s)
          {
            v242 = __s;
            v243 = v196;
            v210 = *__error();
            v211 = _SILogForLogForCategory(16);
            if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
            {
              v301 = 3;
              strcpy(v300, "<U>");
              (*(*v242 + 312))(__p);
              v212 = __p;
              if (v285 < 0)
              {
                v212 = __p[0];
              }

              *v302 = 134218242;
              *&v302[4] = v243;
              *&v302[12] = 2080;
              *&v302[14] = v212;
              _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_DEFAULT, "aNN search on <UpdateSet> %p %s", v302, 0x16u);
              if (v285 < 0)
              {
                operator delete(__p[0]);
              }

              if (v301 < 0)
              {
                operator delete(*v300);
              }
            }

            *__error() = v210;
            operator new();
          }

          v213 = v196;
          v214 = *__error();
          v215 = _SILogForLogForCategory(16);
          v216 = dword_1EBF46B0C < 3;
          if (os_log_type_enabled(v215, (dword_1EBF46B0C < 3)))
          {
            IVFIndexName(__p, v197, v199, v198 & 3, (v198 >> 2) & 3, 0);
            v217 = __p;
            if (v285 < 0)
            {
              v217 = __p[0];
            }

            *v300 = 134218242;
            *&v300[4] = v213;
            *&v300[12] = 2080;
            *&v300[14] = v217;
            _os_log_impl(&dword_1C278D000, v215, v216, "*warn* aNN search on <UpdateSet> %p %s not found", v300, 0x16u);
            if (v285 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v214;
          v218 = v283;
          a4 = v233;
          v12 = v234;
          if (v283 && !atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
          }

          v219 = v287;
          if (v287 && !atomic_fetch_add(&v287->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v219->__on_zero_shared)(v219);
            std::__shared_weak_count::__release_weak(v219);
          }

          v220 = __THREAD_SLOT_KEY;
          if (!__THREAD_SLOT_KEY)
          {
            makeThreadId();
            v220 = __THREAD_SLOT_KEY;
          }

          v221 = pthread_getspecific(v220);
          if (v221 && v221 < 0x801 || (makeThreadId(), (v221 = pthread_getspecific(__THREAD_SLOT_KEY)) != 0))
          {
            if (v221 <= 0x800)
            {
              *(&threadData[9 * v221 - 5] - 1) = v240;
            }
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v222 = *(*(&v278 + 1) + 24);
            buf[0].i32[0] = 134217984;
            *(buf + 4) = v222;
            _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "update set ANN found %zu", buf, 0xCu);
          }

          _Block_object_dispose(&v278, 8);
        }

        ++v186;
      }

      while (v186 != count);
    }
  }

LABEL_384:
  CIOnThreadCleanUpPop(v232);
  CICleanUpReset(v232, v14);
  result = 0;
LABEL_385:
  v223 = *MEMORY[0x1E69E9840];
  return result;
}

void _scheduler_suspension_locked(uint64_t a1)
{
  atomic_fetch_add((a1 + 96), 1u);
  v1 = *(a1 + 160);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___scheduler_suspension_locked_block_invoke;
  block[3] = &__block_descriptor_tmp_72;
  block[4] = a1;
  dispatch_barrier_async(v1, block);
}

void _rewriteQuery(void *a1, double a2)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___rewriteQuery_block_invoke;
  v3[3] = &unk_1E8193B38;
  v3[4] = &v4;
  *&v3[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __db_query_tree_apply_block_block_invoke;
  v8[3] = &unk_1E8198ED0;
  v8[4] = v3;
  db_query_tree_apply_block_with_meta(a1, v8, &__block_literal_global_18);
  v2 = v5[3];
  if (v2)
  {
    OSAtomicEnqueue(&s_si_calendar_head, v2, 0);
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t ___rewriteQuery_block_invoke(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48) & 0xFFF7;
  if ((v3 - 1) >= 2)
  {
    if (v3 != 4)
    {
      v16 = *(a2 + 56) & 0xFCFF;
LABEL_38:
      *(a2 + 56) = v16;
      goto LABEL_39;
    }

    *(a2 + 56) |= 0x100u;
    v4 = *(a2 + 16);
    if (v4)
    {
      v6 = *(v4 + 32);
      if ((v6 & 0x400) != 0 || (v7 = *v4) != 0 && (!strcmp(*v4, "kMDItemTextContent") || !strncmp(v7, "_kMDItemOCRContent", 0x12uLL)))
      {
        v6 |= 0x400uLL;
        *(v4 + 32) = v6;
      }

      v8 = *(v4 + 72);
      if (v8 && *v8 == 36)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = *(*(*(a1 + 32) + 8) + 24);
        if (!v9)
        {
          *(*(*(a1 + 32) + 8) + 24) = si_calendar_retain();
          v8 = *(*(a2 + 16) + 72);
          v9 = *(*(*(a1 + 32) + 8) + 24);
        }

        v10 = _expandFunctions((v8 + 1), &v27, 0x200uLL, v9, &__block_literal_global_4_5387, *(a1 + 40));
        v11 = *(a2 + 16);
        *(v11 + 32) |= v10;
        v12 = *(v11 + 72);
        v13 = strlen(v12);
        v14 = strlen(&v27);
        if (v14 <= v13)
        {
          memcpy(v12, &v27, v14 + 1);
          v4 = *(a2 + 16);
        }

        else
        {
          free(v12);
          v15 = strdup(&v27);
          v4 = *(a2 + 16);
          *(v4 + 72) = v15;
        }

        v6 = *(v4 + 32);
      }

      if ((v6 & 0x80) != 0 && *(v4 + 168))
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        if (*(v4 + 40) >= 1)
        {
          v17 = 0;
          do
          {
            v18 = *(*(v4 + 168) + 8 * v17);
            if (v18 && *v18 == 36)
            {
              v19 = *(*(*(a1 + 32) + 8) + 24);
              if (!v19)
              {
                *(*(*(a1 + 32) + 8) + 24) = si_calendar_retain();
                v18 = *(*(*(a2 + 16) + 168) + 8 * v17);
                v19 = *(*(*(a1 + 32) + 8) + 24);
              }

              v20 = _expandFunctions((v18 + 1), &v27, 0x200uLL, v19, &__block_literal_global_4_5387, *(a1 + 40));
              v21 = *(a2 + 16);
              *(v21 + 32) |= v20;
              free(*(*(v21 + 168) + 8 * v17));
              *(*(*(a2 + 16) + 168) + 8 * v17) = strdup(&v27);
              v4 = *(a2 + 16);
            }

            ++v17;
          }

          while (v17 < *(v4 + 40));
        }

        v6 = *(v4 + 32);
      }

      if ((v6 & 0x800) != 0)
      {
        v16 = *(a2 + 56) & 0xFDFF;
      }

      else
      {
        v22 = *(v4 + 24);
        if (v22 == 14 || v22 == 5)
        {
          v24 = 512;
        }

        else
        {
          v24 = 0;
        }

        v16 = v24 | *(a2 + 56) & 0xFDFF;
      }

      goto LABEL_38;
    }
  }

LABEL_39:
  v25 = *MEMORY[0x1E69E9840];
  return a2;
}

void SISearchCtx::executeSearchContext(SISearchCtx *this, SISearchCtx *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "QOS executeSearchCtx: %d", v10, 8u);
    }

    *__error() = v8;
  }

  if (*MEMORY[0x1E69E9AC8] <= 0x2FuLL)
  {
    ++sTotal;
  }

  v4 = malloc_type_zone_calloc(queryZone, 1uLL, 0x30uLL, 0x5BAF1CEAuLL);
  if (!v4)
  {
    _log_fault_for_malloc_failure();
  }

  *v4 = this;
  v4[3] = *(this + 1);
  *(v4 + 32) = v2;
  v4[5] = _Block_copy(&__block_literal_global_16224);
  if (v2)
  {
    suspendOthers(this);
    *(v4 + 1) = CFAbsoluteTimeGetCurrent();
    executeSearchCtx_Start(v4, 0);
  }

  else
  {
    v5 = si_querypipe_copy_jobid(*(this + 13));
    if (v5)
    {
      v6 = v5;
      atomic_fetch_add_explicit((*(this + 13) + 64), 1u, memory_order_relaxed);
      *(v4 + 1) = CFAbsoluteTimeGetCurrent();
      v4[2] = "executeSearchContextCracked";
      suspendOthers(this);
      (*(*this + 24))(this, executeSearchCtx_Start, v4, v6);
      si_release_qid(v6);
    }

    else
    {
      search_ctx_destroy(v4, 1);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t suspendOthers(SISearchCtx *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 16))(a1);
  if ((result & 1) == 0)
  {
    if (*(a1 + 76) >= -1)
    {
      v3 = 0;
      v4 = a1 + 312;
      v5 = -2;
      while (1)
      {
        if (*(*(a1 + 3) + 8 * (v5 + 2) + 1008))
        {
          v6 = *__error();
          v7 = _SILogForLogForCategory(1);
          v8 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v7, v8))
          {
            *buf = 67109120;
            v24 = v5 + 2;
            _os_log_impl(&dword_1C278D000, v7, v8, "Suspending root query scheduler(%d)", buf, 8u);
          }

          result = __error();
          *result = v6;
          v9 = **(*(a1 + 3) + 8 * (v5 + 2) + 1008);
          do
          {
            if (!v9)
            {
              goto LABEL_12;
            }

            result = v9;
            v9 = *v9;
          }

          while (v9);
          if (*&v4[8 * v3])
          {
            goto LABEL_23;
          }

          result = si_scheduler_suspend_async(result);
          *&v4[8 * v3] = result;
        }

LABEL_12:
        ++v5;
        ++v3;
        if (v5 >= *(a1 + 76))
        {
          goto LABEL_15;
        }
      }
    }

    LODWORD(v3) = 0;
LABEL_15:
    v10 = *(*(a1 + 3) + 1080);
    if (v10)
    {
      v11 = *v10;
      do
      {
        if (!v11)
        {
          goto LABEL_22;
        }

        result = v11;
        v11 = *v11;
      }

      while (v11);
      v12 = a1 + 312;
      if (*&v12[8 * v3] || v3 >= 5)
      {
LABEL_23:
        v14 = __si_assert_copy_extra_332();
        __message_assert_336(v14, v15, v16, v17, v18, v19, v20, v21, "SISearchCtx.cpp");
        free(v14);
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

      result = si_scheduler_suspend_async(result);
      *&v12[8 * v3] = result;
    }
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_sdb_enqueue(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B00 >= 5)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v21 = qos_class_self();
      v22 = 1024;
      v23 = a5;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "QOS si_sdb_enqueue: %d priority: %d", buf, 0xEu);
    }

    *__error() = v14;
  }

  if (a5 <= -2)
  {
    v10 = -2;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (!*(a1 + 8 * (v11 + 2) + 1008))
  {
    v16 = __si_assert_copy_extra_661(*(a1 + 32));
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s No query work queue for priority %d", "SIJob.c", 120, "ref->workqueues.queues[SI_QUERY_QUEUE_IDX+priority]!=0", v18, v11);
    free(v17);
    if (__valid_fs(*(a1 + 32)))
    {
      v19 = 2989;
    }

    else
    {
      v19 = 3072;
    }

    *v19 = -559038737;
    abort();
  }

  result = si_enqueue_routine(a1, a2, a3, a4, v11 + 2);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}