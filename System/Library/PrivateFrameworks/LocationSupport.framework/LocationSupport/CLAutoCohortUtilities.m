@interface CLAutoCohortUtilities
+ (BOOL)isEdgeKnownToCauseCycle:(id)a3;
+ (id)computeAutoCohortMapWithStarterGraph:(id)a3;
+ (id)getEdgeFilesFromDirectory:(id)a3;
+ (id)getSafeEdges;
+ (id)getUnsafeEdges;
+ (id)layerAssignmentForNode:(id)a3 inGraph:(id)a4 extendingLayering:(id)a5;
+ (id)readEdges:(id)a3;
+ (void)applyEdges:(id)a3 toGraph:(id)a4;
+ (void)createDirectoryAtPath:(id)a3;
+ (void)enableAutoCohortingForProcessAtPath:(id)a3;
+ (void)markUnvetted:(id)a3;
+ (void)persistEdgeFrom:(id)a3 to:(id)a4;
+ (void)writeEdge:(id)a3 toDirectory:(id)a4;
@end

@implementation CLAutoCohortUtilities

+ (void)enableAutoCohortingForProcessAtPath:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (a3 && [a3 length])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1DF8186C4;
      block[3] = &unk_1E86C8408;
      block[4] = a3;
      if (qword_1ECE5D910 != -1)
      {
        dispatch_once(&qword_1ECE5D910, block);
      }

      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }

      v4 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v11 = 2082;
        v12 = &unk_1DF8255EF;
        v13 = 2114;
        v14 = a3;
        v5 = "{msg%{public}.0s:#Cohorting Process successfully signed up for auto cohorting, autoCohortEdgesDirectoryPath:%{public, location:escape_only}@}";
LABEL_13:
        _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "path && path.length";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Invalid path while enabling auto cohorting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v8 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "path && path.length";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Invalid path while enabling auto cohorting", "{msg%{public}.0s:#Cohorting Invalid path while enabling auto cohorting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    a3 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "path && path.length";
      _os_log_impl(&dword_1DF7FE000, a3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Invalid path while enabling auto cohorting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  else if (qword_1ED5FAD40 == -1)
  {
    goto LABEL_11;
  }

  dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
LABEL_11:
  v4 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v11 = 2082;
    v12 = &unk_1DF8255EF;
    v13 = 2114;
    v14 = a3;
    v5 = "{msg%{public}.0s:#Cohorting Process intended to sign up for auto cohorting but CoreLocation/CLAutoCohort=off, autoCohortEdgesDirectoryPath:%{public, location:escape_only}@}";
    goto LABEL_13;
  }

LABEL_14:
  v6 = *MEMORY[0x1E69E9840];
}

