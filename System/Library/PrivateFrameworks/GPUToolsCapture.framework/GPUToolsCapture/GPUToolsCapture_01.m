void CaptureInit()
{
  v0 = objc_autoreleasePoolPush();
  if (CaptureInterposerInit_onceToken != -1)
  {
    dispatch_once(&CaptureInterposerInit_onceToken, &__block_literal_global_156);
  }

  objc_autoreleasePoolPop(v0);
}

void CaptureInterposerInit()
{
  if (CaptureInterposerInit_onceToken != -1)
  {
    dispatch_once(&CaptureInterposerInit_onceToken, &__block_literal_global_156);
  }
}

void *GTHarvesterInitMetadata(void *a1, __int16 a2, size_t a3)
{
  v3 = a3;
  bzero(a1, a3);
  *a1 = 0x63617074757265;
  *(a1 + 4) = 2;
  *(a1 + 5) = a2;
  *(a1 + 3) = v3;
  return a1;
}

uint64_t GTHarvesterGetMetadataSize(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 1)
    {
      return *(result + 12) + 16;
    }

    else
    {
      return *(result + 12);
    }
  }

  return result;
}

void *GTHarvesterGetMetadata(void *a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2 >= 0x10)
  {
    if (*a1 == 0x63617074757265)
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t GTHarvesterGetDataSize(uint64_t a1, unint64_t a2)
{
  if (a1 && a2 >= 0x10 && *a1 == 0x63617074757265)
  {
    v2 = *(a1 + 12);
    if (*(a1 + 8) == 1)
    {
      v2 += 16;
    }

    a2 -= v2;
  }

  return a2;
}

uint64_t GTHarvesterGetData(uint64_t result, unint64_t a2)
{
  if (result && a2 >= 0x10 && *result == 0x63617074757265)
  {
    v2 = *(result + 12);
    if (*(result + 8) == 1)
    {
      v2 += 16;
    }

    result += v2;
  }

  return result;
}

uint64_t GTHarvesterGetTexturePlaneCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 10) == 1)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GTHarvesterGetTexturePlane(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 10) == 1)
    {
      if (*(result + 16) >= a2)
      {
        result += 48 * a2 + 24;
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
  }

  return result;
}

__n128 GTHarvesterAddTexturePlane(uint64_t a1, __int128 *a2)
{
  v2 = a1 + 48 * *(a1 + 16);
  v4 = *a2;
  result = a2[1];
  *(v2 + 56) = a2[2];
  *(v2 + 24) = v4;
  *(v2 + 40) = result;
  ++*(a1 + 16);
  return result;
}

void GTTraceStore_buildDebugContext(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v5 = (a2 + a3);
    v6 = a1 + 32;
    v7 = (a1 + 8);
    do
    {
      v8 = *(v3 + 8);
      v9 = (v6 + 24 * *(v3 + 8));
      v10 = v9[1];
      ++*v9;
      v11 = atomic_load(v3 + 1);
      v12 = v9[2];
      v9[1] = v10 + v11;
      v9[2] = v12 + *v3;
      v13 = a1;
      if (v8 == 1)
      {
        goto LABEL_6;
      }

      if (v8 == 3)
      {
        v18 = *(a1 + 24);
        v19 = atomic_load(v3 + 1);
        if (v19 != 64)
        {
          v20 = (v3 + v19);
          v21 = v3 + 16;
          do
          {
            apr_hash_set(v18, v21, 8, v21 + 2);
            v21 = (v21 + ((8 * *(v21 + 1) + 23) & 0xFFFFFFFF8));
          }

          while (v21 != v20);
        }

        goto LABEL_18;
      }

      v13 = v7;
      if (v8 == 2)
      {
LABEL_6:
        v14 = *v13;
        v15 = *find_entry(*v13, v3 + 16, 8uLL, 0);
        if (!v15)
        {
          goto LABEL_14;
        }

          ;
        }

        if (!i)
        {
LABEL_14:
          apr_hash_set(v14, v3 + 4, 8, v3);
        }
      }

LABEL_18:
      v3 = (v3 + *v3);
    }

    while (v3 != v5);
  }
}

unint64_t GTTraceStoreDebugDescription()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  LogForTag = GTCoreLog_getLogForTag(6u);
  if (!GTCoreLog_enabled(LogForTag))
  {
    return 0;
  }

  if (s_logUsingOsLog == 1)
  {
    v5 = gt_tagged_log(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *v195 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Trace store at %s:", buf, 0xCu);
    }
  }

  else
  {
    fprintf(__stdoutp, "Trace store at %s:\n", v3);
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v7 = newpool;
  v8 = apr_hash_make(newpool);
  v171 = v8;
  v172 = apr_hash_make(v7);
  ht = apr_hash_make(v7);
  v174 = apr_hash_make(v7);
  setlocale(0, "");
  pthread_mutex_lock((v2 + 66));
  v167 = v2;
  if (*v2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      GTTraceStore_buildDebugContext(&v171, *(*(v2 + 1) + v9), *(*(v2 + 1) + v9 + 8));
      ++v10;
      v9 += 16;
    }

    while (v10 < *v2);
    v8 = v171;
  }

  *(v8 + 2) = v8;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 10) = 0;
  v11 = apr_hash_next((v8 + 16));
  if (v11)
  {
    v12 = v11;
    v13 = ht;
    do
    {
      for (i = *(*(v12 + 1) + 32); i; i = *(i + 40))
      {
        v15 = atomic_load((i + 4));
        if (v15 >= 0x80)
        {
          v16 = (i + 64);
          v17 = ((v15 >> 6) - 1);
          do
          {
            apr_hash_set(v13, v16, 8, v16);
            v16 += 64;
            --v17;
          }

          while (v17);
        }
      }

      v12 = apr_hash_next(v12);
    }

    while (v12);
  }

  if (s_logUsingOsLog == 1)
  {
    v18 = gt_tagged_log(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[SUMMARY]", buf, 2u);
    }
  }

  else
  {
    fwrite("[SUMMARY]\n", 0xAuLL, 1uLL, __stdoutp);
  }

  v170 = v8;
  v19 = 0uLL;
  v20 = 32;
  v21 = 0uLL;
  v22 = 0uLL;
  do
  {
    v23 = (&v171 + v20);
    v20 += 48;
    v231 = vld3q_f64(v23);
    v19 = vaddq_s64(v231.val[0], v19);
    v21 = vaddq_s64(v231.val[1], v21);
    v22 = vaddq_s64(v231.val[2], v22);
  }

  while (v20 != 128);
  v165 = v21;
  v24 = 0;
  v164 = vaddvq_s64(v19);
  v25 = vaddvq_s64(v22);
  v26 = v25;
  v163 = v25;
  v27 = &v176;
  do
  {
    if (s_logUsingOsLog == 1)
    {
      v28 = gt_tagged_log(6);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v30 = *(v27 - 2);
        v29 = *(v27 - 1);
        v31 = *v27;
        v32 = *v27 * 100.0;
        v33 = (&off_2F16E0)[v24];
        *buf = 67110658;
        *v195 = v24;
        *&v195[4] = 2048;
        *&v195[6] = v29;
        *&v195[14] = 2048;
        *&v195[16] = v31;
        *&v195[24] = 2048;
        *&v195[26] = v29 * 100.0 / v26;
        *&v195[34] = 2048;
        *&v195[36] = v32 / v26;
        *&v195[44] = 2048;
        *&v195[46] = v30;
        v196 = 2080;
        v197 = v33;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%d:\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\t%s", buf, 0x44u);
      }
    }

    else
    {
      fprintf(__stdoutp, "%d:\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\t%s\n", v24, *(v27 - 1), *v27, *(v27 - 1) * 100.0 / v26, *v27 * 100.0 / v26, *(v27 - 2), (&off_2F16E0)[v24]);
    }

    ++v24;
    v27 += 3;
  }

  while (v24 != 4);
  v34 = vaddvq_s64(v165);
  if (s_logUsingOsLog)
  {
    v35 = gt_tagged_log(6);
    v36 = v8 + 24;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 134219008;
      *v195 = v34;
      *&v195[8] = 2048;
      *&v195[10] = v163;
      *&v195[18] = 2048;
      *&v195[20] = v34 * 100.0 / v26;
      *&v195[28] = 2048;
      *&v195[30] = v26 * 100.0 / v26;
      *&v195[38] = 2048;
      *&v195[40] = v164;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "=\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\tTOTAL", buf, 0x34u);
    }
  }

  else
  {
    fprintf(__stdoutp, "=\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\tTOTAL\n", v34, v163, v34 * 100.0 / v26, v26 * 100.0 / v26, v164);
    v36 = v8 + 24;
  }

  v37 = *(&v177 + 1);
  v38 = newpool;
  v166 = v34;
  if (s_logUsingOsLog == 1)
  {
    v39 = gt_tagged_log(6);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "[STREAMS BY FENUM]", buf, 2u);
    }
  }

  else
  {
    fwrite("[STREAMS BY FENUM]\n", 0x13uLL, 1uLL, __stdoutp);
  }

  v40 = 0;
  v41 = *(v170 + 12);
  v230 = 0u;
  v229 = 0u;
  v42 = v41;
  v228 = 0u;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v220 = 0u;
  v219 = 0u;
  v218 = 0u;
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  v208 = 0u;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  do
  {
    *(&v199 + v40) = apr_array_make(v38, v42 / 0x6F, 8);
    v40 += 8;
  }

  while (v40 != 888);
  bzero(buf, 0xA68uLL);
  *(v170 + 2) = v170;
  *v36 = 0;
  *(v36 + 1) = 0;
  *(v36 + 4) = 0;
  v43 = apr_hash_next((v170 + 16));
  if (v43)
  {
    v44 = v43;
    do
    {
      v45 = *(*(v44 + 1) + 32);
      v46 = atomic_load((v45 + 4));
      if ((v46 & 0xFFFFFFC0) != 0x40)
      {
        ConstructorType = GTFenum_getConstructorType(*(v45 + 72));
        *apr_array_push(*(&v199 + ConstructorType)) = v45;
      }

      v44 = apr_hash_next(v44);
    }

    while (v44);
  }

  for (j = 0; j != 111; ++j)
  {
    v49 = *(&v199 + j);
    v50 = *(v49 + 12);
    if (v50 >= 1)
    {
      v51 = 0;
      v52 = &buf[24 * j];
      do
      {
        v53 = *(*(v49 + 24) + 8 * v51);
        if (v53)
        {
          do
          {
            v54 = atomic_load(v53 + 1);
            v55 = *(v52 + 2);
            *(v52 + 1) += v54;
            *(v52 + 2) = v55 + *v53;
            v53 = *(v53 + 5);
          }

          while (v53);
          v50 = *(v49 + 12);
        }

        ++*v52;
        ++v51;
      }

      while (v51 < v50);
    }

    v56 = &__base[j];
    *(v56 + 2) = j;
    *v56 = *&v195[24 * j + 12];
  }

  qsort(__base, 0x6FuLL, 0x10uLL, CompareKeyValuePair);
  v57 = apr_array_make(v38, 32, 16);
  v58 = apr_hash_make(v38);
  v59 = 0;
  v60 = v37;
  do
  {
    v61 = DWORD2(__base[v59]);
    v62 = &buf[24 * v61];
    v168 = v59;
    if (s_logUsingOsLog == 1)
    {
      v63 = gt_tagged_log(6);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = "Unknown";
        if ((v61 - 1) <= 0x6D)
        {
          v64 = (&off_2F2C30)[v61 - 1];
        }

        v66 = *(v62 + 1);
        v65 = *(v62 + 2);
        v67 = *v62;
        *v182 = 67110658;
        v183 = v61;
        v184 = 2048;
        v185 = v66;
        v186 = 2048;
        v187 = v65;
        v188 = 2048;
        *v189 = v66 * 100.0 / v60;
        *&v189[8] = 2048;
        *&v189[10] = *&v65 * 100.0 / v60;
        v190 = 2048;
        v191 = v67;
        v192 = 2080;
        v193 = v64;
        _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "%d:\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\t%s", v182, 0x44u);
      }
    }

    else
    {
      v68 = "Unknown";
      if ((v61 - 1) <= 0x6D)
      {
        v68 = (&off_2F2C30)[v61 - 1];
      }

      fprintf(__stdoutp, "%d:\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\t%s\n", v61, *(v62 + 1), *(v62 + 2), *(v62 + 1) * 100.0 / v60, *(v62 + 2) * 100.0 / v60, *v62, v68);
    }

    apr_hash_clear(v58);
    v69 = *(&v199 + v61);
    v70 = *(v69 + 12);
    if (v70 >= 1)
    {
      for (k = 0; k < v70; ++k)
      {
        v72 = *(*(v69 + 24) + 8 * k);
        if (v72)
        {
          v73 = *v58;
          do
          {
            v74 = atomic_load((v72 + 4));
            if (v74 >= 0x80)
            {
              v75 = ((v74 >> 6) - 1);
              v76 = (v72 + 72);
              do
              {
                v77 = *find_entry(v58, v76, 4uLL, 0);
                if (!v77 || (v78 = *(v77 + 32)) == 0)
                {
                  v79 = apr_palloc(v73, 0x10uLL);
                  v78 = v79;
                  if (v79)
                  {
                    *v79 = 0;
                    v79[1] = 0;
                  }

                  *(v79 + 2) = *v76;
                  apr_hash_set(v58, v79 + 1, 4, v79);
                }

                *v78 += 64;
                ++*(v78 + 3);
                v76 += 64;
                --v75;
              }

              while (v75);
            }

            v72 = *(v72 + 40);
          }

          while (v72);
          v70 = *(v69 + 12);
        }
      }
    }

    v57->nelts = 0;
    *(v58 + 3) = 0;
    *(v58 + 4) = 0;
    *(v58 + 2) = v58;
    *(v58 + 10) = 0;
    for (m = (v58 + 16); ; m = v81)
    {
      v81 = apr_hash_next(m);
      if (!v81)
      {
        break;
      }

      *apr_array_push(v57) = **(*(v81 + 1) + 32);
    }

    qsort(v57->elts, v57->nelts, v57->elt_size, CompareKeyValuePair);
    if (v57->nelts >= 1)
    {
      v82 = 0;
      v83 = 0;
      do
      {
        v84 = &v57->elts[v82];
        v85 = *v84;
        v86 = *(v84 + 2);
        v87 = *(v84 + 3);
        if (s_logUsingOsLog == 1)
        {
          v88 = gt_tagged_log(6);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            FuncEnumAsString = GetFuncEnumAsString(v86);
            *v182 = 67110146;
            v183 = v86;
            v184 = 2048;
            v185 = v85;
            v186 = 2048;
            v187 = v85 * 100.0 / v60;
            v188 = 1024;
            *v189 = v87;
            *&v189[4] = 2080;
            *&v189[6] = FuncEnumAsString;
            _os_log_impl(&dword_0, v88, OS_LOG_TYPE_INFO, "*\t0x%x:\t%'zub\t|\t%.1f%%\t|\t(%'u)\t|\t%s", v182, 0x2Cu);
          }
        }

        else
        {
          v90 = __stdoutp;
          v91 = GetFuncEnumAsString(v86);
          fprintf(v90, "*\t0x%x:\t%'zub\t|\t%.1f%%\t|\t(%'u)\t|\t%s\n", v86, v85, v85 * 100.0 / v60, v87, v91);
        }

        ++v83;
        nelts = v57->nelts;
        if (nelts >= 5)
        {
          nelts = 5;
        }

        v82 += 16;
      }

      while (v83 < nelts);
    }

    v59 = v168 + 1;
  }

  while (v168 != 4);
  v93 = v179;
  v94 = newpool;
  if (s_logUsingOsLog == 1)
  {
    v95 = gt_tagged_log(6);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_INFO, "[MEMORY BY FENUM]", buf, 2u);
    }
  }

  else
  {
    fwrite("[MEMORY BY FENUM]\n", 0x12uLL, 1uLL, __stdoutp);
  }

  v96 = 0;
  v97 = v172;
  v98 = *(v172 + 12);
  v230 = 0u;
  v99 = v98;
  v229 = 0u;
  v228 = 0u;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v220 = 0u;
  v219 = 0u;
  v218 = 0u;
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  v208 = 0u;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  do
  {
    *(&v199 + v96) = apr_array_make(v94, v99 / 0x6F, 8);
    v96 += 8;
  }

  while (v96 != 888);
  bzero(buf, 0xA68uLL);
  *(v97 + 3) = 0;
  *(v97 + 4) = 0;
  *(v97 + 2) = v97;
  *(v97 + 10) = 0;
  v100 = apr_hash_next((v97 + 16));
  if (v100)
  {
    v101 = v100;
    v102 = v199;
    v103 = v171;
    while (1)
    {
      v104 = *(*(v101 + 1) + 32);
      v105 = *find_entry(v103, (v104 + 16), 8uLL, 0);
      v106 = v102;
      if (!v105)
      {
        goto LABEL_103;
      }

      v107 = *(v105 + 32);
      v106 = v102;
      if (!v107)
      {
        goto LABEL_103;
      }

      v108 = atomic_load((v107 + 4));
      if ((v108 & 0xFFFFFFC0) != 0x40)
      {
        break;
      }

LABEL_104:
      v101 = apr_hash_next(v101);
      if (!v101)
      {
        goto LABEL_105;
      }
    }

    v106 = *(&v199 + GTFenum_getConstructorType(*(v107 + 72)));
LABEL_103:
    *apr_array_push(v106) = v104;
    goto LABEL_104;
  }

LABEL_105:
  for (n = 0; n != 111; ++n)
  {
    v110 = *(&v199 + n);
    v111 = *(v110 + 12);
    if (v111 >= 1)
    {
      v112 = 0;
      v113 = &buf[24 * n];
      do
      {
        v114 = *(*(v110 + 24) + 8 * v112);
        if (v114)
        {
          do
          {
            v115 = atomic_load(v114 + 1);
            v116 = *(v113 + 2);
            *(v113 + 1) += v115;
            *(v113 + 2) = v116 + *v114;
            v114 = *(v114 + 5);
          }

          while (v114);
          v111 = *(v110 + 12);
        }

        ++*v113;
        ++v112;
      }

      while (v112 < v111);
    }

    v117 = &__base[n];
    *(v117 + 2) = n;
    *v117 = *&v195[24 * n + 12];
  }

  qsort(__base, 0x6FuLL, 0x10uLL, CompareKeyValuePair);
  v118 = apr_array_make(v94, 32, 16);
  v119 = apr_hash_make(v94);
  v120 = apr_hash_make(v94);
  v121 = 0;
  v122 = v93;
  do
  {
    v123 = DWORD2(__base[v121]);
    v124 = &buf[24 * v123];
    v169 = v121;
    if (s_logUsingOsLog == 1)
    {
      v125 = gt_tagged_log(6);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
      {
        v126 = "Unknown";
        if ((v123 - 1) <= 0x6D)
        {
          v126 = (&off_2F2C30)[v123 - 1];
        }

        v128 = *(v124 + 1);
        v127 = *(v124 + 2);
        v129 = *v124;
        *v182 = 67110658;
        v183 = v123;
        v184 = 2048;
        v185 = v128;
        v186 = 2048;
        v187 = v127;
        v188 = 2048;
        *v189 = v128 * 100.0 / v122;
        *&v189[8] = 2048;
        *&v189[10] = *&v127 * 100.0 / v122;
        v190 = 2048;
        v191 = v129;
        v192 = 2080;
        v193 = v126;
        _os_log_impl(&dword_0, v125, OS_LOG_TYPE_INFO, "%d:\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\t%s", v182, 0x44u);
      }
    }

    else
    {
      v130 = "Unknown";
      if ((v123 - 1) <= 0x6D)
      {
        v130 = (&off_2F2C30)[v123 - 1];
      }

      fprintf(__stdoutp, "%d:\t%'zub / %'zub\t|\t%.1f%% / %.1f%%\t|\t(%'zu)\t|\t%s\n", v123, *(v124 + 1), *(v124 + 2), *(v124 + 1) * 100.0 / v122, *(v124 + 2) * 100.0 / v122, *v124, v130);
    }

    apr_hash_clear(v119);
    apr_hash_clear(v120);
    v131 = *(&v199 + v123);
    v132 = *(v131 + 12);
    if (v132 >= 1)
    {
      for (ii = 0; ii < v132; ++ii)
      {
        v134 = *(*(v131 + 24) + 8 * ii);
        if (v134)
        {
          do
          {
            v135 = atomic_load((v134 + 4));
            v136 = v135 - 64;
            if ((v135 - 64) >= 1)
            {
              v137 = (v134 + 64);
              do
              {
                apr_hash_set(v120, v137, 9, v137);
                v138 = (v137[3] + 23) & 0xFFFFFFF8;
                v137 = (v137 + v138);
                v139 = __OFSUB__(v136, v138);
                v136 -= v138;
              }

              while (!((v136 < 0) ^ v139 | (v136 == 0)));
            }

            v134 = *(v134 + 40);
          }

          while (v134);
          v132 = *(v131 + 12);
        }
      }
    }

    v140 = ht;
    v141 = *v119;
    *(v120 + 3) = 0;
    *(v120 + 4) = 0;
    *(v120 + 2) = v120;
    *(v120 + 10) = 0;
    v142 = apr_hash_next((v120 + 16));
    if (v142)
    {
      v143 = v142;
      do
      {
        v144 = *(*(v143 + 1) + 32);
        v145 = *find_entry(v140, v144, 8uLL, 0);
        if (v145)
        {
          v146 = *(v145 + 32);
          if (v146)
          {
            v147 = *find_entry(v119, (v146 + 8), 4uLL, 0);
            if (!v147 || (v148 = *(v147 + 32)) == 0)
            {
              v149 = apr_palloc(v141, 0x10uLL);
              v148 = v149;
              if (v149)
              {
                *v149 = 0;
                v149[1] = 0;
              }

              *(v149 + 2) = *(v146 + 8);
              apr_hash_set(v119, v149 + 1, 4, v149);
            }

            *v148 += *(v144 + 12);
            ++*(v148 + 3);
          }
        }

        v143 = apr_hash_next(v143);
      }

      while (v143);
    }

    v118->nelts = 0;
    *(v119 + 3) = 0;
    *(v119 + 4) = 0;
    *(v119 + 2) = v119;
    *(v119 + 10) = 0;
    for (jj = (v119 + 16); ; jj = v151)
    {
      v151 = apr_hash_next(jj);
      if (!v151)
      {
        break;
      }

      *apr_array_push(v118) = **(*(v151 + 1) + 32);
    }

    qsort(v118->elts, v118->nelts, v118->elt_size, CompareKeyValuePair);
    if (v118->nelts >= 1)
    {
      v152 = 0;
      v153 = 0;
      do
      {
        v154 = &v118->elts[v152];
        v155 = *v154;
        v156 = *(v154 + 2);
        v157 = *(v154 + 3);
        if (s_logUsingOsLog == 1)
        {
          v158 = gt_tagged_log(6);
          if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
          {
            v159 = GetFuncEnumAsString(v156);
            *v182 = 67110146;
            v183 = v156;
            v184 = 2048;
            v185 = v155;
            v186 = 2048;
            v187 = v155 * 100.0 / v122;
            v188 = 1024;
            *v189 = v157;
            *&v189[4] = 2080;
            *&v189[6] = v159;
            _os_log_impl(&dword_0, v158, OS_LOG_TYPE_INFO, "*\t0x%x:\t%'zub\t|\t%.1f%%\t|\t(%'u)\t|\t%s", v182, 0x2Cu);
          }
        }

        else
        {
          v160 = __stdoutp;
          v161 = GetFuncEnumAsString(v156);
          fprintf(v160, "*\t0x%x:\t%'zub\t|\t%.1f%%\t|\t(%'u)\t|\t%s\n", v156, v155, v155 * 100.0 / v122, v157, v161);
        }

        ++v153;
        v162 = v118->nelts;
        if (v162 >= 5)
        {
          v162 = 5;
        }

        v152 += 16;
      }

      while (v153 < v162);
    }

    v121 = v169 + 1;
  }

  while (v169 != 4);
  pthread_mutex_unlock((v167 + 66));
  apr_pool_destroy(newpool);
  return v166;
}

uint64_t CompareKeyValuePair(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void RetainObjectForDescriptorDownloader(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 traceStream];
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithUnsignedLongLong:v6];
  [v3 setObject:v4 forKeyedSubscript:v7];
}

uint64_t GTMTLCreateIndirectCommandEncoder(uint64_t result, uint64_t a2)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(result + 16) = v2;
  *(result + 208) = -1;
  *(result + 176) = v2;
  *(result + 192) = v2;
  *(result + 144) = v2;
  *(result + 160) = v2;
  *(result + 112) = v2;
  *(result + 128) = v2;
  *(result + 80) = v2;
  *(result + 96) = v2;
  *(result + 48) = v2;
  *(result + 64) = v2;
  *(result + 32) = v2;
  *result = a2;
  *(result + 8) = 0;
  if (*(a2 + 26))
  {
    v3 = 8;
  }

  else
  {
    *(result + 16) = 8;
    v3 = 16;
  }

  if (!*(a2 + 19))
  {
    v4 = *(a2 + 38);
    *(result + 24) = v3;
    *(result + 32) = v3 + 8 * v4;
    v5 = v4 + *(a2 + 31);
    v6 = v3 + 8 * v5;
    v7 = v5 + *(a2 + 35);
    *(result + 40) = v6;
    *(result + 48) = v3 + 8 * v7;
    v8 = v7 + *(a2 + 34);
    *(result + 56) = v3 + 8 * v8;
    v3 += 8 * (v8 + *(a2 + 32));
  }

  v9 = *(a2 + 36);
  *(result + 64) = v3;
  *(result + 72) = v3 + 8 * v9;
  v10 = v9 + *(a2 + 33);
  v11 = v3 + 8 * v10;
  v12 = *(a2 + 16);
  *(result + 80) = v11;
  if (*(a2 + 40))
  {
    if ((v12 & 0xF) != 0)
    {
      v13 = *(a2 + 38);
    }

    else
    {
      if ((v12 & 0x60) == 0)
      {
        goto LABEL_12;
      }

      v13 = *(a2 + 32);
    }

    v11 = v3 + 8 * (v10 + v13);
  }

