@interface _CDMemoryUsageIntervalTracker
+ (id)sharedInstance;
- (_CDMemoryUsageIntervalTracker)init;
- (void)beginInterval:(uint64_t)interval;
- (void)endInterval:(uint64_t)interval;
@end

@implementation _CDMemoryUsageIntervalTracker

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[_CDMemoryUsageIntervalTracker sharedInstance];
  }

  v0 = sharedInstance_instance;

  return v0;
}

- (_CDMemoryUsageIntervalTracker)init
{
  v9.receiver = self;
  v9.super_class = _CDMemoryUsageIntervalTracker;
  v2 = [(_CDMemoryUsageIntervalTracker *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    if (active_memory_limit_onceToken != -1)
    {
      [_CDMemoryUsageIntervalTracker init];
    }

    v4 = active_memory_limit_limit;
    v3->_activeMemoryLimit = active_memory_limit_limit;
    if (!v4)
    {
      v7 = 0;
      goto LABEL_8;
    }

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    activeIntervals = v3->_activeIntervals;
    v3->_activeIntervals = weakObjectsHashTable;

    v3->_intervalTimeout = 60000000000;
  }

  v7 = v3;
LABEL_8:

  return v7;
}

- (void)beginInterval:(uint64_t)interval
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (interval)
  {
    context = objc_autoreleasePoolPush();
    os_unfair_lock_lock((interval + 8));
    v4 = (*(interval + 16) + 1) % 0x7FFFFFFFFFFFFFFEuLL;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    intervalCopy = interval;
    *(interval + 16) = v4;
    if (v3)
    {
      v3[10] = v4;
    }

    v37 = 0;
    get_memory_usage(v3 + 1, &v37, v3 + 2, 1);
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    allObjects = [*(interval + 32) allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v33 objects:v50 count:16];
    v7 = 0x1E7366000uLL;
    v30 = v3;
    if (v6)
    {
      v8 = *v34;
      do
      {
        v9 = 0;
        do
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v33 + 1) + 8 * v9);
          if (v10)
          {
            v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX) - v10[7];
            if (v11 > *(intervalCopy + 40))
            {
              instrumentationChannel = [*(v7 + 648) instrumentationChannel];
              if (os_log_type_enabled(instrumentationChannel, OS_LOG_TYPE_ERROR))
              {
                v15 = v10[10];
                name = [v10 name];
                client = [v10 client];
                *buf = 134218754;
                v39 = v15;
                v40 = 2112;
                v41 = name;
                v42 = 2112;
                v43 = client;
                v44 = 2048;
                v45 = v11 / 0x3B9ACA00;
                _os_log_error_impl(&dword_191750000, instrumentationChannel, OS_LOG_TYPE_ERROR, "[error] id=%lu name=%@ client=%@ tracking stopped due to age %llus", buf, 0x2Au);

                v3 = v30;
                v7 = 0x1E7366000;
              }

              v10[6] = 2;
              [*(intervalCopy + 32) removeObject:v10];
              goto LABEL_21;
            }

            v13 = v37;
            v14 = v10[10];
            if (v10[11] > v37)
            {
              v13 = v10[11];
            }

            v10[11] = v13;
          }

          else
          {
            v14 = 0;
          }

          [indexSet addIndex:v14];
          if (v3)
          {
            *(v3 + 64) = 1;
          }

LABEL_21:
          ++v9;
        }

        while (v6 != v9);
        v18 = [allObjects countByEnumeratingWithState:&v33 objects:v50 count:16];
        v6 = v18;
      }

      while (v18);
    }

    [*(intervalCopy + 32) addObject:v3];
    instrumentationChannel2 = [*(v7 + 648) instrumentationChannel];
    if (os_log_type_enabled(instrumentationChannel2, OS_LOG_TYPE_DEBUG))
    {
      v21 = v3;
      if (v3)
      {
        v3 = v3[10];
      }

      name2 = [v21 name];
      client2 = [v30 client];
      if (v30)
      {
        v24 = v30[1] * 0.0009765625 * 0.0009765625;
        v25 = *(v30 + 64);
      }

      else
      {
        v25 = 0;
        v24 = 0.0;
      }

      _cd_commaSeparatedIndexes = [indexSet _cd_commaSeparatedIndexes];
      v27 = _cd_commaSeparatedIndexes;
      v28 = "";
      *buf = 134219266;
      v39 = v3;
      v40 = 2112;
      if (v25)
      {
        v28 = "*, concurrent: ";
      }

      v41 = name2;
      v42 = 2112;
      v43 = client2;
      v44 = 2048;
      v45 = *&v24;
      v46 = 2082;
      v47 = v28;
      v48 = 2114;
      v49 = _cd_commaSeparatedIndexes;
      _os_log_debug_impl(&dword_191750000, instrumentationChannel2, OS_LOG_TYPE_DEBUG, "[begin] id=%ld name=%@ client=%@ (start: %.1fMB%{public}s%{public}@)", buf, 0x3Eu);

      v3 = v30;
    }

    os_unfair_lock_unlock((intervalCopy + 8));
    objc_autoreleasePoolPop(context);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)endInterval:(uint64_t)interval
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (interval)
  {
    os_unfair_lock_lock((interval + 8));
    v48 = 0;
    get_memory_usage(v3 + 3, &v48, v3 + 4, 0);
    if (v3)
    {
      v4 = v3[11];
      v5 = v48;
      if (v4 >= v48)
      {
        v48 = v3[11];
        v6 = "*";
        v5 = v4;
      }

      else
      {
        v6 = "";
      }

      v3[12] = v5;
    }

    else if (v48)
    {
      v6 = "";
    }

    else
    {
      v6 = "*";
    }

    [*(interval + 32) removeObject:v3];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = *(interval + 32);
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v73 count:16];
    if (v9)
    {
      v10 = *v45;
      v11 = "*";
      do
      {
        v12 = 0;
        do
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v44 + 1) + 8 * v12);
          if (v13)
          {
            v14 = v48;
            v15 = *(v13 + 80);
            if (*(v13 + 88) > v48)
            {
              v14 = *(v13 + 88);
            }

            *(v13 + 88) = v14;
          }

          else
          {
            v15 = 0;
          }

          [indexSet addIndex:v15];
          ++v12;
        }

        while (v9 != v12);
        v16 = [v8 countByEnumeratingWithState:&v44 objects:v73 count:16];
        v9 = v16;
      }

      while (v16);
    }

    else
    {
      v11 = "";
    }

    if (v3)
    {
      v17 = v3[1];
    }

    else
    {
      v17 = 0;
    }

    v18 = *(interval + 24);
    v19 = v18;
    v20 = v18 * 0.9;
    v21 = v20 < v48 && v20 > v17;
    v23 = v17 < v18 && v48 > v18;
    v24 = +[_CDLogging instrumentationChannel];
    v25 = v24;
    if (v21)
    {
      v26 = 16;
    }

    else
    {
      v26 = 2;
    }

    if (v23)
    {
      v27 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v27 = v26;
    }

    if (os_log_type_enabled(v24, v27))
    {
      v42 = v11;
      if (v3)
      {
        v40 = v3[10];
      }

      else
      {
        v40 = 0;
      }

      name = [v3 name];
      client = [v3 client];
      if (v23)
      {
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"error: operation peaked over limit of %.0fMB ", v19 * 0.0009765625 * 0.0009765625];
        v37 = 0;
      }

      else if (v21)
      {
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"warning: operation peaked near limit of %.0fMB ", v19 * 0.0009765625 * 0.0009765625];
        v37 = 1;
      }

      else
      {
        v37 = 0;
        v43 = &stru_1F05B9908;
      }

      if (v3)
      {
        if (*(v3 + 64))
        {
          v29 = "*";
        }

        else
        {
          v29 = "";
        }

        v28.i64[1] = v3[1];
        v28.i64[0] = v3[12];
        v30 = vdupq_n_s64(0x3F50000000000000uLL);
        v38 = vmulq_f64(vmulq_f64(vcvtq_f64_u64(v28), v30), v30);
        v31 = v3[3] * 0.0009765625 * 0.0009765625;
      }

      else
      {
        v38 = 0u;
        v31 = 0.0;
        v29 = "";
      }

      v32 = [indexSet count];
      _cd_commaSeparatedIndexes = [indexSet _cd_commaSeparatedIndexes];
      v34 = _cd_commaSeparatedIndexes;
      *buf = 134220802;
      v35 = ", concurrent: ";
      v50 = v40;
      if (!v32)
      {
        v35 = "";
      }

      v51 = 2112;
      v52 = name;
      v53 = 2112;
      v54 = client;
      v55 = 2114;
      v56 = v43;
      v57 = 2048;
      v58 = v38.f64[1];
      v59 = 2082;
      v60 = v29;
      v61 = 2048;
      v62 = v38.f64[0];
      v63 = 2082;
      v64 = v6;
      v65 = 2048;
      v66 = v31;
      v67 = 2082;
      v68 = v42;
      v69 = 2082;
      v70 = v35;
      v71 = 2114;
      v72 = _cd_commaSeparatedIndexes;
      _os_log_impl(&dword_191750000, v25, v27, "[end]   id=%lu name=%@ client=%@ %{public}@(start: %.1fMB%{public}s, peak: %.1fMB%{public}s, end: %.1fMB%{public}s%{public}s%{public}@)", buf, 0x7Au);

      if (v37)
      {
      }

      if (v23)
      {
      }
    }

    os_unfair_lock_unlock((interval + 8));
  }

  v36 = *MEMORY[0x1E69E9840];
}

@end