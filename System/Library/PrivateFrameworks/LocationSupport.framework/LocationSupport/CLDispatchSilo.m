@interface CLDispatchSilo
- (CLDispatchSilo)initWithIdentifier:(id)a3;
- (CLDispatchSilo)initWithUnderlyingQueue:(id)a3;
- (CLDispatchSilo)initWithUnderlyingQueue:(id)a3 bePermissive:(BOOL)a4;
- (id)getTimeCoercibleVariantInstance;
- (id)initMain;
- (id)newTimer;
- (id)operationQueue;
- (void)_setLatchedAbsoluteTimestamp:(double)a3;
- (void)afterInterval:(double)a3 async:(id)a4;
- (void)async:(id)a3;
- (void)heartBeat:(id)a3;
- (void)intendToSync;
- (void)resume;
- (void)suspend;
- (void)sync:(id)a3;
@end

@implementation CLDispatchSilo

- (void)intendToSync
{
  v37 = *MEMORY[0x1E69E9840];
  if (+[CLAutoCohortUtilities autoCohortingEnabled])
  {
    v3 = dispatch_get_specific("dispatchSilo");
    if (v3)
    {
      v4 = self;
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
      }

      v5 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(v3 + 8);
        v7 = *(v3 + 80);
        identifier = v4->super._identifier;
        cohortId = v4->_cohortId;
        *buf = 68290050;
        v26 = 0;
        v27 = 2082;
        v28 = &unk_1DF8255EF;
        v29 = 2114;
        v30 = v6;
        v31 = 2114;
        v32 = v7;
        v33 = 2114;
        v34 = identifier;
        v35 = 2114;
        v36 = cohortId;
        _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Cohorting Intend to sync, FromDispatchSilo:%{public, location:escape_only}@, FromCohortId:%{public, location:escape_only}@, ToDispatchSilo:%{public, location:escape_only}@, ToCohortId:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      v10 = [*(v3 + 80) intValue];
      if (v10 <= [(NSNumber *)v4->_cohortId intValue])
      {
        os_unfair_lock_lock(&unk_1ECE5D900);
        v11 = [v3 identifier];
        v12 = [(CLSilo *)v4 identifier];
        v24[1] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
        v14 = [CLAutoCohortUtilities isEdgeKnownToCauseCycle:v13];

        if (!v14)
        {
          v16 = sub_1DF81A9CC();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            v17 = [v3 identifier];
            v18 = [(CLSilo *)v4 identifier];
            *buf = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = &unk_1DF8255EF;
            v29 = 2114;
            v30 = v17;
            v31 = 2114;
            v32 = v18;
            _os_log_impl(&dword_1DF7FE000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Persist sync-get edge, fromSiloIdentifier:%{public, location:escape_only}@, toSiloIdentifier:%{public, location:escape_only}@}", buf, 0x26u);
          }

          v19 = sub_1DF81A9CC();
          if (os_signpost_enabled(v19))
          {
            v20 = [v3 identifier];
            v21 = [(CLSilo *)v4 identifier];
            *buf = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = &unk_1DF8255EF;
            v29 = 2114;
            v30 = v20;
            v31 = 2114;
            v32 = v21;
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Persist sync-get edge", "{msg%{public}.0s:#Cohorting Persist sync-get edge, fromSiloIdentifier:%{public, location:escape_only}@, toSiloIdentifier:%{public, location:escape_only}@}", buf, 0x26u);
          }

          v22 = [v3 identifier];
          v23 = [(CLSilo *)v4 identifier];
          [CLAutoCohortUtilities persistEdgeFrom:v22 to:v23];

          _Exit(0);
        }

        os_unfair_lock_unlock(&unk_1ECE5D900);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)newTimer
{
  v3 = [[CLDispatchTimerScheduler alloc] initWithDispatchSilo:self];
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

- (id)initMain
{
  v5.receiver = self;
  v5.super_class = CLDispatchSilo;
  v2 = [(CLSilo *)&v5 initWithIdentifier:@"MainSilo"];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_queue, MEMORY[0x1E69E96A0]);
  }

  return v3;
}

- (CLDispatchSilo)initWithIdentifier:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1DF8090DC;
  v30 = sub_1DF80910C;
  v31 = dispatch_get_global_queue(0, 0);
  v5 = +[CLSilo globalConfiguration];
  v6 = [v5 objectForKeyedSubscript:@"NameToCohortMap"];

  v7 = [v6 objectForKeyedSubscript:v4];
  if (v7 || ([&unk_1F5AC9BA8 containsObject:v4] & 1) == 0 && (objc_msgSend(v6, "objectForKeyedSubscript:", @"default"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v22 = sub_1DF81A900;
    v23 = &unk_1E86C84F8;
    v8 = v7;
    v24 = v8;
    v25 = &v26;
    v9 = qword_1ED5FADF8;
    v10 = v21;
    if (v9 != -1)
    {
      dispatch_once(&qword_1ED5FADF8, &unk_1F5AC69C0);
    }

    os_unfair_lock_lock(&unk_1ED5FADD8);
    v22(v10, qword_1ED5FADF0);

    os_unfair_lock_unlock(&unk_1ED5FADD8);
  }

  else
  {
    v8 = 0;
  }

  v20.receiver = self;
  v20.super_class = CLDispatchSilo;
  v11 = [(CLSilo *)&v20 initWithIdentifier:v4];
  if (v11)
  {
    v12 = v4;
    v13 = [v4 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create_with_target_V2(v13, v14, v27[5]);
    v16 = *(v11 + 7);
    *(v11 + 7) = v15;

    objc_storeStrong(v11 + 10, v8);
    dispatch_queue_set_specific(*(v11 + 7), "dispatchSilo", v11, 0);
  }

  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
  }

  v17 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v33 = 0;
    v34 = 2082;
    v35 = &unk_1DF8255EF;
    v36 = 2114;
    v37 = v4;
    v38 = 2114;
    v39 = v8;
    _os_log_impl(&dword_1DF7FE000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting CohortId assignment for silo, Silo:%{public, location:escape_only}@, CohortId:%{public, location:escape_only}@}", buf, 0x26u);
  }

  _Block_object_dispose(&v26, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (CLDispatchSilo)initWithUnderlyingQueue:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:dispatch_queue_get_label(v5)];
  v10.receiver = self;
  v10.super_class = CLDispatchSilo;
  v7 = [(CLSilo *)&v10 initWithIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_queue, a3);
  }

  return v8;
}

