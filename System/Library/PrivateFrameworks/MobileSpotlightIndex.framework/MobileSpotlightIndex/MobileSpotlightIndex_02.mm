uint64_t initQuery(uint64_t a1, uint64_t a2)
{
  v217 = *MEMORY[0x1E69E9840];
  v213 = 0u;
  v214 = 0u;
  pushSkipCrashState();
  v4 = *(a2 + 336);
  if (v4)
  {
    CFRetain(*(a2 + 336));
  }

  *(a1 + 656) = v4;
  v5 = 0x1EBF46000;
  if (*(a2 + 273) == 1 && ((*(a2 + 272) & 1) != 0 || (v6 = *(a2 + 280)) != 0 && CFArrayGetCount(v6) > 0 || *(a2 + 288)) && *(a2 + 272) == 1)
  {
    v7 = *(a2 + 312);
    v216 = 0u;
    memset(v215, 0, sizeof(v215));
    configureContext(v215, *(a2 + 112), 0, 0, "x", 0, 0, *(a2 + 336), *(a2 + 280));
    if (!LOWORD(v215[3]) || !processContext(v7, v215))
    {
      v49 = *__error();
      v50 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = *(a2 + 112);
        if (*(a2 + 272))
        {
          v52 = "MDS";
        }

        else
        {
          v52 = "CoreSpotlight";
        }

        LODWORD(v215[0]) = 134218498;
        *(v215 + 4) = v51;
        WORD2(v215[1]) = 2080;
        *(&v215[1] + 6) = "x";
        HIWORD(v215[2]) = 2080;
        v215[3] = v52;
        v53 = "[qid=%lld][%s][POMMES][%s] isValidPommesQuery failed";
        v54 = v50;
        v55 = OS_LOG_TYPE_ERROR;
        v56 = 32;
        goto LABEL_173;
      }

      goto LABEL_164;
    }
  }

  *(a1 + 696) = *(a2 + 296);
  *(a1 + 608) = *(a2 + 112);
  v207 = *(a2 + 128);
  *(a1 + 208) = (v207 & 0x40) != 0;
  v8 = *(a2 + 184);
  if (v8 < 0.0 || v8 > 0.0)
  {
    *(a1 + 360) = v8;
  }

  else
  {
    *(a2 + 184) = CFAbsoluteTimeGetCurrent();
  }

  *(a1 + 368) = CFAbsoluteTimeGetCurrent();
  *(a1 + 384) = 0;
  v9 = *(a2 + 8);
  v10 = MEMORY[0x1E695E480];
  if (v9)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v9);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 8) = Copy;
  v12 = *(a2 + 176);
  if (v12)
  {
    CFRetain(*(a2 + 176));
  }

  *(a1 + 240) = v12;
  v13 = *(a2 + 104);
  if (v13)
  {
    CFRetain(*(a2 + 104));
  }

  *a1 = v13;
  v14 = *(a2 + 192);
  if (v14)
  {
    CFRetain(*(a2 + 192));
  }

  *(a1 + 32) = v14;
  *(a1 + 760) = *(a2 + 354);
  v15 = *(a2 + 32);
  if (v15)
  {
    MutableCopy = RLEOIDArrayCreateMutableCopy(*v10, v9, v15);
  }

  else
  {
    MutableCopy = 0;
  }

  *(a1 + 576) = MutableCopy;
  if (*a1)
  {
    v17 = *(*a1 + 168);
    v212 = 0;
    if (v17)
    {
      Value = CFDictionaryGetValue(v17, @"_showAllExtensions");
      if (Value)
      {
        v19 = Value;
        v20 = CFGetTypeID(Value);
        if (v20 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v19, kCFNumberIntType, &v212);
        }
      }
    }

    if (*a1)
    {
      v21 = *(*a1 + 176);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v212 = 0;
  }

  if (*(a2 + 96))
  {
    Mutable = CFArrayCreateMutable(*v10, 0, MEMORY[0x1E695E9C0]);
    for (i = 0; CFArrayGetCount(*(a2 + 96)) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 96), i);
      v25 = ValueAtIndex;
      if (v212 && CFEqual(ValueAtIndex, @"kMDItemDisplayName"))
      {
        v25 = @"_kMDItemDisplayNameWithExtensionsSynth";
      }

      bzero(v215, 0x400uLL);
      CFStringGetCString(v25, v215, 1024, 0x8000100u);
      if (isEntitledForAttribute(v21, v215))
      {
        v26 = v25;
      }

      else
      {
        v26 = @"__DENIED__";
      }

      CFArrayAppendValue(Mutable, v26);
    }

    *(a1 + 16) = Mutable;
    v5 = 0x1EBF46000uLL;
    v10 = MEMORY[0x1E695E480];
  }

  v27 = *(a2 + 224);
  if (v27)
  {
    CFRetain(*(a2 + 224));
  }

  *(a1 + 24) = v27;
  v28 = *(a2 + 64);
  if (v28)
  {
    CFRetain(*(a2 + 64));
  }

  *(a1 + 40) = v28;
  v29 = *(a2 + 344);
  if (v29)
  {
    CFRetain(*(a2 + 344));
  }

  *(a1 + 752) = v29;
  if (query_needsWhatFieldsMatched_once != -1)
  {
    dispatch_once(&query_needsWhatFieldsMatched_once, &__block_literal_global_488);
  }

  v30 = *(a1 + 16);
  if (v30 && (Count = CFArrayGetCount(v30), Count >= 1))
  {
    v32 = Count;
    v33 = 0;
    v34 = 1;
    do
    {
      v35 = CFArrayGetValueAtIndex(*(a1 + 16), v33);
      if (CFSetContainsValue(query_needsWhatFieldsMatched_dict, v35))
      {
        break;
      }

      v34 = ++v33 < v32;
    }

    while (v32 != v33);
  }

  else
  {
    v34 = 0;
  }

  *(a1 + 60) = v34;
  v36 = *(a2 + 80);
  if (v36)
  {
    v37 = CFArrayCreateCopy(*v10, v36);
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 176) = v37;
  v38 = *(a2 + 88);
  if (v38)
  {
    v39 = CFArrayCreateCopy(*v10, v38);
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 184) = v39;
  if (*(v5 + 2768) >= 5)
  {
    v193 = *__error();
    v194 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      v195 = *(a1 + 8);
      v196 = *(a2 + 96);
      v197 = *(a2 + 80);
      LODWORD(v215[0]) = 138412802;
      *(v215 + 4) = v195;
      WORD2(v215[1]) = 2112;
      *(&v215[1] + 6) = v196;
      HIWORD(v215[2]) = 2112;
      v215[3] = v197;
      _os_log_impl(&dword_1C278D000, v194, OS_LOG_TYPE_DEFAULT, "initWithQuery %@ for fields:%@ and scopes:%@", v215, 0x20u);
    }

    *__error() = v193;
  }

  v40 = v207 & 0x40;
  v41 = *(a2 + 80);
  v42 = *(a2 + 88);
  if (v41)
  {
    if (v42)
    {
      v43 = *v10;
      v44 = CFArrayGetCount(v41);
      v45 = CFArrayGetCount(*(a2 + 88));
      v46 = CFArrayCreateMutableCopy(v43, v45 + v44, *(a1 + 176));
      *(a1 + 192) = v46;
      v47 = *(a2 + 88);
      v219.length = CFArrayGetCount(v47);
      v219.location = 0;
      CFArrayAppendArray(v46, v47, v219);
      goto LABEL_82;
    }

    v48 = *(a1 + 176);
    goto LABEL_75;
  }

  if (v42)
  {
    v48 = *(a1 + 184);
LABEL_75:
    *(a1 + 192) = CFRetain(v48);
    goto LABEL_82;
  }

  *(a1 + 192) = 0;
LABEL_82:
  v211 = 0;
  v57 = *(a2 + 320);
  v58 = *(a1 + 360);
  v59 = queryFromCFString(*(a1 + 8));
  *(a1 + 64) = v59;
  if (!v59)
  {
    v49 = *__error();
    v61 = _SILogForLogForCategory(1);
    v62 = *(v5 + 2768) < 3;
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_164;
    }

    v63 = *(a1 + 8);
    LODWORD(v215[0]) = 138412290;
    *(v215 + 4) = v63;
    v53 = "*warn* queryFromCFString failed for %@";
    v54 = v61;
    goto LABEL_171;
  }

  if (v211 == 35)
  {
    if ((v207 & 0x800) != 0)
    {
      v60 = 6;
    }

    else
    {
      v60 = 5;
    }

    goto LABEL_91;
  }

  if (v211 != 64)
  {
    v125 = *(a2 + 40);
    if (v125)
    {
      v126 = CFGetTypeID(v125);
      if (v126 != CFStringGetTypeID())
      {
        v198 = __si_assert_copy_extra_661(-1);
        v199 = v198;
        v200 = "";
        if (v198)
        {
          v200 = v198;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 4990, "CFGetTypeID(parameters->completionQuery) == CFStringGetTypeID()", v200);
        free(v199);
        if (__valid_fs(-1))
        {
          v201 = 2989;
        }

        else
        {
          v201 = 3072;
        }

        *v201 = -559038737;
        abort();
      }

      *(a1 + 152) = 3;
      *(a1 + 48) = CFRetain(*(a2 + 40));
      *(a1 + 168) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v127 = *(a2 + 72);
      if (v127)
      {
        SISetCompletionRankingWeights(v127);
      }

      v64 = *(a2 + 144);
      if (v64 && v64 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v64 = *(a2 + 144);
      if (v64 && v64 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v160 = *(a2 + 136);
        if (!v160 || v160 >= v64)
        {
          if ((v207 & 0x800) != 0)
          {
            v163 = 1;
          }

          else
          {
            v163 = 2;
          }

          *(a1 + 152) = v163;
          goto LABEL_92;
        }

        *(a1 + 152) = 0;
        *(a1 + 160) = v160;
LABEL_193:
        *(a1 + 216) = v64;
        goto LABEL_93;
      }

      *(a1 + 152) = 0;
    }

    v146 = *(a2 + 136);
    if (!v146)
    {
      goto LABEL_93;
    }

    *(a1 + 160) = v146;
    v64 = -1;
    goto LABEL_193;
  }

  v60 = 4;
LABEL_91:
  *(a1 + 152) = v60;
  v64 = *(a2 + 144);
LABEL_92:
  *(a1 + 160) = v64;
LABEL_93:
  v65 = *(a2 + 152);
  if (v65)
  {
    v66 = CFArrayGetCount(v65);
    *(a1 + 248) = malloc_type_calloc(v66, 8uLL, 0x2004093837F09uLL);
    if (v66 >= 1)
    {
      v67 = 0;
      while (1)
      {
        LOBYTE(v209) = 0;
        v68 = CFArrayGetValueAtIndex(*(a2 + 152), v67);
        v69 = *(a2 + 320);
        v70 = *(a1 + 360);
        v71 = queryFromCFString(v68);
        if (!v71)
        {
          break;
        }

        v72 = *(a1 + 248);
        v73 = *(a1 + 256);
        *(a1 + 256) = v73 + 1;
        *(v72 + 8 * v73) = v71;
        if (v66 == ++v67)
        {
          goto LABEL_98;
        }
      }

      v49 = *__error();
      v131 = _SILogForLogForCategory(1);
      v132 = *(v5 + 2768) < 3;
      if (os_log_type_enabled(v131, v132))
      {
        LODWORD(v215[0]) = 138412290;
        *(v215 + 4) = v68;
        v53 = "*warn* grouping queryFromCFString failed for %@";
        v54 = v131;
        v55 = v132;
LABEL_172:
        v56 = 12;
LABEL_173:
        _os_log_impl(&dword_1C278D000, v54, v55, v53, v215, v56);
      }

LABEL_164:
      *__error() = v49;
      goto LABEL_199;
    }
  }

LABEL_98:
  v74 = *(a2 + 160);
  if (v74)
  {
    v208 = v40;
    v75 = CFArrayGetCount(v74);
    *(a1 + 264) = malloc_type_calloc(v75, 0x18uLL, 0x1080040468F112EuLL);
    if (v75 >= 1)
    {
      v77 = 0;
      v202[1] = &v215[2];
      *&v76 = 138412290;
      v203 = v76;
      v204 = v75;
      do
      {
        v210 = 0;
        v78 = CFArrayGetValueAtIndex(*(a2 + 160), v77);
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v78))
        {
          v80 = *(a2 + 320);
          v81 = *(a1 + 360);
          v82 = queryFromCFString(v78);
          v83 = v82;
          if (v82 && v210 == 36)
          {
            LOWORD(v82[1].length) |= 1u;
          }

          else
          {
            if (v82)
            {
              v100 = v210 == 0;
            }

            else
            {
              v100 = 0;
            }

            if (!v100)
            {
              if (v82)
              {
                v215[0] = MEMORY[0x1E69E9820];
                v215[1] = 0x40000000;
                v215[2] = __db_query_tree_apply_block_block_invoke;
                v215[3] = &unk_1E8198ED0;
                *&v216 = &__block_literal_global_174;
                db_query_tree_apply_block_with_meta(v82, v215, 0);
              }

              v101 = *__error();
              v102 = _SILogForLogForCategory(1);
              v103 = *(v5 + 2768) < 3;
              if (os_log_type_enabled(v102, v103))
              {
                LODWORD(v215[0]) = v203;
                *(v215 + 4) = v78;
                _os_log_impl(&dword_1C278D000, v102, v103, "*warn* Error creating ranking query for %@", v215, 0xCu);
              }

              *__error() = v101;
              v104 = *(a2 + 320);
              v105 = *(a1 + 360);
              v83 = queryFromCFString(@"false");
              v75 = v204;
              if (!v83)
              {
                goto LABEL_199;
              }
            }
          }

          decorateExpandingFunctions(v83, *a1, *(a1 + 656), *(a1 + 360));
          *(*(a1 + 264) + 24 * *(a1 + 288) + 8) = vdupq_n_s64(1uLL);
          v106 = malloc_type_malloc(0x18uLL, 0x1080040468F112EuLL);
          v107 = *(a1 + 288);
          *(*(a1 + 264) + 24 * v107) = v106;
          *v106 = v83;
          *(a1 + 288) = v107 + 1;
        }

        else
        {
          v84 = CFDictionaryGetTypeID();
          if (v84 == CFGetTypeID(v78))
          {
            v85 = CFDictionaryGetValue(v78, @"kCIMatchArray");
            v86 = CFDictionaryGetValue(v78, @"kCIBitCount");
            v209 = 0;
            CFNumberGetValue(v86, kCFNumberLongType, &v209);
            v87 = CFArrayGetCount(v85);
            v88 = v87;
            if (v87 > 64 || v209 >= 7)
            {
              v142 = *__error();
              v161 = _SILogForLogForCategory(1);
              v162 = *(v5 + 2768) < 3;
              if (!os_log_type_enabled(v161, v162))
              {
                goto LABEL_198;
              }

              LODWORD(v215[0]) = 134218240;
              *(v215 + 4) = v88;
              WORD2(v215[1]) = 2048;
              *(&v215[1] + 6) = v209;
              v145 = "*warn* rulecount %ld bitCount: %ld error";
              v147 = v161;
              v148 = v162;
              v149 = 22;
LABEL_197:
              _os_log_impl(&dword_1C278D000, v147, v148, v145, v215, v149);
LABEL_198:
              *__error() = v142;
LABEL_199:
              if (*(v5 + 2768) >= 5)
              {
                v191 = *__error();
                v192 = _SILogForLogForCategory(1);
                if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v215[0]) = 0;
                  _os_log_impl(&dword_1C278D000, v192, OS_LOG_TYPE_DEFAULT, "Failed creating query", v215, 2u);
                }

                v150 = 0;
                *__error() = v191;
              }

              else
              {
                v150 = 0;
              }

              goto LABEL_201;
            }

            v206 = v202;
            MEMORY[0x1EEE9AC00](v87);
            v90 = v202 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
            v205 = v89;
            bzero(v90, v89);
            if (v88 >= 1)
            {
              v91 = 0;
              while (1)
              {
                v92 = CFArrayGetValueAtIndex(v85, v91);
                v93 = *(a2 + 320);
                v94 = *(a1 + 360);
                v95 = queryFromCFString(v92);
                v96 = v95;
                if (!v95 || v210 != 0)
                {
                  break;
                }

                *&v90[8 * v91] = v95;
                decorateExpandingFunctions(v95, *a1, *(a1 + 656), *(a1 + 360));
                if (v88 == ++v91)
                {
                  goto LABEL_116;
                }
              }

              if (v91)
              {
                for (j = 0; j != v91; ++j)
                {
                  db_free_query_node(*&v90[8 * j]);
                }
              }

              if (v96)
              {
                v215[0] = MEMORY[0x1E69E9820];
                v215[1] = 0x40000000;
                v215[2] = __db_query_tree_apply_block_block_invoke;
                v215[3] = &unk_1E8198ED0;
                *&v216 = &__block_literal_global_174;
                db_query_tree_apply_block_with_meta(v96, v215, 0);
              }

              v49 = *__error();
              v129 = _SILogForLogForCategory(1);
              v5 = 0x1EBF46000uLL;
              v130 = dword_1EBF46AD0 < 3;
              if (os_log_type_enabled(v129, (dword_1EBF46AD0 < 3)))
              {
                LODWORD(v215[0]) = v203;
                *(v215 + 4) = v92;
                _os_log_impl(&dword_1C278D000, v129, v130, "*warn* lifting queryFromCFString failed for %@", v215, 0xCu);
              }

              goto LABEL_164;
            }

LABEL_116:
            v98 = *(a1 + 264) + 24 * *(a1 + 288);
            *(v98 + 8) = v88;
            *(v98 + 16) = v209;
            v99 = malloc_type_malloc(24 * v88, 0x1080040468F112EuLL);
            *(*(a1 + 264) + 24 * *(a1 + 288)) = v99;
            memcpy(v99, v90, v205);
            ++*(a1 + 288);
            v5 = 0x1EBF46000;
            v10 = MEMORY[0x1E695E480];
            v75 = v204;
          }
        }

        ++v77;
      }

      while (v77 != v75);
    }

    if (!*(a1 + 96) && (*(a1 + 672) & 1) == 0 && !*(a1 + 680) && !*(a1 + 688) && *(a1 + 288) == 1)
    {
      v108 = *(a1 + 264);
      if (*(v108 + 8) == 1)
      {
        if (db_node_has_ranking_weights(**v108))
        {
          si_query_set_weighted_rank_node(a1, ***(a1 + 264));
          clear_lifting_rules(a1);
        }
      }
    }
  }

  v109 = *(a2 + 168);
  if (v109)
  {
    LOBYTE(v209) = 0;
    v110 = *(a2 + 320);
    v111 = *(a1 + 360);
    v112 = queryFromCFString(v109);
    if (v112 && !v209)
    {
      *(a1 + 280) = v112;
      goto LABEL_140;
    }

    if (v112)
    {
      v215[0] = MEMORY[0x1E69E9820];
      v215[1] = 0x40000000;
      v215[2] = __db_query_tree_apply_block_block_invoke;
      v215[3] = &unk_1E8198ED0;
      *&v216 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v112, v215, 0);
    }

    v49 = *__error();
    v133 = _SILogForLogForCategory(1);
    v62 = *(v5 + 2768) < 3;
    if (!os_log_type_enabled(v133, v62))
    {
      goto LABEL_164;
    }

    v134 = *(a2 + 168);
    LODWORD(v215[0]) = 138412290;
    *(v215 + 4) = v134;
    v53 = "*warn* dboFilter queryFromCFString failed for %@";
    v54 = v133;
LABEL_171:
    v55 = v62;
    goto LABEL_172;
  }

LABEL_140:
  *(a1 + 200) = v207;
  if (*(a1 + 152) == 4)
  {
    v113 = *(a2 + 96);
    if (!v113 || !CFArrayGetCount(v113))
    {
      v142 = *__error();
      v143 = _SILogForLogForCategory(1);
      v144 = *(v5 + 2768) < 3;
      if (!os_log_type_enabled(v143, v144))
      {
        goto LABEL_198;
      }

      LOWORD(v215[0]) = 0;
      v145 = "*warn* no fields for CoalescingCollectingQuery";
LABEL_196:
      v147 = v143;
      v148 = v144;
      v149 = 2;
      goto LABEL_197;
    }
  }

  v114 = *(a1 + 64);
  v215[0] = MEMORY[0x1E69E9820];
  v215[1] = 0x40000000;
  v215[2] = __db_query_tree_apply_block_block_invoke;
  v215[3] = &unk_1E8198ED0;
  *&v216 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v114, v215, &__block_literal_global_25_15416);
  *(a1 + 72) = v115;
  v116 = (a1 + 72);
  if (*(a1 + 152) == 4)
  {
    v117 = *(a1 + 16);
    if (v117)
    {
      v118 = CFArrayGetCount(v117);
      if (v118)
      {
        v119 = v118;
        v120 = CFArrayGetValueAtIndex(*(a1 + 16), 0);
        NodeForAttribute = makeNodeForAttribute(v120);
        if (v119 >= 2)
        {
          for (k = 1; k != v119; ++k)
          {
            v123 = CFArrayGetValueAtIndex(*(a1 + 16), k);
            v124 = makeNodeForAttribute(v123);
            NodeForAttribute = makeORNode(NodeForAttribute, v124, 1);
          }
        }

        *v116 = makeAndNode(*v116, NodeForAttribute, 1, 1);
      }
    }
  }

  else if ((v207 & 0x800) != 0)
  {
    if (initQuery_once[0] != -1)
    {
      dispatch_once(initQuery_once, &__block_literal_global_476);
    }

    v135 = *v116;
    v215[0] = MEMORY[0x1E69E9820];
    v215[1] = 0x40000000;
    v215[2] = __db_query_tree_apply_block_block_invoke;
    v215[3] = &unk_1E8198ED0;
    *&v216 = &__block_literal_global_479;
    db_query_tree_apply_block_with_meta(v135, v215, &__block_literal_global_485);
    if (v136)
    {
      v207 &= ~0x800uLL;
      v137 = *__error();
      v138 = _SILogForLogForCategory(1);
      v139 = 2 * (*(v5 + 2768) < 4);
      if (os_log_type_enabled(v138, v139))
      {
        LOWORD(v215[0]) = 0;
        _os_log_impl(&dword_1C278D000, v138, v139, "Query is limited to one group; turn off server side grouping", v215, 2u);
      }

      *__error() = v137;
      *(a1 + 200) = v207;
    }
  }

  decorateExpandingFunctions(*(a1 + 72), *a1, *(a1 + 656), *(a1 + 360));
  db_optimize_query_tree((a1 + 72));
  v140 = *(a1 + 72);
  if (!v140 || (v141 = *(v140 + 16)) != 0 && *(v141 + 24) == 9 || *(v140 + 48) == 16)
  {
    v142 = *__error();
    v143 = _SILogForLogForCategory(1);
    v144 = *(v5 + 2768) < 3;
    if (!os_log_type_enabled(v143, v144))
    {
      goto LABEL_198;
    }

    LOWORD(v215[0]) = 0;
    v145 = "*warn* no or false _completeQuery";
    goto LABEL_196;
  }

  *(a1 + 300) = 0xBB83F000000;
  *(a1 + 308) = 0xBB83F800000;
  *(a1 + 316) = 0xBB83F800000;
  v153 = v214;
  *(a1 + 324) = v213;
  *(a1 + 340) = v153;
  *(a1 + 357) = (v207 & 0x20000000) != 0;
  v154 = *(a1 + 16);
  if (v154)
  {
    v218.length = CFArrayGetCount(*(a1 + 16));
    v218.location = 0;
    if (CFArrayContainsValue(v154, v218, @"_kMDItemSDBInfo"))
    {
      *(a1 + 312) = 100;
      *(a1 + 320) = 100;
      *(a1 + 304) = 100;
    }
  }

  *(a1 + 680) = 0u;
  if (*(a2 + 273) == 1)
  {
    v155 = *(a2 + 320);
    v156 = *(a1 + 360);
    v157 = queryFromCFString(*(a1 + 8));
    *(a1 + 96) = v157;
    if (v157)
    {
      decorateExpandingFunctions(v157, *a1, *(a1 + 656), *(a1 + 360));
      db_optimize_query_tree((a1 + 96));
      *(a1 + 672) = 1;
      v158 = *(a2 + 304);
      if (v158)
      {
        v159 = CFArrayCreateCopy(*v10, v158);
      }

      else
      {
        v159 = 0;
      }

      *(a1 + 704) = v159;
      v164 = *(a2 + 312);
      if (v164)
      {
        v165 = CFDictionaryCreateCopy(*v10, v164);
      }

      else
      {
        v165 = 0;
      }

      *(a1 + 712) = v165;
      v166 = *(a2 + 320);
      if (v166)
      {
        v167 = CFDictionaryCreateCopy(*v10, v166);
      }

      else
      {
        v167 = 0;
      }

      *(a1 + 720) = v167;
      v168 = *(a2 + 328);
      if (v168)
      {
        v169 = CFAttributedStringCreateCopy(*v10, v168);
      }

      else
      {
        v169 = 0;
      }

      *(a1 + 744) = v169;
      *(a1 + 761) = *(a2 + 352);
    }

    v170 = *(a2 + 280);
    if (v170)
    {
      *(a1 + 680) = CFArrayCreateCopy(*v10, v170);
    }

    v171 = *(a2 + 288);
    if (v171)
    {
      *(a1 + 688) = CFArrayCreateCopy(*v10, v171);
    }
  }

  *(a1 + 762) = *(a2 + 353);
  v172 = *(a2 + 200);
  if (v172)
  {
    v173 = CFArrayGetCount(v172);
    if (v173 >= 1)
    {
      v174 = v173;
      v175 = 0;
      do
      {
        v176 = CFArrayGetValueAtIndex(*(a2 + 200), v175);
        if (!SIQueryAddResultFilter(a1, v176))
        {
          goto LABEL_199;
        }
      }

      while (v174 != ++v175);
    }
  }

  v177 = *(a2 + 16);
  if (v177)
  {
    SIQueryAddResultGenerator(a1, v177);
  }

  v178 = *(a2 + 24);
  if (v178)
  {
    SIQueryAddResultGenerator(a1, v178);
  }

  *(a1 + 324) = vmovl_s16(*(a2 + 208));
  *(a1 + 340) = vmovl_s16(*(a2 + 216));
  *(a1 + 624) = *(a2 + 240);
  v179 = *(a2 + 256);
  *(a1 + 648) = *(a2 + 264);
  *(a1 + 640) = v179;
  v180 = *(a1 + 656);
  v181 = *(a1 + 8);
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    os_unfair_lock_lock(&analytics_query_lock);
    if (!analytics_query_client_dict)
    {
      analytics_query_client_dict = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (!analytics_query_string_dict)
    {
      analytics_query_string_dict = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v182 = shortened_client_key(v180);
    v183 = CFDictionaryGetValue(analytics_query_client_dict, v182);
    LODWORD(v215[0]) = 0;
    if (v183)
    {
      CFNumberGetValue(v183, kCFNumberIntType, v215);
      v184 = LODWORD(v215[0]) + 1;
    }

    else
    {
      v184 = 1;
    }

    LODWORD(v215[0]) = v184;
    v185 = *v10;
    v186 = CFNumberCreate(*v10, kCFNumberIntType, v215);
    CFDictionarySetValue(analytics_query_client_dict, v182, v186);
    CFRelease(v186);
    CFRelease(v182);
    if (v181)
    {
      v187 = v181;
    }

    else
    {
      v187 = @"<null>";
    }

    v188 = CFDictionaryGetValue(analytics_query_string_dict, v187);
    LODWORD(v215[0]) = 0;
    if (v188)
    {
      CFNumberGetValue(v188, kCFNumberIntType, v215);
      v189 = LODWORD(v215[0]) + 1;
    }

    else
    {
      v189 = 1;
    }

    LODWORD(v215[0]) = v189;
    v190 = CFNumberCreate(v185, kCFNumberIntType, v215);
    CFDictionarySetValue(analytics_query_string_dict, v187, v190);
    CFRelease(v190);
    os_unfair_lock_unlock(&analytics_query_lock);
  }

  v150 = 1;
LABEL_201:
  popSkipCrashState();
  v151 = *MEMORY[0x1E69E9840];
  return v150;
}

