uint64_t _performSearch(SISearchCtx_METADATA *this, PartialQueryResults *a2)
{
  v248 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v211 = *__error();
    v212 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "_performSearch";
      _os_log_impl(&dword_1C278D000, v212, OS_LOG_TYPE_DEFAULT, "Enter %s", buf, 0xCu);
    }

    *__error() = v211;
  }

  v4 = *(*(this + 3) + 2072);
  v5 = *(this + 1);
  v6 = 320;
  if (*(this + 644))
  {
    v6 = 304;
  }

  v7 = *(v5 + v6);
  v8 = *(this + 23);
  if (v8 || (v9 = v7, *(this + 22)))
  {
    v9 = v7;
    if (*(*(this + 13) + 99) == 1)
    {
      v10 = *(this + 40);
      v9 = v7;
      if (v10 <= 6)
      {
        if (((1 << v10) & 0x4A) != 0)
        {
          updated = SISearchCtx_METADATA::updateGroupingCount(this);
          v15 = updated;
          MEMORY[0x1EEE9AC00](updated);
          v17 = &v227 - v16;
          bzero(&v227 - v16, v18);
          if (v15 < 2)
          {
            goto LABEL_24;
          }

          v9 = 0;
          v19 = v15;
          for (i = 1; i != v19; ++i)
          {
            if (!v4 || CFBitVectorGetBitAtIndex(*(*(this + 3) + 2096), i))
            {
              v21 = *(this + 22);
              v206 = v21 <= *&v17[4 * i];
              v22 = v9 + 4 * v21;
              if (!v206)
              {
                v9 = v22;
              }
            }
          }

          if (!v9)
          {
LABEL_24:
            v9 = 8 * *(this + 22);
          }
        }

        else if (((1 << v10) & 0x24) != 0 || (v9 = v7, v10 == 4) && (v9 = v7, *(this + 22)))
        {
          v9 = v7;
          if (!*(v5 + 288))
          {
            v9 = v7;
            if (!*(v5 + 272))
            {
              v11 = atomic_load(this + 68);
              if (v8 <= v11)
              {
LABEL_304:
                v61 = 0;
                goto LABEL_329;
              }

              v12 = *(this + 23);
              v13 = atomic_load(this + 68);
              v9 = v12 - v13;
            }
          }
        }
      }
    }
  }

  v228 = v5;
  v23 = *(this + 1);
  v24 = *(this + 168);
  if (v24 >= 0xA)
  {
    v25 = 10;
  }

  else
  {
    v25 = *(this + 168);
  }

  v26 = v9 + v9 * (*(v23 + 480) + (1 << v25));
  *(this + 168) = v24 + 1;
  if (!v26)
  {
    v26 = 4096;
  }

  if (v26 >= v7)
  {
    v27 = v7;
  }

  else
  {
    v27 = v26;
  }

  if (*(this + 208) >= 2u)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v23 + 16);
  if (v29)
  {
    v249.length = CFArrayGetCount(*(v23 + 16));
    v249.location = 0;
    if (CFArrayContainsValue(v29, v249, @"_kMDItemSDBInfo"))
    {
      goto LABEL_42;
    }

    v30 = *(*(this + 1) + 16);
    v250.length = CFArrayGetCount(v30);
    v250.location = 0;
    if (CFArrayContainsValue(v30, v250, @"kMDItemPhotosSceneClassificationLabels"))
    {
      goto LABEL_42;
    }

    v31 = *(*(this + 1) + 16);
    v251.length = CFArrayGetCount(v31);
    v251.location = 0;
    if (CFArrayContainsValue(v31, v251, @"kMDItemPhotosSceneClassificationSynonyms") || (v32 = *(*(this + 1) + 16), v252.length = CFArrayGetCount(v32), v252.location = 0, CFArrayContainsValue(v32, v252, @"kMDItemPhotosSceneClassificationConfidences")) || (v33 = *(*(this + 1) + 16), v253.length = CFArrayGetCount(v33), v253.location = 0, CFArrayContainsValue(v33, v253, @"kMDItemPhotosSceneClassificationIdentifiers")))
    {
LABEL_42:
      if (v28 > 0x10000)
      {
        v28 = 65537;
      }

      goto LABEL_68;
    }

    v23 = *(this + 1);
  }

  v34 = *(v23 + 24);
  if (v34)
  {
    v254.length = CFBitVectorGetCount(*(v23 + 24));
    v254.location = 0;
    CountOfBit = CFBitVectorGetCountOfBit(v34, v254, 1u);
  }

  else
  {
    v36 = *(v23 + 16);
    if (!v36)
    {
      goto LABEL_55;
    }

    CountOfBit = CFArrayGetCount(v36);
  }

  if (CountOfBit >= 2)
  {
    v37 = *(this + 1);
    v38 = *(v37 + 24);
    if (v38)
    {
      v255.length = CFBitVectorGetCount(*(v37 + 24));
      v255.location = 0;
      Count = CFBitVectorGetCountOfBit(v38, v255, 1u);
      goto LABEL_56;
    }

    v40 = *(v37 + 16);
    if (v40)
    {
      Count = CFArrayGetCount(v40);
      goto LABEL_56;
    }
  }

LABEL_55:
  Count = 1;
LABEL_56:
  if (v28 >= 0x28000 / Count)
  {
    v41 = *(this + 1);
    v42 = *(v41 + 24);
    if (v42)
    {
      v256.length = CFBitVectorGetCount(*(v41 + 24));
      v256.location = 0;
      v43 = CFBitVectorGetCountOfBit(v42, v256, 1u);
    }

    else
    {
      v44 = *(v41 + 16);
      if (!v44)
      {
        goto LABEL_66;
      }

      v43 = CFArrayGetCount(v44);
    }

    if (v43 >= 2)
    {
      v45 = *(this + 1);
      v46 = *(v45 + 24);
      if (v46)
      {
        v257.length = CFBitVectorGetCount(*(v45 + 24));
        v257.location = 0;
        v47 = CFBitVectorGetCountOfBit(v46, v257, 1u);
LABEL_67:
        v28 = 0x28000 / v47;
        goto LABEL_68;
      }

      v48 = *(v45 + 16);
      if (v48)
      {
        v47 = CFArrayGetCount(v48);
        goto LABEL_67;
      }
    }

LABEL_66:
    v47 = 1;
    goto LABEL_67;
  }

LABEL_68:
  v49 = 16;
  if (*(this + 644))
  {
    v49 = 0;
  }

  v50 = *(v5 + 300 + v49);
  v51 = **(*(this + 3) + 8 * *(this + 76) + 1024);
  v52 = v51;
  do
  {
    v53 = v52;
    v52 = *v52;
  }

  while (v52);
  if ((*(v53 + 34) > 1u || *(v53 + 33) <= 3) && (*(v51 + 136) > 1u || *(v51 + 132) < 4))
  {
    v235 = 0;
  }

  else
  {
    v50 = fmin(v50, 0.05);
    if (v28 >= 0xBB8)
    {
      v28 = 3000;
    }

    v235 = 1;
  }

  v54 = *__error();
  v55 = _SILogForLogForCategory(1);
  v56 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = *(v53 + 33);
    *buf = 134218496;
    *&buf[4] = v28;
    v244 = 2048;
    v245 = v50;
    v246 = 1024;
    v247 = v57;
    _os_log_impl(&dword_1C278D000, v55, v56, "Batch size: %ld. Timeout: %f. Waiting: %d", buf, 0x1Cu);
  }

  *__error() = v54;
  Current = CFAbsoluteTimeGetCurrent();
  v233 = (this + 600);
  v59 = v50 + Current;
  *&v60 = 136315138;
  v227 = v60;
  *&v60 = 134218240;
  v230 = v60;
  *&v60 = 134217984;
  v229 = v60;
  v61 = 1;
  v234 = a2;
  while (1)
  {
    v62 = *(this + 75);
    v63 = *(this + 76);
    if (v62 == v63)
    {
      if (*(a2 + 432) == 1)
      {
        v64 = *(a2 + 433);
      }

      else
      {
        v64 = PartialQueryResults::__needsWhatFieldsMatched(a2);
        *(a2 + 433) = v64;
        *(a2 + 432) = 1;
      }

      v65 = v233;
      *v233 = 0;
      v65[1] = 0;
      v61 = refillOids(this, (v64 & 1) == 0, v59, v28);
      if (dword_1EBF46AD0 >= 5)
      {
        v201 = *__error();
        v202 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
        {
          v203 = "false";
          if (v61)
          {
            v203 = "true";
          }

          *buf = v227;
          *&buf[4] = v203;
          _os_log_impl(&dword_1C278D000, v202, OS_LOG_TYPE_DEFAULT, "Refilled oids. More: %s", buf, 0xCu);
        }

        *__error() = v201;
      }

      v62 = *(this + 75);
      v63 = *(this + 76);
      if (!v62)
      {
        goto LABEL_329;
      }
    }

    else
    {
      if (!v63)
      {
        v207 = __si_assert_copy_extra_332();
        v208 = v207;
        v209 = "";
        if (v207)
        {
          v209 = v207;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 4189, "self->currentOid!=0", v209);
        free(v208);
        if (__valid_fs(-1))
        {
          v210 = 2989;
        }

        else
        {
          v210 = 3072;
        }

        *v210 = -559038737;
        abort();
      }

      if (!v62)
      {
        goto LABEL_329;
      }
    }

    v66 = *(this + 77);
    if (!v66)
    {
      goto LABEL_329;
    }

    v67 = *(this + 13);
    if (*(v67 + 96))
    {
      goto LABEL_329;
    }

    do
    {
      v68 = v67;
      v67 = *(v67 + 80);
    }

    while (v67);
    if (*(*(v68 + 8) + 12))
    {
      goto LABEL_329;
    }

    v69 = v62 - v63;
    if (v28 >= v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = v28;
    }

    v71 = *(*(this + 3) + 2072);
    v237 = v28;
    v238 = v61;
    if (v71)
    {
LABEL_107:
      v77 = v70;
      goto LABEL_140;
    }

    v72 = *(this + 83);
    v73 = v72 ? (v72 + 2 * v63) : 0;
    v241 = *(this + 79);
    v242 = v73;
    v240 = *(this + 117);
    v74 = CFAbsoluteTimeGetCurrent();
    v75 = *(this + 4);
    if (v75 && CFArrayGetCount(v75))
    {
      v76 = 0;
    }

    else
    {
      if (*(this + 649))
      {
        goto LABEL_107;
      }

      v76 = 1;
    }

    if (!(v70 >> 17) && *MEMORY[0x1E69E9AC8] < v70)
    {
      ++sTotal;
    }

    v78 = *(this + 13);
    v79 = malloc_type_zone_calloc(queryZone, 1uLL, v70, 0x5BAF1CEAuLL);
    if (!v79)
    {
      _log_fault_for_malloc_failure();
    }

    v80 = CFAbsoluteTimeGetCurrent();
    *(*(this + 1) + 424) = *(*(this + 1) + 424) + v80 - v74;
    v81 = *(this + 3);
    v82 = (*(this + 5) >> 9) & 1;
    *buf = 0;
    v83 = *(v81 + 1416);
    v84 = *(v83 + 80);
    v239 = v66 + 8 * v63;
    v84(v83);
    if (*buf)
    {
      if (malloc_size(*buf))
      {
        v213 = __si_assert_copy_extra_332();
        __message_assert_336(v213, v214, v215, v216, v217, v218, v219, v220, "SIVirtualPSIDSupport.c");
        free(v213);
        if (__valid_fs(-1))
        {
          v221 = 2989;
        }

        else
        {
          v221 = 3072;
        }

        *v221 = -559038737;
        abort();
      }

      munmap(*buf, 0x10000uLL);
    }

    v85 = CFAbsoluteTimeGetCurrent();
    v86 = *__error();
    v87 = _SILogForLogForCategory(1);
    v88 = 2 * (dword_1EBF46AD0 < 4);
    v89 = v85 - v80;
    if (os_log_type_enabled(v87, v88))
    {
      *buf = v230;
      *&buf[4] = v70;
      v244 = 2048;
      v245 = v89;
      _os_log_impl(&dword_1C278D000, v87, v88, "Scope checked %ld dbos in %f seconds!", buf, 0x16u);
    }

    *__error() = v86;
    v90 = *(this + 1);
    if (v76)
    {
      *(v90 + 424) = *(v90 + 424) + v89;
    }

    else
    {
      *(v90 + 432) = *(v90 + 432) + v89;
    }

    v91 = v242;
    v231 = v79;
    v232 = v70;
    if (v70)
    {
      v92 = v70;
      v77 = 0;
      v93 = &v241[v63];
      v94 = &v240[10 * v63];
      v95 = v242;
      v236 = &v241[v63];
      v96 = v94;
      v97 = v239;
      do
      {
        v99 = *v79++;
        v98 = v99;
        if (v99 == 2)
        {
          _SIDeleteAttributes(*(this + 3), *v97);
          v91 = v242;
        }

        else if (!v98)
        {
          if (v91)
          {
            v91[v77] = *v95;
          }

          if (v241)
          {
            v236[v77] = *v93;
          }

          if (v240)
          {
            v100 = &v94[10 * v77];
            *v100 = *v96;
            v101 = *(v96 + 1);
            v102 = *(v96 + 2);
            v103 = *(v96 + 4);
            *(v100 + 3) = *(v96 + 3);
            *(v100 + 4) = v103;
            *(v100 + 1) = v101;
            *(v100 + 2) = v102;
          }

          *(v239 + 8 * v77++) = *v97;
        }

        ++v97;
        v96 += 10;
        ++v93;
        ++v95;
        --v92;
      }

      while (v92);
    }

    else
    {
      v77 = 0;
    }

    free(v231);
    v104 = *__error();
    v105 = _SILogForLogForCategory(1);
    v106 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v105, v106))
    {
      *buf = v229;
      *&buf[4] = v77;
      _os_log_impl(&dword_1C278D000, v105, v106, "Permission for %ld items!", buf, 0xCu);
    }

    *__error() = v104;
    a2 = v234;
    v70 = v232;
LABEL_140:
    if (*(this + 644) == 1 && v77 == 0)
    {
      break;
    }

    v108 = *(this + 76) + v70;
    *(this + 76) = v108;
    if (!v77)
    {
      if (!v238)
      {
        goto LABEL_310;
      }

LABEL_303:
      v61 = 1;
      goto LABEL_329;
    }

    v109 = *(this + 13);
    if (*(v109 + 96))
    {
      goto LABEL_304;
    }

    do
    {
      v110 = v109;
      v109 = *(v109 + 80);
    }

    while (v109);
    if (*(*(v110 + 8) + 12))
    {
      goto LABEL_304;
    }

    v111 = *(a2 + 29);
    v112 = CFAbsoluteTimeGetCurrent();
    v113 = *(this + 83);
    if (v113)
    {
      v114 = (v113 + 2 * v63);
    }

    else
    {
      v114 = 0;
    }

    v115 = *(this + 117);
    if (v115)
    {
      v116 = (v115 + 80 * v63);
    }

    else
    {
      v116 = 0;
    }

    v117 = *(this + 118);
    if (v117)
    {
      v118 = (v117 + 5 * v63);
    }

    else
    {
      v118 = 0;
    }

    v119 = *(this + 119);
    if (v119)
    {
      v120 = (v119 + 28 * v63);
    }

    else
    {
      v120 = 0;
    }

    if ((*(this + 641) & 1) != 0 || *(*(this + 105) + 16) || *(this + 40) == 3)
    {
      v121 = 1;
    }

    else if (v111)
    {
      v121 = *(*(this + 13) + 99);
    }

    else
    {
      v121 = 0;
    }

    if (!*(this + 640) || (v122 = *(this + 79), (v122 == 0) | v121 & 1))
    {
      v123 = *(this + 77) + 8 * v63;
      if (v121)
      {
        v124 = *(this + 79);
        if (v124)
        {
          v125 = (v124 + v63);
        }

        else
        {
          v125 = 0;
        }

        readSDBForOids(this, v123, v114, v116, v118, v120, v77, v125, a2, 0, 0);
        goto LABEL_187;
      }

      v126 = this;
      v127 = v114;
      v128 = v116;
      v129 = v77;
LABEL_186:
      packOids(v126, v123, v127, v128, v129, a2, 0);
LABEL_187:
      v135 = v237;
      goto LABEL_188;
    }

    if (v63 >= v77 + v63)
    {
      goto LABEL_185;
    }

    v130 = 0;
    v131 = 0;
    v132 = (v115 + 80 * v63 + 69);
    do
    {
      if (*(v122 + v63 + v130))
      {
        ++v131;
      }

      else if (v115)
      {
        v133 = *(v132 - 37);
        v134 = *(v132 - 29);
        if (*v132)
        {
          v134 = 0;
          v133 = *(v132 - 1);
        }

        if (v133 | v134)
        {
          ++v131;
        }
      }

      ++v130;
      v132 += 80;
    }

    while (v77 != v130);
    if (!v131)
    {
LABEL_185:
      v123 = *(this + 77) + 8 * v63;
      v126 = this;
      v127 = v114;
      v128 = v116;
      v129 = v77;
      a2 = v234;
      goto LABEL_186;
    }

    if (v77 == v131)
    {
      a2 = v234;
      readSDBForOids(this, *(this + 77) + 8 * v63, v114, v116, v118, v120, v77, (v122 + v63), v234, 0, 0);
      goto LABEL_187;
    }

    v236 = (v77 - v131);
    if (v131 <= v77 - v131)
    {
      v151 = v77 - v131;
    }

    else
    {
      v151 = v131;
    }

    v242 = malloc_type_zone_malloc(queryZone, 8 * v151, 0xA4971684uLL);
    if (!v242)
    {
      _log_fault_for_malloc_failure();
    }

    if (!v114)
    {
      goto LABEL_231;
    }

    v152 = malloc_type_zone_malloc(queryZone, 2 * v151, 0xA4971684uLL);
    if (!v152)
    {
      _log_fault_for_malloc_failure();
LABEL_231:
      v152 = 0;
    }

    v240 = v116;
    v241 = v152;
    if (v116)
    {
      v116 = malloc_type_zone_malloc(queryZone, 80 * v151, 0xA4971684uLL);
      if (!v116)
      {
        _log_fault_for_malloc_failure();
      }
    }

    v239 = v151;
    if (v118)
    {
      v153 = malloc_type_zone_malloc(queryZone, 5 * v151, 0xA4971684uLL);
      if (!v153)
      {
        _log_fault_for_malloc_failure();
      }
    }

    else
    {
      v153 = 0;
    }

    if (v120)
    {
      v154 = malloc_type_zone_malloc(queryZone, 28 * v239, 0xA4971684uLL);
      if (!v154)
      {
        _log_fault_for_malloc_failure();
      }
    }

    else
    {
      v154 = 0;
    }

    if (!*(this + 79))
    {
      goto LABEL_247;
    }

    v155 = malloc_type_zone_malloc(queryZone, v239, 0xA4971684uLL);
    if (!v155)
    {
      _log_fault_for_malloc_failure();
LABEL_247:
      v155 = 0;
    }

    v156 = *(this + 13);
    v157 = v156;
    do
    {
      v158 = v157;
      v157 = *(v157 + 80);
    }

    while (v157);
    v159 = *(*(v158 + 8) + 80);
    v160 = *(v156 + 80);
    v239 = v155;
    if (v160)
    {
      v161 = 0;
      do
      {
        v161 ^= *(v156 + 104) == 0;
        v156 = v160;
        v160 = *(v160 + 80);
      }

      while (v160);
      if (v161)
      {
        v162 = 3553;
      }

      else
      {
        v162 = 2781;
      }
    }

    else
    {
      v162 = 2781;
    }

    v163 = PartialQueryResults::start(v234, v159, v162, v77, 0);
    v164 = 0;
    v165 = v241;
    v166 = v240 + 69;
    v167 = v63;
    v168 = v114;
    v169 = v118;
    v170 = v120;
    v171 = v77;
    v172 = v242;
    v173 = v239;
    do
    {
      if (*(*(this + 79) + v167))
      {
        goto LABEL_259;
      }

      if (v116)
      {
        v182 = *(v166 - 37);
        v183 = *(v166 - 29);
        if (*v166)
        {
          v183 = 0;
          v182 = *(v166 - 1);
        }

        if (v182 | v183)
        {
LABEL_259:
          if (v165)
          {
            *&v165[2 * v164] = *v168;
          }

          if (v116)
          {
            v174 = &v116[10 * v164];
            *v174 = *(v166 - 69);
            v175 = *(v166 - 53);
            v176 = *(v166 - 37);
            v177 = *(v166 - 5);
            *(v174 + 3) = *(v166 - 21);
            *(v174 + 4) = v177;
            *(v174 + 1) = v175;
            *(v174 + 2) = v176;
          }

          if (v153)
          {
            v178 = *v169;
            v179 = v153 + 5 * v164;
            v179[4] = *(v169 + 4);
            *v179 = v178;
          }

          if (v154)
          {
            v180 = *v170;
            v181 = &v154[7 * v164];
            *(v181 + 3) = *(v170 + 12);
            *v181 = v180;
          }

          if (v173)
          {
            v173[v164] = *(*(this + 79) + v167);
          }

          v172[v164++] = *(*(this + 77) + 8 * v167);
        }
      }

      v170 = (v170 + 28);
      v169 = (v169 + 5);
      v166 += 80;
      ++v168;
      ++v167;
      --v171;
    }

    while (v171);
    v232 = v163;
    readSDBForOids(this, v242, v241, v116, v153, v154, v131, v173, v234, v163, 0);
    v185 = v241;
    v184 = v242;
    v186 = 0;
    v187 = (v240 + 4);
    v188 = v77;
    v189 = v236;
    do
    {
      if (!*(*(this + 79) + v63) && (!v116 || *v187 == 0))
      {
        if (v185)
        {
          v185[v186] = *v114;
        }

        if (v116)
        {
          v190 = &v116[10 * v186];
          *v190 = *(v187 - 2);
          v191 = *(v187 - 1);
          v192 = *v187;
          v193 = v187[2];
          *(v190 + 3) = v187[1];
          *(v190 + 4) = v193;
          *(v190 + 1) = v191;
          *(v190 + 2) = v192;
        }

        if (v153)
        {
          v194 = *v118;
          v195 = v153 + 5 * v186;
          v195[4] = *(v118 + 4);
          *v195 = v194;
        }

        if (v154)
        {
          v196 = *v120;
          v197 = &v154[7 * v186];
          *(v197 + 3) = *(v120 + 12);
          *v197 = v196;
        }

        v184[v186++] = *(*(this + 77) + 8 * v63);
      }

      v120 = (v120 + 28);
      v118 = (v118 + 5);
      v187 += 5;
      ++v114;
      ++v63;
      --v188;
    }

    while (v188);
    a2 = v234;
    packOids(this, v184, v185, v116, v189, v234, v232);
    if (*(a2 + 186))
    {
      _MDPlistBytesEndArray();
      v198 = *(a2 + 186);
      _MDPlistBytesEndPlist();
    }

    v135 = v237;
    if (*(a2 + 58))
    {
      v199 = *(a2 + 443);
      _MDStoreOIDArrayEndBulkAdd();
      v200 = *(a2 + 58);
      _MDStoreOIDArrayEndSequence();
      *(a2 + 443) = 0;
    }

    free(v242);
    free(v241);
    free(v116);
    free(v153);
    free(v154);
    free(v239);
LABEL_188:
    *(*(this + 1) + 416) = *(*(this + 1) + 416) + CFAbsoluteTimeGetCurrent() - v112;
    *(this + 644) = 0;
    v136 = *(this + 40);
    if (v136 == 3)
    {
      goto LABEL_191;
    }

    if (v136 != 2)
    {
      if (v136 != 1)
      {
        if (*(this + 22))
        {
          v144 = atomic_load(this + 68);
          if (v144 >= *(this + 22))
          {
            v145 = atomic_load(this + 68);
            if (v145 >= *(*(this + 1) + 216))
            {
              *(this + 96) = 1;
            }
          }
        }

        goto LABEL_209;
      }

LABEL_191:
      if ((*(this + 40) & 0x80) != 0)
      {
        v137 = atomic_load(this + 68);
        if (v137 >= *(this + 22))
        {
          v138 = atomic_load(this + 68);
          if (v138 >= *(*(this + 1) + 216))
          {
            goto LABEL_304;
          }
        }
      }

      if (dword_1EBF46AD0 >= 5)
      {
        v139 = *__error();
        v140 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          v141 = "true";
          if (!v238)
          {
            v141 = "false";
            if (*(this + 75) > *(this + 76))
            {
              v141 = "true";
            }
          }

          *buf = v227;
          *&buf[4] = v141;
          _os_log_impl(&dword_1C278D000, v140, OS_LOG_TYPE_DEFAULT, "Not enough data yet. More to collect: %s", buf, 0xCu);
        }

        *__error() = v139;
      }

      goto LABEL_209;
    }

    v142 = atomic_load(this + 68);
    if (v142 >= *(this + 22))
    {
      v143 = atomic_load(this + 68);
      if (v143 >= *(*(this + 1) + 216) && *(this + 208) < 2u)
      {
        v61 = 0xFFFFFFFFLL;
        goto LABEL_329;
      }
    }

LABEL_209:
    v146 = *(this + 13);
    if (*(v146 + 96))
    {
      goto LABEL_300;
    }

    do
    {
      v147 = v146;
      v146 = *(v146 + 80);
    }

    while (v146);
    if ((*(*(v147 + 8) + 12) & 1) != 0 || 3 * v77 >= 2 * v135 || (v28 = v135 - (v77 >> 1)) == 0)
    {
LABEL_300:
      v150 = v238;
LABEL_301:
      if (dword_1EBF46AD0 >= 5)
      {
        v222 = *__error();
        v223 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
        {
          v224 = PartialQueryResults::totalcount(a2);
          *buf = v230;
          *&buf[4] = this;
          v244 = 2048;
          v245 = *&v224;
          _os_log_impl(&dword_1C278D000, v223, OS_LOG_TYPE_DEFAULT, "%p found %ld results\n", buf, 0x16u);
        }

        *__error() = v222;
        if (v150)
        {
          goto LABEL_303;
        }
      }

      else if (v150)
      {
        goto LABEL_303;
      }

      v206 = *(this + 75) > *(this + 76);
      goto LABEL_326;
    }

    v148 = CFAbsoluteTimeGetCurrent();
    v149 = v235;
    if (v59 <= v148)
    {
      v149 = 1;
    }

    v150 = v238;
    if ((v149 & 1) == 0 && (*(this + 96) & 1) == 0)
    {
      v61 = 1;
      if (v238)
      {
        continue;
      }

      v61 = 0;
      if (*(this + 75) > *(this + 76))
      {
        continue;
      }
    }

    goto LABEL_301;
  }

  v204 = *(v228 + 304);
  v205 = v238;
  if (v70 == v204)
  {
    *(v228 + 304) = 4 * v204;
  }

  v108 = *(this + 76) + v70;
  *(this + 76) = v108;
  if (v205)
  {
    goto LABEL_303;
  }

LABEL_310:
  v206 = *v233 > v108;
LABEL_326:
  v61 = v206;
LABEL_329:
  v225 = *MEMORY[0x1E69E9840];
  return v61;
}