LABEL_12:
  if (*(a2 + 42))
  {
    *(result + 88) = v11;
    v11 += 8;
  }

  if (!*(a2 + 23))
  {
    *(result + 96) = v11;
    v11 += 8;
  }

  if (!*(a2 + 22))
  {
    *(result + 104) = v11;
    v11 += 8;
  }

  if (!*(a2 + 20))
  {
    *(result + 112) = v11;
    v11 += 8;
  }

  if (!*(a2 + 25))
  {
    *(result + 120) = v11;
    v11 += 8;
  }

  if (!*(a2 + 29))
  {
    *(result + 128) = v11;
    v11 += 8;
  }

  if (!*(a2 + 21))
  {
    *(result + 136) = v11;
    v11 += 16;
  }

  if (!*(a2 + 28))
  {
    *(result + 144) = v11;
    v11 += 8;
  }

  if (!*(a2 + 24))
  {
    *(result + 152) = v11;
    v11 += 8;
  }

  if (!*(a2 + 27))
  {
    *(result + 160) = v11;
    *(result + 168) = v11 + 8;
    v11 += 8 + 32 * *(a2 + 37);
  }

  if (!*(a2 + 30))
  {
    *(result + 176) = v11;
    *(result + 184) = v11 + 8;
    v11 += 8 + 48 * *(a2 + 39);
  }

  if (!*(a2 + 18))
  {
    *(result + 192) = v11;
    v11 += 16;
  }

  v14 = (v12 << 63 >> 63) & 0x28;
  if ((v12 & 2) != 0)
  {
    v14 = 56;
  }

  v15 = 72;
  if ((v12 & 4) != 0)
  {
    v14 = 72;
  }

  if ((v12 & 8) != 0)
  {
    v14 = 80;
  }

  if ((v12 & 0x60) != 0)
  {
    v14 = 120;
  }

  if (v14 <= 0x48)
  {
    v16 = 72;
  }

  else
  {
    v16 = v14;
  }

  if ((v12 & 0x80) != 0)
  {
    v14 = v16;
  }

  if (v14 > 0x48)
  {
    v15 = v14;
  }

  if ((v12 & 0x100) != 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  *(result + 200) = v11;
  *(result + 208) = v11 + v17;
  return result;
}

double GetExecuteCommandsInBufferArgs@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  if (v6 > -15963)
  {
    if (v6 == -15961)
    {
LABEL_8:
      v10 = GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2);
      v11 = GTTraceFunc_argumentBlobWithMap(a1, v10[41], a2);
      *a3 = *(v10 + 1);
      *(a3 + 8) = *(v11 + 16);
      v9 = v10[40];
      v8 = *(v10 + 4);
      goto LABEL_9;
    }

    if (v6 != -15962)
    {
LABEL_13:
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  else if (v6 != -15964)
  {
    if (v6 != -15963)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v7 = GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2);
  *a3 = *(v7 + 8);
  v8 = *(v7 + 4);
  *(a3 + 16) = *(v7 + 3);
  v9 = v7[40];
LABEL_9:
  v12 = GTTraceMemoryMap_argumentBlobAtIndex(v9, a2, v8);
  if (v12)
  {
    v14 = v12 + 16;
    v15 = *(v12 + 12);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  return result;
}

uint64_t GTMTLIndirectCommandEncoder_setDepthBias(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + *(result + 136));
  *v4 = a3;
  v4[1] = a4;
  return result;
}

uint64_t GTMTLIndirectCommandEncoder_setDepthTestBounds(uint64_t result, uint64_t a2, float a3, float a4)
{
  v4 = (a2 + *(result + 152));
  *v4 = a3;
  v4[1] = a4;
  return result;
}

uint64_t GTMTLIndirectCommandEncoder_setBlendColor(uint64_t result, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v6 = (a2 + *(result + 192));
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v6[3] = a6;
  return result;
}

uint64_t GTMTLIndirectCommandEncoder_getDepthBias(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(a1 + 136));
  result = *v2;
  v4 = v2[1];
  return result;
}

float GTMTLIndirectCommandEncoder_getDepthTestBounds(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(a1 + 152);
  result = *v2;
  v4 = *(v2 + 4);
  return result;
}

float GTMTLIndirectCommandEncoder_getBlendColor(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(a1 + 192);
  result = *v2;
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  v6 = *(v2 + 12);
  return result;
}

uint64_t DYMTLDrawRenderCommandEncoder(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  v11 = *(a3 + *(a2 + 8));
  v12 = 1;
  if (v11 <= 3)
  {
    switch(v11)
    {
      case 0:
        v12 = 0;
        break;
      case 1:
        [v9 drawPrimitives:*(a3 + *(a2 + 200)) vertexStart:*(a3 + *(a2 + 200) + 8) vertexCount:*(a3 + *(a2 + 200) + 16) instanceCount:*(a3 + *(a2 + 200) + 24) baseInstance:*(a3 + *(a2 + 200) + 32)];
        break;
      case 2:
        v18 = (a3 + *(a2 + 200));
        v19 = v18[3];
        v20 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v19);
        if (v20)
        {
          v21 = v19 - *v20;
          v22 = v20[2];
        }

        else
        {
          v22 = 0;
          v21 = 0;
        }

        v36 = GetObjectForKey(v10, v22);
        v12 = v36 != 0;
        if (v36)
        {
          v46 = v18[5];
          [v9 drawIndexedPrimitives:*v18 indexCount:v18[1] indexType:v18[2] indexBuffer:v36 indexBufferOffset:v21 instanceCount:v18[4] baseVertex:v46 baseInstance:v18[6]];
        }

        goto LABEL_36;
    }
  }

  else
  {
    if (v11 <= 127)
    {
      if (v11 != 4)
      {
        if (v11 == 8)
        {
          v13 = (a3 + *(a2 + 200));
          v14 = v13[6];
          v15 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v14);
          if (v15)
          {
            v16 = v14 - *v15;
            v17 = v15[2];
          }

          else
          {
            v17 = 0;
            v16 = 0;
          }

          v39 = GetObjectForKey(v10, v17);
          v40 = (v39 == 0) ^ (v17 != 0);
          v41 = v13[7];
          v42 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v41);
          if (v42)
          {
            v43 = v41 - *v42;
            v44 = v42[2];
          }

          else
          {
            v44 = 0;
            v43 = 0;
          }

          v45 = GetObjectForKey(v10, v44);
          if (v45)
          {
            v12 = v40;
          }

          else
          {
            v12 = 0;
          }

          if (v12 == 1)
          {
            [v9 drawIndexedPatches:v13[3] patchStart:v13[4] patchCount:v13[5] patchIndexBuffer:v39 patchIndexBufferOffset:v16 controlPointIndexBuffer:v45 controlPointIndexBufferOffset:v43 instanceCount:v13[8] baseInstance:v13[9]];
          }
        }

        goto LABEL_37;
      }

      v27 = (a3 + *(a2 + 200));
      v28 = v27[6];
      v29 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v28);
      if (v29)
      {
        v30 = v28 - *v29;
        v31 = v29[2];
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      v36 = GetObjectForKey(v10, v31);
      v37 = v36 == 0;
      v38 = v31 != 0;
      v12 = v37 ^ v38;
      if (v37 != v38)
      {
        [v9 drawPatches:v27[3] patchStart:v27[4] patchCount:v27[5] patchIndexBuffer:v36 patchIndexBufferOffset:v30 instanceCount:v27[7] baseInstance:v27[8]];
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v11 == 128)
    {
      v32 = (a3 + *(a2 + 200));
      v33 = *(v32 + 2);
      v52 = *v32;
      v53 = v33;
      v34 = *(v32 + 5);
      v50 = *(v32 + 24);
      v51 = v34;
      v35 = *(v32 + 8);
      v48 = v32[3];
      v49 = v35;
      [v9 drawMeshThreadgroups:&v52 threadsPerObjectThreadgroup:&v50 threadsPerMeshThreadgroup:&v48];
    }

    else if (v11 == 256)
    {
      v23 = (a3 + *(a2 + 200));
      v24 = *(v23 + 2);
      v52 = *v23;
      v53 = v24;
      v25 = *(v23 + 5);
      v50 = *(v23 + 24);
      v51 = v25;
      v26 = *(v23 + 8);
      v48 = v23[3];
      v49 = v26;
      [v9 drawMeshThreads:&v52 threadsPerObjectThreadgroup:&v50 threadsPerMeshThreadgroup:&v48];
    }
  }

LABEL_37:

  return v12;
}

id GetObjectForKey(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithUnsignedLongLong:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

uint64_t DYMTLDispatchComputeCommandEncoder(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a3 + *(a2 + 8));
  if (v7 == 64)
  {
    v11 = a3 + *(a2 + 200);
    v12 = *(v11 + 88);
    v18 = *(v11 + 72);
    v19 = v12;
    v13 = *(v11 + 112);
    v16 = *(v11 + 96);
    v17 = v13;
    [v5 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
  }

  else
  {
    if (v7 != 32)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v8 = a3 + *(a2 + 200);
    v9 = *(v8 + 88);
    v18 = *(v8 + 72);
    v19 = v9;
    v10 = *(v8 + 112);
    v16 = *(v8 + 96);
    v17 = v10;
    [v5 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  }

  v14 = 1;
LABEL_7:

  return v14;
}

id GTMTLDecodeIndirectCommandBuffer(void *a1, void *a2)
{
  memset(v11, 0, sizeof(v11));
  bzero(v9, 0x258uLL);
  v10 = v11;
  v4 = a2;
  v5 = a1;
  v6 = [v5 device];
  TranslateGTMTLIndirectCommandBufferDescriptorWithDevice(v4, v6, v9, 1);

  v7 = GTMTLDecodeIndirectCommandBufferInternal(v5, v11);

  return v7;
}

id GTMTLDecodeIndirectCommandBufferInternal(void *a1, uint64_t a2)
{
  v3 = a1;
  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v179 = 0u;
  GTMTLCreateIndirectCommandEncoder(&v179, a2);
  v4 = *(a2 + 16);
  if ((v4 & 0xFE70) != 0)
  {
    if ((v4 & 0xFFFFFF9F) != 0)
    {
      v5 = 0;
      goto LABEL_231;
    }

    v175 = v3;
    v120 = [v175 size];
    v121 = v192;
    v167 = [NSMutableData dataWithLength:v192 * v120];
    v122 = [v167 mutableBytes];
    if (!v120)
    {
      goto LABEL_230;
    }

    v123 = v122;
    v152 = v3;
    v178 = 0;
    v124 = 0;
    v162 = *(&v191 + 1);
    v164 = 0;
    v166 = (*(&v191 + 1) - v184) >> 3;
    v125 = v179;
    v169 = v121;
    v171 = *(&v179 + 1);
    v126 = &v122[v184];
    v158 = *(&v182 + 1);
    v160 = v180;
    v127 = &v122[*(&v182 + 1)];
    v128 = &v122[*(&v183 + 1)];
    v173 = v122;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v129 = [v175 indirectComputeCommandAtIndex:v124];
      v130 = &v123[v121 * v124];
      v131 = [v129 getCommandType];
      *&v130[v171] = v131;
      if (v131)
      {
        break;
      }

      v123 = v173;
LABEL_226:

      objc_autoreleasePoolPop(context);
      v124 = v124 + 1;
      v126 += v121;
      v127 += v121;
      v128 += v121;
      if (v124 == v120)
      {
        goto LABEL_229;
      }
    }

    v132 = v131;
    if (v166 >= 1)
    {
      v133 = 0;
      do
      {
        *&v126[8 * v133] = [v129 getKernelAttributeStrideAtIndex:v133];
        ++v133;
      }

      while ((v166 & 0x7FFFFFFF) != v133);
    }

    if (v132 == &stru_20)
    {
      v136 = [v129 dispatchThreadgroupsArguments];
      v135 = v136;
      v198 = 0uLL;
      v199 = 0;
      if (v136)
      {
        [v136 threadgroupsPerGrid];
        goto LABEL_203;
      }
    }

    else
    {
      if (v132 != &stru_20.vmsize)
      {
        goto LABEL_209;
      }

      v134 = [v129 dispatchThreadsArguments];
      v135 = v134;
      v198 = 0uLL;
      v199 = 0;
      if (v134)
      {
        [v134 threadsPerGrid];
LABEL_203:
        v196 = 0uLL;
        v197 = 0;
        [v135 threadsPerThreadgroup];
        v137 = v198;
        v138 = v199;
        v139 = v196;
        v140 = v197;
LABEL_205:
        v141 = &v130[v162];
        *(v141 + 72) = v137;
        *(v141 + 11) = v138;
        *(v141 + 6) = v139;
        *(v141 + 14) = v140;
        v142 = 0uLL;
        v194 = 0u;
        v195 = 0u;
        *buf = 0u;
        if (v129)
        {
          [v129 getStageInRegion];
          v142 = *buf;
          v143 = v194;
          v144 = v195;
        }

        else
        {
          v143 = 0uLL;
          v144 = 0uLL;
        }

        *v141 = v142;
        *(v141 + 1) = v143;
        *(v141 + 2) = v144;
        v141[64] = [v129 hasBarrier];

LABEL_209:
        if (!v125[26])
        {
          v145 = [v129 getPipelineStateUniqueIdentifier];
          v146 = v164;
          if (v145 != -1)
          {
            v146 = v145;
          }

          v164 = v146;
          *&v130[v160] = v146;
        }

        v121 = v169;
        if (!v125[19])
        {
          v147 = &v130[v158];
          if (v125[32])
          {
            v148 = 0;
            v123 = v173;
            do
            {
              v149 = [v129 getKernelBufferAtIndex:v148];
              if (v149 == -1)
              {
                if (v178)
                {
                  v149 = *&v178[8 * v148];
                }

                else
                {
                  v149 = 0;
                }
              }

              *&v127[8 * v148++] = v149;
            }

            while (v148 < v125[32]);
            v178 = v147;
            v121 = v169;
            goto LABEL_223;
          }

          v178 = &v130[v158];
          v121 = v169;
        }

        v123 = v173;
LABEL_223:
        if (v125[33])
        {
          v150 = 0;
          do
          {
            *&v128[8 * v150] = [v129 getThreadgroupMemoryLengthAtIndex:v150];
            ++v150;
          }

          while (v150 < v125[33]);
        }

        goto LABEL_226;
      }
    }

    v140 = 0;
    v138 = 0;
    v197 = 0;
    v137 = 0uLL;
    v196 = 0u;
    v139 = 0uLL;
    goto LABEL_205;
  }

  v165 = v3;
  v6 = [v165 size];
  v7 = v192;
  v167 = [NSMutableData dataWithLength:v192 * v6];
  v163 = v6;
  if (!v6)
  {
    goto LABEL_230;
  }

  v152 = v3;
  v153 = 0;
  v8 = 0;
  v156 = 0;
  v157 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v177 = 0;
  v12 = 16;
  v159 = v7;
  v161 = *(&v179 + 1);
  do
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [v165 indirectRenderCommandAtIndex:v11];
    v174 = [v167 mutableBytes];
    v15 = &v174[v7 * v11];
    v16 = [v14 getCommandType];
    *&v15[v161] = v16;
    if (!v16)
    {
      goto LABEL_188;
    }

    v17 = v16;
    v170 = v12;
    v172 = v13;
    v168 = v10;
    v18 = *(&v191 + 1);
    if (((*(&v191 + 1) - v184) >> 3) >= 1)
    {
      v19 = 0;
      v20 = ((*(&v191 + 1) - v184) >> 3) & 0x7FFFFFFFLL;
      v21 = &v174[v184 + v8];
      do
      {
        *&v21[8 * v19] = [v14 getVertexAttributeStrideAtIndex:v19];
        ++v19;
      }

      while (v20 != v19);
    }

    if (v17 > 7)
    {
      switch(v17)
      {
        case 8:
          v33 = [v14 getTessellationFactorArguments];
          v34 = &v15[v18];
          *v34 = [v33 virtualAddress];
          *(v34 + 1) = [v33 instanceStride];
          [v33 scale];
          *(v34 + 4) = v35;

          v25 = [v14 drawIndexedPatchesArguments];
          *(v34 + 3) = [v25 numberOfPatchControlPoints];
          *(v34 + 4) = [v25 patchStart];
          *(v34 + 5) = [v25 patchCount];
          *(v34 + 6) = [v25 patchIndexBufferVirtualAddress];
          *(v34 + 7) = [v25 controlPointIndexBufferVirtualAddress];
          *(v34 + 8) = [v25 instanceCount];
          *(v34 + 9) = [v25 baseInstance];
          goto LABEL_22;
        case 128:
          v26 = &v15[v18];
          v37 = [v14 drawMeshThreadgroupsArguments];
          v25 = v37;
          if (v37)
          {
            [v37 threadgroupsPerGrid];
            v38 = v194;
            *v26 = *buf;
            *(v26 + 2) = v38;
            [v25 threadsPerObjectThreadgroup];
            v39 = v194;
            *(v26 + 24) = *buf;
            *(v26 + 5) = v39;
            [v25 threadsPerMeshThreadgroup];
            v30 = *buf;
            v31 = v194;
            v10 = v168;
            v13 = v172;
            goto LABEL_39;
          }

          if (s_logUsingOsLog != 1)
          {
            v43 = __stderrp;
            v40 = [NSString stringWithFormat:@"fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreadgroups"];
            fprintf(v43, "%s\n", [v40 UTF8String]);
            v10 = v168;
            v13 = v172;
            break;
          }

          v40 = gt_tagged_log(3);
          v10 = v168;
          v13 = v172;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v41 = v40;
            v42 = "fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreadgroups";
            goto LABEL_35;
          }

          break;
        case 256:
          v26 = &v15[v18];
          v27 = [v14 drawMeshThreadsArguments];
          v25 = v27;
          v10 = v168;
          v13 = v172;
          if (v27)
          {
            [v27 threadsPerGrid];
            v28 = v194;
            *v26 = *buf;
            *(v26 + 2) = v28;
            [v25 threadsPerObjectThreadgroup];
            v29 = v194;
            *(v26 + 24) = *buf;
            *(v26 + 5) = v29;
            [v25 threadsPerMeshThreadgroup];
            v30 = *buf;
            v31 = v194;
LABEL_39:
            *(v26 + 3) = v30;
            *(v26 + 8) = v31;
            goto LABEL_40;
          }

          if (s_logUsingOsLog != 1)
          {
            v154 = __stderrp;
            v40 = [NSString stringWithFormat:@"fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreads"];
            fprintf(v154, "%s\n", [v40 UTF8String]);
            break;
          }

          v40 = gt_tagged_log(3);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v41 = v40;
            v42 = "fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreads";
LABEL_35:
            _os_log_fault_impl(&dword_0, v41, OS_LOG_TYPE_FAULT, v42, buf, 2u);
          }

          break;
        default:
          v10 = v168;
          v13 = v172;
          goto LABEL_41;
      }

      v31 = 0;
      *(v26 + 1) = 0u;
      *(v26 + 2) = 0u;
      v30 = 0uLL;
      *v26 = 0u;
      goto LABEL_39;
    }

    if (v17 == 1)
    {
      v25 = [v14 drawArguments];
      v32 = &v15[v18];
      *v32 = [v25 primitiveType];
      *(v32 + 1) = [v25 vertexStart];
      *(v32 + 2) = [v25 vertexCount];
      *(v32 + 3) = [v25 instanceCount];
      *(v32 + 4) = [v25 baseInstance];
LABEL_22:
      v10 = v168;
      v13 = v172;
      goto LABEL_40;
    }

    v10 = v168;
    v13 = v172;
    if (v17 == 2)
    {
      v25 = [v14 drawIndexedArguments];
      v36 = &v15[v18];
      *v36 = [v25 primitiveType];
      *(v36 + 1) = [v25 indexCount];
      *(v36 + 2) = [v25 indexType];
      *(v36 + 3) = [v25 indexBufferGPUVirtualAddress];
      *(v36 + 4) = [v25 instanceCount];
      *(v36 + 5) = [v25 baseVertex];
      *(v36 + 6) = [v25 baseInstance];
      if (*&v15[v18 + 16] == -1)
      {
        *(v36 + 2) = *(v153 + 2);
      }

      v153 = &v15[v18];
      goto LABEL_40;
    }

    if (v17 == 4)
    {
      v22 = [v14 getTessellationFactorArguments];
      v23 = &v15[v18];
      *v23 = [v22 virtualAddress];
      *(v23 + 1) = [v22 instanceStride];
      [v22 scale];
      *(v23 + 4) = v24;

      v25 = [v14 drawPatchesArguments];
      *(v23 + 3) = [v25 numberOfPatchControlPoints];
      *(v23 + 4) = [v25 patchStart];
      *(v23 + 5) = [v25 patchCount];
      *(v23 + 6) = [v25 patchIndexBufferVirtualAddress];
      *(v23 + 7) = [v25 instanceCount];
      *(v23 + 8) = [v25 baseInstance];
LABEL_40:
    }

LABEL_41:
    v44 = v179;
    if (!*(v179 + 26))
    {
      v45 = [v14 getPipelineStateUniqueIdentifier];
      v46 = v157;
      if (v45 != -1)
      {
        v46 = v45;
      }

      v157 = v46;
      *&v15[v180] = v46;
    }

    if (!v44[19])
    {
      v47 = *(&v180 + 1);
      if (v44[38])
      {
        v48 = 0;
        v49 = &v174[*(&v180 + 1) + v8];
        do
        {
          if (objc_opt_respondsToSelector())
          {
            v50 = [v14 getVertexBufferAddressAtIndex:v48];
          }

          else
          {
            v50 = [v14 getVertexBufferAtIndex:v48];
          }

          if (v50 == -1)
          {
            v51 = 0;
          }

          else
          {
            v51 = v50;
          }

          if (v50 == -1 && v9)
          {
            v51 = *&v9[8 * v48];
          }

          *&v49[8 * v48++] = v51;
        }

        while (v48 < v44[38]);
      }

      v155 = v47;
      v52 = v181;
      if (v44[31])
      {
        v53 = 0;
        v54 = &v174[v181 + v8];
        do
        {
          if (objc_opt_respondsToSelector())
          {
            v55 = [v14 getFragmentBufferAddressAtIndex:v53];
          }

          else
          {
            v55 = [v14 getFragmentBufferAtIndex:v53];
          }

          if (v55 == -1)
          {
            v56 = 0;
          }

          else
          {
            v56 = v55;
          }

          if (v55 == -1 && v177)
          {
            v56 = *&v177[8 * v53];
          }

          *&v54[8 * v53++] = v56;
        }

        while (v53 < v44[31]);
      }

      v57 = *(&v181 + 1);
      if (v44[35])
      {
        v58 = 0;
        v59 = &v174[*(&v181 + 1) + v8];
        do
        {
          if (objc_opt_respondsToSelector())
          {
            v60 = [v14 getObjectBufferAddressAtIndex:v58];
            if (v60 == -1)
            {
              v61 = 0;
            }

            else
            {
              v61 = v60;
            }

            if (v60 == -1 && v156)
            {
              v61 = *&v156[8 * v58];
            }
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken, &__block_literal_global_472);
            }

            v61 = 0;
          }

          *&v59[8 * v58++] = v61;
        }

        while (v58 < v44[35]);
      }

      v9 = v155 + v15;
      v177 = &v15[v52];
      v156 = &v15[v57];
      v62 = &v15[v182];
      if (v44[34])
      {
        v63 = 0;
        v64 = &v174[v182 + v8];
        do
        {
          if (objc_opt_respondsToSelector())
          {
            v65 = [v14 getMeshBufferAddressAtIndex:v63];
            if (v65 == -1)
            {
              v66 = 0;
            }

            else
            {
              v66 = v65;
            }

            if (v65 == -1 && v168)
            {
              v66 = *&v168[8 * v63];
            }
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_41 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_41, &__block_literal_global_43);
            }

            v66 = 0;
          }

          *&v64[8 * v63++] = v66;
        }

        while (v63 < v44[34]);
      }

      v10 = v62;
      v13 = v172;
    }

    if (!v44[23])
    {
      if (objc_opt_respondsToSelector())
      {
        v67 = [v14 getDepthStencilStateUniqueIdentifier];
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_46 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_46, &__block_literal_global_48);
        }

        v67 = 0;
      }

      *&v15[v185] = v67;
    }

    if (!v44[22])
    {
      if (objc_opt_respondsToSelector())
      {
        v68 = [v14 getDepthClipMode];
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_51 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_51, &__block_literal_global_53);
        }

        v68 = 0;
      }

      *&v15[*(&v185 + 1)] = v68;
    }

    if (!v44[20])
    {
      if (objc_opt_respondsToSelector())
      {
        v69 = [v14 getCullMode];
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_56 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_56, &__block_literal_global_58);
        }

        v69 = 0;
      }

      *&v15[v186] = v69;
    }

    if (!v44[25])
    {
      if (objc_opt_respondsToSelector())
      {
        v70 = [v14 getFrontFacingWinding];
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_61 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_61, &__block_literal_global_63);
        }

        v70 = 0;
      }

      *&v15[*(&v186 + 1)] = v70;
    }

    if (!v44[29])
    {
      if (objc_opt_respondsToSelector())
      {
        v71 = [v14 getTriangleFillMode];
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_66 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_66, &__block_literal_global_68);
        }

        v71 = 0;
      }

      *&v15[v187] = v71;
    }

    if (!v44[21])
    {
      if (objc_opt_respondsToSelector())
      {
        v72 = [v14 getDepthBiasInfo];
        [v72 depthBias];
        v74 = v73;
        [v72 slopeScale];
        v76 = v75;
        [v72 clamp];
        v78 = v77;

        v79 = v74 | (v76 << 32);
        v80 = v78;
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_71 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_71, &__block_literal_global_73);
        }

        v80 = 0;
        v79 = 0;
      }

      v81 = &v15[*(&v187 + 1)];
      *v81 = v79;
      v81[1] = v80;
    }

    if (!v44[28])
    {
      if (objc_opt_respondsToSelector())
      {
        v82 = [v14 getStencilReferenceValues];
        v83 = [v82 frontReferenceValue];
        v84 = [v82 backReferenceValue];

        v85 = v83 | (v84 << 32);
        v13 = v172;
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_76 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_76, &__block_literal_global_78);
        }

        v85 = 0;
      }

      *&v15[v188] = v85;
    }

    if (!v44[24])
    {
      if (objc_opt_respondsToSelector())
      {
        v86 = [v14 getDepthTestBounds];
        [v86 minBounds];
        v88 = v87;
        [v86 maxBounds];
        v90 = v89;
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_81 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_81, &__block_literal_global_83);
        }

        v88 = 0;
        v90 = 0;
      }

      v91 = &v15[*(&v188 + 1)];
      *v91 = v88;
      *(v91 + 1) = v90;
    }

    if (!v44[27])
    {
      if (objc_opt_respondsToSelector())
      {
        v92 = [v14 getScissorRects];
        v93 = [v92 count];
        v94 = [v92 scissorRects];
        if (v93)
        {
          v95 = v44[37];
          v96 = v94 + 16;
          v97 = &v174[v170 + *(&v189 + 1)];
          v98 = v93;
          do
          {
            if (!v95)
            {
              break;
            }

            *v97 = *v96;
            *(v97 - 1) = *(v96 - 1);
            --v95;
            v96 += 2;
            v97 += 32;
            --v98;
          }

          while (v98);
        }
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_86 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_86, &__block_literal_global_88);
        }

        v93 = 0;
      }

      *&v15[v189] = v93;
    }

    if (!v44[30])
    {
      if (objc_opt_respondsToSelector())
      {
        v99 = [v14 getViewports];
        v100 = [v99 count];
        v101 = [v99 viewports];
        if (v100)
        {
          v102 = v44[39];
          v103 = (v101 + 32);
          v104 = &v174[v170 + *(&v190 + 1)];
          v105 = v100;
          do
          {
            if (!v102)
            {
              break;
            }

            *v104 = *(v103 - 1);
            *(v104 - 1) = *(v103 - 2);
            v106 = *v103;
            v103 += 3;
            *(v104 + 1) = v106;
            --v102;
            v104 += 48;
            --v105;
          }

          while (v105);
        }
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_91 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_91, &__block_literal_global_93);
        }

        v100 = 0;
      }

      *&v15[v190] = v100;
    }

    if (!v44[18])
    {
      if (objc_opt_respondsToSelector())
      {
        v107 = [v14 getBlendColor];
        [v107 red];
        v109 = v108;
        [v107 green];
        v111 = v110;
        [v107 blue];
        v113 = v112;
        [v107 alpha];
        v115 = v114;
      }

      else
      {
        if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_96 != -1)
        {
          dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_96, &__block_literal_global_98);
        }

        v109 = 0;
        v111 = 0;
        v113 = 0;
        v115 = 0;
      }

      v116 = &v15[v191];
      *v116 = v109;
      *(v116 + 1) = v111;
      *(v116 + 2) = v113;
      *(v116 + 3) = v115;
    }

    if (v44[36])
    {
      v117 = 0;
      v118 = &v174[v183 + v8];
      do
      {
        *&v118[8 * v117] = [v14 getObjectThreadgroupMemoryLengthAtIndex:v117];
        ++v117;
      }

      while (v117 < v44[36]);
    }

    if (v44[42])
    {
      v119 = *(&v184 + 1);
      *&v15[v119] = [v14 hasBarrier];
    }

    v7 = v159;
    v12 = v170;