- (CLDispatchSilo)initWithUnderlyingQueue:(id)a3 bePermissive:(BOOL)a4
{
  result = [(CLDispatchSilo *)self initWithUnderlyingQueue:a3];
  if (result)
  {
    result->_useCLPermissiveTimer = a4;
  }

  return result;
}

- (id)getTimeCoercibleVariantInstance
{
  v2 = [[CLTimeCoercibleDispatchSilo alloc] initWithUnderlyingQueue:self->_queue];

  return v2;
}

- (void)suspend
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_isQueueSuspended)
  {
    v4 = sub_1DF81A9CC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "!_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v5 = sub_1DF81A9CC();
    if (os_signpost_enabled(v5))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "!_isQueueSuspended";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo currently does not support reference counting", "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v6 = sub_1DF81A9CC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "!_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  self->_isQueueSuspended = 1;
  queue = self->_queue;
  v3 = *MEMORY[0x1E69E9840];

  dispatch_suspend(queue);
}

- (void)resume
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_isQueueSuspended)
  {
    v4 = sub_1DF81A9CC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v5 = sub_1DF81A9CC();
    if (os_signpost_enabled(v5))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "_isQueueSuspended";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo currently does not support reference counting", "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v6 = sub_1DF81A9CC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "_isQueueSuspended";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo currently does not support reference counting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  dispatch_resume(self->_queue);
  self->_isQueueSuspended = 0;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_setLatchedAbsoluteTimestamp:(double)a3
{
  if (self->super._currentLatchedAbsoluteTimestamp <= a3)
  {
    self->super._currentLatchedAbsoluteTimestamp = a3;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
    }

    v5 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Time should not be moved backwards; systems based on monotonic time (like CLTimer) will misbehave.", v6, 2u);
    }
  }
}

- (void)async:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF81B0D8;
  v7[3] = &unk_1E86C8370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)sync:(id)a3
{
  v4 = a3;
  [(CLDispatchSilo *)self intendToSync];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF81B198;
  v7[3] = &unk_1E86C8370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)afterInterval:(double)a3 async:(id)a4
{
  v6 = a4;
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1DF81B27C;
  v10[3] = &unk_1E86C8370;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_after(v7, queue, v10);
}

- (void)heartBeat:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1DF81B328;
  v7[3] = &unk_1E86C83C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)operationQueue
{
  [(CLDispatchSilo *)self assertInside];
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    v6 = MEMORY[0x1E696AEC0];
    v7 = [(CLSilo *)self identifier];
    v8 = [v6 stringWithFormat:@"%@.NSOperationQueue", v7];
    [(NSOperationQueue *)self->_operationQueue setName:v8];

    [(NSOperationQueue *)self->_operationQueue setUnderlyingQueue:self->_queue];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

@end