unint64_t pushSkipCrashState()
{
  v0 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v0 = __THREAD_SLOT_KEY;
  }

  result = pthread_getspecific(v0);
  if (result && result < 0x801 || (makeThreadId(), (result = pthread_getspecific(__THREAD_SLOT_KEY)) != 0))
  {
    if (result <= 0x800)
    {
      ++LODWORD(threadData[9 * result - 6]);
    }
  }

  return result;
}

uint64_t SIQueryCreateWithParameters(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (query_zone_init_onceToken == -1)
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&query_zone_init_onceToken, &__block_literal_global_5335);
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  if (*a1 == 1)
  {
    v2 = malloc_type_calloc(1uLL, 0x300uLL, 0x10F00400B877FCEuLL);
    v3 = v2;
    if (v2)
    {
      if (initQuery(v2, a1))
      {
        atomic_store(1u, (v3 + 584));
        goto LABEL_12;
      }

      si_query_free(v3);
LABEL_11:
      v3 = 0;
    }
  }

  else
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(1);
    v6 = dword_1EBF46AD0 < 3;
    if (os_log_type_enabled(v5, (dword_1EBF46AD0 < 3)))
    {
      v7 = *a1;
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&dword_1C278D000, v5, v6, "*warn* Invalid query parameter version %d", v10, 8u);
    }

    v3 = 0;
    *__error() = v4;
  }

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t isEntitledForAttribute(int a1, void *key)
{
  v13 = *MEMORY[0x1E69E9840];
  if (isEntitledForAttribute_onceToken != -1)
  {
    dispatch_once(&isEntitledForAttribute_onceToken, &__block_literal_global_646);
  }

  Value = CFDictionaryGetValue(isEntitledForAttribute_attributeEntitlementMapping, key);
  v5 = (Value & a1) != 0 || Value == 0;
  v6 = v5;
  if (!v5 && ++isEntitledForAttribute__COUNT_ == 997)
  {
    isEntitledForAttribute__COUNT_ = 0;
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = key;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "##### entitlements failure request for %s", &v11, 0xCu);
    }

    *__error() = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

const __CFString *queryFromCFString(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (!result)
  {
    goto LABEL_27;
  }

  v7 = v5;
  v8 = v4;
  v9 = v6;
  v10 = v3;
  v11 = v2;
  v12 = result;
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v12))
  {
    goto LABEL_10;
  }

  bzero(v33, 0x1000uLL);
  v14 = fasterUTF8String(v12, &v30, v33, 4096, &v29);
  if (v14)
  {
    v15 = v14;
    v16 = *v14;
    if ((v16 - 35) > 0x1D || ((1 << (v16 - 35)) & 0x20000003) == 0)
    {
      *v10 = 0;
    }

    else
    {
      *v10 = v16;
      ++v14;
    }

    query_node_with_ann = db_make_query_node_with_ann(v14, v11);
    if (query_node_with_ann && v7)
    {
      tree = db_sanitize_query_tree(&query_node_with_ann, 1, v8, v9);
      v19 = tree;
      if (tree && dword_1EBF46AD0 >= 4)
      {
        cStr = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
        if (_db_render_query_tree(&query_node_with_ann))
        {
          v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
          if (v20)
          {
            v21 = v20;
            v22 = *__error();
            v23 = _SILogForLogForCategory(1);
            v24 = 2 * (dword_1EBF46AD0 < 4);
            if (os_log_type_enabled(v23, v24))
            {
              buf = 138412290;
              v35 = v21;
              _os_log_impl(&dword_1C278D000, v23, v24, "Sanitized to %@", &buf, 0xCu);
            }

            *__error() = v22;
            CFRelease(v21);
          }
        }

        free(cStr);
      }

      if (!v19)
      {
        db_free_query_node(query_node_with_ann);
        query_node_with_ann = 0;
      }
    }

    if (v29 == 1)
    {
      free(v15);
    }

    result = query_node_with_ann;
    goto LABEL_27;
  }

  if (dword_1EBF46AD0 < 5)
  {
LABEL_10:
    result = 0;
    goto LABEL_27;
  }

  v26 = *__error();
  v27 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Couldn't make query string", &buf, 2u);
  }

  v28 = __error();
  result = 0;
  *v28 = v26;
LABEL_27:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void *db_make_query_node_with_ann(char *a1, const __CFDictionary *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    result = 0;
    goto LABEL_26;
  }

  v32 = 0;
  v33 = 0;
  v4 = strlen(a1);
  v5 = check_and_decompose_string(a1, v4 + 1, &v33, &v32);
  if (!v5)
  {
    v11 = v33;
    v30 = 3;
    valuePtr = 3;
    v29 = 0;
    if (a2 && CFDictionaryContainsKey(a2, @"vectors"))
    {
      CFDictionaryGetValue(a2, @"vectors");
      Value = CFDictionaryGetValue(a2, @"vec_data_format");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      v13 = CFDictionaryGetValue(a2, @"vec_dimensions");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberIntType, &v30);
      }

      v14 = CFDictionaryGetValue(a2, @"vec_version");
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberSInt32Type, &v29);
      }
    }

    v28 = 0;
    v27 = v11;
    v15 = v32;
    result = or_expr(&v27, 1, &v28);
    if (result)
    {
      v16 = (v27 - v11);
      if (v27 - v11 != v15 - 1)
      {
        v17 = result;
        v18 = *__error();
        v19 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = "db_make_query_node_with_ann";
          *&buf[12] = 1024;
          *&buf[14] = 6238;
          *&buf[18] = 2048;
          *&buf[20] = v16;
          *&buf[28] = 2048;
          *&buf[30] = v15;
          *&buf[38] = 2080;
          v40 = v11;
          _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: query used %ld of %ld - %s", buf, 0x30u);
        }

        *__error() = v18;
        result = v17;
      }

      v35 = 0;
      v36 = &v35;
      v37 = 0x2000000000;
      v38 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = __db_count_query_tree_block_invoke;
      v34[3] = &unk_1E8199040;
      v34[4] = &v35;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      *&buf[32] = v34;
      v20 = result;
      db_query_tree_apply_block_with_meta(result, buf, 0);
      v21 = v36[3];
      _Block_object_dispose(&v35, 8);
      if (v21 < 0x801)
      {
        result = v20;
        if (v11 == a1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        tree = db_count_query_tree(v20);
        *buf = 136316162;
        *&buf[4] = "db_make_query_node_with_ann";
        *&buf[12] = 1024;
        *&buf[14] = 6249;
        *&buf[18] = 1024;
        *&buf[20] = tree;
        *&buf[24] = 1024;
        *&buf[26] = 2048;
        *&buf[30] = 2080;
        *&buf[32] = a1;
        _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: query node count %d exceeded %d - %s", buf, 0x28u);
      }

      *__error() = v22;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      *&buf[32] = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v20, buf, 0);
      result = 0;
    }

    if (v11 == a1)
    {
      goto LABEL_26;
    }

LABEL_25:
    v24 = result;
    free(v11);
    result = v24;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = *__error();
  v8 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "db_make_query_node_with_ann";
    *&buf[12] = 1024;
    *&buf[14] = 6128;
    *&buf[18] = 1024;
    *&buf[20] = v6;
    *&buf[24] = 2080;
    *&buf[26] = a1;
    _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: invalid query (%d) - %s", buf, 0x22u);
  }

  v9 = __error();
  result = 0;
  *v9 = v7;
LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t or_expr(unsigned __int8 **a1, int a2, _DWORD *a3)
{
  v6 = *a1;
  if (*a1)
  {
    while (1)
    {
      v7 = *v6;
      v8 = v7 > 0x20;
      v9 = (1 << v7) & 0x100001600;
      if (v8 || v9 == 0)
      {
        break;
      }

      ++v6;
    }
  }

  *a1 = v6;
  result = and_expr(a1, a2, a3);
  if (result)
  {
    v12 = result;
    for (i = *a1; ; ++i)
    {
      v14 = *i;
      v8 = v14 > 0x20;
      v15 = (1 << v14) & 0x100001600;
      if (v8 || v15 == 0)
      {
        break;
      }
    }

    *a1 = i;
    if (*i == 124)
    {
      v34 = 0;
      v17 = 0;
      while (1)
      {
        *a1 = i + 1;
        if (i[1] != 124)
        {
          if (v34)
          {
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v34, buf, 0);
          }

          if (v12)
          {
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            goto LABEL_53;
          }

          return 0;
        }

        for (j = i + 2; ; ++j)
        {
          v19 = *j;
          v8 = v19 > 0x20;
          v20 = (1 << v19) & 0x100001600;
          if (v8 || v20 == 0)
          {
            break;
          }
        }

        *a1 = j;
        v22 = and_expr(a1, a2, a3);
        v23 = v22;
        v24 = *a1;
        if (*a1)
        {
          while (1)
          {
            v25 = *v24;
            v8 = v25 > 0x20;
            v26 = (1 << v25) & 0x100001600;
            if (v8 || v26 == 0)
            {
              break;
            }

            ++v24;
          }
        }

        *a1 = v24;
        if (!v22)
        {
          break;
        }

        v28 = (*a3)++;
        if (v28 >= 2049)
        {
          if (v34)
          {
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v34, buf, 0);
          }

LABEL_61:
          if (!v12)
          {
LABEL_64:
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            v32 = v23;
            goto LABEL_65;
          }

LABEL_62:
          *buf = MEMORY[0x1E69E9820];
          v36 = 0x40000000;
          v37 = __db_query_tree_apply_block_block_invoke;
          v38 = &unk_1E8198ED0;
          v39 = &__block_literal_global_174;
          v33 = v12;
LABEL_63:
          db_query_tree_apply_block_with_meta(v33, buf, 0);
          goto LABEL_64;
        }

        if (v17)
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v29 = v17[1];
          v30 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v30)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            v17[1] = 0;
            v33 = v34;
            if (!v34)
            {
              goto LABEL_64;
            }

            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            goto LABEL_63;
          }

          v17[1] = v30;
          *v30 = v29;
          v17 = v30;
        }

        else
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v31 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v31)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              goto LABEL_61;
            }

            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            if (!v12)
            {
              goto LABEL_64;
            }

            goto LABEL_62;
          }

          v17 = v31;
          *v31 = v12;
          v34 = v31;
          v12 = 0;
        }

        *(v17 + 24) = 1;
        v17[1] = v23;
        i = *a1;
        if (**a1 != 124)
        {
          goto LABEL_42;
        }
      }

      if (v34)
      {
        *buf = MEMORY[0x1E69E9820];
        v36 = 0x40000000;
        v37 = __db_query_tree_apply_block_block_invoke;
        v38 = &unk_1E8198ED0;
        v39 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v34, buf, 0);
      }

      if (v12)
      {
        *buf = MEMORY[0x1E69E9820];
        v36 = 0x40000000;
        v37 = __db_query_tree_apply_block_block_invoke;
        v38 = &unk_1E8198ED0;
        v39 = &__block_literal_global_174;
LABEL_53:
        v32 = v12;
LABEL_65:
        db_query_tree_apply_block_with_meta(v32, buf, 0);
      }

      return 0;
    }

    else
    {
      v34 = 0;
LABEL_42:
      if (v34)
      {
        return v34;
      }

      else
      {
        return v12;
      }
    }
  }

  return result;
}

uint64_t factor(unsigned __int8 **a1, int a2, _DWORD *a3)
{
  v4 = *a1;
  v5 = *v4;
  if (v5 == 33)
  {
    ++v4;
    while (1)
    {
      v6 = *v4;
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100001600;
      if (v7 || v8 == 0)
      {
        break;
      }

      ++v4;
    }

    *a1 = v4;
    if (*v4 == 40)
    {
LABEL_18:
      for (i = v4 + 1; ; ++i)
      {
        v19 = *i;
        v7 = v19 > 0x20;
        v20 = (1 << v19) & 0x100001600;
        if (v7 || v20 == 0)
        {
          break;
        }
      }

      *a1 = i;
      if (a2 > 99)
      {
        return 0;
      }

      result = or_expr(a1, (a2 + 1));
      if (result)
      {
        if (v5 == 33)
        {
          v31 = MEMORY[0x1E69E9820];
          v32 = 0x40000000;
          v33 = __db_query_tree_apply_block_block_invoke;
          v34 = &unk_1E8198ED0;
          v35 = &__block_literal_global_15374;
          v22 = result;
          db_query_tree_apply_block_with_meta(result, &v31, 0);
          result = v22;
        }

        if (**a1 == 41)
        {
          ++*a1;
        }

        else
        {
          v31 = MEMORY[0x1E69E9820];
          v32 = 0x40000000;
          v33 = __db_query_tree_apply_block_block_invoke;
          v34 = &unk_1E8198ED0;
          v35 = &__block_literal_global_174;
          db_query_tree_apply_block_with_meta(result, &v31, 0);
          return 0;
        }
      }

      return result;
    }
  }

  else
  {
    v10 = *v4;
    if (v5 == 40)
    {
      goto LABEL_18;
    }
  }

  result = get_query_piece(v4);
  if (!result)
  {
    return result;
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = a3;
    while (1)
    {
      v15 = *v13;
      v7 = v15 > 0x20;
      v16 = (1 << v15) & 0x100001600;
      if (v7 || v16 == 0)
      {
        break;
      }

      ++v13;
    }
  }

  else
  {
    v14 = a3;
  }

  *a1 = v13;
  v23 = (*v14)++;
  if (v23 >= 2049)
  {
LABEL_43:
    free_qp(result);
    return 0;
  }

  v24 = result;
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal_15332;
  }

  result = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v31) = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v31, 2u);
    }

    result = v24;
    goto LABEL_43;
  }

  v25 = *(v24 + 24);
  if (v25 == 9)
  {
    v26 = result;
    free_qp(v24);
    result = v26;
    v27 = v5 == 33;
    v28 = 16;
    v29 = 32;
    goto LABEL_45;
  }

  if (v25 == 10)
  {
    v26 = result;
    free_qp(v24);
    result = v26;
    v27 = v5 == 33;
    v28 = 32;
    v29 = 16;
LABEL_45:
    if (v27)
    {
      v28 = v29;
    }

    *(v26 + 48) = v28;
    return result;
  }

  *(result + 48) = 4;
  *(result + 16) = v24;
  if (v5 == 33)
  {
    if ((v25 - 16) >= 0xFFFFFFF1)
    {
      v30 = dword_1C2C005C0[v25];
    }

    else
    {
      v30 = 0;
    }

    *(v24 + 24) = v30;
  }

  return result;
}