LABEL_188:

    objc_autoreleasePoolPop(v13);
    v11 = v11 + 1;
    v8 += v7;
    v12 += v7;
  }

  while (v11 != v163);
LABEL_229:
  v3 = v152;
LABEL_230:
  v5 = [v167 copy];

LABEL_231:

  return v5;
}

void GTMTLEncodeIndirectCommandBufferWithRange(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = a1;
  v13 = a7;
  v171 = 0;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v158 = 0u;
  GTMTLCreateIndirectCommandEncoder(&v158, a4);
  v14 = *(a4 + 16);
  if ((v14 & 0xFE70) == 0)
  {
    v137 = v12;
    v144 = v12;
    v136 = v13;
    v150 = v13;
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, 0);
    v142 = a2 + a3;
    if (a2 >= a2 + a3)
    {
LABEL_146:
      apr_pool_destroy(newpool);
LABEL_147:
      v13 = v136;

      v12 = v137;
      goto LABEL_148;
    }

    v44 = v171;
    v45 = a5 + a2 * v171;
    v46 = v45 + 16;
    v149 = a5;
    v138 = v171;
    while (1)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = [v144 indirectRenderCommandAtIndex:a2];
      v53 = v48;
      v54 = a5 + v44 * a2;
      v55 = *(v54 + *(&v158 + 1));
      v154 = a2;
      if (v55 > 3)
      {
        break;
      }

      if (v55)
      {
        v156 = v46;
        v152 = v47;
        if (v55 == 1)
        {
          [v48 drawPrimitives:*(v54 + *(&v170 + 1)) vertexStart:*(v54 + *(&v170 + 1) + 8) vertexCount:*(v54 + *(&v170 + 1) + 16) instanceCount:*(v54 + *(&v170 + 1) + 24) baseInstance:*(v54 + *(&v170 + 1) + 32)];
        }

        else if (v55 == 2)
        {
          v61 = (v54 + *(&v170 + 1));
          v62 = *(v54 + *(&v170 + 1) + 24);
          v63 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v62);
          if (v63)
          {
            v64 = v62 - *v63;
            v65 = v63[2];
          }

          else
          {
            v65 = 0;
            v64 = 0;
          }

          v88 = GetObjectForKey(v150, v65);
          if (v88)
          {
            v89 = v61[5];
            [v53 drawIndexedPrimitives:*v61 indexCount:v61[1] indexType:v61[2] indexBuffer:v88 indexBufferOffset:v64 instanceCount:v61[4] baseVertex:v89 baseInstance:v61[6]];
          }

          else
          {
            [v53 reset];
          }
        }

        goto LABEL_88;
      }

      [v48 reset];
LABEL_145:

      objc_autoreleasePoolPop(v47);
      ++a2;
      v45 += v44;
      v46 += v44;
      if (a2 == v142)
      {
        goto LABEL_146;
      }
    }

    v156 = v46;
    v152 = v47;
    if (v55 > 127)
    {
      if (v55 == 128)
      {
        v73 = *(v54 + *(&v170 + 1) + 16);
        v175 = *(v54 + *(&v170 + 1));
        *&v176 = v73;
        v74 = *(v54 + *(&v170 + 1) + 40);
        v178 = *(v54 + *(&v170 + 1) + 24);
        v179 = v74;
        v75 = *(v54 + *(&v170 + 1) + 64);
        v172 = *(v54 + *(&v170 + 1) + 48);
        v173 = v75;
        [v48 drawMeshThreadgroups:&v175 threadsPerObjectThreadgroup:&v178 threadsPerMeshThreadgroup:&v172];
      }

      else if (v55 == 256)
      {
        v66 = *(v54 + *(&v170 + 1) + 16);
        v175 = *(v54 + *(&v170 + 1));
        *&v176 = v66;
        v67 = *(v54 + *(&v170 + 1) + 40);
        v178 = *(v54 + *(&v170 + 1) + 24);
        v179 = v67;
        v68 = *(v54 + *(&v170 + 1) + 64);
        v172 = *(v54 + *(&v170 + 1) + 48);
        v173 = v68;
        [v48 drawMeshThreads:&v175 threadsPerObjectThreadgroup:&v178 threadsPerMeshThreadgroup:&v172];
      }
    }

    else if (v55 == 4)
    {
      v69 = (v54 + *(&v170 + 1));
      v70 = *(v54 + *(&v170 + 1) + 48);
      v71 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v70);
      if (v71)
      {
        v146 = v70 - *v71;
        v72 = v71[2];
      }

      else
      {
        v72 = 0;
        v146 = 0;
      }

      v76 = GetObjectForKey(v150, v72);
      v77 = v72 != 0;
      v78 = *v69;
      v79 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *v69);
      if (v79)
      {
        v80 = v78 - *v79;
        v81 = v79[2];
      }

      else
      {
        v81 = 0;
        v80 = 0;
      }

      v90 = GetObjectForKey(v150, v81);
      v91 = v90;
      v92 = (v76 == 0) ^ v77;
      if (!v90)
      {
        v92 = 0;
      }

      if (v92 == 1)
      {
        [v53 drawPatches:v69[3] patchStart:v69[4] patchCount:v69[5] patchIndexBuffer:v76 patchIndexBufferOffset:v146 instanceCount:v69[7] baseInstance:v69[8] tessellationFactorBuffer:v90 tessellationFactorBufferOffset:v80 tessellationFactorBufferInstanceStride:v69[1]];
      }

      else
      {
        [v53 reset];
      }

      v44 = v138;

      a5 = v149;
    }

    else if (v55 == 8)
    {
      v56 = (v54 + *(&v170 + 1));
      v57 = *(v54 + *(&v170 + 1) + 48);
      v58 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v57);
      if (v58)
      {
        v59 = v57 - *v58;
        v60 = v58[2];
      }

      else
      {
        v60 = 0;
        v59 = 0;
      }

      v82 = GetObjectForKey(v150, v60);
      v147 = v45;
      v83 = v60 != 0;
      v84 = v56[7];
      v85 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v84);
      if (v85)
      {
        v86 = v84 - *v85;
        v87 = v85[2];
      }

      else
      {
        v87 = 0;
        v86 = 0;
      }

      v93 = v59;
      v94 = GetObjectForKey(v150, v87);
      if (v94)
      {
        v95 = (v82 == 0) ^ v83;
      }

      else
      {
        v95 = 0;
      }

      v96 = *v56;
      v97 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *v56);
      if (v97)
      {
        v98 = v96 - *v97;
        v99 = v97[2];
      }

      else
      {
        v99 = 0;
        v98 = 0;
      }

      v100 = GetObjectForKey(v150, v99);
      v101 = v100;
      if (v100)
      {
        v102 = v95;
      }

      else
      {
        v102 = 0;
      }

      if (v102 == 1)
      {
        [v53 drawIndexedPatches:v56[3] patchStart:v56[4] patchCount:v56[5] patchIndexBuffer:v82 patchIndexBufferOffset:v93 controlPointIndexBuffer:v94 controlPointIndexBufferOffset:v86 instanceCount:v56[8] baseInstance:v56[9] tessellationFactorBuffer:v100 tessellationFactorBufferOffset:v98 tessellationFactorBufferInstanceStride:v56[1]];
      }

      else
      {
        [v53 reset];
      }

      v45 = v147;
      v44 = v138;

      a5 = v149;
    }

LABEL_88:
    v103 = v158;
    if (!*(v158 + 26))
    {
      v104 = *(v54 + v159);
      if (v104)
      {
        v105 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a6, v104);
        v106 = GetObjectForKey(v150, v105);
        if (v106)
        {
          [v53 setRenderPipelineState:v106];
        }
      }
    }

    v107 = v54;
    if (v103[40])
    {
      v108 = v54 + v163;
    }

    else
    {
      v108 = 0;
    }

    if (!v103[19])
    {
      v140 = v107;
      v148 = v45;
      v109 = *(&v159 + 1);
      v110 = v103[38];
      v111 = v53;
      v112 = v150;
      if (v110)
      {
        v113 = 0;
        v114 = v45 + v109;
        do
        {
          v115 = *(v114 + 8 * v113);
          if (v115)
          {
            v116 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *(v114 + 8 * v113));
            if (v116)
            {
              v117 = v115 - *v116;
              v118 = v116[2];
            }

            else
            {
              v118 = 0;
              v117 = 0;
            }

            v119 = GetObjectForKey(v112, v118);
            if (v119)
            {
              if (v108)
              {
                [v111 setVertexBuffer:v119 offset:v117 attributeStride:*(v108 + 8 * v113) atIndex:v113];
              }

              else
              {
                [v111 setVertexBuffer:v119 offset:v117 atIndex:v113];
              }
            }
          }

          ++v113;
        }

        while (v110 != v113);
      }

      v107 = v140;
      GTMTLEncodeIndirectBufferBindings(v111, v140 + v160, v103[31], 2, a6, v112);
      v45 = v148;
      a5 = v149;
      v44 = v138;
      GTMTLEncodeIndirectBufferBindings(v111, v140 + *(&v160 + 1), v103[35], 8, a6, v112);
      GTMTLEncodeIndirectBufferBindings(v111, v140 + v161, v103[34], 16, a6, v112);
    }

    v120 = v107;
    if (!v103[23])
    {
      v121 = *(v107 + v164);
      if (v121)
      {
        v122 = GTMTLIndirectResources_depthStencilStateIdForUniqueIdentifier(a6, v121);
        v123 = GetObjectForKey(v150, v122);
        if (v123)
        {
          [v53 setDepthStencilState:v123];
        }
      }
    }

    if (!v103[22])
    {
      [v53 setDepthClipMode:*(v107 + *(&v164 + 1))];
    }

    if (!v103[20])
    {
      [v53 setCullMode:*(v107 + v165)];
    }

    a2 = v154;
    if (!v103[25])
    {
      [v53 setFrontFacingWinding:*(v107 + *(&v165 + 1))];
    }

    if (!v103[29])
    {
      [v53 setTriangleFillMode:*(v107 + v166)];
    }

    if (!v103[21])
    {
      LODWORD(v49) = *(v107 + *(&v166 + 1));
      LODWORD(v50) = *(v107 + *(&v166 + 1) + 4);
      LODWORD(v51) = *(v107 + *(&v166 + 1) + 8);
      [v53 setDepthBias:v49 slopeScale:v50 clamp:v51];
    }

    if (!v103[28])
    {
      [v53 setStencilFrontReferenceValue:*(v107 + v167) backReferenceValue:*(v107 + v167 + 4)];
    }

    if (!v103[24])
    {
      LODWORD(v49) = *(v107 + *(&v167 + 1));
      LODWORD(v50) = *(v107 + *(&v167 + 1) + 4);
      [v53 setDepthTestMinBound:v49 maxBound:v50];
    }

    if (!v103[27])
    {
      v124 = *(v107 + v168);
      if (v124)
      {
        v125 = apr_palloc(newpool, 32 * v124);
        v126 = (v156 + *(&v168 + 1));
        v127 = 16;
        v128 = v124;
        do
        {
          v129 = &v125[v127];
          *v129 = *v126;
          *(v129 - 1) = *(v126 - 1);
          v126 += 2;
          v127 += 32;
          --v128;
        }

        while (v128);
        [v53 setScissorRects:v125 count:v124];
      }
    }

    if (!v103[30])
    {
      v130 = *(v107 + v169);
      if (v130)
      {
        v131 = apr_palloc(newpool, 48 * v130);
        v132 = (v107 + *(&v169 + 1));
        v133 = *(v107 + *(&v169 + 1) + 32);
        v131[1] = *(v107 + *(&v169 + 1) + 16);
        *v131 = *v132;
        v131[2] = v133;
        [v53 setViewports:v131 count:v130];
      }
    }

    if (!v103[18])
    {
      LODWORD(v49) = *(v107 + v170);
      LODWORD(v50) = *(v107 + v170 + 4);
      LODWORD(v51) = *(v107 + v170 + 8);
      LODWORD(v52) = *(v107 + v170 + 12);
      [v53 setBlendColorRed:v49 green:v50 blue:v51 alpha:v52];
    }

    if (v103[36])
    {
      v134 = 0;
      v135 = v45 + v162;
      do
      {
        [v53 setObjectThreadgroupMemoryLength:*(v135 + 8 * v134) atIndex:v134];
        ++v134;
      }

      while (v134 < v103[36]);
    }

    v46 = v156;
    v47 = v152;
    if (v103[42] && *(v120 + *(&v163 + 1)))
    {
      [v53 setBarrier];
    }

    goto LABEL_145;
  }

  if ((v14 & 0xFFFFFF9F) == 0)
  {
    v137 = v12;
    v153 = v12;
    v136 = v13;
    v15 = v13;
    v151 = a2 + a3;
    if (a2 < a2 + a3)
    {
      v16 = v15;
      v17 = v171;
      v18 = v158;
      v139 = v159;
      v141 = *(&v170 + 1);
      v143 = v163;
      v145 = v171;
      v19 = a5 + *(&v161 + 1) + a2 * v171;
      v20 = a5 + *(&v162 + 1) + a2 * v171;
      while (1)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = a5 + v17 * a2;
        v23 = *(v22 + *(&v18 + 1));
        v24 = [v153 indirectComputeCommandAtIndex:a2];
        v25 = v24;
        if (v23 == 64)
        {
          break;
        }

        if (v23 == 32)
        {
          v26 = *(v22 + v141 + 88);
          v175 = *(v22 + v141 + 72);
          *&v176 = v26;
          v27 = *(v22 + v141 + 112);
          v178 = *(v22 + v141 + 96);
          v179 = v27;
          [v24 concurrentDispatchThreadgroups:&v175 threadsPerThreadgroup:&v178];
          v28 = *(v22 + v141 + 16);
          v175 = *(v22 + v141);
          v176 = v28;
          v177 = *(v22 + v141 + 32);
          [v25 setStageInRegion:&v175];
          if (*(v22 + v141 + 64))
          {
            goto LABEL_10;
          }

          goto LABEL_11;
        }

        if (v23)
        {
          goto LABEL_11;
        }

        [v24 reset];
LABEL_31:

        objc_autoreleasePoolPop(v21);
        ++a2;
        v19 += v17;
        v20 += v17;
        if (a2 == v151)
        {
          goto LABEL_147;
        }
      }

      v41 = *(v22 + v141 + 88);
      v175 = *(v22 + v141 + 72);
      *&v176 = v41;
      v42 = *(v22 + v141 + 112);
      v178 = *(v22 + v141 + 96);
      v179 = v42;
      [v24 concurrentDispatchThreads:&v175 threadsPerThreadgroup:&v178];
      v43 = *(v22 + v141 + 16);
      v175 = *(v22 + v141);
      v176 = v43;
      v177 = *(v22 + v141 + 32);
      [v25 setStageInRegion:&v175];
      if (*(v22 + v141 + 64) == 1)
      {
LABEL_10:
        [v25 setBarrier];
      }

LABEL_11:
      v155 = v21;
      v29 = a2;
      if (!*(v18 + 26))
      {
        v30 = GTMTLIndirectResources_computePipelineIdForUniqueIdentifier(a6, *(v22 + v139));
        v31 = GetObjectForKey(v16, v30);
        [v25 setComputePipelineState:v31];
      }

      if (*(v18 + 40))
      {
        v32 = v22 + v143;
      }

      else
      {
        v32 = 0;
      }

      if (!*(v18 + 19))
      {
        v33 = *(v18 + 32);
        if (v33)
        {
          for (i = 0; i < v33; ++i)
          {
            v35 = *(v19 + 8 * i);
            if (v35)
            {
              v36 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *(v19 + 8 * i));
              if (v36)
              {
                v37 = v35 - *v36;
                v38 = v36[2];
              }

              else
              {
                v38 = 0;
                v37 = 0;
              }

              v39 = GetObjectForKey(v16, v38);
              if (v32)
              {
                [v25 setKernelBuffer:v39 offset:v37 attributeStride:*(v32 + 8 * i) atIndex:i];
              }

              else
              {
                [v25 setKernelBuffer:v39 offset:v37 atIndex:i];
              }

              v33 = *(v18 + 32);
            }
          }
        }
      }

      a2 = v29;
      v17 = v145;
      v21 = v155;
      if (*(v18 + 33))
      {
        v40 = 0;
        do
        {
          [v25 setThreadgroupMemoryLength:*(v20 + 8 * v40) atIndex:v40];
          ++v40;
        }

        while (v40 < *(v18 + 33));
      }

      goto LABEL_31;
    }

    goto LABEL_147;
  }

LABEL_148:
}

void GTMTLEncodeIndirectBufferBindings(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = a1;
  v11 = a6;
  if (a3)
  {
    v12 = 0;
    do
    {
      v13 = *(a2 + 8 * v12);
      if (v13)
      {
        v14 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a5 + 24), *(*a5 + 12), *(a2 + 8 * v12));
        if (v14)
        {
          v15 = v13 - *v14;
          v16 = v14[2];
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        v17 = GetObjectForKey(v11, v16);
        if (v17)
        {
          switch(a4)
          {
            case 16:
              [v18 setMeshBuffer:v17 offset:v15 atIndex:v12];
              break;
            case 8:
              [v18 setObjectBuffer:v17 offset:v15 atIndex:v12];
              break;
            case 2:
              [v18 setFragmentBuffer:v17 offset:v15 atIndex:v12];
              break;
          }
        }
      }

      ++v12;
    }

    while (a3 != v12);
  }
}

uint64_t GTMTLCaptureStatistics_begin(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 72);
  if (v2 > 3)
  {
    if (v2 - 5 < 2)
    {
      result += 24;
      goto LABEL_8;
    }

    if (v2 == 4)
    {
      v1 = *result;
      if (!*result)
      {
LABEL_5:
        result += 8;
LABEL_8:
        v1 = *result;
      }
    }
  }

  else
  {
    v3 = v2 >= 2;
    v4 = v2 - 2;
    if (!v3)
    {
      goto LABEL_8;
    }

    if (v4 < 2)
    {
      goto LABEL_5;
    }
  }

  g_targetRef = v1;
  atomic_store(0, &g_frameCount);
  atomic_store(0, &g_frameOther);
  atomic_store(0, &g_commitCount);
  atomic_store(0, &g_commitOther);
  atomic_store(0, &g_resourceCount);
  atomic_store(0, &g_resourceDownloaded);
  atomic_store(0, &g_GPUDataSize);
  atomic_store(0, &g_GPUDataDownloaded);
  return result;
}

uint64_t GTMTLCaptureStatistics_trackPresent(uint64_t result)
{
  if (g_targetRef == result)
  {
    v1 = &g_frameCount;
  }

  else
  {
    v1 = &g_frameOther;
  }

  atomic_fetch_add(v1, 1uLL);
  return result;
}

uint64_t GTMTLCaptureStatistics_trackCommit(uint64_t result, uint64_t a2)
{
  v2 = g_targetRef == result || g_targetRef == a2;
  v3 = &g_commitCount;
  if (!v2)
  {
    v3 = &g_commitOther;
  }

  atomic_fetch_add(v3, 1uLL);
  return result;
}

double GTMTLCaptureStatistics_stats@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = atomic_load(&g_frameCount);
  v3 = atomic_load(&g_frameOther);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = atomic_load(&g_commitCount);
  v5 = atomic_load(&g_commitOther);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = atomic_load(&g_resourceCount);
  v7 = atomic_load(&g_resourceDownloaded);
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = atomic_load(&g_GPUDataSize);
  v9 = atomic_load(&g_GPUDataDownloaded);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  return result;
}

id MTLDevice_newTextureWithDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 baseObject];
  if ((dword_31F7C8 & 0x800000) != 0 && [v3 storageMode] != &dword_0 + 3)
  {
    v6 = [v4 heapTextureSizeAndAlignWithDescriptor:v3];
    v7 = objc_alloc_init(MTLHeapDescriptor);
    [v7 setSize:v6];
    [v7 setType:1];
    [v7 setStorageMode:{objc_msgSend(v3, "storageMode")}];
    [v7 setCpuCacheMode:{objc_msgSend(v3, "cpuCacheMode")}];
    [v7 setResourceOptions:{objc_msgSend(v3, "resourceOptions")}];
    [v7 setHazardTrackingMode:{objc_msgSend(v3, "hazardTrackingMode")}];
    v8 = [v4 newHeapWithDescriptor:v7];
    v5 = [v8 newTextureWithDescriptor:v3 offset:0];
  }

  else
  {
    v5 = [v4 newTextureWithDescriptor:v3];
  }

  return v5;
}

id MTLDevice_newAccelerationStructureWithSize_withDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 baseObject];
  v7 = v6;
  if ((dword_31F7C8 & 0x800000) != 0)
  {
    v9 = [v6 heapAccelerationStructureSizeAndAlignWithSize:a2];
    v10 = objc_alloc_init(MTLHeapDescriptor);
    [v10 setSize:v9];
    [v10 setType:1];
    [v10 setStorageMode:{objc_msgSend(v5, "storageMode")}];
    v11 = [v7 newHeapWithDescriptor:v10];
    v8 = [v11 newAccelerationStructureWithSize:a2 offset:0];
  }

  else
  {
    v8 = [v6 newAccelerationStructureWithSize:a2 withDescriptor:v5];
  }

  return v8;
}

id MTLDevice_newAccelerationStructureWithSize_resourceIndex(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 baseObject];
  v6 = v5;
  if ((dword_31F7C8 & 0x800000) != 0)
  {
    v8 = [v5 heapAccelerationStructureSizeAndAlignWithSize:a2];
    v9 = objc_alloc_init(MTLHeapDescriptor);
    [v9 setSize:v8];
    [v9 setType:1];
    [v9 setStorageMode:2];
    v10 = [v6 newHeapWithDescriptor:v9];
    v7 = [v10 newAccelerationStructureWithSize:a2 offset:0 resourceIndex:a3];
  }

  else
  {
    v7 = [v5 newAccelerationStructureWithSize:a2 resourceIndex:a3];
  }

  return v7;
}

