@interface ENXPCTimer
- (ENXPCTimer)initWithName:(id)name date:(id)date gracePeriod:(double)period cadence:(unint64_t)cadence priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (ENXPCTimer)initWithName:(id)name date:(id)date gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (ENXPCTimer)initWithName:(id)name delay:(double)delay gracePeriod:(double)period cadence:(unint64_t)cadence priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (ENXPCTimer)initWithName:(id)name delay:(double)delay gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (ENXPCTimer)initWithName:(id)name timeInterval:(double)interval priority:(int64_t)priority options:(unint64_t)options block:(id)block;
- (id)activityHandler;
- (id)criteria;
- (id)description;
- (uint64_t)activityHandler;
- (void)handleActivity;
- (void)invalidate;
@end

@implementation ENXPCTimer

- (ENXPCTimer)initWithName:(id)name date:(id)date gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  blockCopy = block;
  dateCopy = date;
  nameCopy = name;
  [dateCopy timeIntervalSinceNow];
  v18 = [(ENXPCTimer *)self initWithName:nameCopy date:dateCopy gracePeriod:v17 cadence:priority priority:options options:blockCopy block:period];

  return v18;
}

- (ENXPCTimer)initWithName:(id)name date:(id)date gracePeriod:(double)period cadence:(unint64_t)cadence priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  nameCopy = name;
  dateCopy = date;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = ENXPCTimer;
  v19 = [(ENXPCTimer *)&v22 init];
  v20 = v19;
  if (v19)
  {
    [(ENXPCTimer *)v19 setName:nameCopy];
    [(ENXPCTimer *)v20 setDate:dateCopy];
    [(ENXPCTimer *)v20 setGracePeriod:period];
    [(ENXPCTimer *)v20 setPriority:priority];
    [(ENXPCTimer *)v20 setOptions:options];
    [(ENXPCTimer *)v20 setCadence:cadence & (([(ENXPCTimer *)v20 options]<< 50) >> 63)];
    [(ENXPCTimer *)v20 setBlock:blockCopy];
    [(ENXPCTimer *)v20 handleActivity];
  }

  return v20;
}

- (ENXPCTimer)initWithName:(id)name delay:(double)delay gracePeriod:(double)period cadence:(unint64_t)cadence priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  v16 = MEMORY[0x277CBEAA0];
  blockCopy = block;
  nameCopy = name;
  v19 = [v16 dateWithTimeIntervalSinceNow:delay];
  v20 = [(ENXPCTimer *)self initWithName:nameCopy date:v19 gracePeriod:cadence cadence:priority priority:options options:blockCopy block:period];

  return v20;
}

- (ENXPCTimer)initWithName:(id)name delay:(double)delay gracePeriod:(double)period priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  v14 = MEMORY[0x277CBEAA0];
  blockCopy = block;
  nameCopy = name;
  v17 = [v14 dateWithTimeIntervalSinceNow:delay];
  v18 = [(ENXPCTimer *)self initWithName:nameCopy date:v17 gracePeriod:priority priority:options options:blockCopy block:period];

  return v18;
}

- (ENXPCTimer)initWithName:(id)name timeInterval:(double)interval priority:(int64_t)priority options:(unint64_t)options block:(id)block
{
  v12 = MEMORY[0x277CBEAA0];
  blockCopy = block;
  nameCopy = name;
  v15 = [v12 dateWithTimeIntervalSinceNow:interval];
  v16 = [(ENXPCTimer *)self initWithName:nameCopy date:v15 gracePeriod:priority priority:options options:blockCopy block:0.0];

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA0];
  name = [(ENXPCTimer *)self name];
  criteria = [(ENXPCTimer *)self criteria];
  v6 = [v3 stringWithFormat:@"EN XPC Activity: %@, %@", name, criteria];

  return v6;
}

