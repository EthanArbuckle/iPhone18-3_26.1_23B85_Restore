@interface CacheDeleteCacheableForVolume
@end

@implementation CacheDeleteCacheableForVolume

void ___CacheDeleteCacheableForVolume_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 67109378;
    v18 = 1384;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume() calling remote clientGetState with key:%@", buf, 0x12u);
  }

  v6 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___CacheDeleteCacheableForVolume_block_invoke_396;
  v12[3] = &unk_1E7F02C10;
  v7 = v6;
  v8 = *(a1 + 56);
  v13 = v7;
  v15 = v8;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v16 = *(a1 + 64);
  [v3 clientGetState:v7 replyBlock:v12];

  v10 = *MEMORY[0x1E69E9840];
}

void ___CacheDeleteCacheableForVolume_block_invoke_396(void *a1, void *a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 67109634;
    v107 = 1386;
    v108 = 2112;
    v109 = v5;
    v110 = 2112;
    v111 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState: %@ : %@", buf, 0x1Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1[6] + 8) + 24) = [v3 isEqual:MEMORY[0x1E695E118]];
    v6 = MEMORY[0x1E696AD98];
    v7 = [MEMORY[0x1E695DF00] distantFuture];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      if (*(*(a1[6] + 8) + 24))
      {
        v13 = "TRUE";
      }

      else
      {
        v13 = "FALSE";
      }

      *buf = 67109634;
      v107 = 1390;
      v108 = 2112;
      v109 = v12;
      v110 = 2080;
      v111 = v13;
      _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState: %@ : %s", buf, 0x1Cu);
    }

LABEL_61:

LABEL_62:
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v92 = a1[4];
      if (*(*(a1[6] + 8) + 24))
      {
        v93 = "TRUE";
      }

      else
      {
        v93 = "FALSE";
      }

      *buf = 67109634;
      v107 = 1425;
      v108 = 2112;
      v109 = v92;
      v110 = 2080;
      v111 = v93;
      _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
    }

    goto LABEL_67;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_62;
  }

  v14 = CDGetLogHandle("client");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[4];
    v16 = objc_opt_class();
    *buf = 67109890;
    v107 = 1392;
    v108 = 2112;
    v109 = v15;
    v110 = 2112;
    v111 = v16;
    v112 = 2112;
    v113 = v3;
    v17 = v16;
    _os_log_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, results(%@): %@", buf, 0x26u);
  }

  v11 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_CACHE_ENABLED"];
  v18 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_CACHEABLE_DURATION"];
  v19 = evaluateNumberProperty(v18);
  v20 = *(a1[7] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  if (v11)
  {
    *(*(a1[6] + 8) + 24) = evaluateBoolProperty(v11);
    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[4];
      v24 = "FALSE";
      if (*(*(a1[6] + 8) + 24))
      {
        v24 = "TRUE";
      }

      *buf = 67109634;
      v107 = 1404;
      v108 = 2112;
      v109 = v23;
      v110 = 2080;
      v111 = v24;
      _os_log_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
    }

    if ((*(*(a1[6] + 8) + 24) & 1) == 0)
    {
      v25 = a1[5];
      v26 = v3;
      v27 = v25;
      v28 = [MEMORY[0x1E695DF00] date];
      [v28 timeIntervalSinceReferenceDate];
      v30 = v29;

      v31 = [v27 thresholds];
      v32 = [v31 objectForKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];
      v33 = evaluateNumberProperty(v32);

      v34 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_CACHEABLE_DURATION"];
      v35 = evaluateNumberProperty(v34);

      if (v35)
      {
        v36 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_CACHEABLE_DURATION"];
        v37 = evaluateNumberProperty(v36);
        [v37 doubleValue];
        v39 = v38;
      }

      else
      {
        v36 = CDGetLogHandle("client");
        v39 = 7200.0;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v107 = 1226;
          v108 = 2112;
          v109 = v26;
          _os_log_error_impl(&dword_1BA7F1000, v36, OS_LOG_TYPE_ERROR, "%d validateCacheableStateForVolume: duration not specified, using default. state: %@", buf, 0x12u);
        }
      }

      v43 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_TIMESTAMP"];
      v44 = evaluateNumberProperty(v43);

      v105 = v33;
      if (v44)
      {
        v45 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_TIMESTAMP"];
        v46 = evaluateNumberProperty(v45);
        [v46 doubleValue];
        v48 = v47;

        v49 = v30 - v48;
        v50 = 0x280000000;
        if (v33)
        {
          v51 = [v33 unsignedLongLongValue];
          if ((2 * v51) < 0x280000000)
          {
            v50 = 2 * v51;
          }
        }

        if (v49 < v39)
        {
          v52 = CDGetLogHandle("client");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [v27 mountPoint];
            v99 = [v27 freespace];
            humanReadableNumber([v27 freespace]);
            v54 = v102 = v27;
            v55 = humanReadableNumber(v50);
            v56 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v48];
            *buf = 67110914;
            v107 = 1252;
            v108 = 2112;
            v109 = v53;
            v110 = 2048;
            v111 = v99;
            v112 = 2112;
            v113 = v54;
            v114 = 2112;
            v115 = v55;
            v116 = 2048;
            v117 = v49;
            v118 = 2048;
            v119 = v39;
            v120 = 2112;
            v121 = v56;
            _os_log_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_DEFAULT, "%d valid cacheable state for %@: freespace is %llu (%@) (%@ required), age is %f seconds (duration is: %f seconds), set at: %@", buf, 0x4Eu);

            v27 = v102;
          }

