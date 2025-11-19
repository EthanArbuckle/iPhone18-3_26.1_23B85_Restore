@interface IMDSpotlightIndexerTimingProfiler
- (void)abortCurrentTimers;
- (void)logResults:(BOOL)a3;
- (void)startMainTimerWithExpectedTimeoutInterval:(double)a3;
- (void)startTimingForKey:(id)a3;
- (void)startTimingForKey:(id)a3 iteration:(int64_t)a4;
- (void)stopMainTimerAndLogAfterFailure;
- (void)stopMainTimerAndLogAfterSuccess;
- (void)stopProfilingAfterIndexersBailed;
- (void)stopTimingForKey:(id)a3;
- (void)stopTimingForKey:(id)a3 iteration:(int64_t)a4;
@end

@implementation IMDSpotlightIndexerTimingProfiler

- (void)startMainTimerWithExpectedTimeoutInterval:(double)a3
{
  v25 = *MEMORY[0x1E69E9840];
  objc_msgSend_setTimeout_(self, a2, v3, a3);
  if (self->_timingCollection)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB23C();
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69A6170]);
    timingCollection = self->_timingCollection;
    self->_timingCollection = v6;

    v10 = objc_msgSend_set(MEMORY[0x1E695DFA8], v8, v9);
    runningTimers = self->_runningTimers;
    self->_runningTimers = v10;

    v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13);
    runTimers = self->_runTimers;
    self->_runTimers = v14;

    abortedTimers = self->_abortedTimers;
    self->_abortedTimers = 0;

    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_timeout(self, v18, v19);
      v23 = 134217984;
      v24 = v20;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Starting profiling -- we have %ld seconds to finish", &v23, 0xCu);
    }

    objc_msgSend_startTimingForKey_(self->_timingCollection, v21, @"All Indexers");
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)startTimingForKey:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (self->_timingCollection)
    {
      if (!objc_msgSend_containsObject_(self->_runningTimers, v4, v5))
      {
        objc_msgSend_addObject_(self->_runningTimers, v6, v5);
        objc_msgSend_addObject_(self->_runTimers, v8, v5);
        objc_msgSend_startTimingForKey_(self->_timingCollection, v9, v5);
        goto LABEL_11;
      }

      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFB270();
      }
    }

    else
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFB2E0();
      }
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }
  }

LABEL_11:
}

- (void)startTimingForKey:(id)a3 iteration:(int64_t)a4
{
  if (a3)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@-%ld", a3, a4);
    objc_msgSend_startTimingForKey_(self, v5, v7);
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }
  }
}

- (void)stopTimingForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }

    goto LABEL_11;
  }

  if (!self->_timingCollection)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB3F4();
    }

    goto LABEL_11;
  }

  if (!objc_msgSend_containsObject_(self->_runningTimers, v4, v5))
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB384();
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v6, v5);
  objc_msgSend_removeObject_(self->_runningTimers, v7, v5);
LABEL_12:
}

- (void)stopTimingForKey:(id)a3 iteration:(int64_t)a4
{
  if (a3)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@-%ld", a3, a4);
    objc_msgSend_stopTimingForKey_(self, v5, v7);
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }
  }
}

- (void)logResults:(BOOL)a3
{
  v3 = a3;
  v66 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = self->_runTimers;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v51, v65, 16);
  if (!v7)
  {
    v11 = 0;
    v13 = 0.0;
    goto LABEL_29;
  }

  v10 = v7;
  v11 = 0;
  v12 = *v52;
  v13 = 0.0;
  *&v9 = 138412290;
  v50 = v9;
  do
  {
    v14 = 0;
    do
    {
      if (*v52 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v51 + 1) + 8 * v14);
      objc_msgSend_totalTimeForKey_(self->_timingCollection, v8, v15, v50);
      v17 = v16;
      if (v16 > v13)
      {
        v18 = v15;

        v11 = v18;
        v13 = v17;
      }

      abortedTimers = self->_abortedTimers;
      if (abortedTimers && objc_msgSend_containsObject_(abortedTimers, v8, v15))
      {
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v56 = v15;
          v57 = 2048;
          v58 = v17;
          v21 = v20;
          v22 = "Timing '%@' was ABORTED after %fs";
          v23 = 22;
LABEL_25:
          _os_log_error_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
        }
      }

      else
      {
        if (v17 == 0.0 && v3)
        {
          v20 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = v50;
          v56 = v15;
          v21 = v20;
          v22 = "Timing '%@' was never run";
          v23 = 12;
          goto LABEL_25;
        }

        if (!v3)
        {
          goto LABEL_22;
        }

        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v56 = v15;
          v57 = 2048;
          v58 = v17;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Timing '%@' ran ok in %fs", buf, 0x16u);
        }
      }