unsigned __int8 *parse_string_piece(unsigned __int8 *__src, _BYTE *a2, int a3, _DWORD *a4)
{
  v5 = a2;
  v7 = &a2[a3 - 1];
  while (1)
  {
    v8 = *__src;
    if (v8 > 0x27)
    {
      goto LABEL_53;
    }

    if (((1 << v8) & 0x100000600) == 0)
    {
      break;
    }

    ++__src;
  }

  if (((1 << v8) & 0x8400000000) != 0)
  {
    v9 = __src[1];
    v10 = __src + 1;
    if (__src[1])
    {
      v11 = a2;
      while (1)
      {
        if (v9 == v8)
        {
          ++v10;
          goto LABEL_77;
        }

        if (v9 == 92)
        {
          v12 = v10 + 1;
          v9 = v10[1];
          if (v9 != 34 && v9 != 39)
          {
            if (v9 == 92)
            {
              if (v11 < v7)
              {
                *v11++ = 92;
              }

              v13 = 5;
              ++v10;
            }

            else
            {
              v13 = 5u;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v12 = v10;
        }

        v13 = v9 >> 4;
        if ((v13 & 0xC) != 8)
        {
          v10 = v12;
LABEL_22:
          v14 = utf8_byte_length(unsigned char)::utf8_len_table[v13];
          v15 = &v11[v14];
          if (&v11[v14] >= v7)
          {
            v7 = v11;
          }

          else
          {
            memcpy(v11, v10, utf8_byte_length(unsigned char)::utf8_len_table[v13]);
            v11 = v15;
          }

          v10 += v14;
          goto LABEL_9;
        }

        v10 = v12 + 1;
LABEL_9:
        v9 = *v10;
        if (!*v10)
        {
          goto LABEL_77;
        }
      }
    }

    LODWORD(v11) = a2;
    *a2 = 0;
    if (!a4)
    {
      return v10;
    }

LABEL_78:
    *a4 = v11 - v5;
    return v10;
  }

  if (v8 != 36)
  {
LABEL_53:
    if (*__src)
    {
      v11 = a2;
      do
      {
        v10 = __src++;
        if (v8 == 92)
        {
          LODWORD(v8) = *__src;
          if (v8 == 39 || v8 == 34)
          {
            __src = v10 + 2;
          }

          else
          {
            v23 = v10[2];
            v22 = v10 + 2;
            if (v23 == 92)
            {
              if (v11 < v7)
              {
                *v11++ = 92;
                LODWORD(v8) = *__src;
              }

              __src = v22;
            }

            else
            {
              LODWORD(v8) = 92;
            }
          }
        }

        else if (v8 <= 0x3E && ((1 << v8) & 0x7000134300000600) != 0 || v8 == 124)
        {
          break;
        }

        if (v8 && v11 < v7)
        {
          *v11++ = v8;
        }

        LODWORD(v8) = *__src;
        v10 = __src;
      }

      while (*__src);
LABEL_77:
      *v11 = 0;
      if (!a4)
      {
        return v10;
      }
    }

    else
    {
      LODWORD(v11) = a2;
      v10 = __src;
      *a2 = 0;
      if (!a4)
      {
        return v10;
      }
    }

    goto LABEL_78;
  }

  v17 = __src[1];
  v16 = v17;
  v10 = __src + 1;
  *a2 = 36;
  v11 = a2 + 1;
  if (!v17)
  {
    goto LABEL_77;
  }

  v18 = 0;
  v19 = 1;
  while (1)
  {
    v20 = v10 + 1;
    if (v16 <= 0x3E)
    {
      if (((1 << v16) & 0x7000104300000600) != 0)
      {
        goto LABEL_32;
      }

      if (v16 == 40)
      {
        ++v18;
        v16 = 40;
        goto LABEL_33;
      }

      if (v16 == 41)
      {
        break;
      }
    }

    if (v16 != 92)
    {
      if (v16 == 124)
      {
LABEL_32:
        if (!v18)
        {
          goto LABEL_83;
        }
      }

LABEL_33:
      v10 = v20;
      goto LABEL_34;
    }

    v16 = *v20;
    if (v16 != 39 && v16 != 34)
    {
      v21 = v10[2];
      v10 += 2;
      if (v21 == 92)
      {
        if (v11 < v7)
        {
          *v11++ = 92;
          v16 = *v20;
        }

        goto LABEL_34;
      }

      v16 = 92;
      goto LABEL_33;
    }

    v10 += 2;
LABEL_34:
    if (v16 && v11 < v7)
    {
      *v11++ = v16;
    }

    v16 = *v10;
    if (!*v10)
    {
      goto LABEL_77;
    }
  }

  if (!v18)
  {
    goto LABEL_83;
  }

  if (--v18)
  {
    v16 = 41;
    goto LABEL_33;
  }

  if (v11 < v7)
  {
    *v11++ = 41;
  }

  v19 = 2;
LABEL_83:
  v10 = &v10[v19 - 1];
  *v11 = 0;
  if (a4)
  {
    goto LABEL_78;
  }

  return v10;
}

uint64_t get_query_piece(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v144 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal_15332;
  }

  v7 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    goto LABEL_283;
  }

  v8 = v7;
  v9 = *v6;
  if (*v6)
  {
    v10 = MEMORY[0x1E69E9830];
    do
    {
      if (v9 < 0)
      {
        if (!__maskrune(v9, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v10 + 4 * v9 + 60) & 0x4000) == 0)
      {
        break;
      }

      v11 = *++v6;
      v9 = v11;
    }

    while (v11);
  }

  v131 = 0;
  bzero(__src, 0x420uLL);
  __str = v6;
  if (!*v6)
  {
    goto LABEL_278;
  }

  __str = parse_string_piece(v6, __src, 1056, &v131);
  v12 = process_qp_field_name(v8, __src, v131);
  if (!v12)
  {
    goto LABEL_278;
  }

  v13 = v12;
  *v8 = v12;
  v14 = *__str;
  if (*__str)
  {
    v15 = __str + 1;
    v16 = MEMORY[0x1E69E9830];
    while (1)
    {
      if (v14 < 0)
      {
        if (!__maskrune(v14, 0x4000uLL))
        {
          goto LABEL_18;
        }
      }

      else if ((*(v16 + 4 * v14 + 60) & 0x4000) == 0)
      {
LABEL_18:
        v13 = *v8;
        break;
      }

      __str = v15;
      v17 = *v15++;
      v14 = v17;
      if (!v17)
      {
        goto LABEL_18;
      }
    }
  }

  if (!strcasecmp(v13, "true"))
  {
    *(v8 + 24) = 10;
    if (!v13)
    {
LABEL_39:
      *v8 = 0;
      *v5 = __str;
      goto LABEL_284;
    }

LABEL_38:
    free(v13);
    goto LABEL_39;
  }

  if (!strcasecmp(v13, "false"))
  {
    *(v8 + 24) = 9;
    if (!v13)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v18 = __str;
  v19 = *__str;
  if (v19 != 40)
  {
    goto LABEL_30;
  }

  if (_os_feature_enabled_impl() && !strcmp("aNN.data", *v8))
  {
    *(v8 + 24) = 15;
    v27 = __str + 1;
    v28 = MEMORY[0x1E69E9830];
    while (1)
    {
      __str = v27;
      v30 = *v27++;
      v29 = v30;
      if (!v30)
      {
        break;
      }

      if ((v29 & 0x80000000) != 0)
      {
        if (!__maskrune(v29, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v28 + 4 * v29 + 60) & 0x4000) == 0)
      {
        break;
      }
    }

    free(*v8);
    __str = parse_string_piece(__str, __src, 1056, &v131);
    *v8 = process_qp_field_name(v8, __src, v131);
    if (!parse_comma(__str, &__str))
    {
      goto LABEL_278;
    }

    *buf = 0;
    v31 = strtol(__str, buf, 0);
    v32 = *buf;
    if (!*buf)
    {
      goto LABEL_278;
    }

    if (*buf == __str)
    {
      goto LABEL_278;
    }

    __str = *buf;
    *buf = 0;
    if (!parse_comma(v32, &__str))
    {
      goto LABEL_278;
    }

    v33 = strtol(__str, buf, 0);
    v34 = *buf;
    if (!*buf || *buf == __str)
    {
      goto LABEL_278;
    }

    v35 = *(v8 + 60);
    v36 = v35 & 0xFF00000F | (16 * v33);
    v37 = v35 | 0xFFFFF0;
    v38 = v33 >> 20 ? v37 : v36;
    *(v8 + 60) = v38;
    __str = v34;
    ++*(v8 + 40);
    *buf = 0;
    if (!parse_comma(v34, &__str))
    {
      goto LABEL_278;
    }

    v39 = strtof(__str, buf);
    v40 = *buf;
    if (!*buf)
    {
      goto LABEL_278;
    }

    if (*buf == __str)
    {
      goto LABEL_278;
    }

    *(v8 + 64) = v39;
    ++*(v8 + 40);
    __str = v40;
    if (!parse_comma(v40, &__str))
    {
      goto LABEL_278;
    }

    *(v8 + 160) |= 0x10000u;
    if (((*(v3 + 16))(v3, v8, v31) & 1) == 0)
    {
      *(v8 + 60) &= 0xFF00000F;
    }

    *(v8 + 40) += 3;
    v41 = __str;
    v42 = *__str;
    if (v42 == 49)
    {
      v124 = __str + 1;
      goto LABEL_275;
    }

    if (v42 == 48)
    {
      v124 = __str + 1;
LABEL_273:
      __str = v124;
      v125 = *(v8 + 60) & 0xFEFFFFFF;
      goto LABEL_276;
    }

    if (v42 != 41)
    {
      goto LABEL_278;
    }

LABEL_76:
    *(v8 + 60) &= ~0x1000000u;
LABEL_277:
    v52 = v41 + 1;
    goto LABEL_135;
  }

  v20 = _os_feature_enabled_impl();
  v21 = *v8;
  if (v20 && !strcmp("aNN", *v8))
  {
    *(v8 + 24) = 15;
    v67 = __str + 1;
    v68 = MEMORY[0x1E69E9830];
    while (1)
    {
      __str = v67;
      v70 = *v67++;
      v69 = v70;
      if (!v70)
      {
        break;
      }

      if ((v69 & 0x80000000) != 0)
      {
        if (!__maskrune(v69, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v68 + 4 * v69 + 60) & 0x4000) == 0)
      {
        break;
      }
    }

    free(*v8);
    __str = parse_string_piece(__str, __src, 1056, &v131);
    *v8 = process_qp_field_name(v8, __src, v131);
    if (parse_comma(__str, &__str))
    {
      v71 = __str;
      v72 = *__str;
      if (v72 == 52)
      {
        v73 = 0;
        v71 = ++__str;
        *(v8 + 60) &= 0xFFFFFFF3;
        v74 = 1;
        v75 = 4;
      }

      else if (v72 == 50)
      {
        v74 = 0;
        v71 = ++__str;
        *(v8 + 60) = *(v8 + 60) & 0xFFFFFFF3 | 4;
        v73 = 1;
        v75 = 2;
      }

      else
      {
        v73 = 0;
        v74 = 0;
        if (v72 == 49)
        {
          v71 = ++__str;
          *(v8 + 60) = *(v8 + 60) & 0xFFFFFFF3 | 8;
          v75 = 1;
        }

        else
        {
          v75 = 0;
        }
      }

      ++*(v8 + 40);
      if (parse_comma(v71, &__str))
      {
        *buf = 0;
        v100 = strtol(__str, buf, 0);
        v101 = *buf;
        if (*buf)
        {
          if (*buf != __str)
          {
            switch(v100)
            {
              case 0x100u:
                v102 = *(v8 + 60) & 0xFFFFFFFC;
                break;
              case 0x200u:
                v102 = *(v8 + 60) & 0xFFFFFFFC | 1;
                break;
              case 0x300u:
                v102 = *(v8 + 60) & 0xFFFFFFFC | 2;
                break;
              default:
                goto LABEL_278;
            }

            *(v8 + 60) = v102;
            ++*(v8 + 40);
            __str = v101;
            if (parse_comma(v101, &__str))
            {
              v103 = __str;
              if (*__str == 118)
              {
                *(v8 + 60) = *(v8 + 60) & 0x1FFFFFF | (strtoul(++__str, buf, 0) << 25);
                __str = *buf;
                if (!parse_comma(*buf, &__str))
                {
                  goto LABEL_278;
                }

                v103 = __str;
              }

              else
              {
                *(v8 + 60) &= 0x1FFFFFFu;
              }

              if (*v103 == 105)
              {
                __str = v103 + 1;
                if (v103[1] == 120)
                {
                  v104 = v103 + 2;
                  v105 = -1;
                }

                else
                {
                  v106 = strtol(v103 + 1, buf, 0);
                  if (v106 > 2)
                  {
                    v105 = -1;
                  }

                  else
                  {
                    v105 = v106;
                  }

                  v104 = *buf;
                }

                *(v8 + 80) = v105;
                __str = v104;
                if ((parse_comma(v104, &__str) & 1) == 0)
                {
                  goto LABEL_278;
                }
              }

              else
              {
                *(v8 + 80) = 0;
              }

              v107 = malloc_type_malloc(v100 * v75, 0xC33CA856uLL);
              v108 = 0;
              *(v8 + 296) = v107;
              *(v8 + 160) |= 0x10000u;
              v109 = __str;
              do
              {
                *buf = 0;
                _S0 = strtof(v109, buf);
                if (v73)
                {
                  __asm { FCVT            H0, S0 }

                  *(*(v8 + 296) + 2 * v108) = _H0;
                }

                else
                {
                  if (!v74)
                  {
                    goto LABEL_278;
                  }

                  *(*(v8 + 296) + 4 * v108) = _S0;
                }

                if (!*buf)
                {
                  goto LABEL_278;
                }

                __str = *buf;
                v109 = parse_whitespace(*buf);
                __str = v109;
                ++v108;
              }

              while (v100 != v108);
              ++*(v8 + 40);
              if (!parse_comma(v109, &__str))
              {
                goto LABEL_278;
              }

              *buf = 0;
              v115 = strtol(__str, buf, 0);
              v116 = *buf;
              if (!*buf || *buf == __str)
              {
                goto LABEL_278;
              }

              v117 = *(v8 + 60);
              v118 = v117 & 0xFF00000F | (16 * v115);
              v119 = v117 | 0xFFFFF0;
              v120 = v115 >> 20 ? v119 : v118;
              *(v8 + 60) = v120;
              __str = v116;
              ++*(v8 + 40);
              if (!parse_comma(v116, &__str))
              {
                goto LABEL_278;
              }

              v121 = strtof(__str, buf);
              v122 = *buf;
              if (!*buf || *buf == __str)
              {
                goto LABEL_278;
              }

              *(v8 + 64) = v121;
              ++*(v8 + 40);
              __str = v122;
              v41 = parse_whitespace(v122);
              __str = v41;
              if (*v41 != 41)
              {
                if (!parse_comma(v41, &__str))
                {
                  goto LABEL_278;
                }

                v123 = *__str;
                if (v123 != 49)
                {
                  if (v123 != 48)
                  {
                    goto LABEL_278;
                  }

                  v124 = __str + 1;
                  goto LABEL_273;
                }

                v124 = __str + 1;
LABEL_275:
                __str = v124;
                v125 = *(v8 + 60) | 0x1000000;
LABEL_276:
                *(v8 + 60) = v125;
                v41 = parse_whitespace(v124);
                __str = v41;
                if (*v41 != 41)
                {
                  goto LABEL_278;
                }

                goto LABEL_277;
              }

              goto LABEL_76;
            }
          }
        }
      }
    }

LABEL_278:
    if (*v8)
    {
      free(*v8);
      *v8 = 0;
    }

    v126 = *(v8 + 72);
    if (v126)
    {
      free(v126);
    }

    free(v8);
LABEL_283:
    v8 = 0;
    goto LABEL_284;
  }

  if (!strcmp("InRange", v21))
  {
    v26 = 11;
  }

  else
  {
    if (strcmp("FieldMatch", v21))
    {
      v18 = __str;
      if (!*(v8 + 24))
      {
        v19 = *__str;
LABEL_30:
        if (v19 > 60)
        {
          if (v19 == 62)
          {
            v22 = (v18 + 1);
            __str = v18 + 1;
            if (v18[1] == 61)
            {
              v23 = 4;
              goto LABEL_52;
            }

            v25 = 8;
          }

          else
          {
            if (v19 != 61)
            {
              goto LABEL_278;
            }

            *(v8 + 24) = 1;
            v22 = (v18 + 1);
            __str = v18 + 1;
            v24 = v18[1];
            if (v24 != 61)
            {
              goto LABEL_150;
            }

            v22 = (v18 + 2);
            __str = v18 + 2;
            v24 = v18[2];
            if (v24 != 61)
            {
              goto LABEL_150;
            }

            v22 = (v18 + 3);
            __str = v18 + 3;
            v25 = 2;
          }
        }

        else
        {
          if (v19 == 33)
          {
            if (v18[1] != 61)
            {
              goto LABEL_278;
            }

            v23 = 5;
            goto LABEL_52;
          }

          if (v19 != 60)
          {
            goto LABEL_278;
          }

          v22 = (v18 + 1);
          __str = v18 + 1;
          if (v18[1] == 61)
          {
            v23 = 3;
LABEL_52:
            *(v8 + 24) = v23;
            v22 = (v18 + 2);
            __str = v18 + 2;
LABEL_149:
            v24 = *v22;
LABEL_150:
            if (!v24)
            {
              goto LABEL_278;
            }

            v76 = (v22 + 1);
            v77 = MEMORY[0x1E69E9830];
            while (1)
            {
              if ((v24 & 0x80) != 0)
              {
                if (!__maskrune(v24, 0x4000uLL))
                {
                  goto LABEL_156;
                }
              }

              else if ((*(v77 + 4 * v24 + 60) & 0x4000) == 0)
              {
LABEL_156:
                if (*__str)
                {
                  __str = parse_string_piece(__str, __src, 1056, &v131);
                  v79 = strlen(__src);
                  v80 = malloc_type_zone_malloc(queryZone, v79 + 1, 0xA4971684uLL);
                  if (!v80)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  memcpy(v80, __src, v79);
                  *(v80 + v79) = 0;
                  *(v8 + 72) = v80;
                  while (1)
                  {
                    v52 = __str;
                    switch(*__str)
                    {
                      case 'L':
                        v82 = ++__str;
                        if (v52[1] != 40)
                        {
                          continue;
                        }

                        *__s = 0;
                        v135 = __s;
                        v136 = 0x2000000000;
                        v137 = 0;
                        *buf = MEMORY[0x1E69E9820];
                        v139 = 0x40000000;
                        v140 = __get_wildcard_limit_block_invoke;
                        v141 = &unk_1E8199318;
                        v142 = __s;
                        v143 = v8;
                        __str = _process_proximities(v82, buf);
                        goto LABEL_217;
                      case 'W':
                        v87 = ++__str;
                        if (v52[1] != 40)
                        {
                          continue;
                        }

                        *__s = 0;
                        v135 = __s;
                        v136 = 0x2000000000;
                        v137 = 0;
                        *buf = MEMORY[0x1E69E9820];
                        v139 = 0x40000000;
                        v140 = __get_weights_block_invoke;
                        v141 = &unk_1E81992F0;
                        v142 = __s;
                        v143 = v8;
                        if (*v87 != 40)
                        {
                          goto LABEL_216;
                        }

                        v88 = v52 + 2;
                        break;
                      case 'a':
                        v83 = *(v8 + 32) | 0x6000000000;
                        goto LABEL_211;
                      case 'b':
                        v81 = *(v8 + 32) | 0x20000000;
                        goto LABEL_161;
                      case 'c':
                        v81 = *(v8 + 32) | 0x10;
                        goto LABEL_161;
                      case 'd':
                        v81 = *(v8 + 32) | 0x20;
                        goto LABEL_161;
                      case 'f':
                        *(v8 + 32) |= 0x800000uLL;
                        __str = v52 + 2;
                        v84 = 100 * __maskrune(v52[1], 0xFuLL);
                        v85 = __str++;
                        LOBYTE(v84) = v84 + 10 * __maskrune(*v85, 0xFuLL);
                        v86 = __str++;
                        *(v8 + 28) = (v84 + __maskrune(*v86, 0xFuLL)) & 0x7F;
                        continue;
                      case 'i':
                        v81 = *(v8 + 32) | 0x200000000;
                        goto LABEL_161;
                      case 'j':
                        v81 = *(v8 + 32) | 8;
                        goto LABEL_161;
                      case 'n':
                        v83 = *(v8 + 32) | 0x2000000000;
                        goto LABEL_211;
                      case 'o':
                        v83 = *(v8 + 32) | 0x4000000000;
LABEL_211:
                        *(v8 + 32) = v83;
                        __str = v52 + 1;
                        if (v52[1] == 40)
                        {
                          get_proximities(v8, v52 + 1, &__str);
                        }

                        continue;
                      case 'p':
                        v81 = *(v8 + 32) | 0x40000000;
                        goto LABEL_161;
                      case 'r':
                        v81 = *(v8 + 32) | 2;
                        goto LABEL_161;
                      case 's':
                        v81 = *(v8 + 32) | 0x1000000;
                        goto LABEL_161;
                      case 't':
                        v81 = *(v8 + 32) | 4;
                        goto LABEL_161;
                      case 'w':
                        v81 = *(v8 + 32) | 0x40;
                        goto LABEL_161;
                      case 'x':
                        v81 = *(v8 + 32) | 0x100000000;
                        goto LABEL_161;
                      case 'z':
                        v81 = *(v8 + 32) | 0x80000000;
LABEL_161:
                        *(v8 + 32) = v81;
                        __str = v52 + 1;
                        continue;
                      default:
                        goto LABEL_135;
                    }

                    do
                    {
                      while (1)
                      {
                        v87 = v88;
                        v90 = *v88;
                        if (!*v88)
                        {
                          goto LABEL_180;
                        }

                        if ((v90 & 0x80000000) == 0)
                        {
                          break;
                        }

                        v89 = __maskrune(v90, 0x4000uLL);
                        v88 = v87 + 1;
                        if (!v89)
                        {
                          goto LABEL_180;
                        }
                      }

                      ++v88;
                    }

                    while ((*(v77 + 4 * v90 + 60) & 0x4000) != 0);
LABEL_180:
                    *v132 = v87;
LABEL_181:
                    v91 = *v87;
                    if (!*v87)
                    {
                      goto LABEL_216;
                    }

                    if (v91 != 41)
                    {
                      break;
                    }

                    ++v87;
LABEL_216:
                    __str = v87;
LABEL_217:
                    _Block_object_dispose(__s, 8);
                  }

                  v92 = (v87 + 1);
                  do
                  {
                    if ((v91 & 0x80) != 0)
                    {
                      if (!__maskrune(v91, 0x4000uLL))
                      {
                        goto LABEL_188;
                      }
                    }

                    else if ((*(v77 + 4 * v91 + 60) & 0x4000) == 0)
                    {
LABEL_188:
                      v87 = *v132;
                      LOBYTE(v91) = **v132;
                      goto LABEL_190;
                    }

                    *v132 = v92;
                    v93 = *v92++;
                    LOBYTE(v91) = v93;
                  }

                  while (v93);
                  v87 = (v92 - 1);
LABEL_190:
                  if ((v91 - 45) < 2u || (v91 - 48) <= 9)
                  {
                    v95 = strtof(v87, v132);
                    v140(buf, v95);
                    v87 = *v132;
                    LOBYTE(v91) = **v132;
                  }

                  if (!v91)
                  {
LABEL_179:
                    ++v87;
                    goto LABEL_180;
                  }

                  v96 = v87 + 1;
                  while (1)
                  {
                    if ((v91 & 0x80) != 0)
                    {
                      if (!__maskrune(v91, 0x4000uLL))
                      {
                        goto LABEL_201;
                      }
                    }

                    else if ((*(v77 + 4 * v91 + 60) & 0x4000) == 0)
                    {
LABEL_201:
                      v87 = *v132;
                      if (**v132 != 41)
                      {
                        goto LABEL_179;
                      }

                      goto LABEL_181;
                    }

                    *v132 = v96;
                    v97 = *v96++;
                    LOBYTE(v91) = v97;
                    if (!v97)
                    {
                      v87 = v96;
                      goto LABEL_180;
                    }
                  }
                }

                goto LABEL_278;
              }

              __str = v76;
              v78 = *v76++;
              LOBYTE(v24) = v78;
              if (!v78)
              {
                goto LABEL_278;
              }
            }
          }

          v25 = 7;
        }

        *(v8 + 24) = v25;
        goto LABEL_149;
      }

      goto LABEL_79;
    }

    v26 = 13;
  }

  *(v8 + 24) = v26;
  v18 = __str;
LABEL_79:
  v43 = v18 + 1;
  v44 = MEMORY[0x1E69E9830];
  while (1)
  {
    __str = v43;
    v46 = *v43++;
    v45 = v46;
    if (!v46)
    {
      break;
    }

    if ((v45 & 0x80000000) != 0)
    {
      if (!__maskrune(v45, 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v44 + 4 * v45 + 60) & 0x4000) == 0)
    {
      break;
    }
  }

  free(*v8);
  __str = parse_string_piece(__str, __src, 1056, &v131);
  *v8 = process_qp_field_name(v8, __src, v131);
  v47 = *__str;
  if (!*__str)
  {
    goto LABEL_97;
  }

  v48 = __str + 1;
  while (v47 < 0)
  {
    if (!__maskrune(v47, 0x4000uLL))
    {
      goto LABEL_90;
    }

LABEL_87:
    v49 = *v48++;
    v47 = v49;
    if (!v49)
    {
      goto LABEL_97;
    }
  }

  if ((*(v44 + 4 * v47 + 60) & 0x4000) != 0)
  {
    goto LABEL_87;
  }

LABEL_90:
  if (*(v48 - 1) == 44)
  {
    while (1)
    {
      v50 = v48;
      v51 = *v48;
      if (!*v48)
      {
        break;
      }

      if ((v51 & 0x80000000) != 0)
      {
        ++v48;
        if (!__maskrune(v51, 0x4000uLL))
        {
          break;
        }
      }

      else
      {
        ++v48;
        if ((*(v44 + 4 * v51 + 60) & 0x4000) == 0)
        {
          break;
        }
      }
    }

    __str = v50;
  }

LABEL_97:
  v52 = __str;
  v53 = strlen(__str);
  v54 = *__str;
  if (!*__str)
  {
LABEL_129:
    *(v8 + 40) = 0;
    goto LABEL_130;
  }

  v129 = &__str[v53];
  while (2)
  {
    if (v54 < 0)
    {
      if (!__maskrune(v54, 0x4000uLL))
      {
        goto LABEL_103;
      }

LABEL_100:
      v55 = *++v52;
      v54 = v55;
      if (!v55)
      {
        goto LABEL_129;
      }

      continue;
    }

    break;
  }

  if ((*(v44 + 4 * v54 + 60) & 0x4000) != 0)
  {
    goto LABEL_100;
  }

LABEL_103:
  v56 = *v52;
  if (!*v52)
  {
    goto LABEL_129;
  }

  bzero(buf, 0x2000uLL);
  v57 = 0;
  v58 = 0;
  while (v56 != 41)
  {
    bzero(__s, 0x400uLL);
    v52 = parse_string_piece(v52, __s, 1024, 0);
    v59 = strlen(__s);
    v60 = malloc_type_zone_malloc(queryZone, v59 + 1, 0xA4971684uLL);
    if (!v60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v132 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v132, 2u);
    }

    memcpy(v60, __s, v59);
    *(v60 + v59) = 0;
    *&buf[8 * v57] = v60;
    v61 = *v52;
    if (!*v52)
    {
      goto LABEL_125;
    }

    v62 = v52 + 1;
    while (v61 < 0)
    {
      if (!__maskrune(v61, 0x4000uLL))
      {
        goto LABEL_115;
      }

LABEL_112:
      v63 = *++v52;
      v61 = v63;
      ++v62;
      if (!v63)
      {
        goto LABEL_125;
      }
    }

    if ((*(v44 + 4 * v61 + 60) & 0x4000) != 0)
    {
      goto LABEL_112;
    }

LABEL_115:
    _CF = *v52 != 44 || v52 >= v129;
    if (!_CF)
    {
      while (1)
      {
        v52 = v62;
        v65 = *v62;
        if (!*v62)
        {
          break;
        }

        if ((v65 & 0x80000000) != 0)
        {
          ++v62;
          if (!__maskrune(v65, 0x4000uLL))
          {
            break;
          }
        }

        else
        {
          ++v62;
          if ((*(v44 + 4 * v65 + 60) & 0x4000) == 0)
          {
            break;
          }
        }
      }
    }

LABEL_125:
    ++v57;
    v56 = *v52;
    if (*v52)
    {
      _CF = v58++ >= 0x3FF;
      if (!_CF)
      {
        continue;
      }
    }

    *(v8 + 40) = v57;
    goto LABEL_221;
  }

  ++v52;
  *(v8 + 40) = v57;
  if (!v57)
  {
    goto LABEL_130;
  }

LABEL_221:
  v98 = malloc_type_zone_malloc(queryZone, 8 * v57, 0xA4971684uLL);
  if (!v98)
  {
    v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    v98 = 0;
    if (v99)
    {
      *__s = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", __s, 2u);
      v98 = 0;
    }
  }

  *(v8 + 168) = v98;
  memcpy(v98, buf, 8 * v57);
LABEL_130:
  __str = v52;
  v66 = *(v8 + 24);
  if (v66 == 13)
  {
    if (*(v8 + 40) < 1)
    {
      goto LABEL_278;
    }
  }

  else if (v66 == 11 && *(v8 + 40) != 2)
  {
    goto LABEL_278;
  }

LABEL_135:
  *v5 = v52;
LABEL_284:
  v127 = *MEMORY[0x1E69E9840];
  return v8;
}

char *process_qp_field_name(uint64_t a1, char *__s1, int a3)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    goto LABEL_35;
  }

  v5 = &__s1[a3];
  if (*(v5 - 1) != 93)
  {
    goto LABEL_35;
  }

  if (a3 <= 3)
  {
    *(a1 + 32) |= 0x2000000uLL;
    *(a1 + 44) = 0;
    goto LABEL_35;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5 - 2;
  v10 = MEMORY[0x1E69E9830];
  while (1)
  {
    v12 = &__s1[v4];
    v13 = *v12;
    if (v13 == 36)
    {
      v11 = v8 ^ 1;
      v8 = 1;
      if (v4 < 3)
      {
        goto LABEL_29;
      }

      goto LABEL_6;
    }

    if (v13 == 91)
    {
      break;
    }

    v14 = v13;
    if (v13 < 0)
    {
      if (!__maskrune(v13, 0x400uLL))
      {
        v16 = __maskrune(v14, 0x4000uLL);
LABEL_25:
        v11 = v16 != 0;
        if (v4 < 3)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v15 = *(v10 + 4 * v13 + 60);
      if ((v15 & 0x400) == 0)
      {
        v16 = v15 & 0x4000;
        goto LABEL_25;
      }
    }

    if (v8)
    {
      *(a1 + 32) |= 0x2000000uLL;
      *(a1 + 44) = 0;
      if (v7)
      {
        v23 = atoi(v7);
        v7 = 0;
        *(a1 + 44) = v23;
      }

      return v7;
    }

    v8 = 0;
    if (v7)
    {
      v17 = v7 == v12 + 1;
    }

    else
    {
      v17 = 1;
    }

    v11 = v17;
    if (v17)
    {
      v7 = v9;
    }

    if (v4 < 3)
    {
      goto LABEL_29;
    }

LABEL_6:
    --v4;
    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  *v12 = 0;
  v11 = 1;
LABEL_29:
  v18 = *(a1 + 32);
  if ((v8 & 1) == 0 && v7)
  {
    *(a1 + 32) = v18 | 0x4000000;
    *(a1 + 44) = 0;
    goto LABEL_33;
  }

  *(a1 + 32) = v18 | 0x2000000;
  *(a1 + 44) = 0;
  if (v7)
  {
LABEL_33:
    *(a1 + 44) = atoi(v7);
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v19 = *__s1;
  if (v19 <= 0x6C)
  {
    if (!*__s1)
    {
      return 0;
    }

    if (v19 == 99)
    {
      if (strncmp(__s1, "created.", 8uLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 9, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x1DuLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserCreatedUserHandle");
        return v7;
      }

      if (strcmp(__s1 + 9, "user"))
      {
        goto LABEL_74;
      }

      v20 = "kMDItemUserCreatedDate";
    }

    else
    {
      if (v19 != 100 || strncmp(__s1, "downloaded.", 0xBuLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 12, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x20uLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserDownloadedUserHandle");
        return v7;
      }

      if (strcmp(__s1 + 12, "user"))
      {
        goto LABEL_74;
      }

      v20 = "kMDItemUserDownloadedDate";
    }

    goto LABEL_110;
  }

  if (*__s1 > 0x71u)
  {
    if (v19 == 114)
    {
      if (strncmp(__s1, "received.", 9uLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 10, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x1EuLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserSharedReceivedDate");
        return v7;
      }

      if (!strcmp(__s1 + 10, "sender"))
      {
        v20 = "kMDItemUserSharedReceivedSender";
      }

      else if (!strcmp(__s1 + 10, "receivers"))
      {
        v20 = "kMDItemUserSharedReceivedRecipient";
      }

      else if (!strcmp(__s1 + 10, "transport"))
      {
        v20 = "kMDItemUserSharedReceivedTransport";
      }

      else if (!strcmp(__s1 + 10, "senderHandle"))
      {
        v20 = "kMDItemUserSharedReceivedSenderHandle";
      }

      else
      {
        if (strcmp(__s1 + 10, "receiverHandles"))
        {
          goto LABEL_74;
        }

        v20 = "kMDItemUserSharedReceivedRecipientHandle";
      }
    }

    else
    {
      if (v19 != 115 || strncmp(__s1, "sent.", 5uLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 6, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x1AuLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserSharedSentDate");
        return v7;
      }

      if (!strcmp(__s1 + 6, "sender"))
      {
        v20 = "kMDItemUserSharedSentSender";
      }

      else if (!strcmp(__s1 + 6, "recipients"))
      {
        v20 = "kMDItemUserSharedSentRecipient";
      }

      else if (!strcmp(__s1 + 6, "transport"))
      {
        v20 = "kMDItemUserSharedSentTransport";
      }

      else if (!strcmp(__s1 + 6, "senderHandle"))
      {
        v20 = "kMDItemUserSharedSentSenderHandle";
      }

      else
      {
        if (strcmp(__s1 + 6, "recipientHandles"))
        {
          goto LABEL_74;
        }

        v20 = "kMDItemUserSharedSentRecipientHandle";
      }
    }

    goto LABEL_110;
  }

  if (v19 == 109)
  {
    if (strncmp(__s1, "modified.", 9uLL))
    {
      goto LABEL_74;
    }

    if (!strcmp(__s1 + 10, "date"))
    {
      v7 = malloc_type_zone_malloc(queryZone, 0x18uLL, 0xA4971684uLL);
      if (!v7)
      {
        _log_fault_for_malloc_failure();
      }

      strcpy(v7, "kMDItemUserModifiedDate");
      return v7;
    }

    if (strcmp(__s1 + 10, "user"))
    {
      goto LABEL_74;
    }

    v20 = "kMDItemUserModifiedUserHandle";
LABEL_110:

    return query_strdup(v20);
  }

  if (v19 != 112 || strncmp(__s1, "printed.", 8uLL))
  {
    goto LABEL_74;
  }

  if (!strcmp(__s1 + 9, "date"))
  {
    v7 = malloc_type_zone_malloc(queryZone, 0x17uLL, 0xA4971684uLL);
    if (!v7)
    {
      _log_fault_for_malloc_failure();
    }

    strcpy(v7, "kMDItemUserPrintedDate");
  }

  else
  {
    if (!strcmp(__s1 + 9, "user"))
    {
      v20 = "kMDItemUserPrintedUserHandle";
      goto LABEL_110;
    }

LABEL_74:
    v21 = strlen(__s1);
    v7 = malloc_type_zone_malloc(queryZone, v21 + 1, 0xA4971684uLL);
    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v24, 2u);
    }

    memcpy(v7, __s1, v21);
    v7[v21] = 0;
  }

  return v7;
}

double __SIUserCtxInit(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t SIUserCtxCreateWithLanguages(uint64_t a1, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!__kSIUserCtxTypeID)
  {
    __kSIUserCtxTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 164) = 0;
  *(Instance + 160) = 0;
  *(Instance + 56) = 0;
  *(Instance + 136) = 0;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  if (!a2)
  {
    v10 = 0;
    v11 = 112;
LABEL_15:
    *(Instance + v11) = v10;
    goto LABEL_16;
  }

  CFRetain(a2);
  *(Instance + 112) = a2;
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v15 = __si_assert_copy_extra_332();
    __message_assert_336(v15, v16, v17, v18, v19, v20, v21, v22, "SIUserCtx.c");
    free(v15);
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

  Count = CFArrayGetCount(a2);
  v6 = malloc_type_calloc(Count + 1, 8uLL, 0x10040436913F5uLL);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      bzero(buffer, 0x400uLL);
      if (CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
      {
        v6[v8++] = strdup(buffer);
      }

      ++v7;
    }

    while (Count != v7);
  }

  v6[v8] = 0;
  *(Instance + 120) = v6;
  if (CFArrayGetCount(a2))
  {
    v12 = CFArrayGetValueAtIndex(a2, 0);
    v10 = CFRetain(v12);
    v11 = 144;
    goto LABEL_15;
  }

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t and_expr(unsigned __int8 **a1, int a2, _DWORD *a3)
{
  result = factor(a1, a2, a3);
  if (result)
  {
    v7 = result;
    for (i = *a1; ; ++i)
    {
      v9 = *i;
      v10 = v9 > 0x20;
      v11 = (1 << v9) & 0x100001600;
      if (v10 || v11 == 0)
      {
        break;
      }
    }

    *a1 = i;
    if (*i == 38)
    {
      v30 = 0;
      v13 = 0;
      while (1)
      {
        *a1 = i + 1;
        if (i[1] != 38)
        {
          if (v30)
          {
            *buf = MEMORY[0x1E69E9820];
            v32 = 0x40000000;
            v33 = __db_query_tree_apply_block_block_invoke;
            v34 = &unk_1E8198ED0;
            v35 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v30, buf, 0);
          }

          if (v7)
          {
            *buf = MEMORY[0x1E69E9820];
            v32 = 0x40000000;
            v33 = __db_query_tree_apply_block_block_invoke;
            v34 = &unk_1E8198ED0;
            v35 = &__block_literal_global_174;
            goto LABEL_47;
          }

          return 0;
        }

        for (j = i + 2; ; ++j)
        {
          v15 = *j;
          v10 = v15 > 0x20;
          v16 = (1 << v15) & 0x100001600;
          if (v10 || v16 == 0)
          {
            break;
          }
        }

        *a1 = j;
        v18 = factor(a1, a2, a3);
        v19 = v18;
        v20 = *a1;
        if (*a1)
        {
          while (1)
          {
            v21 = *v20;
            v10 = v21 > 0x20;
            v22 = (1 << v21) & 0x100001600;
            if (v10 || v22 == 0)
            {
              break;
            }

            ++v20;
          }
        }

        *a1 = v20;
        if (!v18)
        {
          break;
        }

        v24 = (*a3)++;
        if (v24 >= 2049)
        {
          if (v30)
          {
            *buf = MEMORY[0x1E69E9820];
            v32 = 0x40000000;
            v33 = __db_query_tree_apply_block_block_invoke;
            v34 = &unk_1E8198ED0;
            v35 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v30, buf, 0);
          }

LABEL_55:
          if (!v7)
          {
LABEL_58:
            *buf = MEMORY[0x1E69E9820];
            v32 = 0x40000000;
            v33 = __db_query_tree_apply_block_block_invoke;
            v34 = &unk_1E8198ED0;
            v35 = &__block_literal_global_174;
            v28 = v19;
            goto LABEL_59;
          }

LABEL_56:
          *buf = MEMORY[0x1E69E9820];
          v32 = 0x40000000;
          v33 = __db_query_tree_apply_block_block_invoke;
          v34 = &unk_1E8198ED0;
          v35 = &__block_literal_global_174;
          v29 = v7;
LABEL_57:
          db_query_tree_apply_block_with_meta(v29, buf, 0);
          goto LABEL_58;
        }

        if (v13)
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v25 = v13[1];
          v26 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v26)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            v13[1] = 0;
            v29 = v30;
            if (!v30)
            {
              goto LABEL_58;
            }

            *buf = MEMORY[0x1E69E9820];
            v32 = 0x40000000;
            v33 = __db_query_tree_apply_block_block_invoke;
            v34 = &unk_1E8198ED0;
            v35 = &__block_literal_global_174;
            goto LABEL_57;
          }

          v13[1] = v26;
          *v26 = v25;
          v13 = v26;
        }

        else
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v27 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v27)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              goto LABEL_55;
            }

            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            if (!v7)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          v13 = v27;
          *v27 = v7;
          v30 = v27;
          v7 = 0;
        }

        *(v13 + 24) = 2;
        v13[1] = v19;
        i = *a1;
        if (**a1 != 38)
        {
          goto LABEL_36;
        }
      }

      if (v30)
      {
        *buf = MEMORY[0x1E69E9820];
        v32 = 0x40000000;
        v33 = __db_query_tree_apply_block_block_invoke;
        v34 = &unk_1E8198ED0;
        v35 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v30, buf, 0);
      }

      if (v7)
      {
        *buf = MEMORY[0x1E69E9820];
        v32 = 0x40000000;
        v33 = __db_query_tree_apply_block_block_invoke;
        v34 = &unk_1E8198ED0;
        v35 = &__block_literal_global_174;
LABEL_47:
        v28 = v7;
LABEL_59:
        db_query_tree_apply_block_with_meta(v28, buf, 0);
      }

      return 0;
    }

    else
    {
      v30 = 0;
LABEL_36:
      if (v30)
      {
        return v30;
      }

      else
      {
        return v7;
      }
    }
  }

  return result;
}