id MTLDevice_newAccelerationStructureWithSize(void *a1, uint64_t a2)
{
  v3 = [a1 baseObject];
  v4 = v3;
  if ((dword_31F7C8 & 0x800000) != 0)
  {
    v6 = [v3 heapAccelerationStructureSizeAndAlignWithSize:a2];
    v7 = objc_alloc_init(MTLHeapDescriptor);
    [v7 setSize:v6];
    [v7 setType:1];
    [v7 setStorageMode:2];
    v8 = [v4 newHeapWithDescriptor:v7];
    v5 = [v8 newAccelerationStructureWithSize:a2 offset:0];
  }

  else
  {
    v5 = [v3 newAccelerationStructureWithSize:a2];
  }

  return v5;
}

id MTLDevice_newAccelerationStructureWithDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 baseObject];
  v5 = unwrapMTLAccelerationStructureDescriptor(v3);

  if ((dword_31F7C8 & 0x800000) != 0)
  {
    v7 = [v4 heapAccelerationStructureSizeAndAlignWithDescriptor:v5];
    v8 = objc_alloc_init(MTLHeapDescriptor);
    [v8 setSize:v7];
    [v8 setType:1];
    [v8 setStorageMode:2];
    v9 = [v4 newHeapWithDescriptor:v8];
    v6 = [v9 newAccelerationStructureWithDescriptor:v5 offset:0];
  }

  else
  {
    v6 = [v4 newAccelerationStructureWithDescriptor:v5];
  }

  return v6;
}

id LoadDynamicLibrariesForTileRenderPipelineDescriptor(void *a1)
{
  v1 = deviceMTLTileRenderPipelineDescriptor(a1);
  v2 = [v1 tileFunction];
  v3 = DEVICEOBJECT(v2);

  v4 = [v3 device];
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v6 = [v1 preloadedLibraries];
  LoadDynamicLibrariesForFunction(v4, v3, v6, v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 linkedFunctions];
    LoadDynamicLibrariesForLinkedFunctions(v4, v7, v6, v5);
  }

  v8 = [v5 array];

  return v8;
}

void LoadDynamicLibrariesForFunction(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v11 loadDynamicLibrariesForFunction:v7 insertLibraries:v8 error:0];
    [v9 addObjectsFromArray:v10];
  }
}

void LoadDynamicLibrariesForLinkedFunctions(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [v8 functions];
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        LoadDynamicLibrariesForFunction(v7, *(*(&v34 + 1) + 8 * v15), v9, v10);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [v8 binaryFunctions];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        LoadDynamicLibrariesForFunction(v7, *(*(&v30 + 1) + 8 * v20), v9, v10);
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v18);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = [v8 privateFunctions];
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        LoadDynamicLibrariesForFunction(v7, *(*(&v26 + 1) + 8 * v25), v9, v10);
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v23);
  }
}

id LoadDynamicLibrariesForRenderPipelineDescriptor(void *a1)
{
  v1 = deviceMTLRenderPipelineDescriptor(a1);
  v2 = [v1 vertexFunction];
  v3 = [v1 fragmentFunction];
  v4 = v3;
  if (v2)
  {
    v3 = v2;
  }

  v5 = [v3 device];
  v6 = objc_alloc_init(NSMutableOrderedSet);
  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 vertexPreloadedLibraries];
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v1 fragmentPreloadedLibraries];
  }

  else
  {
    v8 = 0;
  }

  LoadDynamicLibrariesForFunction(v5, v2, v7, v6);
  LoadDynamicLibrariesForFunction(v5, v4, v8, v6);
  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 vertexLinkedFunctions];
    LoadDynamicLibrariesForLinkedFunctions(v5, v9, v7, v6);
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v1 fragmentLinkedFunctions];
    LoadDynamicLibrariesForLinkedFunctions(v5, v10, v8, v6);
  }

  v11 = [v6 array];

  return v11;
}

void CaptureMTLDevice_initIndirectCommandBufferCopy(void *a1)
{
  v1 = a1;
  v2 = v1 + 6;
  v3 = v1[6];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __CaptureMTLDevice_initIndirectCommandBufferCopy_block_invoke;
  block[3] = &unk_2F2508;
  v6 = v1;
  v4 = v1;
  if (v3 != -1)
  {
    dispatch_once(v2, block);
  }
}

void WaitForDevice(uint64_t a1, uint64_t a2)
{
  v2 = *(GTTraceContext_getStream(a1, a2) + 16);
  v3 = v2;
  if (v2)
  {
    v4 = g_signpostLog;
    if (os_signpost_enabled(g_signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Capture-WaitForDevice", &unk_2E94FB, buf, 2u);
    }

    v5 = [v3 dispatchGroup];
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

    v6 = g_signpostLog;
    if (os_signpost_enabled(g_signpostLog))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Capture-WaitForDevice", &unk_2E94FB, v7, 2u);
    }
  }
}

void DownloadFromDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(*(*find_entry(a1, &v6, 8uLL, 0) + 32) + 16);
  v4 = [v5 downloader];
  [v4 downloadRequest:a3];
}

void CaptureMTLBuffer_registerBaseBufferForTracing(void *a1, uint64_t a2, int a3)
{
  v9 = a1;
  if (ShouldRegisterBufferForTracing(v9))
  {
    v5 = v9;
    GTMemoryGuard_registerRegion([v9 contents], objc_msgSend(v9, "length"), a2, a3);
  }

  else if (a2)
  {
    v6 = atomic_load((a2 + 56));
    v7 = v6;
    do
    {
      atomic_compare_exchange_strong((a2 + 56), &v7, v6 | 8);
      v8 = v7 == v6;
      v6 = v7;
    }

    while (!v8);
  }
}

BOOL ShouldRegisterBufferForTracing(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ((dword_31F7C8 & 0x1000) != 0 && [v1 storageMode] != &dword_0 + 2)
  {
    v4 = [v2 heap];
    v3 = v4 == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void CaptureMTLBuffer_registerForTracing(uint64_t a1, int a2)
{
  if (a1)
  {
    CaptureMTLBuffer_registerBaseBufferForTracing(*(a1 + 8), *(a1 + 48), a2);
  }
}

uint64_t GTMTLCaptureEnvironment_init()
{
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFFFE | GetEnvDefault("MTLCAPTURE_PRESENT_DOWNLOAD", 1) & 1;
  qword_31F7C0 = GetEnvDefault("MTLCAPTURE_PRESENT_DOWNLOAD_SIZE", 1024);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFFFD | (2 * (GetEnvDefault("MTLCAPTURE_LOG_ERRORS", 0) & 1));
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFFDF | (32 * (GetEnvDefault("MTLCAPTURE_HASH_DUPLICATE_FILES", 1) & 1));
  GT_ENV = GetEnvDefault("MTLCAPTURE_WAIT_EVENT_TIMEOUT", 90);
  qword_31F7A8 = GetEnvDefault("MTLCAPTURE_WAIT_SHARED_EVENT_TIMEOUT_CPU", 90);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFF7FF | ((GetEnvDefault("MTLCAPTURE_DESTINATION_DEVELOPER_TOOLS_ENABLE", 0) & 1) << 11);
  dword_31F7C8 = dword_31F7C8 & 0xFBFFFFFF | ((GetEnvDefault("MTLCAPTURE_FORCE_WAIT_SHARED_EVENT_TIMEOUT_CPU", 0) & 1) << 26);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFFBF | ((GetEnvDefault("MTLCAPTURE_WAIT_FOR_SIGNAL", 0) & 1) << 6);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFEFF | ((GetEnvDefault("MTLCAPTURE_NO_METALFX_CAPTURE", 0) & 1) << 8);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFDFF | ((GetEnvDefault("MTLCAPTURE_DISABLE_HEAP_TEXTURE_COMPRESSION", 0) & 1) << 9);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFFFB | (4 * (GetEnvDefault("MTLCAPTURE_CAPTURE_ADS_BUFFER_SPI", 0) & 1));
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFFEF | (16 * (GetEnvDefault("MTLCAPTURE_ADS_EXTRA_BUFFERS", 0) & 1));
  qword_31F7B0 = GetEnvDefault("MTLCAPTURE_MAX_DOWNLOAD_COMMAND_BUFFERS", 512);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFFF7 | (8 * (GetEnvDefault("MTLCAPTURE_FORCE_RAYTRACING_ENABLE", 0) & 1));
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFF7F | ((GetEnvDefault("MTLCAPTURE_IS_COMPOSITOR", 0) & 1) << 7);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFFBFF | ((GetEnvDefault("MTLCAPTURE_ENABLE_DOWNLOADS_AT_EVENTS", 0) & 1) << 10);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFEFFF | ((GetEnvDefault("MTLCAPTURE_ENABLE_MPROTECT", 0) & 1) << 12);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFDFFF | ((GetEnvDefault("MTLCAPTURE_ENABLE_MPROTECT_BUFFER_SPLITTING", 0) & 1) << 13);
  dword_31F7C8 = dword_31F7C8 & 0xFFFFBFFF | ((GetEnvDefault("MTLCAPTURE_DISABLE_HEAPS", 0) & 1) << 14);
  dword_31F7C8 = dword_31F7C8 & 0xFFFF7FFF | ((GetEnvDefault("MTLCAPTURE_DISABLE_PLACEMENT_HEAPS", 0) & 1) << 15);
  dword_31F7C8 = dword_31F7C8 & 0xFFFEFFFF | ((GetEnvDefault("MTLCAPTURE_FORCE_WAIT_UNTIL_COMPLETED_ON_COMMIT", 0) & 1) << 16);
  dword_31F7C8 = dword_31F7C8 & 0xFFFDFFFF | ((GetEnvDefault("MTLCAPTURE_REDIRECT_LOGGING_TO_STREAMS", 0) & 1) << 17);
  dword_31F7C8 = dword_31F7C8 & 0xFFFBFFFF | ((GetEnvDefault("MTLCAPTURE_WITH_F12", 0) & 1) << 18);
  dword_31F7C8 = dword_31F7C8 & 0xFFF7FFFF | ((GetEnvDefault("MTLCAPTURE_SUPPORT_SUPERSEDING_LAYERS", 0) & 1) << 19);
  dword_31F7C8 = dword_31F7C8 & 0xFFEFFFFF | ((GetEnvDefault("MTLCAPTURE_DOWNLOADER_ENHANCED_COMMAND_BUFFER_ERRORS", 0) & 1) << 20);
  dword_31F7C8 = dword_31F7C8 & 0xFFDFFFFF | ((GetEnvDefault("MTLCAPTURE_DOWNLOADER_FORCE_SPLIT_COMMAND_ENCODERS", 0) & 1) << 21);
  dword_31F7C8 = dword_31F7C8 & 0xFFBFFFFF | ((GetEnvDefault("MTLCAPTURE_ENABLE_DOWNLOADER_FULL_HEAPS", 1) & 1) << 22);
  dword_31F7C8 = dword_31F7C8 & 0xFF7FFFFF | ((GetEnvDefault("MTLCAPTURE_RESOURCES_ON_HEAPS", 0) & 1) << 23);
  dword_31F7C8 = dword_31F7C8 & 0xFEFFFFFF | ((GetEnvDefault("MTLCAPTURE_GPU_RESTART_DEBUGGING", 0) & 1) << 24);
  dword_31F7C8 = dword_31F7C8 & 0xFDFFFFFF | ((GetEnvDefault("MTLCAPTURE_DISABLE_SWIZZLE_PROTECTION", 0) & 1) << 25);
  dword_31F7C8 = dword_31F7C8 & 0xF7FFFFFF | ((GetEnvDefault("MTLCAPTURE_ENABLE_EVENT_BUFFER", 0) & 1) << 27);
  dword_31F7C8 = dword_31F7C8 & 0xEFFFFFFF | ((GetEnvDefault("MTLCAPTURE_ENABLE_STREAMREF_AS_OBJECT_ID", 0) & 1) << 28);
  result = GetEnvDefault("MTLCAPTURE_DISABLE_CADISPLAY", 0);
  dword_31F7C8 = dword_31F7C8 & 0xDFFFFFFF | ((result & 1) << 29);
  return result;
}

uint64_t GetEnvDefault(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return strtol(v3, 0, 0);
}

void sub_496A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IsEventActuallyShared(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  result = 1;
  if (v2 <= -15910)
  {
    if (v2 != -15996)
    {
      if (v2 == -15912)
      {
        return result;
      }

      return 0;
    }

LABEL_7:
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_14:
          v8 = v5 | (v7 << 32);
          goto LABEL_15;
        }
      }

      v7 = 0;
      goto LABEL_14;
    }

    v8 = 0;
LABEL_15:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      if ((*(v9 + 15) & 0x40) == 0)
      {
        v10 = *(v9 + 8);
        if (v10 == -15907 || v10 == -15488)
        {
          return 1;
        }
      }

      v12 = atomic_load((v4 + 4));
      v13 = (HIDWORD(v8) + 1);
      v14 = v8 + (v12 >> 6) - 1;
      v8 = (v13 << 32) | v8;
      if (v13 == v14)
      {
        v8 = (v13 << 32) | v13;
        v4 = *(v4 + 40);
      }
    }

    return 0;
  }

  if (v2 != -15909)
  {
    if (v2 != -15496)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return result;
}

id newDYMTLCaptureScopeInfo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLCaptureScopeInfo);
  v3 = [v1 device];
  [v2 setDeviceAddress:v3];

  v4 = [v1 device];
  [v2 setDeviceStreamRef:{objc_msgSend(v4, "streamReference")}];

  v5 = [v1 commandQueue];
  if (v5)
  {
    v6 = [v1 commandQueue];
    [v2 setCommandQueueStreamRef:{objc_msgSend(v6, "streamReference")}];
  }

  else
  {
    [v2 setCommandQueueStreamRef:0];
  }

  [v2 setScopeAddress:v1];
  [v2 setScopeStreamRef:{objc_msgSend(v1, "streamReference")}];
  v7 = [v1 label];
  [v2 setLabel:v7];

  v8 = +[MTLCaptureManager sharedCaptureManager];
  v9 = [v8 defaultCaptureScope];
  [v2 setIsDefaultCapturable:v9 == v1];

  return v2;
}

void CaptureAGXInit(void *a1)
{
  v3 = a1;
  g_completedCommandBufferCallback = CaptureAGXProcessCompletedCommandBufferEmpty;
  if (os_variant_has_internal_content())
  {
    v1 = [v3 targetDeviceArchitecture];
    v2 = [v1 cpuType];

    if (v2 == 16777235)
    {
      g_completedCommandBufferCallback = CaptureAGXProcessCompletedCommandBufferImpl;
    }
  }
}

void CaptureAGXProcessCompletedCommandBufferImpl(void *a1)
{
  v1 = a1;
  if ([v1 status] == &dword_4 + 1)
  {
    v2 = v1;
    v3 = [v2 error];

    if (!v3)
    {
      goto LABEL_67;
    }

    v4 = [v2 error];
    v5 = [v4 code];

    if (v5 != &dword_0 + 3)
    {
      goto LABEL_67;
    }

    properties[0] = 0;
    v6 = IOServiceNameMatching("AGXRestartReport");
    if (!v6)
    {
      goto LABEL_67;
    }

    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      goto LABEL_67;
    }

    IORegistryEntryCreateCFProperties(MatchingService, properties, kCFAllocatorDefault, 0);
    if (!properties[0] || (Value = CFDictionaryGetValue(properties[0], @"CrashReport"), (v9 = Value) == 0) || (v10 = CFDictionaryGetValue(Value, @"analysis"), (v11 = v10) == 0) || (valuePtr = 0, v12 = CFDictionaryGetValue(v10, @"restart_reason"), !CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr)) || valuePtr != 3 || (v13 = getpid(), proc_name(v13, properties, 0x400u)) && TryGetRestartReportString(v9, __s2) && strcmp(properties, __s2))
    {
LABEL_67:

      goto LABEL_68;
    }

    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, 0);
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v15;
      v17 = CFDictionaryGetValue(v11, *(&off_2F1AE8 + v14));
      if (v17)
      {
        break;
      }

      v15 = 0;
      v14 = 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v18 = newpool;
    v19 = apr_itoa(newpool, v14);
    v20 = apr_pstrcat(v18, "BIF", v19, " fault", 0);
    *n = 0;
    *v85 = 0;
    *v81 = 0;
    *v82 = 0;
    v79 = 0;
    *v80 = 0;
    v21 = CFDictionaryGetValue(v17, @"requestor");
    if (CFNumberGetValue(v21, kCFNumberSInt64Type, n))
    {
      v22 = apr_itoa(v18, n[0]);
      v20 = apr_pstrcat(v18, v20, "\n\trequestor: ", v22, 0);
    }

    v23 = CFDictionaryGetValue(v17, @"sideband");
    if (CFNumberGetValue(v23, kCFNumberSInt64Type, v85))
    {
      v24 = apr_itoa(v18, v85[0]);
      v20 = apr_pstrcat(v18, v20, "\n\tsideband: ", v24, 0);
    }

    v25 = CFDictionaryGetValue(v17, @"level");
    if (CFNumberGetValue(v25, kCFNumberSInt64Type, v82))
    {
      v26 = apr_itoa(v18, v82[0]);
      v20 = apr_pstrcat(v18, v20, "\n\tlevel: ", v26, 0);
    }

    v27 = CFDictionaryGetValue(v17, @"is_read");
    if (CFNumberGetValue(v27, kCFNumberSInt64Type, v81))
    {
      v28 = newpool;
      v29 = apr_itoa(newpool, v81[0]);
      v20 = apr_pstrcat(v28, v20, "\n\tis_read: ", v29, 0);
    }

    v30 = CFDictionaryGetValue(v17, @"pm_protect");
    if (CFNumberGetValue(v30, kCFNumberSInt64Type, v80))
    {
      v31 = newpool;
      v32 = apr_itoa(newpool, v80[0]);
      v20 = apr_pstrcat(v31, v20, "\n\tpm_protect: ", v32, 0);
    }

    v33 = CFDictionaryGetValue(v17, @"address");
    if (CFNumberGetValue(v33, kCFNumberSInt64Type, &v79))
    {
      v34 = v79;
      __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "0x%llx", v79);
      v20 = apr_pstrcat(newpool, v20, "\n\taddress: ", buf, 0);
    }

    else
    {
      v34 = 0;
    }

    v71 = v34;
    if (s_logUsingOsLog == 1)
    {
      v35 = gt_tagged_log(3);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v87 = v20;
        _os_log_fault_impl(&dword_0, v35, OS_LOG_TYPE_FAULT, "fail: Page fault: %s", buf, 0xCu);
      }
    }

    else
    {
      v36 = __stderrp;
      v35 = [NSString stringWithFormat:@"fail: Page fault: %s", v20];
      v37 = v35;
      fprintf(v36, "%s\n", [v35 UTF8String]);
    }

    v38 = v2;
    v39 = [v38 traceContext];
    v40 = atomic_load(v39 + 10);
    *v82 = 0;
    v41 = newpool;
    v42 = GTTraceContext_copyStreamMapAndBuildDispatchArray(v39, 0, v40, newpool, v82);
    v43 = apr_hash_make(v41);
    v44 = *v82;
    *(*v82 + 24) = 0;
    *(v44 + 32) = 0;
    *(v44 + 16) = v44;
    *(v44 + 40) = 0;
    for (i = (v44 + 16); ; i = v47)
    {
      v46 = apr_hash_next(i);
      v47 = v46;
      if (!v46)
      {
        break;
      }

      GTTraceMemPool_buildMemoryMap(*(*(*(v46 + 1) + 32) + 24), v43);
    }

    v48 = [v38 captureCommandQueue];
    v49 = [v48 captureDevice];
    v50 = [v49 traceStream];
    if (v50)
    {
      v51 = *v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = GTMTLSMContext_buildDeviceMirrorWithIgnoreFlags(*v82, v43, v42, v51, 0, v40, v41, 0, 0);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    *n = 0u;
    v73 = 0u;
    GTMTLIndirectResources_allResourcesByKey(v41, v52, v40, 0, n);
    v53 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*n + 24), *(*n + 12), v71);
    if (v53 && (v54 = v53, (v55 = v53[2]) != 0))
    {
      v56 = *v53;
      Object = GTMTLSMContext_getObject(v52, v55, v40);
      if (!Object)
      {
        goto LABEL_65;
      }

      v58 = Object;
      v59 = *(v54 + 24);
      if (*(v54 + 24))
      {
        if (v59 == 9)
        {
          v60 = apr_ltoa(v41, Object[18]);
          v61 = "acceleration structure";
        }

        else if (v59 == 2)
        {
          v60 = apr_ltoa(v41, Object[26]);
          v61 = "texture";
        }

        else
        {
          v60 = 0;
          v61 = "unknown";
        }
      }

      else
      {
        v60 = 0;
        v61 = "buffer";
      }

      __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "0x%llx - 0x%llx", *v54, v54[1] + *v54);
      v66 = apr_ltoa(v41, v71 - v56);
      v67 = apr_pstrcat(v41, "Found a resource at page fault address:", "\n\tResource type: ", v61, "\n\tResource GPU Address Range: ", buf, "\n\tPage fault offset: ", v66, 0);
      v68 = v67;
      if (v58[11])
      {
        v68 = apr_pstrcat(v41, v67, "\n\tLabel: ", v58[11], 0);
      }

      if (v60)
      {
        v68 = apr_pstrcat(v41, v68, "\n\tgpuResourceID: ", v60, 0);
      }

      if (s_logUsingOsLog == 1)
      {
        v62 = gt_tagged_log(3);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          v85[0] = 136315138;
          *&v85[1] = v68;
          _os_log_fault_impl(&dword_0, v62, OS_LOG_TYPE_FAULT, "fail: %s", v85, 0xCu);
        }
      }

      else
      {
        v69 = __stderrp;
        v62 = [NSString stringWithFormat:@"fail: %s", v68];
        v70 = v62;
        fprintf(v69, "%s\n", [v62 UTF8String]);
      }
    }

    else
    {
      if (s_logUsingOsLog != 1)
      {
        v63 = __stderrp;
        v64 = [NSString stringWithFormat:@"fail: Couldn't find a resource responsible for page fault"];
        v65 = v64;
        fprintf(v63, "%s\n", [v64 UTF8String]);

        goto LABEL_65;
      }

      v62 = gt_tagged_log(3);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_0, v62, OS_LOG_TYPE_FAULT, "fail: Couldn't find a resource responsible for page fault", buf, 2u);
      }
    }

LABEL_65:
LABEL_66:
    apr_pool_destroy(newpool);
    goto LABEL_67;
  }

LABEL_68:
}

uint64_t CaptureAGXProcessCompletedCommandBuffer(uint64_t result)
{
  if (g_completedCommandBufferCallback)
  {
    return g_completedCommandBufferCallback(result);
  }

  return result;
}