LABEL_41:
          v57 = 1;
          goto LABEL_42;
        }

        v58 = [v27 freespace];
        v52 = CDGetLogHandle("client");
        v59 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
        if (v58 < v50)
        {
          if (v59)
          {
            v60 = [v27 mountPoint];
            v100 = [v27 freespace];
            v103 = humanReadableNumber([v27 freespace]);
            v61 = humanReadableNumber(v50);
            v62 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v48];
            *buf = 67110914;
            v107 = 1268;
            v108 = 2112;
            v109 = v60;
            v110 = 2048;
            v111 = v100;
            v112 = 2112;
            v113 = v103;
            v114 = 2112;
            v115 = v61;
            v116 = 2048;
            v117 = v49;
            v118 = 2048;
            v119 = v39;
            v120 = 2112;
            v121 = v62;
            v63 = v62;
            _os_log_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_DEFAULT, "%d valid cacheable state for %@: freespace is %llu (%@) (%@ required), age is %f seconds (duration is: %f seconds), set at: %@", buf, 0x4Eu);
          }

          goto LABEL_41;
        }

        if (v59)
        {
          v95 = [v27 mountPoint];
          v101 = [v27 freespace];
          v104 = humanReadableNumber([v27 freespace]);
          v96 = humanReadableNumber(v50);
          v97 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v48];
          *buf = 67110914;
          v107 = 1277;
          v108 = 2112;
          v109 = v95;
          v110 = 2048;
          v111 = v101;
          v112 = 2112;
          v113 = v104;
          v114 = 2112;
          v115 = v96;
          v116 = 2048;
          v117 = v49;
          v118 = 2048;
          v119 = v39;
          v120 = 2112;
          v121 = v97;
          v98 = v97;
          _os_log_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_DEFAULT, "%d invalid cacheable state for %@: freespace is %llu (%@) (%@ required), age is %f seconds (duration is: %f seconds), set at: %@", buf, 0x4Eu);
        }
      }

      else
      {
        v52 = CDGetLogHandle("client");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          v107 = 1233;
          v108 = 2112;
          v109 = v26;
          _os_log_error_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_ERROR, "%d validateCacheableStateForVolume: Invalid state, no timestamp: %@", buf, 0x12u);
        }
      }

      v57 = 0;