BOOL SIResultQueueSetWakeupTrigger(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  pthread_mutex_lock((*a1 + 8));
  v6 = a1[6];
  if (v6)
  {
    v7 = *a1;
  }

  else
  {
    v8 = *(a1 + 12);
    v7 = *a1;
    if (v8)
    {
      goto LABEL_5;
    }

    v10 = *(v7 + 120);
    if ((-v10 & *(v7 + 128)) != 0)
    {
      v13 = __si_assert_copy_extra_332();
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert(v13, "SISimpleQueue.c", 99, "queue->end == (queue->end&(queue->size-1))", v15);
      free(v14);
      if (__valid_fs(-1))
      {
        v16 = 2989;
      }

      else
      {
        v16 = 3072;
      }

      *v16 = -559038737;
      abort();
    }

    v11 = v10 - 1;
    v12 = *(v7 + 124);
    if ((v12 & ~v11) != 0)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert(v17, "SISimpleQueue.c", 100, "queue->start == (queue->start&(queue->size-1))", v19);
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

    if (*(*(v7 + 136) + 8 * v12) && !*(a1 + 21))
    {
LABEL_5:
      pthread_mutex_unlock((v7 + 8));
      a2(a3, v8);
      return v6 == 0;
    }

    a1[6] = a2;
    a1[7] = a3;
  }

  pthread_mutex_unlock((v7 + 8));
  return v6 == 0;
}

void *si_calendar_retain()
{
  v0 = OSAtomicDequeue(&s_si_calendar_head, 0);
  if (!v0)
  {
    v0 = malloc_type_malloc(0x28uLL, 0xE00401D00DCF7uLL);
    if (si_calendar_retain_once != -1)
    {
      dispatch_once(&si_calendar_retain_once, &__block_literal_global_5379);
    }

    v2 = *MEMORY[0x1E695E4A8];
    v3 = *MEMORY[0x1E695E678];
    v4 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
    v0[1] = v4;
    CFCalendarSetTimeZone(v4, si_calendar_retain_s_local_tz);
    v0[3] = si_calendar_retain_s_local_tz;
    v5 = CFCalendarCreateWithIdentifier(v2, v3);
    v0[2] = v5;
    CFCalendarSetTimeZone(v5, si_calendar_retain_s_gmt_tz);
    v0[4] = si_calendar_retain_s_gmt_tz;
  }

  return v0;
}

void *__db_clone_query_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal_15332;
  }

  result = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (result)
  {
    if (*result)
    {
      *result = -1;
    }

    if (result[1])
    {
      result[1] = -1;
    }

    if (!*(a2 + 16) || (v4 = result, piece = clone_query_piece(*(a2 + 16)), result = v4, (v4[2] = piece) != 0))
    {
      *(result + 24) = *(a2 + 48);
      *(result + 13) = *(a2 + 52);
      v6 = result[7] & 0xFE00 | *(a2 + 56);
      *(result + 28) = v6;
      *(result + 28) = v6 & 0xF9FF | *(a2 + 56) & 0x200;
      result[8] = 0;
      *(result + 18) = *(a2 + 72);
      return result;
    }

    free(v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v7, 2u);
  }

  return 0;
}

uint64_t query_priority(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1[25] & 0xFLL;
  if (v1 >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = a1[25] & 0xFLL;
  }

  if (v1 >= 3)
  {
    v3 = a1[20];
    if (v3 && v3 < 401 || (v4 = a1[1]) == 0)
    {
      v2 = 3;
    }

    else if (CFEqual(v4, @"_kMDItemBundleID=com.apple.searchd"))
    {
      v2 = v2;
    }

    else
    {
      v2 = 2;
    }
  }

  if (dword_1EBF46B00 >= 5)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = v2;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Running query at priority %d", &v12, 8u);
    }

    *__error() = v7;
    if (dword_1EBF46B00 >= 5)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = qos_class_self();
        v12 = 67109120;
        v13 = v11;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Current QOS %d", &v12, 8u);
      }

      *__error() = v9;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

void db_query_tree_apply_block_with_meta(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v5 = a1;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v57 = a2;
  ptr = 0;
  v13 = 0;
  v62 = 0;
  do
  {
    v63 = v6;
    v15 = *v5;
    v16 = v5[1];
    v17 = (*(v57 + 16))();
    if (a3)
    {
      v59 = v9;
      v18 = v7;
      if (v11 >= v8)
      {
        v19 = v17;
        v20 = 2 * v8;
        if (!v8)
        {
          v20 = 4;
        }

        v8 = v20;
        v21 = 8 * v20;
        v22 = (v13 ? malloc_type_zone_realloc(queryZone, v13, v21, 0xA1A7ADA0uLL) : malloc_type_zone_malloc(queryZone, v21, 0x566E289CuLL));
        v13 = v22;
        v17 = v19;
        if (!v13)
        {
LABEL_68:
          _log_fault_for_malloc_failure();
          __break(1u);
          return;
        }
      }

      *&v13[8 * v11] = v17;
      if (!v16)
      {
        ++v11;
        v7 = v18;
        v9 = v59;
LABEL_20:
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_36;
      }

      if (v10 >= v18)
      {
        v25 = 2 * v18;
        if (!v18)
        {
          v25 = 4;
        }

        v18 = v25;
        v26 = 8 * v25;
        if (ptr)
        {
          v27 = malloc_type_zone_realloc(queryZone, ptr, v26, 0xA1A7ADA0uLL);
        }

        else
        {
          v27 = malloc_type_zone_malloc(queryZone, v26, 0x566E289CuLL);
        }

        v24 = v27;
        if (!v27)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v24 = ptr;
      }

      ptr = v24;
      *(v24 + v10++) = v12;
      ++v11;
      v7 = v18;
      v9 = v59;
      if (v12 < v59)
      {
LABEL_13:
        v23 = v62;
        goto LABEL_35;
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_20;
      }

      if (v12 < v9)
      {
        goto LABEL_13;
      }
    }

    v60 = v13;
    v28 = v8;
    v29 = 2 * v9;
    if (!v9)
    {
      v29 = 4;
    }

    v30 = v29;
    v31 = 16 * v29;
    if (v62)
    {
      v32 = malloc_type_zone_realloc(queryZone, v62, v31, 0xA1A7ADA0uLL);
    }

    else
    {
      v32 = malloc_type_zone_malloc(queryZone, v31, 0x566E289CuLL);
    }

    v23 = v32;
    v9 = v30;
    v8 = v28;
    v13 = v60;
    if (!v32)
    {
      goto LABEL_68;
    }

LABEL_35:
    v62 = v23;
    v33 = &v23[16 * v12];
    v34 = v63;
    ++v12;
    *v33 = v16;
    *(v33 + 1) = v34;
    if (v15)
    {
LABEL_3:
      v14 = &v63;
      goto LABEL_4;
    }

LABEL_36:
    v61 = v9;
    v55 = v8;
    v56 = v7;
    if (v10)
    {
      v35 = v62;
      if (*(ptr + v10 - 1) == v12)
      {
        v36 = v13;
        v37 = &v13[8 * v11 - 24];
        v38 = v11;
        while (1)
        {
          v11 = v38 - 2;
          if (v38 <= 2)
          {
            goto LABEL_62;
          }

          *v37 = (*(a3 + 16))(a3, *v37, *(v37 + 1), *(v37 + 2));
          v39 = v10 - 1;
          if (v10 == 1)
          {
            break;
          }

          v40 = *(ptr + v10 - 2);
          v37 -= 16;
          --v10;
          v38 -= 2;
          if (v40 != v12)
          {
            goto LABEL_46;
          }
        }

        v11 = v38 - 3;
        if (!v12)
        {
LABEL_49:
          v43 = 1;
          v13 = v36;
          if (!v39)
          {
            goto LABEL_57;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v36 = v13;
        v39 = v10;
LABEL_46:
        if (!v12)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v35 = v62;
      v36 = v13;
      v39 = 0;
      if (!v12)
      {
        goto LABEL_49;
      }
    }

    --v12;
    v62 = v35;
    v41 = &v35[16 * v12];
    v42 = *v41;
    v14 = (v41 + 8);
    v15 = v42;
    v10 = v39;
    v13 = v36;
    v8 = v55;
    v7 = v56;
    v9 = v61;
LABEL_4:
    v6 = *v14;
    v5 = v15;
  }

  while (v15);
  v43 = v12 == 0;
  v39 = v10;
  v35 = v62;
  if (!v10)
  {
    goto LABEL_57;
  }

LABEL_52:
  v44 = &v13[8 * v11 - 24];
  do
  {
    v45 = v11 > 2;
    v11 -= 2;
    if (!v45)
    {
      goto LABEL_62;
    }

    --v39;
    *v44 = (*(a3 + 16))(a3, *v44, *(v44 + 1), *(v44 + 2));
    v44 -= 16;
  }

  while (v39);
  --v11;
LABEL_57:
  if (ptr && (v11 || !v43))
  {
LABEL_62:
    v46 = __si_assert_copy_extra_332();
    __message_assert_336(v46, v47, v48, v49, v50, v51, v52, v53, "core-query.c");
    free(v46);
    if (__valid_fs(-1))
    {
      v54 = 2989;
    }

    else
    {
      v54 = 3072;
    }

    *v54 = -559038737;
    abort();
  }

  free(v35);
  free(v13);
  free(ptr);
}

void *__db_sanitize_query_tree_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  return result;
}

uint64_t clone_query_piece(uint64_t a1)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal_15332;
  }

  v2 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = *(a1 + 40);
  *(v2 + 10) = v4;
  *(v2 + 1) = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v2 + 6) = v5;
  v2[28] = *(a1 + 28);
  *(v2 + 4) = *(a1 + 32);
  *(v2 + 44) = *(a1 + 44);
  *(v2 + 52) = *(a1 + 52);
  v6 = *(a1 + 60);
  *(v2 + 15) = v6;
  *(v2 + 40) = *(a1 + 160);
  v7 = (v2 + 168);
  v8 = (a1 + 168);
  v9 = *(a1 + 232);
  v10 = *(a1 + 248);
  v11 = *(a1 + 280);
  *(v2 + 264) = *(a1 + 264);
  v12 = *(a1 + 168);
  v13 = *(a1 + 184);
  v14 = *(a1 + 200);
  *(v2 + 216) = *(a1 + 216);
  *(v2 + 200) = v14;
  *(v2 + 184) = v13;
  *(v2 + 168) = v12;
  *(v2 + 248) = v10;
  *(v2 + 232) = v9;
  *(v2 + 34) = 0;
  *(v2 + 35) = v11;
  *(v2 + 36) = 0;
  *(v2 + 37) = 0;
  *(v2 + 16) = *(a1 + 64);
  if (v5 == 15)
  {
    v15 = v6 & 3;
    v16 = -1;
    if (v15 != 3)
    {
      v17 = (v6 >> 2) & 3;
      if (v17 != 3)
      {
        v16 = (vector_dimension_vec_sizes_15424[v15] * vector_size_elem_sizes_15423[v17]);
      }
    }

    v18 = malloc_type_malloc(v16, 0x5498730EuLL);
    *(v3 + 296) = v18;
    v19 = *(a1 + 296);
    if (!v19)
    {
      goto LABEL_73;
    }

    memcpy(v18, v19, v16);
    *(v3 + 80) = *(a1 + 80);
  }

  v20 = *(a1 + 96);
  if (v20 && *(a1 + 88))
  {
    v21 = malloc_type_zone_malloc(queryZone, 4 * v20, 0xA4971684uLL);
    if (!v21)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v3 + 88) = 0;
      goto LABEL_73;
    }

    *(v3 + 88) = v21;
    memcpy(v21, *(a1 + 88), 4 * v20);
    *(v3 + 96) = v20;
  }

  v22 = *(a1 + 32);
  if ((v22 & 0xC0000) != 0 && (v22 & 0x200) == 0 && v4)
  {
    v23 = malloc_type_zone_malloc(queryZone, 8 * v4, 0xA4971684uLL);
    if (v23)
    {
      *(v3 + 288) = v23;
      v24 = *(a1 + 288);
      if (v24)
      {
        memcpy(v23, v24, 8 * v4);
        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v3 + 288) = 0;
    }

    v44 = *__error();
    v45 = _SILogForLogForCategory(1);
    v46 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v45, v46, "clone_query_piece: ann data missing", buf, 2u);
    }

    *__error() = v44;
    goto LABEL_73;
  }

LABEL_20:
  size = v4;
  if (!*v8)
  {
    goto LABEL_30;
  }

  v25 = 8 * v4;
  v26 = malloc_type_zone_malloc(queryZone, 8 * v4, 0xA4971684uLL);
  if (!v26)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    *v7 = 0;
LABEL_73:
    free_qp(v3);
    return 0;
  }

  v27 = v26;
  *v7 = v26;
  if (v4 >= 1)
  {
    v28 = 0;
    v29 = MEMORY[0x1E69E9C10];
    do
    {
      v30 = *(*v8 + v28);
      v31 = strlen(v30);
      v32 = malloc_type_zone_malloc(queryZone, v31 + 1, 0xA4971684uLL);
      if (!v32 && os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, v29, OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      memcpy(v32, v30, v31);
      *(v32 + v31) = 0;
      *&v27[v28] = v32;
      v28 += 8;
    }

    while (v25 != v28);
  }

LABEL_30:
  v33 = *a1;
  if (*a1)
  {
    v34 = strlen(*a1);
    v35 = malloc_type_zone_malloc(queryZone, v34 + 1, 0xA4971684uLL);
    if (!v35 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    memcpy(v35, v33, v34);
    *(v35 + v34) = 0;
    *v3 = v35;
  }

  v36 = *(a1 + 72);
  if (v36)
  {
    v37 = strlen(*(a1 + 72));
    v38 = malloc_type_zone_malloc(queryZone, v37 + 1, 0xA4971684uLL);
    if (!v38 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    memcpy(v38, v36, v37);
    *(v38 + v37) = 0;
    *(v3 + 72) = v38;
  }

  if (*(a1 + 104))
  {
    if ((*(a1 + 24) - 13) > 1)
    {
      if ((*(a1 + 32) & 2) != 0)
      {
        v43 = icu_regex_copy();
      }

      else
      {
        v43 = icu_ctx_retain();
      }

      *(v3 + 104) = v43;
      return v3;
    }

    v39 = 8 * size;
    if (((size >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v39 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_15332;
    }

    v40 = malloc_type_zone_calloc(queryZone, 8uLL, size, 0x5BAF1CEAuLL);
    if (v40)
    {
      *(v3 + 104) = v40;
      if (size >= 1)
      {
        v41 = 0;
        do
        {
          if (*(*(a1 + 104) + v41))
          {
            if ((*(a1 + 32) & 2) != 0)
            {
              v42 = icu_regex_copy();
            }

            else
            {
              v42 = icu_ctx_retain();
            }

            *(*(v3 + 104) + v41) = v42;
          }

          v41 += 8;
        }

        while (v39 != v41);
      }

      return v3;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    *(v3 + 104) = 0;
    goto LABEL_73;
  }

  return v3;
}

void db_optimize_query_tree(void **a1)
{
  v2 = *a1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __db_query_tree_apply_block_block_invoke;
  v12 = &unk_1E8198ED0;
  v13 = &__block_literal_global_39_15504;
  db_query_tree_apply_block_with_meta(v2, &v9, &__block_literal_global_42_15505);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5 == 32 || v5 == 16)
    {
      v7 = *v3;
      if (*v4)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 0x40000000;
        v11 = __db_query_tree_apply_block_block_invoke;
        v12 = &unk_1E8198ED0;
        v13 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v7, &v9, 0);
        *v4 = 0;
      }

      v8 = v4[1];
      if (v8)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 0x40000000;
        v11 = __db_query_tree_apply_block_block_invoke;
        v12 = &unk_1E8198ED0;
        v13 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v8, &v9, 0);
        v4[1] = 0;
      }
    }
  }

  *a1 = v4;
}

uint64_t __decorateExpandingFunctions_block_invoke(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(v4 + 176);
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 48) != 4)
  {
    goto LABEL_65;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_65;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v6 + 72);
  if (v9)
  {
    v10 = *v6;
    if (!strcmp(*v6, "kMDItemFSName") && *v9 == 42 && !v9[1])
    {
      free(v10);
      v11 = strdup("kMDItemFSFileId");
      v6 = *(a2 + 16);
      *v6 = v11;
    }
  }

  v12 = *(v6 + 32);
  if ((v12 & 0x400) != 0 || (v13 = *v6) != 0 && (!strcmp(*v6, "kMDItemTextContent") || !strncmp(v13, "_kMDItemOCRContent", 0x12uLL)))
  {
    *(v6 + 32) = v12 | 0x480;
    *(v6 + 8) = _qpContentIndexMatch;
    v16 = *(v6 + 72);
    if (!v16)
    {
      v20 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v14 = *(v6 + 24);
    if (v14 > 6 || ((1 << v14) & 0x66) == 0)
    {
      v20 = 100;
      goto LABEL_34;
    }

    v16 = *(v6 + 72);
    if (!v16)
    {
      *(v6 + 48) = 100;
      goto LABEL_43;
    }
  }

  v17 = strlen(v16);
  v18 = *v16;
  if (v17 < 1)
  {
    if (v18 == 42)
    {
      goto LABEL_28;
    }

LABEL_32:
    v20 = -v17;
    goto LABEL_33;
  }

  v19 = v16[(v17 & 0x7FFFFFFF) - 1];
  if (v18 != 42)
  {
    if (v19 == 42)
    {
      v21 = 50;
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (v19 != 42)
  {
LABEL_28:
    v21 = 99;
LABEL_31:
    v20 = v21 - v17;
    goto LABEL_33;
  }

  v20 = 99;
LABEL_33:
  v14 = *(v6 + 24);
LABEL_34:
  *(v6 + 48) = v20;
  if (v14 == 11 && *(v6 + 168))
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    if (*(v6 + 40) >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(*(v6 + 168) + 8 * v22);
        if (v23 && *v23 == 36)
        {
          v24 = _expandFunctions((v23 + 1), &v44, 0x200uLL, v7, &__block_literal_global_4_5387, v8);
          v25 = *(a2 + 16);
          *(v25 + 32) |= v24;
          free(*(*(v25 + 168) + 8 * v22));
          *(*(*(a2 + 16) + 168) + 8 * v22) = strdup(&v44);
          v6 = *(a2 + 16);
        }

        ++v22;
      }

      while (v22 < *(v6 + 40));
    }

LABEL_57:
    if ((*(v6 + 32) & 0x80) != 0)
    {
      if (*(v6 + 168))
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        if (*(v6 + 40) >= 1)
        {
          v36 = 0;
          do
          {
            v37 = *(*(v6 + 168) + 8 * v36);
            if (v37 && *v37 == 36)
            {
              v38 = _expandFunctions((v37 + 1), &v44, 0x200uLL, v7, &__block_literal_global_4_5387, v8);
              v39 = *(a2 + 16);
              *(v39 + 32) |= v38;
              free(*(*(v39 + 168) + 8 * v36));
              *(*(*(a2 + 16) + 168) + 8 * v36) = strdup(&v44);
              v6 = *(a2 + 16);
            }

            ++v36;
          }

          while (v36 < *(v6 + 40));
        }
      }
    }

    goto LABEL_65;
  }

LABEL_43:
  v26 = *(v6 + 72);
  if (v26 && *v26 == 36)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = _expandFunctions((v26 + 1), &v44, 0x200uLL, v7, &__block_literal_global_4_5387, v8);
    v28 = *(a2 + 16);
    *(v28 + 32) |= v27;
    v29 = strlen(&v44);
    v30 = *(v28 + 72);
    if (v29 <= strlen(v30))
    {
      memcpy(v30, &v44, v29 + 1);
      v6 = *(a2 + 16);
    }

    else
    {
      free(v30);
      v31 = strdup(&v44);
      v6 = *(a2 + 16);
      *(v6 + 72) = v31;
    }

LABEL_56:
    if (!v6)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  v32 = isEntitledForAttribute(v5, *v6);
  v6 = *(a2 + 16);
  if (v32)
  {
    goto LABEL_56;
  }

  v33 = 0;
  v34 = *(a2 + 48);
  if (v34 == 4 && v6)
  {
    v33 = (*(v6 + 24) < 0xFu) & (0x5060u >> *(v6 + 24));
  }

  if (v33 == ((v34 >> 3) & 1))
  {
    v35 = 16;
  }

  else
  {
    v35 = 32;
  }

  *(a2 + 48) = v35;
  free_qp(v6);
  *(a2 + 16) = 0;