void ResidencySetTakeSnapshotInternal(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if ((a2 & 1) != 0 || (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    if ((v3[56] & 1) == 0)
    {
      v5 = v3;
      objc_sync_enter(v5);
      v6 = *(v5 + 5);
      v7 = [NSSet setWithArray:*(v5 + 6)];
      v8 = NSSetDiff(v6, v7);
      v9 = [v8 allObjects];

      v10 = [NSSet setWithArray:*(v5 + 6)];
      v11 = NSSetDiff(v10, *(v5 + 5));
      v12 = [v11 allObjects];

      objc_sync_exit(v5);
      s();
      v14 = v13;
      *(v13 + 8) |= 0x80u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v15 = *(v5 + 4);
      GTTraceContext_pushEncoderWithStream(*(v5 + 3), &v76);
      v16 = v77;
      *(v77 + 8) = -15208;
      v17 = BYTE9(v78);
      if (BYTE9(v78) > 0x38uLL)
      {
        v19 = *(*(&v76 + 1) + 24);
        v20 = BYTE10(v78);
        ++BYTE10(v78);
        v18 = GTTraceMemPool_allocateBytes(v19, *(&v77 + 1), v20 | 0x800000000) + 16;
        v17 = v20;
      }

      else
      {
        v18 = (v16 + BYTE9(v78));
        BYTE9(v78) += 8;
      }

      *(v16 + 13) = v17;
      v21 = [v5 traceStream];
      if (v21)
      {
        v22 = *v21;
      }

      else
      {
        v22 = 0;
      }

      *v18 = v22;
      v23 = v77;
      *v14 = v78;
      *(v14 + 8) = BYTE8(v78);
      *(v23 + 15) |= 8u;
      if ([*(v5 + 6) count])
      {
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        v24 = *(v5 + 4);
        GTTraceContext_pushEncoderWithStream(*(v5 + 3), &v76);
        v25 = v77;
        *(v77 + 8) = -15211;
        v26 = BYTE9(v78);
        if (BYTE9(v78) > 0x28uLL)
        {
          v28 = *(*(&v76 + 1) + 24);
          v29 = BYTE10(v78);
          ++BYTE10(v78);
          v27 = GTTraceMemPool_allocateBytes(v28, *(&v77 + 1), v29 | 0x1800000000) + 16;
          v26 = v29;
        }

        else
        {
          v27 = (v25 + BYTE9(v78));
          BYTE9(v78) += 24;
        }

        *(v25 + 13) = v26;
        v30 = [v5 traceStream];
        if (v30)
        {
          v31 = *v30;
        }

        else
        {
          v31 = 0;
        }

        v32 = [*(v5 + 6) count];
        v33 = [*(v5 + 6) count];
        __chkstk_darwin(v33, 8 * v33);
        v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v35, v34);
        v36 = StreamNSArray(&v76, v35, *(v5 + 6));
        *v27 = v31;
        *(v27 + 1) = v32;
        v27[16] = v36;
        *(v27 + 17) = 0;
        *(v27 + 5) = 0;
        v37 = v77;
        *v14 = v78;
        *(v14 + 8) = BYTE8(v78);
        *(v37 + 15) |= 8u;
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        v38 = *(v5 + 4);
        GTTraceContext_pushEncoderWithStream(*(v5 + 3), &v76);
        v39 = v77;
        *(v77 + 8) = -15220;
        v40 = BYTE9(v78);
        if (BYTE9(v78) > 0x38uLL)
        {
          v42 = *(*(&v76 + 1) + 24);
          v43 = BYTE10(v78);
          ++BYTE10(v78);
          v41 = GTTraceMemPool_allocateBytes(v42, *(&v77 + 1), v43 | 0x800000000) + 16;
          v40 = v43;
        }

        else
        {
          v41 = (v39 + BYTE9(v78));
          BYTE9(v78) += 8;
        }

        *(v39 + 13) = v40;
        v44 = [v5 traceStream];
        if (v44)
        {
          v45 = *v44;
        }

        else
        {
          v45 = 0;
        }

        *v41 = v45;
        v46 = v77;
        *v14 = v78;
        *(v14 + 8) = BYTE8(v78);
        *(v46 + 15) |= 8u;
      }

      if ([v9 count])
      {
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        v47 = *(v5 + 4);
        GTTraceContext_pushEncoderWithStream(*(v5 + 3), &v76);
        v48 = v77;
        *(v77 + 8) = -15211;
        v49 = BYTE9(v78);
        if (BYTE9(v78) > 0x28uLL)
        {
          v51 = *(*(&v76 + 1) + 24);
          v52 = BYTE10(v78);
          ++BYTE10(v78);
          v50 = GTTraceMemPool_allocateBytes(v51, *(&v77 + 1), v52 | 0x1800000000) + 16;
          v49 = v52;
        }

        else
        {
          v50 = (v48 + BYTE9(v78));
          BYTE9(v78) += 24;
        }

        *(v48 + 13) = v49;
        v53 = [v5 traceStream];
        if (v53)
        {
          v54 = *v53;
        }

        else
        {
          v54 = 0;
        }

        v55 = [v9 count];
        v56 = [v9 count];
        __chkstk_darwin(v56, 8 * v56);
        v58 = &v76 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v58, v57);
        v59 = StreamNSArray(&v76, v58, v9);
        *v50 = v54;
        *(v50 + 1) = v55;
        v50[16] = v59;
        *(v50 + 17) = 0;
        *(v50 + 5) = 0;
        v60 = v77;
        *v14 = v78;
        *(v14 + 8) = BYTE8(v78);
        *(v60 + 15) |= 8u;
      }

      if ([v12 count])
      {
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
        v61 = *(v5 + 4);
        GTTraceContext_pushEncoderWithStream(*(v5 + 3), &v76);
        v62 = v77;
        *(v77 + 8) = -15206;
        v63 = BYTE9(v78);
        if (BYTE9(v78) > 0x28uLL)
        {
          v66 = *(*(&v76 + 1) + 24);
          v67 = BYTE10(v78);
          ++BYTE10(v78);
          v64 = GTTraceMemPool_allocateBytes(v66, *(&v77 + 1), v67 | 0x1800000000) + 16;
          v63 = v67;
        }

        else
        {
          v64 = (v62 + BYTE9(v78));
          BYTE9(v78) += 24;
        }

        *(v62 + 13) = v63;
        v68 = [v5 traceStream];
        if (v68)
        {
          v69 = *v68;
        }

        else
        {
          v69 = 0;
        }

        v70 = [v12 count];
        v71 = [v12 count];
        __chkstk_darwin(v71, 8 * v71);
        v73 = &v76 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v73, v72);
        v74 = StreamNSArray(&v76, v73, v12);
        *v64 = v69;
        *(v64 + 1) = v70;
        v64[16] = v74;
        *(v64 + 17) = 0;
        *(v64 + 5) = 0;
        v75 = v77;
        *v14 = v78;
        v65 = BYTE8(v78);
        *(v14 + 8) = BYTE8(v78);
        *(v75 + 15) |= 8u;
      }

      else
      {
        v65 = *(v14 + 8);
      }

      *(v14 + 8) = v65 & 0x7F;
      v4[56] = 1;
    }
  }

  else
  {
    v3[56] = 0;
  }
}

id NSSetDiff(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  [v4 minusSet:v3];

  return v4;
}

char *GTAccelerationStructureDescriptorDownloader_suballocate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ((a3 + *(a1 + 64) - 1) & -a3) - *(a1 + 64);
  v5 = v4 + a2;
  if ([*(a1 + 56) count] && *(a1 + 64) + v5 < 0x401)
  {
    goto LABEL_8;
  }

  v6 = [*(a1 + 40) device];
  v7 = v6;
  if (v5 <= 0x400)
  {
    v8 = 1024;
  }

  else
  {
    v8 = v5;
  }

  v9 = [v6 newBufferWithLength:v8 options:0];

  if (v9)
  {
    *(a1 + 64) = 0;
    [*(a1 + 56) addObject:v9];
    [*(a1 + 48) addAllocation:v9];

LABEL_8:
    v10 = [*(a1 + 56) lastObject];
    v11 = *(a1 + 64) + v4;
    v9 = [v10 contents] + v11;
    [v10 gpuAddress];
    *(a1 + 64) += v5;
  }

  return v9;
}

id *GTAccelerationStructureDescriptorDownloader_MTL4_make(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = DEVICEOBJECT(v8);
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v12 = newpool;
  v13 = apr_palloc(newpool, 0x50uLL);
  v14 = v13;
  if (v13)
  {
    *(v13 + 9) = 0;
    *(v13 + 56) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 8) = 0u;
  }

  *v13 = v12;
  objc_storeStrong(v13 + 1, a1);
  objc_storeStrong(v14 + 2, a2);
  objc_storeStrong(v14 + 3, a3);
  v15 = objc_opt_new();
  v16 = v14[4];
  v14[4] = v15;

  v14[9] = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __GTAccelerationStructureDescriptorDownloader_MTL4_make_block_invoke;
  block[3] = &unk_2F2508;
  v17 = v11;
  v33 = v17;
  if (s_accelerationStructureDescriptorDownloaderPipelinesToken != -1)
  {
    dispatch_once(&s_accelerationStructureDescriptorDownloaderPipelinesToken, block);
  }

  v18 = [s_downloaderPipelines_0 device];

  if (v17 == v18)
  {
    v19 = objc_opt_new();
    [v19 setMaxBufferBindCount:13];
    [v19 setLabel:@"com.apple.gputools.GTAccelerationStructureDescriptorDownloader_MTL4_argumentTable"];
    v31 = 0;
    v20 = [v17 newArgumentTableWithDescriptor:v19 error:&v31];
    v21 = v31;
    v22 = v14[5];
    v14[5] = v20;

    if (v14[5])
    {
      v23 = objc_opt_new();
      [v23 setLabel:@"com.apple.gputools.GTAccelerationStructureDescriptorDownloader_MTL4_residencySet"];
      v30 = v21;
      v24 = [v17 newResidencySetWithDescriptor:v23 error:&v30];
      v25 = v30;

      v26 = v14[6];
      v14[6] = v24;

      if (v14[6])
      {
        v27 = objc_opt_new();
        v28 = v14[7];
        v14[7] = v27;
      }

      else
      {
        v14 = 0;
      }

      v21 = v25;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void GTAccelerationStructureDescriptorDownloader_processBuild(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    AllocateStateBuffer(a1, v5);
    [*(a1 + 32) addObject:v5];
    v7 = [v6 usage] & 4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v7 != 0;
        v22 = v6;
        v23 = [v22 instanceCount];
        v24 = GTAccelerationStructureDescriptorDownloader_suballocate(a1, 4, 4);
        v26 = v25;
        *v24 = v23;

        v27 = a1;
        v28 = v5;
        v29 = v26;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        v21 = v7 != 0;
        v29 = [v6 instanceCountBuffer];
        v27 = a1;
        v28 = v5;
      }

      FillInstanceAccelerationStructureHeader_MTL4(v27, v28, v29, v21);
      goto LABEL_11;
    }

    v8 = v5;
    v9 = [v8 stateBuffer];

    if (v9)
    {
      v10 = DEVICEOBJECT(*(a1 + 24));
      v11 = GTAccelerationStructureDescriptorDownloader_suballocate(a1, 4, 4);
      v13 = v12;
      *v11 = 1;
      v14 = GTAccelerationStructureDescriptorDownloader_suballocate(a1, 4, 4);
      v16 = v15;
      *v14 = v7 >> 2;
      v17 = *(a1 + 40);
      v18 = [v8 stateBuffer];
      [v17 setAddress:objc_msgSend(v18 atIndex:{"gpuAddress"), 1}];

      [v17 setAddress:v13 atIndex:5];
      [v17 setAddress:v16 atIndex:7];
      v19 = *(a1 + 48);
      v20 = [v8 stateBuffer];
      [v19 addAllocation:v20];

      [v10 barrierAfterEncoderStages:0x7FFFFFFFFFFFFFFFLL beforeEncoderStages:0x7FFFFFFFFFFFFFFFLL visibilityOptions:1];
      [v10 setComputePipelineState:s_downloaderPipelines_2];
      [v10 setArgumentTable:v17];

      v32 = vdupq_n_s64(1uLL);
      v33 = 1;
      v30 = v32;
      v31 = 1;
      [v10 dispatchThreads:&v32 threadsPerThreadgroup:&v30];
    }
  }

LABEL_11:
}

void AllocateStateBuffer(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = DEVICEOBJECT(*(a1 + 8));
  v4 = [v8 stateBuffer];
  if (!v4)
  {
    v5 = [v3 newBufferWithLength:8 options:0];
    v6 = [v5 contents];
    v7 = v6[1] & 0xFFFFFFF0;
    *v6 = 0;
    v6[1] = v7;
    [v8 setStateBuffer:v5];
  }
}

void FillInstanceAccelerationStructureHeader_MTL4(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 24);
  v8 = a2;
  v9 = DEVICEOBJECT(v7);
  v10 = GTAccelerationStructureDescriptorDownloader_suballocate(a1, 4, 4);
  v12 = v11;
  *v10 = a4;
  v13 = *(a1 + 40);
  v14 = [v8 stateBuffer];
  [v13 setAddress:objc_msgSend(v14 atIndex:{"gpuAddress"), 1}];

  [v13 setAddress:a3 atIndex:4];
  [v13 setAddress:v12 atIndex:7];
  v15 = *(a1 + 48);
  v16 = [v8 stateBuffer];

  [v15 addAllocation:v16];
  [v9 barrierAfterEncoderStages:0x7FFFFFFFFFFFFFFFLL beforeEncoderStages:0x7FFFFFFFFFFFFFFFLL visibilityOptions:1];
  [v9 setComputePipelineState:s_downloaderPipelines_0];
  [v9 setArgumentTable:v13];

  v19 = vdupq_n_s64(1uLL);
  v20 = 1;
  v17 = v19;
  v18 = 1;
  [v9 dispatchThreads:&v19 threadsPerThreadgroup:&v17];
}

void GTAccelerationStructureDescriptorDownloader_processCopy(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = DEVICEOBJECT(*(a1 + 24));
  if (v7)
  {
    if (v8)
    {
      AllocateStateBuffer(a1, v7);
      AllocateStateBuffer(a1, v8);
      [*(a1 + 32) addObject:v8];
      v10 = [v7 stateBuffer];
      if (v10)
      {
        v11 = v10;
        v12 = [v8 stateBuffer];

        if (v12)
        {
          v13 = GTAccelerationStructureDescriptorDownloader_suballocate(a1, 4, 4);
          v15 = v14;
          *v13 = a4;
          v16 = *(a1 + 40);
          v17 = [v7 stateBuffer];
          [v16 setAddress:objc_msgSend(v17 atIndex:{"gpuAddress"), 0}];

          v18 = [v8 stateBuffer];
          [v16 setAddress:objc_msgSend(v18 atIndex:{"gpuAddress"), 1}];

          [v16 setAddress:v15 atIndex:6];
          v19 = *(a1 + 48);
          v20 = [v7 stateBuffer];
          [v19 addAllocation:v20];

          v21 = *(a1 + 48);
          v22 = [v8 stateBuffer];
          [v21 addAllocation:v22];

          [v9 barrierAfterEncoderStages:0x7FFFFFFFFFFFFFFFLL beforeEncoderStages:0x7FFFFFFFFFFFFFFFLL visibilityOptions:1];
          [v9 setComputePipelineState:s_downloaderPipelines_1];
          [v9 setArgumentTable:v16];

          v25 = vdupq_n_s64(1uLL);
          v26 = 1;
          v23 = v25;
          v24 = 1;
          [v9 dispatchThreads:&v25 threadsPerThreadgroup:&v23];
        }
      }
    }
  }
}

void GTAccelerationStructureDescriptorDownloader_processRefit(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DEVICEOBJECT(*(a1 + 24));
  if (v5 != v6)
  {
    if (v5)
    {
      if (v6)
      {
        AllocateStateBuffer(a1, v5);
        AllocateStateBuffer(a1, v6);
        [*(a1 + 32) addObject:v6];
        v8 = [v5 stateBuffer];
        if (v8)
        {
          v9 = v8;
          v10 = [v6 stateBuffer];

          if (v10)
          {
            v11 = GTAccelerationStructureDescriptorDownloader_suballocate(a1, 4, 4);
            v13 = v12;
            *v11 = 0;
            v14 = *(a1 + 40);
            v15 = [v5 stateBuffer];
            [v14 setAddress:objc_msgSend(v15 atIndex:{"gpuAddress"), 0}];

            v16 = [v6 stateBuffer];
            [v14 setAddress:objc_msgSend(v16 atIndex:{"gpuAddress"), 1}];

            [v14 setAddress:v13 atIndex:6];
            v17 = *(a1 + 48);
            v18 = [v5 stateBuffer];
            [v17 addAllocation:v18];

            v19 = *(a1 + 48);
            v20 = [v6 stateBuffer];
            [v19 addAllocation:v20];

            [v7 setComputePipelineState:s_downloaderPipelines_1];
            [v7 setArgumentTable:v14];

            v23 = vdupq_n_s64(1uLL);
            v24 = 1;
            v21 = v23;
            v22 = 1;
            [v7 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
            [v7 barrierAfterEncoderStages:0x7FFFFFFFFFFFFFFFLL beforeEncoderStages:0x7FFFFFFFFFFFFFFFLL visibilityOptions:1];
          }
        }
      }
    }
  }
}

void GTAccelerationStructureDescriptorDownloader_processEndEncoding(id *a1)
{
  if (a1)
  {
    v3 = DEVICEOBJECT(a1[2]);
    v2 = DEVICEOBJECT(a1[3]);
    [a1[6] commit];
    [v3 useResidencySet:a1[6]];
    [v2 barrierAfterStages:0x7FFFFFFFFFFFFFFFLL beforeQueueStages:0x7FFFFFFFFFFFFFFFLL visibilityOptions:1];
  }
}

void GTAccelerationStructureDescriptorDownloader_MTL4_postProcess(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 24) traceContext];
    if (GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_descriptorDownloaderToken != -1)
    {
      dispatch_once(&GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_descriptorDownloaderToken, &__block_literal_global_2957);
    }

    v5 = [*(a1 + 32) copy];
    if ([v5 count])
    {
      v6 = g_signpostLog;
      if (os_signpost_enabled(g_signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_MTL4_postProcess", &unk_2E94FB, buf, 2u);
      }

      v7 = [v5 count];
      add = atomic_fetch_add(v4 + 10, v7);
      v9 = *(a1 + 8);
      v10 = *(a1 + 24);
      v11 = [v9 dispatchGroup];
      dispatch_group_enter(v11);

      v12 = g_signpostLog;
      if (os_signpost_enabled(g_signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_MTL4_postProcess", &unk_2E94FB, buf, 2u);
      }

      v13 = GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_descriptorDownloaderEventListener;
      v14 = *(a1 + 72);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __GTAccelerationStructureDescriptorDownloader_MTL4_postProcess_block_invoke_41;
      v17[3] = &unk_2F1F88;
      v21 = add;
      v22 = v7;
      v18 = v5;
      v19 = v10;
      v23 = v4;
      v20 = v9;
      v15 = v9;
      v16 = v10;
      [v3 notifyListener:v13 atValue:v14 block:v17];
    }

    else
    {
      [v3 setSignaledValue:*(a1 + 72) + 1];
    }
  }
}

void GTAccelerationStructureDescriptorDownloader_MTL4_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;

    v3 = *(a1 + 8);
    *(a1 + 8) = 0;

    v4 = *(a1 + 16);
    *(a1 + 16) = 0;

    v5 = *(a1 + 24);
    *(a1 + 24) = 0;

    v6 = *(a1 + 40);
    *(a1 + 40) = 0;

    v7 = *(a1 + 48);
    *(a1 + 48) = 0;

    v8 = *(a1 + 56);
    *(a1 + 56) = 0;

    v9 = *a1;

    apr_pool_destroy(v9);
  }
}

void *GTCapturePhase_create(apr_pool_t *a1)
{
  v2 = apr_palloc(a1, 0x10uLL);
  *v2 = a1;
  v2[1] = apr_array_make(a1, 0, 64);
  return v2;
}

uint64_t GTCapturePhase_resetHitCount(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 12);
  if (v2 >= 1)
  {
    v3 = *(v1 + 24);
    v4 = (v2 + 3) & 0xFFFFFFFC;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = xmmword_2975B0;
    v7 = xmmword_2975C0;
    v8 = (v3 + 188);
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 32) = 0;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 16) = 0;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = 0;
        v8[16] = 0;
      }

      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 64;
      v4 -= 4;
    }

    while (v4);
  }

  return result;
}

__n128 GTCapturePhase_addCondition(uint64_t a1, __n128 *a2)
{
  v3 = apr_array_push(*(a1 + 8));
  result = a2[2];
  v5 = a2[3];
  v7 = *a2;
  v6 = a2[1];
  v3[2] = result;
  v3[3] = v5;
  *v3 = v7;
  v3[1] = v6;
  return result;
}

BOOL GTCapturePhase_isComplete(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 12);
  if (!v2)
  {
    return 1;
  }

  if (v2 < 1)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  v4 = v2 - 1;
  v5 = (v3 + 60);
  do
  {
    v6 = *(v5 - 1);
    result = *v5 >= v6;
    v8 = *v5 >= v6 || v4-- == 0;
    v5 += 16;
  }

  while (!v8);
  return result;
}

__n128 GTCapturePhase_getCondition@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(*(a1 + 8) + 24) + (a2 << 6);
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v6;
  return result;
}

uint64_t GTCapturePhase_findCondition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 12);
  if (v3 < 1)
  {
    return 0;
  }

  for (i = *(v2 + 24); !GTCaptureBoundaryCondition_equals(i, a2); i += 64)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return i;
}

uint64_t GTCapturePhase_findConditionWithTriggerType(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 12);
  if (v3 < 1)
  {
    return 0;
  }

  for (result = *(v2 + 24); *(result + 4) != a2; result += 64)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GTCapturePhase_checkTrigger(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 12);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(v2 + 24);
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    v8 = *(a2 + 6);
    v9 = *(a2 + 7);
    v10 = *(a2 + 8);
    v11 = *(a2 + 72);
    v12 = *a2;
    for (i = (v5 + 32); ; i += 8)
    {
      v14 = *(i - 8);
      if (v12 != v14 && v14 != 1)
      {
        goto LABEL_29;
      }

      v16 = *(i - 7);
      v18 = *(i - 1);
      v17 = *i;
      v19 = i[1];
      if (v16)
      {
        if (a2[1] != v16)
        {
          goto LABEL_29;
        }
      }

      if (v14 == 8)
      {
        if (v18 && v18 != v7)
        {
          goto LABEL_29;
        }

        if (v17 && v17 != v9)
        {
          goto LABEL_29;
        }

        v20 = v19 == v10 || v19 == 0;
        if (!v20 || ((*(i + 16) ^ 1 | v11) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v14 == 3)
      {
        if (v16 == 3 && v8 != *(i - 3))
        {
          goto LABEL_29;
        }
      }

      else if (v14 == 2 && *(i - 2) != v6)
      {
        goto LABEL_29;
      }

      ++*(i + 7);
      v12 = *a2;
      v4 = 1;
LABEL_29:
      if (!--v3)
      {
        return v4 & 1;
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

void EncodeSetTextureViewFromBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  v12 = GTTraceContext_openStream(v11[3], 0, 0);
  v13 = *v12;
  v12[1] = *v12;
  v12[2] = v13;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  GTTraceContext_pushEncoderWithStream(v11[3], &v38);
  v14 = v39;
  *(v39 + 8) = -14802;
  if (BYTE9(v40))
  {
    v15 = *(*(&v38 + 1) + 24);
    v16 = BYTE10(v40);
    ++BYTE10(v40);
    v17 = GTTraceMemPool_allocateBytes(v15, *(&v39 + 1), v16 | 0x4000000000) + 16;
  }

  else
  {
    LOBYTE(v16) = 0;
    BYTE9(v40) = 64;
    v17 = v14;
  }

  v14[13] = v16;
  v18 = [v11 traceStream];
  if (!v18)
  {
    v19 = 0;
    if (a5)
    {
      goto LABEL_6;
    }

LABEL_8:
    DescriptorWithCount = 0;
    goto LABEL_9;
  }

  v19 = *v18;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_6:
  bzero(&v42, 0x250uLL);
  v41 = 56;
  DescriptorWithCount = AllocateDescriptorWithCount(&v38, &v41, 0x29u, 1u);
  v21 = v41;
  v23 = a5[1];
  v22 = a5[2];
  v24 = *a5;
  *(v41 + 48) = *(a5 + 6);
  v21[1] = v23;
  v21[2] = v22;
  *v21 = v24;
LABEL_9:
  *v17 = v19;
  *(v17 + 1) = v13;
  *(v17 + 2) = a2;
  *(v17 + 3) = a4;
  *(v17 + 4) = v35;
  *(v17 + 5) = v37;
  *(v17 + 6) = a3;
  v17[56] = DescriptorWithCount;
  *(v17 + 57) = 0;
  *(v17 + 15) = 0;
  v25 = v11[4];
  *(v39 + 15) |= 8u;
  PushFunc(v25);
  v26 = *(v39 + 16);
  v28 = *(v39 + 32);
  v27 = *(v39 + 48);
  *v29 = *v39;
  v29[1] = v26;
  v29[2] = v28;
  v29[3] = v27;
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v40);
  *(v32 + 15) |= 8u;
  GTTraceContext_closeStream(v11[3], v12);
  v33 = v11;
  objc_sync_enter(v33);
  *(v33[8] + 8 * a3) = v13;
  objc_sync_exit(v33);
}

void EncodeSetTextureViewWithDescriptor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = GTTraceContext_openStream(v9[3], 0, 0);
  v11 = *v10;
  v10[1] = *v10;
  v10[2] = v11;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  GTTraceContext_pushEncoderWithStream(v9[3], &v32);
  v12 = v33;
  *(v33 + 8) = -14969;
  v13 = BYTE9(v34);
  if (BYTE9(v34) > 0x10uLL)
  {
    v15 = *(*(&v32 + 1) + 24);
    v16 = BYTE10(v34);
    ++BYTE10(v34);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v33 + 1), v16 | 0x3000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v34));
    BYTE9(v34) += 48;
  }

  *(v12 + 13) = v13;
  v17 = [v9 traceStream];
  if (!v17)
  {
    v18 = 0;
    if (a5)
    {
      goto LABEL_6;
    }

LABEL_8:
    DescriptorWithCount = 0;
    goto LABEL_9;
  }

  v18 = *v17;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_6:
  bzero(v35, 0x258uLL);
  v36 = (&stru_20 + 8);
  DescriptorWithCount = AllocateDescriptorWithCount(&v32, v35, 0xA1u, 1u);
  v20 = v36;
  v21 = *(a5 + 32);
  v22 = *(a5 + 16);
  *v36 = *a5;
  v20[1] = v22;
  *(v20 + 4) = v21;
LABEL_9:
  *v14 = v18;
  *(v14 + 1) = v11;
  *(v14 + 2) = a2;
  *(v14 + 3) = a4;
  *(v14 + 4) = a3;
  v14[40] = DescriptorWithCount;
  *(v14 + 41) = 0;
  *(v14 + 11) = 0;
  v23 = v9[4];
  *(v33 + 15) |= 8u;
  PushFunc(v23);
  v24 = *(v33 + 16);
  v26 = *(v33 + 32);
  v25 = *(v33 + 48);
  *v27 = *v33;
  v27[1] = v24;
  v27[2] = v26;
  v27[3] = v25;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v34);
  *(v30 + 15) |= 8u;
  GTTraceContext_closeStream(v9[3], v10);
  v31 = v9;
  objc_sync_enter(v31);
  *(v31[8] + 8 * a3) = v11;
  objc_sync_exit(v31);
}

void EncodeSetTextureView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v8 = v7[4];
  GTTraceContext_pushEncoderWithStream(v7[3], &v19);
  v9 = v20;
  *(v20 + 8) = -14970;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  v14 = [v7 traceStream];
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  *v11 = v15;
  *(v11 + 1) = a2;
  *(v11 + 2) = a4;
  *(v11 + 3) = a3;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
  v18 = v7;
  objc_sync_enter(v18);
  *(v18[8] + 8 * a3) = a4;
  objc_sync_exit(v18);
}

void TextureViewPoolTakeSnapshot(void *a1)
{
  v1 = a1;
  v2 = [v1 resourceViewCount];
  obj = v1;
  objc_sync_enter(obj);
  memcpy(*(obj + 7), *(obj + 6), 88 * v2);
  objc_sync_exit(obj);

  s();
  v4 = v3;
  v5 = *(v3 + 8) | 0x80;
  *(v3 + 8) = v5;
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = obj;
    do
    {
      v9 = v8[7];
      v10 = (v9 + v6);
      v11 = *(v9 + v6 + 8);
      v12 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        if (v11 < 0)
        {
          EncodeSetTextureViewFromBuffer(obj, *(v9 + v6), v7, v12, (v9 + v6 + 32), v10[2], *(v9 + v6 + 24));
        }

        else if (v10[2])
        {
          EncodeSetTextureViewWithDescriptor(obj, *(v9 + v6), v7, v12, v9 + v6 + 24);
        }

        else
        {
          EncodeSetTextureView(obj, *v10, v7, v12);
        }

        v8 = obj;
      }

      ++v7;
      v6 += 88;
    }

    while (v2 != v7);
    v5 = *(v4 + 8);
  }

  else
  {
    v8 = obj;
  }

  *(v4 + 8) = v5 & 0x7F;
}