void blob_free(void *a1, unsigned int a2, void *a3)
{
  v4 = 4 * a2;
  v5 = *MEMORY[0x1E69E9AC8];
  if (v4 >= *MEMORY[0x1E69E9AC8] >> 1)
  {

    munmap(a1, (v4 + v5 - 1) & -v5);
  }

  else if (a3 && a2 - 8 <= 0x37 && (HIDWORD(v7) = a2 - 8, LODWORD(v7) = a2 - 8, v6 = v7 >> 3, v6 <= 7) && ((0x8Bu >> v6) & 1) != 0)
  {
    v8 = qword_1C2BFF6A8[v6];
    v9 = a3 + 2;
    v10 = a3[v8 + 2];
    *a1 = 0;
    a1[1] = v10;
    if (v10)
    {
      v11 = *(v10 + 16) + 1;
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 4) = v11;
    v9[v8] = a1;
    if (v11 >= 0x80u >> v8)
    {
      cicachelistenqueue(*a3 + 24 * v8 + 32, a1, 0);
      v9[v8] = 0;
    }
  }

  else
  {

    free(a1);
  }
}

_DWORD *_CIIndexSetConvertIfInvertedArrayIsMoreEfficient(_DWORD *result, void *a2, int8x8_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = result[5];
  v5 = result[6];
  v6 = v5 - v4;
  v7 = v5 - v4 + 1;
  v8 = (v5 - v4 + 48) / 0x30;
  if (result[4] + v7 + 10 < v8)
  {
    v9 = result;
    result = lockedCountItemsInRange(result, v4, v5, a3);
    *(v9 + 16) = -10 - result;
    v10 = v7 - result;
    if (v10 < v8)
    {
      *(v9 + 16) = -10 - v10;
      v11 = *(v9 + 32);
      v13 = v11 >= v10 && v11 < 2 * v10;
      if (v13)
      {
        if (v10 <= 0x1FF)
        {
          MEMORY[0x1EEE9AC00](result);
          v15 = &buf[-v14];
          bzero(&buf[-v14], v16);
          v17 = 0;
          goto LABEL_32;
        }

        v27 = 4 * v10;
        if (v27 < *MEMORY[0x1E69E9AC8] >> 1)
        {
          v28 = malloc_type_zone_malloc(queryZone, v27, 0xA4971684uLL);
          v17 = v28;
          if (v28)
          {
            v15 = v28;
            goto LABEL_32;
          }

          _log_fault_for_malloc_failure();
          goto LABEL_31;
        }

        v29 = (v27 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      else
      {
        v18 = (v6 - result) | ((v6 - result) >> 1) | (((v6 - result) | ((v6 - result) >> 1)) >> 2);
        v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
        v20 = v19 | HIWORD(v19);
        v10 = v20 + 1;
        v21 = 4 * (v20 + 1);
        if (v21 < *MEMORY[0x1E69E9AC8] >> 1)
        {
          if (a2)
          {
            v22 = v20 - 7;
            v25 = v22 > 0x37;
            HIDWORD(v24) = v22;
            LODWORD(v24) = v22;
            v23 = v24 >> 3;
            v25 = v25 || v23 > 7;
            if (!v25 && ((0x8Bu >> v23) & 1) != 0)
            {
              v45 = qword_1C2BFF6A8[v23];
              v17 = a2[v45 + 2];
              if (v17 || *a2 && (v46 = v21, v47 = cicachelistdequeue(*a2 + 24 * v45 + 32, 0), v21 = v46, (v17 = v47) != 0))
              {
                a2[v45 + 2] = *(v17 + 1);
                v15 = v17;
LABEL_32:
                v31 = *(v9 + 20);
                v30 = *(v9 + 24);
                v32 = (v30 - v31) >> 5;
                if (v30 - v31 >= 0x20)
                {
                  v33 = 0;
                  if (v32 <= 1)
                  {
                    v34 = 1;
                  }

                  else
                  {
                    v34 = (v30 - v31) >> 5;
                  }

                  v35 = 4 * v34;
                  do
                  {
                    *(*(v9 + 40) + v33) = ~*(*(v9 + 40) + v33);
                    v33 += 4;
                  }

                  while (v35 != v33);
                  v31 = *(v9 + 20);
                  v30 = *(v9 + 24);
                }

                if (v31 <= v30)
                {
                  v36 = -v31;
                  do
                  {
                    if (v32 != (v30 + v36) >> 5)
                    {
                      break;
                    }

                    *(*(v9 + 40) + 4 * v32) ^= 1 << (v30 + v36);
                    ++v31;
                    v30 = *(v9 + 24);
                    --v36;
                  }

                  while (v31 <= v30);
                  v31 = *(v9 + 20);
                }

                *buf = 0u;
                v49 = 0u;
                v37 = *(v9 + 16);
                if (v37 <= -10)
                {
                  DWORD2(v49) = 2;
                  *buf = v30;
                  *&buf[4] = v31;
                  *&v49 = v9;
LABEL_46:
                  *&buf[8] = 0;
                  goto LABEL_64;
                }

                if (v37 > -2)
                {
                  if (CFGetTypeID(v9) == __kCIIndexSetInvertedTypeID)
                  {
                    v39 = 3;
                  }

                  else
                  {
                    v39 = 1;
                  }

                  DWORD2(v49) = v39;
                  v37 = *(v9 + 16);
                  *buf = v30;
                  *&buf[4] = v31;
                  *&v49 = v9;
                  if (v37 >= 1)
                  {
                    v40 = binarySearchMap(v9, v30);
                    *&buf[8] = v40;
                    if (v40 != *(v9 + 36))
                    {
                      goto LABEL_64;
                    }

                    v38 = *(v9 + 32) + v40 - *(v9 + 16);
                    goto LABEL_63;
                  }

                  if ((v37 & 0x80000000) == 0 || v37 <= 0xFFFFFFF6)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  *buf = v30;
                  *&buf[4] = v31;
                  *&v49 = v9;
                }

                if (v37 <= 0xFFFFFFFD)
                {
                  if (v30 >= *(v9 + 32))
                  {
                    v38 = 0;
                    goto LABEL_63;
                  }

                  if (v37 != -3)
                  {
                    if (v30 >= *(v9 + 36))
                    {
                      v38 = 1;
                      goto LABEL_63;
                    }

                    if (v37 != -4)
                    {
                      if (v30 >= *(v9 + 40))
                      {
                        v38 = 2;
                        goto LABEL_63;
                      }

                      if (v37 != -5)
                      {
                        if (v30 >= *(v9 + 44))
                        {
                          v38 = 3;
                          goto LABEL_63;
                        }

                        if (v37 != -6)
                        {
                          if (v30 >= *(v9 + 48))
                          {
                            v38 = 4;
                            goto LABEL_63;
                          }

                          if (v37 != -7)
                          {
                            if (v30 >= *(v9 + 52))
                            {
                              v38 = 5;
                              goto LABEL_63;
                            }

                            if (v37 != -8 && v30 >= *(v9 + 56))
                            {
                              v38 = 6;
                              goto LABEL_63;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v38 = -2 - v37;
LABEL_63:
                *&buf[8] = v38;
LABEL_64:
                v41 = _CIIndexSetEnumeratorNext(buf);
                if (v41)
                {
                  v42 = 0;
                  do
                  {
                    v43 = v42 + 1;
                    *&v15[4 * v42] = v41;
                    v41 = _CIIndexSetEnumeratorNext(buf);
                    v42 = v43;
                  }

                  while (v41);
                  if (v13)
                  {
LABEL_68:
                    *(v9 + 16) = 0;
                    *(v9 + 36) = 0;
                    _CIIndexSetAddSortedIndexes(v9);
                    if (v17)
                    {
                      blob_free(v17, v10, a2);
                    }

                    goto LABEL_72;
                  }
                }

                else
                {
                  v43 = 0;
                  if (v13)
                  {
                    goto LABEL_68;
                  }
                }

                blob_free(*(v9 + 40), *(v9 + 32), a2);
                *(v9 + 40) = v15;
                *(v9 + 16) = v43;
                *(v9 + 32) = v10;
                *(v9 + 36) = v43;
LABEL_72:
                result = _CFRuntimeSetInstanceTypeID();
                goto LABEL_73;
              }
            }
          }

          v26 = malloc_type_zone_malloc(queryZone, v21, 0xA4971684uLL);
          if (!v26)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            v17 = 0;
LABEL_31:
            v15 = 0;
            goto LABEL_32;
          }

LABEL_29:
          v17 = v26;
          v15 = v26;
          goto LABEL_32;
        }

        v29 = (v21 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      v26 = mmap(0, v29, 3, 4098, -134217728, 0);
      goto LABEL_29;
    }
  }

LABEL_73:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL PartialQueryResults::__needsWhatFieldsMatched(PartialQueryResults *this)
{
  v3 = (this + 232);
  v2 = *(this + 29);
  if (*this == 1)
  {
    if (!v2)
    {
      return 0;
    }

    v4 = (this + 104);
    if (!*(this + 13))
    {
      v5 = *(this + 16);
      if (v5)
      {
        v26 = 0;
        SIFlattenArrayToCStringVector(v5, v4, &v26, &v25);
      }
    }
  }

  else
  {
    v6 = (this + 96);
    if (v2)
    {
      v7 = *(this + 12) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = *(this + 15);
      if (v8)
      {
        SIFlattenArrayToCStringVector(v8, v6, this + 30, v3);
        if (!*(this + 12))
        {
          v16 = __si_assert_copy_extra_332();
          __message_assert_336(v16, v17, v18, v19, v20, v21, v22, v23, "SISearchCtx.h");
          free(v16);
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
      }
    }
  }

  v9 = *v3;
  if (*v3 < 1)
  {
    return 0;
  }

  v10 = 1;
  v11 = *(this + 12);
  v12 = *v3;
  v13 = 1;
  do
  {
    v14 = *v11;
    if (!strcmp("kMDQueryResultMatchedDisplayNameField", *v11))
    {
      break;
    }

    if (!strcmp("kMDQueryResultMatchedFields", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultContentRelevance", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultGroupId", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultTopMatchedField", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultTextContentDistances", v14))
    {
      break;
    }

    if (!strcmp("kMDQueryResultHasTextContentMatch", v14))
    {
      break;
    }

    v13 = v9 > v10;
    ++v11;
    ++v10;
    --v12;
  }

  while (v12);
  return v13;
}

void SIFlattenArrayToCStringVector(const __CFArray *a1, char **a2, size_t *a3, CFIndex *a4)
{
  v30 = a3;
  v31 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  v8 = *a2;
  v9 = 8 * Count;
  MEMORY[0x1EEE9AC00](Count);
  v10 = (&v26 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if (Count < 1)
  {
    if (v8)
    {
LABEL_17:
      *a2 = v8;
      *a4 = Count;
    }
  }

  else
  {
    v27 = a2;
    v28 = a4;
    v11 = 0;
    v12 = 0;
    v29 = v8;
    v13 = &v8[8 * Count];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
      Length = CFStringGetLength(ValueAtIndex);
      v16 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
      v17 = *v30;
      if (*v30 < (v16 + v9))
      {
        v19 = v29;
        do
        {
          if (v17)
          {
            v20 = 2 * v17;
          }

          else
          {
            v20 = 4096;
          }

          v21 = v30;
          *v30 = v20;
          v19 = malloc_type_realloc(v19, v20, 0x5C8D2EB9uLL);
          v17 = *v21;
        }

        while (*v21 < (v16 + v9));
        v29 = v19;
        v13 = &v19[8 * Count];
      }

      v10[v12] = v11;
      CFStringGetCString(ValueAtIndex, &v13[v11], v16, 0x8000100u);
      v18 = strlen(&v13[v11]);
      v11 += v18 + 1;
      v9 += v18 + 1;
      ++v12;
    }

    while (v12 != Count);
    a2 = v27;
    a4 = v28;
    v8 = v29;
    if (v29)
    {
      v22 = v29;
      v23 = Count;
      do
      {
        v24 = *v10++;
        *v22 = &v13[v24];
        v22 += 8;
        --v23;
      }

      while (v23);
      goto LABEL_17;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

unint64_t *handleUpdate(void *a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a1[19] > a1[17])
  {
    v11 = __si_assert_copy_extra(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 328, "changes->hole <= changes->count", v13);
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

  result = changesHandleUpdate((a1 + 16), a2, a3);
  if (a1[19] > a1[17])
  {
    v15 = __si_assert_copy_extra(0);
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 330, "changes->hole <= changes->count", v17);
    free(v16);
    if (__valid_fs(-1))
    {
      v18 = 2989;
    }

    else
    {
      v18 = 3072;
    }

    *v18 = -559038737;
    abort();
  }

  if (a4)
  {
    v10 = a1[9];
    if (!v10)
    {
      v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200406E8F4065uLL);
      atomic_store(1u, v10 + 8);
      a1[9] = v10;
    }

    return distanceHolderSetMinDistance(v10, a2, a5, *(&a4 + 1));
  }

  return result;
}

void *CITokenizerCreate(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F0040AEFF90DEuLL);
  v3 = v2;
  if (v2)
  {
    v2[3] = 0;
    v2[4] = 0;
    *(v2 + 10) = a1;
    v4 = NLStringTokenizerCreate();
    v3[1] = v4;
    v3[2] = 0;
    if (!v4)
    {
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

      v9 = __error();
      __message_assert("%s:%u: failed assertion '%s' %s NLStringTokenizerCreate err:%d", "CITokenizer.c", 173, "false", v8, *v9);
      free(v7);
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

    v3[7] = 0;
    v3[8] = 0;
  }

  return v3;
}

uint64_t unpackPosting(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = *a2;
  do
  {
    v6 = v5++;
    v4 |= (*(a1 + v6) & 0x7F) << v3;
    if ((*(a1 + v6) & 0x80) == 0)
    {
      break;
    }

    v7 = v3 == 63;
    v3 += 7;
  }

  while (!v7);
  *a2 = v5;
  *(a3 + 4) = v4;
  if (v4)
  {
    v12 = 0;
    *(a3 + 4) = v4 >> 1;
LABEL_9:
    *a3 = 1;
    return v12;
  }

  v8 = v6 + 2;
  v9 = *(a1 + v5);
  v10 = *(a1 + v5);
  if (v9 < 0)
  {
    v11 = v6 + 3;
    v13 = *(a1 + v8);
    v14 = *(a1 + v8);
    if (v13 < 0)
    {
      v15 = v6 + 4;
      v16 = *(a1 + v11);
      v17 = v16;
      if (v16 < 0)
      {
        v11 = v6 + 5;
        v19 = *(a1 + v15);
        v20 = *(a1 + v15);
        if (v19 < 0)
        {
          v22 = *(a1 + v11);
          if (v22 < 0)
          {
            v35 = __si_assert_copy_extra(0);
            v36 = v35;
            v37 = "";
            if (v35)
            {
              v37 = v35;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v37);
            free(v36);
            if (__valid_fs(-1))
            {
              v38 = 2989;
            }

            else
            {
              v38 = 3072;
            }

            *v38 = -559038737;
            abort();
          }

          v11 = v6 + 6;
          v21 = ((v20 & 0x7F) << 21) | (v22 << 28) | ((v17 & 0x7F) << 14);
        }

        else
        {
          v21 = ((v17 & 0x7F) << 14) | (v20 << 21);
        }

        v18 = v21 & 0xFFFFC000 | ((v14 & 0x7F) << 7) | v10 & 0x7F;
      }

      else
      {
        v18 = ((v14 & 0x7F) << 7) | (v16 << 14) | v10 & 0x7F;
        v11 = v15;
      }

      v10 = v18;
    }

    else
    {
      v10 = v10 & 0x7F | (v14 << 7);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

  *a2 = v11;
  *a3 = v10;
  *(a3 + 4) = v4 >> 1;
  if (v10)
  {
    return 0;
  }

  v24 = v11 + 1;
  v12 = *(a1 + v11);
  if (*(a1 + v11) < 0)
  {
    v25 = v11 + 2;
    v26 = *(a1 + v24);
    v27 = *(a1 + v24);
    if (v26 < 0)
    {
      v28 = v11 + 3;
      v29 = *(a1 + v25);
      v30 = v29;
      if (v29 < 0)
      {
        v25 = v11 + 4;
        v32 = *(a1 + v28);
        v33 = *(a1 + v28);
        if (v32 < 0)
        {
          v39 = *(a1 + v25);
          if (v39 < 0)
          {
            v40 = __si_assert_copy_extra(0);
            v41 = v40;
            v42 = "";
            if (v40)
            {
              v42 = v40;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v42);
            free(v41);
            if (__valid_fs(-1))
            {
              v43 = 2989;
            }

            else
            {
              v43 = 3072;
            }

            *v43 = -559038737;
            abort();
          }

          v25 = v11 + 5;
          v34 = ((v33 & 0x7F) << 21) | (v39 << 28) | ((v30 & 0x7F) << 14);
        }

        else
        {
          v34 = ((v30 & 0x7F) << 14) | (v33 << 21);
        }

        v31 = v34 & 0xFFFFC000 | ((v27 & 0x7F) << 7) | v12 & 0x7F;
      }

      else
      {
        v31 = ((v27 & 0x7F) << 7) | (v29 << 14) | (v12 & 0x7F);
        v25 = v28;
      }

      v12 = v31;
    }

    else
    {
      v12 = v12 & 0x7F | (v27 << 7);
    }
  }

  else
  {
    v25 = v11 + 1;
  }

  *a2 = v25;
  if (v12 != 2)
  {
    goto LABEL_9;
  }

  return v12;
}

void pqpush(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v14 = __si_assert_copy_extra(0);
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PQueue.h", 259, "!pqueue->has_meta", v16);
    free(v15);
    if (__valid_fs(-1))
    {
      v17 = 2989;
    }

    else
    {
      v17 = 3072;
    }

    *v17 = -559038737;
    abort();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  if ((v5 + 2) >= v4)
  {
    v8 = 2 * v4;
    v9 = v4 < 4;
    v10 = 4;
    if (!v9)
    {
      v10 = v8;
    }

    *(a1 + 16) = v10;
    v11 = 8 * v10;
    if (v6)
    {
      v12 = malloc_type_zone_realloc(queryZone, v6, v11 + 16, 0xA1A7ADA0uLL);
    }

    else
    {
      v12 = malloc_type_zone_malloc(queryZone, v11 + 16, 0x566E289CuLL);
    }

    v6 = v12;
    if (!v12)
    {
      _log_fault_for_malloc_failure();
    }

    *(a1 + 8) = v6;
    *v6 = 0;
    v7 = *(a1 + 24);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  *(a1 + 24) = v7 + 1;
  v6[v5] = a2;
  if (v5 >= 2)
  {
    do
    {
      v13 = v6[v5 >> 1];
      if ((a2 & 0x3FFFFFFFFFFFFFFFuLL) > (v13 & 0x3FFFFFFFFFFFFFFFuLL))
      {
        break;
      }

      v6[v5] = v13;
      v6[v5 >> 1] = a2;
      v9 = v5 > 3;
      v5 >>= 1;
    }

    while (v9);
  }
}

void SISearchCtx_METADATA::cleanUp(SISearchCtx_METADATA *this, char a2)
{
  if (*(this + 208))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 105);
    do
    {
      v7 = *(v6 + v4 + 16);
      if (v7)
      {
        clear_node_field_caches(v7);
        v6 = *(this + 105);
      }

      v8 = *(v6 + v4 + 8);
      if (v8)
      {
        clear_node_field_caches(v8);
        v6 = *(this + 105);
      }

      v9 = *(v6 + v4 + 24);
      if (v9)
      {
        clear_node_field_caches(v9);
        v6 = *(this + 105);
      }

      v10 = *(v6 + v4 + 32);
      if (v10)
      {
        ContentIndexDocSetCleanupBorrowedChildren(v10);
        ContentIndexDocSetDispose(*(*(this + 105) + v4 + 32));
        v6 = *(this + 105);
        *(v6 + v4 + 32) = 0;
      }

      ++v5;
      v4 += 48;
    }

    while (v5 < *(this + 208));
  }

  *(this + 643) = 0;
  v11 = *(this + 85);
  if (v11)
  {
    if (a2)
    {
LABEL_14:
      v12 = *(this + 85);
      v13 = freeQueue;
      v14 = qos_class_self();
      if (v14 < 0x1A)
      {
        v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_5621);
      }

      else
      {
        v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v14, 0, &__block_literal_global_5621);
      }

      v23 = v15;
      dispatch_async(v13, v15);
      _Block_release(v23);
      dispatch_semaphore_wait(freeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      v24 = freeQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3;
      block[3] = &__block_descriptor_tmp_7_5622;
      block[4] = v12;
      v25 = qos_class_self();
      if (v25 < 0x1A)
      {
        v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      }

      else
      {
        v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v25, 0, block);
      }

      v27 = v26;
      dispatch_async(v24, v26);
      _Block_release(v27);
      *(this + 85) = 0;
      goto LABEL_35;
    }

    if ((*(v11 + 58) & 1) == 0)
    {
      v16 = *(v11 + 16);
      if (!v16)
      {
        goto LABEL_56;
      }

      if (*v16 == 1)
      {
        goto LABEL_19;
      }

      v34 = *(v16 + 112);
      if (v34 >= 1)
      {
        v35 = *(v16 + 120);
        while (1)
        {
          v36 = *v35;
          if (*v35)
          {
            if (*(v36 + 40) == PayloadIterate && *(v36 + 136) > 0x8000)
            {
              break;
            }
          }

          ++v35;
          if (!--v34)
          {
            goto LABEL_57;
          }
        }

        LODWORD(v34) = 1;
      }

      else
      {
LABEL_56:
        LODWORD(v34) = 0;
      }

LABEL_57:
      v37 = *(*(*v11 + 8) + 4512);
      v38 = *(this + 3);
      v39 = *(v38 + 1392);
      v40 = *(v38 + 1384);
      if (v34)
      {
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 0x40000000;
        v55 = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_1;
        v56 = &__block_descriptor_tmp_2_5619;
        v58 = v37;
        v57 = this;
        if (v39 && *(v39 + 8))
        {
          v41 = 0;
          while ((v55)(v54, *(*v39 + 8 * v41), 0))
          {
            if (++v41 >= *(v39 + 8))
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
LABEL_63:
          if (v40 && *(v40 + 8))
          {
            v42 = 0;
            do
            {
              if (!(v55)(v54, *(*v40 + 8 * v42), 1))
              {
                break;
              }

              ++v42;
            }

            while (v42 < *(v40 + 8));
          }
        }
      }

      else
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 0x40000000;
        v50 = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3;
        v51 = &__block_descriptor_tmp_4_5620;
        v53 = v37;
        v52 = this;
        if (v39 && *(v39 + 8))
        {
          v43 = 0;
          while ((v50)(v49, *(*v39 + 8 * v43), 0))
          {
            if (++v43 >= *(v39 + 8))
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
LABEL_74:
          if (v40 && *(v40 + 8))
          {
            v44 = 0;
            do
            {
              if (!(v50)(v49, *(*v40 + 8 * v44), 1))
              {
                break;
              }

              ++v44;
            }

            while (v44 < *(v40 + 8));
          }
        }
      }

      goto LABEL_14;
    }

LABEL_19:
    v17 = *(*(*v11 + 8) + 4512);
    v18 = *(this + 3);
    v19 = *(v18 + 1392);
    v20 = *(v18 + 1384);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 0x40000000;
    v60 = ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke;
    v61 = &__block_descriptor_tmp_5618;
    v63 = v17;
    v62 = this;
    if (v19 && *(v19 + 8))
    {
      v21 = 0;
      while ((v60)(v59, *(*v19 + 8 * v21), 0))
      {
        if (++v21 >= *(v19 + 8))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      if (v20 && *(v20 + 8))
      {
        v22 = 0;
        do
        {
          if (!(v60)(v59, *(*v20 + 8 * v22), 1))
          {
            break;
          }

          ++v22;
        }

        while (v22 < *(v20 + 8));
      }
    }

    goto LABEL_14;
  }

LABEL_35:
  v28 = *(this + 103);
  if (v28)
  {
    *(v28 + 24) = 0;
    v29 = *(this + 103);
    if (*v29 != 3506)
    {
      v45 = __si_assert_copy_extra_332();
      v46 = v45;
      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 572, v47);
      free(v46);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if (*(v29 + 250))
    {
      v30 = *(v29 + 1);
      if (v30)
      {
        v30();
      }
    }

    v31 = *(v29 + 255);
    if (v31)
    {
      free(v31);
    }

    if (v29[499] >= 1)
    {
      v32 = 0;
      do
      {
        free(*&v29[2 * v32++ + 8]);
      }

      while (v32 < v29[499]);
    }

    free(v29);
    *(this + 103) = 0;
  }

  v33 = *(this + 102);
  if (v33)
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 0x40000000;
    v64[2] = __db_query_tree_apply_block_block_invoke;
    v64[3] = &unk_1E8198ED0;
    v64[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v33, v64, 0);
    *(this + 102) = 0;
  }
}

uint64_t ipqpop(void *a1)
{
  v1 = a1[2];
  if (v1 == 1)
  {
    v26 = __si_assert_copy_extra(0);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 83, "pqcount_ItemIteratorRef(queue)!=0", v28);
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

  v2 = a1[1];
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 8 * v1 - 8);
  *(*a1 + 8) = v4;
  a1[2] = v1 - 1;
  v5 = v2 >> 1;
  v6 = 1;
  v7 = 2;
  v8 = 3;
  do
  {
    v9 = *a1;
    v10 = *(*a1 + 8 * v7);
    if (v8 >= v1)
    {
      if (v7 >= v1)
      {
        return v3;
      }

      v11 = -1;
    }

    else
    {
      v11 = *(v9 + 8 * v8);
    }

    v12 = v4;
    if (v4 + 1 >= 2)
    {
      v12 = *(v4 + 8);
    }

    v13 = *(*a1 + 8 * v7);
    if (v10 + 1 >= 2)
    {
      v13 = *(v10 + 8);
    }

    v14 = v11;
    if ((v11 + 1) >= 2)
    {
      v14 = *(v11 + 8);
    }

    if (v13 >= v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    if (v13 >= v12)
    {
      v7 = v6;
    }

    if (v14 >= v15)
    {
      v16 = v7;
    }

    else
    {
      v16 = v8;
    }

    _X13 = v9 + 16 * v16;
    __asm { PRFM            #1, [X13] }

    if (v16 == v6)
    {
      break;
    }

    v7 = 2 * v16;
    v23 = v13 >= v12 ? v4 : v10;
    v24 = v14 >= v15 ? v23 : v11;
    *(v9 + 8 * v16) = v4;
    v8 = v7 | 1;
    *(*a1 + 8 * v6) = v24;
    v6 = v16;
  }

  while (v16 < v5);
  return v3;
}

uint64_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) != *(a1 + 40))
  {
    return 1;
  }

  if (!*(a2 + 15712))
  {
    return 0;
  }

  result = 0;
  *(*(a1 + 32) + 647) = 1;
  return result;
}

void *query_realloc(void *ptr, size_t size)
{
  if (ptr)
  {
    v2 = malloc_type_zone_realloc(queryZone, ptr, size, 0xA1A7ADA0uLL);
  }

  else
  {
    v2 = malloc_type_zone_malloc(queryZone, size, 0x566E289CuLL);
  }

  v3 = v2;
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  return v3;
}

{
  if (ptr)
  {
    result = malloc_type_zone_realloc(queryZone, ptr, size, 0xA1A7ADA0uLL);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = malloc_type_zone_malloc(queryZone, size, 0x566E289CuLL);
    if (result)
    {
      return result;
    }
  }

  v3 = result;
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  result = v3;
  if (v4)
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v5, 2u);
    return v3;
  }

  return result;
}

uint64_t _CIIndexSetAddIndexesInRange(uint64_t result, unsigned int a2, unsigned int a3, _DWORD *a4, int8x8_t a5)
{
  v90 = *MEMORY[0x1E69E9840];
  if (a2 > a3)
  {
    goto LABEL_105;
  }

  if (*(result + 24) >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(result + 24);
  }

  if (*(result + 20) <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 20);
  }

  v7 = v5 - v6;
  if (v5 < v6)
  {
    goto LABEL_9;
  }

  if (v5 != v6)
  {
    v11 = result;
    v12 = CFGetTypeID(result);
    v14 = v12;
    v15 = v11;
    if (v14 != __kCIIndexSetInvertedTypeID)
    {
      v16 = *(v11 + 16);
      if (v16 > -10 || ((v17 = *(v11 + 24) - *(v11 + 20), v18 = v7 - v16 - 9, v17 + 1 < v18) ? (v19 = v17 + 1) : (v19 = v18), v16 = -10 - v19, *(v11 + 16) = -10 - v19, (v19 & 0x80000000) != 0))
      {
        v20 = v7 + 1;
        if (v16 >= -1)
        {
          v21 = *(v11 + 32);
        }

        else
        {
          v21 = 4;
        }

        if (v16 < -1)
        {
          v16 = -2 - v16;
        }

        if (v21 < v16 + v20)
        {
          _CIIndexSetMakeSpace(v11, v20, 0, 0, 0);
          v15 = v11;
        }
      }
    }

    if (*(v15 + 16) <= -10)
    {
      v22 = *(v15 + 24);
      v23 = v22 - v5;
      v24 = (v22 - v5) >> 5;
      v25 = v22 - v6;
      v26 = (v22 - v6) >> 5;
      if (v24 <= v26 && v24 < *(v15 + 32))
      {
        v27 = v23 & 0x1F;
        v28 = v25 & 0x1F;
        if (v24 == v26)
        {
          v29 = v28 + 1;
          v30 = masks[v27];
          if (v27 != v29)
          {
            v30 = masks[v29] & ~v30;
          }
        }

        else
        {
          *(*(v15 + 40) + 4 * v24) |= ~masks[v27];
          v37 = v24 + 1;
          if (v37 < v26)
          {
            do
            {
              *(*(v15 + 40) + 4 * v37++) = -1;
            }

            while (v26 != v37);
          }

          v30 = masks[v28 + 1];
          v24 = v26;
        }

        *(*(v15 + 40) + 4 * v24) |= v30;
        v38 = *MEMORY[0x1E69E9840];

        return _CIIndexSetConvertIfInvertedArrayIsMoreEfficient(v15, 0, v13);
      }

LABEL_105:
      v81 = __si_assert_copy_extra_332();
      __message_assert_336(v81, v82, v83, v84, v85, v86, v87, v88, "CIIndexSet.c");
      free(v81);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    result = CFGetTypeID(v15);
    if (result == __kCIIndexSetInvertedTypeID)
    {
      v31 = *MEMORY[0x1E69E9840];

      return CIIndexSetClearRange_Array(v11, v6, v5);
    }

    v32 = *(v11 + 16);
    if ((v32 & 0x80000000) == 0)
    {
      if (v6)
      {
        v33 = v6 - 1;
      }

      else
      {
        v33 = 0;
      }

      result = searchMapWithHint(v11, v33, a4, 1);
      v34 = v11;
      v35 = *(v11 + 16);
      v36 = *(v11 + 32);
      if (v36 != v35)
      {
        v47 = *(v11 + 36);
        if (v47 == result)
        {
          goto LABEL_61;
        }

        v60 = *(v11 + 40);
        if (v47 >= result)
        {
          v80 = result;
          memmove((v60 + 4 * (v36 - v35 + result)), (v60 + 4 * result), 4 * (v47 - result));
          result = v80;
          v34 = v11;
        }

        else
        {
          v61 = result;
          memmove((v60 + 4 * v47), (v60 + 4 * (v47 + v36 - v35)), 4 * (result - (v47 + v36 - v35)));
          v34 = v11;
          result = (v61 - *(v11 + 32) + *(v11 + 16));
        }
      }

      *(v34 + 36) = result;
LABEL_61:
      v48 = *(v34 + 40);
      v49 = result - 1;
      if (result >= 33)
      {
        LODWORD(v50) = 0;
        while (1)
        {
          v51 = v50 + (v49 - v50) / 2;
          v52 = *(v48 + 4 * v51);
          if (v52 == v5)
          {
            break;
          }

          if (v52 > v5)
          {
            LODWORD(v50) = v51 + 1;
          }

          else
          {
            v49 = v51 - 1;
          }

          if (v50 > v49 - 32)
          {
            v50 = v50;
            goto LABEL_70;
          }
        }
      }

      else
      {
        v50 = 0;
LABEL_70:
        if (v49 + 1 > v50)
        {
          v51 = v49 + 1;
        }

        else
        {
          v51 = v50;
        }

        while (v50 <= v49)
        {
          v53 = *(v48 + 4 * v50++);
          if (v53 <= v5)
          {
            v51 = v50 - 1;
            break;
          }
        }
      }

      if (v7 + 1 > result - v51)
      {
        *(v34 + 16) -= result - v51;
        *(v34 + 36) = v51;
        v54 = 4 * v51;
        do
        {
          *(*(v34 + 40) + v54) = v5;
          ++*(v34 + 16);
          result = (*(v34 + 36) + 1);
          *(v34 + 36) = result;
          --v5;
          v54 += 4;
        }

        while (v5 >= v6);
      }

      *a4 = result;
      goto LABEL_9;
    }

    v39 = v11;
    v40 = -2;
    v41 = -2 - v32;
    v89 = *(v11 + 32);
    *(v11 + 16) = -2;
    if (v32 > 0xFFFFFFFD)
    {
      v43 = 0;
      LODWORD(v42) = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = v11 + 32;
      v45 = -3;
      do
      {
        v40 = v45;
        v46 = *(&v89 + v43);
        if (v46 <= v5)
        {
          *(v44 + 4 * v42) = v5;
          *(v11 + 16) = v40;
          if (v46 == v5)
          {
            ++v43;
          }

          --v5;
        }

        else
        {
          ++v43;
          *(v44 + 4 * v42) = v46;
          *(v11 + 16) = v40;
        }

        ++v42;
        if (v43 >= v41)
        {
          break;
        }

        v45 = v40 - 1;
      }

      while (v5 >= v6);
    }

    if (v43 >= v41)
    {
LABEL_92:
      if (v5 < v6)
      {
LABEL_9:
        v8 = *MEMORY[0x1E69E9840];
        return result;
      }

      v42 = v42;
      LODWORD(v68) = v5 - v6;
      if (v5 - 1 >= v6 - 1)
      {
        v68 = v68;
      }

      else
      {
        v68 = 0;
      }

      if (v68 >= 7)
      {
        v69 = v68 + 1;
        v70 = (v68 + 1) & 0x1FFFFFFF8;
        v71 = v40;
        v72 = 0uLL;
        v73 = vaddq_s32(vdupq_n_s32(v5), xmmword_1C2BFA430);
        v74 = (v39 + 4 * v42 + 48);
        v75.i64[0] = 0x300000003;
        v75.i64[1] = 0x300000003;
        v76.i64[0] = -1;
        v76.i64[1] = -1;
        v77.i64[0] = 0x700000007;
        v77.i64[1] = 0x700000007;
        v78 = v70;
        do
        {
          v74[-1] = v73;
          *v74 = vaddq_s32(v73, v75);
          v71 = vaddq_s32(v71, v76);
          v72 = vaddq_s32(v72, v76);
          v73 = vaddq_s32(v73, v77);
          v74 += 2;
          v78 -= 8;
        }

        while (v78);
        v40 = vaddvq_s32(vaddq_s32(v72, v71));
        if (v69 == v70)
        {
          goto LABEL_103;
        }

        v42 = v70 + v42;
        v5 -= v70;
      }

      v79 = (v39 + 4 * v42 + 32);
      do
      {
        *v79++ = v5;
        --v40;
        --v5;
      }

      while (v5 >= v6);
LABEL_103:
      *(v39 + 16) = v40;
      goto LABEL_9;
    }

    v55 = v42;
    v56 = v43;
    v57 = v43 + v32;
    result = memcpy((v11 + 4 * v42 + 32), &v89 + 4 * v43, 4 * (-3 - (v43 + v32)) + 4);
    v58 = v57 + v40;
    v59 = -2 - v32 - v56;
    if (v59 >= 4)
    {
      v62 = v59 & 0xFFFFFFFFFFFFFFFCLL;
      v63 = 0uLL;
      v64 = v55;
      v65 = vdupq_n_s64(1uLL);
      v66 = v59 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v64 = vaddq_s64(v64, v65);
        v63 = vaddq_s64(v63, v65);
        v66 -= 4;
      }

      while (v66);
      LODWORD(v55) = vaddvq_s64(vaddq_s64(v63, v64));
      v67 = v59 == v62;
      v39 = v11;
      if (v67)
      {
        goto LABEL_91;
      }

      LODWORD(v56) = v62 + v56;
    }

    else
    {
      v39 = v11;
    }

    LODWORD(v55) = v55 - (v56 + v32) - 2;
LABEL_91:
    v40 = v58 + 2;
    *(v39 + 16) = v58 + 2;
    LODWORD(v42) = v55;
    goto LABEL_92;
  }

  v9 = *MEMORY[0x1E69E9840];

  return _CIIndexSetAddIndex(result, v5, 0, a4, a5);
}

uint64_t array_popcount(const char *a1, int a2)
{
  v2 = (4 * a2);
  v3 = 0uLL;
  if (v2 >= 0x40)
  {
    do
    {
      v4 = v2 >> 6;
      if (v2 >= 0x7C0)
      {
        v4 = 31;
      }

      v5 = v4;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = a1;
      do
      {
        v19 = vld4q_s8(v10);
        v10 += 64;
        v9 = vaddq_s8(vcntq_s8(v19.val[0]), v9);
        v8 = vaddq_s8(vcntq_s8(v19.val[1]), v8);
        v7 = vaddq_s8(vcntq_s8(v19.val[2]), v7);
        v6 = vaddq_s8(vcntq_s8(v19.val[3]), v6);
        --v5;
      }

      while (v5);
      v3 = vpadalq_u32(v3, vpaddlq_u16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v8), v9), v7), v6)));
      v11 = v4 << 6;
      v2 -= v11;
      a1 += v11;
    }

    while (v2 > 0x3F);
  }

  if (v2 > 0xF)
  {
    v12 = 0;
    v13 = v2 & 0xFFFFFFF3;
    v14 = 0uLL;
    do
    {
      v14 = vaddq_s8(vcntq_s8(*&a1[v12]), v14);
      v12 += 16;
    }

    while (v12 < v13);
    v2 &= 0xCu;
    v3 = vpadalq_u32(v3, vpaddlq_u16(vpaddlq_u8(v14)));
    a1 += v13;
  }

  for (i = vaddvq_s64(v3); v2; v2 -= 4)
  {
    v16 = *a1;
    a1 += 4;
    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    i += v17.u32[0];
  }

  return i;
}

uint64_t _protectedReadVInt32(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (*a2 >= a3)
  {
    v19 = __si_assert_copy_extra_332();
    v20 = v19;
    v21 = "";
    if (v19)
    {
      v21 = v19;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 19, "offset < bufferLength", v21);
    goto LABEL_22;
  }

  v5 = v3 + 1;
  v6 = *(a1 + v3);
  result = *(a1 + v3);
  if (v6 < 0)
  {
    if (v5 >= a3)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 22, "offset < bufferLength", v24);
      goto LABEL_31;
    }

    v8 = v3 + 2;
    v9 = *(a1 + v5);
    v10 = *(a1 + v5);
    if ((v9 & 0x80000000) == 0)
    {
      result = result & 0x7F | (v10 << 7);
      goto LABEL_18;
    }

    if (v8 >= a3)
    {
      v25 = __si_assert_copy_extra_332();
      v23 = v25;
      v26 = "";
      if (v25)
      {
        v26 = v25;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 25, "offset < bufferLength", v26);
      goto LABEL_31;
    }

    v11 = v3 + 3;
    v12 = *(a1 + v8);
    v13 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      v14 = ((v10 & 0x7F) << 7) | (v12 << 14) | (result & 0x7F);
      v8 = v3 + 3;
LABEL_17:
      result = v14;
      goto LABEL_18;
    }

    if (v11 >= a3)
    {
      v28 = __si_assert_copy_extra_332();
      v20 = v28;
      v29 = "";
      if (v28)
      {
        v29 = v28;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 28, "offset < bufferLength", v29);
    }

    else
    {
      v8 = v3 + 4;
      v15 = *(a1 + v11);
      v16 = *(a1 + v11);
      if ((v15 & 0x80000000) == 0)
      {
        v17 = ((v13 & 0x7F) << 14) | (v16 << 21);
LABEL_16:
        v14 = v17 & 0xFFFFC000 | ((v10 & 0x7F) << 7) | result & 0x7F;
        goto LABEL_17;
      }

      if (v8 < a3)
      {
        v18 = *(a1 + v8);
        if ((v18 & 0x80000000) == 0)
        {
          v8 = v3 + 5;
          v17 = ((v16 & 0x7F) << 21) | (v18 << 28) | ((v13 & 0x7F) << 14);
          goto LABEL_16;
        }

        v32 = __si_assert_copy_extra_332();
        v23 = v32;
        v33 = "";
        if (v32)
        {
          v33 = v32;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 33, "(b4 & 0x80) == 0", v33);
LABEL_31:
        free(v23);
        if (__valid_fs(-1))
        {
          v27 = 2989;
        }

        else
        {
          v27 = 3072;
        }

        *v27 = -559038737;
        abort();
      }

      v30 = __si_assert_copy_extra_332();
      v20 = v30;
      v31 = "";
      if (v30)
      {
        v31 = v30;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "PostingChunk.c", 31, "offset < bufferLength", v31);
    }

LABEL_22:
    free(v20);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v8 = v3 + 1;
LABEL_18:
  *a2 = v8;
  return result;
}

void hybridScoringL1(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, float *a7, uint8_t *a8, float a9, _DWORD *a10)
{
  v17 = a1;
  v18 = a2[15];
  v19 = a1;
  if (v18 && (v20 = a2[21]) != 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 3.4028e38;
LABEL_4:
    v24 = *(v20 + 8 * v22);
    if (v24)
    {
      v49 = 0;
      MinDistance = distanceHolderGetMinDistance(v24, *(a3 + 80) + v19, &v49, 0);
      v21 = v49;
      v26 = fminf(v23, MinDistance);
      if (v49)
      {
        v23 = v26;
      }

      v18 = a2[15];
    }

    while (++v22 < v18)
    {
      v20 = a2[21];
      if (v20)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v21 = 0;
    v23 = 3.4028e38;
  }

  v27 = a2[16];
  if (v27)
  {
    v28 = a2[22];
    if (v28)
    {
      v29 = 0;
LABEL_15:
      v30 = *(v28 + 8 * v29);
      if (v30)
      {
        v49 = 0;
        v31 = distanceHolderGetMinDistance(v30, *(a3 + 80) + v19, &v49, 0);
        v21 = v49;
        v32 = fminf(v23, v31);
        if (v49)
        {
          v23 = v32;
        }

        v27 = a2[16];
      }

      while (++v29 < v27)
      {
        v28 = a2[22];
        if (v28)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v33 = a2[17];
  if (v33)
  {
    v34 = a2[23];
    if (v34)
    {
      v47 = v17;
      v35 = a5;
      v36 = a7;
      v37 = a8;
      v38 = a6;
      v39 = 0;
LABEL_25:
      v40 = *(v34 + 8 * v39);
      if (v40)
      {
        v49 = 0;
        v41 = distanceHolderGetMinDistance(v40, *(a3 + 80) + v19, &v49, 0);
        v21 = v49;
        v42 = fminf(v23, v41);
        if (v49)
        {
          v23 = v42;
        }

        v33 = a2[17];
      }

      while (++v39 < v33)
      {
        v34 = a2[23];
        if (v34)
        {
          goto LABEL_25;
        }
      }

      a6 = v38;
      a8 = v37;
      a7 = v36;
      a5 = v35;
      v17 = v47;
    }
  }

  if (a5 && a4 && a7 && a8)
  {
    v43 = 0.0;
    if ((v21 & 1) == 0)
    {
      if (isDebugVerboseMode_onceToken != -1)
      {
        dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
      }

      v43 = 0.0;
      if (!isDebugVerboseMode_debugEnabled)
      {
        v43 = a9;
      }
    }

    v44 = ContentIndexDocSetComputeScore(a5, v17, a6, a8, v43);
    *a7 = v44;
    v45 = v44 != 0.0;
    *a10 = v45;
    if ((v21 & 1) == 0)
    {
      if (v44 != 0.0)
      {
        return;
      }

      goto LABEL_50;
    }

LABEL_47:
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    goto LABEL_51;
  }

  if (v21)
  {
    LOBYTE(v45) = 0;
    goto LABEL_47;
  }

LABEL_50:
  v46 = 1;
LABEL_51:
  *a10 = v46;
}

BOOL CIIndexSetHasIndex(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 20) > a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v6 <= -10)
  {
    return (*(*(a1 + 40) + 4 * (v4 >> 5)) >> v4) & 1;
  }

  if ((v6 & 0x80000000) == 0)
  {
    v9 = binarySearchMap(a1, a2);
    v10 = a1;
    v11 = *(a1 + 36);
    if (v9 < v11 || (v12 = 0, v13 = *(v10 + 32), v9 < v13) && v9 >= v13 + v11 - *(v10 + 16))
    {
      v12 = *(*(v10 + 40) + 4 * v9) == a2;
    }

    return v12 ^ (CFGetTypeID(v10) == __kCIIndexSetInvertedTypeID);
  }

  if (v6 > 0xFFFFFFFD)
  {
    return 0;
  }

  v14 = *(a1 + 32) == a2;
  if (*(a1 + 32) == a2)
  {
    return v14;
  }

  if (v6 == -3)
  {
    return v14;
  }

  v14 = *(a1 + 36) == a2;
  if (*(a1 + 36) == a2)
  {
    return v14;
  }

  if (v6 == -4)
  {
    return v14;
  }

  v14 = *(a1 + 40) == a2;
  if (*(a1 + 40) == a2)
  {
    return v14;
  }

  if (v6 == -5)
  {
    return v14;
  }

  v14 = *(a1 + 44) == a2;
  if (*(a1 + 44) == a2)
  {
    return v14;
  }

  if (v6 == -6)
  {
    return v14;
  }

  v14 = *(a1 + 48) == a2;
  if (*(a1 + 48) == a2)
  {
    return v14;
  }

  if (v6 == -7)
  {
    return v14;
  }

  v14 = *(a1 + 52) == a2;
  if (*(a1 + 52) == a2 || v6 == -8)
  {
    return v14;
  }

  return *(a1 + 56) == a2;
}

void readSDBForOids(SISearchCtx_METADATA *a1, uint64_t a2, _WORD *a3, uint64_t *a4, int *a5, unsigned int *a6, unint64_t a7, _BYTE *a8, unsigned __int8 *a9, uint64_t a10, unsigned __int8 a11)
{
  v553 = a4;
  v554 = a8;
  v545 = a5;
  v546 = a6;
  v614 = *MEMORY[0x1E69E9840];
  v593 = a1;
  v15 = *(a1 + 1);
  if (v15 && *(v15 + 8))
  {
    if (dword_1EBF46AD0 < 5)
    {
      goto LABEL_7;
    }

    v16 = *__error();
    v17 = _SILogForLogForCategory(1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_589;
    }

    v18 = qos_class_self();
    current_queue = dispatch_get_current_queue();
    v20 = *(*(a1 + 1) + 8);
    v605[0].n128_u32[0] = 134218754;
    *(v605[0].n128_u64 + 4) = a1;
    v605[0].n128_u16[6] = 1024;
    *(&v605[0].n128_u32[3] + 2) = v18;
    v605[1].n128_u16[1] = 2112;
    *(v605[1].n128_u64 + 4) = current_queue;
    v605[1].n128_u16[6] = 2112;
    *(&v605[1].n128_u64[1] + 6) = v20;
    v21 = "readSDBForOids %p QoS %d queue %@ query %@";
    v22 = v17;
    v23 = 38;
    goto LABEL_588;
  }

  if (dword_1EBF46AD0 < 5)
  {
    goto LABEL_7;
  }

  v16 = *__error();
  v514 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v514, OS_LOG_TYPE_DEFAULT))
  {
    v605[0].n128_u32[0] = 134218498;
    *(v605[0].n128_u64 + 4) = a1;
    v605[0].n128_u16[6] = 1024;
    *(&v605[0].n128_u32[3] + 2) = qos_class_self();
    v605[1].n128_u16[1] = 2112;
    *(v605[1].n128_u64 + 4) = dispatch_get_current_queue();
    v21 = "readSDBForOids %p QoS %d queue %@ query (missing)";
    v22 = v514;
    v23 = 28;
LABEL_588:
    _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, v21, v605, v23);
  }

LABEL_589:
  *__error() = v16;
LABEL_7:
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  v24 = v593;
  if (SIIsAppleInternal_internal && *(v593 + 650) == 1 && (v25 = *(v593 + 1)) != 0 && (v26 = *(v25 + 32)) != 0)
  {
    v542 = CFStringGetLength(v26) > 3;
    v24 = v593;
  }

  else
  {
    v542 = 0;
  }

  v27 = *(*(v24 + 3) + 6587);
  v28 = a9[432];
  v557 = a2;
  if (v28 == 1)
  {
    v552 = a9[433];
  }

  else
  {
    v552 = PartialQueryResults::__needsWhatFieldsMatched(a9);
    a9[433] = v552;
    a9[432] = 1;
  }

  v29 = 1;
  if (!v554)
  {
    if (v553)
    {
      v43 = v553 + 69;
      v44 = 1;
      do
      {
        v45 = *(v43 - 37);
        v46 = *(v43 - 29);
        if (*v43)
        {
          v46 = 0;
          v45 = *(v43 - 1);
        }

        v47 = v45 | v46;
        v29 = v47 != 0;
        if (v44 >= a7)
        {
          break;
        }

        ++v44;
        v43 += 80;
      }

      while (!v47);
    }

    else
    {
      v29 = 0;
    }
  }

  v558 = a9;
  v30 = *(v593 + 641);
  if ((v552 & 1) != 0 && !*(*(v593 + 105) + 24))
  {
    v31 = *(v593 + 1);
    v32 = *(v31 + 720);
    v33 = *(v31 + 360);
    v34 = *(v31 + 208);
    v35 = queryFromCFString(*(v31 + 8));
    *(*(v593 + 105) + 24) = v35;
    Current = CFAbsoluteTimeGetCurrent();
    decorateExpandingFunctions(v35, **(v593 + 1), *(*(v593 + 1) + 656), Current);
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v507 = *__error();
    v508 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v508, OS_LOG_TYPE_DEFAULT))
    {
      v605[0].n128_u32[0] = 134218240;
      *(v605[0].n128_u64 + 4) = v593;
      v605[0].n128_u16[6] = 2048;
      *(&v605[0].n128_u64[1] + 6) = a7;
      _os_log_impl(&dword_1C278D000, v508, OS_LOG_TYPE_DEFAULT, "readSDBForOids %p item count: %ld", v605, 0x16u);
    }

    *__error() = v507;
  }

  v37 = v593;
  if (a3 && ((v38 = *(v593 + 40), v39 = v38 > 6, v40 = (1 << v38) & 0x4A, !v39) ? (v41 = v40 == 0) : (v41 = 1), !v41 || *(v593 + 29)))
  {
    updated = SISearchCtx_METADATA::updateGroupingCount(v593);
    v541 = 1;
    v37 = v593;
  }

  else
  {
    v541 = 0;
    updated = 0;
  }

  v48 = *(v37 + 1);
  v49 = v48[79];
  v539 = v48[78];
  v540 = v49;
  v50 = v48[81];
  v51 = v48[80];
  if (!(v51 | v50))
  {
    v50 = -1;
    v51 = -1;
  }

  v537 = v51;
  v538 = v50;
  v592.opaque2 = 0;
  v592.opaque1 = 0;
  v52 = *(*(v37 + 13) + 24);
  v551 = a3;
  if (v52)
  {
    v52 = _Block_copy(v52);
    v549 = v52;
  }

  else
  {
    v549 = 0;
  }

  v547 = a10;
  v536 = v27 & 1;
  v550 = updated;
  if (updated <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = updated;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v509 = *__error();
    v510 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v510, OS_LOG_TYPE_DEFAULT))
    {
      v605[0].n128_u32[0] = 134217984;
      *(v605[0].n128_u64 + 4) = v53;
      _os_log_impl(&dword_1C278D000, v510, OS_LOG_TYPE_DEFAULT, "categoryCount:%ld", v605, 0xCu);
    }

    v52 = __error();
    *v52 = v509;
  }

  v574 = a7;
  v543 = &v524;
  v535 = (v552 & 1) == 0;
  v548 = v30 | v29;
  MEMORY[0x1EEE9AC00](v52);
  v556 = &v524 - ((8 * v53 + 15) & 0xFFFFFFFF0);
  bzero(v556, 8 * v53);
  v54 = 240 * v53;
  MEMORY[0x1EEE9AC00](v55);
  v56 = &(&v524)[-30 * v53];
  bzero(v56, 240 * v53);
  v57 = 0;
  do
  {
    v58 = &v56[v57 / 8];
    *(v58 + 12) = xmmword_1C2BFF4C0;
    *(v58 + 13) = unk_1C2BFF4D0;
    *(v58 + 14) = xmmword_1C2BFF4E0;
    *(v58 + 8) = xmmword_1C2BFF480;
    *(v58 + 9) = unk_1C2BFF490;
    *(v58 + 10) = xmmword_1C2BFF4A0;
    *(v58 + 11) = unk_1C2BFF4B0;
    *(v58 + 4) = xmmword_1C2BFF440;
    *(v58 + 5) = unk_1C2BFF450;
    *(v58 + 6) = xmmword_1C2BFF460;
    *(v58 + 7) = unk_1C2BFF470;
    *v58 = ZERO_COMBO_BITS;
    *(v58 + 1) = *algn_1C2BFF410;
    v57 += 240;
    *(v58 + 2) = xmmword_1C2BFF420;
    *(v58 + 3) = unk_1C2BFF430;
  }

  while (v54 != v57);
  v59 = v593;
  v60 = *(v593 + 22);
  v61 = v553;
  if (v60 || (v60 = *(v593 + 23)) != 0)
  {
    if (v60 <= *(v593 + 21))
    {
      v60 = *(v593 + 21);
    }

    v575 = v60;
  }

  else
  {
    v575 = 0;
  }

  v591 = 0;
  v568 = unk_1C2BFF4B0;
  v569 = unk_1C2BFF490;
  v566 = xmmword_1C2BFF440;
  v567 = xmmword_1C2BFF4A0;
  v564 = unk_1C2BFF470;
  v565 = unk_1C2BFF450;
  v562 = ZERO_COMBO_BITS;
  v563 = xmmword_1C2BFF460;
  v560 = unk_1C2BFF430;
  v561 = *algn_1C2BFF410;
  v559 = xmmword_1C2BFF420;
  v555 = &(&v524)[v54 / 0xFFFFFFFFFFFFFFF8];
  v572 = unk_1C2BFF4D0;
  v573 = xmmword_1C2BFF4C0;
  v570 = xmmword_1C2BFF480;
  v571 = xmmword_1C2BFF4E0;
  if (!v553 || !v575 || *(*(v593 + 1) + 216))
  {
    if (!v575)
    {
      if (v53 >= 1)
      {
        bzero(v556, 8 * v53);
        v161 = v559;
        v160 = v560;
        v163 = v561;
        v162 = v562;
        v165 = v563;
        v164 = v564;
        v167 = v565;
        v166 = v566;
        v169 = v567;
        v168 = v568;
        v171 = v569;
        v170 = v570;
        v173 = v571;
        v172 = v572;
        v174 = v573;
        v94 = v557;
        do
        {
          *(v56 + 12) = v174;
          *(v56 + 13) = v172;
          *(v56 + 14) = v173;
          *(v56 + 8) = v170;
          *(v56 + 9) = v171;
          *(v56 + 10) = v169;
          *(v56 + 11) = v168;
          *(v56 + 4) = v166;
          *(v56 + 5) = v167;
          *(v56 + 6) = v165;
          *(v56 + 7) = v164;
          *v56 = v162;
          *(v56 + 1) = v163;
          *(v56 + 2) = v161;
          *(v56 + 3) = v160;
          v56 += 30;
          --v53;
        }

        while (v53);
        v93 = 0;
        v125 = 0;
        v126 = v551;
        goto LABEL_99;
      }

      v93 = 0;
      v125 = 0;
LABEL_98:
      v126 = v551;
      v94 = v557;
LABEL_99:
      v95 = &unk_1C2BF9000;
      goto LABEL_103;
    }

LABEL_80:
    v96 = *(v593 + 116);
    if (!v96)
    {
      v97 = malloc_type_malloc(32 * v53 + 40, 0x10000400A747E1EuLL);
      *(v593 + 116) = v97;
      v97[4] = 0;
      *v97 = 0u;
      *(v97 + 1) = 0u;
      *(v97 + 1) = v53;
      L1ComboQueueInit();
    }

    os_unfair_lock_lock(v96);
    v98 = v593;
    if (v53 >= 1)
    {
      v99 = 40;
      v101 = v555;
      v100 = v556;
      do
      {
        v102 = *(*(v98 + 116) + v99);
        v103 = L1ComboQueueCount(v102);
        *v100 = v103;
        if (v103)
        {
          v104 = *v102[2];
          if (v104)
          {
            v105 = (v104 + 80);
          }

          else
          {
            v105 = &ZERO_RANKING_WRAPPED_BITS;
          }

          v106 = v105[3];
          v605[2] = v105[2];
          v605[3] = v106;
          v605[4] = v105[4];
          v107 = *v105;
          v605[1] = v105[1];
          v605[0] = v107;
          v108 = **v102;
          if (v108)
          {
            v109 = (v108 + 80);
          }

          else
          {
            v109 = &ZERO_RANKING_WRAPPED_BITS;
          }

          v606 = *v109;
          v110 = v109[1];
          v111 = v109[2];
          v112 = v109[4];
          v607[2] = v109[3];
          v608 = v112;
          v607[0] = v110;
          v607[1] = v111;
          v113 = *v102[1];
          if (v113)
          {
            v114 = (v113 + 80);
          }

          else
          {
            v114 = &ZERO_RANKING_WRAPPED_BITS;
          }

          v609 = *v114;
          v115 = v114[1];
          v116 = v114[2];
          v117 = v114[4];
          v612 = v114[3];
          v613 = v117;
          v610 = v115;
          v611 = v116;
        }

        else
        {
          v611 = v573;
          v612 = v572;
          v613 = v571;
          v607[2] = v570;
          v608 = v569;
          v610 = v568;
          v609 = v567;
          v605[4] = v566;
          v606 = v565;
          v607[1] = v564;
          v607[0] = v563;
          v605[0] = v562;
          v605[1] = v561;
          v605[3] = v560;
          v605[2] = v559;
        }

        v118 = v612;
        *(v101 + 12) = v611;
        *(v101 + 13) = v118;
        *(v101 + 14) = v613;
        v119 = v608;
        *(v101 + 8) = v607[2];
        *(v101 + 9) = v119;
        v120 = v610;
        *(v101 + 10) = v609;
        *(v101 + 11) = v120;
        v121 = v606;
        *(v101 + 4) = v605[4];
        *(v101 + 5) = v121;
        v122 = v607[1];
        *(v101 + 6) = v607[0];
        *(v101 + 7) = v122;
        v123 = v605[1];
        *v101 = v605[0];
        *(v101 + 1) = v123;
        v124 = v605[3];
        *(v101 + 2) = v605[2];
        *(v101 + 3) = v124;
        v101 += 30;
        ++v100;
        v99 += 32;
        --v53;
      }

      while (v53);
    }

    os_unfair_lock_unlock(*(v98 + 116));
    v93 = 0;
    v125 = 0;
    v59 = v593;
    v61 = v553;
    goto LABEL_98;
  }

  if (!v29 && (*(v593 + 641) & 1) != 0)
  {
    goto LABEL_80;
  }

  LODWORD(v544) = a11;
  v62 = *(v593 + 116);
  if (!v62)
  {
    v63 = malloc_type_malloc(32 * v53 + 40, 0x10000400A747E1EuLL);
    *(v593 + 116) = v63;
    v63[4] = 0;
    *v63 = 0u;
    *(v63 + 1) = 0u;
    *(v63 + 1) = v53;
    L1ComboQueueInit();
  }

  os_unfair_lock_lock(v62);
  v64 = v593;
  if (v53 >= 1)
  {
    v65 = 40;
    v67 = v555;
    v66 = v556;
    v68 = v53;
    do
    {
      v69 = *(*(v64 + 116) + v65);
      v70 = L1ComboQueueCount(v69);
      *v66 = v70;
      if (v70)
      {
        v71 = *v69[2];
        if (v71)
        {
          v72 = (v71 + 80);
        }

        else
        {
          v72 = &ZERO_RANKING_WRAPPED_BITS;
        }

        v73 = v72[3];
        v605[2] = v72[2];
        v605[3] = v73;
        v605[4] = v72[4];
        v74 = *v72;
        v605[1] = v72[1];
        v605[0] = v74;
        v75 = **v69;
        if (v75)
        {
          v76 = (v75 + 80);
        }

        else
        {
          v76 = &ZERO_RANKING_WRAPPED_BITS;
        }

        v606 = *v76;
        v77 = v76[1];
        v78 = v76[2];
        v79 = v76[4];
        v607[2] = v76[3];
        v608 = v79;
        v607[0] = v77;
        v607[1] = v78;
        v80 = *v69[1];
        if (v80)
        {
          v81 = (v80 + 80);
        }

        else
        {
          v81 = &ZERO_RANKING_WRAPPED_BITS;
        }

        v609 = *v81;
        v82 = v81[1];
        v83 = v81[2];
        v84 = v81[4];
        v612 = v81[3];
        v613 = v84;
        v610 = v82;
        v611 = v83;
      }

      else
      {
        v611 = v573;
        v612 = v572;
        v613 = v571;
        v607[2] = v570;
        v608 = v569;
        v610 = v568;
        v609 = v567;
        v605[4] = v566;
        v606 = v565;
        v607[1] = v564;
        v607[0] = v563;
        v605[0] = v562;
        v605[1] = v561;
        v605[3] = v560;
        v605[2] = v559;
      }

      v85 = v612;
      *(v67 + 12) = v611;
      *(v67 + 13) = v85;
      *(v67 + 14) = v613;
      v86 = v608;
      *(v67 + 8) = v607[2];
      *(v67 + 9) = v86;
      v87 = v610;
      *(v67 + 10) = v609;
      *(v67 + 11) = v87;
      v88 = v606;
      *(v67 + 4) = v605[4];
      *(v67 + 5) = v88;
      v89 = v607[1];
      *(v67 + 6) = v607[0];
      *(v67 + 7) = v89;
      v90 = v605[1];
      *v67 = v605[0];
      *(v67 + 1) = v90;
      v91 = v605[3];
      *(v67 + 2) = v605[2];
      *(v67 + 3) = v91;
      v67 += 30;
      ++v66;
      v65 += 32;
      --v68;
    }

    while (v68);
  }

  os_unfair_lock_unlock(*(v64 + 116));
  v59 = v593;
  v92 = v550;
  if (v544)
  {
    v93 = 0;
    v61 = v553;
    v94 = v557;
    goto LABEL_78;
  }

  v61 = v553;
  v94 = v557;
  v95 = &unk_1C2BF9000;
  if (*(v593 + 1192))
  {
    goto LABEL_101;
  }

  v175 = *(v593 + 40);
  if (v175 == 2)
  {
    if (v575 >= 0x1389)
    {
LABEL_101:
      v93 = 0;
      goto LABEL_102;
    }
  }

  else if (v575 > 0x1388 || v175 != 4)
  {
    v93 = 0;
    if (v575 > 0x3E8 || (v175 & 0xFFFFFFFD) != 1)
    {
      goto LABEL_102;
    }
  }

  if (!*(v593 + 147))
  {
    if ((v175 & 0xFFFFFFFD) == 1)
    {
      v176 = 0;
    }

    else
    {
      v176 = v575;
    }

    Info = createFetchInfo(v53, v176);
    v59 = v593;
    *(v593 + 147) = Info;
  }

  Mutable = *(v59 + 148);
  if (!Mutable)
  {
    Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
    v59 = v593;
    *(v593 + 148) = Mutable;
  }

  v179 = *(v59 + 147);
  v544 = Mutable;
  pthread_rwlock_wrlock((Mutable + 16));
  v180 = 0;
  v181 = v553;
  v182 = v554;
  v183 = v574;
  do
  {
    if (RLEOIDArrayContainsOid_locked(v544, v557[v180]) || v182 && v182[v180])
    {
      goto LABEL_169;
    }

    v184 = v181[4];
    v185 = v181[5];
    v186 = *(v181 + 68);
    v187 = *(v181 + 69);
    v188 = (v187 & 1) != 0 ? 0 : v181[5];
    v189 = (*(v181 + 69) & 1) != 0 ? *(v181 + 68) : v181[4];
    if (v189 | v188)
    {
      goto LABEL_169;
    }

    if (v550)
    {
      v190 = v551[v180];
      v191 = v190 & 0xFFDF;
      if (v550 <= (v190 & 0xFFFFFFDF))
      {
        v191 = 18;
      }

      if (v550 <= v190)
      {
        LOWORD(v190) = 0;
      }

      if (*(v593 + 650) == 1)
      {
        v192 = v190;
      }

      else
      {
        v192 = v191;
      }
    }

    else
    {
      v192 = 0;
    }

    v193 = *v181;
    v194 = v181[1];
    if ((*(v593 + 25) & *v181) == 0)
    {
      if (*(v593 + 58) & v193 | *(v593 + 59) & v194)
      {
        v196 = *v181;
        v195 = v181[1];
LABEL_194:
        v199 = *(v593 + 62) & v193;
        v200 = *(v593 + 129);
        v201 = ((*(v593 + 63) & v194) << v200) | (v199 >> 1 >> ~v200);
        v202 = v199 << v200;
        if ((v200 & 0x40) != 0)
        {
          v198 = v202;
        }

        else
        {
          v198 = v201;
        }

        if ((v200 & 0x40) != 0)
        {
          v202 = 0;
        }

        v197 = v202 | 1;
        goto LABEL_200;
      }

      v197 = 0;
      v198 = 0;
      v196 = *v181;
      v195 = v181[1];
    }

    else
    {
      v195 = *(v593 + 53) & v194;
      v196 = *(v593 + 52) & v193;
      if (*(v593 + 58) & v193 | *(v593 + 59) & v194)
      {
        goto LABEL_194;
      }

      v197 = 0;
      v198 = 0;
    }

LABEL_200:
    v203 = v192;
    if (*(v593 + 164) > v192)
    {
      v204 = *(v181 + 14);
      v205 = *(v181 + 13);
      v206 = *(v181 + 12);
      v207 = *(v593 + 116);
      v208 = *(v593 + 22);
      v605[0].n128_u64[1] = v195;
      v605[0].n128_u64[0] = v196;
      v605[1].n128_u64[1] = v198;
      v605[1].n128_u64[0] = v197;
      v605[2].n128_u64[1] = v185;
      v605[2].n128_u64[0] = v184;
      v605[3].n128_u64[0] = __PAIR64__(v205, v206);
      v605[3].n128_u32[2] = v204;
      *(&v605[3].n128_u64[1] + 4) = *(v181 + 60);
      v605[4].n128_u8[4] = v186;
      v605[4].n128_u8[5] = v187;
      *(v605[4].n128_u64 + 6) = 0;
      v605[4].n128_u16[7] = 0;
      ci_donebits_push(v207, v575, v208, v203, v605);
    }

LABEL_169:
    ++v180;
    v181 += 10;
  }

  while (v183 != v180);
  v209 = 0;
  v534 = v179 + 8;
  if (v575 >= 0x3E8)
  {
    v210 = 1000;
  }

  else
  {
    v210 = v575;
  }

  while (2)
  {
    v211 = *(v593 + 116);
    v212 = L1ComboQueueCount(*&v211[8 * v209 + 10]._os_unfair_lock_opaque);
    *&v556[8 * v209] = v212;
    os_unfair_lock_lock(v211);
    if (v212)
    {
      v213 = v593;
      v214 = *(*(v593 + 116) + 32 * v209 + 40);
      v215 = *v214[2];
      if (v215)
      {
        v216 = (v215 + 80);
      }

      else
      {
        v216 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v217 = v216[3];
      v605[2] = v216[2];
      v605[3] = v217;
      v605[4] = v216[4];
      v218 = *v216;
      v605[1] = v216[1];
      v605[0] = v218;
      v219 = **v214;
      if (v219)
      {
        v220 = (v219 + 80);
      }

      else
      {
        v220 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v606 = *v220;
      v608 = v220[4];
      v607[2] = v220[3];
      v607[1] = v220[2];
      v607[0] = v220[1];
      v221 = *v214[1];
      if (v221)
      {
        v222 = (v221 + 80);
      }

      else
      {
        v222 = &ZERO_RANKING_WRAPPED_BITS;
      }

      v610 = v222[1];
      v611 = v222[2];
      v612 = v222[3];
      v613 = v222[4];
      v609 = *v222;
    }

    else
    {
      v611 = v573;
      v612 = v572;
      v613 = v571;
      v607[2] = v570;
      v608 = v569;
      v610 = v568;
      v609 = v567;
      v605[4] = v566;
      v606 = v565;
      v607[1] = v564;
      v607[0] = v563;
      v605[0] = v562;
      v605[1] = v561;
      v605[3] = v560;
      v605[2] = v559;
      v213 = v593;
    }

    v223 = v612;
    v224 = &v555[30 * v209];
    *(v224 + 12) = v611;
    *(v224 + 13) = v223;
    *(v224 + 14) = v613;
    v225 = v608;
    *(v224 + 8) = v607[2];
    *(v224 + 9) = v225;
    v226 = v610;
    *(v224 + 10) = v609;
    *(v224 + 11) = v226;
    v227 = v606;
    *(v224 + 4) = v605[4];
    *(v224 + 5) = v227;
    v228 = v607[1];
    *(v224 + 6) = v607[0];
    *(v224 + 7) = v228;
    v229 = v605[1];
    *v224 = v605[0];
    *(v224 + 1) = v229;
    v230 = v605[3];
    *(v224 + 2) = v605[2];
    *(v224 + 3) = v230;
    os_unfair_lock_unlock(*(v213 + 116));
    if (v212 >= v575)
    {
      v231 = (v534 + 40 * v209);
      if (v231[2] - 1 > v575)
      {
        while (2)
        {
          if (*v231)
          {
            v232 = (*v231 + 160);
          }

          else
          {
            v232 = &ZERO_FETCHINFO;
          }

          v234 = *v232;
          v233 = *(v232 + 1);
          v235 = *(v232 + 15);
          v236 = *(v232 + 16);
          if (*(v232 + 69))
          {
            v237 = v224 + 20;
            if (v236 == 0.0)
            {
              goto LABEL_229;
            }
          }

          else
          {
            v237 = v224 + 20;
            if (!(v234 | v233))
            {
              goto LABEL_229;
            }
          }

          v237 = v224;
          if (v235 == v236)
          {
            v237 = v224 + 10;
          }

LABEL_229:
          v238 = *(v232 + 12);
          v239 = *(v232 + 13);
          v240 = *(v237 + 12);
          v241 = *(v237 + 13);
          if (*(v237 + 69))
          {
            v242 = *(v237 + 15);
            if (v242 <= v235)
            {
              if (v242 != v235)
              {
                break;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v245 = v237;
            v243 = *v237;
            v244 = v245[1];
            if (__PAIR128__(v233, v234) >= __PAIR128__(v244, v243))
            {
              if (v244 != v233 || v243 != v234)
              {
                break;
              }

LABEL_239:
              if (v241 <= v239 && (v241 != v239 || v240 >= v238))
              {
                break;
              }
            }
          }

          v608 = 0u;
          memset(v607, 0, sizeof(v607));
          v606 = 0u;
          memset(v605, 0, sizeof(v605));
          pqpop_rankAndFetchInfo_t(v605, v231);
          if (v605[3].n128_u32[2])
          {
            v248 = v231[3];
            if (!v248)
            {
              v248 = container_fetch_table_create(v210);
              v231[3] = v248;
            }

            v603[0] = v607[0];
            v603[1] = v607[1];
            v603[2] = v607[2];
            v604 = v608;
            v600 = v605[3];
            v601 = v605[4];
            v602 = v606;
            v597 = v605[0];
            v598 = v605[1];
            v599 = v605[2];
            container_fetch_table_check_and_insert(v248, &v597);
            v249 = v231[4];
            if (!v249)
            {
              v249 = container_fetch_table_q2_create(v210);
              v231[4] = v249;
            }

            *(&v604 + 1) = 0;
            *(&v604 + 1) = 0;
            v600 = v605[3];
            v601 = v605[4];
            v598 = v605[1];
            v599 = v605[2];
            v597 = v605[0];
            LODWORD(v603[0]) = v607[0];
            BYTE4(v603[0]) = BYTE4(v607[0]);
            v602 = v606;
            DWORD2(v603[0]) = DWORD2(v607[0]);
            BYTE12(v603[0]) = BYTE12(v607[0]);
            *(v603 + 13) = *(v607 + 13);
            *(&v603[1] + 12) = *(&v607[1] + 12);
            DWORD1(v603[2]) = 0;
            *(&v603[2] + 1) = *(&v607[2] + 1);
            LOBYTE(v604) = v608;
            container_fetch_table_q2_check_and_insert(v249, &v597);
          }

          if (v231[2] - 1 <= v575)
          {
            break;
          }

          continue;
        }
      }
    }

    if (++v209 != v53)
    {
      continue;
    }

    break;
  }

  *&v573 = malloc_type_malloc(v574, 0x100004077774924uLL);
  *&v572 = 0;
  v250 = v557;
  v251 = v551;
  v61 = v553;
  v252 = v554;
  v253 = v553;
  v254 = v545;
  v255 = v546;
  v256 = v544;
  while (2)
  {
    if (!RLEOIDArrayContainsOid_locked(v256, *v250))
    {
      if (v550)
      {
        v257 = *v251;
        v258 = v257 & 0xFFDF;
        if (v550 <= (v257 & 0xFFFFFFDF))
        {
          v258 = 18;
        }

        if (v550 <= v257)
        {
          LOWORD(v257) = 0;
        }

        if (*(v593 + 650) == 1)
        {
          v259 = v257;
        }

        else
        {
          v259 = v258;
        }
      }

      else
      {
        v259 = 0;
      }

      v260 = v573;
      if (v554 && *v252 || ((v262 = v253[4], v261 = v253[5], v263 = *(v253 + 68), v264 = *(v253 + 69), (v264 & 1) == 0) ? (v265 = v253[5]) : (v265 = 0), (v264 & 1) == 0 ? (v266 = v253[4]) : (v266 = *(v253 + 68)), v266 | v265))
      {
        v267 = v572;
        v557[v572] = *v250;
        v551[v267] = *v251;
        v268 = &v61[10 * v267];
        *v268 = *v253;
        v269 = *(v253 + 1);
        v270 = *(v253 + 2);
        v271 = *(v253 + 4);
        *(v268 + 3) = *(v253 + 3);
        *(v268 + 4) = v271;
        *(v268 + 1) = v269;
        *(v268 + 2) = v270;
        v554[v267] = *v252;
        v272 = v545 + 5 * v267;
        v273 = *v254;
        *(v272 + 4) = *(v254 + 4);
        *v272 = v273;
        v274 = &v546[7 * v267];
        v275 = *v255;
        *(v274 + 3) = *(v255 + 3);
        *v274 = v275;
        *(v260 + v267) = 1;
        *&v572 = v267 + 1;
        goto LABEL_273;
      }

      v595 = 0;
      v596 = 0;
      v587 = 0;
      v588 = 0;
      v597.n128_u64[0] = 0;
      *(v597.n128_u64 + 7) = 0;
      v276 = *v253;
      v277 = v253[1];
      if ((*(v593 + 25) & *v253) == 0)
      {
        v279 = *v253;
        v278 = v253[1];
        if (*(v593 + 58) & v276 | *(v593 + 59) & v277)
        {
          goto LABEL_279;
        }

        v280 = 0;
        v281 = 0;
        v279 = *v253;
        v278 = v253[1];
      }

      else
      {
        v278 = *(v593 + 53) & v277;
        v279 = *(v593 + 52) & v276;
        if (!(*(v593 + 58) & v276 | *(v593 + 59) & v277))
        {
          v280 = 0;
          v281 = 0;
          goto LABEL_286;
        }

LABEL_279:
        v282 = *(v593 + 62) & v276;
        v283 = *(v593 + 129);
        v284 = ((*(v593 + 63) & v277) << v283) | (v282 >> 1 >> ~v283);
        v285 = v282 << v283;
        if ((v283 & 0x40) != 0)
        {
          v281 = v285;
        }

        else
        {
          v281 = v284;
        }

        if ((v283 & 0x40) != 0)
        {
          v286 = 0;
        }

        else
        {
          v286 = v285;
        }

        v280 = v286 | 1;
      }

LABEL_286:
      v287 = *(v253 + 15);
      v288 = *(v253 + 16);
      v289 = *(v253 + 14);
      v290 = *(v253 + 13);
      v291 = *(v253 + 12);
      v589 = *v254;
      v590 = *(v254 + 4);
      v292 = *(v255 + 4);
      v293 = *v255;
      v594[0] = *(v255 + 5);
      *(v594 + 15) = *(v255 + 5);
      v294 = *v250;
      if (isDebugVerboseMode_onceToken != -1)
      {
        v561.n128_u64[0] = *v250;
        *&v567 = v261;
        *&v563 = v276;
        *&v569 = v277;
        v562.n128_u32[0] = v264;
        *&v568 = v263;
        *&v564 = v262;
        LODWORD(v571) = v289;
        LODWORD(v570) = v291;
        v566.n128_u64[0] = v279;
        v532 = v278;
        *&v565 = v280;
        v560.n128_u64[0] = v281;
        dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
        v281 = v560.n128_u64[0];
        v280 = v565;
        v278 = v532;
        v279 = v566.n128_u64[0];
        v291 = v570;
        v289 = v571;
        v261 = v567;
        v262 = v564;
        v263 = v568;
        v264 = v562.n128_u32[0];
        v277 = v569;
        v276 = v563;
        v294 = v561.n128_u64[0];
      }

      v295 = v259;
      if (isDebugVerboseMode_debugEnabled == 1)
      {
        v560.n128_u64[0] = v281;
        *&v565 = v280;
        v532 = v278;
        v566.n128_u64[0] = v279;
        LODWORD(v570) = v291;
        LODWORD(v571) = v289;
        *&v567 = v261;
        *&v564 = v262;
        *&v568 = v263;
        v562.n128_u32[0] = v264;
        *&v569 = v277;
        *&v563 = v276;
        v561.n128_u64[0] = v294;
        v559.n128_u32[0] = *__error();
        v533 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v533, OS_LOG_TYPE_DEFAULT))
        {
          v605[0].n128_u32[0] = 134219776;
          *(v605[0].n128_u64 + 4) = v534 + 40 * v259;
          v605[0].n128_u16[6] = 1024;
          *(&v605[0].n128_u32[3] + 2) = v259;
          v605[1].n128_u16[1] = 2048;
          *(v605[1].n128_u64 + 4) = v561.n128_u64[0];
          v605[1].n128_u16[6] = 1024;
          *(&v605[1].n128_u32[3] + 2) = v571;
          v605[2].n128_u16[1] = 2048;
          *(v605[2].n128_f64 + 4) = v288;
          v605[2].n128_u16[6] = 1024;
          *(&v605[2].n128_u32[3] + 2) = v570;
          v605[3].n128_u16[1] = 2048;
          *(v605[3].n128_f64 + 4) = v287;
          v605[3].n128_u16[6] = 2048;
          *(&v605[3].n128_f64[1] + 6) = v290;
          _os_log_impl(&dword_1C278D000, v533, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: collecting, oid: %lld, containerId : %u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v605, 0x46u);
        }

        *__error() = v559.n128_u32[0];
        v294 = v561.n128_u64[0];
        v276 = v563;
        v277 = v569;
        v264 = v562.n128_u32[0];
        v263 = v568;
        v262 = v564;
        v261 = v567;
        v289 = v571;
        v291 = v570;
        v279 = v566.n128_u64[0];
        v278 = v532;
        v280 = v565;
        v281 = v560.n128_u64[0];
        v295 = v259;
      }

      v296 = v293 | (v292 << 32);
      if (*&v556[8 * v295] < v575)
      {
        v605[0].n128_u64[0] = v279;
        v605[0].n128_u64[1] = v278;
        v605[1].n128_u64[0] = v280;
        v605[1].n128_u64[1] = v281;
        v605[2].n128_u64[0] = v262;
        v605[2].n128_u64[1] = v261;
        v605[3].n128_u64[0] = __PAIR64__(LODWORD(v290), v291);
        v605[3].n128_u64[1] = __PAIR64__(LODWORD(v287), v289);
        v605[4].n128_f32[0] = v288;
        v605[4].n128_u8[4] = v263;
        v605[4].n128_u8[5] = v264;
        *(v605[4].n128_u64 + 6) = 0;
        v605[4].n128_u16[7] = 0;
        *&v606 = v276;
        *(&v606 + 1) = v277;
        LODWORD(v607[0]) = v589;
        BYTE4(v607[0]) = v590;
        *(v607 + 5) = 0;
        BYTE7(v607[0]) = 0;
        BYTE12(v607[0]) = (v293 | (v292 << 32)) >> 32;
        DWORD2(v607[0]) = v293;
        *(v607 + 13) = v594[0];
        *(&v607[1] + 12) = *(v594 + 15);
        DWORD1(v607[2]) = 0;
        *(&v607[2] + 1) = v294;
        v608 = 0uLL;
        v297 = v294;
        pqpush_rankAndFetchInfo_t(v534 + 40 * v295, v605);
        v256 = v544;
        v298 = (v544 + 216);
        v299 = v297;
        goto LABEL_291;
      }

      v300 = &v555[30 * v295];
      v61 = v553;
      v256 = v544;
      if (v264)
      {
        if (v288 != 0.0)
        {
LABEL_295:
          if (v287 == v288)
          {
            v300 += 10;
          }

LABEL_299:
          v301 = *(v300 + 12);
          v302 = *(v300 + 13);
          if (*(v300 + 69))
          {
            v303 = *(v300 + 15);
            if (v303 < v287)
            {
              goto LABEL_312;
            }

            if (v303 != v287)
            {
              goto LABEL_339;
            }

LABEL_309:
            if (v302 < v290 || v302 == v290 && v301 >= v291)
            {
LABEL_312:
              v308 = (v534 + 40 * v295);
              if (v308[2] - 1 < v575)
              {
                v561.n128_u64[0] = v294;
                *&v567 = v261;
                *&v563 = v276;
                *&v569 = v277;
                v562.n128_u32[0] = v264;
                *&v568 = v263;
                *&v564 = v262;
                LODWORD(v571) = v289;
                LODWORD(v570) = v291;
                v566.n128_u64[0] = v279;
                v309 = v278;
                *&v565 = v280;
                v560.n128_u64[0] = v281;
                v559.n128_u64[0] = v296;
                v533 = (v534 + 40 * v295);
                SIValueSet<unsigned long long>::SIValueSetInsert((v544 + 216), v294);
                v605[0].n128_u64[1] = v309;
                v605[0].n128_u64[0] = v566.n128_u64[0];
                v605[1].n128_u64[1] = v560.n128_u64[0];
                v605[1].n128_u64[0] = v565;
                v605[2].n128_u64[1] = v567;
                v605[2].n128_u64[0] = v564;
                v605[3].n128_u64[0] = __PAIR64__(LODWORD(v290), v570);
                v605[3].n128_u64[1] = __PAIR64__(LODWORD(v287), v571);
                v605[4].n128_f32[0] = v288;
                v605[4].n128_u8[4] = v568;
                v605[4].n128_u8[5] = v562.n128_u8[0];
                *(v605[4].n128_u64 + 6) = 0;
                v605[4].n128_u16[7] = 0;
                *(&v606 + 1) = v569;
                *&v606 = v563;
                LODWORD(v607[0]) = v589;
                BYTE4(v607[0]) = v590;
                *(v607 + 5) = v587;
                BYTE7(v607[0]) = v588;
                BYTE12(v607[0]) = v559.n128_u8[4];
                DWORD2(v607[0]) = v559.n128_u32[0];
                *(v607 + 13) = v594[0];
                *(&v607[1] + 12) = *(v594 + 15);
                DWORD1(v607[2]) = 0;
                *(&v607[2] + 1) = v561.n128_u64[0];
                v608 = 0uLL;
                pqpush_rankAndFetchInfo_t(v533, v605);
                goto LABEL_273;
              }

              v310 = (*v308 + 160);
              if (!*v308)
              {
                v310 = &ZERO_FETCHINFO;
              }

              v311 = *(v310 + 12);
              v312 = *(v310 + 13);
              if ((*(v310 + 69) | v264))
              {
                v313 = *(v310 + 15);
                if (v287 != v313 || v290 <= v312 && (v290 != v312 || v291 >= v311))
                {
                  v314 = v287 != 100.0;
                  if (v287 <= v313)
                  {
                    v314 = v313 == 100.0;
                  }

                  if (!v314)
                  {
                    goto LABEL_339;
                  }
                }
              }

              else
              {
                v317 = v310;
                v315 = *v310;
                v316 = *(v317 + 1);
                if (__PAIR128__(v316, v315) >= __PAIR128__(v278, v279))
                {
                  v328 = v278 == v316 && v279 == v315;
                  if (!v328 || v290 <= v312 && (v290 != v312 || v291 >= v311))
                  {
                    goto LABEL_339;
                  }
                }
              }

              v559.n128_u64[0] = v296;
              v531 = v295;
              v560.n128_u64[0] = v281;
              *&v565 = v280;
              v318 = v278;
              v566.n128_u64[0] = v279;
              LODWORD(v570) = v291;
              LODWORD(v571) = v289;
              *&v567 = v261;
              *&v564 = v262;
              *&v568 = v263;
              v562.n128_u32[0] = v264;
              *&v569 = v277;
              *&v563 = v276;
              v319 = v294;
              v533 = (v534 + 40 * v295);
              pqpop_rankAndFetchInfo_t(v605, v308);
              v320 = v605[3].n128_u32[0];
              v321 = v605[3].n128_f32[1];
              v322 = v605[3].n128_u32[2];
              v323 = v605[3].n128_f32[3];
              v324 = v605[4].n128_f32[0];
              v325 = *(&v607[2] + 1);
              if (isDebugVerboseMode_onceToken != -1)
              {
                v529 = v605[3].n128_f32[3];
                v530 = v605[3].n128_f32[1];
                v528 = v605[4].n128_f32[0];
                v526 = v605[3].n128_u32[2];
                v527 = v605[3].n128_u32[0];
                dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
                v322 = v526;
                v320 = v527;
                v324 = v528;
                v323 = v529;
                v321 = v530;
              }

              v326 = v319;
              if (isDebugVerboseMode_debugEnabled == 1)
              {
                v526 = v322;
                v527 = v320;
                v528 = v324;
                v529 = v323;
                v530 = v321;
                v525 = *__error();
                v524 = _SILogForLogForCategory(1);
                if (os_log_type_enabled(v524, OS_LOG_TYPE_DEFAULT))
                {
                  v605[0].n128_u32[0] = 134219776;
                  *(v605[0].n128_u64 + 4) = v533;
                  v605[0].n128_u16[6] = 1024;
                  *(&v605[0].n128_u32[3] + 2) = v531;
                  v605[1].n128_u16[1] = 2048;
                  *(v605[1].n128_u64 + 4) = v325;
                  v605[1].n128_u16[6] = 1024;
                  *(&v605[1].n128_u32[3] + 2) = v526;
                  v605[2].n128_u16[1] = 2048;
                  *(v605[2].n128_f64 + 4) = v528;
                  v605[2].n128_u16[6] = 1024;
                  *(&v605[2].n128_u32[3] + 2) = v527;
                  v605[3].n128_u16[1] = 2048;
                  *(v605[3].n128_f64 + 4) = v529;
                  v605[3].n128_u16[6] = 2048;
                  *(&v605[3].n128_f64[1] + 6) = v530;
                  _os_log_impl(&dword_1C278D000, v524, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: popped, oid: %lld, containerId : %u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v605, 0x46u);
                }

                *__error() = v525;
                v326 = v319;
              }

              v256 = v544;
              v327 = v326;
              SIValueSet<unsigned long long>::SIValueSetInsert((v544 + 216), v326);
              v605[0].n128_u64[1] = v318;
              v605[0].n128_u64[0] = v566.n128_u64[0];
              v605[1].n128_u64[1] = v560.n128_u64[0];
              v605[1].n128_u64[0] = v565;
              v605[2].n128_u64[1] = v567;
              v605[2].n128_u64[0] = v564;
              v605[3].n128_u64[0] = __PAIR64__(LODWORD(v290), v570);
              v605[3].n128_u64[1] = __PAIR64__(LODWORD(v287), v571);
              v605[4].n128_f32[0] = v288;
              v605[4].n128_u8[4] = v568;
              v605[4].n128_u8[5] = v562.n128_u8[0];
              *(v605[4].n128_u64 + 6) = v595;
              v605[4].n128_u16[7] = v596;
              *(&v606 + 1) = v569;
              *&v606 = v563;
              LODWORD(v607[0]) = v589;
              BYTE4(v607[0]) = v590;
              *(v607 + 5) = v587;
              BYTE7(v607[0]) = v588;
              BYTE12(v607[0]) = v559.n128_u8[4];
              DWORD2(v607[0]) = v559.n128_u32[0];
              *(v607 + 13) = v594[0];
              *(&v607[1] + 12) = *(v594 + 15);
              DWORD1(v607[2]) = 0;
              *(&v607[2] + 1) = v327;
              LOBYTE(v608) = 0;
              *(&v608 + 1) = v597.n128_u64[0];
              *(&v608 + 1) = *(v597.n128_u64 + 7);
              pqpush_rankAndFetchInfo_t(v533, v605);
LABEL_292:
              v61 = v553;
              goto LABEL_273;
            }
          }

          else
          {
            v306 = v300;
            v304 = *v300;
            v305 = v306[1];
            if (__PAIR128__(v305, v304) < __PAIR128__(v278, v279))
            {
              goto LABEL_312;
            }

            if (v305 == v278 && v304 == v279)
            {
              goto LABEL_309;
            }
          }

LABEL_339:
          if (isDebugVerboseMode_onceToken != -1)
          {
            v531 = v295;
            v532 = v278;
            v561.n128_u64[0] = v294;
            *&v567 = v261;
            *&v563 = v276;
            *&v569 = v277;
            v342 = v264;
            *&v568 = v263;
            v343 = v262;
            LODWORD(v571) = v289;
            LODWORD(v570) = v291;
            v566.n128_u64[0] = v279;
            *&v565 = v280;
            v560.n128_u64[0] = v281;
            v559.n128_u64[0] = v296;
            dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
            v296 = v559.n128_u64[0];
            v295 = v531;
            v278 = v532;
            v281 = v560.n128_u64[0];
            v280 = v565;
            v279 = v566.n128_u64[0];
            v291 = v570;
            v289 = v571;
            v261 = v567;
            v262 = v343;
            v263 = v568;
            v264 = v342;
            v277 = v569;
            v276 = v563;
            v294 = v561.n128_u64[0];
          }

          if (isDebugVerboseMode_debugEnabled == 1)
          {
            v559.n128_u64[0] = v296;
            v344 = v295;
            v560.n128_u64[0] = v281;
            *&v565 = v280;
            v532 = v278;
            v566.n128_u64[0] = v279;
            v345 = v291;
            LODWORD(v571) = v289;
            *&v567 = v261;
            *&v564 = v262;
            *&v568 = v263;
            v562.n128_u32[0] = v264;
            *&v569 = v277;
            *&v563 = v276;
            v561.n128_u64[0] = v294;
            LODWORD(v533) = *__error();
            v346 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
            {
              v605[0].n128_u32[0] = 134219776;
              *(v605[0].n128_u64 + 4) = v534 + 40 * v344;
              v605[0].n128_u16[6] = 1024;
              *(&v605[0].n128_u32[3] + 2) = v344;
              v605[1].n128_u16[1] = 2048;
              *(v605[1].n128_u64 + 4) = v561.n128_u64[0];
              v605[1].n128_u16[6] = 1024;
              *(&v605[1].n128_u32[3] + 2) = v571;
              v605[2].n128_u16[1] = 2048;
              *(v605[2].n128_f64 + 4) = v288;
              v605[2].n128_u16[6] = 1024;
              *(&v605[2].n128_u32[3] + 2) = v345;
              v605[3].n128_u16[1] = 2048;
              *(v605[3].n128_f64 + 4) = v287;
              v605[3].n128_u16[6] = 2048;
              *(&v605[3].n128_f64[1] + 6) = v290;
              _os_log_impl(&dword_1C278D000, v346, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: insert_hash, oid: %lld, containerId:%u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v605, 0x46u);
            }

            *__error() = v533;
            v256 = v544;
            v294 = v561.n128_u64[0];
            v276 = v563;
            v277 = v569;
            v264 = v562.n128_u32[0];
            v263 = v568;
            v262 = v564;
            v261 = v567;
            v289 = v571;
            v291 = v345;
            v279 = v566.n128_u64[0];
            v278 = v532;
            v280 = v565;
            v281 = v560.n128_u64[0];
            v295 = v344;
            v296 = v559.n128_u64[0];
            if (!v571)
            {
              goto LABEL_292;
            }
          }

          else if (!v289)
          {
            goto LABEL_292;
          }

          v531 = v295;
          v532 = v278;
          v329 = (v534 + 40 * v295);
          isa = v329[3].isa;
          v533 = v329;
          v561.n128_u64[0] = v294;
          *&v569 = v277;
          *&v568 = v263;
          *&v564 = v262;
          *&v567 = v261;
          LODWORD(v571) = v289;
          LODWORD(v570) = v291;
          v566.n128_u64[0] = v279;
          *&v565 = v280;
          if (!isa)
          {
            v331 = v276;
            v332 = v264;
            v560.n128_u64[0] = v281;
            v559.n128_u64[0] = v296;
            isa = container_fetch_table_create(v575);
            v278 = v532;
            v329 = v533;
            v296 = v559.n128_u64[0];
            v281 = v560.n128_u64[0];
            v280 = v565;
            v279 = v566.n128_u64[0];
            v291 = v570;
            v289 = v571;
            v261 = v567;
            v262 = v564;
            LOBYTE(v263) = v568;
            v264 = v332;
            v277 = v569;
            v276 = v331;
            v294 = v561.n128_u64[0];
            v533[3].isa = isa;
          }

          if (!v329[4].isa)
          {
            v333 = v276;
            v334 = v264;
            v560.n128_u64[0] = v281;
            v559.n128_u64[0] = v296;
            v335 = container_fetch_table_q2_create(v575);
            v296 = v559.n128_u64[0];
            v281 = v560.n128_u64[0];
            v280 = v565;
            v278 = v532;
            v336 = v533;
            v279 = v566.n128_u64[0];
            v291 = v570;
            v289 = v571;
            v261 = v567;
            v262 = v564;
            LOBYTE(v263) = v568;
            v264 = v334;
            v277 = v569;
            v276 = v333;
            v294 = v561.n128_u64[0];
            v533[4].isa = v335;
            isa = v336[3].isa;
          }

          v605[0].n128_u64[0] = v279;
          v605[0].n128_u64[1] = v278;
          v605[1].n128_u64[0] = v280;
          v337 = v281;
          v605[1].n128_u64[1] = v281;
          v605[2].n128_u64[0] = v262;
          v605[2].n128_u64[1] = v261;
          v605[3].n128_u64[0] = __PAIR64__(LODWORD(v290), v291);
          v605[3].n128_u64[1] = __PAIR64__(LODWORD(v287), v289);
          v605[4].n128_f32[0] = v288;
          v605[4].n128_u8[4] = v263;
          v562.n128_u32[0] = v264;
          v605[4].n128_u8[5] = v264;
          *(v605[4].n128_u64 + 6) = 0;
          v605[4].n128_u16[7] = 0;
          *&v563 = v276;
          *&v606 = v276;
          *(&v606 + 1) = v277;
          LODWORD(v607[0]) = v589;
          BYTE4(v607[0]) = v590;
          *(v607 + 5) = 0;
          BYTE7(v607[0]) = 0;
          BYTE12(v607[0]) = BYTE4(v296);
          v338 = v296;
          DWORD2(v607[0]) = v296;
          *(v607 + 13) = v594[0];
          *(&v607[1] + 12) = *(v594 + 15);
          DWORD1(v607[2]) = 0;
          *(&v607[2] + 1) = v294;
          v608 = 0uLL;
          v560.n128_u32[0] = container_fetch_table_check_and_insert(isa, v605);
          if (v560.n128_u32[0])
          {
            if (isDebugVerboseMode_onceToken != -1)
            {
              dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
            }

            if (isDebugVerboseMode_debugEnabled == 1)
            {
              v347 = *__error();
              v559.n128_u64[0] = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v559.n128_u64[0], OS_LOG_TYPE_DEFAULT))
              {
                v605[0].n128_u32[0] = 134219776;
                *(v605[0].n128_u64 + 4) = v533;
                v605[0].n128_u16[6] = 1024;
                *(&v605[0].n128_u32[3] + 2) = v531;
                v605[1].n128_u16[1] = 2048;
                *(v605[1].n128_u64 + 4) = v561.n128_u64[0];
                v605[1].n128_u16[6] = 1024;
                *(&v605[1].n128_u32[3] + 2) = v571;
                v605[2].n128_u16[1] = 2048;
                *(v605[2].n128_f64 + 4) = v288;
                v605[2].n128_u16[6] = 1024;
                *(&v605[2].n128_u32[3] + 2) = v570;
                v605[3].n128_u16[1] = 2048;
                *(v605[3].n128_f64 + 4) = v287;
                v605[3].n128_u16[6] = 2048;
                *(&v605[3].n128_f64[1] + 6) = v290;
                _os_log_impl(&dword_1C278D000, v559.n128_u64[0], OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: insert_hash_table, oid: %lld, containerId:%u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v605, 0x46u);
              }

              *__error() = v347;
              v256 = v544;
            }
          }

          v339 = v533[4].isa;
          v605[0].n128_u64[1] = v532;
          v605[0].n128_u64[0] = v566.n128_u64[0];
          v605[1].n128_u64[1] = v337;
          v605[1].n128_u64[0] = v565;
          v605[2].n128_u64[1] = v567;
          v605[2].n128_u64[0] = v564;
          v605[3].n128_u64[0] = __PAIR64__(LODWORD(v290), v570);
          v605[3].n128_u64[1] = __PAIR64__(LODWORD(v287), v571);
          v605[4].n128_f32[0] = v288;
          v605[4].n128_u8[4] = v568;
          v605[4].n128_u8[5] = v562.n128_u8[0];
          *(v605[4].n128_u64 + 6) = v595;
          v605[4].n128_u16[7] = v596;
          *(&v606 + 1) = v569;
          *&v606 = v563;
          BYTE4(v607[0]) = v590;
          LODWORD(v607[0]) = v589;
          *(v607 + 5) = v338 << 24;
          *(v607 + 13) = v594[0];
          *(&v607[1] + 12) = *(v594 + 15);
          DWORD1(v607[2]) = 0;
          *(&v607[2] + 1) = v561.n128_u64[0];
          v608 = 0uLL;
          if (container_fetch_table_q2_check_and_insert(v339, v605))
          {
            if (isDebugVerboseMode_onceToken != -1)
            {
              dispatch_once(&isDebugVerboseMode_onceToken, &__block_literal_global_2688);
            }

            v299 = v561.n128_u64[0];
            if (isDebugVerboseMode_debugEnabled == 1)
            {
              v340 = *__error();
              v341 = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v341, OS_LOG_TYPE_DEFAULT))
              {
                v605[0].n128_u32[0] = 134219776;
                *(v605[0].n128_u64 + 4) = v533;
                v605[0].n128_u16[6] = 1024;
                *(&v605[0].n128_u32[3] + 2) = v531;
                v605[1].n128_u16[1] = 2048;
                *(v605[1].n128_u64 + 4) = v561.n128_u64[0];
                v605[1].n128_u16[6] = 1024;
                *(&v605[1].n128_u32[3] + 2) = v571;
                v605[2].n128_u16[1] = 2048;
                *(v605[2].n128_f64 + 4) = v288;
                v605[2].n128_u16[6] = 1024;
                *(&v605[2].n128_u32[3] + 2) = v570;
                v605[3].n128_u16[1] = 2048;
                *(v605[3].n128_f64 + 4) = v287;
                v605[3].n128_u16[6] = 2048;
                *(&v605[3].n128_f64[1] + 6) = v290;
                _os_log_impl(&dword_1C278D000, v341, OS_LOG_TYPE_DEFAULT, "[readSDBForOids](queue: %p, group: %d, stage: insert_hash_tableq2, oid: %lld,  containerId:%u, sparseScoreL1: %f, agestamp: %u, scoreL1: %f, pscore: %f)", v605, 0x46u);
              }

              *__error() = v340;
              v256 = v544;
              v299 = v561.n128_u64[0];
            }
          }

          else
          {
            v299 = v561.n128_u64[0];
            if (!v560.n128_u32[0])
            {
              goto LABEL_292;
            }
          }

          v298 = (v256 + 216);
LABEL_291:
          SIValueSet<unsigned long long>::SIValueSetInsert(v298, v299);
          goto LABEL_292;
        }
      }

      else if (v279 | v278)
      {
        goto LABEL_295;
      }

      v300 += 20;
      goto LABEL_299;
    }