LABEL_65:
  if (*(a1 + 56) == 1)
  {
    v40 = *(a2 + 16);
    if (v40)
    {
      v41 = *v40;
      if (*v40)
      {
        if (!strcmp(*v40, "_kMDItemFileName"))
        {
          strcpy(v41, "kMDItemFilename");
        }
      }
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t __db_sanitize_query_tree_block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v232 = *MEMORY[0x1E69E9840];
  ++*(*(*(v1 + 40) + 8) + 24);
  if (*(v2 + 48) != 4)
  {
    goto LABEL_400;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_400;
  }

  v5 = v1;
  v6 = *(v4 + 24);
  if ((v6 - 11) >= 2)
  {
    if (v6 == 15)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 168))
  {
    if (*(v4 + 40) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v4 + 168) + 8 * v7);
        if (v8 && *v8 == 36)
        {
          v9 = v8 + 1;
          v10 = (*(*(v5 + 32) + 16))();
          v4 = *(v3 + 16);
          v11 = !v10 || v10 == v9;
          if (!v11)
          {
            v12 = v10;
            free(*(*(v4 + 168) + 8 * v7));
            v4 = *(v3 + 16);
            *(*(v4 + 168) + 8 * v7) = v12;
          }
        }

        ++v7;
      }

      while (v7 < *(v4 + 40));
    }

    goto LABEL_23;
  }

  v13 = *(v4 + 72);
  if (v13)
  {
    if (*v13 != 36)
    {
      v157 = *(v4 + 32);
      if ((v157 & 0x40) != 0)
      {
        v158 = *(v4 + 72);
        while (1)
        {
          v158 = strstr(v158, "**");
          if (!v158)
          {
            break;
          }

          if (v158 == v13)
          {
            goto LABEL_389;
          }

          v159 = 0;
          v160 = v158;
          while (1)
          {
            v161 = *--v160;
            if (v161 != 92)
            {
              break;
            }

            v159 ^= 1u;
            if (v160 == v13)
            {
              v159 = v13 - v158;
              break;
            }
          }

          if (v159)
          {
            ++v158;
          }

          else
          {
LABEL_389:
            v162 = (v158 + 1);
            do
            {
              v163 = *v162;
              *(v162++ - 1) = v163;
            }

            while (v163);
          }
        }

        v4 = *(v3 + 16);
        v157 = *(v4 + 32);
      }

      v170 = (v157 >> 3) & 1;
      v171 = (v157 & 0x1000004) != 0;
      goto LABEL_24;
    }

    v14 = v13 + 1;
    v15 = (*(*(v1 + 32) + 16))();
    v4 = *(v3 + 16);
    if (v15 && v15 != v14)
    {
      v169 = v15;
      free(*(v4 + 72));
      LODWORD(v170) = 0;
      v171 = 0;
      v4 = *(v3 + 16);
      *(v4 + 72) = v169;
      goto LABEL_24;
    }
  }

LABEL_23:
  LODWORD(v170) = 0;
  v171 = 0;
LABEL_24:
  if ((*(v4 + 32) & 0x80) != 0 && *(v4 + 168) && *(v4 + 40) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = *(*(v4 + 168) + 8 * v17);
      if (v18 && *v18 == 36)
      {
        v19 = v18 + 1;
        v20 = (*(*(v5 + 32) + 16))();
        v4 = *(v3 + 16);
        if (v20 && v20 != v19)
        {
          v22 = v20;
          free(*(*(v4 + 168) + 8 * v17));
          v4 = *(v3 + 16);
          *(*(v4 + 168) + 8 * v17) = v22;
        }
      }

      ++v17;
    }

    while (v17 < *(v4 + 40));
  }

  if (!v171)
  {
    if (*(v3 + 48) == 4 && (v26 = *v4) != 0 && *v26 == 42 && v26[1] == 42 && !v26[2])
    {
      *(*(*(v5 + 40) + 8) + 24) += 2;
      if ((*(v4 + 24) - 5) >= 2)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      query_node_expand_double_star_in_place(v3, v27);
      if (!v170)
      {
        goto LABEL_400;
      }
    }

    else
    {
LABEL_398:
      if (!v170)
      {
        goto LABEL_400;
      }
    }

LABEL_399:
    v227 = MEMORY[0x1E69E9820];
    v228 = 0x40000000;
    v229 = __db_query_tree_apply_block_block_invoke;
    v230 = &unk_1E8198ED0;
    v231 = &__block_literal_global_114;
    db_query_tree_apply_block_with_meta(v3, &v227, &__block_literal_global_123);
    v3 = v166;
    goto LABEL_400;
  }

  if (*(v3 + 48) != 4 || (v23 = *(v4 + 72)) == 0)
  {
    v172 = __si_assert_copy_extra_332();
    __message_assert_336(v172, v173, v174, v175, v176, v177, v178, v179, "core-query.c");
    free(v172);
    if (__valid_fs(-1))
    {
      v180 = 2989;
    }

    else
    {
      v180 = 3072;
    }

    *v180 = -559038737;
    abort();
  }

  if ((*(v4 + 24) - 5) < 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v186 = v24;
  v25 = *v4;
  v204 = *v4 && *v25 == 42 && v25[1] == 42 && v25[2] == 0;
  v194 = *v23 == 42 && *(v23 + 1) != 0;
  v190 = *(v5 + 48);
  v206 = *(*(v5 + 40) + 8);
  v28 = strlen(v23);
  v29 = v28 >= 2 && *(v23 + v28 - 1) == 42 && *(v23 + v28 - 2) != 92;
  v183 = v170;
  *(v4 + 72) = 0;
  v193 = *(v4 + 32);
  *(v4 + 32) = v193 & 0xFFFFFFFFFEFFFFFBLL;
  bzero(&v227, 0x2000uLL);
  bzero(v226, 0x2000uLL);
  bzero(v225, 0x2000uLL);
  bzero(v224, 0x800uLL);
  v182 = v23;
  v30 = (v23 + v194);
  v31 = &v30[strlen(v30) - v29];
  if (v30 >= v31)
  {
    v57 = 0;
    goto LABEL_393;
  }

  v192 = v29;
  v185 = v3;
  v32 = 0;
  v33 = 0;
  LODWORD(v34) = -1;
  v197 = v30;
  do
  {
    v36 = *v30;
    if ((v36 & 0x80000000) != 0)
    {
      v37 = v36 >> 4;
      v38 = utf8_byte_length(unsigned char)::utf8_len_table[v37];
      v39 = ~v37;
      v40 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v38] & v36;
      if ((v39 & 0xC) != 0)
      {
        v36 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v38];
      }

      else
      {
        if (v38 <= 2)
        {
          v38 = 2;
        }

        else
        {
          v38 = v38;
        }

        v41 = v38 - 1;
        v42 = (v30 + 1);
        do
        {
          v43 = *v42++;
          v36 = v43 & 0x3F | (v40 << 6);
          v40 = v36;
          --v41;
        }

        while (v41);
      }
    }

    if (!u_isUWhiteSpace(v36))
    {
      v44 = v30 - v197;
      v45 = v36 >> 8;
      v48 = v36 - 64000 < 0xFFFF3480 && v36 - 65456 < 0xFFFFFFB0 && v45 != 17;
      if (v32 & 1 | (v36 - 123 < 0xFFFFFFE6))
      {
        if (v45 < 0x11 || v48)
        {
          if ((v33 & 1) == 0)
          {
            v34 = v34 + 1;
            *(&v227 + v34) = v44;
            v226[v34] = 0;
            v225[v34] = 0;
            v224[v34] = 0;
            v33 = 1;
          }

          v49 = v224[v34];
          v224[v34] = v49 & 0xFC | 1;
          if ((v36 & 0xFFFFFF80) == 0xE00 && (v49 & 0x40) == 0)
          {
            v224[v34] = v49 & 0xBC | 0x41;
          }

          goto LABEL_107;
        }

        if ((v33 & 1) == 0 || (v54 = v34, v55 = v224[v34], (v55 & 3) != 0))
        {
          v55 = 0;
          v54 = v34 + 1;
          *(&v227 + v54) = v44;
          v226[v54] = 0;
          v225[v54] = 0;
          v224[v54] = 0;
          v33 = 1;
          LODWORD(v34) = v34 + 1;
        }

        if (v36 - 12352 > 0x5F)
        {
          if (v36 - 12448 > 0x5F)
          {
            if ((v36 & 0xFF00) != 0x1100)
            {
              if ((v55 & 0x10) == 0)
              {
                v224[v54] = v55 | 0x10;
              }

              goto LABEL_107;
            }

            if ((v55 & 0x20) == 0)
            {
              v56 = v55 | 0x20;
              goto LABEL_120;
            }
          }

          else if ((v55 & 8) == 0)
          {
            v56 = v55 | 8;
            goto LABEL_120;
          }
        }

        else if ((v55 & 4) == 0)
        {
          v56 = v55 | 4;
LABEL_120:
          v224[v54] = v56;
          v32 = 1;
          goto LABEL_107;
        }

        v32 = 1;
        goto LABEL_107;
      }

      if (v33)
      {
        v50 = v34;
        v51 = v224[v34];
        if (v51)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v51 = 0;
        v50 = v34 + 1;
        *(&v227 + v50) = v44;
        v226[v50] = 0;
        v225[v50] = 0;
        v224[v50] = 0;
        v33 = 1;
        LODWORD(v34) = v34 + 1;
      }

      if ((v51 & 0x3C) != 0)
      {
        v34 = v34 + 1;
        *(&v227 + v34) = v44;
        v226[v34] = 0;
        v225[v34] = 0;
        v52 = &v224[v34];
        v224[v34] = 0;
        v33 = 1;
        goto LABEL_105;
      }

LABEL_103:
      v52 = &v224[v50];
      if ((v51 & 0xFFFFFFFD) != 0)
      {
        v32 = 0;
        v53 = v51 | 1;
LABEL_106:
        *v52 = v53;
LABEL_107:
        v35 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v30 >> 4];
        v226[v34] += v35;
        ++v225[v34];
        goto LABEL_69;
      }

LABEL_105:
      v32 = 0;
      v53 = 2;
      goto LABEL_106;
    }

    if (v33)
    {
      v33 = 0;
    }

    v35 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v30 >> 4];
LABEL_69:
    v30 += v35;
  }

  while (v30 < v31);
  if ((v34 & 0x80000000) == 0)
  {
    v58 = 0;
    v184 = v32 ^ 1;
    v189 = *MEMORY[0x1E695E480];
    v187 = v34;
    v188 = *MEMORY[0x1E695E498];
    v191 = (v34 + 1);
    v59 = 0;
    v3 = v185;
    v60 = v192;
    v61 = v197;
    while (1)
    {
      v63 = v58 == 0;
      if (v60)
      {
        v64 = v58 == v187 || (v224[v58] & 0x3C) == 0;
      }

      else
      {
        v64 = 0;
      }

      v65 = v63 && v194;
      v66 = &v61[*(&v227 + v58)];
      __src = v66;
      v67 = v226[v58];
      v208 = v64;
      v207 = v63 && v194;
      if ((v193 >> 24) & 1 | v190 && (v224[v58] & 0x10) == 0)
      {
        v57 = 0;
        if ((v193 & 0x1000000) == 0)
        {
          goto LABEL_348;
        }

        goto LABEL_306;
      }

      v68 = CFStringCreateWithBytesNoCopy(v189, v66, v67, 0x8000100u, 0, v188);
      v69 = v68;
      v198 = v67;
      if (v190)
      {
        v201 = 0;
        v70 = 0;
        theArray = 0;
        v195 = 1;
      }

      else
      {
        CFStringGetLength(v68);
        v71 = _NLStringTokenizerCopyPossibleStringLanguages();
        if (v71)
        {
          theArray = v71;
          Count = CFArrayGetCount(v71);
          if (Count)
          {
            v70 = Count;
            v195 = 0;
            v201 = 1;
          }

          else
          {
            if ((v224[v58] & 0x40) == 0)
            {
              v57 = 0;
LABEL_304:
              CFRelease(theArray);
              goto LABEL_305;
            }

            v201 = 0;
            v70 = 0;
            v195 = 0;
          }
        }

        else
        {
          if ((v224[v58] & 0x40) == 0)
          {
            v57 = 0;
            goto LABEL_305;
          }

          v201 = 0;
          v70 = 0;
          theArray = 0;
          v195 = 1;
        }
      }

      *buf = 0;
      v219 = 0;
      v73 = OSAtomicDequeue(&stru_1EDD81160, 0);
      v196 = v59;
      if (v73)
      {
        v74 = v73[1];
        v73[1] = 0;
        OSAtomicEnqueue(&gIndexingTokenizerHeap, v73, 0);
      }

      else
      {
        v74 = CITokenizerCreate(3);
      }

      CITokenizerGetQueryTokensWithOptions(v74);
      CIReleaseIndexingTokenizer(v74);
      v75 = HIDWORD(v219);
      icu_locale_release();
      v76 = *buf;
      v215 = *buf;
      v216 = v75;
      v213 = 0;
      v214 = 0;
      v211 = 0;
      v212 = 0;
      v209 = 0;
      v210 = 0;
      v200 = v69;
      v203 = *buf;
      if (!v70)
      {
        v199 = 0;
        v202 = 0;
        v84 = 0;
        v86 = 0;
        goto LABEL_226;
      }

      v77 = theArray;
      if (v70 == 1)
      {
        v199 = 0;
        v70 = 0;
        v84 = 0;
        v78 = 0;
        v85 = 0;
        goto LABEL_194;
      }

      v199 = 0;
      v78 = 0;
      v11 = v70 == 2;
      v70 = 0;
      if (!v11)
      {
        CFArrayGetValueAtIndex(theArray, 2);
        *buf = 0;
        v219 = 0;
        v79 = OSAtomicDequeue(&stru_1EDD81160, 0);
        if (v79)
        {
          v80 = v79[1];
          v79[1] = 0;
          OSAtomicEnqueue(&gIndexingTokenizerHeap, v79, 0);
        }

        else
        {
          v80 = CITokenizerCreate(3);
        }

        CITokenizerGetQueryTokensWithOptions(v80);
        CIReleaseIndexingTokenizer(v80);
        v70 = HIDWORD(v219);
        icu_locale_release();
        v78 = *buf;
        v199 = *buf;
        v209 = *buf;
        v210 = v70;
        if (v70 && v70 == v75)
        {
          v78 = *buf;
          if (v75 >= 1)
          {
            for (i = 0; i != v70; ++i)
            {
              if (strcmp(v199[i], v76[i]))
              {
                v70 = v75;
                goto LABEL_171;
              }
            }

            v82 = v199;
            do
            {
              v83 = *v82++;
              free(v83);
              --v70;
            }

            while (v70);
          }

          free(v199);
          v199 = 0;
          v70 = 0;
          v78 = 0;
          v209 = 0;
          LODWORD(v210) = 0;
        }

LABEL_171:
        v77 = theArray;
      }

      CFArrayGetValueAtIndex(v77, 1);
      *buf = 0;
      v219 = 0;
      v87 = OSAtomicDequeue(&stru_1EDD81160, 0);
      if (v87)
      {
        v88 = v87[1];
        v87[1] = 0;
        OSAtomicEnqueue(&gIndexingTokenizerHeap, v87, 0);
      }

      else
      {
        v88 = CITokenizerCreate(3);
      }

      CITokenizerGetQueryTokensWithOptions(v88);
      CIReleaseIndexingTokenizer(v88);
      v84 = HIDWORD(v219);
      icu_locale_release();
      v85 = *buf;
      v211 = *buf;
      v212 = v84;
      if (v84)
      {
        if (v84 == v75)
        {
          v89 = v84;
          v90 = *buf;
          v91 = v203;
          if (v75 < 1)
          {
            goto LABEL_192;
          }

          while (!strcmp(*v90, *v91))
          {
            ++v91;
            ++v90;
            if (!--v89)
            {
              if (v84 >= 1)
              {
LABEL_187:
                v93 = v85;
                do
                {
                  v94 = *v93++;
                  free(v94);
                  --v84;
                }

                while (v84);
              }

              goto LABEL_192;
            }
          }
        }

        v70 = v210;
        if (v84 == v210)
        {
          if (v84 >= 1)
          {
            v92 = 0;
            while (!strcmp(v85[v92], v78[v92]))
            {
              if (v84 == ++v92)
              {
                v70 = v84;
                goto LABEL_187;
              }
            }

            v70 = v84;
            goto LABEL_193;
          }

          v70 = v84;
LABEL_192:
          free(v85);
          v84 = 0;
          v85 = 0;
          v211 = 0;
          LODWORD(v212) = 0;
        }
      }

      else
      {
        v84 = 0;
      }

LABEL_193:
      v77 = theArray;
LABEL_194:
      CFArrayGetValueAtIndex(v77, 0);
      *buf = 0;
      v219 = 0;
      v95 = OSAtomicDequeue(&stru_1EDD81160, 0);
      if (v95)
      {
        v96 = v95[1];
        v95[1] = 0;
        OSAtomicEnqueue(&gIndexingTokenizerHeap, v95, 0);
      }

      else
      {
        v96 = CITokenizerCreate(3);
      }

      CITokenizerGetQueryTokensWithOptions(v96);
      CIReleaseIndexingTokenizer(v96);
      v86 = HIDWORD(v219);
      icu_locale_release();
      v202 = *buf;
      v213 = *buf;
      v214 = v86;
      if (!v86)
      {
        v86 = 0;
LABEL_225:
        v64 = v208;
        v65 = v207;
        v76 = v203;
        goto LABEL_226;
      }

      if (v86 == v75)
      {
        v97 = v86;
        v98 = *buf;
        v99 = v203;
        if (v75 < 1)
        {
          v3 = v185;
          goto LABEL_221;
        }

        while (!strcmp(*v98, *v99))
        {
          ++v99;
          ++v98;
          if (!--v97)
          {
            v3 = v185;
LABEL_214:
            v65 = v207;
            v76 = v203;
            if (v86 >= 1)
            {
              v103 = v202;
              do
              {
                v104 = *v103++;
                free(v104);
                --v86;
              }

              while (v86);
            }

            goto LABEL_222;
          }
        }
      }

      v84 = v212;
      v3 = v185;
      if (v86 == v212)
      {
        v100 = v86;
        v101 = v202;
        if (v86 < 1)
        {
          v84 = v86;
          goto LABEL_221;
        }

        while (!strcmp(*v101, *v85))
        {
          ++v85;
          ++v101;
          if (!--v100)
          {
            v84 = v86;
            goto LABEL_214;
          }
        }
      }

      v70 = v210;
      if (v86 != v210)
      {
        goto LABEL_225;
      }

      if (v86 >= 1)
      {
        v102 = 0;
        while (!strcmp(v202[v102], v78[v102]))
        {
          if (v86 == ++v102)
          {
            v70 = v86;
            goto LABEL_214;
          }
        }

        v70 = v86;
        goto LABEL_225;
      }

      v70 = v86;
LABEL_221:
      v65 = v207;
      v76 = v203;
LABEL_222:
      free(v202);
      v202 = 0;
      v86 = 0;
      v213 = 0;
      LODWORD(v214) = 0;
      v64 = v208;
LABEL_226:
      v57 = _query_node_copy_factor_node_expanding_queryTerm(v3, &v215, v204, v65, v64, (v206 + 24));
      if (v57)
      {
        if (v201)
        {
          if (v86)
          {
            v105 = _query_node_copy_factor_node_expanding_queryTerm(v3, &v213, v204, v207, v64, (v206 + 24));
            v106 = (*(v3 + 48) & 8) != 0 ? -1 : -5;
            v107 = (v106 + *(*(v3 + 16) + 24)) >= 2 ? 1 : 2;
            if (v105)
            {
              v108 = v105;
              v181 = v107;
              if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
              {
                ++sTotal_15332;
              }

              v109 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
              if (!v109 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
              }

              v109[24] = v181;
              *v109 = v57;
              *(v109 + 1) = v108;
              v57 = v109;
              v76 = v203;
            }
          }

          if (v84)
          {
            node_copy_factor_node_expanding_queryTerm = _query_node_copy_factor_node_expanding_queryTerm(v3, &v211, v204, v207, v64, (v206 + 24));
            v111 = (*(v3 + 48) & 8) != 0 ? -1 : -5;
            v112 = (v111 + *(*(v3 + 16) + 24)) >= 2 ? 1 : 2;
            if (node_copy_factor_node_expanding_queryTerm)
            {
              v113 = node_copy_factor_node_expanding_queryTerm;
              if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
              {
                ++sTotal_15332;
              }

              v114 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
              if (!v114 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
              }

              v114[24] = v112;
              *v114 = v57;
              *(v114 + 1) = v113;
              v57 = v114;
              v76 = v203;
            }
          }

          if (v70)
          {
            v115 = _query_node_copy_factor_node_expanding_queryTerm(v3, &v209, v204, v207, v64, (v206 + 24));
            v116 = (*(v3 + 48) & 8) != 0 ? -1 : -5;
            v117 = (v116 + *(*(v3 + 16) + 24)) >= 2 ? 1 : 2;
            if (v115)
            {
              v118 = v115;
              if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
              {
                ++sTotal_15332;
              }

              v119 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
              if (!v119 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
              }

              v119[24] = v117;
              *v119 = v57;
              *(v119 + 1) = v118;
              v57 = v119;
              v76 = v203;
            }
          }
        }

        if ((v192 & (v64 ^ 1)) == 1 && (v193 & 0x800040) == 0x40)
        {
          v219 = 1;
          *buf = &__src;
          v120 = _query_node_copy_factor_node_expanding_queryTerm(v3, buf, 0, 0, 0, (v206 + 24));
          v121 = *(v120 + 2);
          if (v204)
          {
            free(*v121);
            v122 = malloc_type_zone_malloc(queryZone, 2uLL, 0xA4971684uLL);
            if (!v122 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *v223 = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v223, 2u);
            }

            *v122 = 42;
            v121 = *(v120 + 2);
            *v121 = v122;
          }

          *(v121 + 32) |= 0x4000uLL;
          if ((*(v3 + 48) & 8) != 0)
          {
            v123 = -1;
          }

          else
          {
            v123 = -5;
          }

          if ((v123 + *(*(v3 + 16) + 24)) >= 2)
          {
            v124 = 1;
          }

          else
          {
            v124 = 2;
          }

          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v125 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v125 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *v223 = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v223, 2u);
          }

          v125[24] = v124;
          *v125 = v57;
          *(v125 + 1) = v120;
          v57 = v125;
          v76 = v203;
        }
      }

      if (v201)
      {
        if (v70 >= 1)
        {
          v126 = v199;
          do
          {
            v127 = *v126++;
            free(v127);
            --v70;
          }

          while (v70);
        }

        free(v199);
        v209 = 0;
        LODWORD(v210) = 0;
        v128 = v212;
        v129 = v211;
        if (v212 >= 1)
        {
          v130 = v211;
          do
          {
            v131 = *v130++;
            free(v131);
            --v128;
          }

          while (v128);
        }

        free(v129);
        if (v86 >= 1)
        {
          v132 = v202;
          do
          {
            v133 = *v132++;
            free(v133);
            --v86;
          }

          while (v86);
        }

        free(v202);
        v75 = v216;
        v76 = v215;
        v64 = v208;
      }

      if (v75 >= 1)
      {
        v134 = v76;
        do
        {
          v135 = *v134++;
          free(v135);
          --v75;
        }

        while (v75);
      }

      free(v76);
      v60 = v192;
      v59 = v196;
      v61 = v197;
      v67 = v198;
      v69 = v200;
      if ((v195 & 1) == 0)
      {
        goto LABEL_304;
      }

LABEL_305:
      CFRelease(v69);
      if ((v193 & 0x1000000) == 0)
      {
        goto LABEL_348;
      }