LABEL_21:

LABEL_22:
      ++v14;
    }

    while (v10 != v14);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v51, v65, 16);
    v10 = v26;
  }

  while (v26);
LABEL_29:

  objc_msgSend_totalTimeForKey_(self->_timingCollection, v27, @"All Indexers");
  v31 = v30;
  v32 = self->_abortedTimers;
  if (v32 && objc_msgSend_count(v32, v28, v29))
  {
    v33 = IMLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_msgSend_count(self->_runTimers, v34, v35);
      objc_msgSend_timeout(self, v37, v38);
      *buf = 134218496;
      v56 = v36;
      v57 = 2048;
      v58 = v31;
      v59 = 2048;
      v60 = v39 - v31;
      _os_log_error_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_ERROR, "ABORTED -- %ld timings ran in %fs (%fs remaining before timeout).", buf, 0x20u);
    }
  }

  else
  {
    v33 = IMLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v42 = objc_msgSend_count(self->_runTimers, v40, v41);
      objc_msgSend_timeout(self, v43, v44);
      *buf = 134219010;
      v56 = v42;
      v57 = 2048;
      v58 = v31;
      v59 = 2048;
      v60 = v45 - v31;
      v61 = 2112;
      v62 = v11;
      v63 = 2048;
      v64 = v13;
      _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Finished %ld timings in %fs (%fs remaining before timeout). Slowest timing: %@ at %fs", buf, 0x34u);
    }
  }

  runningTimers = self->_runningTimers;
  self->_runningTimers = 0;

  v47 = self->_abortedTimers;
  self->_abortedTimers = 0;

  runTimers = self->_runTimers;
  self->_runTimers = 0;

  v49 = *MEMORY[0x1E69E9840];
}

- (void)stopProfilingAfterIndexersBailed
{
  if (self->_timingCollection)
  {
    runningTimers = self->_runningTimers;
    self->_runningTimers = 0;

    abortedTimers = self->_abortedTimers;
    self->_abortedTimers = 0;

    runTimers = self->_runTimers;
    self->_runTimers = 0;

    timingCollection = self->_timingCollection;
    self->_timingCollection = 0;

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Bailed on profiling (not an error)", v8, 2u);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB464();
    }
  }
}

- (void)abortCurrentTimers
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_runningTimers)
  {
    objc_msgSend_stopTimingForKey_(self->_timingCollection, a2, @"All Indexers");
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = self->_runningTimers;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
    if (v5)
    {
      v7 = v5;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v3);
          }

          objc_msgSend_stopTimingForKey_(self->_timingCollection, v6, *(*(&v16 + 1) + 8 * v9++), v16);
        }

        while (v7 != v9);
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v16, v20, 16);
      }

      while (v7);
    }

    v12 = objc_msgSend_allObjects(self->_runningTimers, v10, v11);
    abortedTimers = self->_abortedTimers;
    self->_abortedTimers = v12;

    runningTimers = self->_runningTimers;
    self->_runningTimers = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)stopMainTimerAndLogAfterFailure
{
  if (self->_timingCollection)
  {
    objc_msgSend_abortCurrentTimers(self, a2, v2);
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB498();
    }

    objc_msgSend_logResults_(self, v5, 1);
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB4CC();
    }
  }
}

- (void)stopMainTimerAndLogAfterSuccess
{
  v27 = *MEMORY[0x1E69E9840];
  timingCollection = self->_timingCollection;
  if (timingCollection)
  {
    objc_msgSend_stopTimingForKey_(timingCollection, a2, @"All Indexers");
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_runningTimers;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v26, 16);
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = IMLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v10;
            _os_log_error_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_ERROR, "Timing '%@' was still running after profiler was stopped", buf, 0xCu);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v12, &v20, v26, 16);
      }

      while (v7);
    }

    runningTimers = self->_runningTimers;
    self->_runningTimers = 0;

    v16 = objc_msgSend_alwaysLogAllTimingResults(MEMORY[0x1E69A7FF8], v14, v15);
    objc_msgSend_logResults_(self, v17, v16);
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB4CC();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end