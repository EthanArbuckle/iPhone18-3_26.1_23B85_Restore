@interface CLSilo
+ (id)main;
+ (void)setGlobalConfiguration:(id)a3;
- (BOOL)isSuspended;
- (BOOL)shouldBeIdled;
- (CLSilo)initWithIdentifier:(id)a3;
- (double)currentLatchedAbsoluteTimestamp;
- (id)newTimer;
- (id)registerForIdleNotifications:(id)a3 onResume:(id)a4;
- (void)afterInterval:(double)a3 async:(id)a4;
- (void)assertInside;
- (void)assertOutside;
- (void)async:(id)a3;
- (void)heartBeat:(id)a3;
- (void)intendToSync;
- (void)prepareAndRunBlock:(id)a3;
- (void)resume;
- (void)runIdleHandlers;
- (void)runResumeHandlers;
- (void)suspend;
- (void)sync:(id)a3;
- (void)unregisterForIdleNotifications:(id)a3;
@end

@implementation CLSilo

+ (id)main
{
  if (qword_1ED5FADE8 != -1)
  {
    dispatch_once(&qword_1ED5FADE8, &unk_1F5AC69A0);
  }

  v3 = qword_1ED5FADE0;

  return v3;
}

- (BOOL)shouldBeIdled
{
  Current = CFAbsoluteTimeGetCurrent();
  lastIdleCheck = self->_lastIdleCheck;
  [(CLSilo *)self currentLatchedAbsoluteTimestamp];
  if (lastIdleCheck <= v5)
  {
    result = 0;
  }

  else
  {
    v6 = self->_lastIdleCheck;
    [(CLSilo *)self currentLatchedAbsoluteTimestamp];
    result = v6 - v7 > 900.0;
  }

  self->_lastIdleCheck = Current;
  return result;
}

+ (void)setGlobalConfiguration:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AutoCohortEdgesDirectoryPath"];
  if ([v4 length])
  {
    [CLAutoCohortUtilities enableAutoCohortingForProcessAtPath:v4];
  }

  v5 = objc_opt_new();
  v49 = v4;
  v51 = v3;
  if (+[CLAutoCohortUtilities autoCohortingEnabled])
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
    }

    v6 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v77 = 0;
      v78 = 2082;
      v79 = &unk_1DF8255EF;
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Using syng-get graph file if available}", buf, 0x12u);
    }

    v7 = [v3 objectForKeyedSubscript:{@"SyncgetGraphFile", v49}];
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF48] inputStreamWithFileAtPath:v7];
      v9 = v8;
      if (v8)
      {
        [v8 open];
        v60 = 0;
        v10 = [MEMORY[0x1E696AE40] propertyListWithStream:v9 options:0 format:0 error:&v60];
        v11 = v60;
        [v9 close];
        if (v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v12 = 0;
        }

        else
        {
          v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
          }

          v13 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v77 = 0;
            v78 = 2082;
            v79 = &unk_1DF8255EF;
            v80 = 2114;
            v81 = v7;
            _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Successfully read sync-get graph file, filePath:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }
      }

      else
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
        }

        v36 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v77 = 0;
          v78 = 2082;
          v79 = &unk_1DF8255EF;
          v80 = 2114;
          v81 = v7;
          _os_log_impl(&dword_1DF7FE000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting No sync-get graph file available to read, filePath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v12 = 0;
      }

      v34 = v50;
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
      }

      v35 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v77 = 0;
        v78 = 2082;
        v79 = &unk_1DF8255EF;
        _os_log_impl(&dword_1DF7FE000, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting No sync-get graph filePath supplied}", buf, 0x12u);
      }

      v12 = 0;
      v34 = v50;
    }

    v37 = [CLAutoCohortUtilities computeAutoCohortMapWithStarterGraph:v12];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v5 = v37;
    v38 = [v5 countByEnumeratingWithState:&v56 objects:v75 count:16];
    if (v38)
    {
      v39 = v38;
      LODWORD(v40) = 0;
      v41 = *v57;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v57 != v41)
          {
            objc_enumerationMutation(v5);
          }

          v43 = [v5 objectForKeyedSubscript:*(*(&v56 + 1) + 8 * i)];
          v44 = [v43 intValue];

          if (v40 <= v44)
          {
            v40 = v44;
          }

          else
          {
            v40 = v40;
          }
        }

        v39 = [v5 countByEnumeratingWithState:&v56 objects:v75 count:16];
      }

      while (v39);
    }

    else
    {
      v40 = 0;
    }

    v45 = [MEMORY[0x1E696AD98] numberWithInt:v40];
    [v5 setObject:v45 forKeyedSubscript:@"default"];

    v26 = v51;
  }

  else
  {
    [v3 objectForKeyedSubscript:@"CohortToNameMap"];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v72 = 0u;
    v53 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
    if (v53)
    {
      v52 = *v70;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v70 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v69 + 1) + 8 * j);
          v16 = [obj objectForKeyedSubscript:{v15, v49}];
          v17 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v55 = v16;
          v18 = [v16 componentsSeparatedByCharactersInSet:v17];

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v65 objects:v83 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v66;
            do
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v66 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v65 + 1) + 8 * k);
                v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "intValue")}];
                [v5 setObject:v25 forKeyedSubscript:v24];
              }

              v21 = [v19 countByEnumeratingWithState:&v65 objects:v83 count:16];
            }

            while (v21);
          }
        }

        v53 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
      }

      while (v53);
    }

    v26 = v51;
    v12 = [v51 objectForKeyedSubscript:@"NameToCohortMap"];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v27 = [v12 countByEnumeratingWithState:&v61 objects:v82 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v62;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v62 != v29)
          {
            objc_enumerationMutation(v12);
          }

          v31 = *(*(&v61 + 1) + 8 * m);
          v32 = [v12 objectForKeyedSubscript:{v31, v49}];
          v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v32, "intValue")}];
          [v5 setObject:v33 forKeyedSubscript:v31];
        }

        v28 = [v12 countByEnumeratingWithState:&v61 objects:v82 count:16];
      }

      while (v28);
      v34 = v49;
      v26 = v51;
    }

    else
    {
      v34 = v49;
    }
  }

  v73 = @"NameToCohortMap";
  v74 = v5;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v47 = qword_1ECE5D8F8;
  qword_1ECE5D8F8 = v46;

  v48 = *MEMORY[0x1E69E9840];
}