id GTMTLQL_EncodeSamplerState(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 traceStream];
  v51 = 0u;
  v52 = 0;
  v55 = 0u;
  v54 = 0u;
  LODWORD(v51) = 75;
  v53 = -1;
  v57 = 0;
  v56 = 0xFFFFFFFFFFFFFFFFLL;
  v5 = v4[4];
  if (v5 && (*(v5 + 79) & 8) != 0)
  {
    v6 = v5 + 64;
  }

  else
  {
    v6 = 0;
  }

  GTMTLSMSamplerState_processTraceFuncWithPool(&v51, v4[3], v6);
  Stream = GTTraceContext_getStream(a1, *(&v51 + 1));
  if (Stream)
  {
    v8 = atomic_load((Stream + 56));
    v9 = (Stream + (~(v8 >> 2) & 8));
  }

  else
  {
    v9 = &dword_8;
  }

  v10 = *v9;
  v11 = GTTraceContext_getStream(a1, *(&v54 + 1));
  if (v11)
  {
    v12 = atomic_load((v11 + 56));
    v13 = (v11 + (~(v12 >> 2) & 8));
  }

  else
  {
    v13 = &dword_8;
  }

  v14 = *v13;
  v15 = [v3 device];

  v16 = objc_alloc_init(NSMutableData);
  v50 = 0x4005053544DLL;
  [v16 appendBytes:&v50 length:8];
  v45 = v14;
  v46 = 7;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  DWORD1(v47) = 2;
  DYTraceEncode_InternalData(&v45, &v58, 0x400uLL, v17, 0);
  LODWORD(v61) = v61 | 0x46;
  [v16 appendBytes:&v58 length:v58];
  v18 = [NSMutableDictionary dictionaryWithDictionary:&off_2F7790];
  v19 = [v15 traceStream];
  if (v19 && (v20 = v19[4]) != 0 && (*(v20 + 79) & 8) != 0)
  {
    v21 = v20 + 64;
  }

  else
  {
    v21 = 0;
  }

  v41 = 0u;
  v42 = 0;
  v44 = 0u;
  LODWORD(v41) = 36;
  v43 = -1;
  GTMTLSMDevice_processTraceFuncWithPool(&v41, *([v15 traceStream] + 3), v21);
  v22 = SaveDeviceDescriptor(*(&v44 + 1), v18);
  v23 = GTTraceContext_getStream(a1, [v15 streamReference]);
  if (v23)
  {
    v24 = atomic_load((v23 + 56));
    v25 = (v23 + (~(v24 >> 2) & 8));
  }

  else
  {
    v25 = &dword_8;
  }

  v40[0] = *v25;
  v40[1] = [v22 UTF8String];
  DYTraceEncode_MTLDevice_deviceReference(v40, &v58, 0x400uLL, 0, 0);
  [v16 appendBytes:&v58 length:v58];

  v26 = v55;
  v27 = v18;
  v28 = EncodeDYMTLSamplerDescriptor(v26, 0, 0);
  v29 = [[NSMutableData alloc] initWithLength:v28];
  EncodeDYMTLSamplerDescriptor(v26, [v29 mutableBytes], v28);
  v30 = HashDataBytes(v29);
  v31 = [v29 copy];
  [v27 setObject:v31 forKeyedSubscript:v30];

  v39[0] = v14;
  v39[1] = v10;
  v39[2] = [v30 UTF8String];
  DYTraceEncode_MTLDevice_newSamplerStateWithDescriptor(v39, &v58, 0x400uLL, 0, 0);
  [v16 appendBytes:&v58 length:v58];
  if (v56)
  {
    v60 = 0;
    v59 = 0u;
    v61 = 0x77754300000004;
    v62 = v10;
    v63 = v56;
    v58 = 0xFFFFD80E00000038;
    [v16 appendBytes:&v58 length:56];
  }

  v32 = [v16 copy];
  [v27 setObject:v32 forKeyedSubscript:@"capture"];

  v38 = 0;
  v33 = [NSKeyedArchiver archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v38];
  v34 = v38;
  v35 = v34;
  if (v34)
  {
    v36 = [v34 localizedDescription];
    NSLog(@"Failed to encode datatip data: %@", v36);
  }

  return v33;
}

id SaveDeviceDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = EncodeDYMTLDeviceDescriptor(a1, 0, 0);
  v5 = [[NSMutableData alloc] initWithLength:v4];
  EncodeDYMTLDeviceDescriptor(a1, [v5 mutableBytes], v4);
  v6 = HashDataBytes(v5);
  v7 = [v5 copy];
  [v3 setObject:v7 forKeyedSubscript:v6];

  return v6;
}

id HashDataBytes(void *a1)
{
  v1 = a1;
  CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = 0;
  v3 = v8;
  do
  {
    v4 = md[v2];
    *(v3 - 1) = byte_297610[v4 >> 4];
    *v3 = byte_297610[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 32);
  v8[63] = 0;
  v5 = [[NSString alloc] initWithUTF8String:&v7];

  return v5;
}

id GTMTLQL_EncodeBuffer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 traceStream];
  v61 = 0u;
  v62 = 0;
  v68 = 0u;
  v69 = 0;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v66 = 0u;
  v64 = 0u;
  v65 = 0u;
  LODWORD(v61) = 22;
  v63 = -1;
  WORD5(v68) = 2;
  v67 = 0xFFFFFFFFFFFFFFFFLL;
  v70 = -1;
  v5 = v4[4];
  if (v5 && (*(v5 + 79) & 8) != 0)
  {
    v6 = v5 + 64;
  }

  else
  {
    v6 = 0;
  }

  GTMTLSMBuffer_processTraceFuncWithPool(&v61, v4[3], v6);
  Stream = GTTraceContext_getStream(a1, *(&v61 + 1));
  if (Stream)
  {
    v8 = atomic_load((Stream + 56));
    v9 = (Stream + (~(v8 >> 2) & 8));
  }

  else
  {
    v9 = &dword_8;
  }

  v42 = *v9;
  v10 = GTTraceContext_getStream(a1, *(&v64 + 1));
  if (v10)
  {
    v11 = atomic_load((v10 + 56));
    v12 = (v10 + (~(v11 >> 2) & 8));
  }

  else
  {
    v12 = &dword_8;
  }

  v43 = *v12;
  v13 = [v3 device];
  v14 = objc_alloc_init(NSMutableData);
  v60 = 0x4005053544DLL;
  [v14 appendBytes:&v60 length:8];
  v55 = v43;
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  v56 = 7;
  DWORD1(v57) = 2;
  DYTraceEncode_InternalData(&v55, v74, 0x400uLL, v15, 0);
  v75 |= 0x46u;
  [v14 appendBytes:v74 length:v74[0]];
  v16 = [NSMutableDictionary dictionaryWithDictionary:&off_2F77B8];
  v17 = [v13 traceStream];
  if (v17 && (v18 = v17[4]) != 0 && (*(v18 + 79) & 8) != 0)
  {
    v19 = v18 + 64;
  }

  else
  {
    v19 = 0;
  }

  v51 = 0u;
  v52 = 0;
  v54 = 0u;
  LODWORD(v51) = 36;
  v53 = -1;
  GTMTLSMDevice_processTraceFuncWithPool(&v51, *([v13 traceStream] + 3), v19);
  v20 = SaveDeviceDescriptor(*(&v54 + 1), v16);
  v21 = GTTraceContext_getStream(a1, [v13 streamReference]);
  if (v21)
  {
    v22 = atomic_load((v21 + 56));
    v23 = (v21 + (~(v22 >> 2) & 8));
  }

  else
  {
    v23 = &dword_8;
  }

  v50[0] = *v23;
  v24 = v20;
  v50[1] = [v20 UTF8String];
  DYTraceEncode_MTLDevice_deviceReference(v50, v74, 0x400uLL, 0, 0);
  [v14 appendBytes:v74 length:v74[0]];

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v25 = newpool;
  v26 = apr_array_make(newpool, 1, 456);
  v27 = apr_array_push(v26);
  v28 = [v3 streamReference];
  *v27 = v42;
  *(v27 + 1) = v28;
  *(v27 + 3) = 0;
  *(v27 + 4) = 0;
  *(v27 + 2) = 0;
  *(v27 + 38) = 0;
  v27[46] = 22;
  *(v27 + 63) = 0u;
  *(v27 + 79) = 0u;
  *(v27 + 95) = 0u;
  *(v27 + 111) = 0u;
  *(v27 + 127) = 0u;
  *(v27 + 143) = 0u;
  *(v27 + 159) = 0u;
  *(v27 + 175) = 0u;
  *(v27 + 191) = 0u;
  *(v27 + 207) = 0u;
  *(v27 + 223) = 0u;
  *(v27 + 239) = 0u;
  *(v27 + 255) = 0u;
  *(v27 + 47) = 0u;
  *(v27 + 271) = 0u;
  *(v27 + 287) = 0u;
  *(v27 + 303) = 0u;
  *(v27 + 319) = 0u;
  *(v27 + 335) = 0u;
  *(v27 + 351) = 0u;
  *(v27 + 367) = 0u;
  *(v27 + 383) = 0u;
  *(v27 + 399) = 0u;
  *(v27 + 415) = 0u;
  *(v27 + 431) = 0u;
  *(v27 + 440) = 0u;
  v29 = GTResourceDownloaderProcessRequest(v25, v26);
  elts = v29->elts;
  v31 = [v13 downloader];
  v32 = [GTDownloadContext alloc];
  v33 = [v31 downloadQueue];
  v34 = [(GTDownloadContext *)v32 initWithQueue:v33 forRequest:v29];

  DownloadBuffer(v31, v34, elts);
  apr_pool_destroy(v25);
  *&v51 = 0;
  *(&v51 + 1) = &v51;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__3913;
  *&v54 = __Block_byref_object_dispose__3914;
  *(&v54 + 1) = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = __GTMTLQL_EncodeBuffer_block_invoke;
  v46[3] = &unk_2F1BC0;
  v48 = &v51;
  v35 = v16;
  v47 = v35;
  [(GTDownloadContext *)v34 flushWithCallback:v46];
  v45[0] = v43;
  v45[1] = v42;
  v45[2] = [*(*(&v51 + 1) + 40) UTF8String];
  v45[3] = v69;
  v45[4] = 0;
  v45[5] = 0;
  DYTraceEncode_MTLDevice_newBufferWithBytes_length_options(v45, v74, 0x400uLL, 0, 0);
  [v14 appendBytes:v74 length:v74[0]];
  v36 = [v14 copy];
  [v35 setObject:v36 forKeyedSubscript:@"capture"];

  v44 = 0;
  v37 = [NSKeyedArchiver archivedDataWithRootObject:v35 requiringSecureCoding:1 error:&v44];
  v38 = v44;
  v39 = v38;
  if (v38)
  {
    v40 = [v38 localizedDescription];
    NSLog(@"Failed to encode datatip data: %@", v40);
  }

  _Block_object_dispose(&v51, 8);

  return v37;
}

uint64_t __Block_byref_object_copy__3913(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GTMTLQL_EncodeTexture(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 traceStream];
  v86 = 0u;
  v87 = 0;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v89 = 0u;
  v90 = 0u;
  v86.i32[0] = 80;
  v88 = -1;
  WORD5(v93) = 2;
  v92 = 0xFFFFFFFFFFFFFFFFLL;
  v101 = 0xFFFFFFFFLL;
  v5 = v4[4];
  if (v5 && (*(v5 + 79) & 8) != 0)
  {
    v6 = v5 + 64;
  }

  else
  {
    v6 = 0;
  }

  GTMTLSMTexture_processTraceFuncWithPool(&v86, v4[3], v6);
  Stream = GTTraceContext_getStream(a1, v86.i64[1]);
  if (Stream)
  {
    v8 = atomic_load((Stream + 56));
    v9 = (Stream + (~(v8 >> 2) & 8));
  }

  else
  {
    v9 = &dword_8;
  }

  v10 = *v9;
  v11 = GTTraceContext_getStream(a1, *(&v89 + 1));
  if (v11)
  {
    v12 = atomic_load((v11 + 56));
    v13 = (v11 + (~(v12 >> 2) & 8));
  }

  else
  {
    v13 = &dword_8;
  }

  v14 = *v13;
  v15 = [v3 device];
  v16 = objc_alloc_init(NSMutableData);
  v81 = 0x4005053544DLL;
  [v16 appendBytes:&v81 length:8];
  v76 = v14;
  v78 = 0u;
  v79 = 0u;
  v80 = 0;
  v77 = 7;
  DWORD1(v78) = 2;
  DYTraceEncode_InternalData(&v76, v102, 0x400uLL, v17, 0);
  v103 |= 0x46u;
  [v16 appendBytes:v102 length:v102[0]];
  v18 = [NSMutableDictionary dictionaryWithDictionary:&off_2F77E0];
  v19 = [v15 traceStream];
  if (v19 && (v20 = v19[4]) != 0 && (*(v20 + 79) & 8) != 0)
  {
    v21 = v20 + 64;
  }

  else
  {
    v21 = 0;
  }

  *__str = 0u;
  *&v83 = 0;
  v84 = 0u;
  *__str = 36;
  *(&v83 + 1) = -1;
  GTMTLSMDevice_processTraceFuncWithPool(__str, *([v15 traceStream] + 3), v21);
  v22 = SaveDeviceDescriptor(*(&v84 + 1), v18);
  v23 = GTTraceContext_getStream(a1, [v15 streamReference]);
  if (v23)
  {
    v24 = atomic_load((v23 + 56));
    v25 = (v23 + (~(v24 >> 2) & 8));
  }

  else
  {
    v25 = &dword_8;
  }

  v75[0] = *v25;
  v75[1] = [v22 UTF8String];
  DYTraceEncode_MTLDevice_deviceReference(v75, v102, 0x400uLL, 0, 0);
  [v16 appendBytes:v102 length:v102[0]];

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v26 = newpool;
  v27 = apr_array_make(newpool, 1, 456);
  v28 = apr_array_push(v27);
  v29 = [v3 streamReference];
  *v28 = v10;
  *(v28 + 1) = v29;
  *(v28 + 3) = 0;
  *(v28 + 4) = 0;
  *(v28 + 2) = 0;
  *(v28 + 38) = 0;
  v28[46] = 80;
  *(v28 + 63) = 0u;
  *(v28 + 79) = 0u;
  *(v28 + 95) = 0u;
  *(v28 + 111) = 0u;
  *(v28 + 127) = 0u;
  *(v28 + 143) = 0u;
  *(v28 + 159) = 0u;
  *(v28 + 175) = 0u;
  *(v28 + 191) = 0u;
  *(v28 + 207) = 0u;
  *(v28 + 223) = 0u;
  *(v28 + 239) = 0u;
  *(v28 + 255) = 0u;
  v30 = v28 + 440;
  *(v28 + 47) = 0u;
  v28 += 47;
  *v30 = 0u;
  *(v28 + 14) = 0u;
  *(v28 + 15) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 17) = 0u;
  *(v28 + 18) = 0u;
  *(v28 + 19) = 0u;
  *(v28 + 20) = 0u;
  *(v28 + 21) = 0u;
  *(v28 + 22) = 0u;
  *(v28 + 23) = 0u;
  *(v28 + 24) = 0u;
  v31 = GTResourceDownloaderProcessRequest(v26, v27);
  v59 = v15;
  v32 = [v15 downloader];
  v33 = [GTDownloadContext alloc];
  v34 = [v32 downloadQueue];
  v60 = [(GTDownloadContext *)v33 initWithQueue:v34 forRequest:v31];

  elts = v31->elts;
  v73[0] = v14;
  v73[1] = v10;
  v73[2] = "descriptor";
  v73[3] = 0;
  DYTraceEncode_MTLDevice_newTextureWithDescriptor(v73, v102, 0x400uLL, 0, 0);
  [v16 appendBytes:v102 length:v102[0]];
  v36 = DEVICEOBJECT(v3);
  v37 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v36);

  *__str = GTMTLTextureDescriptorDefaults;
  v83 = unk_29CCD8;
  v84 = xmmword_29CCE8;
  v85 = 512;
  TranslateGTMTLTextureDescriptorDirectly(v37, __str);
  v38 = EncodeDYMTLTextureDescriptor(__str, 0, 0);
  v39 = [NSMutableData dataWithLength:v38];
  EncodeDYMTLTextureDescriptor(__str, [v39 mutableBytes], v38);
  [v18 setObject:v39 forKeyedSubscript:@"descriptor"];

  v40 = *(elts + 46);
  if (v40 == 86)
  {
    v41 = v60;
    DownloadIOSurface(v32, v60, elts);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = __GTMTLQL_EncodeTexture_block_invoke_2;
    v62[3] = &unk_2F1C10;
    v42 = &v63;
    v63 = v3;
    v64 = v18;
    v66 = v102;
    v67 = 1024;
    v65 = v16;
    [(GTDownloadContext *)v60 flushWithCallback:v62];
  }

  else
  {
    v41 = v60;
    if (v40 != 80)
    {
      goto LABEL_26;
    }

    DownloadTexture(v32, v60, elts, v31->nelts);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = __GTMTLQL_EncodeTexture_block_invoke;
    v71[3] = &unk_2F1BE8;
    v42 = &v72;
    v72 = v18;
    [(GTDownloadContext *)v60 flushWithCallback:v71];
    if (v31->nelts >= 1)
    {
      v58 = v3;
      v43 = 0;
      v44 = 68;
      do
      {
        v45 = v31->elts;
        GTResourceDownloaderGetResourceFilename(elts, v43, __str, 0x80uLL);
        v46 = *&v45[v44 - 16];
        v68[0] = 0;
        v68[1] = v46;
        v47 = *&v45[v44 - 10];
        v68[2] = *&v45[v44 - 12];
        v68[3] = v47;
        v48 = *&v45[v44 - 4];
        v68[4] = *&v45[v44 - 8];
        v68[5] = v48;
        v49 = *&v45[v44 - 18];
        v68[6] = *&v45[v44 - 2];
        v68[7] = v49;
        v68[8] = *&v45[v44 - 20];
        v68[9] = __str;
        v50 = *&v45[v44];
        *&v51 = v50;
        *(&v51 + 1) = HIDWORD(v50);
        v69 = v51;
        v70 = 0;
        DYTraceEncode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v68, v102, 0x400uLL, 0, 0);
        [v16 appendBytes:v102 length:v102[0]];
        ++v43;
        v44 += 456;
      }

      while (v43 < v31->nelts);
      v42 = &v72;
      v3 = v58;
      v41 = v60;
    }
  }

LABEL_26:
  apr_pool_destroy(v26);
  v52 = [v16 copy];
  [v18 setObject:v52 forKeyedSubscript:@"capture"];

  v61 = 0;
  v53 = [NSKeyedArchiver archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v61];
  v54 = v61;
  v55 = v54;
  if (v54)
  {
    v56 = [v54 localizedDescription];
    NSLog(@"Failed to encode datatip data: %@", v56);
  }

  return v53;
}

id GTMTLGuestAppClient_allCaptureObjects(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 6);
  v2 = GTMTLGuestAppClient_allCaptureObjectsUnsafe(a1);
  os_unfair_lock_unlock(a1 + 6);

  return v2;
}

id GTMTLGuestAppClient_allCaptureObjectsUnsafe(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 24));
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 80), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 80);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = copyDYMTLCommandQueueInfo(*(*(&v14 + 1) + 8 * i));
        [v2 addObject:{v8, v14}];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = objc_alloc_init(GTCaptureObjects);
  v10 = GTMTLGuestAppClient_captureDevicesUnsafe(a1);
  [v9 setDevices:v10];

  [v9 setCommandQueues:v2];
  v11 = +[GTMTLCaptureScopeInfo allCaptureScopes];
  [v9 setCaptureScopes:v11];

  v12 = AllMetalLayers();
  [v9 setMetalLayers:v12];

  return v9;
}

id copyDYMTLCommandQueueInfo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLCommandQueueInfo);
  [v2 setStreamRef:{objc_msgSend(v1, "streamRef")}];
  [v2 setDeviceAddress:{objc_msgSend(v1, "deviceAddress")}];
  [v2 setDeviceStreamRef:{objc_msgSend(v1, "deviceStreamRef")}];
  [v2 setToolsDeviceAddress:{objc_msgSend(v1, "toolsDeviceAddress")}];
  [v2 setQueueAddress:{objc_msgSend(v1, "queueAddress")}];
  [v2 setToolsQueueAddress:{objc_msgSend(v1, "toolsQueueAddress")}];
  v3 = [v1 label];
  [v2 setLabel:v3];

  [v2 setCanBeCaptured:1];
  [v2 setIsOpenGLQueue:0];
  v4 = [v1 isInternalQueue];

  [v2 setIsInternalQueue:v4];

  return v2;
}

id GTMTLGuestAppClient_captureDevicesUnsafe(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 24));
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 88), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 88);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = DEVICEOBJECT(v8);
        v10 = newProfileWithMTLDevice(v9);

        [v10 setStreamRef:{objc_msgSend(v8, "streamReference", v12)}];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

id GTMTLGuestAppClient_getTelemetry(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1, a2);
  memset(v47, 0, 512);
  GTTelemetry_stats(v47);
  v2 = objc_alloc_init(NSMutableArray);
  for (i = 0; i != 128; i += 2)
  {
    v4 = *&v47[i];
    if (!v4)
    {
      break;
    }

    v5 = objc_alloc_init(GTTelemetryLayerObject);
    [v5 setStreamRef:v4];
    [v5 setFrames:*(&v47[i + 1] + 1)];
    v6 = objc_alloc_init(GTTelemetryRecordObject);
    [v5 setFps:v6];

    v7 = DWORD2(v47[i]);
    v8 = [v5 fps];
    LODWORD(v9) = v7;
    [v8 setAverage:v9];

    v10 = HIDWORD(v47[i]);
    v11 = [v5 fps];
    LODWORD(v12) = v10;
    [v11 setMin:v12];

    v13 = v47[i + 1];
    v14 = [v5 fps];
    LODWORD(v15) = v13;
    [v14 setMax:v15];

    [v2 addObject:v5];
  }

  v16 = objc_alloc_init(NSMutableArray);
  for (j = 0; j != 8; j += 2)
  {
    v18 = *&v47[j + 1152];
    if (!v18)
    {
      break;
    }

    v19 = objc_alloc_init(GTTelemetryDeviceObject);
    [v19 setStreamRef:v18];
    [v19 setCommits:*(&v47[j + 1153] + 1)];
    v20 = objc_alloc_init(GTTelemetryRecordObject);
    [v19 setGpuTime:v20];

    v21 = DWORD2(v47[j + 1152]);
    v22 = [v19 gpuTime];
    LODWORD(v23) = v21;
    [v22 setAverage:v23];

    v24 = HIDWORD(v47[j + 1152]);
    v25 = [v19 gpuTime];
    LODWORD(v26) = v24;
    [v25 setMin:v26];

    v27 = v47[j + 1153];
    v28 = [v19 gpuTime];
    LODWORD(v29) = v27;
    [v28 setMax:v29];

    [v16 addObject:v19];
  }

  v30 = objc_alloc_init(NSMutableArray);
  for (k = 0; k != 1024; k += 2)
  {
    v32 = &v47[k];
    v33 = *&v47[k + 128];
    if (!v33)
    {
      break;
    }

    v34 = objc_alloc_init(GTTelemetryQueueObject);
    [v34 setStreamRef:v33];
    [v34 setCommits:*(v32 + 259)];
    v35 = objc_alloc_init(GTTelemetryRecordObject);
    [v34 setGpuTime:v35];

    v36 = *(v32 + 514);
    v37 = [v34 gpuTime];
    LODWORD(v38) = v36;
    [v37 setAverage:v38];

    v39 = *(v32 + 515);
    v40 = [v34 gpuTime];
    LODWORD(v41) = v39;
    [v40 setMin:v41];

    v42 = *(v32 + 516);
    v43 = [v34 gpuTime];
    LODWORD(v44) = v42;
    [v43 setMax:v44];

    [v30 addObject:v34];
  }

  v45 = objc_alloc_init(GTTelemetryStatistics);
  [v45 setLayers:v2];
  [v45 setQueues:v30];
  [v45 setDevices:v16];

  return v45;
}

void GTMTLGuestAppClient_reportTelemetry(uint64_t a1, uint64_t a2)
{
  v2 = *(g_guestAppClientMTL + 8);
  if (v2)
  {
    v3 = GTMTLGuestAppClient_getTelemetry(a1, a2);
    [v2 notifyStatistics:v3];
  }
}

id newDYMTLCommandQueueInfo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLCommandQueueInfo);
  [v2 setStreamRef:{objc_msgSend(v1, "streamReference")}];
  v3 = [v1 device];
  [v2 setDeviceAddress:v3];

  v4 = [v1 device];
  v5 = [v4 baseObject];
  [v2 setToolsDeviceAddress:v5];

  [v2 setQueueAddress:v1];
  v6 = [v1 baseObject];
  [v2 setToolsQueueAddress:v6];

  v7 = [v1 label];

  [v2 setLabel:v7];
  [v2 setCanBeCaptured:1];
  [v2 setIsOpenGLQueue:0];
  v8 = [v2 label];
  [v2 setIsInternalQueue:{IsAppleInternalLabel(objc_msgSend(v8, "UTF8String"))}];

  return v2;
}