LABEL_273:
    v255 += 7;
    v254 = (v254 + 5);
    ++v252;
    v253 += 10;
    ++v251;
    ++v250;
    if (--v574)
    {
      continue;
    }

    break;
  }

  pthread_rwlock_unlock((v256 + 16));
  v348 = v572;
  if (!v572)
  {
    if (v549)
    {
      _Block_release(v549);
    }

    if (dword_1EBF46AD0 < 5)
    {
      goto LABEL_568;
    }

    v349 = *__error();
    v350 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v350, OS_LOG_TYPE_DEFAULT))
    {
      v605[0].n128_u32[0] = 134217984;
      *(v605[0].n128_u64 + 4) = v593;
      v351 = "readSDBForOids early exit %p";
LABEL_579:
      _os_log_impl(&dword_1C278D000, v350, OS_LOG_TYPE_DEFAULT, v351, v605, 0xCu);
    }

LABEL_580:
    *__error() = v349;
    goto LABEL_568;
  }

  v59 = v593;
  *(*(v593 + 1) + 512) += v572;
  v574 = v348;
  v92 = v550;
  v94 = v557;
  v93 = v573;
LABEL_78:
  v95 = &unk_1C2BF9000;
LABEL_102:
  v125 = v585;
  v585[0] = MEMORY[0x1E69E9820];
  v585[1] = v95[294];
  v585[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke;
  v585[3] = &__block_descriptor_tmp_117;
  v586 = v92;
  v585[4] = v59;
  v126 = v551;
  v585[5] = v551;
  v585[6] = v556;
  v585[7] = v575;
  v585[8] = v555;
  v585[9] = v61;
LABEL_103:
  if ((v548 & 1) != 0 && (*(v59 + 641) & 1) == 0 && !v93)
  {
    v127 = v574;
    v93 = malloc_type_malloc(v574, 0x100004077774924uLL);
    v128 = 0;
    v129 = v61 + 69;
    v130 = v554;
    while (1)
    {
      if (v130)
      {
        v131 = v130[v128] != 0;
        if (v130[v128])
        {
          v132 = 1;
        }

        else
        {
          v132 = v61 == 0;
        }

        if (!v132)
        {
LABEL_114:
          v133 = *(v129 - 37);
          v134 = *(v129 - 29);
          if (*v129)
          {
            v134 = 0;
            v133 = *(v129 - 1);
          }

          v131 = (v133 | v134) != 0;
        }
      }

      else
      {
        if (v61)
        {
          goto LABEL_114;
        }

        v131 = 0;
      }

      v93[v128++] = v131;
      v129 += 80;
      if (v127 == v128)
      {
        v59 = v593;
        break;
      }
    }
  }

  *&v573 = v93;
  v135 = *(v59 + 13);
  do
  {
    v136 = v135;
    v135 = *(v135 + 80);
  }

  while (v135);
  v137 = *(v136 + 40);
  v583[0] = MEMORY[0x1E69E9820];
  v138 = v95[294];
  v583[1] = v138;
  v583[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_2;
  v583[3] = &__block_descriptor_tmp_118_5707;
  v583[4] = &v591;
  v583[5] = v94;
  v584 = v542;
  v583[6] = v137;
  v583[7] = v61;
  v583[8] = v59;
  v139 = CFAbsoluteTimeGetCurrent();
  v140 = *(v593 + 3);
  v141 = *(v593 + 113);
  kdebug_trace();
  Log = _MDPerf_QueryLog();
  v143 = v593;
  v144 = *(v593 + 1);
  if (v144 + 1 >= 2)
  {
    v157 = Log;
    if (os_signpost_enabled(Log))
    {
      v158 = *(v144 + 608);
      v159 = qos_class_self();
      v605[0].n128_u32[0] = 134218240;
      *(v605[0].n128_u64 + 4) = v158;
      v605[0].n128_u16[6] = 1024;
      *(&v605[0].n128_u32[3] + 2) = v159;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v157, OS_SIGNPOST_INTERVAL_BEGIN, v144, "QueryReadSDB", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", v605, 0x12u);
      v143 = v593;
    }
  }

  PartialQueryResults::attributeIdVector(v558, *(*(v143 + 3) + 1192));
  v145 = *(v593 + 5);
  v146 = (v145 & 0x80) == 0;
  v147 = *(v593 + 3);
  if (*(v147 + 6587))
  {
    if (*(v147 + 2072))
    {
      v148 = 8;
    }

    else
    {
      v148 = 0;
    }

    LODWORD(v572) = v148;
  }

  else
  {
    LODWORD(v572) = 0;
  }

  if (v552)
  {
    v149 = 6;
  }

  else
  {
    v149 = 4;
  }

  v150 = *v558;
  v151 = *(v558 + 29);
  *&v571 = v558 + 232;
  if (v150 != 1)
  {
    if (!v151)
    {
      goto LABEL_405;
    }

    v152 = v558;
    v153 = v558 + 192;
    if (*(v558 + 24))
    {
      goto LABEL_386;
    }

    v154 = *(v558 + 12);
    if (!v154)
    {
      v156 = *(v558 + 15);
      if (v156)
      {
        SIFlattenArrayToCStringVector(v156, v558 + 12, v558 + 30, v571);
        v154 = *(v152 + 12);
        if (!v154)
        {
          goto LABEL_517;
        }
      }

      else
      {
        v154 = 0;
      }
    }

    v352 = (v152 + 8);
    goto LABEL_385;
  }

  if (v151)
  {
    v152 = v558;
    v153 = v558 + 200;
    if (!*(v558 + 25))
    {
      v154 = *(v558 + 13);
      if (!v154)
      {
        v155 = *(v558 + 16);
        if (v155)
        {
          v605[0].n128_u64[0] = 0;
          SIFlattenArrayToCStringVector(v155, v558 + 13, v605[0].n128_u64, &v597);
          v154 = *(v152 + 13);
        }

        else
        {
          v154 = 0;
        }

        v152 = v558;
      }

      v352 = v605;
LABEL_385:
      PartialQueryResults::setupCannedAttributeVector(v152, v154, v153, v352);
    }

LABEL_386:
    v353 = *(v152 + 29);
    if (*v152)
    {
      if (v353)
      {
        v354 = v558 + 184;
        if (!*(v558 + 23))
        {
          v355 = v558;
          v357 = (v558 + 104);
          v356 = *(v558 + 13);
          if (!v356)
          {
            v358 = *(v558 + 16);
            if (v358)
            {
              v605[0].n128_u64[0] = 0;
              SIFlattenArrayToCStringVector(v358, v558 + 13, v605[0].n128_u64, &v597);
              v356 = *v357;
            }

            else
            {
              v356 = 0;
            }

            v355 = v558;
          }

          v370 = v605;
          goto LABEL_404;
        }
      }
    }

    else if (v353)
    {
      v354 = v558 + 176;
      if (!*(v558 + 22))
      {
        v359 = v558;
        v356 = *(v558 + 12);
        if (!v356)
        {
          v360 = *(v558 + 15);
          if (v360)
          {
            SIFlattenArrayToCStringVector(v360, v558 + 12, v558 + 30, v571);
            v356 = *(v359 + 12);
            if (!v356)
            {
              v361 = __si_assert_copy_extra_332();
              __message_assert_336(v361, v362, v363, v364, v365, v366, v367, v368, "SISearchCtx.h");
              free(v361);
              if (__valid_fs(-1))
              {
                v369 = 2989;
              }

              else
              {
                v369 = 3072;
              }

              *v369 = -559038737;
              abort();
            }
          }

          else
          {
            v356 = 0;
          }
        }

        v370 = (v359 + 16);
        v355 = v359;
LABEL_404:
        PartialQueryResults::setupCannedCollectAttributeVector(v355, v356, v354, v370);
      }
    }
  }

LABEL_405:
  v371 = v593;
  if (*(v593 + 40) == 3)
  {
    v372 = v558;
    PartialQueryResults::completionAttributeIdVector(v558, *(*(v593 + 3) + 1192));
    if ((*(v372 + 321) & 1) == 0)
    {
      if (dword_1EBF46AD0 >= 5)
      {
        v515 = *__error();
        v516 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v516, OS_LOG_TYPE_DEFAULT))
        {
          v605[0].n128_u16[0] = 0;
          _os_log_impl(&dword_1C278D000, v516, OS_LOG_TYPE_DEFAULT, "Will generate spotlight completions", v605, 2u);
        }

        *__error() = v515;
      }

      v373 = *(v558 + 42);
      dispatch_get_global_queue(-32768, 0);
      md_deadline_once_start();
    }

    v371 = v593;
    if (!*(v593 + 44))
    {
      v374 = v550;
      v375 = malloc_type_calloc(1uLL, 24 * v550 + 8, 0x1000040789AEA99uLL);
      v371 = v593;
      *(v593 + 44) = v375;
      v375[2] = v374;
      if (v374)
      {
        v376 = 0;
        do
        {
          v377 = *(v593 + 44) + 24 * v376;
          *(v377 + 16) = xmmword_1C2BF7A50;
          *(v377 + 8) = 0;
          ++v376;
        }

        while (v374 > v376);
        v371 = v593;
      }
    }
  }

  v378 = v558;
  prepareFieldIds(v371, v558);
  v379 = v593;
  if (*(v593 + 40) == 3)
  {
    v380 = v573;
    if ((*(v378 + 321) & 1) == 0)
    {
      SILanguageModelReserve();
      v380 = v573;
      v379 = v593;
    }
  }

  else
  {
    v380 = v573;
  }

  v381 = *(v379 + 114);
  if (!v381)
  {
    goto LABEL_447;
  }

  if (*v381 != 3506)
  {
    v520 = __si_assert_copy_extra_332();
    v518 = v520;
    v521 = "";
    if (v520)
    {
      v521 = v520;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 693, v521);
    goto LABEL_606;
  }

  if ((*(v381 + 74) & 1) == 0)
  {
    v511 = __si_assert_copy_extra_3233(0, -1);
    v454 = v511;
    v512 = "";
    if (v511)
    {
      v512 = v511;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 12774, "dboi->isSuspended", v512);
    goto LABEL_584;
  }

  *(v381 + 75) = 0;
  *(v381 + 184) = 0;
  v383 = *(v381 + 24);
  v382 = *(v381 + 32);
  if (*(v381 + 136) < v574 || !v382)
  {
    free(v382);
    v384 = 32 * v574;
    v385 = malloc_type_zone_malloc(queryZone, 32 * v574, 0xA4971684uLL);
    if (v385)
    {
      *(v381 + 32) = v385;
      madvise(v385, v384, 3);
      goto LABEL_425;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v605[0].n128_u16[0] = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v605, 2u);
    }

    *(v381 + 32) = 0;
    db_obj_iter_release(*(v593 + 114));
    v379 = v593;
    v380 = v554;