- (id)criteria
{
  date = [(ENXPCTimer *)self date];
  [date timeIntervalSinceNow];
  v5 = v4;

  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  v7 = v6;
  [(ENXPCTimer *)self gracePeriod];
  v9 = v8;
  v10 = xpc_dictionary_create(0, 0, 0);
  options = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86360], (options & 0x2000) != 0);
  xpc_dictionary_set_int64(v10, *MEMORY[0x277D86250], v7);
  xpc_dictionary_set_int64(v10, *MEMORY[0x277D86270], v9);
  priority = [(ENXPCTimer *)self priority];
  v13 = MEMORY[0x277D86350];
  if (priority != 1)
  {
    v13 = MEMORY[0x277D86348];
  }

  xpc_dictionary_set_string(v10, *MEMORY[0x277D86340], *v13);
  cadence = [(ENXPCTimer *)self cadence];
  if (cadence <= 3599)
  {
    if (cadence <= 299)
    {
      if (!cadence)
      {
        goto LABEL_31;
      }

      if (cadence == 60)
      {
        v15 = *MEMORY[0x277D86288];
        v16 = MEMORY[0x277D862A8];
        goto LABEL_29;
      }
    }

    else
    {
      switch(cadence)
      {
        case 300:
          v15 = *MEMORY[0x277D86288];
          v16 = MEMORY[0x277D862C0];
          goto LABEL_29;
        case 900:
          v15 = *MEMORY[0x277D86288];
          v16 = MEMORY[0x277D86290];
          goto LABEL_29;
        case 1800:
          v15 = *MEMORY[0x277D86288];
          v16 = MEMORY[0x277D862B0];
          goto LABEL_29;
      }
    }
  }

  else if (cadence > 86399)
  {
    switch(cadence)
    {
      case 86400:
        v15 = *MEMORY[0x277D86288];
        v16 = MEMORY[0x277D86298];
        goto LABEL_29;
      case 604800:
        v15 = *MEMORY[0x277D86288];
        v16 = MEMORY[0x277D862C8];
        goto LABEL_29;
      case 2592000:
        v15 = *MEMORY[0x277D86288];
        v17 = v10;
        v18 = 2592000;
LABEL_30:
        xpc_dictionary_set_int64(v17, v15, v18);
        goto LABEL_31;
    }
  }

  else
  {
    switch(cadence)
    {
      case 3600:
        v15 = *MEMORY[0x277D86288];
        v16 = MEMORY[0x277D862A0];
        goto LABEL_29;
      case 14400:
        v15 = *MEMORY[0x277D86288];
        v16 = MEMORY[0x277D862B8];
        goto LABEL_29;
      case 28800:
        v15 = *MEMORY[0x277D86288];
        v16 = MEMORY[0x277D862D0];
LABEL_29:
        v18 = *v16;
        v17 = v10;
        goto LABEL_30;
    }
  }

  cadence2 = [(ENXPCTimer *)self cadence];
  if (([(ENXPCTimer *)self options]& 0x2000) != 0)
  {
    v15 = *MEMORY[0x277D86288];
    v17 = v10;
    v18 = cadence2;
    goto LABEL_30;
  }

LABEL_31:
  options2 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86330], options2 & 1);
  options3 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D863A8], (options3 & 4) != 0);
  options4 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D863B0], (options4 & 2) != 0);
  options5 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D863C8], (options5 & 8) != 0);
  if (([(ENXPCTimer *)self options]& 0x10) != 0)
  {
    v23 = MEMORY[0x277D86370];
  }

  else if (([(ENXPCTimer *)self options]& 0x20) != 0)
  {
    v23 = MEMORY[0x277D86378];
  }

  else
  {
    if (([(ENXPCTimer *)self options]& 0x40) == 0)
    {
      goto LABEL_39;
    }

    v23 = MEMORY[0x277D86380];
  }

  if (*v23)
  {
    xpc_dictionary_set_BOOL(v10, *v23, 1);
  }

LABEL_39:
  options6 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86398], options6 < 0);
  options7 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86390], options7 & 0x100);
  options8 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86230], (options8 & 0x200) != 0);
  options9 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D862E0], (options9 & 0x400) != 0);
  options10 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86248], (options10 & 0x800) != 0);
  options11 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86258], (options11 & 0x1000) != 0);

  return v10;
}