LABEL_306:
      if (v225[v58] < 2)
      {
        goto LABEL_348;
      }

      v136 = v224[v58];
      if (v58 == v187 && (v184 & (v136 == 2)) != 0)
      {
        v137 = 150994944;
      }

      else
      {
        if ((v136 & 0x3C) == 0 || (v136 & 8) != 0)
        {
LABEL_348:
          if (!v57)
          {
            *buf = MEMORY[0x1E69E9820];
            v219 = 0x40000000;
            v220 = __db_query_tree_apply_block_block_invoke;
            v221 = &unk_1E8198ED0;
            v222 = &__block_literal_global_21_15415;
            db_query_tree_apply_block_with_meta(v3, buf, &__block_literal_global_25_15416);
            v57 = v150;
            if (v207)
            {
              v151 = 2;
            }

            else
            {
              v151 = 1;
            }

            v152 = malloc_type_zone_malloc(queryZone, v151 + v64 + v67, 0xA4971684uLL);
            if (!v152 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            *(*(v57 + 2) + 72) = v152;
            v153 = __src;
            if (v207 && *__src != 42)
            {
              *v152++ = 42;
              v153 = __src;
            }

            memcpy(v152, v153, v67);
            v154 = &v152[v67];
            if (v208 && *v154 != 42)
            {
              *v154++ = 42;
            }

            *v154 = 0;
            if (v204)
            {
              if ((*(v3 + 48) & 8) != 0)
              {
                v155 = -1;
              }

              else
              {
                v155 = -5;
              }

              if ((v155 + *(*(v3 + 16) + 24)) >= 2)
              {
                v156 = 1;
              }

              else
              {
                v156 = 2;
              }

              query_node_expand_double_star_in_place(v57, v156);
              v149 = 2;
              goto LABEL_369;
            }
          }

LABEL_370:
          if (v59)
          {
            goto LABEL_371;
          }

          goto LABEL_129;
        }

        if ((v136 & 4) != 0)
        {
          v137 = 150994944;
        }

        else
        {
          v137 = 0x1000000;
        }
      }

      *buf = MEMORY[0x1E69E9820];
      v219 = 0x40000000;
      v220 = __db_query_tree_apply_block_block_invoke;
      v221 = &unk_1E8198ED0;
      v222 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v3, buf, &__block_literal_global_25_15416);
      v139 = v138;
      *(*(v138 + 16) + 32) |= v137;
      if (v207)
      {
        v140 = 2;
      }

      else
      {
        v140 = 1;
      }

      v141 = malloc_type_zone_malloc(queryZone, v140 + v208 + v67, 0xA4971684uLL);
      if (!v141 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(*(v139 + 16) + 72) = v141;
      v142 = __src;
      if (v207 && *__src != 42)
      {
        *v141++ = 42;
        v142 = __src;
      }

      memcpy(v141, v142, v67);
      v143 = &v141[v67];
      if (v208 && *v143 != 42)
      {
        *v143++ = 42;
      }

      *v143 = 0;
      if (v204)
      {
        if ((*(v3 + 48) & 8) != 0)
        {
          v144 = -1;
        }

        else
        {
          v144 = -5;
        }

        if ((v144 + *(*(v3 + 16) + 24)) >= 2)
        {
          v145 = 1;
        }

        else
        {
          v145 = 2;
        }

        query_node_expand_double_star_in_place(v139, v145);
        *(v206 + 24) += 2;
      }

      if (v57)
      {
        if ((*(v3 + 48) & 8) != 0)
        {
          v146 = -1;
        }

        else
        {
          v146 = -5;
        }

        if ((v146 + *(*(v3 + 16) + 24)) >= 2)
        {
          v147 = 1;
        }

        else
        {
          v147 = 2;
        }

        if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
        {
          ++sTotal_15332;
        }

        v148 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        if (!v148 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        v148[24] = v147;
        v149 = 1;
        *v148 = v57;
        *(v148 + 1) = v139;
        v57 = v148;
LABEL_369:
        *(v206 + 24) += v149;
        goto LABEL_370;
      }

      v57 = v139;
      if (v59)
      {
LABEL_371:
        if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
        {
          ++sTotal_15332;
        }

        v62 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        if (!v62 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        v62[24] = v186;
        *v62 = v59;
        *(v62 + 1) = v57;
        ++*(v206 + 24);
        v57 = v62;
      }

LABEL_129:
      ++v58;
      v59 = v57;
      if (v58 == v191)
      {
        goto LABEL_393;
      }
    }
  }

  v57 = 0;
  v3 = v185;
LABEL_393:
  v164 = *(v3 + 16);
  *(v164 + 72) = v182;
  *(v164 + 32) = v193 & 0xFFFFFFFFFEFFFFFBLL;
  if (v57)
  {
    v165 = v57;
  }

  else
  {
    v165 = v3;
  }

  if (v165 != v3)
  {
    v227 = MEMORY[0x1E69E9820];
    v228 = 0x40000000;
    v229 = __db_query_tree_apply_block_block_invoke;
    v230 = &unk_1E8198ED0;
    v231 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v3, &v227, 0);
    v3 = v165;
    LODWORD(v170) = v183;
    goto LABEL_398;
  }

  if (v183)
  {
    goto LABEL_399;
  }

LABEL_400:
  v167 = *MEMORY[0x1E69E9840];
  return v3;
}

CFStringRef shortened_client_key(const __CFString *a1)
{
  if (!a1)
  {
    v1 = @"<null>";
    goto LABEL_7;
  }

  v1 = a1;
  if (!CFStringHasPrefix(a1, @"com.apple."))
  {
LABEL_7:
    CFRetain(v1);
    return v1;
  }

  v3.length = CFStringGetLength(v1) - 10;
  v2 = *MEMORY[0x1E695E480];
  v3.location = 10;

  return CFStringCreateWithSubstring(v2, v1, v3);
}

void decorateExpandingFunctions(void *a1, uint64_t a2, const void *a3, double a4)
{
  v8 = si_calendar_retain();
  if (a3)
  {
    v9 = CFEqual(a3, @"com.apple.finder") != 0;
  }

  else
  {
    v9 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __decorateExpandingFunctions_block_invoke;
  v10[3] = &__block_descriptor_tmp_117_9701;
  v10[4] = v8;
  *&v10[5] = a4;
  v10[6] = a2;
  v11 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __db_query_tree_apply_block_block_invoke;
  v12[3] = &unk_1E8198ED0;
  v12[4] = v10;
  db_query_tree_apply_block_with_meta(a1, v12, 0);
  if (v8)
  {
    OSAtomicEnqueue(&s_si_calendar_head, v8, 0);
  }
}

BOOL db_sanitize_query_tree(void **a1, char a2, char a3, double a4)
{
  v5 = *a1;
  v18 = 0;
  v19 = &v18;
  v21 = 0;
  v20 = 0x2000000000;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __db_sanitize_query_tree_block_invoke;
  v12[3] = &unk_1E81990A8;
  v12[4] = &v14;
  v13 = a2;
  *&v12[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __db_sanitize_query_tree_block_invoke_2;
  v10[3] = &unk_1E81990D0;
  v10[4] = v12;
  v10[5] = &v18;
  v11 = a3;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __db_query_tree_apply_block_block_invoke;
  v22[3] = &unk_1E8198ED0;
  v22[4] = v10;
  db_query_tree_apply_block_with_meta(v5, v22, &__block_literal_global_51_15523);
  *a1 = v6;
  v7 = v15[3];
  if (v7)
  {
    OSAtomicEnqueue(&s_si_calendar_head, v7, 0);
  }

  v8 = *(v19 + 6) < 2049;
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t _expandFunctions(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, CFAbsoluteTime a6)
{
  v130 = *MEMORY[0x1E69E9840];
  v124 = 0.0;
  *a2 = 0;
  if (strncmp(a1, "time.", 5uLL))
  {
LABEL_2:
    *a2 = 36;
    strlcat(a2, a1, a3);
LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  if (!strncmp((a1 + 5), "absolute(", 9uLL))
  {
    *at = a1 + 14;
    v124 = strtod((a1 + 14), at);
    if (*at == a1 + 14)
    {
      goto LABEL_77;
    }

    goto LABEL_205;
  }

  if (!strncmp((a1 + 5), "iso(", 4uLL))
  {
    v16 = 0;
    v17 = (a1 + 9);
    v18 = a1 + 8;
    while (v17[v16] && v17[v16] != 41)
    {
      ++v16;
    }

    v19 = v16 + 9;
    if ((v16 + 9) >= 0xA)
    {
      v20 = v16;
      while (1)
      {
        v21 = *v17;
        v22 = v21 > 0x20;
        v23 = (1 << v21) & 0x100000600;
        if (v22 || v23 == 0)
        {
          break;
        }

        ++v17;
        if (!--v20)
        {
          goto LABEL_77;
        }
      }
    }

    v29 = a1 + v19;
    if (v17 == (a1 + v19))
    {
LABEL_77:
      if (*a2)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v30 = *v17;
    if (v30 == 39)
    {
      v31 = v17 + 1;
      v32 = v17 + 1;
      if ((v17 + 1) < v29)
      {
        v34 = v18 - v17 + v16;
        v32 = v31;
        while (*v32 != 39)
        {
          ++v32;
          if (!--v34)
          {
LABEL_51:
            v32 = v29;
            break;
          }
        }
      }
    }

    else
    {
      if (v30 != 34)
      {
        v35 = v29 - v17;
        v31 = v17;
        goto LABEL_55;
      }

      v31 = v17 + 1;
      v32 = v17 + 1;
      if ((v17 + 1) < v29)
      {
        v33 = v18 - v17 + v16;
        v32 = v31;
        while (*v32 != 34)
        {
          ++v32;
          if (!--v33)
          {
            goto LABEL_51;
          }
        }
      }
    }

    if (v32 == v29)
    {
      goto LABEL_77;
    }

    v35 = v32 - v31;
LABEL_55:
    if (!v35)
    {
      goto LABEL_77;
    }

    v36 = &v31[v35];
    if (v35 < 1)
    {
      v46 = 0;
      v44 = v31;
    }

    else
    {
      v37 = *v31;
      v38 = v37 - 48;
      v39 = 10 * v37 - 480;
      if (v38 >= 0xA)
      {
        v39 = 0;
      }

      v40 = v31[1] - 48;
      if (v40 >= 0xA)
      {
        v40 = 0;
      }

      v41 = v39 + v40;
      v42 = v31[2] - 48;
      if (v42 >= 0xA)
      {
        v42 = 0;
      }

      v43 = v42 + 10 * v41;
      v44 = v31 + 4;
      v45 = v31[3] - 48;
      if (v45 >= 0xA)
      {
        v45 = 0;
      }

      v46 = v45 + 10 * v43;
    }

    if (v44 < v36 && *v44 == 45)
    {
      ++v44;
    }

    if (v44 >= v36)
    {
      v63 = 0;
    }

    else
    {
      v58 = *v44;
      v59 = v58 - 48;
      v60 = 10 * v58 + 32;
      if (v59 >= 0xA)
      {
        v60 = 0;
      }

      v61 = v44[1];
      v44 += 2;
      v62 = v61 - 48;
      if (v62 >= 0xA)
      {
        LOBYTE(v62) = 0;
      }

      v63 = (v62 + v60);
    }

    if (v44 < v36 && *v44 == 45)
    {
      ++v44;
    }

    if (v44 >= v36)
    {
      v69 = 0;
    }

    else
    {
      v64 = *v44;
      v65 = v64 - 48;
      v66 = 10 * v64 + 32;
      if (v65 >= 0xA)
      {
        v66 = 0;
      }

      v67 = v44[1];
      v44 += 2;
      v68 = v67 - 48;
      if (v68 >= 0xA)
      {
        LOBYTE(v68) = 0;
      }

      v69 = (v68 + v66);
    }

    v70 = 0.0;
    if (v44 >= v36)
    {
      v71 = 0;
      v79 = 0;
      v80 = 0;
      v74 = 0;
    }

    else
    {
      v71 = 0;
      v73 = (v44 + 1);
      v72 = *v44;
      v74 = v72 == 90;
      if ((v72 - 32) <= 0x3A && ((1 << (v72 - 32)) & 0x410000000000001) != 0)
      {
        if (v73 >= v36)
        {
          v71 = 0;
        }

        else
        {
          v75 = v44[1];
          v76 = v75 - 48;
          v77 = 10 * v75 + 32;
          if (v76 >= 0xA)
          {
            v77 = 0;
          }

          v73 = (v44 + 3);
          v78 = v44[2] - 48;
          if (v78 >= 0xA)
          {
            LOBYTE(v78) = 0;
          }

          v71 = v78 + v77;
        }

        if (v73 < v36)
        {
          v83 = (v73 + 1);
          if (*v73 == 58)
          {
            if (v83 >= v36)
            {
              v79 = 0;
            }

            else
            {
              v84 = *(v73 + 1);
              v85 = v84 - 48;
              v86 = 10 * v84 + 32;
              if (v85 >= 0xA)
              {
                v86 = 0;
              }

              v83 = (v73 + 3);
              v87 = *(v73 + 2) - 48;
              if (v87 >= 0xA)
              {
                LOBYTE(v87) = 0;
              }

              v79 = v87 + v86;
            }

            if (v83 < v36)
            {
              v73 = (v83 + 1);
              if (*v83 == 58)
              {
                v89 = v83[1];
                v90 = v89 - 48;
                v91 = 10 * v89 + 32;
                if (v90 >= 0xA)
                {
                  v91 = 0;
                }

                v73 = (v83 + 3);
                v92 = v83[2] - 48;
                if (v92 >= 0xA)
                {
                  LOBYTE(v92) = 0;
                }

                v80 = v92 + v91;
                goto LABEL_155;
              }

              goto LABEL_131;
            }
          }

          else
          {
            v79 = 0;
          }

          v80 = 0;
          v73 = v83;
          goto LABEL_155;
        }

        v79 = 0;
LABEL_131:
        v80 = 0;
LABEL_155:
        if (v73 >= v36)
        {
          v96 = 0;
        }

        else if (*v73 == 32)
        {
          v93 = &v31[v35];
          v94 = &v93[~v73];
          while (v94)
          {
            v95 = *++v73;
            --v94;
            if (v95 != 32)
            {
              goto LABEL_164;
            }
          }

          v73 = v93;
LABEL_164:
          v96 = v73 < v36;
        }

        else
        {
          v96 = 1;
        }

        if (v72 != 84)
        {
          v96 = 0;
        }

        if (v72 == 32 || v96)
        {
          v97 = (v73 + 1);
          v98 = *v73;
          v74 = v98 == 90;
          if (v98 != 90)
          {
            v97 = v73;
          }

          v99 = *v97;
          if (v99 == 45)
          {
            v100 = v97 + 1;
          }

          else
          {
            v100 = v97;
          }

          if (v99 == 43)
          {
            v101 = v97 + 1;
          }

          else
          {
            v101 = v100;
          }

          v102 = v99 != 43 && v99 == 45;
          if (v101 < v36)
          {
            v103 = *v101;
            v104 = v103 - 48;
            v105 = 10 * v103 + 32;
            if (v104 >= 0xA)
            {
              v105 = 0;
            }

            v106 = v101 + 2;
            v107 = v101[1] - 48;
            if (v107 >= 0xA)
            {
              LOBYTE(v107) = 0;
            }

            v108 = v107 + v105;
            if (v106 < v36 && *v106 == 58)
            {
              v109 = v101[3];
              v110 = v109 - 48;
              v111 = 10 * v109 + 32;
              if (v110 >= 0xA)
              {
                v111 = 0;
              }

              v112 = v101[4] - 48;
              if (v112 >= 0xA)
              {
                LOBYTE(v112) = 0;
              }

              v113 = (v112 + v111);
            }

            else
            {
              v113 = 0;
            }

            v114 = !v102;
            if (v102)
            {
              v115 = 3600;
            }

            else
            {
              v115 = -3600;
            }

            if (v114)
            {
              v116 = -60;
            }

            else
            {
              v116 = 60;
            }

            v70 = (v115 * v108 + v113 * v116);
            v74 = 1;
          }
        }

        goto LABEL_200;
      }

      v79 = 0;
      v80 = 0;
      v74 = 0;
    }

LABEL_200:
    *at = 0;
    if (a4)
    {
      v117 = *(a4 + 8 * v74 + 8);
    }

    else
    {
      v117 = 0;
    }

    if (!CFCalendarComposeAbsoluteTime(v117, at, "yMdHms", v46, v63, v69, v71, v79, v80))
    {
      goto LABEL_77;
    }

    v124 = v70 + *at;
    goto LABEL_205;
  }

  v122 = 0;
  v123 = 0;
  v121 = 0;
  *at = a6;
  pthread_mutex_lock(&_expandFunctions_expand_mutex);
  if (_expandFunctions_once != -1)
  {
    dispatch_once(&_expandFunctions_once, &__block_literal_global_15_5392);
  }

  if (!CFCalendarDecomposeAbsoluteTime(_expandFunctions_calendar, a6, "yMdHms", &v122, &v121 + 4, &v121, &v123 + 4, &v123, &v122 + 4))
  {
    goto LABEL_73;
  }

  if (*(a1 + 5) != 110 || *(a1 + 6) != 111 || *(a1 + 7) != 119)
  {
    if (!strncmp((a1 + 5), "today", 5uLL))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v14 = (a1 + 10);
      v123 = 0;
      HIDWORD(v122) = 0;
      v15 = 100;
      v28 = v121;
      goto LABEL_68;
    }

    if (!strncmp((a1 + 5), "yesterday", 9uLL))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v14 = (a1 + 14);
      v123 = 0;
      HIDWORD(v122) = 0;
      v28 = (v121 - 1);
    }

    else if (!strncmp((a1 + 5), "two_days_ago", 0xCuLL))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v14 = (a1 + 17);
      v123 = 0;
      HIDWORD(v122) = 0;
      v28 = (v121 - 2);
    }

    else
    {
      if (strncmp((a1 + 5), "three_days_ago", 0xEuLL))
      {
        if (!strncmp((a1 + 5), "this_week", 9uLL))
        {
          v14 = (a1 + 14);
          v123 = 0;
          HIDWORD(v122) = 0;
          OrdinalityOfUnit = CFCalendarGetOrdinalityOfUnit(_expandFunctions_calendar, 0x10uLL, 0x1000uLL, a6);
          v28 = (v121 - OrdinalityOfUnit + 1);
          LODWORD(v121) = v121 - OrdinalityOfUnit + 1;
          v26 = v123;
          v27 = HIDWORD(v123);
          v15 = 119;
          v25 = HIDWORD(v122);
        }

        else if (!strncmp((a1 + 5), "this_month", 0xAuLL))
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v14 = (a1 + 15);
          v123 = 0;
          HIDWORD(v122) = 0;
          v28 = 1;
          LODWORD(v121) = 1;
          v15 = 77;
        }

        else
        {
          if (strncmp((a1 + 5), "this_year", 9uLL))
          {
            goto LABEL_73;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          v123 = 0;
          v14 = (a1 + 14);
          HIDWORD(v122) = 0;
          v28 = 1;
          v121 = 0x100000001;
          v15 = 89;
        }

LABEL_68:
        if (CFCalendarComposeAbsoluteTime(_expandFunctions_calendar, at, "yMdHms", v122, HIDWORD(v121), v28, v27, v26, v25))
        {
          goto LABEL_69;
        }

LABEL_73:
        pthread_mutex_unlock(&_expandFunctions_expand_mutex);
LABEL_74:
        v50 = *__error();
        v51 = _SILogForLogForCategory(1);
        v52 = dword_1EBF46AD0 < 3;
        if (os_log_type_enabled(v51, (dword_1EBF46AD0 < 3)))
        {
          *at = 136315138;
          *&at[4] = a1;
          _os_log_impl(&dword_1C278D000, v51, v52, "*warn* failed to parse %s", at, 0xCu);
        }

        *__error() = v50;
        goto LABEL_77;
      }

      v25 = 0;
      v26 = 0;
      v27 = 0;
      v14 = (a1 + 19);
      v123 = 0;
      HIDWORD(v122) = 0;
      v28 = (v121 - 3);
    }

    LODWORD(v121) = v28;
    v15 = 100;
    goto LABEL_68;
  }

  v14 = (a1 + 8);
  v15 = 115;
LABEL_69:
  if (*v14 == 40)
  {
    v48 = v14[1];
    v47 = v14 + 1;
    if (v48 != 41)
    {
      v120 = v47;
      v53 = strtod(v47, &v120);
      if (v120 == v47)
      {
LABEL_144:
        pthread_mutex_unlock(&_expandFunctions_expand_mutex);
        goto LABEL_205;
      }

      v54 = v53;
      v55 = parseTimeUnit(&v120, v15);
      if (v55 <= 103)
      {
        if (v55 == 77)
        {
          HIDWORD(v121) += v54;
          goto LABEL_71;
        }

        if (v55 == 89)
        {
          LODWORD(v122) = v122 + v54;
          goto LABEL_71;
        }

        if (v55 != 100)
        {
          goto LABEL_71;
        }

        v56 = *at;
        v82 = 86400;
      }

      else if (v55 > 114)
      {
        if (v55 != 119)
        {
          if (v55 != 115)
          {
            goto LABEL_71;
          }

          v56 = *at;
          v88 = v54;
          goto LABEL_143;
        }

        v56 = *at;
        v82 = 604800;
      }

      else
      {
        if (v55 != 104)
        {
          if (v55 != 109)
          {
            goto LABEL_71;
          }

          v56 = *at;
          v57 = 60 * v54;
          goto LABEL_142;
        }

        v56 = *at;
        v82 = 3600;
      }

      v57 = v54 * v82;
LABEL_142:
      v88 = v57;
LABEL_143:
      v124 = v56 + v88;
      goto LABEL_144;
    }
  }

LABEL_71:
  v49 = CFCalendarComposeAbsoluteTime(_expandFunctions_calendar, &v124, "yMdHms", v122, HIDWORD(v121), v121, HIDWORD(v123), v123, HIDWORD(v122));
  pthread_mutex_unlock(&_expandFunctions_expand_mutex);
  if (!v49)
  {
    goto LABEL_74;
  }

LABEL_205:
  (*(a5 + 16))(a5, a2, a3, v124);
  if (dword_1EBF46AD0 >= 5)
  {
    v118 = *__error();
    v119 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      *at = 134218498;
      *&at[4] = v124;
      v126 = 2080;
      v127 = a2;
      v128 = 2080;
      v129 = a1;
      _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "Computed time (%lld) %s from %s", at, 0x20u);
    }

    *__error() = v118;
  }

  result = 0x10000;
LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t popSkipCrashState()
{
  result = pthread_getspecific(__THREAD_SLOT_KEY);
  if (result && result <= 0x800)
  {
    v1 = &threadData[9 * result];
    v2 = *(v1 - 12);
    if (v2)
    {
      *(v1 - 12) = v2 - 1;
    }
  }

  return result;
}

void si_enqueue_work_with_qos(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
      if (a2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      if (a2)
      {
LABEL_5:
        v7 = *(a1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[5] = a1;
        block[6] = a3;
        block[2] = __si_enqueue_work_with_qos_block_invoke;
        block[3] = &__block_descriptor_tmp_1;
        block[4] = v6;
        v9 = a2;
        block[7] = a4;
        dispatch_sync(v7, block);
        return;
      }
    }

    a2 = *(a1 + 24);
    goto LABEL_5;
  }

  a3(a4, 1);
}

void si_enqueue_work_inner_with_qos(uint64_t a1, uint64_t *a2, qos_class_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 707, "queue", v19);
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

  if (!a1 || (v9 = *a2) != 0 && (*(v9 + 104) || *(v9 + 64) == 1))
  {

    (a4)(a5, 1);
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 132), 1u, memory_order_relaxed);
    v10 = a2[2];
    *(a2 + 7) = vaddq_s64(*(a2 + 7), vdupq_n_s64(1uLL));
    v11 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v11[4] = a5;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = a5 ^ a4;
    *v11 = a1;
    v11[1] = v9;
    v11[2] = a2;
    v11[3] = a4;
    v12 = *(a1 + 136) == 1 && (a2[7] & 0xF) == 0;
    *(v11 + 64) = v12;
    if (a3 <= QOS_CLASS_USER_INITIATED)
    {
      v13 = 25;
    }

    else
    {
      v13 = a3;
    }

    if (gTurboMode == 1)
    {
      a3 = v13;
    }

    if (*(v9 + 192) && *(v9 + 216) < a3)
    {
      pthread_mutex_lock(*(v9 + 8));
      v14 = *(v9 + 192);
      if (v14)
      {
        if (*(v9 + 216) < a3)
        {
          v15 = *(v9 + 208);
          *(v9 + 208) = pthread_override_qos_class_start_np(v14, a3, 0);
          *(v9 + 216) = a3;
          if (v15)
          {
            pthread_override_qos_class_end_np(v15);
          }
        }
      }

      pthread_mutex_unlock(*(v9 + 8));
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __enqueue_work_with_qos_block_invoke;
    block[3] = &__block_descriptor_tmp_58;
    block[4] = v11;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, block);
    dispatch_async(v10, v16);
    _Block_release(v16);
  }
}

uint64_t __db_optimize_query_tree_block_invoke_2(int32x2_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  v6 = *(a3 + 48);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (a4 && (v7 = *(a4 + 48), v7 != 16))
      {
        if (!a5 || (v8 = *(a5 + 48), v8 == 16))
        {
          *a3 = 0;
          v38 = MEMORY[0x1E69E9820];
          v39 = 0x40000000;
          v40 = __db_query_tree_apply_block_block_invoke;
          v41 = &unk_1E8198ED0;
          v42 = &__block_literal_global_174;
          v12 = a4;
          db_query_tree_apply_block_with_meta(a3, &v38, 0);
          return v12;
        }
      }

      else
      {
        if (!a5 || (v8 = *(a5 + 48), v8 == 16))
        {
          *(a3 + 48) = 16;
          if (a4)
          {
            v38 = MEMORY[0x1E69E9820];
            v39 = 0x40000000;
            v40 = __db_query_tree_apply_block_block_invoke;
            v41 = &unk_1E8198ED0;
            v42 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(a4, &v38, 0);
            *a3 = 0;
            a5 = *(a3 + 8);
          }

          if (!a5)
          {
            return a3;
          }

LABEL_19:
          v38 = MEMORY[0x1E69E9820];
          v39 = 0x40000000;
          v40 = __db_query_tree_apply_block_block_invoke;
          v41 = &unk_1E8198ED0;
          v42 = &__block_literal_global_174;
          db_query_tree_apply_block_with_meta(a5, &v38, 0);
          *(a3 + 8) = 0;
          return a3;
        }

        if (!a4 || (v7 = *(a4 + 48), v7 == 16))
        {
          *(a3 + 8) = 0;
          v38 = MEMORY[0x1E69E9820];
          v39 = 0x40000000;
          v40 = __db_query_tree_apply_block_block_invoke;
          v41 = &unk_1E8198ED0;
          v42 = &__block_literal_global_174;
          v13 = a5;
          db_query_tree_apply_block_with_meta(a3, &v38, 0);
          return v13;
        }
      }

      if (v7 == 32)
      {
        v14 = *(a4 + 16);
        v15 = (v14 ? v14 + 52 : a4 + 72);
        v16 = *v15;
        v17 = a5;
        v18 = a4;
        node_max_bias(a5);
        a4 = v18;
        a5 = v17;
        if (v16 >= v19)
        {
          goto LABEL_36;
        }
      }

      if (v8 == 32)
      {
        v20 = *(a5 + 16);
        v21 = (v20 ? v20 + 52 : a5 + 72);
        v16 = *v21;
        node_max_bias(a4);
        if (v16 >= v22)
        {
LABEL_36:
          *(a3 + 48) = 32;
          *(a3 + 72) = v16;
          cleanup_children(a3);
          return a3;
        }
      }
    }

    return a3;
  }

  if (!a4 || !a5)
  {
    *(a3 + 48) = 16;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = *(a4 + 48);
  if (v9 == 16 || (v10 = *(a5 + 48), v10 == 16))
  {
    *(a3 + 48) = 16;
LABEL_17:
    v38 = MEMORY[0x1E69E9820];
    v39 = 0x40000000;
    v40 = __db_query_tree_apply_block_block_invoke;
    v41 = &unk_1E8198ED0;
    v42 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a4, &v38, 0);
    *a3 = 0;
    a5 = *(a3 + 8);
LABEL_18:
    if (a5)
    {
      goto LABEL_19;
    }

    return a3;
  }

  if (v9 == 32 && v10 == 32)
  {
    v23 = *(a4 + 16);
    if (v23)
    {
      v24 = (v23 + 52);
    }

    else
    {
      v24 = (a4 + 72);
    }

    v25 = *v24 + *(a3 + 72);
    v26 = *(a5 + 16);
    if (v26)
    {
      v27 = (v26 + 52);
    }

    else
    {
      v27 = (a5 + 72);
    }

    v28 = v25 + *v27;
    *(a3 + 48) = 32;
    v38 = MEMORY[0x1E69E9820];
    v39 = 0x40000000;
    v40 = __db_query_tree_apply_block_block_invoke;
    v41 = &unk_1E8198ED0;
    v42 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a4, &v38, 0);
    *a3 = 0;
    v29 = *(a3 + 8);
    if (v29)
    {
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v29, &v38, 0);
      *(a3 + 8) = 0;
    }

    *(a3 + 72) = v28;
    return a3;
  }

  else
  {
    if (v9 == 32)
    {
      v30 = a5;
      v31 = *(a4 + 16);
      if (v31)
      {
        v32 = (v31 + 52);
      }

      else
      {
        v32 = (a4 + 72);
      }

      *a1.i32 = *v32 + *(a3 + 72);
      v37 = a1;
      *(a3 + 8) = 0;
    }

    else
    {
      if (v10 != 32)
      {
        return a3;
      }

      v30 = a4;
      v33 = *(a5 + 16);
      if (v33)
      {
        v34 = (v33 + 52);
      }

      else
      {
        v34 = (a5 + 72);
      }

      *a1.i32 = *v34 + *(a3 + 72);
      v37 = a1;
      *a3 = 0;
    }

    db_free_query_node(a3);
    if (*v37.i32 == 0.0)
    {
      return v30;
    }

    else
    {
      result = v30;
      v35 = *(v30 + 16);
      if (v35)
      {
        *(v35 + 52) = vadd_f32(*(v35 + 52), vdup_lane_s32(v37, 0));
      }

      else
      {
        v36 = *(v30 + 72);
        if (v36 == 0.0)
        {
          *(v30 + 72) = v37.i32[0];
        }

        else
        {
          *(v30 + 72) = v36 + *v37.i32;
        }
      }
    }
  }

  return result;
}