LABEL_447:
    v394 = v574;
    v389 = db_obj_iter_create_with_filter(*(*(v379 + 3) + 1192), v574, v557, v126, v380, (v149 | v572) | v146, v583, v125, *(v379 + 115));
    *(v593 + 114) = v389;
    if (*v389 == 3506)
    {
      v389[72] = 1;
      v393 = 0x1EBF46000uLL;
      v390 = v558;
      v395 = v547;
      goto LABEL_449;
    }

    v522 = __si_assert_copy_extra_332();
    v518 = v522;
    v523 = "";
    if (v522)
    {
      v523 = v522;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 707, v523);
LABEL_606:
    free(v518);
LABEL_585:
    v513 = 2989;
    goto LABEL_591;
  }

LABEL_425:
  *(v381 + 136) = v574;
  atomic_store(0, (v381 + 144));
  *(v381 + 160) = 0;
  v386 = *(v381 + 48);
  if (v386)
  {
    _Block_release(v386);
  }

  *(v381 + 48) = _Block_copy(v125);
  v387 = *(v381 + 40);
  v388 = v557;
  if (v387)
  {
    _Block_release(v387);
  }

  v389 = _Block_copy(v583);
  *(v381 + 40) = v389;
  v390 = v558;
  if ((*(v383 + 804) & 1) != 0 && (v145 & 0x80) != 0)
  {
    v391 = 0;
    v392 = 16;
    v393 = 0x1EBF46000;
    v394 = v574;
    v395 = v547;
    v396 = v573;
    do
    {
      v397 = (*(v381 + 32) + v392);
      *(v397 - 2) = *(v388 + 8 * v391);
      *v397 = 0;
      if (v396)
      {
        v398 = 4 * (*(v396 + v391) & 1);
      }

      else
      {
        v398 = 0;
      }

      *(*(v381 + 32) + v392 + 8) = *(*(v381 + 32) + v392 + 8) & 0xFB | v398;
      v399 = *(v381 + 32) + v392;
      *(v399 + 9) = 0;
      *(v399 + 8) &= ~1u;
      *(*(v381 + 32) + v392) |= 0x400000000uLL;
      *(*(v381 + 32) + v392 + 8) &= ~2u;
      v400 = (*(v381 + 32) + v392);
      v401 = *v400 | 0x3FFFFFFFCLL;
      *(v400 - 1) = v391;
      *v400 = v401;
      if (v126)
      {
        v402 = (*(v126 + 2 * v391) & 0xFFDF) == 17;
      }

      else
      {
        v402 = 3;
      }

      *(*(v381 + 32) + v392) = *(*(v381 + 32) + v392) & 0xFFFFFFFFFFFFFFFCLL | v402;
      ++v391;
      v392 += 32;
    }

    while (v394 != v391);
  }

  else
  {
    v395 = v547;
    v403 = v573;
    if (v573)
    {
      v404 = 0;
      v405 = 16;
      v393 = 0x1EBF46000;
      v394 = v574;
      do
      {
        v406 = (*(v381 + 32) + v405);
        *(v406 - 2) = *(v388 + 8 * v404);
        *v406 = 0;
        *(*(v381 + 32) + v405 + 8) = *(*(v381 + 32) + v405 + 8) & 0xFB | (4 * (*(v403 + v404) & 1));
        v407 = *(v381 + 32) + v405;
        *(v407 + 9) = 0;
        *(v407 + 8) &= ~1u;
        *(*(v381 + 32) + v405) |= 0x400000000uLL;
        *(*(v381 + 32) + v405 + 8) &= ~2u;
        v408 = (*(v381 + 32) + v405);
        v409 = *v408 | 0x3FFFFFFFCLL;
        *(v408 - 1) = v404;
        *v408 = v409;
        *(*(v381 + 32) + v405) &= 0xFFFFFFFFFFFFFFFCLL;
        ++v404;
        v405 += 32;
      }

      while (v394 != v404);
    }

    else
    {
      v444 = 0;
      v445 = 16;
      v393 = 0x1EBF46000;
      v394 = v574;
      do
      {
        v446 = (*(v381 + 32) + v445);
        *(v446 - 2) = *(v388 + 8 * v444);
        *v446 = 0;
        *(*(v381 + 32) + v445 + 8) &= ~4u;
        v447 = *(v381 + 32) + v445;
        *(v447 + 9) = 0;
        *(v447 + 8) &= ~1u;
        *(*(v381 + 32) + v445) |= 0x400000000uLL;
        *(*(v381 + 32) + v445 + 8) &= ~2u;
        v448 = (*(v381 + 32) + v445);
        v449 = *v448 | 0x3FFFFFFFCLL;
        *(v448 - 1) = v444;
        *v448 = v449;
        *(*(v381 + 32) + v445) &= 0xFFFFFFFFFFFFFFFCLL;
        ++v444;
        v445 += 32;
      }

      while (v394 != v444);
    }
  }