- (void)invalidate
{
  name = [self name];
  LogPrintF_safe();
}

- (id)activityHandler
{
  name = [(ENXPCTimer *)self name];
  date = [(ENXPCTimer *)self date];
  [date timeIntervalSinceNow];

  if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
  {
    [(ENXPCTimer *)self activityHandler];
  }

  objc_initWeak(&location, self);
  block = [(ENXPCTimer *)self block];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__ENXPCTimer_activityHandler__block_invoke;
  v10[3] = &unk_278FD2608;
  objc_copyWeak(&v13, &location);
  v11 = name;
  v12 = block;
  v6 = block;
  v7 = name;
  v8 = MEMORY[0x24C214430](v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

void __29__ENXPCTimer_activityHandler__block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (xpc_activity_get_state(activity))
    {
      if (xpc_activity_should_defer(activity))
      {
        if (xpc_activity_set_state(activity, 3))
        {
          if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
          {
            __29__ENXPCTimer_activityHandler__block_invoke_cold_3(a1);
          }
        }

        else if (gLogCategory_ENXPCTimer <= 90 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
        {
          __29__ENXPCTimer_activityHandler__block_invoke_cold_2(a1);
        }

        goto LABEL_43;
      }

      state = xpc_activity_get_state(activity);
      v4 = xpc_activity_copy_criteria(activity);
      if (state == 2)
      {
        xpc_activity_set_state(activity, 5);
        v8 = MEMORY[0x277CCACA0];
        v9 = *(a1 + 32);
        v10 = [MEMORY[0x277CCAD70] UUID];
        v11 = [v10 UUIDString];
        v12 = [v8 stringWithFormat:@"%@-%@", v9, v11];

        [v12 UTF8String];
        v13 = os_transaction_create();
        if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
        {
          __29__ENXPCTimer_activityHandler__block_invoke_cold_1((a1 + 32));
        }

        (*(*(a1 + 40) + 16))();

        goto LABEL_42;
      }

      if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
      {
        v17 = *(a1 + 32);
        goto LABEL_30;
      }
    }

    else
    {
      [WeakRetained setActivity:activity];
      v4 = xpc_activity_copy_criteria(activity);
      if (!v4)
      {
        if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
        {
          __29__ENXPCTimer_activityHandler__block_invoke_cold_5(a1, WeakRetained);
        }

        v14 = [WeakRetained criteria];
        xpc_activity_set_criteria(activity, v14);

        goto LABEL_42;
      }

      v5 = [WeakRetained criteria];
      v6 = xpc_equal(v5, v4);

      if (!v6)
      {
        v15 = [WeakRetained criteria];
        xpc_activity_set_criteria(activity, v15);

        if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
        {
          __29__ENXPCTimer_activityHandler__block_invoke_cold_4(a1, WeakRetained);
        }

        goto LABEL_42;
      }

      if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
      {
        v16 = *(a1 + 32);
LABEL_30:
        LogPrintF_safe();
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (gLogCategory_ENXPCTimer <= 90 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
  {
    __29__ENXPCTimer_activityHandler__block_invoke_cold_6(a1);
  }

LABEL_43:
}

- (void)handleActivity
{
  name = [(ENXPCTimer *)self name];
  utf8ValueSafe = [name utf8ValueSafe];
  v4 = *MEMORY[0x277D86238];
  activityHandler = [(ENXPCTimer *)self activityHandler];
  xpc_activity_register(utf8ValueSafe, v4, activityHandler);
}

- (uint64_t)activityHandler
{
  [self cadence];
  [self gracePeriod];
  return LogPrintF_safe();
}

void __29__ENXPCTimer_activityHandler__block_invoke_cold_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 criteria];
  LogPrintF_safe();
}

void __29__ENXPCTimer_activityHandler__block_invoke_cold_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 criteria];
  LogPrintF_safe();
}

@end