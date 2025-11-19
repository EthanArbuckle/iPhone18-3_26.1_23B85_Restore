@interface _Locationd
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
+ (void)performSyncOnSilo:(id)a3 invoker:(id)a4;
@end

@implementation _Locationd

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((byte_1ED5FAD98 & 1) == 0)
  {
    _Exit(0);
  }

  v7 = a4 + 1;
  if (v7 < [v5 count])
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v8 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_FAULT, "_Locationd should come last?!", &v13, 2u);
    }

    v9 = [v6 objectAtIndexedSubscript:v7];
    [v9 becameFatallyBlocked:v6 index:v7];
  }

  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }

  v10 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
  {
    v13 = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = &unk_1DF8255EF;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:locationd became blocked, non-fatally because internal install, ImplicatedServicesSoFar:%{public, location:escape_only}@}", &v13, 0x1Cu);
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }
  }

  v11 = qword_1ED5FAD48;
  if (os_signpost_enabled(qword_1ED5FAD48))
  {
    v13 = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = &unk_1DF8255EF;
    v17 = 2114;
    v18 = v6;
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "locationd became blocked, non-fatally because internal install", "{msg%{public}.0s:locationd became blocked, non-fatally because internal install, ImplicatedServicesSoFar:%{public, location:escape_only}@}", &v13, 0x1Cu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)performSyncOnSilo:(id)a3 invoker:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Don't message _Locationd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }
    }

    v8 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "__objc_no";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Don't message _Locationd", "{msg%{public}.0s:Don't message _Locationd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Don't message _Locationd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }
}

@end