LABEL_42:

      v64 = CDGetLogHandle("client");
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = " NOT";
        if (v57)
        {
          v65 = "";
        }

        *buf = 67109378;
        v107 = 1280;
        v108 = 2080;
        v109 = v65;
        _os_log_impl(&dword_1BA7F1000, v64, OS_LOG_TYPE_DEFAULT, "%d validateCacheableStateForVolume: cacheable state is%s valid", buf, 0x12u);
      }

      if ((v57 & 1) == 0)
      {
        v66 = CDGetLogHandle("client");
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = a1[4];
          v68 = "FALSE";
          if (*(*(a1[6] + 8) + 24))
          {
            v68 = "TRUE";
          }

          *buf = 67109634;
          v107 = 1414;
          v108 = 2112;
          v109 = v67;
          v110 = 2080;
          v111 = v68;
          _os_log_impl(&dword_1BA7F1000, v66, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
        }

        *(*(a1[6] + 8) + 24) = 1;
        v69 = a1[5];
        v70 = MEMORY[0x1E696AD98];
        v71 = [MEMORY[0x1E695DF00] distantFuture];
        [v71 timeIntervalSinceReferenceDate];
        v72 = [v70 numberWithDouble:?];
        _CacheDeleteSetCacheableForVolume(v69, v72, 1);

        v73 = MEMORY[0x1E696AD98];
        v74 = [MEMORY[0x1E695DF00] distantFuture];
        [v74 timeIntervalSinceReferenceDate];
        v75 = [v73 numberWithDouble:?];
        v76 = *(a1[7] + 8);
        v77 = *(v76 + 40);
        *(v76 + 40) = v75;

        v78 = CDGetLogHandle("client");
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = a1[4];
          v80 = "FALSE";
          if (*(*(a1[6] + 8) + 24))
          {
            v80 = "TRUE";
          }

          *buf = 67109634;
          v107 = 1418;
          v108 = 2112;
          v109 = v79;
          v110 = 2080;
          v111 = v80;
          _os_log_impl(&dword_1BA7F1000, v78, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
        }
      }

      v81 = MEMORY[0x1E696AEC0];
      [*(*(a1[7] + 8) + 40) doubleValue];
      v83 = v82;
      v84 = MEMORY[0x1E695DF00];
      [*(*(a1[7] + 8) + 40) doubleValue];
      v85 = [v84 dateWithTimeIntervalSinceNow:?];
      v86 = [v81 stringWithFormat:@"cacheable disabled, will reset in %f seconds at %@", v83, v85];
      v87 = *(a1[8] + 8);
      v88 = *(v87 + 40);
      *(v87 + 40) = v86;

      v89 = CDGetLogHandle("client");
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = a1[4];
        v91 = "FALSE";
        if (*(*(a1[6] + 8) + 24))
        {
          v91 = "TRUE";
        }

        *buf = 67109634;
        v107 = 1423;
        v108 = 2112;
        v109 = v90;
        v110 = 2080;
        v111 = v91;
        _os_log_impl(&dword_1BA7F1000, v89, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
      }

      goto LABEL_61;
    }
  }

  else
  {
    v40 = CDGetLogHandle("client");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = a1[4];
      if (*(*(a1[6] + 8) + 24))
      {
        v42 = "TRUE";
      }

      else
      {
        v42 = "FALSE";
      }

      *buf = 67109634;
      v107 = 1399;
      v108 = 2112;
      v109 = v41;
      v110 = 2080;
      v111 = v42;
      _os_log_impl(&dword_1BA7F1000, v40, OS_LOG_TYPE_DEFAULT, "%d _CacheDeleteCacheableForVolume clientGetState reply block for: %@, result: %s", buf, 0x1Cu);
    }

    v11 = 0;
  }

LABEL_67:

  v94 = *MEMORY[0x1E69E9840];
}

@end