LABEL_449:
  v410 = 128;
  if (gCPUCount < 2)
  {
    v410 = 1;
  }

  v411 = gCPUCount >> 1;
  if ((gCPUCount - 256) < 0xFFFFFF02)
  {
    v411 = v410;
  }

  v412 = v593;
  if (v395 || *(v593 + 40) == 4 || (*(*(v593 + 3) + 6587) & 1) == 0)
  {
    v413 = 1;
  }

  else if (v394 < v411)
  {
    v413 = 1;
  }

  else
  {
    v413 = v411;
  }

  v414 = 8 * v413;
  MEMORY[0x1EEE9AC00](v389);
  bzero(&v524 - ((8 * v413 + 15) & 0x7FFFFFFF0), 8 * v413);
  ++*(*(v412 + 1) + 480);
  v415 = *(v412 + 114);
  *&v572 = &v524 - ((8 * v413 + 15) & 0x7FFFFFFF0);
  db_obj_iter_create_subiterators(v415, v413, v572, v416, v417, v418);
  v419 = *__error();
  v420 = _SILogForLogForCategory(1);
  v421 = 2 * (*(v393 + 2768) < 4);
  if (os_log_type_enabled(v420, v421))
  {
    v422 = CFAbsoluteTimeGetCurrent();
    v605[0].n128_u32[0] = 134218240;
    *(v605[0].n128_u64 + 4) = v394;
    v605[0].n128_u16[6] = 2048;
    *(&v605[0].n128_f64[1] + 6) = v422 - v139;
    _os_log_impl(&dword_1C278D000, v420, v421, "Created iterator for %ld oids in %f seconds!", v605, 0x16u);
  }

  *__error() = v419;
  v423 = v593;
  if (v548)
  {
    if ((*(v593 + 642) & 1) == 0)
    {
      preparePostCheckQueries(&v593);
      v423 = v593;
    }

    if ((*(v423 + 643) & 1) == 0)
    {
      *&v570 = 8 * v413;
      if (*(v423 + 208))
      {
        v424 = 0;
        v425 = 0;
        do
        {
          v426 = *(v423 + 105);
          v427 = *(v426 + v424 + 8);
          if (v427)
          {
            v597.n128_u64[0] = MEMORY[0x1E69E9820];
            v597.n128_u64[1] = v138;
            v598.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v598.n128_u64[1] = &__block_descriptor_tmp_151;
            v599.n128_u64[0] = &v593;
            v605[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v605[0].n128_u64[1] = v138;
            v605[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v605[1].n128_u64[1] = &unk_1E8198ED0;
            v605[2].n128_u64[0] = &v597;
            db_query_tree_apply_block_with_meta(v427, v605, 0);
            v423 = v593;
            v426 = *(v593 + 105);
          }

          v428 = *(v426 + v424 + 24);
          if (v428)
          {
            v597.n128_u64[0] = MEMORY[0x1E69E9820];
            v597.n128_u64[1] = v138;
            v598.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v598.n128_u64[1] = &__block_descriptor_tmp_151;
            v599.n128_u64[0] = &v593;
            v605[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v605[0].n128_u64[1] = v138;
            v605[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v605[1].n128_u64[1] = &unk_1E8198ED0;
            v605[2].n128_u64[0] = &v597;
            db_query_tree_apply_block_with_meta(v428, v605, 0);
            v423 = v593;
            v426 = *(v593 + 105);
          }

          v429 = *(v426 + v424 + 16);
          if (v429)
          {
            v597.n128_u64[0] = MEMORY[0x1E69E9820];
            v597.n128_u64[1] = v138;
            v598.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v598.n128_u64[1] = &__block_descriptor_tmp_151;
            v599.n128_u64[0] = &v593;
            v605[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v605[0].n128_u64[1] = v138;
            v605[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v605[1].n128_u64[1] = &unk_1E8198ED0;
            v605[2].n128_u64[0] = &v597;
            db_query_tree_apply_block_with_meta(v429, v605, 0);
            v423 = v593;
            v426 = *(v593 + 105);
          }

          v430 = *(v426 + v424);
          if (v430)
          {
            v597.n128_u64[0] = MEMORY[0x1E69E9820];
            v597.n128_u64[1] = v138;
            v598.n128_u64[0] = ___ZL23cacheQPDataForPostCheckRP20SISearchCtx_METADATAP10query_node_block_invoke;
            v598.n128_u64[1] = &__block_descriptor_tmp_151;
            v599.n128_u64[0] = &v593;
            v605[0].n128_u64[0] = MEMORY[0x1E69E9820];
            v605[0].n128_u64[1] = v138;
            v605[1].n128_u64[0] = __db_query_tree_apply_block_block_invoke;
            v605[1].n128_u64[1] = &unk_1E8198ED0;
            v605[2].n128_u64[0] = &v597;
            db_query_tree_apply_block_with_meta(v430, v605, 0);
            v423 = v593;
          }

          ++v425;
          v424 += 48;
        }

        while (v425 < *(v423 + 208));
      }

      *(v423 + 643) = 1;
      v393 = 0x1EBF46000uLL;
      v390 = v558;
      v394 = v574;
      v61 = v553;
      v414 = v570;
    }
  }

  v431 = *(v423 + 212);
  v41 = v431 == 1;
  v432 = v431 > 1;
  if (!v41 || v61 == 0)
  {
    v434 = v432;
  }

  else
  {
    v434 = 2;
  }

  *&v570 = *(*(v423 + 3) + 1192);
  v435 = v571;
  *&v569 = *v571;
  v437 = CFAbsoluteTimeGetCurrent();
  if (*v435)
  {
    if (*(v390 + 18) || (v438 = PartialQueryResults::attributeIdVector(v390, *(*(v593 + 3) + 1192)), PartialQueryResults::setupFieldIdVector(v390, v438, v390 + 19, v390 + 18, 0), v439 = 1, PartialQueryResults::setupFieldIdVector(v390, v438, v390 + 21, v390 + 20, 1), *(v390 + 29)))
    {
      if (*(v390 + 28))
      {
        if ((*v390 & 1) == 0)
        {
          v440 = 1;
          goto LABEL_512;
        }

LABEL_507:
        v450 = (v390 + 200);
        if (!*(v390 + 25))
        {
          v451 = *(v390 + 13);
          if (!v451)
          {
            v452 = *(v390 + 16);
            if (v452)
            {
              v605[0].n128_u64[0] = 0;
              SIFlattenArrayToCStringVector(v452, v390 + 13, v605[0].n128_u64, &v597);
              v451 = *(v390 + 13);
            }

            else
            {
              v451 = 0;
            }
          }

          v462 = v605;
LABEL_522:
          PartialQueryResults::setupCannedAttributeVector(v390, v451, v450, v462);
        }

        goto LABEL_523;
      }

      if (*v390)
      {
        v441 = *(v390 + 13);
        if (v441)
        {
          goto LABEL_504;
        }

        v442 = *(v390 + 16);
        if (v442)
        {
          v605[0].n128_u64[0] = 0;
          SIFlattenArrayToCStringVector(v442, v390 + 13, v605[0].n128_u64, &v597);
          v441 = *(v390 + 13);
          goto LABEL_504;
        }

LABEL_503:
        v441 = 0;
        goto LABEL_504;
      }

      v441 = *(v390 + 12);
      if (!v441)
      {
        v443 = *(v390 + 15);
        if (!v443)
        {
          goto LABEL_503;
        }

        SIFlattenArrayToCStringVector(v443, v390 + 12, v390 + 30, v571);
        v441 = *(v390 + 12);
        if (!v441)
        {
LABEL_517:
          v454 = __si_assert_copy_extra_332();
          __message_assert_336(v454, v455, v456, v457, v458, v459, v460, v461, "SISearchCtx.h");
LABEL_584:
          free(v454);
          if (__valid_fs(-1))
          {
            goto LABEL_585;
          }

          v513 = 3072;
LABEL_591:
          *v513 = -559038737;
          abort();
        }
      }

LABEL_504:
      PartialQueryResults::setupFixedFunctionVector(v390, v441, v390 + 28);
      v440 = *(v390 + 29);
      v439 = v440 == 0;
    }

    else
    {
      v440 = 0;
    }
  }

  else
  {
    v440 = 0;
    v439 = 1;
  }

  if (*v390)
  {
    if (!v439)
    {
      goto LABEL_507;
    }

    goto LABEL_523;
  }

  if (v439)
  {
    goto LABEL_523;
  }

LABEL_512:
  v450 = (v390 + 192);
  if (!*(v390 + 24))
  {
    v451 = *(v390 + 12);
    if (v440 && !v451)
    {
      v453 = *(v390 + 15);
      if (v453)
      {
        SIFlattenArrayToCStringVector(v453, v390 + 12, v390 + 30, v571);
        v451 = *(v390 + 12);
        if (!v451)
        {
          goto LABEL_517;
        }
      }

      else
      {
        v451 = 0;
      }
    }

    v462 = (v390 + 8);
    goto LABEL_522;
  }

LABEL_523:
  LODWORD(v571) = v434;
  *&v568 = &v524;
  MEMORY[0x1EEE9AC00](v436);
  v463 = v414;
  v464 = (&v524 - ((v414 + 15) & 0x7FFFFFFF0));
  MEMORY[0x1EEE9AC00](v465);
  v467 = (&v524 - v466);
  MEMORY[0x1EEE9AC00](v468);
  v470 = &v524 - v469;
  bzero(&v524 - v469, v463);
  bzero(v464, v463);
  bzero(v467, v463);
  v471 = v593;
  if (*(v593 + 40) == 4)
  {
    v472 = v549;
    v473 = v547;
    if (!v547 && (*(*(v593 + 13) + 99) & 1) == 0 && !v549)
    {
LABEL_527:
      if (v413)
      {
        v474 = 0;
        v475 = v572;
        do
        {
          v476 = *(v593 + 13);
          v477 = v476;
          do
          {
            v478 = v477;
            v477 = *(v477 + 80);
          }

          while (v477);
          v479 = *(v476 + 80);
          if (v479)
          {
            v480 = 0;
            do
            {
              v480 ^= *(v476 + 104) == 0;
              v476 = v479;
              v479 = *(v479 + 80);
            }

            while (v479);
            if (v480)
            {
              v481 = 3553;
            }

            else
            {
              v481 = 2781;
            }
          }

          else
          {
            v481 = 2781;
          }

          *&v470[8 * v474] = PartialQueryResults::start(v390, *(*(v478 + 8) + 80), v481, *(*(v475 + 8 * v474) + 56), v474);
          ++v474;
        }

        while (v474 != v413);
        LOBYTE(v482) = 1;
        v471 = v593;
        v393 = 0x1EBF46000;
        v394 = v574;
        v61 = v553;
        v472 = v549;
      }

      else
      {
        LOBYTE(v482) = 0;
      }

      v483 = v571;
      goto LABEL_552;
    }
  }

  else
  {
    v472 = v549;
    v473 = v547;
    if (!(v547 | v549))
    {
      goto LABEL_527;
    }
  }

  v483 = v571;
  if (v413)
  {
    v482 = (v413 + 1) & 0xFFFFFFFE;
    v484 = vdupq_n_s64(v413 - 1);
    v485 = xmmword_1C2BF7A50;
    v486 = v470 + 8;
    v487 = vdupq_n_s64(2uLL);
    do
    {
      v488 = vmovn_s64(vcgeq_u64(v484, v485));
      if (v488.i8[0])
      {
        *(v486 - 1) = v473;
      }

      if (v488.i8[4])
      {
        *v486 = v473;
      }

      v485 = vaddq_s64(v485, v487);
      v486 += 2;
      v482 -= 2;
    }

    while (v482);
  }

  else
  {
    LOBYTE(v482) = 0;
  }

LABEL_552:
  v576[0] = MEMORY[0x1E69E9820];
  v576[1] = v138;
  v576[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_120;
  v576[3] = &unk_1E8194388;
  v576[8] = v472;
  v576[9] = v471;
  v576[10] = v572;
  v576[11] = v470;
  v580 = v536;
  v576[12] = &v592;
  v576[13] = v394;
  v576[14] = v570;
  v576[15] = v569;
  v576[4] = v537;
  v576[5] = v538;
  v576[6] = v539;
  v576[7] = v540;
  v576[16] = v556;
  v576[17] = v551;
  v576[18] = v554;
  v576[19] = v575;
  v577 = v550;
  v578 = v483;
  v576[20] = v61;
  v576[21] = v545;
  v576[22] = v546;
  v576[23] = v390;
  v579 = v535;
  v581 = v541;
  v582 = v482;
  v576[24] = v555;
  v576[25] = v464;
  v576[26] = v467;
  dispatch_apply(v413, 0, v576);
  v489 = *__error();
  v490 = _SILogForLogForCategory(1);
  v491 = 2 * (*(v393 + 2768) < 4);
  if (os_log_type_enabled(v490, v491))
  {
    v492 = CFAbsoluteTimeGetCurrent();
    v605[0].n128_u32[0] = 134218240;
    *(v605[0].n128_u64 + 4) = v394;
    v605[0].n128_u16[6] = 2048;
    *(&v605[0].n128_f64[1] + 6) = v492 - v437;
    _os_log_impl(&dword_1C278D000, v490, v491, "Read/evaluated %ld dbos in %f seconds!", v605, 0x16u);
  }

  *__error() = v489;
  if (v549)
  {
    _Block_release(v549);
  }

  v493 = *(v593 + 114);
  if (*v493 != 3506)
  {
    v517 = __si_assert_copy_extra_332();
    v518 = v517;
    v519 = "";
    if (v517)
    {
      v519 = v517;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 702, v519);
    goto LABEL_606;
  }

  db2_obj_iter_suspend(v493);
  if (v413)
  {
    v494 = v593;
    do
    {
      v495 = *v464++;
      *(*(v494 + 1) + 464) += v495;
      v496 = *v467++;
      *(*(v494 + 1) + 488) += v496;
      --v413;
    }

    while (v413);
  }

  while (1)
  {
    v497 = OSAtomicDequeue(&v592, 0);
    if (!v497)
    {
      break;
    }

    free(v497);
  }

  v498 = *(v593 + 3);
  v499 = *(v593 + 113);
  kdebug_trace();
  v500 = _MDPerf_QueryLog();
  v501 = v593;
  v502 = *(v593 + 1);
  if (v502 + 1 >= 2)
  {
    v504 = v500;
    if (os_signpost_enabled(v500))
    {
      v505 = *(v502 + 608);
      v506 = qos_class_self();
      v605[0].n128_u32[0] = 134218240;
      *(v605[0].n128_u64 + 4) = v505;
      v605[0].n128_u16[6] = 1024;
      *(&v605[0].n128_u32[3] + 2) = v506;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v504, OS_SIGNPOST_INTERVAL_END, v502, "QueryReadSDB", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x", v605, 0x12u);
      v501 = v593;
    }
  }

  if (*(v501 + 40) == 3 && (*(v390 + 321) & 1) == 0)
  {
    SILanguageModelUnreserve();
  }

  if (*(v393 + 2768) >= 5)
  {
    v349 = *__error();
    v350 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v350, OS_LOG_TYPE_DEFAULT))
    {
      v605[0].n128_u32[0] = 134217984;
      *(v605[0].n128_u64 + 4) = v593;
      v351 = "readSDBForOids exit %p";
      goto LABEL_579;
    }

    goto LABEL_580;
  }

LABEL_568:
  free(v573);
  v503 = *MEMORY[0x1E69E9840];
}

uint64_t CIIndexSetAddSortedIndexes_ArrayBackwards(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  result = binarySearchMap(a1, *a2);
  v7 = result;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  if (v9 == v8)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v10 = *(a1 + 36);
    if (v10 == result)
    {
      goto LABEL_5;
    }

    v35 = *(a1 + 40);
    if (v10 >= result)
    {
      result = memmove((v35 + 4 * (v9 - v8 + result)), (v35 + 4 * result), 4 * (v10 - result));
      v9 = *(a1 + 32);
      v8 = *(a1 + 16);
    }

    else
    {
      result = memmove((v35 + 4 * v10), (v35 + 4 * (v10 + v9 - v8)), 4 * (result - (v10 + v9 - v8)));
      v9 = *(a1 + 32);
      v8 = *(a1 + 16);
      v7 = v7 - v9 + v8;
    }
  }

  *(a1 + 36) = v7;
LABEL_5:
  v11 = v9 - v8 + v7;
  v14 = v8 < 1;
  v12 = v8 + a3;
  v13 = (__clz(v8) ^ 0x1F) * a3;
  v14 = v14 || v12 <= v13;
  v15 = a3;
  if (v14)
  {
    v16 = 0;
    while (1)
    {
      v18 = a2[v16];
      if (v18 <= *(a1 + 24) && v18 >= *(a1 + 20))
      {
        if (v11 >= *(a1 + 32))
        {
          goto LABEL_11;
        }

        v11 = v11;
        while (1)
        {
          v19 = *(a1 + 40);
          v20 = *(v19 + 4 * v11);
          if (v20 <= v18)
          {
            break;
          }

          ++v11;
          v17 = v7 + 1;
          *(v19 + 4 * v7++) = v20;
          if (v11 >= *(a1 + 32))
          {
            goto LABEL_12;
          }
        }

        if (v20 == v18)
        {
          LODWORD(v11) = v11 + 1;
          *(v19 + 4 * v7++) = v18;
        }

        else
        {
LABEL_11:
          v17 = v7;
LABEL_12:
          v7 = v17 + 1;
          *(*(a1 + 40) + 4 * v17) = v18;
          ++*(a1 + 16);
        }
      }

      if (++v16 == a3)
      {
        goto LABEL_50;
      }
    }
  }

  v49 = a3;
  v21 = 0;
  v22 = a3 - 1;
  v23 = a2 + 1;
  while (1)
  {
    v25 = a2[v21];
    if (v25 > *(a1 + 24) || v25 < *(a1 + 20))
    {
      goto LABEL_25;
    }

    v26 = *(a1 + 40);
    v27 = *(a1 + 32);
    v28 = v27 - 1;
    LODWORD(v29) = v11;
    if ((v27 - 33) < v11)
    {
LABEL_34:
      v29 = v29;
      v24 = v28 + 1 > v29 ? v28 + 1 : v29;
      while (v29 <= v28)
      {
        v31 = *(v26 + 4 * v29++);
        if (v31 <= v25)
        {
          v24 = v29 - 1;
          break;
        }
      }
    }

    else
    {
      while (1)
      {
        v24 = (v29 + (v28 - v29) / 2);
        v30 = *(v26 + 4 * v24);
        if (v30 == v25)
        {
          break;
        }

        if (v30 > v25)
        {
          LODWORD(v29) = v24 + 1;
        }

        else
        {
          v28 = v24 - 1;
        }

        if (v29 > v28 - 32)
        {
          goto LABEL_34;
        }
      }
    }

    if (v24 < v27 && v25 == *(v26 + 4 * v24))
    {
      goto LABEL_25;
    }

    ++*(a1 + 16);
    v32 = v24 - v11;
    if (v24 != v11)
    {
      break;
    }

    v24 = v11;
LABEL_24:
    *(v26 + 4 * v7++) = v25;
    v11 = v24;
LABEL_25:
    ++v21;
    --v22;
    ++v23;
    if (v21 == v15)
    {
      goto LABEL_50;
    }
  }

  v33 = (v26 + 4 * v7);
  v34 = (v26 + 4 * v11);
  if (v24 != v27)
  {
    result = memmove(v33, v34, 4 * (v24 - v11));
    v7 += v32;
    v26 = *(a1 + 40);
    goto LABEL_24;
  }

  v36 = v27 - v11;
  result = memmove(v33, v34, 4 * (v27 - v11));
  v37 = v36 + v7;
  if ((v36 + v7) > *(a1 + 16))
  {
LABEL_56:
    v41 = __si_assert_copy_extra_332();
    __message_assert_336(v41, v42, v43, v44, v45, v46, v47, v48, "CIIndexSet.c");
    free(v41);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v7 = v37 + 1;
  *(*(a1 + 40) + 4 * v37) = v25;
  if (v21 + 1 < v49)
  {
    do
    {
      v39 = *v23++;
      v38 = v39;
      if (v39 <= *(a1 + 24) && v38 >= *(a1 + 20))
      {
        v40 = *(a1 + 40);
        if (v38 >= *(v40 + 4 * (v7 - 1)))
        {
          goto LABEL_56;
        }

        *(v40 + 4 * v7++) = v38;
        ++*(a1 + 16);
      }

      --v22;
    }

    while (v22);
  }

LABEL_50:
  *(a1 + 36) = v7;
  return result;
}

void oqpush_offset_t(uint64_t a1, uint64_t a2, size_t size)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 56) < (a2 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v17 = __si_assert_copy_extra(0);
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, "!queue->split || queue->splitPoint >= offset_t_GET_VALUE(value)", v19);
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

    v5 = *(a1 + 24);
    if (v5 >= *(a1 + 16))
    {
      v6 = __si_assert_copy_extra(0);
      v7 = v6;
      v8 = "";
      if (v6)
      {
        v8 = v6;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 252, "!queue->split", v8);
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
  }

  else
  {
    v10 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v5 >= v10)
    {
      v11 = 2 * v10;
      if (!v10)
      {
        v11 = 4;
      }

      *(a1 + 16) = v11;
      v12 = *(a1 + 8);
      v13 = 8 * v11;
      if (v12)
      {
        v14 = malloc_type_zone_realloc(queryZone, v12, v13, 0xA1A7ADA0uLL);
      }

      else
      {
        v14 = malloc_type_zone_malloc(queryZone, v13, 0x566E289CuLL);
      }

      v15 = v14;
      if (!v14)
      {
        _log_fault_for_malloc_failure();
      }

      *(a1 + 8) = v15;
      v5 = *(a1 + 24);
    }
  }

  v16 = *(a1 + 8);
  *(a1 + 24) = v5 + 1;
  *(v16 + 8 * v5) = a2;
}

uint64_t L1ComboQueueCount(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v1 = *(v1 + 16) - 1;
  }

  v2 = a1[1];
  if (v2)
  {
    v2 = *(v2 + 16) - 1;
  }

  v3 = *a1;
  if (*a1)
  {
    v3 = *(v3 + 16) - 1;
  }

  return v2 + v1 + v3;
}