+ (id)layerAssignmentForNode:(id)a3 inGraph:(id)a4 extendingLayering:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = [a5 objectForKeyedSubscript:?];
  if (!v8)
  {
    [a5 setObject:&unk_1F5AC9B90 forKeyedSubscript:a3];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v21 = a3;
    v9 = [a4 objectForKeyedSubscript:a3];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [CLAutoCohortUtilities layerAssignmentForNode:*(*(&v22 + 1) + 8 * v13) inGraph:a4 extendingLayering:a5];
          if (v14 == &unk_1F5AC9B90)
          {
            v8 = &unk_1F5AC9B90;
            goto LABEL_15;
          }

          v15 = v14;
          v16 = MEMORY[0x1E696AD98];
          v17 = [v8 intValue];
          if (v17 <= ([v15 intValue] + 1))
          {
            v18 = [v15 intValue] + 1;
          }

          else
          {
            v18 = [v8 intValue];
          }

          v8 = [v16 numberWithInt:v18];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    [a5 setObject:v8 forKeyedSubscript:v21];
  }

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)applyEdges:(id)a3 toGraph:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [a4 objectForKeyedSubscript:{objc_msgSend(v10, "objectAtIndex:", 0)}];
        if (!v11)
        {
          v13 = [MEMORY[0x1E695DFA8] set];
          goto LABEL_12;
        }

        v12 = v11;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (qword_1ED5FAD40 != -1)
            {
              goto LABEL_26;
            }

            while (1)
            {
              v15 = qword_1ED5FAD48;
              if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289539;
                v23 = 0;
                v24 = 2082;
                v25 = &unk_1DF8255EF;
                v26 = 2082;
                v27 = "assert";
                v28 = 2081;
                v29 = "[children isKindOfClass:[NSArray class]] || [children isKindOfClass:[NSSet class]]";
                _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
                if (qword_1ED5FAD40 != -1)
                {
                  dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
                }
              }

              v16 = qword_1ED5FAD48;
              if (os_signpost_enabled(qword_1ED5FAD48))
              {
                *buf = 68289539;
                v23 = 0;
                v24 = 2082;
                v25 = &unk_1DF8255EF;
                v26 = 2082;
                v27 = "assert";
                v28 = 2081;
                v29 = "[children isKindOfClass:[NSArray class]] || [children isKindOfClass:[NSSet class]]";
                _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}", "{msg%{public}.0s:#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
                if (qword_1ED5FAD40 != -1)
                {
                  dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
                }
              }

              v17 = qword_1ED5FAD48;
              if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
              {
                *buf = 68289539;
                v23 = 0;
                v24 = 2082;
                v25 = &unk_1DF8255EF;
                v26 = 2082;
                v27 = "assert";
                v28 = 2081;
                v29 = "[children isKindOfClass:[NSArray class]] || [children isKindOfClass:[NSSet class]]";
                _os_log_impl(&dword_1DF7FE000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
              }

              abort_report_np();
LABEL_26:
              dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [MEMORY[0x1E695DFA8] setWithArray:v12];
LABEL_12:
          v12 = v13;
          [a4 setObject:v13 forKeyedSubscript:{objc_msgSend(v10, "objectAtIndex:", 0)}];
        }

        [v12 addObject:{objc_msgSend(v10, "objectAtIndex:", 1)}];
      }

      v7 = [a3 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)createDirectoryAtPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = 0;
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v11)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v5 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      v6 = [v11 localizedFailureReason];
      *buf = 68290051;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2114;
      v16 = a3;
      v17 = 2114;
      v18 = v6;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "!error";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Cannot create directory, directoryPath:%{public, location:escape_only}@, error:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v7 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      v8 = [v11 localizedFailureReason];
      *buf = 68290051;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2114;
      v16 = a3;
      v17 = 2114;
      v18 = v8;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "!error";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Cannot create directory", "{msg%{public}.0s:#Cohorting Cannot create directory, directoryPath:%{public, location:escape_only}@, error:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      v10 = [v11 localizedFailureReason];
      *buf = 68290051;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2114;
      v16 = a3;
      v17 = 2114;
      v18 = v10;
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "!error";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Cannot create directory, directoryPath:%{public, location:escape_only}@, error:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np();
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)getEdgeFilesFromDirectory:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] || (v21 & 1) == 0)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v5 = qword_1ED5FAD48;
    if (!os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 68289282;
    v24 = 2082;
    v25 = &unk_1DF8255EF;
    v26 = 2114;
    v27 = a3;
    v6 = "{msg%{public}.0s:#Cohorting Doesnot exist or is not a directory, directoryPath:%{public, location:escape_only}@}";
    goto LABEL_12;
  }

  v20 = 0;
  v4 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v20)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v5 = qword_1ED5FAD48;
    if (!os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 68289282;
    v24 = 2082;
    v25 = &unk_1DF8255EF;
    v26 = 2114;
    v27 = a3;
    v6 = "{msg%{public}.0s:#Cohorting Cannot read contents of directory, directoryPath:%{public, location:escape_only}@}";
LABEL_12:
    _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x1Cu);
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v10 = v4;
  v7 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 hasSuffix:@".plist"])
        {
          [v7 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v12);
  }

LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)readEdges:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [CLAutoCohortUtilities getEdgeFilesFromDirectory:?];
  v5 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 68289026;
    v17 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [a3 stringByAppendingPathComponent:{*(*(&v18 + 1) + 8 * v10), v17}];
        v12 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v11];
        if (v12 && (v13 = v12, [v12 count] == 2))
        {
          [v5 addObject:v13];
        }

        else
        {
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          }

          v14 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = 0;
            v24 = 2082;
            v25 = &unk_1DF8255EF;
            _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Sync-get graph edge is of unexpected type. Expects [, ]}", buf, 0x12u);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)getSafeEdges
{
  [qword_1ECE5D908 stringByAppendingPathComponent:@"_safe"];

  return MEMORY[0x1EEE66B58](CLAutoCohortUtilities, sel_readEdges_);
}

+ (id)getUnsafeEdges
{
  [qword_1ECE5D908 stringByAppendingPathComponent:@"_unsafe"];

  return MEMORY[0x1EEE66B58](CLAutoCohortUtilities, sel_readEdges_);
}

+ (void)writeEdge:(id)a3 toDirectory:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  [CLAutoCohortUtilities createDirectoryAtPath:a4];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"yyyy_MM_dd_HH_mm_ss"];
  v7 = [a4 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.plist", objc_msgSend(v6, "stringFromDate:", objc_msgSend(MEMORY[0x1E695DF00], "date")))}];
  v10 = 0;
  [a3 writeToURL:objc_msgSend(MEMORY[0x1E695DFF8] error:{"fileURLWithPath:", v7), &v10}];
  if (v10)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v8 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Cannot write edge file, edgeFilePath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)persistEdgeFrom:(id)a3 to:(id)a4
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a3;
  v6[1] = a4;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [CLAutoCohortUtilities writeEdge:v4 toDirectory:qword_1ECE5D908];
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)markUnvetted:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [CLAutoCohortUtilities getEdgeFilesFromDirectory:qword_1ECE5D908];
  v5 = [qword_1ECE5D908 stringByAppendingPathComponent:a3];
  [CLAutoCohortUtilities createDirectoryAtPath:v5];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 68289538;
    v16 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [qword_1ECE5D908 stringByAppendingPathComponent:{v11, v16}];
        v13 = [v5 stringByAppendingPathComponent:v11];
        v17 = 0;
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        if (v17)
        {
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          }

          v14 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v23 = 0;
            v24 = 2082;
            v25 = &unk_1DF8255EF;
            v26 = 2114;
            v27 = v12;
            v28 = 2114;
            v29 = v13;
            _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Cannot move unvetted edge, srcFilePath:%{public, location:escape_only}@, dstFilePath:%{public, location:escape_only}@}", buf, 0x26u);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isEdgeKnownToCauseCycle:(id)a3
{
  if (qword_1ED5FAEB0 != -1)
  {
    dispatch_once(&qword_1ED5FAEB0, &unk_1F5AC6960);
  }

  v4 = [qword_1ED5FAEA8 objectForKeyedSubscript:{objc_msgSend(a3, "objectAtIndexedSubscript:", 0)}];
  if (!v4)
  {
    return 0;
  }

  v5 = 1;
  if (([v4 containsObject:{objc_msgSend(a3, "objectAtIndexedSubscript:", 1)}] & 1) == 0)
  {
    return 0;
  }

  return v5;
}