void finishRegisterQuery(uint64_t **a1, int a2)
{
  v2 = a1;
  v327 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  v9 = v7;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = Current - *(v5 + 3);
  v12 = 0x1EBF46000uLL;
  if (dword_1EBF46AD0 >= 5)
  {
    v268 = v4;
    v211 = *__error();
    v212 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *&buf[14] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v212, OS_LOG_TYPE_DEFAULT, "Search waited %f seconds on the scheduler at qos 0x%x", buf, 0x12u);
    }

    *__error() = v211;
    v4 = v268;
  }

  v13 = v5;
  v14 = v6;
  v15 = v4;
  *(v7 + 448) = *(v7 + 448) + v11;
  if (a2 || *(v4 + 9))
  {
    v16 = v13[4];
    if (v16)
    {
      v17 = v13;
      CFRelease(v16);
      v13 = v17;
    }

    free(v13);
    goto LABEL_7;
  }

  v267 = v4;
  if (isAppleInternalInstall_onceToken != -1)
  {
    v247 = v13;
    dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
    v13 = v247;
  }

  v266 = v8;
  if (isAppleInternalInstall_isInternalInstall == 1)
  {
    v20 = v13;
    v21 = fopen("/private/var/mobile/spotlightPrioritySleepEnabled", "r");
    if (v21)
    {
      v22 = v14;
      v23 = v21;
      *&v315 = 0;
      v24 = fscanf(v21, "%lf", &v315);
      fclose(v23);
      bzero(buf, 0x400uLL);
      fcntl(*(v266 + 32), 50, buf);
      v25 = strstr(buf, "Priority");
      if (v24 == 1 && !v25)
      {
        v26 = *(v7 + 656);
        if (!v26 || CFStringCompare(@"com.apple.spotlight", v26, 1uLL) == kCFCompareEqualTo)
        {
          v27 = *__error();
          v28 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *v322 = 136315906;
            *&v322[4] = "sleepForPriorityIndex";
            *&v322[12] = 1024;
            *&v322[14] = 21576;
            *&v322[18] = 2048;
            *&v322[20] = v315;
            *&v322[28] = 2080;
            *&v322[30] = buf;
            _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Sleeping %lf seconds for non-priority dataclass %s", v322, 0x26u);
          }

          for (*__error() = v27; *&v315 > 0.0; *&v315 = *&v315 + -0.100000001)
          {
            if (*(v15 + 36))
            {
              break;
            }

            usleep(0x186A0u);
          }
        }
      }

      v14 = v22;
    }

    v13 = v20;
  }

  v281 = 0;
  v280 = 0;
  v279 = 0;
  v263 = v13;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v29 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*v13 + 1192), 0x40000000, add_explicit + 1);
  v281 = v29;
  v280 = __PAIR64__(HIDWORD(v29), v30);
  v279 = v31;
  v32 = threadData[9 * v29 + 1] + 320 * HIDWORD(v29);
  *(v32 + 216) = 0;
  v33 = *(v32 + 312);
  v34 = *(v32 + 224);
  if (v34)
  {
    v34(*(v32 + 288));
  }

  v278 = v281;
  v277 = HIDWORD(v280);
  v276 = __PAIR64__(v280, v279);
  if (_setjmp(v32))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v32 + 312) = v33;
    CIOnThreadCleanUpReset(v276);
    dropThreadId(v278, 1, add_explicit + 1);
    CICleanUpReset(v278, HIDWORD(v276));
    goto LABEL_7;
  }

  v272 = v7;
  v273 = v2;
  v271 = v7;
  v264 = v33;
  if (dword_1EBF46AD0 >= 5)
  {
    v248 = *__error();
    v249 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
    {
      v250 = *(v7 + 8);
      *buf = 138412290;
      *&buf[4] = v250;
      _os_log_impl(&dword_1C278D000, v249, OS_LOG_TYPE_DEFAULT, "finishRegisterQuery %@", buf, 0xCu);
    }

    *__error() = v248;
    v12 = 0x1EBF46000;
  }

  v35 = *(v7 + 80);
  v36 = v263;
  if ((*(v7 + 201) & 4) != 0)
  {
    if (v35)
    {
      v38 = *(v7 + 72);
      if (v38)
      {
        v39 = makeAndNode(v35, v38, 0, 1);
      }

      else
      {
        db_clone_query_node(v35);
      }

      *(v7 + 72) = v39;
      v36 = v263;
    }
  }

  else if (v35)
  {
    v37 = *(v7 + 72);
    if (v37)
    {
      v35 = makeAndNode(v35, v37, 1, 1);
      v36 = v263;
    }

    *(v7 + 72) = v35;
    *(v7 + 80) = 0;
  }

  v41 = *v36;
  v40 = v36[1];
  if (*(*v36 + 2072) == 1)
  {
    decorateExpandingFunctions(*(v40 + 72), *v40, *(v40 + 656), *(v40 + 360));
  }

  bzero(buf, 0x400uLL);
  v42 = *(v41 + 1416);
  if (v42 && !*(v42 + 240))
  {
    v43 = (*(v42 + 40))(v42, 2, buf, 0, 0, 0, 0, -1);
  }

  else
  {
    v43 = 0;
  }

  processScopeTerms(v41, v43, *(v41 + 1992), *(v40 + 72), "_kMDQueryScope");
  pushSkipCrashState();
  v275 = 0;
  memset(v274, 0, sizeof(v274));
  si_opt_cache_init(v274, *(v14 + 88));
  if (*(v7 + 696))
  {
    clear_lifting_rules(v7);
  }

  else
  {
    si_query_prepare_lifting(v266, v7, v274);
  }

  v269 = v14;
  v270 = v15;
  if (*(v7 + 672) == 1)
  {
    v44 = *(v266 + 60);
    if (v44 == 1)
    {
      v45 = "cs_priority";
    }

    else if (v44 == 3)
    {
      v45 = "cs_mail";
    }

    else
    {
      if (v44)
      {
        v46 = 2;
      }

      else
      {
        v46 = (v44 >> 1) - 1;
      }

      if (v46 >= 7)
      {
        v45 = "cs_default";
      }

      else
      {
        v45 = off_1E8196C28[v46];
      }
    }

    v47 = *(v266 + 2072);
    v258 = *(v9 + 608);
    v48 = *(v9 + 96);
    v49 = *(v9 + 32);
    v50 = *(v9 + 744);
    v51 = *(v9 + 704);
    v52 = *(v9 + 736);
    Count = *(v9 + 728);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    v257 = Count;
    v54 = *(v9 + 152) == 0;
    v259 = *(v9 + 656);
    theArray = *(v9 + 680);
    v56 = *(v9 + 712);
    v57 = *(v9 + 720);
    memset(&v282, 0, sizeof(v282));
    configureContext(&v282, v258, v47, v54, v45, v51, v57, v259, theArray);
    v254 = v45;
    if (!v282.var3)
    {
      v70 = *__error();
      v71 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v258;
        *&buf[12] = 2080;
        *&buf[14] = v45;
        _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_ERROR, "[qid=%lld][%s][POMMES][Generic] Failed to generate a POMMES query tree due to none bundleIDType", buf, 0x16u);
      }

      v72 = 0;
      v73 = 0;
      *__error() = v70;
      v74 = 0;
      v65 = v259;
      goto LABEL_91;
    }

    v255 = v49;
    v256 = v48;
    processContext(v56, &v282);
    v253 = *(&v282 + 7);
    v326 = 0;
    v324 = 0u;
    v325 = 0u;
    v323 = 0u;
    memset(v322, 0, sizeof(v322));
    stringForPRBundleIDType(v282.var3, v322);
    v321 = 0;
    v320 = 0u;
    v319 = 0u;
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v315 = 0u;
    stringForPRBundleIDType(v282.var4, &v315);
    v58 = *__error();
    v59 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134223106;
      *&buf[4] = v282.var0;
      *&buf[12] = 2080;
      *&buf[14] = v282.var1;
      *&buf[22] = 2080;
      v284 = v322;
      *v285 = 2080;
      *&v285[2] = &v315;
      *&v285[10] = 1024;
      *&v285[12] = *(&v282 + 28) & 1;
      *&v285[16] = 1024;
      *&v285[18] = (*(&v282 + 7) >> 2) & 1;
      *&v285[22] = 1024;
      v286 = (*(&v282 + 7) >> 3) & 1;
      v287 = 1024;
      v288 = (*(&v282 + 7) >> 4) & 1;
      v289 = 1024;
      v290 = (*(&v282 + 7) >> 6) & 1;
      v291 = 1024;
      v292 = (*(&v282 + 7) >> 7) & 1;
      v293 = 1024;
      v294 = (*(&v282 + 7) >> 9) & 1;
      v295 = 1024;
      v296 = (*(&v282 + 7) >> 10) & 1;
      v297 = 1024;
      v298 = (*(&v282 + 7) >> 11) & 1;
      v299 = 1024;
      v300 = (*(&v282 + 7) >> 12) & 1;
      v301 = 1024;
      v302 = (*(&v282 + 7) >> 13) & 1;
      v303 = 1024;
      v304 = (*(&v282 + 7) >> 14) & 1;
      v305 = 1024;
      v306 = (*(&v282 + 7) >> 15) & 1;
      v307 = 1024;
      v308 = HIWORD(*(&v282 + 7)) & 1;
      v309 = 1024;
      v310 = (*(&v282 + 7) >> 17) & 1;
      v311 = 1024;
      v312 = v282.var23 != 0;
      v313 = 1024;
      v314 = v282.var24 != 0;
      _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Context: {\n\tBundleIDs=%s,\n\tNonPhotosBundleIDs=%s,\n\tCoreSpotlight=%d,\n\tCommitted=%d,\n\tCtlCli=%d,\n\tMailCli=%d,\n\tPhotosCli=%d,\n\tSettingsCli=%d,\n\tSearchToolCli=%d,\n\tSpotlightUICli=%d,\n\tRewrite=%d,\n\tHasMail=%d,\n\tHasPhotos=%d,\n\tHasSafari=%d,\n\tHasNonPhotos=%d,\n\tUseQU=%d,\n\tUseLLM=%d,\n\taNNSearchParams=%d,\n\ttokenRewrites=%d,\n}", buf, 0x90u);
    }

    *__error() = v58;
    *(&v282 + 7) &= ~2u;
    v60 = v50;
    v61 = v50;
    v62 = v56;
    v63 = v52;
    v64 = pommesQueryTree(v48, v255, v61, v56, v257, v52, &v282);
    *v322 = v64;
    v65 = v259;
    if (v64)
    {
      v66 = v272;
      decorateExpandingFunctions(v64, *v272, v259, *(v272 + 360));
      db_optimize_query_tree(v322);
      v67 = *v322;
      v12 = 0x1EBF46000;
      if (*v322)
      {
        goto LABEL_79;
      }

      v68 = *__error();
      v69 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v258;
        *&buf[12] = 2080;
        *&buf[14] = v45;
      }
    }

    else
    {
      v68 = *__error();
      v75 = _SILogForLogForCategory(17);
      v66 = v272;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v258;
        *&buf[12] = 2080;
        *&buf[14] = v45;
      }

      v12 = 0x1EBF46000;
    }

    *__error() = v68;
    v67 = 0;
LABEL_79:
    *(&v282 + 7) |= 2u;
    v76 = pommesQueryTree(v256, v255, v60, v62, v257, v63, &v282);
    *v322 = v76;
    if (v76)
    {
      decorateExpandingFunctions(v76, *v66, v259, *(v66 + 360));
      db_optimize_query_tree(v322);
      v77 = *v322;
      if (*v322)
      {
        if ((~*(&v282 + 7) & 0x20200) == 0 || (*(&v282 + 28) & 0x40) != 0)
        {
          *(v263[1] + 697) = 1;
        }

        goto LABEL_90;
      }

      v78 = *__error();
      v79 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v258;
        *&buf[12] = 2080;
        *&buf[14] = v45;
        goto LABEL_88;
      }
    }

    else
    {
      v78 = *__error();
      v79 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v258;
        *&buf[12] = 2080;
        *&buf[14] = v45;
LABEL_88:
        _os_log_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, v80, buf, 0x16u);
      }
    }

    *__error() = v78;
    v77 = 0;
LABEL_90:
    v73 = v67;
    v74 = v77;
    v72 = (v253 >> 9) & 1;
LABEL_91:
    if (v282.var24)
    {
      CFRelease(v282.var24);
      v282.var24 = 0;
    }

    var2 = v282.var2;
    if (v282.var2)
    {
      if ((*(&v282 + 30) & 2) != 0)
      {
        if (*(v282.var2 + 6))
        {
          v82 = *(v282.var2 + 6);
          do
          {
            v83 = *v82;
            operator delete(v82);
            v82 = v83;
          }

          while (v83);
        }

        v84 = *(var2 + 4);
        *(var2 + 4) = 0;
        if (v84)
        {
          operator delete(v84);
        }

        if (var2[31] < 0)
        {
          operator delete(*(var2 + 1));
        }

        MEMORY[0x1C691FEF0](var2, 0x10B2C40BBB3F037);
      }

      v282.var2 = 0;
    }

    ClientInfo = getClientInfo(v65, &v282, 1);
    if (v73)
    {
      v86 = v254;
      db_dump_pommes_query_node_with_prefix(*(v272 + 608), v272, v254, "[retrieval]", v73, v72);
      db_free_query_node(*(v272 + 72));
      *(v272 + 72) = v73;
      v9 = v272;
      if (v74)
      {
        v87 = optimizeLiftingQuery(v266, v74, v274);
        db_dump_pommes_query_node_with_prefix(*(v272 + 608), v272, v254, "[ranking]", v87, v72);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v284 = &unk_1E8198ED0;
        *v285 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v87, buf, &__block_literal_global_25_15416);
        *(v272 + 272) = v88;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v284 = &unk_1E8198ED0;
        *v285 = &__block_literal_global_9564;
        db_query_tree_apply_block_with_meta(v88, buf, 0);
        db_free_query_node(v87);
        v89 = 1;
        v90 = 1;
      }

      else
      {
        v89 = 1;
        v90 = 0;
      }

      v2 = v273;
    }

    else
    {
      v89 = 0;
      v90 = 0;
      v9 = v272;
      v2 = v273;
      v86 = v254;
    }

    v91 = *__error();
    v92 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v93 = *(v9 + 608);
      *buf = 134219266;
      *&buf[4] = v93;
      *&buf[12] = 2080;
      *&buf[14] = v86;
      *&buf[22] = 2080;
      v284 = ClientInfo;
      *v285 = 1024;
      *&v285[2] = v89;
      *&v285[6] = 1024;
      *&v285[8] = v90;
      *&v285[12] = 2048;
      *&v285[14] = 0;
      _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] pQfPR: %s, retrieval: %d, ranking: %d, groups#: %ld", buf, 0x36u);
    }

    *__error() = v91;
    v14 = v269;
    v15 = v270;
  }

  *(v9 + 673) = 0;
  si_opt_cache_destroy(v274);
  v94 = *(v9 + 72);
  v95 = (v9 + 72);
  if (v94)
  {
    v96 = *(v9 + 88);
    if (v96)
    {
      *v95 = makeORNode(v96, v94, 0);
    }
  }

  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v97 = db_count_query_tree(*v95) + 1;
    if (v97 >= 0x1F6)
    {
      *v322 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      if (*v95)
      {
        v98 = v9 + 72;
      }

      else
      {
        v98 = 0;
      }

      if (_db_render_query_tree(v98))
      {
        v99 = *__error();
        v100 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          v101 = *(v9 + 32);
          *buf = 138412802;
          *&buf[4] = v101;
          *&buf[12] = 2048;
          *&buf[14] = v97 >> 1;
          *&buf[22] = 2080;
          v284 = *v322;
          _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "Large query (%@) with %zu nodes has query nodes: %s", buf, 0x20u);
        }

        *__error() = v99;
      }

      free(*v322);
    }
  }

  popSkipCrashState();
  v102 = v263;
  v103 = *v263;
  if ((*(*v263 + 2072) & 1) != 0 || !*(v103 + 56))
  {
    v104 = *(v103 + 1192);
    if (v104)
    {
      v105 = 2;
      goto LABEL_134;
    }

LABEL_135:
    v106 = 0;
    goto LABEL_136;
  }

  v104 = *(v103 + 1192);
  if (!v104)
  {
    goto LABEL_135;
  }

  v105 = 3;
LABEL_134:
  v106 = db_get_object_count(v104) < v105;
  v102 = v263;
  v103 = *v263;
LABEL_136:
  v107 = v102[1];
  if ((*(v107 + 356) & 1) == 0 && *(v103 + 2072) == 1)
  {
    v108 = v102[1];
    v109 = *(v107 + 656);
    if (v109)
    {
      HasPrefix = CFStringHasPrefix(v109, @"com.apple.omniSearch.");
      v111 = (v107 + 300);
      if (HasPrefix)
      {
        *v111 = 0x100040000000;
        v112 = 4096;
      }

      else
      {
        *v111 = 0x2003E4CCCCDLL;
        v112 = 2048;
      }

      v102 = v263;
    }

    else
    {
      *(v107 + 300) = 0x2003E4CCCCDLL;
      v112 = 2048;
    }

    *(v107 + 316) = 1101004800;
    *(v107 + 320) = v112;
    *(v107 + 308) = 0x80041A00000;
    v103 = *v102;
  }

  if (!*(v103 + 1192) || (v113 = v102[1], (*(v113 + 201) & 4) != 0))
  {
    v116 = 0;
  }

  else
  {
    v114 = *(v113 + 72);
    *&v315 = MEMORY[0x1E69E9820];
    *(&v315 + 1) = 0x40000000;
    *&v316 = __si_setup_run_stubquery_block_invoke;
    *(&v316 + 1) = &__block_descriptor_tmp_131_9877;
    *&v317 = v102;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v284 = &unk_1E8198ED0;
    *v285 = &v315;
    db_query_tree_apply_block_with_meta(v114, buf, &__block_literal_global_135);
    v102 = v263;
    v116 = v115 == 0;
  }

  atomic_fetch_add_explicit((v102[2] + 64), 1u, memory_order_relaxed);
  priority = query_priority(v102[1]);
  if (priority <= 1)
  {
    if (priority)
    {
      v118 = 17;
      v119 = 15;
    }

    else
    {
      v118 = 9;
      v119 = 14;
    }

    goto LABEL_155;
  }

  if (priority == 2)
  {
    v118 = 25;
    v119 = 16;
LABEL_155:
    v120 = 0;
    v121 = v118;
    goto LABEL_157;
  }

  v121 = 33;
  v120 = 1;
  v119 = 17;