uint64_t PartialQueryResults::attributeIdVector(PartialQueryResults *this, datastore_info *a2)
{
  v4 = (this + 232);
  v3 = *(this + 29);
  if (v3 && !*(this + 17))
  {
    v6 = (this + 96);
    v7 = *(this + 12);
    if (!v7)
    {
      v8 = *(this + 15);
      if (v8)
      {
        SIFlattenArrayToCStringVector(v8, v6, this + 30, v4);
        v7 = *(this + 12);
        if (!v7)
        {
          v23 = __si_assert_copy_extra_332();
          __message_assert_336(v23, v24, v25, v26, v27, v28, v29, v30, "SISearchCtx.h");
          free(v23);
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

        v3 = *v4;
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = 8 * v3;
    if (v3 >> 14)
    {
      v10 = 1;
    }

    else
    {
      v10 = *MEMORY[0x1E69E9AC8] >= v9;
    }

    if (!v10)
    {
      ++sTotal;
    }

    v12 = malloc_type_zone_calloc(queryZone, 1uLL, v9, 0x5BAF1CEAuLL);
    if (!v12)
    {
      _log_fault_for_malloc_failure();
    }

    *(this + 17) = v12;
    if (*(this + 29) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(v7 + 8 * v13);
        if (a2)
        {
          v15 = db_copy_field_ids_with_buffer(a2, *(v7 + 8 * v13), 0, 0);
        }

        else
        {
          v15 = 0;
        }

        *(*(this + 17) + 8 * v13) = v15;
        v16 = *(this + 17);
        if (!*(v16 + 8 * v13))
        {
          v17 = PartialQueryResults::VectorIdAttribute(v14, v11);
          if (v17)
          {
            v14 = strndup(v14, v17);
          }

          if (a2)
          {
            v18 = db_copy_field_ids_with_buffer(a2, v14, 0, 0);
            v16 = *(this + 17);
          }

          else
          {
            v18 = 0;
          }

          *(v16 + 8 * v13) = v18;
          if (v14 != *(v7 + 8 * v13))
          {
            free(v14);
          }
        }

        ++v13;
      }

      while (*v4 > v13);
    }

    if (!*(this + 34))
    {
      if (a2)
      {
        v19 = db_copy_field_ids_with_buffer(a2, "kMDItemLastUsedDate", 0, 0);
      }

      else
      {
        v19 = 0;
      }

      *(this + 34) = v19;
    }

    if (!*(this + 35))
    {
      if (a2)
      {
        v20 = db_copy_field_ids_with_buffer(a2, "kMDItemContentCreationDate", 0, 0);
      }

      else
      {
        v20 = 0;
      }

      *(this + 35) = v20;
    }

    if (!*(this + 36))
    {
      if (a2)
      {
        v21 = db_copy_field_ids_with_buffer(a2, "kMDItemEmailConversationID", 0, 0);
      }

      else
      {
        v21 = 0;
      }

      *(this + 36) = v21;
    }
  }

  return *(this + 17);
}

BOOL _CIIndexSetConvertIfArrayIsMuchMoreEfficient(_DWORD *a1, unsigned int a2, unsigned int a3, int a4, void *a5, int8x8_t a6)
{
  v8 = a3;
  v9 = a2;
  v50 = *MEMORY[0x1E69E9840];
  if (a1[6] < a3)
  {
    a3 = a1[6];
  }

  if (a1[5] > a2)
  {
    a2 = a1[5];
  }

  locked = lockedCountItemsInRange(a1, a2, a3, a6);
  v12 = locked + a4;
  v13 = (v8 - v9 + 63) >> 6;
  if (locked + a4 < v13)
  {
    v47 = a5;
    if (!a4 || ((v14 = a1[8], v14 >= v12) ? (v15 = v14 >= 2 * v12) : (v15 = 1), v15))
    {
      v16 = (v12 - 1) | ((v12 - 1) >> 1) | (((v12 - 1) | ((v12 - 1) >> 1)) >> 2);
      v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
      v18 = v17 | HIWORD(v17);
      v19 = v18 + 1;
      v20 = 4 * (v18 + 1);
      if (v20 >= *MEMORY[0x1E69E9AC8] >> 1)
      {
        v25 = mmap(0, (v20 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 3, 4098, -134217728, 0);
      }

      else
      {
        if (a5)
        {
          v21 = v18 - 7;
          v24 = v21 > 0x37;
          HIDWORD(v23) = v21;
          LODWORD(v23) = v21;
          v22 = v23 >> 3;
          v24 = v24 || v22 > 7;
          if (!v24 && ((0x8Bu >> v22) & 1) != 0)
          {
            v44 = qword_1C2BFF6A8[v22];
            v25 = a5[v44 + 2];
            if (v25 || *a5 && (v45 = v20, v25 = cicachelistdequeue(*a5 + 24 * v44 + 32, 0), v20 = v45, v25))
            {
              v26 = 0;
              a5[v44 + 2] = v25[1];
              goto LABEL_25;
            }
          }
        }

        v25 = malloc_type_zone_malloc(queryZone, v20, 0xA4971684uLL);
        if (!v25)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          v26 = 0;
          v25 = 0;
          v27 = 0;
LABEL_26:
          *buf = 0u;
          v49 = 0u;
          v28 = a1[5];
          v29 = a1[6];
          v30 = a1[4];
          v46 = v25;
          if (v30 <= -10)
          {
            DWORD2(v49) = 2;
            *buf = v29;
            *&buf[4] = v28;
            *&v49 = a1;
LABEL_28:
            *&buf[8] = 0;
            goto LABEL_53;
          }

          if (v30 > -2)
          {
            if (CFGetTypeID(a1) == __kCIIndexSetInvertedTypeID)
            {
              v34 = 3;
            }

            else
            {
              v34 = 1;
            }

            DWORD2(v49) = v34;
            v30 = a1[4];
            *buf = v29;
            *&buf[4] = v28;
            *&v49 = a1;
            if (v30 >= 1)
            {
              v35 = binarySearchMap(a1, v29);
              *&buf[8] = v35;
              if (v35 != a1[9])
              {
                goto LABEL_53;
              }

              v31 = a1[8] + v35 - a1[4];
              goto LABEL_52;
            }

            if ((v30 & 0x80000000) == 0 || v30 <= 0xFFFFFFF6)
            {
              goto LABEL_28;
            }
          }

          else
          {
            *buf = v29;
            *&buf[4] = v28;
            *&v49 = a1;
          }

          if (v30 <= 0xFFFFFFFD)
          {
            if (v29 >= a1[8])
            {
              v31 = 0;
              goto LABEL_52;
            }

            if (v30 != -3)
            {
              if (v29 >= a1[9])
              {
                v31 = 1;
                goto LABEL_52;
              }

              if (v30 != -4)
              {
                if (v29 >= a1[10])
                {
                  v31 = 2;
                  goto LABEL_52;
                }

                if (v30 != -5)
                {
                  if (v29 >= a1[11])
                  {
                    v31 = 3;
                    goto LABEL_52;
                  }

                  if (v30 != -6)
                  {
                    if (v29 >= a1[12])
                    {
                      v31 = 4;
                      goto LABEL_52;
                    }

                    if (v30 != -7)
                    {
                      if (v29 >= a1[13])
                      {
                        v31 = 5;
                        goto LABEL_52;
                      }

                      if (v30 != -8 && v29 >= a1[14])
                      {
                        v31 = 6;
                        goto LABEL_52;
                      }
                    }
                  }
                }
              }
            }
          }

          v31 = -2 - v30;
LABEL_52:
          *&buf[8] = v31;
LABEL_53:
          v37 = _CIIndexSetEnumeratorNext(buf);
          if (v37)
          {
            v39 = 0;
            do
            {
              v40 = v39 + 1;
              v27[v39] = v37;
              v37 = _CIIndexSetEnumeratorNext(buf);
              v39 = v40;
            }

            while (v37);
            a1[5] = v9;
            a1[6] = v8;
            if (v26)
            {
LABEL_57:
              a1[4] = 0;
              a1[9] = 0;
              v41 = v47;
              _CIIndexSetAddSortedIndexes(a1, v27, v40, 1, v47, 1, v38);
              if (v46)
              {
                blob_free(v46, v19, v41);
              }

              goto LABEL_61;
            }
          }

          else
          {
            v40 = 0;
            a1[5] = v9;
            a1[6] = v8;
            if (v26)
            {
              goto LABEL_57;
            }
          }

          blob_free(*(a1 + 5), a1[8], v47);
          *(a1 + 5) = v27;
          a1[4] = v40;
          a1[8] = v19;
          a1[9] = v40;
          goto LABEL_61;
        }
      }

      v26 = 0;
    }

    else
    {
      v19 = locked;
      if (locked <= 0x1FF)
      {
        MEMORY[0x1EEE9AC00](locked);
        v27 = (&v46 - v32);
        bzero(&v46 - v32, v33);
        v25 = 0;
        v26 = 1;
        goto LABEL_26;
      }

      v36 = 4 * locked;
      if (v36 >= *MEMORY[0x1E69E9AC8] >> 1)
      {
        v25 = mmap(0, (v36 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 3, 4098, -134217728, 0);
      }

      else
      {
        v25 = malloc_type_zone_malloc(queryZone, v36, 0xA4971684uLL);
        if (!v25)
        {
          _log_fault_for_malloc_failure();
          v25 = 0;
          v27 = 0;
          v26 = 1;
          goto LABEL_26;
        }
      }

      v26 = 1;
    }

LABEL_25:
    v27 = v25;
    goto LABEL_26;
  }

LABEL_61:
  result = v12 < v13;
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CIIndexSetAddRangeFromBitVector_Bitmap(uint64_t result, int a2, unsigned int a3, unsigned int *a4)
{
  v4 = *(result + 24);
  v5 = v4 - (a2 + a3) + 1;
  v6 = v5 >> 5;
  v7 = v5 & 0x1F;
  v8 = v4 - a2;
  v9 = v8 >> 5;
  v10 = v8 & 0x1F;
  v11 = *a4;
  if (v6 == v8 >> 5)
  {
    v12 = v10 + 1;
    v13 = masks[v7];
    if (v7 != v12)
    {
      v13 = masks[v12] & ~v13;
    }

    v14 = v13 & (v11 << v7);
    v15 = (result + 40);
    goto LABEL_34;
  }

  v16 = 32 - v7;
  v15 = (result + 40);
  *(*(result + 40) + 4 * v6) |= (v11 << v7) & ~masks[v7];
  if (a3 >= 0x21)
  {
    if (v7)
    {
      if ((v6 + 1) < *(result + 32))
      {
        *(*v15 + 4 * (v6 + 1)) |= v11 >> v16;
      }

      if (a3 + 31 > 0x5F)
      {
        v17 = (a3 + 31) >> 5;
        if (v17 <= 3)
        {
          v17 = 3;
        }

        v18 = v17 - 1;
        v19 = v18 - 1;
        v20 = 4 * v6;
        v21 = a4 + 1;
        do
        {
          v22 = *v21++;
          *(*v15 + v20 + 4) |= v22 << v7;
          *(*v15 + v20 + 8) |= v22 >> v16;
          v20 += 4;
          --v19;
        }

        while (v19);
        goto LABEL_24;
      }
    }

    else if (a3 + 31 > 0x5F)
    {
      v23 = (a3 + 31) >> 5;
      if (v23 <= 3)
      {
        v23 = 3;
      }

      v18 = v23 - 1;
      v24 = v18 - 1;
      v25 = 4 * v6 + 4;
      v26 = (a4 + 1);
      do
      {
        v27 = *v26++;
        *(*v15 + v25) |= v27;
        v25 += 4;
        --v24;
      }

      while (v24);
LABEL_24:
      v11 = a4[v18];
      v28 = v18 + v6;
      v29 = v11 << v7;
      if (v18 + v6 >= v9 || v28 + 1 >= *(result + 32))
      {
        v29 &= masks[v10 + 1];
      }

      *(*v15 + 4 * v28) |= v29;
      if (!v7)
      {
        return result;
      }

      goto LABEL_28;
    }

    LODWORD(v18) = 1;
    goto LABEL_24;
  }

  LODWORD(v18) = 0;
  if (!v7)
  {
    return result;
  }

LABEL_28:
  LODWORD(v6) = v6 + v18 + 1;
  if (v6 <= v9 && v6 < *(result + 32))
  {
    v14 = masks[v10 + 1] & (v11 >> v16);
LABEL_34:
    *(*v15 + 4 * v6) |= v14;
  }

  return result;
}

size_t PartialQueryResults::VectorIdAttribute(PartialQueryResults *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 < 0xA)
  {
    return 0;
  }

  v4 = v3 - 9;
  if (!strcmp(this + v3 - 9, "VectorIds"))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void PartialQueryResults::setupCannedAttributeVector(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 232);
  v9 = 8 * v8;
  if (((v8 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v9 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v11 = malloc_type_zone_calloc(queryZone, 1uLL, v9, 0x5BAF1CEAuLL);
  if (!v11)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v11;
  v12 = *(a1 + 232);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = strlen(*(a2 + 8 * v13));
      v16 = CannedFieldTable::in_word_set(*(a2 + 8 * v13), v15);
      if (v16)
      {
        *(*a3 + 8 * v13) = v16[1];
        ++v14;
      }

      ++v13;
    }

    while (v12 != v13);
  }

  *a4 = v14;
}

void PartialQueryResults::setupCannedCollectAttributeVector(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 232);
  v9 = 8 * v8;
  if (((v8 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v9 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v11 = malloc_type_zone_calloc(queryZone, 1uLL, v9, 0x5BAF1CEAuLL);
  if (!v11)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v11;
  v12 = *(a1 + 232);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = strlen(*(a2 + 8 * v13));
      v16 = CannedFieldTable::in_word_set(*(a2 + 8 * v13), v15);
      if (v16)
      {
        *(*a3 + 8 * v13) = v16[3];
        ++v14;
      }

      ++v13;
    }

    while (v12 != v13);
  }

  *a4 = v14;
}

void prepareFieldIds(SISearchCtx_METADATA *a1, PartialQueryResults *this)
{
  v135[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 115) || (*(a1 + 641) & 1) != 0 || *(*(a1 + 105) + 16) != 0)
  {
LABEL_4:
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = PartialQueryResults::attributeIdVector(this, *(*(a1 + 3) + 1192));
  v6 = (this + 232);
  if (*(this + 29) >= 1)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = v7[v10];
      if (v12 && *v12)
      {
        v13 = v12 + 1;
        do
        {
          ++v8;
        }

        while (*v13++);
      }

      if (*this == 1)
      {
        if (!*(this + 25))
        {
          v15 = *(this + 13);
          if (!v15)
          {
            v16 = *(this + 16);
            if (v16)
            {
              v135[0] = 0;
              SIFlattenArrayToCStringVector(v16, this + 13, v135, &v134);
              v15 = *(this + 13);
            }

            else
            {
              v15 = 0;
            }
          }

          PartialQueryResults::setupCannedAttributeVector(this, v15, this + 25, v135);
        }

        v19 = 200;
      }

      else
      {
        if (!*(this + 24))
        {
          v17 = *(this + 12);
          if (v11 && !v17)
          {
            v18 = *(this + 15);
            if (v18)
            {
              SIFlattenArrayToCStringVector(v18, this + 12, this + 30, this + 29);
              v17 = *(this + 12);
              if (!v17)
              {
LABEL_184:
                v114 = __si_assert_copy_extra_332();
                __message_assert_336(v114, v115, v116, v117, v118, v119, v120, v121, "SISearchCtx.h");
                free(v114);
                if (__valid_fs(-1))
                {
                  v122 = 2989;
                }

                else
                {
                  v122 = 3072;
                }

                *v122 = -559038737;
                abort();
              }
            }

            else
            {
              v17 = 0;
            }
          }

          PartialQueryResults::setupCannedAttributeVector(this, v17, this + 24, this + 1);
        }

        v19 = 192;
      }

      if (*(*(this + v19) + 8 * v10))
      {
        v20 = *(this + 29);
        if (*this == 1)
        {
          if (v20 && !*(this + 25))
          {
            v21 = *(this + 13);
            if (!v21)
            {
              v22 = *(this + 16);
              if (v22)
              {
                v135[0] = 0;
                SIFlattenArrayToCStringVector(v22, this + 13, v135, &v134);
                v21 = *(this + 13);
              }

              else
              {
                v21 = 0;
              }
            }

            PartialQueryResults::setupCannedAttributeVector(this, v21, this + 25, v135);
          }

          v25 = 216;
        }

        else
        {
          if (v20 && !*(this + 26))
          {
            v23 = *(this + 12);
            if (!v23)
            {
              v24 = *(this + 15);
              if (v24)
              {
                SIFlattenArrayToCStringVector(v24, this + 12, this + 30, this + 29);
                v23 = *(this + 12);
                if (!v23)
                {
                  v123 = __si_assert_copy_extra_332();
                  v131 = v123;
                  __message_assert_336(v123, v124, v125, v126, v127, v128, v129, v130, "SISearchCtx.h");
                  free(v131);
                  if (__valid_fs(-1))
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
              }

              else
              {
                v23 = 0;
              }
            }

            PartialQueryResults::setupCannedRequiredAttributeVector(this, v23, this + 26);
          }

          v25 = 208;
        }

        v26 = *(*(this + v25) + 8 * v10);
        if (!v26)
        {
          goto LABEL_4;
        }

        v5 = v26(*(a1 + 3));
        if (v5 && *v5)
        {
          v27 = v5 + 1;
          do
          {
            ++v9;
          }

          while (*v27++);
        }
      }

      ++v10;
      v11 = *v6;
      if (v10 >= *v6)
      {
        goto LABEL_55;
      }
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_55:
  if (*(*(a1 + 1) + 762) == 1)
  {
    v5 = SISearchCtx_METADATA::photosDerivedAttributes(a1, *(*(a1 + 3) + 1192));
    v29 = *(a1 + 90);
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        v31 = v5[i];
        if (v31 && *v31)
        {
          v32 = v31 + 1;
          do
          {
            ++v8;
          }

          while (*v32++);
        }
      }
    }
  }

  if (*(a1 + 40) == 3)
  {
    v5 = PartialQueryResults::completionAttributeIdVector(this, *(*(a1 + 3) + 1192));
    v34 = *(this + 45);
    if (v34 >= 1)
    {
      for (j = 0; j != v34; ++j)
      {
        v36 = v5[j];
        if (v36 && *v36)
        {
          v37 = v36 + 1;
          do
          {
            ++v8;
          }

          while (*v37++);
        }
      }
    }
  }

  MEMORY[0x1EEE9AC00](v5);
  v40 = (&v133 - v39);
  bzero(&v133 - v39, v41);
  if (v9)
  {
    if (*v6 < 1)
    {
LABEL_99:
      v133 = &v133;
      v56 = *(this + 34);
      v55 = *(this + 35);
      v57 = *(this + 36);
      if (*(a1 + 40) == 3)
      {
        if (v55 && *v55)
        {
          v58 = v55 + 1;
          do
          {
            ++v8;
          }

          while (*v58++);
        }

        if (v56 && *v56)
        {
          v60 = v56 + 1;
          do
          {
            ++v8;
          }

          while (*v60++);
        }

        if (v57 && *v57)
        {
          v62 = v57 + 1;
          do
          {
            ++v8;
          }

          while (*v62++);
        }
      }

      v64 = v9;
      if (v9 >= 1)
      {
        for (k = 0; k != v9; ++k)
        {
          v66 = v40[k];
          if (v66 && *v66)
          {
            v67 = v66 + 1;
            do
            {
              ++v8;
            }

            while (*v67++);
          }
        }
      }

      malloc = query_malloc(4 * v8 + 4);
      if (*(a1 + 40) == 3)
      {
        v70 = PartialQueryResults::completionAttributeIdVector(this, *(*(a1 + 3) + 1192));
        v71 = *(this + 45);
        if (v71 < 1)
        {
          v77 = 0;
        }

        else
        {
          v72 = 0;
          v73 = 0;
          do
          {
            v74 = *(v70 + 8 * v72);
            if (v74 && (v75 = *v74) != 0)
            {
              v76 = v74 + 1;
              do
              {
                v77 = v73 + 1;
                malloc[v73] = v75;
                v78 = *v76++;
                v75 = v78;
                ++v73;
              }

              while (v78);
            }

            else
            {
              v77 = v73;
            }

            ++v72;
            v73 = v77;
          }

          while (v72 != v71);
        }

        if (v55 && (v80 = *v55) != 0)
        {
          v81 = v55 + 1;
          do
          {
            v82 = v77 + 1;
            malloc[v77] = v80;
            v83 = *v81++;
            v80 = v83;
            ++v77;
          }

          while (v83);
        }

        else
        {
          v82 = v77;
        }

        if (v56 && (v84 = *v56) != 0)
        {
          v85 = v56 + 1;
          do
          {
            v86 = v82 + 1;
            malloc[v82] = v84;
            v87 = *v85++;
            v84 = v87;
            ++v82;
          }

          while (v87);
        }

        else
        {
          v86 = v82;
        }

        if (v57 && (v88 = *v57) != 0)
        {
          v89 = v57 + 1;
          do
          {
            v79 = v86 + 1;
            malloc[v86] = v88;
            v90 = *v89++;
            v88 = v90;
            ++v86;
          }

          while (v90);
        }

        else
        {
          v79 = v86;
        }
      }

      else
      {
        v79 = 0;
      }

      if (*(*(a1 + 1) + 762) == 1)
      {
        v91 = SISearchCtx_METADATA::photosDerivedAttributes(a1, *(*(a1 + 3) + 1192));
        v92 = *(a1 + 90);
        if (v92 >= 1)
        {
          for (m = 0; m < v92; ++m)
          {
            v94 = *(v91 + 8 * m);
            if (v94)
            {
              v95 = *v94;
              if (*v94)
              {
                v96 = v94 + 1;
                do
                {
                  malloc[v79++] = v95;
                  v97 = *v96++;
                  v95 = v97;
                }

                while (v97);
                v92 = *(a1 + 90);
              }
            }
          }
        }
      }

      if (v9 < 1)
      {
        v102 = v79;
      }

      else
      {
        for (n = 0; n != v9; ++n)
        {
          v99 = v40[n];
          if (v99 && (v100 = *v99) != 0)
          {
            v101 = v99 + 1;
            do
            {
              v102 = v79 + 1;
              malloc[v79] = v100;
              v103 = *v101++;
              v100 = v103;
              ++v79;
            }

            while (v103);
          }

          else
          {
            v102 = v79;
          }

          v79 = v102;
        }
      }

      v104 = PartialQueryResults::attributeIdVector(this, *(*(a1 + 3) + 1192));
      v105 = *(this + 29);
      if (v105 < 1)
      {
        v110 = v102;
      }

      else
      {
        for (ii = 0; ii != v105; ++ii)
        {
          v107 = *(v104 + 8 * ii);
          if (v107 && (v108 = *v107) != 0)
          {
            v109 = v107 + 1;
            do
            {
              v110 = v102 + 1;
              malloc[v102] = v108;
              v111 = *v109++;
              v108 = v111;
              ++v102;
            }

            while (v111);
          }

          else
          {
            v110 = v102;
          }

          v102 = v110;
        }
      }

      malloc[v110] = 0;
      qsort_b(malloc, v110, 4uLL, &__block_literal_global_140);
      *(a1 + 115) = malloc;
      if (v9 >= 1)
      {
        do
        {
          v112 = *v40++;
          free(v112);
          --v64;
        }

        while (v64);
      }

      goto LABEL_183;
    }

    v42 = 0;
    LODWORD(v43) = 0;
    v44 = 1;
    do
    {
      if (*this == 1)
      {
        if (!*(this + 25))
        {
          v45 = *(this + 13);
          if (!v45)
          {
            v46 = *(this + 16);
            if (v46)
            {
              v135[0] = 0;
              SIFlattenArrayToCStringVector(v46, this + 13, v135, &v134);
              v45 = *(this + 13);
            }

            else
            {
              v45 = 0;
            }
          }

          PartialQueryResults::setupCannedAttributeVector(this, v45, this + 25, v135);
        }

        v49 = 216;
      }

      else
      {
        if (!*(this + 26))
        {
          v47 = *(this + 12);
          if (v44 && !v47)
          {
            v48 = *(this + 15);
            if (v48)
            {
              SIFlattenArrayToCStringVector(v48, this + 12, this + 30, this + 29);
              v47 = *(this + 12);
              if (!v47)
              {
                goto LABEL_184;
              }
            }

            else
            {
              v47 = 0;
            }
          }

          PartialQueryResults::setupCannedRequiredAttributeVector(this, v47, this + 26);
        }

        v49 = 208;
      }

      v50 = *(*(this + v49) + 8 * v42);
      if (v50)
      {
        v51 = v50(*(a1 + 3));
        if (v51)
        {
          v52 = *v51;
          if (*v51)
          {
            v43 = v43;
            v53 = v51 + 1;
            do
            {
              v40[v43++] = db_copy_field_ids_with_buffer(*(*(a1 + 3) + 1192), v52, 0, 0);
              v54 = *v53++;
              v52 = v54;
            }

            while (v54);
          }
        }
      }

      ++v42;
      v44 = *v6;
    }

    while (v42 < *v6);
  }

  if (v9 || v8)
  {
    goto LABEL_99;
  }

LABEL_183:
  v113 = *MEMORY[0x1E69E9840];
}

void PartialQueryResults::setupCannedRequiredAttributeVector(PartialQueryResults *this, const char **a2, const char **(***a3)(__SI *))
{
  v6 = *(this + 29);
  v7 = 8 * v6;
  if (((v6 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v7 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
  if (!v9)
  {
    _log_fault_for_malloc_failure();
  }

  *a3 = v9;
  v10 = *(this + 29);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = strlen(a2[i]);
      v13 = CannedFieldTable::in_word_set(a2[i], v12);
      if (v13)
      {
        v14 = v13[4];
      }

      else
      {
        v14 = 0;
      }

      (*a3)[i] = v14;
    }
  }
}

void PayloadIteratorDestroy(uint64_t a1)
{
  free(*(a1 + 240));
  free(*(a1 + 176));
  v2 = *(a1 + 128);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    ReleaseEmbeddingDistances(v5);
    *(a1 + 72) = 0;
  }
}

void emitResults(SISearchCtx_METADATA *this, PartialQueryResults *a2, int a3)
{
  v144 = *MEMORY[0x1E69E9840];
  if (*(this + 212))
  {
    v6 = **(this + 105);
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 0x40000000;
    v133[2] = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke;
    v133[3] = &__block_descriptor_tmp_167;
    v133[4] = this;
    *&v134 = MEMORY[0x1E69E9820];
    *(&v134 + 1) = 0x40000000;
    *&v135 = __db_query_tree_apply_block_block_invoke;
    *(&v135 + 1) = &unk_1E8198ED0;
    *&v136 = v133;
    db_query_tree_apply_block_with_meta(v6, &v134, 0);
    if (a3)
    {
      v128 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
      v7 = *MEMORY[0x1E695E480];
      Mutable = _MDPlistContainerCreateMutable();
      _MDPlistContainerBeginContainer();
      _MDPlistContainerBeginDictionary();
      v9 = **(this + 105);
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 0x40000000;
      v132[2] = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_2;
      v132[3] = &__block_descriptor_tmp_168;
      v132[4] = &v128;
      v132[5] = Mutable;
      *&v134 = MEMORY[0x1E69E9820];
      *(&v134 + 1) = 0x40000000;
      *&v135 = __db_query_tree_apply_block_block_invoke;
      *(&v135 + 1) = &unk_1E8198ED0;
      *&v136 = v132;
      db_query_tree_apply_block_with_meta(v9, &v134, 0);
      _MDPlistContainerEndDictionary();
      _MDPlistContainerEndContainer();
      _MDPlistContainerGetBytes();
      _MDPlistContainerGetLength();
      v10 = _MDPlistContainerCreateWithCopiedBytes();
      v11 = *(a2 + 57);
      if (v11)
      {
        CFRelease(v11);
      }

      *(a2 + 57) = v10;
      free(v128);
      CFRelease(Mutable);
    }
  }

  v12 = *(this + 147);
  if (v12)
  {
    v13 = *(this + 40);
    v14 = 1;
    v15 = v13 > 6;
    v16 = (1 << v13) & 0x4A;
    if (!v15 && v16 != 0)
    {
      updated = SISearchCtx_METADATA::updateGroupingCount(this);
      if (updated < 1)
      {
        goto LABEL_81;
      }

      v12 = *(this + 147);
      v14 = updated;
    }

    v19 = 0;
    v20 = 0;
    v21 = v12 + 8;
    do
    {
      v22 = v21 + 40 * v19;
      v23 = *(v22 + 24);
      if (v23 && (v24 = *v23, v24))
      {
        LODWORD(v25) = 0;
        v26 = (v23 + 18);
        do
        {
          v27 = *v26;
          v26 += 40;
          if (v27)
          {
            v25 = (v25 + 1);
          }

          else
          {
            v25 = v25;
          }

          --v24;
        }

        while (v24);
      }

      else
      {
        v25 = 0;
      }

      v28 = *(v21 + 40 * v19 + 32);
      if (v28 && (v29 = *v28, v29))
      {
        LODWORD(v30) = 0;
        v31 = (v28 + 18);
        do
        {
          v32 = *v31;
          v31 += 40;
          if (v32)
          {
            v30 = (v30 + 1);
          }

          else
          {
            v30 = v30;
          }

          --v29;
        }

        while (v29);
      }

      else
      {
        v30 = 0;
      }

      v20 = v20 + *(v22 + 16) + v25 + v30 - 1;
      ++v19;
    }

    while (v19 != v14);
    if (v20)
    {
      v33 = malloc_type_zone_malloc(queryZone, 8 * v20, 0xA4971684uLL);
      if (!v33)
      {
        _log_fault_for_malloc_failure();
      }

      v34 = malloc_type_zone_malloc(queryZone, 2 * v20, 0xA4971684uLL);
      if (!v34)
      {
        _log_fault_for_malloc_failure();
      }

      v96 = malloc_type_zone_malloc(queryZone, 80 * v20, 0xA4971684uLL);
      if (!v96)
      {
        _log_fault_for_malloc_failure();
      }

      v101 = v34;
      v35 = malloc_type_zone_malloc(queryZone, 5 * v20, 0xA4971684uLL);
      if (!v35)
      {
        _log_fault_for_malloc_failure();
      }

      v36 = v96;
      v95 = malloc_type_zone_malloc(queryZone, 28 * v20, 0xA4971684uLL);
      if (!v95)
      {
        _log_fault_for_malloc_failure();
      }

      v93 = v20;
      v94 = a2;
      v37 = malloc_type_zone_malloc(queryZone, v20, 0xA4971684uLL);
      if (!v37)
      {
        _log_fault_for_malloc_failure();
      }

      v38 = 0;
      v128 = 0;
      v129 = &v128;
      v130 = 0x2000000000;
      v131 = 0;
      v124 = 0;
      v125 = &v124;
      v126 = 0x2000000000;
      v127 = 0;
      v98 = a3;
      v39 = v95;
      v97 = v33;
      do
      {
        v99 = *(*(this + 147) + 40 * v38 + 24);
        v40 = v99 - 1;
        v100 = malloc_type_malloc(160 * (v99 - 1), 0x100004073294F05uLL);
        v41 = *(this + 147) + 40 * v125[3];
        if (*(v41 + 24) != 1)
        {
          v42 = v33;
          v43 = (v41 + 8);
          v44 = v100;
          do
          {
            pqpop_rankAndFetchInfo_t(&v134, v43);
            v44[6] = v140;
            v44[7] = v141;
            v44[8] = v142;
            v44[9] = v143;
            v44[2] = v136;
            v44[3] = v137;
            v44[4] = v138;
            v44[5] = v139;
            *v44 = v134;
            v44[1] = v135;
            v45 = v125;
            v46 = *(v125 + 24);
            v47 = v129;
            v48 = v129[3];
            v42[v48] = *(v44 + 17);
            v101[v48] = v46;
            v49 = &v36[10 * v48];
            *v49 = *v44;
            v50 = v44[1];
            v51 = v44[2];
            v52 = v44[4];
            *(v49 + 3) = v44[3];
            *(v49 + 4) = v52;
            *(v49 + 1) = v50;
            *(v49 + 2) = v51;
            v53 = *(v44 + 11);
            *v49 = *(v44 + 10);
            v49[1] = v53;
            v54 = v35 + 5 * v48;
            v55 = *(v44 + 24);
            v54[4] = *(v44 + 100);
            *v54 = v55;
            v56 = &v39[7 * v48];
            v57 = *(v44 + 104);
            *(v56 + 3) = *(v44 + 116);
            *v56 = v57;
            *(v48 + v37) = *(v44 + 144);
            v47[3] = v47[3] + 1;
            v58 = *(this + 147) + 40 * v45[3];
            v43 = (v58 + 8);
            v44 += 10;
          }

          while (*(v58 + 24) != 1);
        }

        v59 = v98;
        if (v99 >= 2 && (v98 & 1) == 0)
        {
          v60 = v100;
          do
          {
            v61 = *(this + 147) + 40 * v125[3];
            v140 = v60[6];
            v141 = v60[7];
            v142 = v60[8];
            v143 = v60[9];
            v136 = v60[2];
            v137 = v60[3];
            v138 = v60[4];
            v139 = v60[5];
            v134 = *v60;
            v135 = v60[1];
            pqpush_rankAndFetchInfo_t(v61 + 8, &v134);
            v60 += 10;
            --v40;
          }

          while (v40);
        }

        free(v100);
        v62 = *(this + 147);
        v63 = v125;
        v64 = *(v62 + 40 * v125[3] + 32);
        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 0x40000000;
        v114 = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_3;
        v115 = &unk_1E81945E0;
        v39 = v95;
        v36 = v96;
        v118 = v35;
        v119 = v95;
        v116 = &v124;
        v117 = &v128;
        v120 = v101;
        v121 = v37;
        v33 = v97;
        v122 = v97;
        v123 = v96;
        if (v64)
        {
          v65 = *v64;
          if (v65)
          {
            v66 = 0;
            v67 = v64 + 18;
            do
            {
              if (*v67)
              {
                v68 = *(v67 - 10);
                v134 = *(v67 - 14);
                v135 = v68;
                v69 = *(v67 - 6);
                v70 = *(v67 - 2);
                v71 = *(v67 + 6);
                v138 = *(v67 + 2);
                v139 = v71;
                v136 = v69;
                v137 = v70;
                v72 = *(v67 + 10);
                v73 = *(v67 + 14);
                v74 = *(v67 + 22);
                v142 = *(v67 + 18);
                v143 = v74;
                v140 = v72;
                v141 = v73;
                v114(v113, &v134);
                v65 = *v64;
              }

              ++v66;
              v67 += 40;
            }

            while (v66 < v65);
            v62 = *(this + 147);
            v63 = v125;
            v59 = v98;
            v33 = v97;
          }
        }

        if (v59)
        {
          v75 = *(v62 + 40 * v63[3] + 32);
          if (v75)
          {
            v76 = *v75;
            if (v76)
            {
              v77 = v75 + 4;
              do
              {
                v77[6] = xmmword_1C2BFF380;
                v77[7] = unk_1C2BFF390;
                v77[8] = xmmword_1C2BFF3A0;
                v77[9] = unk_1C2BFF3B0;
                v77[2] = xmmword_1C2BFF340;
                v77[3] = unk_1C2BFF350;
                v77[4] = xmmword_1C2BFF360;
                v77[5] = unk_1C2BFF370;
                *v77 = ZERO_FETCHINFO;
                v77[1] = *algn_1C2BFF330;
                v77 += 10;
                --v76;
              }

              while (v76);
              v62 = *(this + 147);
            }
          }
        }

        v78 = *(v62 + 40 * v63[3] + 40);
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 0x40000000;
        v103 = ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_4;
        v104 = &unk_1E8194608;
        v107 = v35;
        v108 = v95;
        v105 = &v124;
        v106 = &v128;
        v109 = v101;
        v110 = v37;
        v111 = v33;
        v112 = v96;
        if (v78)
        {
          v79 = *v78;
          if (v79)
          {
            v80 = 0;
            v81 = v78 + 18;
            do
            {
              if (*v81)
              {
                v82 = *(v81 - 10);
                v134 = *(v81 - 14);
                v135 = v82;
                v83 = *(v81 - 6);
                v84 = *(v81 - 2);
                v85 = *(v81 + 6);
                v138 = *(v81 + 2);
                v139 = v85;
                v136 = v83;
                v137 = v84;
                v86 = *(v81 + 10);
                v87 = *(v81 + 14);
                v88 = *(v81 + 22);
                v142 = *(v81 + 18);
                v143 = v88;
                v140 = v86;
                v141 = v87;
                v103(v102, &v134);
                v79 = *v78;
              }

              ++v80;
              v81 += 40;
            }

            while (v80 < v79);
            v63 = v125;
            v59 = v98;
            v33 = v97;
          }
        }

        if (v59)
        {
          v89 = *(*(this + 147) + 40 * v63[3] + 40);
          if (v89)
          {
            v90 = *v89;
            if (v90)
            {
              v91 = v89 + 4;
              do
              {
                *(v91 + 144) = 0;
                *(v91 + 6) = xmmword_1C2BF6C10;
                *(v91 + 7) = unk_1C2BF6C20;
                *(v91 + 8) = xmmword_1C2BF6C30;
                *(v91 + 2) = xmmword_1C2BF6BD0;
                *(v91 + 3) = unk_1C2BF6BE0;
                *(v91 + 4) = xmmword_1C2BF6BF0;
                *(v91 + 5) = unk_1C2BF6C00;
                *v91 = ZERO_FETCHINFO_Q2;
                *(v91 + 1) = unk_1C2BF6BC0;
                v91 += 40;
                --v90;
              }

              while (v90);
            }
          }
        }

        v38 = v63[3] + 1;
        v63[3] = v38;
      }

      while (v38 < v14);
      _Block_object_dispose(&v124, 8);
      _Block_object_dispose(&v128, 8);
      readSDBForOids(this, v33, v101, v96, v35, v95, v93, v37, v94, 0, 1u);
      free(v33);
      free(v101);
      free(v96);
      free(v35);
      free(v95);
      free(v37);
    }
  }

LABEL_81:
  v92 = *MEMORY[0x1E69E9840];
}

void SISearchCtx_METADATA::postIterate(SISearchCtx_METADATA *this, char a2)
{
  SISearchCtx_METADATA::cleanUp(this, a2);

  SISearchCtx::common_postIterate(this, v3);
}

void SISearchCtx::common_postIterate(SISearchCtx *this, SISearchCtx *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    db_release_files(v3);
    *(this + 18) = 0;
  }

  *(this + 17) = CFAbsoluteTimeGetCurrent();
}

void storageWindowRelease(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(v2 + 4);
      if (v3)
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 0x40000000;
        v4[2] = __storageWindowDestroy_block_invoke;
        v4[3] = &__block_descriptor_tmp_18;
        v4[4] = v2;
        (*(v3 + 16))(v3, v4);
      }

      else
      {
        storageWindowDestroyImmediate(v2);
      }
    }

    *a1 = 0;
  }
}