id newDYMTL4CommandQueueInfo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLCommandQueueInfo);
  [v2 setStreamRef:{objc_msgSend(v1, "streamReference")}];
  v3 = [v1 device];
  [v2 setDeviceAddress:v3];

  v4 = [v1 device];
  v5 = [v4 baseObject];
  [v2 setToolsDeviceAddress:v5];

  [v2 setQueueAddress:v1];
  v6 = [v1 baseObject];
  [v2 setToolsQueueAddress:v6];

  v7 = [v1 label];

  [v2 setLabel:v7];
  [v2 setCanBeCaptured:1];
  [v2 setIsOpenGLQueue:0];
  v8 = [v2 label];
  [v2 setIsInternalQueue:{IsAppleInternalLabel(objc_msgSend(v8, "UTF8String"))}];

  return v2;
}

void GTMTLGuestAppClientUpdateCAMetalLayerInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 24));
  v6 = objc_alloc_init(GTCaptureObjects);
  v4 = GTMTLGuestAppClient_captureDevicesUnsafe(a1);
  [v6 setDevices:v4];

  [v6 setCommandQueues:*(a1 + 80)];
  v5 = +[GTMTLCaptureScopeInfo allCaptureScopes];
  [v6 setCaptureScopes:v5];

  [v6 setMetalLayers:v3];
  [*a1 notifyCaptureObjectsChanged:v6];
  os_unfair_lock_unlock((a1 + 24));
}

void GTMTLGuestAppClientUpdateMTLDeviceInfo(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v5 = GTMTLGuestAppClient_captureDevicesUnsafe(a1);
  v2 = objc_alloc_init(GTCaptureObjects);
  [v2 setDevices:v5];
  [v2 setCommandQueues:*(a1 + 80)];
  v3 = +[GTMTLCaptureScopeInfo allCaptureScopes];
  [v2 setCaptureScopes:v3];

  v4 = AllMetalLayers();
  [v2 setMetalLayers:v4];

  [*a1 notifyCaptureObjectsChanged:v2];
  os_unfair_lock_unlock((a1 + 24));
}

GTMTLGuestAppClient *GTMTLGuestAppClient_interposeCommonInit()
{
  v0 = objc_autoreleasePoolPush();
  inited = GTMTLGuestAppClient_initPlatform(v0);
  objc_autoreleasePoolPop(v0);
  return inited;
}

id GTMTLGuestAppClient_copyDeviceProfiles(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((a1 + 24));
  v3 = [*(a1 + 72) copy];
  os_unfair_lock_unlock((a1 + 24));
  objc_autoreleasePoolPop(v2);

  return v3;
}

void GTMTLGuestAppClientSendMTLCaptureScopeInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 24));
  v6 = objc_alloc_init(GTCaptureObjects);
  v4 = GTMTLGuestAppClient_captureDevicesUnsafe(a1);
  [v6 setDevices:v4];

  [v6 setCommandQueues:*(a1 + 80)];
  [v6 setCaptureScopes:v3];

  v5 = AllMetalLayers();
  [v6 setMetalLayers:v5];

  [*a1 notifyCaptureObjectsChanged:v6];
  os_unfair_lock_unlock((a1 + 24));
}

void GTMTLGuestAppClientUpdateMTLCommandQueueInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((a1 + 24));
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 80);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 streamRef];
          if (v11 == [v3 streamReference])
          {
            v12 = [v3 label];
            [v10 setLabel:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *a1;
  v14 = GTMTLGuestAppClient_allCaptureObjectsUnsafe(a1);
  [v13 notifyCaptureObjectsChanged:v14];

  os_unfair_lock_unlock((a1 + 24));
  objc_autoreleasePoolPop(v4);
}

void GTMTLGuestAppClientAddMTLCommandQueueInfo(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v9 device];
  v5 = DEVICEOBJECT(v4);
  _setMTLDeviceProfile(a1, v5);

  v6 = newDYMTLCommandQueueInfo(v9);
  os_unfair_lock_lock((a1 + 24));
  [*(a1 + 80) addObject:v6];
  GTTelemetry_addCommandQueue(v9);
  v7 = *a1;
  v8 = GTMTLGuestAppClient_allCaptureObjectsUnsafe(a1);
  [v7 notifyCaptureObjectsChanged:v8];

  os_unfair_lock_unlock((a1 + 24));
  objc_autoreleasePoolPop(v3);
}

void _setMTLDeviceProfile(uint64_t a1, void *a2)
{
  v9 = a2;
  os_unfair_lock_lock((a1 + 24));
  v3 = [*(a1 + 72) count];
  v4 = 0;
  if (v3)
  {
    while (1)
    {
      v5 = [*(a1 + 72) objectAtIndexedSubscript:v4];
      v6 = [v5 device];

      if (v6 == v9)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v4 == v3)
  {
LABEL_6:
    v7 = DEVICEOBJECT(v9);
    v8 = newProfileWithMTLDevice(v7);

    [v8 setDevice:v9];
    [*(a1 + 72) addObject:v8];
  }

  os_unfair_lock_unlock((a1 + 24));
}

void GTMTLGuestAppClientRemoveMTLCommandQueueInfo(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((a1 + 24));
  v4 = [*(a1 + 80) count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 80) objectAtIndex:v6];
      v8 = [v7 streamRef];
      v9 = [v13 streamReference];

      if (v8 == v9)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [*(a1 + 80) lastObject];
  [*(a1 + 80) replaceObjectAtIndex:v6 withObject:v10];
  [*(a1 + 80) removeLastObject];
  GTTelemetry_removeCommandQueue(v13);
  v11 = *a1;
  v12 = GTMTLGuestAppClient_allCaptureObjectsUnsafe(a1);
  [v11 notifyCaptureObjectsChanged:v12];

  os_unfair_lock_unlock((a1 + 24));
  objc_autoreleasePoolPop(v3);
}

void GTMTLGuestAppClientAddMTL4CommandQueueInfo(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v9 device];
  v5 = DEVICEOBJECT(v4);
  _setMTLDeviceProfile(a1, v5);

  v6 = newDYMTL4CommandQueueInfo(v9);
  os_unfair_lock_lock((a1 + 24));
  [*(a1 + 80) addObject:v6];
  GTTelemetry_addMTL4CommandQueue(v9);
  v7 = *a1;
  v8 = GTMTLGuestAppClient_allCaptureObjectsUnsafe(a1);
  [v7 notifyCaptureObjectsChanged:v8];

  os_unfair_lock_unlock((a1 + 24));
  objc_autoreleasePoolPop(v3);
}

void GTMTLGuestAppClientRemoveMTL4CommandQueueInfo(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((a1 + 24));
  v4 = [*(a1 + 80) count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 80) objectAtIndex:v6];
      v8 = [v7 streamRef];
      v9 = [v13 streamReference];

      if (v8 == v9)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [*(a1 + 80) lastObject];
  [*(a1 + 80) replaceObjectAtIndex:v6 withObject:v10];
  [*(a1 + 80) removeLastObject];
  GTTelemetry_removeMTL4CommandQueue(v13);
  v11 = *a1;
  v12 = GTMTLGuestAppClient_allCaptureObjectsUnsafe(a1);
  [v11 notifyCaptureObjectsChanged:v12];

  os_unfair_lock_unlock((a1 + 24));
  objc_autoreleasePoolPop(v3);
}

void GTMTLGuestAppClient_addCaptureDevice(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 baseObject];
  os_unfair_lock_lock((a1 + 24));
  if ([*(a1 + 88) containsObject:v5])
  {
    os_unfair_lock_unlock((a1 + 24));
  }

  else
  {
    [*(a1 + 88) addObject:v5];
    os_unfair_lock_unlock((a1 + 24));
    GTMTLGuestAppClientUpdateMTLDeviceInfo(a1);
    GTTelemetry_addDevice(v5);
  }

  objc_autoreleasePoolPop(v3);
}

id GTMTLGuestAppClient_copyCaptureDevices(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((a1 + 24));
  v3 = [*(a1 + 88) copy];
  os_unfair_lock_unlock((a1 + 24));
  objc_autoreleasePoolPop(v2);

  return v3;
}

void FillCaptureDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v4 = *(a1 + 80);
  *(a1 + 80) = 0;

  v42 = [v3 objectForKeyedSubscript:@"HostCaptureArchivePath"];
  v41 = NSTemporaryDirectory();

  v5 = [v3 objectForKeyedSubscript:@"Serial"];
  v6 = [v5 unsignedIntValue];

  *(a1 + 32) = v6;
  v7 = [v3 objectForKeyedSubscript:@"TriggerFrame"];
  *(a1 + 40) = [v7 unsignedLongLongValue];

  v8 = [v3 objectForKeyedSubscript:@"FrameLimit"];
  *(a1 + 48) = [v8 unsignedLongLongValue];

  v43 = v3;
  v40 = [v43 objectForKeyedSubscript:@"IsBoundaryLess"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v40 BOOLValue])
  {
    *(a1 + 72) = 0;
    *(a1 + 74) = 1;
  }

  else
  {
    v9 = [v43 objectForKeyedSubscript:@"CaptureDeviceName"];
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = g_guestAppClientMTL;
    os_unfair_lock_lock((g_guestAppClientMTL + 24));
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = *(v10 + 88);
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v12)
    {
      v13 = *v45;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v44 + 1) + 8 * i);
          v16 = [v15 name];
          v17 = [v16 isEqualToString:v9];

          if (v17)
          {
            v12 = v15;
            goto LABEL_15;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    os_unfair_lock_unlock((v10 + 24));
    if (v12)
    {
      *(a1 + 72) = *(a1 + 48) != 0;
      v18 = [v12 traceStream];
      if (v18)
      {
        v19 = *v18;
      }

      else
      {
        v19 = 0;
      }

      *a1 = v19;
    }

    else
    {
LABEL_18:
      v20 = [v43 objectForKeyedSubscript:@"CaptureLayerAddress"];
      v21 = [v20 unsignedLongLongValue];

      if (v21 && (FindMetalLayerWithAddress(v21), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        *(a1 + 72) = 6;
        if (objc_opt_respondsToSelector())
        {
          v22 = [v12 streamReference];
        }

        else
        {
          v22 = 0;
        }

        *(a1 + 24) = v22;
        v33 = [v12 device];
        *a1 = [v33 streamReference];
      }

      else
      {
        v23 = [v43 objectForKeyedSubscript:@"CaptureScopeID"];
        v24 = v23;
        if (v23)
        {
          v12 = +[GTMTLCaptureScopeInfo getInfoWithStreamRef:](GTMTLCaptureScopeInfo, "getInfoWithStreamRef:", [v23 unsignedLongLongValue]);
        }

        else
        {
          v12 = 0;
        }

        v39 = [v43 objectForKeyedSubscript:@"CaptureScopeAddress"];
        if (!v12 && v39)
        {
          v12 = +[GTMTLCaptureScopeInfo getInfoWithAddress:](GTMTLCaptureScopeInfo, "getInfoWithAddress:", [v39 unsignedLongLongValue]);
        }

        if (v12)
        {
          *(a1 + 72) = 4;
          *(a1 + 16) = [v12 scopeStreamRef];
          *(a1 + 8) = [v12 commandQueueStreamRef];
          *a1 = [v12 deviceStreamRef];
        }

        else
        {
          v25 = [v43 objectForKeyedSubscript:@"CaptureCommandQueueAddress"];
          v26 = [v25 unsignedLongLongValue];

          if (!v26)
          {
            goto LABEL_50;
          }

          v27 = g_guestAppClientMTL;
          os_unfair_lock_lock((g_guestAppClientMTL + 24));
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v38 = v27;
          v28 = *(v27 + 80);
          v29 = [v28 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v29)
          {
            v30 = *v45;
            while (2)
            {
              for (j = 0; j != v29; j = j + 1)
              {
                if (*v45 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v44 + 1) + 8 * j);
                if ([v32 queueAddress] == v26)
                {
                  v29 = v32;
                  goto LABEL_45;
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v44 objects:v48 count:16];
              if (v29)
              {
                continue;
              }

              break;
            }
          }

LABEL_45:

          os_unfair_lock_unlock(v38 + 6);
          if (v29)
          {
            if (*(a1 + 48))
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            *(a1 + 72) = v34;
            *(a1 + 8) = [v29 streamRef];
            *a1 = [v29 deviceStreamRef];
          }

          else
          {
LABEL_50:
            *(a1 + 72) = 5;
          }
        }
      }
    }
  }

  v35 = [v43 objectForKeyedSubscript:@"SuspendAfterCompletion"];
  *(a1 + 73) = [v35 BOOLValue];

  v36 = v41;
  *(a1 + 56) = [v41 UTF8String];
  v37 = v42;
  *(a1 + 64) = [v42 UTF8String];
  *(a1 + 78) = 1;
}

void GTMTLGuestAppClient_notifyCaptureRequest(uint64_t *a1)
{
  v2 = [GTCaptureDescriptor alloc];
  atomic_fetch_add(g_requestID, 1u);
  v5 = [v2 initWithRequestID:?];
  [v5 setTriggerHitsToStart:a1[5]];
  [v5 setTriggerHitsToEnd:a1[6]];
  [v5 setSuspendAfterCapture:*(a1 + 73)];
  [v5 setIgnoreUnusedResources:*(a1 + 77)];
  v3 = 0;
  v4 = *(a1 + 72);
  if (v4 <= 2)
  {
    if (*(a1 + 72))
    {
      if (v4 == 1)
      {
        v3 = *a1;
        goto LABEL_17;
      }

      if (v4 != 2)
      {
        goto LABEL_17;
      }

      v3 = a1[1];
    }

    else
    {
      v3 = *a1;
    }

    [v5 setTriggerHitsToEnd:-1];
    goto LABEL_17;
  }

  if (*(a1 + 72) > 4u)
  {
    if (v4 == 5 || v4 == 6)
    {
      v3 = a1[3];
    }
  }

  else if (v4 == 3)
  {
    v3 = a1[1];
  }

  else if (v4 == 4)
  {
    v3 = a1[2];
  }

LABEL_17:
  [v5 setStreamRef:v3];
  dispatch_group_wait(*(g_guestAppClientMTL + 16), 0xFFFFFFFFFFFFFFFFLL);
  [*g_guestAppClientMTL notifyCaptureRequest:v5];
}

void GTMTLGuestAppClient_notifyUnsupportedFenum(void *a1)
{
  v2 = a1;
  v3 = objc_autoreleasePoolPush();
  v4 = g_guestAppClientMTL;
  os_unfair_lock_lock((g_guestAppClientMTL + 24));
  if ((*(v4 + 120) & 1) == 0)
  {
    objc_storeStrong((v4 + 64), a1);
    [*v4 notifyUnsupportedFenum:v2];
    if (*v4)
    {
      *(v4 + 120) = 1;
    }

    if ((dword_31F7C8 & 2) != 0)
    {
      v5 = [v2 asError];
      v6 = v5;
      if (s_logUsingOsLog == 1)
      {
        v7 = gt_tagged_log(4);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v27 = [v6 code];
          v8 = [v6 localizedDescription];
          v9 = [v8 UTF8String];
          if (v9)
          {
            v10 = v9;
          }

          else
          {
            v10 = "(unknown)";
          }

          v11 = [v6 localizedFailureReason];
          v12 = [v11 UTF8String];
          if (v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = "";
          }

          v14 = [v6 localizedRecoverySuggestion];
          v15 = [v14 UTF8String];
          *buf = 134218754;
          v16 = "none";
          v30 = v27;
          if (v15)
          {
            v16 = v15;
          }

          v31 = 2080;
          v32 = v10;
          v33 = 2080;
          v34 = v13;
          v35 = 2080;
          v36 = v16;
          _os_log_fault_impl(&dword_0, v7, OS_LOG_TYPE_FAULT, "fail: error (%ld): %s %s [recommendation: %s]", buf, 0x2Au);
        }
      }

      else
      {
        v28 = __stderrp;
        v17 = [v5 code];
        v7 = [v6 localizedDescription];
        v18 = [v7 UTF8String];
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = "(unknown)";
        }

        v20 = [v6 localizedFailureReason];
        v21 = [v20 UTF8String];
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = "";
        }

        v23 = [v6 localizedRecoverySuggestion];
        v24 = [v23 UTF8String];
        v25 = "none";
        if (v24)
        {
          v25 = v24;
        }

        v26 = [NSString stringWithFormat:@"fail: error (%ld): %s %s [recommendation: %s]", v17, v19, v22, v25];
        fprintf(v28, "%s\n", [v26 UTF8String]);
      }
    }
  }

  os_unfair_lock_unlock((g_guestAppClientMTL + 24));
  objc_autoreleasePoolPop(v3);
}

BOOL GTMTLGuestAppClient_unsupportedFenumDetected()
{
  os_unfair_lock_lock((g_guestAppClientMTL + 24));
  v0 = *(g_guestAppClientMTL + 64) != 0;
  os_unfair_lock_unlock((g_guestAppClientMTL + 24));
  return v0;
}

id GTMTLGuestAppClient_getUnsupportedFenumInfo()
{
  os_unfair_lock_lock((g_guestAppClientMTL + 24));
  v0 = *(g_guestAppClientMTL + 64);
  os_unfair_lock_unlock((g_guestAppClientMTL + 24));

  return v0;
}

void MTL4CommandQueueTakeSnapshot(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 176);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) != 2)
  {
    if (*(v1 + 176))
    {
      v10 = [*(v1 + 20) allObjects];
      v11 = [v10 copy];
      v12 = *(v2 + 21);
      *(v2 + 21) = v11;

      v3 = 0;
    }

    goto LABEL_22;
  }

  if ((*(v1 + 176) & 1) == 0)
  {
    if ([*(v1 + 20) count])
    {
      s();
      v5 = v4;
      *(v4 + 8) |= 0x80u;
      if (*(v2 + 21))
      {
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v6 = *(v2 + 4);
        GTTraceContext_pushEncoderWithStream(*(v2 + 3), &v42);
        v7 = v43;
        *(v43 + 8) = -15150;
        v8 = BYTE9(v44);
        if (BYTE9(v44) > 0x28uLL)
        {
          v13 = *(*(&v42 + 1) + 24);
          v14 = BYTE10(v44);
          ++BYTE10(v44);
          v9 = GTTraceMemPool_allocateBytes(v13, *(&v43 + 1), v14 | 0x1800000000) + 16;
          v8 = v14;
        }

        else
        {
          v9 = (v7 + BYTE9(v44));
          BYTE9(v44) += 24;
        }

        *(v7 + 13) = v8;
        v15 = [v2 traceStream];
        if (v15)
        {
          v16 = *v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = [*(v2 + 21) count];
        v18 = [*(v2 + 21) count];
        __chkstk_darwin(v18, 8 * v18);
        v20 = (&v42 - v19);
        bzero(&v42 - v19, v21);
        v22 = StreamNSArray(&v42, v20, *(v2 + 21));
        *v9 = v16;
        *(v9 + 1) = v17;
        v9[16] = v22;
        *(v9 + 17) = 0;
        *(v9 + 5) = 0;
        v23 = v43;
        *v5 = v44;
        *(v5 + 8) = BYTE8(v44);
        *(v23 + 15) |= 8u;
      }

      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v24 = *(v2 + 4);
      GTTraceContext_pushEncoderWithStream(*(v2 + 3), &v42);
      v25 = v43;
      *(v43 + 8) = -15160;
      v26 = BYTE9(v44);
      if (BYTE9(v44) > 0x28uLL)
      {
        v28 = *(*(&v42 + 1) + 24);
        v29 = BYTE10(v44);
        ++BYTE10(v44);
        v27 = GTTraceMemPool_allocateBytes(v28, *(&v43 + 1), v29 | 0x1800000000) + 16;
        v26 = v29;
      }

      else
      {
        v27 = (v25 + BYTE9(v44));
        BYTE9(v44) += 24;
      }

      *(v25 + 13) = v26;
      v30 = [v2 traceStream];
      if (v30)
      {
        v31 = *v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = [*(v2 + 20) count];
      v33 = [*(v2 + 20) allObjects];
      v34 = [v33 count];
      __chkstk_darwin(v34, 8 * v34);
      v36 = (&v42 - v35);
      bzero(&v42 - v35, v37);
      v38 = [*(v2 + 20) allObjects];
      v39 = StreamNSArray(&v42, v36, v38);
      *v27 = v31;
      *(v27 + 1) = v32;
      v27[16] = v39;
      *(v27 + 17) = 0;
      *(v27 + 5) = 0;

      v40 = v43;
      *v5 = v44;
      v41 = BYTE8(v44);
      *(v40 + 15) |= 8u;
      *(v5 + 8) = v41 & 0x7F;
    }

    v3 = 1;
LABEL_22:
    *(v2 + 176) = v3;
  }
}

void MTL4AddResidencySet(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4[20] addObject:v3];
    ResidencySetTakeSnapshotInternal(v3, 0);
  }
}

void MTL4CommandQueueCaptureResidencySetSnapshots(void *a1)
{
  v1 = a1;
  MTL4CommandQueueTakeSnapshot(v1);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = v1[20];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        ResidencySetTakeSnapshotInternal(*(*(&v7 + 1) + 8 * v6), 0);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_5FE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4417(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TranslateGTMTL4FunctionDescriptorReflection(void *a1, char a2, void *a3, int a4)
{
  v6 = a1;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 functionDescriptor];
    }

    else
    {
      v7 = v6;
    }

    v9 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v10 library];
      v12 = DEVICEOBJECT(v11);

      v13 = [v10 name];
      v14 = [v12 reflectionForFunctionWithName:v13];

      if (v14)
      {
        if (objc_opt_respondsToSelector())
        {
          v42 = v12;
          v43 = v10;
          v44 = a2;
          v45 = v9;
          v46 = v6;
          v15 = [v14 attributes];
          v40 = [v15 count];

          v47 = a3[27];
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v41 = v14;
          obj = [v14 attributes];
          v16 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v51;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v51 != v18)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v50 + 1) + 8 * i);
                v21 = [v20 name];
                v22 = [v21 UTF8String];
                v23 = [v20 name];
                if ([v23 UTF8String])
                {
                  v24 = [v20 name];
                  v25 = strlen([v24 UTF8String]);
                  v26 = v25 + 1;
                  if (v25 == -1)
                  {
                    v27 = 0;
                  }

                  else
                  {
                    v27 = a3[29];
                  }

                  a3[29] += v26;
                  if (a4)
                  {
                    memcpy(v27, v22, v26);
                  }
                }

                else
                {
                  v27 = 0;
                }

                v28 = [v20 attributeIndex];
                v29 = [v20 attributeType];
                v30 = [v20 isActive];
                v31 = [v20 isPatchData];
                v32 = [v20 isPatchControlPointData];
                if (a4)
                {
                  v33 = a3[27];
                  *v33 = v27;
                  *(v33 + 8) = v28;
                  *(v33 + 12) = v29;
                  *(v33 + 13) = v30;
                  *(v33 + 14) = v31;
                  *(v33 + 15) = v32;
                }

                a3[27] += 16;
              }

              v17 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
            }

            while (v17);
          }

          v9 = v45;
          v6 = v46;
          a2 = v44;
          v12 = v42;
          v10 = v43;
          v34 = v40;
          v14 = v41;
        }

        else
        {
          v34 = 0;
          v47 = 0;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v14 returnType], v35 = objc_claimAutoreleasedReturnValue(), v35, v35))
        {
          v36 = [v14 returnType];
          v37 = [v36 dataType];
        }

        else
        {
          v37 = -1;
        }

        if (a4)
        {
          v38 = a3[17];
          *v38 = v47;
          *(v38 + 8) = v34;
          *(v38 + 9) = v37;
          *(v38 + 10) = a2;
          *(v38 + 11) = 0;
          *(v38 + 15) = 0;
        }

        v8 = a3[17];
        a3[17] = v8 + 16;
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
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void SaveMTLComputePipelineReflectionMTL4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = DEVICEOBJECT(v7);
    v11 = [v7 reflection];
    context = objc_autoreleasePoolPush();
    objc_opt_class();
    v75 = v7;
    v79 = a1;
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
      if (objc_opt_respondsToSelector())
      {
        [v12 validationReflection];
      }

      else
      {
        [v12 reflection];
      }
      v13 = ;

      v11 = v13;
    }

    v14 = [v11 performanceStatistics];
    v93 = 0;
    v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v93];
    v70 = v93;

    v16 = 0;
    if (objc_opt_respondsToSelector())
    {
      v17 = [v11 pluginReturnData];
      v16 = GetPluginReturnData(v17);
    }

    v92 = 0u;
    memset(v91, 0, sizeof(v91));
    TranslateGTMTLComputePipelineReflection(v11, v91, 0);
    v18 = [v8 computeFunctionDescriptor];
    TranslateGTMTL4FunctionDescriptorReflection(v18, 2, v91, 0);

    [v15 bytes];
    v19 = [v15 length];
    v20 = *(&v92 + 1);
    [v16 bytes];
    v78 = v16;
    v21 = &v19[[v16 length] + v20];
    *(&v92 + 1) = v21;
    if (v9)
    {
      v22 = [v9 preloadedLibraries];
    }

    else
    {
      v22 = 0;
    }

    v72 = v10;
    v73 = v9;
    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
    v87 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v87 objects:v95 count:16];
    v76 = v15;
    v77 = v11;
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v88;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v88 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v87 + 1) + 8 * i);
          v30 = [v29 libraryPath];

          if (v30)
          {
            v31 = [v29 libraryPath];
            [v31 UTF8String];
            v32 = [v29 libraryPath];
            if ([v32 UTF8String])
            {
              v33 = [v29 libraryPath];
              v21 += strlen([v33 UTF8String]) + 1;
            }

            ++v26;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v25);
      *(&v92 + 1) = v21;
      v15 = v76;
      v11 = v77;
    }

    else
    {
      v26 = 0;
    }

    v34 = v23;

    *&v92 = v92 + 16 * v26;
    *(*(v79 + 16) + 14) = AllocatePipelineReflectionWithType(v79, v91, 0x78u);
    v35 = TranslateGTMTLComputePipelineReflection(v11, v91, 1);
    v74 = v8;
    v36 = [v8 computeFunctionDescriptor];
    *(v35 + 160) = TranslateGTMTL4FunctionDescriptorReflection(v36, 2, v91, 1);

    v37 = [v15 bytes];
    v38 = [v15 length];
    v39 = v38;
    if (v38)
    {
      v40 = *(&v92 + 1);
    }

    else
    {
      v40 = 0;
    }

    v41 = &v38[*(&v92 + 1)];
    memcpy(v40, v37, v38);
    *(v35 + 56) = v40;
    *(v35 + 64) = v39;
    v42 = [v78 bytes];
    v43 = [v78 length];
    v44 = v43;
    if (v43)
    {
      v45 = v41;
    }

    else
    {
      v45 = 0;
    }

    v46 = &v43[v41];
    *(&v92 + 1) = &v43[v41];
    memcpy(v45, v42, v43);
    *(v35 + 72) = v45;
    *(v35 + 80) = v44;
    if (v26)
    {
      v47 = v92;
    }

    else
    {
      v47 = 0;
    }

    v48 = v92 + 8 * v26;
    if (v26)
    {
      v49 = v92 + 8 * v26;
    }

    else
    {
      v49 = 0;
    }

    *(v35 + 40) = v47;
    *(v35 + 48) = v49;
    *&v92 = v48 + 8 * v26;
    *(v35 + 96) = 0;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v50 = v34;
    v51 = [v50 countByEnumeratingWithState:&v83 objects:v94 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v84;
      v80 = v35;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v84 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v83 + 1) + 8 * j);
          v56 = [v55 libraryPath];

          if (v56)
          {
            v57 = [v55 libraryPath];
            v58 = [v57 UTF8String];
            v59 = [v55 libraryPath];
            if ([v59 UTF8String])
            {
              v60 = [v55 libraryPath];
              v61 = strlen([v60 UTF8String]);
              v62 = v61 + 1;
              if (v61 == -1)
              {
                v63 = 0;
                *(&v92 + 1) = v46;
              }

              else
              {
                v64 = v52;
                v65 = v53;
                v66 = v50;
                v67 = &v46[v62];
                *(&v92 + 1) = &v46[v62];
                memcpy(v46, v58, v62);
                v63 = v46;
                v46 = v67;
                v50 = v66;
                v53 = v65;
                v52 = v64;
                v35 = v80;
              }

              *(*(v35 + 48) + 8 * *(v35 + 96)) = v63;
            }

            else
            {
              *(&v92 + 1) = v46;
              *(*(v35 + 48) + 8 * *(v35 + 96)) = 0;
            }

            v68 = *(v35 + 96);
            *(*(v35 + 40) + 8 * v68) = 0;
            *(v35 + 96) = v68 + 1;
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v83 objects:v94 count:16];
      }

      while (v52);
    }

    GTMTLComputePipelineReflection_resourceAccess(v35, v81);
    v69 = v81[1];
    *(v35 + 104) = v81[0];
    *(v35 + 120) = v69;
    *(v35 + 136) = v81[2];
    *(v35 + 152) = v82;
    v9 = v73;
    if (objc_opt_respondsToSelector())
    {
      if ([v72 supportIndirectCommandBuffers])
      {
        *v35 = [v72 uniqueIdentifier];
        *(v35 + 8) = [v72 resourceIndex];
        if (objc_opt_respondsToSelector())
        {
          *(v35 + 16) = [v72 gpuResourceID];
        }
      }
    }

    v8 = v74;
    v7 = v75;
    if (objc_opt_respondsToSelector())
    {
      *(v35 + 88) = [v72 allocatedSize];
    }

    objc_autoreleasePoolPop(context);
  }
}

