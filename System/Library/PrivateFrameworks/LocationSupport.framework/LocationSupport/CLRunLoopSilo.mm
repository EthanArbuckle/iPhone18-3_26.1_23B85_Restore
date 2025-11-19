@interface CLRunLoopSilo
- (BOOL)isSuspended;
- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)a3;
- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)a3 bePermissive:(BOOL)a4;
- (CLRunLoopSilo)initWithIdentifier:(id)a3;
- (CLRunLoopSilo)initWithUnderlyingRunLoop:(__CFRunLoop *)a3;
- (id)debugDescription;
- (id)getTimeCoercibleVariantInstance;
- (id)newTimer;
- (void)afterInterval:(double)a3 async:(id)a4;
- (void)assertInside;
- (void)assertOutside;
- (void)async:(id)a3;
- (void)heartBeat:(id)a3;
- (void)resume;
- (void)suspend;
- (void)sync:(id)a3;
@end

@implementation CLRunLoopSilo

- (CLRunLoopSilo)initWithIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CLRunLoopSilo;
  v5 = [(CLSilo *)&v22 initWithIdentifier:v4];
  if (v5)
  {
    v6 = +[CLSilo globalConfiguration];
    v7 = [v6 objectForKeyedSubscript:@"NameToCohortMap"];

    v8 = [v7 objectForKeyedSubscript:v4];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v7 objectForKeyedSubscript:@"default"];
      if (!v9)
      {
        v13 = objc_alloc_init(CLRunLoopSiloThread);
        siloThread = v5->_siloThread;
        v5->_siloThread = v13;

        goto LABEL_7;
      }
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v4, v9];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = sub_1DF810454;
    v19 = &unk_1E86C8348;
    v20 = v5;
    v9 = v9;
    v21 = v9;
    if (qword_1ED5FAE68 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      os_unfair_lock_lock(&unk_1ED5FAE58);
      v18(v17, qword_1ED5FAE60);
      os_unfair_lock_unlock(&unk_1ED5FAE58);

      v4 = v10;
LABEL_7:
      if (v5->_siloThread)
      {
        break;
      }

      v15 = sub_1DF80FDC0();
      v9 = &off_1DF825000;
      v10 = &unk_1DF8255EF;
      v7 = "_siloThread";
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v24 = 0;
        v25 = 2082;
        v26 = &unk_1DF8255EF;
        v27 = 2082;
        v28 = "assert";
        v29 = 2081;
        v30 = "_siloThread";
        _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSiloThread failed to init, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v16 = sub_1DF80FDC0();
      if (os_signpost_enabled(v16))
      {
        *buf = 68289539;
        v24 = 0;
        v25 = 2082;
        v26 = &unk_1DF8255EF;
        v27 = 2082;
        v28 = "assert";
        v29 = 2081;
        v30 = "_siloThread";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSiloThread failed to init", "{msg%{public}.0s:CLRunLoopSiloThread failed to init, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v5 = sub_1DF80FDC0();
      if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v24 = 0;
        v25 = 2082;
        v26 = &unk_1DF8255EF;
        v27 = 2082;
        v28 = "assert";
        v29 = 2081;
        v30 = "_siloThread";
        _os_log_impl(&dword_1DF7FE000, &v5->super.super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSiloThread failed to init, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
LABEL_18:
      dispatch_once(&qword_1ED5FAE68, &unk_1F5AC6460);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLRunLoopSilo;
  v3 = [(CLSilo *)&v8 initWithIdentifier:a3];
  if (v3 && (v4 = [[CLRunLoopSiloThread alloc] initWithCurrentThread], siloThread = v3->_siloThread, v3->_siloThread = v4, siloThread, !v3->_siloThread))
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)a3 bePermissive:(BOOL)a4
{
  result = [(CLRunLoopSilo *)self initWithCurrentRunLoopAndIdentifier:a3];
  if (result)
  {
    result->_useCLPermissiveTimer = a4;
  }

  return result;
}

- (CLRunLoopSilo)initWithUnderlyingRunLoop:(__CFRunLoop *)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RunLoop: %p", a3];
  if (CFRunLoopGetCurrent() == a3)
  {
    v6 = [(CLRunLoopSilo *)self initWithCurrentRunLoopAndIdentifier:v5];
LABEL_6:
    v6 = v6;
    v9 = v6;
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = CLRunLoopSilo;
  v6 = [(CLSilo *)&v11 initWithIdentifier:v5];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [[CLRunLoopSiloThread alloc] initWithRunLoop:a3];
  siloThread = v6->_siloThread;
  v6->_siloThread = v7;

  if (v6->_siloThread)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)getTimeCoercibleVariantInstance
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (void)assertInside
{
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v3 = [(CLRunLoopSiloThread *)self->_siloThread underlyingRunLoop];
  if (v4 != v3)
  {
    __assert_rtn("[CLRunLoopSilo assertInside]", "CLRunLoopSilo.m", 285, "[NSRunLoop currentRunLoop] == _siloThread.underlyingRunLoop");
  }
}

- (void)assertOutside
{
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v3 = [(CLRunLoopSiloThread *)self->_siloThread underlyingRunLoop];
  if (v4 == v3)
  {
    __assert_rtn("[CLRunLoopSilo assertOutside]", "CLRunLoopSilo.m", 290, "[NSRunLoop currentRunLoop] != _siloThread.underlyingRunLoop");
  }
}

- (void)suspend
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (void)resume
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support resume. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support resume. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support resume. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support resume. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (BOOL)isSuspended
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (id)newTimer
{
  v3 = [[CLRunLoopTimerScheduler alloc] initWithRunLoopSilo:self];
  if (self->_useCLPermissiveTimer)
  {
    v4 = off_1E86C7FE0;
  }

  else
  {
    v4 = &off_1E86C8008;
  }

  v5 = [objc_alloc(*v4) initInSilo:self withScheduler:v3];

  return v5;
}

- (void)async:(id)a3
{
  v4 = a3;
  v5 = [(CLRunLoopSiloThread *)self->_siloThread underlyingRunLoop];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF8111C4;
  v7[3] = &unk_1E86C8370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)sync:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = 0;
  [(CLRunLoopSiloThread *)self->_siloThread threadId];
  pthread_dependency_init_np();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1DF8112A0;
  v6[3] = &unk_1E86C8398;
  v7 = v4;
  v8 = v9;
  v5 = v4;
  [(CLRunLoopSilo *)self async:v6];
  pthread_dependency_wait_np();
}

- (void)afterInterval:(double)a3 async:(id)a4
{
  siloThread = self->_siloThread;
  v6 = a4;
  v8 = [(CLRunLoopSiloThread *)siloThread underlyingRunLoop];
  v7 = _Block_copy(v6);

  [v8 performSelector:sel_async_ withObject:v7 afterDelay:a3];
}

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = self->super._identifier;
  v4 = [(CLRunLoopSiloThread *)self->_siloThread underlyingRunLoop];
  v5 = [v2 stringWithFormat:@"CLRunLoopSilo: %@ - %@", identifier, v4];

  return v5;
}

- (void)heartBeat:(id)a3
{
  v4 = a3;
  v5 = [(CLRunLoopSiloThread *)self->_siloThread underlyingRunLoop];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF8114C8;
  v7[3] = &unk_1E86C83C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBlock:v7];
}

@end