LABEL_157:
  v122 = v121;
  v260 = v120;
  v123 = v119;
  v124 = CFAbsoluteTimeGetCurrent();
  v125 = v263;
  *(v263 + 3) = v124;
  v126 = *(*v263 + 8 * v123 + 1008);
  if (!v126)
  {
    v132 = *(v263[1] + 200);
    v133 = v263[1];
    v127 = v264;
LABEL_211:
    if ((v132 & 0x40000) == 0)
    {
      si_querypipe_remove_process(v263[2], v133, 0, 1);
      v125 = v263;
    }

    v201 = v125[4];
    if (v201)
    {
      CFRelease(v201);
      v125 = v263;
    }

    free(v125);
    goto LABEL_216;
  }

  v127 = v264;
  if (v106 || v116)
  {
    v128 = v263[1];
    if ((*(v128 + 200) & 0x3044000) == 0)
    {
      v132 = *(v128 + 200);
      v133 = v263[1];
      goto LABEL_211;
    }
  }

  v129 = v263[4];
  if (v129)
  {
    v130 = CFRetain(v129);
    v125 = v263;
    v131 = v130;
  }

  else
  {
    v131 = 0;
  }

  v134 = v125[1];
  *(v134 + 664) = v131;
  if (*(v134 + 152) >= 5u)
  {
    *(v125[2] + 98) = 1;
    v134 = v125[1];
    if (!*(v134 + 160))
    {
      *(v125[2] + 99) = 0;
      v134 = v125[1];
    }
  }

  v135 = *v125;
  v262 = v122;
  v261 = v126;
  if (*(*v125 + 2072) == 1)
  {
    v252 = *v125;
    v136 = *(v134 + 72);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v284 = &unk_1E8198ED0;
    *v285 = &__block_literal_global_403;
    db_query_tree_apply_block_with_meta(v136, buf, &__block_literal_global_406);
    *(v134 + 72) = v137;
    v138 = *(v134 + 256);
    if (v138 >= 1)
    {
      v139 = MEMORY[0x1E69E9820];
      v140 = 0;
      do
      {
        v141 = v140;
        v142 = *(*(v134 + 248) + 8 * v140);
        *buf = v139;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v284 = &unk_1E8198ED0;
        *v285 = &__block_literal_global_403;
        db_query_tree_apply_block_with_meta(v142, buf, &__block_literal_global_406);
        *(*(v134 + 248) + 8 * v141) = v143;
        v140 = v141 + 1;
      }

      while (v138 != v141 + 1);
    }

    v251 = *(v134 + 288);
    if (v251 >= 1)
    {
      v144 = 0;
      v145 = *(v134 + 264);
      do
      {
        v146 = v145;
        v147 = (v145 + 24 * v144);
        if (v147[1] >= 1)
        {
          v148 = 0;
          v149 = MEMORY[0x1E69E9820];
          v150 = v147;
          do
          {
            v151 = *(*v150 + 8 * v148);
            *buf = v149;
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            v284 = &unk_1E8198ED0;
            *v285 = &__block_literal_global_403;
            db_query_tree_apply_block_with_meta(v151, buf, &__block_literal_global_406);
            *(*(*(v134 + 264) + 24 * v144) + 8 * v148++) = v152;
            v150 = (*(v134 + 264) + 24 * v144);
          }

          while (v148 < v150[1]);
          v146 = *(v134 + 264);
        }

        v145 = v146;
        ++v144;
      }

      while (v144 != v251);
    }

    *v322 = MEMORY[0x1E69E9820];
    *&v322[8] = 0x40000000;
    *&v322[16] = __queryRemapFieldsForStore_block_invoke_3;
    *&v322[24] = &__block_descriptor_tmp_411_9878;
    *&v322[32] = v252;
    v153 = *(v134 + 72);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v284 = &unk_1E8198ED0;
    *v285 = v322;
    db_query_tree_apply_block_with_meta(v153, buf, &__block_literal_global_414);
    *(v134 + 72) = v154;
    if (*(v134 + 256) >= 1)
    {
      v155 = MEMORY[0x1E69E9820];
      v156 = 0;
      do
      {
        v157 = v156;
        v158 = *(*(v134 + 248) + 8 * v156);
        *buf = v155;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v284 = &unk_1E8198ED0;
        *v285 = v322;
        db_query_tree_apply_block_with_meta(v158, buf, &__block_literal_global_414);
        *(*(v134 + 248) + 8 * v157) = v159;
        v156 = v157 + 1;
      }

      while (v157 + 1 < *(v134 + 256));
    }

    v12 = 0x1EBF46000;
    if (*(v134 + 288) >= 1)
    {
      v160 = 0;
      v161 = *(v134 + 288);
      v162 = *(v134 + 264);
      do
      {
        v163 = v162;
        v164 = (v162 + 24 * v160);
        v165 = v161;
        v166 = v163;
        if (v164[1] >= 1)
        {
          v167 = 0;
          v168 = MEMORY[0x1E69E9820];
          v169 = v164;
          do
          {
            v170 = *(*v169 + 8 * v167);
            *buf = v168;
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            v284 = &unk_1E8198ED0;
            *v285 = v322;
            db_query_tree_apply_block_with_meta(v170, buf, &__block_literal_global_414);
            *(*(*(v134 + 264) + 24 * v160) + 8 * v167++) = v171;
            v169 = (*(v134 + 264) + 24 * v160);
          }

          while (v167 < v169[1]);
          v165 = *(v134 + 288);
          v166 = *(v134 + 264);
          v12 = 0x1EBF46000;
        }

        v162 = v166;
        ++v160;
        v161 = v165;
      }

      while (v160 < v165);
    }
  }

  else
  {
    v172 = si_attrs_remapping_copy(*(v134 + 16), (*(v135 + 6584) >> 6) & 1);
    if (v172)
    {
      v173 = v172;
      CFRelease(*(v134 + 16));
      *(v134 + 16) = v173;
    }

    v174 = si_attrs_remapping_copy(*(v134 + 40), (*(v135 + 6584) >> 6) & 1);
    if (v174)
    {
      v175 = v174;
      CFRelease(*(v134 + 40));
      *(v134 + 40) = v175;
    }

    if ((*(v135 + 6584) & 0x40) != 0)
    {
      v176 = si_cab_attr_rewriteDict();
    }

    else
    {
      v176 = si_attr_rewriteDict();
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __queryRemapFieldsForStore_block_invoke_5;
    v284 = &__block_descriptor_tmp_431;
    *v285 = v134;
    *&v285[8] = v135;
    *&v285[16] = v176;
    v177 = *(v134 + 72);
    *v322 = MEMORY[0x1E69E9820];
    *&v322[8] = 0x40000000;
    *&v322[16] = __db_query_tree_apply_block_block_invoke;
    *&v322[24] = &unk_1E8198ED0;
    *&v322[32] = buf;
    db_query_tree_apply_block_with_meta(v177, v322, &__block_literal_global_434);
    *(v134 + 72) = v178;
    if (*(v134 + 256) >= 1)
    {
      v179 = MEMORY[0x1E69E9820];
      v180 = 0;
      do
      {
        v181 = v180;
        v182 = *(*(v134 + 248) + 8 * v180);
        *v322 = v179;
        *&v322[8] = 0x40000000;
        *&v322[16] = __db_query_tree_apply_block_block_invoke;
        *&v322[24] = &unk_1E8198ED0;
        *&v322[32] = buf;
        db_query_tree_apply_block_with_meta(v182, v322, &__block_literal_global_434);
        *(*(v134 + 248) + 8 * v181) = v183;
        v180 = v181 + 1;
      }

      while (v181 + 1 < *(v134 + 256));
    }

    if (*(v134 + 288) >= 1)
    {
      v184 = 0;
      v185 = *(v134 + 288);
      v186 = *(v134 + 264);
      do
      {
        v187 = v186;
        v188 = (v186 + 24 * v184);
        v189 = v185;
        v190 = v187;
        if (v188[1] >= 1)
        {
          v191 = 0;
          v192 = MEMORY[0x1E69E9820];
          v193 = v188;
          do
          {
            v194 = *(*v193 + 8 * v191);
            *v322 = v192;
            *&v322[8] = 0x40000000;
            *&v322[16] = __db_query_tree_apply_block_block_invoke;
            *&v322[24] = &unk_1E8198ED0;
            *&v322[32] = buf;
            db_query_tree_apply_block_with_meta(v194, v322, &__block_literal_global_434);
            *(*(*(v134 + 264) + 24 * v184) + 8 * v191++) = v195;
            v193 = (*(v134 + 264) + 24 * v184);
          }

          while (v191 < v193[1]);
          v189 = *(v134 + 288);
          v190 = *(v134 + 264);
          v12 = 0x1EBF46000uLL;
        }

        v186 = v190;
        ++v184;
        v185 = v189;
      }

      while (v184 < v189);
    }
  }

  atomic_fetch_add((v263[1] + 584), 1u);
  atomic_fetch_add(v263[2], 1u);
  atomic_fetch_add_explicit((v263[2] + 64), 1u, memory_order_relaxed);
  v196 = si_querypipe_copy_jobid(v263[2]);
  v197 = v263;
  v198 = v196;
  v199 = v263[1];
  v9 = v272;
  v2 = v273;
  v127 = v264;
  if ((*(v199 + 152) - 1) >= 2 && (*(v199 + 200) & 0x10000400) == 0)
  {
    v205 = *v263;
    if ((v260 & *(*v263 + 2072)) != 1)
    {
      if (!v196)
      {
        goto LABEL_208;
      }

      goto LABEL_251;
    }

    v206 = *(v199 + 664);
    if (!v206)
    {
      v209 = 0;
      goto LABEL_248;
    }

    if (CFArrayGetCount(*(v199 + 664)) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v206, 0);
      v208 = CFGetTypeID(ValueAtIndex);
      if (v208 != CFStringGetTypeID())
      {
        v209 = 0;
        v9 = v272;
        v2 = v273;
        goto LABEL_247;
      }

      v9 = v272;
      v2 = v273;
      if (CFStringHasPrefix(ValueAtIndex, @"com.apple"))
      {
        if (tag_is_excepted_once != -1)
        {
          dispatch_once(&tag_is_excepted_once, &__block_literal_global_391);
        }

        v209 = CFSetContainsValue(tag_is_excepted_exceptedIds, ValueAtIndex) != 0;
        goto LABEL_247;
      }
    }

    v209 = 0;
LABEL_247:
    v197 = v263;
LABEL_248:
    if (v209 || !v198)
    {
      goto LABEL_208;
    }

    v205 = *v197;
LABEL_251:
    v217 = *(v199 + 664);
    if (v217)
    {
      if (*(v205 + 2072) == 1 && CFArrayGetCount(*(v199 + 664)) == 1)
      {
        v218 = CFArrayGetValueAtIndex(v217, 0);
        v197 = v263;
        if (v218 == 1)
        {
          goto LABEL_208;
        }

        v219 = CFEqual(v218, @"com.apple.searchd");
        v197 = v263;
        if (v219)
        {
          goto LABEL_208;
        }
      }

      pthread_mutex_lock((v205 + 1320));
      v220 = *(v205 + 1152);
      if (v220 && si_peek_queue_for_tags(v220, v217))
      {
        if (*(v205 + 2072) == 1)
        {
          v221 = *__error();
          v222 = _SILogForLogForCategory(1);
          v223 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v222, v223))
          {
            *buf = 138412290;
            *&buf[4] = v217;
            _os_log_impl(&dword_1C278D000, v222, v223, "long defer query for %@", buf, 0xCu);
          }

          *__error() = v221;
          v9 = v272;
          v2 = v273;
          v12 = 0x1EBF46000uLL;
        }

        si_enqueue_barrier_routine(v205, v198, enqueueQuery, v263, 0x12u);
        pthread_mutex_unlock((v205 + 1320));
        if (*(v205 + 2072) == 1)
        {
          v224 = *__error();
          v225 = _SILogForLogForCategory(1);
          v226 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v225, v226))
          {
            *buf = 138412290;
            *&buf[4] = v217;
            _os_log_impl(&dword_1C278D000, v225, v226, "long defer query for %@", buf, 0xCu);
          }

          *__error() = v224;
          v9 = v272;
          v2 = v273;
        }

LABEL_275:
        if (*(v205 + 2072) == 1)
        {
          v238 = *__error();
          v239 = _SILogForLogForCategory(1);
          v240 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v239, v240))
          {
            *buf = 138412290;
            *&buf[4] = v217;
            _os_log_impl(&dword_1C278D000, v239, v240, "do defer query for %@", buf, 0xCu);
          }

          *__error() = v238;
        }

        v241 = *__error();
        v242 = _SILogForLogForCategory(3);
        if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
        {
          v243 = *(v199 + 608);
          v244 = *(v199 + 616);
          *buf = 134218240;
          *&buf[4] = v243;
          *&buf[12] = 2048;
          *&buf[14] = v244;
          _os_log_impl(&dword_1C278D000, v242, OS_LOG_TYPE_DEFAULT, "Stalling qid=(%lld,%lld) because the task has data in the set queue", buf, 0x16u);
        }

        *__error() = v241;
        v14 = v269;
        v15 = v270;
        v127 = v264;
        goto LABEL_209;
      }

      pthread_mutex_unlock((v205 + 1320));
      v234 = *(v205 + 1048);
      if (v234 && si_peek_queue_for_tags(v234, v217))
      {
        if (*(v205 + 2072) == 1)
        {
          v235 = *__error();
          v236 = _SILogForLogForCategory(1);
          v237 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v236, v237))
          {
            *buf = 138412290;
            *&buf[4] = v217;
            _os_log_impl(&dword_1C278D000, v236, v237, "defer query for %@", buf, 0xCu);
          }

          *__error() = v235;
          v9 = v272;
          v2 = v273;
          v12 = 0x1EBF46000uLL;
        }

        si_enqueue_barrier_routine(v205, v198, enqueueQuery, v263, 5u);
        goto LABEL_275;
      }

      v197 = v263;
      if (*(v205 + 2072) != 1)
      {
        goto LABEL_208;
      }

      v227 = *__error();
      v245 = _SILogForLogForCategory(1);
      v246 = 2 * (*(v12 + 2768) < 4);
      if (os_log_type_enabled(v245, v246))
      {
        *buf = 138412290;
        *&buf[4] = v217;
        v230 = "don't defer query for %@";
        v231 = v245;
        v232 = v246;
        v233 = 12;
        goto LABEL_285;
      }
    }

    else
    {
      v227 = *__error();
      v228 = _SILogForLogForCategory(1);
      v229 = 2 * (*(v12 + 2768) < 4);
      if (os_log_type_enabled(v228, v229))
      {
        *buf = 0;
        v230 = "no tags";
        v231 = v228;
        v232 = v229;
        v233 = 2;
LABEL_285:
        _os_log_impl(&dword_1C278D000, v231, v232, v230, buf, v233);
      }
    }

    *__error() = v227;
    v9 = v272;
    v2 = v273;
    v127 = v264;
    v197 = v263;
  }

LABEL_208:
  *buf = 0;
  v200 = si_backtrace_routine_resolve(*v197, *(v197[1] + 656), queryGo, v197, buf);
  si_enqueue_work_with_qos(v261, v262, v200, *buf);
  v14 = v269;
  v15 = v270;
  if (v198)
  {
LABEL_209:
    si_release_qid(v198);
  }

LABEL_216:
  v7 = v271;
  if (!*(v15 + 36) && (*(v9 + 201) & 4) != 0)
  {
    v202 = *(v9 + 176);
    if ((!v202 || CFArrayGetCount(v202)) && (*(v266 + 828) & 0xC) == 0)
    {
      v210 = si_add_livequery(v266, v9, v14);
      pthread_mutex_lock((v267 + 6));
      if (*(v15 + 36))
      {
        pthread_mutex_unlock((v267 + 6));
        v127 = v264;
        if (v210)
        {
          si_remove_livequery(v266, v210);
          si_livequery_release(v210);
        }
      }

      else
      {
        *(v15 + 16) = v210;
        pthread_mutex_unlock((v267 + 6));
        v127 = v264;
      }
    }
  }

  v203 = threadData[9 * v278 + 1] + 320 * v277;
  *(v203 + 312) = v127;
  v204 = *(v203 + 232);
  if (v204)
  {
    v204(*(v203 + 288));
  }

  dropThreadId(v278, 0, add_explicit + 1);
LABEL_7:
  v18 = CFAbsoluteTimeGetCurrent() - Current;
  *(v9 + 392) = *(v9 + 392) + v18;
  siquery_addactivetime(v9, v18);
  if (*(v12 + 2768) >= 5)
  {
    v213 = *__error();
    v214 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
    {
      v215 = CFAbsoluteTimeGetCurrent() - Current;
      v216 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v215;
      *&buf[12] = 1024;
      *&buf[14] = v216;
      _os_log_impl(&dword_1C278D000, v214, OS_LOG_TYPE_DEFAULT, "Search was active (setup) for %f seconds on the scheduler at qos 0x%x", buf, 0x12u);
    }

    *__error() = v213;
  }

  si_querypipe_remove_process(v14, v9, 0, 0);
  si_querypipe_release(v14);
  if (atomic_fetch_add((v7 + 584), 0xFFFFFFFF) == 1)
  {
    si_query_free(v9);
  }

  si_release_qid(v15);
  free(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void *__db_clone_query_node_block_invoke_2(int a1, void *a2, void *a3, void *a4)
{
  v4 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      v5 = a4;
      db_query_tree_apply_block_with_meta(a3, &v7, 0);
      a4 = v5;
    }

    if (a4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v7, 0);
    }

    free(v4);
    return 0;
  }

  return v4;
}

uint64_t __db_optimize_query_tree_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 == 32)
  {
    v10 = *(a2 + 16);
    v11 = (v10 + 52);
    if (!v10)
    {
      v11 = (a2 + 72);
    }

    *(a2 + 72) = *v11;
    if (v10)
    {
      free_qp(v10);
      *(a2 + 16) = 0;
    }

    v12 = *a2;
    if (*a2)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v12, &v15, 0);
      *a2 = 0;
    }

    v13 = *(a2 + 8);
    if (v13)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v13, &v15, 0);
      *(a2 + 8) = 0;
    }
  }

  else if (v3 == 16)
  {
    v4 = *(a2 + 16);
    v5 = (a2 + 72);
    if (v4)
    {
      v6 = (v4 + 56);
    }

    else
    {
      v6 = (a2 + 72);
    }

    *(a2 + 72) = *v6;
    v7 = *a2;
    if (*a2)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v7, &v15, 0);
      *a2 = 0;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v8, &v15, 0);
      *(a2 + 8) = 0;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      free_qp(v9);
      *(a2 + 16) = 0;
    }

    if (*v5 != 0.0)
    {
      *(a2 + 48) = 32;
    }
  }

  return a2;
}

os_signpost_id_t SIExecuteQueryWithResultsCallbackForTags(void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v126 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x70uLL, 0x10200408DCF1539uLL);
  atomic_store(2u, v8);
  pthread_mutex_init((v8 + 48), 0);
  *(v8 + 8) = 4;
  if (dword_1EBF46AD0 >= 5)
  {
    v97 = *__error();
    v98 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = *(a2 + 8);
      *buf = 138412290;
      *&buf[4] = v99;
      _os_log_impl(&dword_1C278D000, v98, OS_LOG_TYPE_DEFAULT, "Execute query %@", buf, 0xCu);
    }

    *__error() = v97;
  }

  v118 = a2;
  *(v8 + 1) = a1;
  v117 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600400421BFCDuLL);
  if (!a1[180])
  {
    si_storecookieRef(a1);
  }

  v9 = a1[178];
  v10 = a1[179];
  v11 = *a2;
  v12 = *(a2 + 200);
  v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A004060519A17uLL);
  atomic_store(1u, v13);
  *(v13 + 6) = v9;
  *(v13 + 7) = v10;
  v14 = v13;
  atomic_fetch_add((a3 + 8), 1u);
  *(v13 + 1) = a3;
  v15 = *MEMORY[0x1E695E480];
  *(v13 + 5) = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
  atomic_fetch_add(v8, 1u);
  *(v14 + 4) = v8;
  if (v11)
  {
    CFRetain(v11);
  }

  *(v14 + 11) = v11;
  *(v14 + 99) = 1;
  *(v14 + 100) = (v12 & 0x40000) != 0;
  v114 = v14;
  *(v14 + 96) = 0;
  v16 = *__error();
  v17 = _SILogForLogForCategory(1);
  v18 = 2 * (dword_1EBF46AD0 < 4);
  v19 = v118;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v118 + 8);
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&dword_1C278D000, v17, v18, "Starting query %@", buf, 0xCu);
  }

  *__error() = v16;
  *v117 = a1;
  v21 = malloc_type_malloc(0x300uLL, 0x10F00400B877FCEuLL);
  memcpy(v21, v118, 0x300uLL);
  atomic_store(1u, v21 + 146);
  if (dword_1EBF46AD0 >= 5)
  {
    v100 = *__error();
    v101 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v118;
      _os_log_impl(&dword_1C278D000, v101, OS_LOG_TYPE_DEFAULT, "%p: Query completely done", buf, 0xCu);
    }

    *__error() = v100;
  }

  v23 = *(v118 + 8);
  if (v23)
  {
    CFRetain(*(v118 + 8));
  }

  *(v21 + 1) = v23;
  v24 = *(v118 + 16);
  if (v24)
  {
    CFRetain(*(v118 + 16));
  }

  *(v21 + 2) = v24;
  v25 = *(v118 + 40);
  if (v25)
  {
    CFRetain(*(v118 + 40));
  }

  *(v21 + 5) = v25;
  v26 = *(v118 + 48);
  if (v26)
  {
    CFRetain(*(v118 + 48));
  }

  *(v21 + 6) = v26;
  v21[14] = *(v118 + 56);
  v27 = *(v118 + 656);
  if (v27)
  {
    CFRetain(*(v118 + 656));
  }

  *(v21 + 82) = v27;
  v28 = *(v118 + 192);
  if (v28)
  {
    CFRetain(*(v118 + 192));
  }

  *(v21 + 24) = v28;
  v29 = *(v118 + 176);
  if (v29)
  {
    CFRetain(*(v118 + 176));
  }

  *(v21 + 22) = v29;
  v30 = *(v118 + 184);
  if (v30)
  {
    CFRetain(*(v118 + 184));
  }

  *(v21 + 23) = v30;
  v31 = *(v118 + 240);
  if (v31)
  {
    CFRetain(*(v118 + 240));
  }

  *(v21 + 30) = v31;
  v32 = *(v118 + 576);
  if (v32)
  {
    MutableCopy = RLEOIDArrayCreateMutableCopy(v15, v22, v32);
  }

  else
  {
    MutableCopy = 0;
  }

  *(v21 + 72) = MutableCopy;
  v34 = *(v118 + 72);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v124 = &unk_1E8198ED0;
  v125 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v34, buf, &__block_literal_global_25_15416);
  *(v21 + 9) = v35;
  v36 = *(v118 + 64);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v124 = &unk_1E8198ED0;
  v125 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v36, buf, &__block_literal_global_25_15416);
  *(v21 + 8) = v37;
  v38 = *(v118 + 80);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v124 = &unk_1E8198ED0;
  v125 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v38, buf, &__block_literal_global_25_15416);
  *(v21 + 10) = v39;
  v40 = *(v118 + 88);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v124 = &unk_1E8198ED0;
  v125 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v40, buf, &__block_literal_global_25_15416);
  *(v21 + 11) = v41;
  v42 = *(v118 + 96);
  if (v42)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v124 = &unk_1E8198ED0;
    v125 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v42, buf, &__block_literal_global_25_15416);
  }

  *(v21 + 12) = v42;
  *(v21 + 672) = *(v118 + 672);
  v43 = *(v118 + 680);
  if (v43)
  {
    CFRetain(*(v118 + 680));
  }

  *(v21 + 85) = v43;
  v44 = *(v118 + 688);
  if (v44)
  {
    CFRetain(*(v118 + 688));
  }

  *(v21 + 86) = v44;
  *(v21 + 696) = *(v118 + 696);
  v45 = *(v118 + 704);
  if (v45)
  {
    CFRetain(*(v118 + 704));
  }

  *(v21 + 88) = v45;
  v46 = *(v118 + 712);
  if (v46)
  {
    CFRetain(*(v118 + 712));
  }

  *(v21 + 89) = v46;
  v47 = *(v118 + 720);
  if (v47)
  {
    CFRetain(*(v118 + 720));
  }

  *(v21 + 90) = v47;
  *(v21 + 27) = *(v118 + 216);
  v48 = *(v118 + 24);
  if (v48)
  {
    CFRetain(*(v118 + 24));
  }

  *(v21 + 3) = v48;
  if (*(v118 + 120))
  {
    v102 = __si_assert_copy_extra_661(-1);
    v103 = v102;
    v104 = "";
    if (v102)
    {
      v104 = v102;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1139, "query->_liveUniquedSet==0", v104);
LABEL_116:
    free(v103);
    if (__valid_fs(-1))
    {
      v111 = 2989;
    }

    else
    {
      v111 = 3072;
    }

    *v111 = -559038737;
    abort();
  }

  if (*(v118 + 104))
  {
    v105 = __si_assert_copy_extra_661(-1);
    v103 = v105;
    v106 = "";
    if (v105)
    {
      v106 = v105;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1140, "query->_liveUniquedQuery==0", v106);
    goto LABEL_116;
  }

  if (*(v118 + 112))
  {
    v107 = __si_assert_copy_extra_661(-1);
    v103 = v107;
    v108 = "";
    if (v107)
    {
      v108 = v107;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1141, "query->_liveUniquedFilterQuery==0", v108);
    goto LABEL_116;
  }

  if (*(v118 + 128))
  {
    v109 = __si_assert_copy_extra_661(-1);
    v103 = v109;
    v110 = "";
    if (v109)
    {
      v110 = v109;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1142, "query->queryNodes==0", v110);
    goto LABEL_116;
  }

  v112 = a1;
  v113 = v8;
  if (*(v118 + 248))
  {
    v49 = *(v118 + 256);
    *(v21 + 32) = v49;
    *(v21 + 31) = malloc_type_malloc(8 * v49, 0x2004093837F09uLL);
    if (*(v118 + 256) >= 1)
    {
      v50 = 0;
      v51 = MEMORY[0x1E69E9820];
      do
      {
        v52 = *(*(v118 + 248) + 8 * v50);
        *buf = v51;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v124 = &unk_1E8198ED0;
        v125 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v52, buf, &__block_literal_global_25_15416);
        *(*(v21 + 31) + 8 * v50++) = v53;
      }

      while (v50 < *(v118 + 256));
    }
  }

  v119 = v21;
  if (*(v118 + 264))
  {
    v54 = *(v118 + 288);
    *(v21 + 36) = v54;
    *(v21 + 33) = malloc_type_malloc(24 * v54, 0x1080040468F112EuLL);
    if (*(v118 + 288) >= 1)
    {
      v55 = 0;
      do
      {
        v56 = *(v21 + 33);
        v57 = *(v19 + 264) + 24 * v55;
        v58 = *v57;
        v59 = *(v57 + 8);
        v120 = *(v57 + 16);
        v121 = v56;
        v122 = malloc_type_malloc(8 * v59, 0x2004093837F09uLL);
        if (v59 >= 1)
        {
          v60 = v122;
          v61 = v59;
          do
          {
            v62 = *v58;
            if (*v58)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __db_query_tree_apply_block_block_invoke;
              v124 = &unk_1E8198ED0;
              v125 = &__block_literal_global_21_15415;
              db_query_tree_apply_block_with_meta(v62, buf, &__block_literal_global_25_15416);
            }

            *v60++ = v62;
            ++v58;
            --v61;
          }

          while (v61);
        }

        v63 = (v121 + 24 * v55);
        *v63 = v122;
        v63[1] = v59;
        v21 = v119;
        v63[2] = v120;
        ++v55;
        v19 = v118;
      }

      while (v55 < *(v118 + 288));
    }
  }

  v64 = *(v19 + 280);
  if (v64)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v124 = &unk_1E8198ED0;
    v125 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v64, buf, &__block_literal_global_25_15416);
    *(v21 + 35) = v65;
  }

  v66 = *(v19 + 224);
  if (v66)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v124 = &unk_1E8198ED0;
    v125 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v66, buf, &__block_literal_global_25_15416);
    *(v119 + 28) = v67;
  }

  v68 = *v19;
  if (*v19)
  {
    CFRetain(*v19);
  }

  *v119 = v68;
  v69 = *(v19 + 32);
  if (v69)
  {
    CFRetain(*(v19 + 32));
  }

  *(v119 + 4) = v69;
  v70 = *(v19 + 272);
  if (v70)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v124 = &unk_1E8198ED0;
    v125 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v70, buf, &__block_literal_global_25_15416);
    *(v119 + 34) = v71;
  }

  if (*(v19 + 672) == 1 && (v72 = *(v19 + 728)) != 0 && (Count = CFArrayGetCount(v72)) != 0)
  {
    v74 = Count;
    v75 = *(v19 + 728);
    *(v119 + 91) = v75;
    if (v75)
    {
      CFRetain(v75);
    }

    v76 = v119;
    *(v119 + 92) = malloc_type_malloc(8 * v74, 0x2004093837F09uLL);
    if (v74 >= 1)
    {
      v77 = 0;
      v78 = MEMORY[0x1E69E9820];
      do
      {
        v79 = *(*(v19 + 736) + 8 * v77);
        *buf = v78;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v124 = &unk_1E8198ED0;
        v125 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v79, buf, &__block_literal_global_25_15416);
        *(*(v119 + 92) + 8 * v77++) = v80;
      }

      while (v74 != v77);
    }
  }

  else
  {
    v76 = v119;
    *(v119 + 182) = 0u;
  }

  v81 = *(v19 + 744);
  if (v81)
  {
    CFRetain(*(v19 + 744));
    *(v76 + 93) = v81;
  }

  *(v76 + 761) = *(v19 + 761);
  v82 = *(v19 + 752);
  if (v82)
  {
    CFRetain(*(v19 + 752));
  }

  *(v119 + 94) = v82;
  v83 = malloc_type_malloc(8 * *(v19 + 592), 0x100004000313F17uLL);
  *(v119 + 75) = v83;
  memcpy(v83, *(v19 + 600), 8 * *(v19 + 592));
  v117[1] = v119;
  v119[39] = (*(v112 + 15) == 1) | (2 * (*(v112 + 15) == 3));
  *(v113 + 24) = v114;
  atomic_fetch_add(v114, 1u);
  v117[2] = v114;
  if (a4)
  {
    v84 = *(v114 + 3);
    if (v84)
    {
      _Block_release(v84);
    }

    *(v114 + 3) = _Block_copy(a4);
  }

  atomic_fetch_add_explicit(v114 + 16, 1u, memory_order_relaxed);
  v85 = a5;
  if (a5)
  {
    v85 = CFRetain(a5);
  }

  v117[4] = v85;
  v86 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  *v86 = v117;
  v86[1] = v113;
  priority = query_priority(v117[1]);
  v88 = qword_1C2BFB1D0[priority];
  *(v113 + 32) = 4;
  kdebug_trace();
  Log = _MDPerf_QueryLog();
  if (v113 + 1 >= 2)
  {
    v93 = Log;
    if (os_signpost_enabled(Log))
    {
      v94 = *(v117[1] + 608);
      v95 = qos_class_self();
      v96 = *(v113 + 32);
      *buf = 134218496;
      *&buf[4] = v94;
      *&buf[12] = 1024;
      *&buf[14] = v95;
      *&buf[18] = 1024;
      *&buf[20] = v96;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v93, OS_SIGNPOST_INTERVAL_BEGIN, v113, "Job", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x JobType=%{signpost.description:attribute}d", buf, 0x18u);
    }
  }

  *(*v86 + 3) = CFAbsoluteTimeGetCurrent();
  v90 = v112[v88 + 126];
  if (v90)
  {
    si_enqueue_work_with_qos(v90, 8 * priority + 9, finishRegisterQuery, v86);
  }

  else
  {
    finishRegisterQuery(v86, 1);
  }

  v91 = *MEMORY[0x1E69E9840];
  return v113;
}