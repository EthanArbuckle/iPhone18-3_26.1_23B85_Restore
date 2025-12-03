@interface GDRemoteViewAccessRequester
+ (BOOL)currentProcessIsSandboxed;
+ (unint64_t)_machTimeToMilliseconds:(unint64_t)milliseconds;
- (GDRemoteViewAccessRequester)init;
- (id)_requestAssertionForViewName:(id)name useCase:(id)case error:(id *)error;
- (id)requestAssertionForViewName:(id)name useCase:(id)case error:(id *)error;
- (id)requestInfoForViewName:(id)name useCase:(id)case error:(id *)error;
@end

@implementation GDRemoteViewAccessRequester

- (GDRemoteViewAccessRequester)init
{
  v10.receiver = self;
  v10.super_class = GDRemoteViewAccessRequester;
  v2 = [(GDRemoteViewAccessRequester *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_alloc_init(GDViewRemoteAccessRequesterGuardedData);
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = objc_opt_new();
    xpcService = v2->_xpcService;
    v2->_xpcService = v7;
  }

  return v2;
}

- (id)requestAssertionForViewName:(id)name useCase:(id)case error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = GDSignpostLog();
  caseCopy = case;
  v11 = os_signpost_id_generate(v9);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "viewServing", "", buf, 2u);
  }

  v12 = mach_absolute_time();
  v34 = 0;
  v13 = [(GDRemoteViewAccessRequester *)self _requestAssertionForViewName:nameCopy useCase:caseCopy error:&v34];

  v14 = v34;
  v15 = objc_opt_class();
  v16 = [v15 _machTimeToMilliseconds:mach_absolute_time() - v12];
  v17 = objc_opt_new();
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
  [v17 setObject:v18 forKeyedSubscript:@"latencyMillis"];

  if (qword_1ED87C3D8 != -1)
  {
    dispatch_once(&qword_1ED87C3D8, &unk_1F20A1AD8);
  }

  [v17 setObject:qword_1ED87C3D0 forKeyedSubscript:@"processName"];
  [v17 setObject:nameCopy forKeyedSubscript:@"viewName"];
  if (v13)
  {
    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"success"];
  }

  else
  {
    [v17 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"success"];
    if (v14)
    {
      domain = [v14 domain];
      [v17 setObject:domain forKeyedSubscript:@"errorDomain"];

      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "code")}];
      [v17 setObject:v20 forKeyedSubscript:@"errorCode"];
    }
  }

  AnalyticsSendEvent();
  if (+[GDOSVariant isInternalDevice])
  {
    v33 = v13;
    if (v13)
    {
      v21 = v11 - 1;
      v22 = @"success";
      if (v14)
      {
LABEL_13:
        v23 = nameCopy;
        v24 = v11;
        errorCopy = error;
        domain2 = [v14 domain];
        v27 = [domain2 isEqualToString:@"com.apple.intelligenceplatform.IntelligencePlatformCore.ViewXPC.AccessError"];

        if (v27)
        {
          code = [v14 code];
        }

        else
        {
          code = -1;
        }

        error = errorCopy;
        v11 = v24;
        nameCopy = v23;
        goto LABEL_25;
      }
    }

    else
    {
      v21 = v11 - 1;
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"error: %@", v14];
      if (v14)
      {
        goto LABEL_13;
      }
    }

    code = 0;
LABEL_25:
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 138543874;
      v36 = nameCopy;
      v37 = 2114;
      v38 = v22;
      v39 = 2050;
      v40 = code;
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "viewServing", "viewName=%{signpost.telemetry:string1,public}@ result=%{signpost.telemetry:string2,public}@ errorCode=%{signpost.telemetry:number1,public}ld enableTelemetry=YES ", buf, 0x20u);
    }

    v13 = v33;
    goto LABEL_29;
  }

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v29 = @"success";
    if (!v13)
    {
      v29 = @"error";
    }

    *buf = 138543618;
    v36 = nameCopy;
    v37 = 2114;
    v38 = v29;
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "viewServing", "viewName=%{signpost.telemetry:string1,public}@ result=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", buf, 0x16u);
  }

  v22 = v9;
LABEL_29:

  if (error && !v13)
  {
    v30 = v14;
    *error = v14;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)requestInfoForViewName:(id)name useCase:(id)case error:(id *)error
{
  nameCopy = name;
  caseCopy = case;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1ABF0516C;
  v32 = sub_1ABF0517C;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1ABF0516C;
  v26 = sub_1ABF0517C;
  v27 = 0;
  lock = self->_lock;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF05184;
  v16[3] = &unk_1E7962198;
  v20 = &v28;
  v11 = nameCopy;
  v17 = v11;
  v12 = caseCopy;
  v18 = v12;
  selfCopy = self;
  v21 = &v22;
  [(_PASLock *)lock runWithLockAcquired:v16];
  v13 = v29[5];
  if (error && !v13)
  {
    *error = v23[5];
    v13 = v29[5];
  }

  v14 = v13;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

- (id)_requestAssertionForViewName:(id)name useCase:(id)case error:(id *)error
{
  nameCopy = name;
  caseCopy = case;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1ABF0516C;
  v32 = sub_1ABF0517C;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1ABF0516C;
  v26 = sub_1ABF0517C;
  v27 = 0;
  lock = self->_lock;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF054FC;
  v16[3] = &unk_1E7962198;
  v20 = &v28;
  v11 = nameCopy;
  v17 = v11;
  v12 = caseCopy;
  v18 = v12;
  selfCopy = self;
  v21 = &v22;
  [(_PASLock *)lock runWithLockAcquired:v16];
  v13 = v29[5];
  if (error && !v13)
  {
    *error = v23[5];
    v13 = v29[5];
  }

  v14 = v13;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

+ (unint64_t)_machTimeToMilliseconds:(unint64_t)milliseconds
{
  if (qword_1ED87C3C8 != -1)
  {
    dispatch_once(&qword_1ED87C3C8, &unk_1F20A1AB8);
  }

  return dword_1ED87C3C0 * milliseconds / *algn_1ED87C3C4 / 0xF4240;
}

+ (BOOL)currentProcessIsSandboxed
{
  if (qword_1ED87C380 != -1)
  {
    dispatch_once(&qword_1ED87C380, &unk_1F20A1A98);
  }

  return dword_1ED87C388 != 0;
}

@end