id GetPluginReturnData(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSPropertyListSerialization propertyListWithData:a1 options:0 format:0 error:0];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 objectForKeyedSubscript:@"metalLib"];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t AllocatePipelineReflectionWithType(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = vdupq_n_s64(7uLL);
  v7 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  do
  {
    v5 = vaddq_s64(vandq_s8(vaddq_s64(*(a2 + v4), v6), v7), v5);
    v4 += 16;
  }

  while (v4 != 240);
  v8 = *(*(a1 + 8) + 24);
  v9 = *(a1 + 24);
  v10 = *(a1 + 42);
  *(a1 + 42) = v10 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v8, v9, (vaddvq_s64(v5) << 32) | (a3 << 16) | v10 | 0x100);
  v12 = 0;
  v13 = Bytes + 16;
  do
  {
    if (((*(a2 + v12) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v13 += (*(a2 + v12) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + v12) = v14;
    v12 += 8;
  }

  while (v12 != 240);
  return Bytes[8];
}

void SaveMTLComputePipelineReflection(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    v84 = v12;
    v13 = objc_autoreleasePoolPush();
    objc_opt_class();
    v88 = a1;
    if (objc_opt_isKindOfClass())
    {
      v14 = v9;
      if (objc_opt_respondsToSelector())
      {
        [v14 validationReflection];
      }

      else
      {
        [v14 reflection];
      }
      v15 = ;

      v10 = v15;
    }

    v16 = [v10 performanceStatistics];
    v103 = 0;
    v87 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v103];
    v86 = v103;

    v17 = 0;
    if (objc_opt_respondsToSelector())
    {
      v18 = [v10 pluginReturnData];
      v17 = GetPluginReturnData(v18);
    }

    v102 = 0u;
    memset(v101, 0, sizeof(v101));
    TranslateGTMTLComputePipelineReflection(v10, v101, 0);
    [v87 bytes];
    v19 = [v87 length];
    v20 = *(&v102 + 1);
    [v17 bytes];
    v85 = v17;
    v21 = &v19[[v17 length] + v20];
    *(&v102 + 1) = v21;
    if (!v11 && v84)
    {
      v11 = objc_alloc_init(MTLComputePipelineDescriptor);
      [v11 setComputeFunction:v84];
    }

    if (v11)
    {
      v22 = [v9 device];
      v100 = v86;
      v23 = [v22 loadDynamicLibrariesForComputeDescriptor:v11 error:&v100];
      v24 = v100;

      v86 = v24;
    }

    else
    {
      v23 = 0;
    }

    v83 = v9;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v96 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v96 objects:v105 count:16];
    v81 = v11;
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v97;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v97 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v96 + 1) + 8 * i);
          v32 = [v31 libraryPath];

          if (v32)
          {
            v33 = [v31 libraryPath];
            [v33 UTF8String];
            v34 = [v31 libraryPath];
            if ([v34 UTF8String])
            {
              v35 = [v31 libraryPath];
              v21 += strlen([v35 UTF8String]) + 1;
            }

            ++v28;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v96 objects:v105 count:16];
      }

      while (v27);
      *(&v102 + 1) = v21;
    }

    else
    {
      v28 = 0;
    }

    v36 = v25;

    *&v102 = v102 + 16 * v28;
    *(*(v88 + 16) + 14) = AllocatePipelineReflectionWithType(v88, v101, 0x78u);
    v82 = v10;
    v37 = TranslateGTMTLComputePipelineReflection(v10, v101, 1);
    v38 = [v87 bytes];
    v39 = [v87 length];
    v40 = v39;
    if (v39)
    {
      v41 = *(&v102 + 1);
    }

    else
    {
      v41 = 0;
    }

    v42 = &v39[*(&v102 + 1)];
    memcpy(v41, v38, v39);
    *(v37 + 56) = v41;
    *(v37 + 64) = v40;
    v43 = [v85 bytes];
    v44 = [v85 length];
    v45 = v44;
    if (v44)
    {
      v46 = v42;
    }

    else
    {
      v46 = 0;
    }

    v47 = &v44[v42];
    *(&v102 + 1) = &v44[v42];
    memcpy(v46, v43, v44);
    *(v37 + 72) = v46;
    *(v37 + 80) = v45;
    if (v28)
    {
      v48 = v102;
    }

    else
    {
      v48 = 0;
    }

    v49 = v102 + 8 * v28;
    if (v28)
    {
      v50 = v102 + 8 * v28;
    }

    else
    {
      v50 = 0;
    }

    *(v37 + 40) = v48;
    *(v37 + 48) = v50;
    *&v102 = v49 + 8 * v28;
    *(v37 + 96) = 0;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v51 = v36;
    v52 = [v51 countByEnumeratingWithState:&v92 objects:v104 count:16];
    v89 = v51;
    if (v52)
    {
      v53 = v52;
      v54 = *v93;
      do
      {
        for (j = 0; j != v53; j = j + 1)
        {
          if (*v93 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v92 + 1) + 8 * j);
          v57 = [v56 libraryPath];

          if (v57)
          {
            v58 = [v56 libraryPath];
            v59 = [v58 UTF8String];
            v60 = [v56 libraryPath];
            if ([v60 UTF8String])
            {
              v61 = [v56 libraryPath];
              v62 = strlen([v61 UTF8String]);
              v63 = v62 + 1;
              if (v62 == -1)
              {
                v64 = 0;
                *(&v102 + 1) = v47;
              }

              else
              {
                v65 = &v47[v63];
                *(&v102 + 1) = &v47[v63];
                memcpy(v47, v59, v63);
                v64 = v47;
                v47 = v65;
                v51 = v89;
              }

              *(*(v37 + 48) + 8 * *(v37 + 96)) = v64;
            }

            else
            {
              *(&v102 + 1) = v47;
              *(*(v37 + 48) + 8 * *(v37 + 96)) = 0;
            }

            v66 = *(v37 + 96);
            *(*(v37 + 40) + 8 * v66) = 0;
            *(v37 + 96) = v66 + 1;
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v53);
    }

    GTMTLComputePipelineReflection_resourceAccess(v37, v90);
    v67 = v90[1];
    *(v37 + 104) = v90[0];
    *(v37 + 120) = v67;
    *(v37 + 136) = v90[2];
    *(v37 + 152) = v91;
    v11 = v81;
    v68 = [v81 stageInputDescriptor];
    v10 = v82;
    if (v68)
    {
      v69 = 0;
      while (1)
      {
        v70 = [v68 attributes];
        v71 = [v70 objectAtIndexedSubscript:v69];

        if ([v71 format])
        {
          v72 = [v71 bufferIndex];
          if (v72 <= 0x1E)
          {
            v73 = v72;
            v74 = [v68 layouts];
            v75 = [v74 objectAtIndexedSubscript:v73];
            v76 = [v75 stepFunction];

            if ((v76 - 7) < 2)
            {
              break;
            }
          }
        }

        if (++v69 == 31)
        {
          goto LABEL_61;
        }
      }

      v78 = [v81 stageInputDescriptor];
      v79 = [v78 indexBufferIndex];

      *(v37 + 104 + 16 * (v79 >> 6)) |= 1 << v79;
    }

    else
    {
LABEL_61:
    }

    v9 = v83;
    v77 = DEVICEOBJECT(v83);
    if (objc_opt_respondsToSelector())
    {
      if ([v77 supportIndirectCommandBuffers])
      {
        *v37 = [v77 uniqueIdentifier];
        *(v37 + 8) = [v77 resourceIndex];
        if (objc_opt_respondsToSelector())
        {
          *(v37 + 16) = [v77 gpuResourceID];
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      *(v37 + 88) = [v77 allocatedSize];
    }

    objc_autoreleasePoolPop(v80);
    v12 = v84;
  }
}

void SaveMTLPipelineReflectionMTL4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 vertexLinkingDescriptor];
    if (v10)
    {
    }

    else
    {
      v12 = [v8 fragmentLinkingDescriptor];

      if (!v12)
      {
        goto LABEL_23;
      }
    }

    v12 = objc_opt_new();
    v19 = [v8 vertexLinkingDescriptor];

    if (!v19)
    {
      goto LABEL_19;
    }

    v17 = [v8 vertexLinkingDescriptor];
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 objectLinkingDescriptor];
    if (v11 || ([v8 meshLinkingDescriptor], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v12 = [v8 fragmentLinkingDescriptor];

      if (!v12)
      {
        goto LABEL_23;
      }
    }

    v12 = objc_opt_new();
    v13 = [v8 objectLinkingDescriptor];

    if (v13)
    {
      v14 = [v8 objectLinkingDescriptor];
      v15 = [v14 preloadedLibraries];
      [v12 addObjectsFromArray:v15];
    }

    v16 = [v8 meshLinkingDescriptor];

    if (!v16)
    {
LABEL_19:
      v22 = [v8 fragmentLinkingDescriptor];

      if (v22)
      {
        v18 = [v8 fragmentLinkingDescriptor];
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v17 = [v8 meshLinkingDescriptor];
LABEL_18:
    v20 = v17;
    v21 = [v17 preloadedLibraries];
    [v12 addObjectsFromArray:v21];

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v12 = [v8 tileLinkingDescriptor];

  if (v12)
  {
    v12 = objc_opt_new();
    v18 = [v8 tileLinkingDescriptor];
LABEL_21:
    v23 = v18;
    v24 = [v18 preloadedLibraries];
    [v12 addObjectsFromArray:v24];
  }

LABEL_23:
  v25 = [v9 reflection];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __SaveMTLPipelineReflectionMTL4_block_invoke;
  v27[3] = &unk_2F1E00;
  v28 = v7;
  v26 = v7;
  SaveMTLRenderPipelineReflectionCommon(a1, v9, v25, v12, v27);
}

void __SaveMTLPipelineReflectionMTL4_block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v8 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    v10 = [v9 vertexFunctionDescriptor];
    v11 = TranslateGTMTL4FunctionDescriptorReflection(v10, 0, a3, a4);

    v12 = [v9 fragmentFunctionDescriptor];

    v13 = TranslateGTMTL4FunctionDescriptorReflection(v12, 1, a3, a4);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = *(a1 + 32);
    v18 = [v17 objectFunctionDescriptor];
    v14 = TranslateGTMTL4FunctionDescriptorReflection(v18, 4, a3, a4);

    v19 = [v17 meshFunctionDescriptor];
    v16 = TranslateGTMTL4FunctionDescriptorReflection(v19, 3, a3, a4);

    v12 = [v17 fragmentFunctionDescriptor];

    v13 = TranslateGTMTL4FunctionDescriptorReflection(v12, 1, a3, a4);
    v15 = 0;
LABEL_7:
    v11 = 0;
LABEL_8:

    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [*(a1 + 32) tileFunctionDescriptor];
    v15 = TranslateGTMTL4FunctionDescriptorReflection(v12, 5, a3, a4);
    v14 = 0;
    v16 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v11 = 0;
  if (!a2)
  {
    return;
  }

LABEL_9:
  a2[62] = v11;
  a2[63] = v13;
  a2[64] = v14;
  a2[65] = v16;
  a2[66] = v15;
}

void SaveMTLRenderPipelineReflectionCommon(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  objc_opt_class();
  v64 = v13;
  v65 = v9;
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
    if (objc_opt_respondsToSelector())
    {
      [v14 validationReflection];
    }

    else
    {
      [v14 reflection];
    }
    v15 = ;

    v10 = v15;
  }

  v16 = [v10 performanceStatistics];
  v80 = 0;
  v68 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v80];
  v63 = v80;

  v17 = 0;
  v18 = 0;
  if (objc_opt_respondsToSelector())
  {
    v19 = [v10 vertexPluginReturnData];
    v18 = GetPluginReturnData(v19);

    v20 = [v10 fragmentPluginReturnData];
    v17 = GetPluginReturnData(v20);
  }

  v79 = 0u;
  memset(v78, 0, sizeof(v78));
  TranslateGTMTLRenderPipelineReflection(v10, v78, 0);
  if (v12)
  {
    (*(v12 + 2))(v12, 0, v78, 0);
  }

  v67 = v10;
  [v68 bytes];
  v21 = [v68 length];
  *(&v79 + 1) += v21;
  [v18 bytes];
  v22 = [v18 length];
  *(&v79 + 1) += v22;
  [v17 bytes];
  v23 = [v17 length];
  *(&v79 + 1) += v23;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v24 = v11;
  v25 = [v24 countByEnumeratingWithState:&v74 objects:v82 count:16];
  v66 = v12;
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v75;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v75 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = [*(*(&v74 + 1) + 8 * i) libraryPath];
        v31 = v30;
        if (v30)
        {
          [v30 UTF8String];
          if ([v31 UTF8String])
          {
            v32 = strlen([v31 UTF8String]) + 1;
          }

          else
          {
            v32 = 0;
          }

          *(&v79 + 1) += v32;
          ++v27;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v26);
  }

  else
  {
    v27 = 0;
  }

  *&v79 = v79 + 16 * v27;
  *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v78, 0x77u);
  v33 = TranslateGTMTLRenderPipelineReflection(v67, v78, 1);
  if (v66)
  {
    v66[2]();
  }

  v34 = [v68 bytes];
  v35 = [v68 length];
  v36 = v35;
  if (v35)
  {
    v37 = *(&v79 + 1);
  }

  else
  {
    v37 = 0;
  }

  *(&v79 + 1) += v35;
  memcpy(v37, v34, v35);
  *(v33 + 112) = v37;
  *(v33 + 120) = v36;
  v38 = [v18 bytes];
  v39 = [v18 length];
  v40 = v39;
  if (v39)
  {
    v41 = *(&v79 + 1);
  }

  else
  {
    v41 = 0;
  }

  *(&v79 + 1) += v39;
  memcpy(v41, v38, v39);
  *(v33 + 128) = v41;
  *(v33 + 136) = v40;
  v42 = [v17 bytes];
  v43 = [v17 length];
  v44 = v43;
  if (v43)
  {
    v45 = *(&v79 + 1);
  }

  else
  {
    v45 = 0;
  }

  *(&v79 + 1) += v43;
  memcpy(v45, v42, v43);
  *(v33 + 144) = v45;
  *(v33 + 152) = v44;
  if (v27)
  {
    v46 = v79;
  }

  else
  {
    v46 = 0;
  }

  v47 = v79 + 8 * v27;
  if (v27)
  {
    v48 = v79 + 8 * v27;
  }

  else
  {
    v48 = 0;
  }

  *(v33 + 96) = v46;
  *(v33 + 104) = v48;
  *&v79 = v47 + 8 * v27;
  *(v33 + 214) = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v49 = v24;
  v50 = [v49 countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v71;
    do
    {
      for (j = 0; j != v51; j = j + 1)
      {
        if (*v71 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(*(&v70 + 1) + 8 * j) libraryPath];
        v55 = v54;
        if (v54)
        {
          v56 = [v54 UTF8String];
          if ([v55 UTF8String])
          {
            v57 = strlen([v55 UTF8String]);
            v58 = *(&v79 + 1);
            v59 = v57 + 1;
            if (v57 != -1)
            {
              v60 = *(&v79 + 1);
LABEL_52:
              *(&v79 + 1) = v58 + v59;
              memcpy(v60, v56, v59);
              v61 = *(v33 + 214);
              *(*(v33 + 104) + 8 * v61) = v60;
              *(*(v33 + 96) + 8 * v61) = 0;
              *(v33 + 214) = v61 + 1;
              goto LABEL_53;
            }
          }

          else
          {
            v58 = *(&v79 + 1);
          }

          v59 = 0;
          v60 = 0;
          goto LABEL_52;
        }

LABEL_53:
      }

      v51 = [v49 countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v51);
  }

  GTMTLRenderPipelineReflection_resourceAccess(v33, __src);
  memcpy((v33 + 216), __src, 0x118uLL);
  v62 = DEVICEOBJECT(v65);
  if ([v65 supportIndirectCommandBuffers])
  {
    *v33 = [v62 uniqueIdentifier];
    *(v33 + 8) = [v62 resourceIndex];
    if (objc_opt_respondsToSelector())
    {
      *(v33 + 16) = [v62 gpuResourceID];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    *(v33 + 192) = [v62 allocatedSize];
  }

  *(v33 + 196) = [v62 imageblockSampleLength];

  objc_autoreleasePoolPop(v64);
}

void SaveMTLRenderPipelineReflection(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    SaveMTLRenderPipelineReflectionCommon(a1, a2, a3, a4, 0);
  }
}

void SaveMTL4MachineLearningPipelineReflection(uint64_t a1, void *a2)
{
  v3 = [a2 reflection];
  memset(v4, 0, sizeof(v4));
  TranslateGTMTL4MachineLearningPipelineReflection(v3, v4, 0);
  *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v4, 0xA6u);
  TranslateGTMTL4MachineLearningPipelineReflection(v3, v4, 1);
}

void SaveMTLFunctionInfo(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v15;
  v10 = v8;
  if (v15)
  {
    if (!v7)
    {
      v11 = v15;
      v9 = v15;
      v7 = v11;
    }

    memset(v16, 0, sizeof(v16));
    v12 = [v9 label];
    if (v10)
    {
      v13 = [v15 name];
      v14 = [v10 reflectionForFunctionWithName:v13];
    }

    else
    {
      v14 = 0;
    }

    TranslateGTMTLFunctionInfo(v15, v7, v14, v12, v16, 0);
    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v16, 0x7Bu);
    TranslateGTMTLFunctionInfo(v15, v7, v14, v12, v16, 1);
  }
}

void SaveMTLDynamicLibraryInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    memset(v6, 0, sizeof(v6));
    TranslateGTMTLDynamicLibraryInfo(v5, v6, 0);
    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v6, 0x7Cu);
    TranslateGTMTLDynamicLibraryInfo(v5, v6, 1);
  }
}

void SaveMTLBufferInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7[0] = 0;
    v6 = v5;
    v7[1] = 48;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x7Eu);
    TranslateGTMTLBufferInfo(v6, v7, 1);
  }
}

void SaveMTLTensorInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v8 = 0;
    v10 = 0u;
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    v9 = 48;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x95u);
    TranslateGTMTLTensorInfo(v6, v7, 1);
  }
}

void SaveMTLTextureInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    *&v8 = 88;
    *&v11 = 16 * [v6 mipmapLevelCount];

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x7Fu);
    TranslateGTMTLTextureInfo(v6, v7, 1);
  }
}

void SaveMTLIndirectCommandBufferInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    v9 = 56;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x80u);
    TranslateGTMTLIndirectCommandBufferInfo(v6, v7, 1);
  }
}

void SaveMTLVisibleFunctionTableInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    v9 = 56;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x81u);
    TranslateGTMTLVisibleFunctionTableInfo(v6, v7, 1);
  }
}

void SaveMTLIntersectionFunctionTableInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    *&v8 = 48;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x82u);
    TranslateGTMTLIntersectionFunctionTableInfo(v6, v7, 1);
  }
}

void SaveMTLAccelerationStructureInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v22 = 0;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v6 = v5;
    v7 = 112;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, &v7, 0x83u);
    TranslateGTMTLAccelerationStructureInfo(v6, &v7, 1);
  }
}

void SaveMTLSamplerStateInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    v9 = 24;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x84u);
    TranslateGTMTLSamplerStateInfo(v6, v7, 1);
  }
}

void SaveMTLDepthStencilStateInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    *&v8 = 16;

    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v7, 0x93u);
    TranslateGTMTLDepthStencilStateInfo(v6, v7, 1);
  }
}

void SaveMTLFunctionHandleInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = DEVICEOBJECT(v3);

    memset(v6, 0, sizeof(v6));
    TranslateGTMTLFunctionHandleInfo(v5, v6, 0);
    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v6, 0x9Eu);
    TranslateGTMTLFunctionHandleInfo(v5, v6, 1);
  }
}

void SaveMTLLibraryInfoWithPath(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
    v7 = DEVICEOBJECT(v5);

    memset(v8, 0, sizeof(v8));
    TranslateGTMTLLibraryInfo(v7, v8, 0, a3);
    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v8, 0x85u);
    TranslateGTMTLLibraryInfo(v7, v8, 1, a3);
  }
}

void SaveMTLPipelineLibraryInfoWithPath(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
    v7 = DEVICEOBJECT(v5);

    memset(v8, 0, sizeof(v8));
    TranslateGTMTLPipelineLibraryInfo(v7, v8, 0, a3);
    *(*(a1 + 16) + 14) = AllocatePipelineReflectionWithType(a1, v8, 0x8Au);
    TranslateGTMTLPipelineLibraryInfo(v7, v8, 1, a3);
  }
}

uint64_t SaveDispatchData_(uint64_t a1, dispatch_data_t data)
{
  if (!data)
  {
    return 0;
  }

  v6 = 0;
  size_ptr = 0;
  v3 = dispatch_data_create_map(data, &v6, &size_ptr);
  v4 = GTTraceEncoder_storeBlob(a1, v6, size_ptr);

  return v4;
}

uint64_t SaveNSData(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = a2;
  v6 = [v5 bytes];
  v7 = [v5 length];

  return GTTraceEncoder_storeBlob(a1, v6, v7);
}

const char *SaveNSURL(uint64_t a1, id a2)
{
  v4 = a2;
  result = [a2 fileSystemRepresentation];
  if (result)
  {
    v6 = result;
    v7 = strlen(result) + 1;

    return GTTraceEncoder_storeBytes(a1, v6, v7);
  }

  return result;
}

uint64_t SaveMTLVertexAmplificationViewMappings(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    return GTTraceEncoder_storeBlob(a1, a2, 8 * a3);
  }

  else
  {
    return 0;
  }
}

uint64_t TransferBytes(uint64_t a1, uint64_t *a2, const void *a3)
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  SavePointer(_sharedCaptureManager, a2, a3, __src);
  return GTTraceEncoder_storeBytes(a1, __src, 0x41uLL);
}

uint64_t SaveMTLTextureMipmapInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  bzero(v13, 0x258uLL);
  v4 = [v3 mipmapLevelCount];
  v14 = 16;
  v15 = 16 * v4;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v13, 0x5Fu, 1u);
  v6 = v3;
  v7 = [v6 mipmapLevelCount];
  v8 = v7;
  v9 = v14;
  v10 = v15;
  TranslateGTMTLTextureMipmapLevels(v6, v15, v7);

  *(v9 + 8) = v8;
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *v9 = v11;

  return DescriptorWithCount;
}