+ (id)computeAutoCohortMapWithStarterGraph:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = 0x1E695D000uLL;
  [MEMORY[0x1E695DF90] dictionary];
  if (!a3)
  {
    a3 = [MEMORY[0x1E695DF90] dictionary];
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  +[CLAutoCohortUtilities applyEdges:toGraph:](CLAutoCohortUtilities, "applyEdges:toGraph:", +[CLAutoCohortUtilities getSafeEdges], a3);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(a3);
        }

        if ([+[CLAutoCohortUtilities layerAssignmentForNode:inGraph:extendingLayering:](CLAutoCohortUtilities layerAssignmentForNode:*(*(&v31 + 1) + 8 * i) inGraph:a3 extendingLayering:{v5), "intValue"}] <= -2)
        {
          v16 = 0x1ED5FA000;
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          }

          v25 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
          {
            buf = 68289539;
            v37 = 2082;
            v38 = &unk_1DF8255EF;
            v39 = 2082;
            v40 = "assert";
            v41 = 2081;
            v42 = "-1 <= [CLAutoCohortUtilities layerAssignmentForNode:node inGraph:syncgetGraph extendingLayering:autoCohortNameToCohortMapAggregateSafe].intValue";
            _os_log_impl(&dword_1DF7FE000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Edge that was marked safe causes cycle in syncget graph, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
            if (qword_1ED5FAD40 != -1)
            {
              dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
            }
          }

          v26 = qword_1ED5FAD48;
          if (os_signpost_enabled(qword_1ED5FAD48))
          {
            buf = 68289539;
            v37 = 2082;
            v38 = &unk_1DF8255EF;
            v39 = 2082;
            v40 = "assert";
            v41 = 2081;
            v42 = "-1 <= [CLAutoCohortUtilities layerAssignmentForNode:node inGraph:syncgetGraph extendingLayering:autoCohortNameToCohortMapAggregateSafe].intValue";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Edge that was marked safe causes cycle in syncget graph", "{msg%{public}.0s:#Cohorting Edge that was marked safe causes cycle in syncget graph, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
            if (qword_1ED5FAD40 != -1)
            {
              dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
            }
          }

          v5 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
          {
            buf = 68289539;
            v37 = 2082;
            v38 = &unk_1DF8255EF;
            v39 = 2082;
            v40 = "assert";
            v41 = 2081;
            v42 = "-1 <= [CLAutoCohortUtilities layerAssignmentForNode:node inGraph:syncgetGraph extendingLayering:autoCohortNameToCohortMapAggregateSafe].intValue";
            _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Edge that was marked safe causes cycle in syncget graph, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
          }

          abort_report_np();
LABEL_39:
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          goto LABEL_21;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = +[CLAutoCohortUtilities getUnvettedEdges];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  [CLAutoCohortUtilities applyEdges:v10 toGraph:a3];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [a3 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
LABEL_13:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(a3);
      }

      if ([+[CLAutoCohortUtilities layerAssignmentForNode:inGraph:extendingLayering:](CLAutoCohortUtilities layerAssignmentForNode:*(*(&v27 + 1) + 8 * v15) inGraph:a3 extendingLayering:{v11), "intValue"}] == -1)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [a3 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    +[CLAutoCohortUtilities markUnvettedUnsafe];
    v16 = [v10 objectAtIndex:0];
    v4 = 0x1ED5FA000uLL;
    if (qword_1ED5FAD40 != -1)
    {
      goto LABEL_39;
    }

LABEL_21:
    v17 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      v18 = [v16 objectAtIndexedSubscript:0];
      v19 = [v16 objectAtIndexedSubscript:1];
      buf = 68289538;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2114;
      v40 = v18;
      v41 = 2114;
      v42 = v19;
      _os_log_impl(&dword_1DF7FE000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Cycle introduced in sync-get graph, FromNode:%{public, location:escape_only}@, ToNode:%{public, location:escape_only}@}", &buf, 0x26u);
      if (*(v4 + 3392) != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v20 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      v21 = [v16 objectAtIndexedSubscript:0];
      v22 = [v16 objectAtIndexedSubscript:1];
      buf = 68289538;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2114;
      v40 = v21;
      v41 = 2114;
      v42 = v22;
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Cycle introduced in sync-get graph", "{msg%{public}.0s:#Cohorting Cycle introduced in sync-get graph, FromNode:%{public, location:escape_only}@, ToNode:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    v11 = v5;
  }

  else
  {
LABEL_19:
    +[CLAutoCohortUtilities markUnvettedSafe];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

@end