- (CLSilo)initWithIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CLSilo;
  v6 = [(CLSilo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = objc_opt_new();
    idleHandlers = v7->_idleHandlers;
    v7->_idleHandlers = v8;
  }

  return v7;
}

- (void)assertInside
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)assertOutside
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)suspend
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)resume
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (BOOL)isSuspended
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (double)currentLatchedAbsoluteTimestamp
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)prepareAndRunBlock:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isIdle)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
    }

    v5 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      v8 = 138412290;
      v9 = identifier;
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEFAULT, "#Idleness: Silo is being resumed: %@", &v8, 0xCu);
    }

    [(CLSilo *)self runResumeHandlers];
    self->_isIdle = 0;
  }

  self->_currentLatchedAbsoluteTimestamp = CFAbsoluteTimeGetCurrent();
  if (v4)
  {
    v4[2](v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)newTimer
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)async:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v5 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)sync:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v5 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)intendToSync
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)afterInterval:(double)a3 async:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a4;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v5 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "0";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v7 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "0";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)heartBeat:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v5 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (id)registerForIdleNotifications:(id)a3 onResume:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CLSiloIdleHandler alloc] initWithIdleHandler:v7 onResume:v6];

  os_unfair_lock_lock(&self->_idleHandlersLock);
  [(NSMutableSet *)self->_idleHandlers addObject:v8];
  os_unfair_lock_unlock(&self->_idleHandlersLock);

  return v8;
}

- (void)unregisterForIdleNotifications:(id)a3
{
  v4 = a3;
  [v4 invalidate];
  os_unfair_lock_lock(&self->_idleHandlersLock);
  [(NSMutableSet *)self->_idleHandlers removeObject:v4];

  os_unfair_lock_unlock(&self->_idleHandlersLock);
}

- (void)runIdleHandlers
{
  v16 = *MEMORY[0x1E69E9840];
  [(CLSilo *)self assertInside];
  os_unfair_lock_lock(&self->_idleHandlersLock);
  v3 = [(NSMutableSet *)self->_idleHandlers copy];
  os_unfair_lock_unlock(&self->_idleHandlersLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) onIdle];
        v9[2]();

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)runResumeHandlers
{
  v16 = *MEMORY[0x1E69E9840];
  [(CLSilo *)self assertInside];
  os_unfair_lock_lock(&self->_idleHandlersLock);
  v3 = [(NSMutableSet *)self->_idleHandlers copy];
  os_unfair_lock_unlock(&self->_idleHandlersLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) onResume];
        v9[2]();

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end