void ContentIndexQueryNodeDispose(char *a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = &a1[16 * v3 + 24];
      if (*v4 >= 1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = *(v4 + 1) + v5;
          v8 = *(v7 + 16);
          if ((v8 & 0x610) != 0)
          {
            if ((v8 & 0x10) != 0)
            {
              free(*v7);
            }
          }

          else
          {
            free(*v7);
            free(*(*(v4 + 1) + v5 + 8));
            v9 = *(v4 + 1) + v5;
            if ((*(v9 + 17) & 0x80) != 0)
            {
              v11 = *(v9 + 40);
            }

            else
            {
              v10 = *(v9 + 32);
            }

            icu_ctx_release();
          }

          v12 = *(*(v4 + 1) + v5 + 48);
          if (v12)
          {
            la_free(v12);
          }

          ++v6;
          v5 += 64;
        }

        while (v6 < *v4);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  free(a1);
}

void *query_malloc(size_t size)
{
  v1 = malloc_type_zone_malloc(queryZone, size, 0xA4971684uLL);
  if (!v1)
  {
    _log_fault_for_malloc_failure();
  }

  return v1;
}

void db_obj_iter_create_subiterators(uint64_t a1, unint64_t a2, void *a3, double a4, double a5, __n128 a6)
{
  if (*a1 != 3506)
  {
    v36 = __si_assert_copy_extra_332();
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 717, v38);
    free(v37);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (*(a1 + 74) == 1)
  {
    obj_iter_resume(a1, a4, a5, a6);
  }

  v9 = a2 - 1;
  if (a2 == 1)
  {
    *a3 = a1 + 80;
  }

  else
  {
    v10 = *(a1 + 136);
    v11 = (v9 + v10) / a2;
    v12 = v10 + v11;
    if (v11 * a2 <= v10 + v11)
    {
      v16 = 0;
      v14 = a2;
    }

    else
    {
      v13 = 0;
      v14 = a2;
      do
      {
        v15 = v14;
        while (1)
        {
          v14 = (v15 + 1) >> 1;
          v16 = v13 + v14;
          if (v13 + v14 <= a2 && v14 <= *(a1 + 136))
          {
            break;
          }

          v15 = (v15 + 1) >> 1;
          if (v14 * v11 <= v12)
          {
            v16 = v13;
            goto LABEL_19;
          }
        }

        if (v15)
        {
          v17 = 0;
          do
          {
            initializeSubIter(v13, a1, v17++, v11, a3);
          }

          while (v14 != v17);
        }

        v10 -= v14 * v11;
        v11 = (v14 + v10 - 1) / v14;
        v12 = v10 + v11;
        v13 += v14;
      }

      while (v14 * v11 > v10 + v11);
    }

LABEL_19:
    v18 = a2 - v16;
    if (a2 < v16)
    {
      v18 = 0;
    }

    if (v14 + v16 <= a2)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        initializeSubIter(v16, a1, i, v11, a3);
      }
    }

    v21 = v19 + v16;
    v22 = a2 - (v19 + v16);
    if (a2 > v19 + v16)
    {
      v23 = 0;
      do
      {
        initializeSubIter(v21, a1, v23++, 0, a3);
      }

      while (v22 != v23);
    }

    v24 = a3[v9];
    v25 = *(v24 + 8);
    v26 = *(v24 + 56) + v25;
    v27 = *(a1 + 136);
    if (v26 != v27)
    {
      if (v26 >= v27)
      {
        if (v26 > v27)
        {
          v28 = v27 >= v25;
          v29 = v27 - v25;
          if (v28)
          {
            *(v24 + 56) = v29;
          }

          else
          {
            *(v24 + 8) = v27;
            *(v24 + 56) = 0;
            v30 = a2 - 2;
            if (a2 >= 2)
            {
              v31 = &a3[a2 - 1];
              do
              {
                v32 = *(v31 - 8);
                v33 = *(v32 + 8);
                v34 = *(*v31 + 8);
                if (v34 <= v33)
                {
                  *(v32 + 8) = v34;
                  *(v32 + 56) = 0;
                }

                else
                {
                  if (*(v32 + 56) + v33 <= v34)
                  {
                    return;
                  }

                  *(v32 + 56) = v34 - v33;
                }

                v35 = v30-- + 1;
                v31 -= 8;
              }

              while (v35 > 1);
            }
          }
        }
      }

      else
      {
        *(v24 + 56) = v27 - v25;
      }
    }
  }
}

uint64_t store_stream_flush(unsigned int *a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    goto LABEL_2;
  }

  v7 = (a1 + 2);
  v8 = *(a1 + 1);
  v9 = *a1;
  if (v8)
  {
    v10 = prot_pwrite_guarded(v9, v7, *(a1 + 6), *(a1 + 5), *(a1 + 3));
  }

  else
  {
    v10 = prot_pwrite(v9, *(a1 + 6), *(a1 + 5), *(a1 + 3));
  }

  if (*(a1 + 5) == v10)
  {
    *(a1 + 3) += v10;
  }

  else
  {
    v2 = *__error();
    a1[4] = v2;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = 67109120;
    v13 = v2;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "store_stream_flush write err:%d", &v12, 8u);
  }

  v2 = a1[4];
LABEL_10:
  *(a1 + 5) = 0;
  if (a2 && !v2)
  {
    v11 = fsync(*a1);
    a1[4] = v11;
    if (v11)
    {
      v2 = *__error();
      a1[4] = v2;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 67109120;
        v13 = v2;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "store_stream_flush sync err:%d", &v12, 8u);
        v2 = a1[4];
      }
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_2:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _partition_oid_lookups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2 + 1;
  v4 = (a1 + 32 * a2);
  v5 = &v4[2 * ((v3 + (v3 >> 63)) >> 1)];
  v6 = (a1 + 32 * a3);
  if (a3 - a2 < 1024)
  {
    v21 = (a1 + 32 * a3);
    v11 = (a1 + 32 * a2);
    goto LABEL_91;
  }

  v7 = v3 >> 3;
  v8 = &v4[2 * (v3 >> 3)];
  v9 = v4->i64[0];
  v10 = v8->i64[0];
  v11 = (a1 + 32 * a2);
  if (v4->i64[0] == v8->i64[0])
  {
    goto LABEL_31;
  }

  v12 = &v4[4 * v7];
  v13 = v12->i64[0];
  if (v12->i64[0] == v9 || v13 == v10)
  {
    goto LABEL_20;
  }

  v15 = v4[1].u64[0];
  v16 = v8[1].u64[0];
  v17 = v12[1].u64[0];
  v18 = v9 < v10;
  if (v15 != v16)
  {
    v18 = 0;
  }

  if (v15 >= v16 && !v18)
  {
    v22 = v10 > v13;
    if (v16 != v17)
    {
      v22 = 0;
    }

    if (v16 <= v17)
    {
      v11 = v8;
      if (!v22)
      {
        if (v9 < v13 && v15 == v17 || (v11 = &v4[4 * v7], v15 < v17))
        {
          v11 = (a1 + 32 * a2);
        }
      }

      goto LABEL_31;
    }

LABEL_30:
    v11 = v8;
    goto LABEL_31;
  }

  v20 = v10 < v13;
  if (v16 != v17)
  {
    v20 = 0;
  }

  if (v16 < v17)
  {
    goto LABEL_30;
  }

  v11 = v8;
  if (!v20)
  {
    if (v9 < v13 && v15 == v17 || (v11 = (a1 + 32 * a2), v15 < v17))
    {
LABEL_20:
      v11 = &v4[4 * v7];
    }
  }

LABEL_31:
  v23 = 2 * v7;
  v24 = -v7;
  v25 = &v5[-2 * v7];
  v26 = v25->i64[0];
  v27 = v5->i64[0];
  if (v25->i64[0] == v5->i64[0])
  {
    v5 -= 2 * v7;
  }

  else
  {
    v28 = &v5[2 * v7];
    v29 = v28->i64[0];
    if (v28->i64[0] == v26 || v29 == v27)
    {
      v5 = v28;
    }

    else
    {
      v31 = v25[1].u64[0];
      v32 = v5[1].u64[0];
      v33 = v28[1].u64[0];
      v34 = v26 < v27;
      if (v31 != v32)
      {
        v34 = 0;
      }

      if (v31 >= v32 && !v34)
      {
        v38 = v27 > v29;
        if (v32 != v33)
        {
          v38 = 0;
        }

        if (v32 <= v33 && !v38)
        {
          if ((v26 >= v29 || v31 != v33) && v31 >= v33)
          {
            v5 = v28;
          }

          else
          {
            v5 = v25;
          }
        }
      }

      else
      {
        v36 = v27 < v29;
        if (v32 != v33)
        {
          v36 = 0;
        }

        if (v32 >= v33 && !v36)
        {
          v5 = v31 < v33 ? v28 : v25;
          if (v26 < v29 && v31 == v33)
          {
            v5 = v28;
          }
        }
      }
    }
  }

  v21 = &v6[-2 * v23];
  v41 = &v6[2 * v24];
  v42 = v21->i64[0];
  v43 = v41->i64[0];
  if (v21->i64[0] != v41->i64[0])
  {
    v44 = v6->i64[0];
    if (v6->i64[0] == v42 || v44 == v43)
    {
      goto LABEL_89;
    }

    v45 = v21[1].u64[0];
    v46 = v41[1].u64[0];
    v47 = v6[1].u64[0];
    v48 = v42 < v43;
    if (v45 != v46)
    {
      v48 = 0;
    }

    if (v45 >= v46 && !v48)
    {
      v49 = v43 > v44;
      if (v46 != v47)
      {
        v49 = 0;
      }

      if (v46 <= v47 && !v49)
      {
        if (v42 < v44 && v45 == v47 || v45 < v47)
        {
          goto LABEL_91;
        }

LABEL_89:
        v21 = (a1 + 32 * a3);
        goto LABEL_91;
      }

LABEL_90:
      v21 = v41;
      goto LABEL_91;
    }

    v50 = v43 < v44;
    if (v46 != v47)
    {
      v50 = 0;
    }

    if (v46 < v47 || v50)
    {
      goto LABEL_90;
    }

    if (v42 < v44 && v45 == v47)
    {
      goto LABEL_89;
    }

    if (v45 < v47)
    {
      v21 = (a1 + 32 * a3);
    }
  }

LABEL_91:
  v51 = v11->i64[0];
  v52 = v5->i64[0];
  if (v11->i64[0] == v5->i64[0])
  {
    goto LABEL_116;
  }

  v53 = v21->i64[0];
  if (v21->i64[0] == v51 || v53 == v52)
  {
    goto LABEL_108;
  }

  v55 = v11[1].u64[0];
  v56 = v5[1].u64[0];
  v57 = v21[1].u64[0];
  v58 = v51 < v52;
  if (v55 != v56)
  {
    v58 = 0;
  }

  if (v55 >= v56 && !v58)
  {
    v61 = v52 > v53;
    if (v56 != v57)
    {
      v61 = 0;
    }

    if (v56 > v57 || v61)
    {
      goto LABEL_120;
    }

    if (v51 >= v53 || v55 != v57)
    {
      v5 = v21;
      if (v55 >= v57)
      {
        goto LABEL_120;
      }
    }

LABEL_116:
    v5 = v11;
    goto LABEL_120;
  }

  v60 = v52 < v53;
  if (v56 != v57)
  {
    v60 = 0;
  }

  if (v56 >= v57 && !v60)
  {
    if (v51 < v53 && v55 == v57)
    {
LABEL_108:
      v5 = v21;
      goto LABEL_120;
    }

    if (v55 < v57)
    {
      v5 = v21;
    }

    else
    {
      v5 = v11;
    }
  }

LABEL_120:
  v62 = *v5;
  v63 = v5[1];
  v64 = v6[1];
  *v5 = *v6;
  v5[1] = v64;
  *v6 = v62;
  v6[1] = v63;
  v65 = a3 - a2;
  if (a3 > a2)
  {
    v67 = *v4;
    v68 = v4[1];
    v66 = v4 + 3;
    v69 = v63.i64[0];
    do
    {
      v70 = v68;
      v71 = v67;
      v67 = v66[-1];
      v68 = *v66;
      if (v70.i64[0] < v69 || v70.i64[0] == v69 && (vmovn_s64(vcgtq_s64(v71, v62)).u8[0] & 1) == 0)
      {
        v72 = (a1 + 32 * a2);
        v73 = v72[1];
        v66[-3] = *v72;
        v66[-2] = v73;
        *v72 = v71;
        v72[1] = v70;
        ++a2;
      }

      v66 += 2;
      --v65;
    }

    while (v65);
  }

  v74 = (a1 + 32 * a2);
  v76 = *v74;
  v75 = v74[1];
  v77 = v6[1];
  *v74 = *v6;
  v74[1] = v77;
  *v6 = v76;
  v6[1] = v75;
  return a2;
}