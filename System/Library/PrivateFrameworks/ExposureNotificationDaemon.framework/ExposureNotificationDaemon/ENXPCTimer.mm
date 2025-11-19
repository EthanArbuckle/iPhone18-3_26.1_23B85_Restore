@interface ENXPCTimer
- (ENXPCTimer)initWithName:(id)a3 date:(id)a4 gracePeriod:(double)a5 cadence:(unint64_t)a6 priority:(int64_t)a7 options:(unint64_t)a8 block:(id)a9;
- (ENXPCTimer)initWithName:(id)a3 date:(id)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8;
- (ENXPCTimer)initWithName:(id)a3 delay:(double)a4 gracePeriod:(double)a5 cadence:(unint64_t)a6 priority:(int64_t)a7 options:(unint64_t)a8 block:(id)a9;
- (ENXPCTimer)initWithName:(id)a3 delay:(double)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8;
- (ENXPCTimer)initWithName:(id)a3 timeInterval:(double)a4 priority:(int64_t)a5 options:(unint64_t)a6 block:(id)a7;
- (id)activityHandler;
- (id)criteria;
- (id)description;
- (uint64_t)activityHandler;
- (void)handleActivity;
- (void)invalidate;
@end

@implementation ENXPCTimer

- (ENXPCTimer)initWithName:(id)a3 date:(id)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8
{
  v14 = a8;
  v15 = a4;
  v16 = a3;
  [v15 timeIntervalSinceNow];
  v18 = [(ENXPCTimer *)self initWithName:v16 date:v15 gracePeriod:v17 cadence:a6 priority:a7 options:v14 block:a5];

  return v18;
}

- (ENXPCTimer)initWithName:(id)a3 date:(id)a4 gracePeriod:(double)a5 cadence:(unint64_t)a6 priority:(int64_t)a7 options:(unint64_t)a8 block:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = ENXPCTimer;
  v19 = [(ENXPCTimer *)&v22 init];
  v20 = v19;
  if (v19)
  {
    [(ENXPCTimer *)v19 setName:v16];
    [(ENXPCTimer *)v20 setDate:v17];
    [(ENXPCTimer *)v20 setGracePeriod:a5];
    [(ENXPCTimer *)v20 setPriority:a7];
    [(ENXPCTimer *)v20 setOptions:a8];
    [(ENXPCTimer *)v20 setCadence:a6 & (([(ENXPCTimer *)v20 options]<< 50) >> 63)];
    [(ENXPCTimer *)v20 setBlock:v18];
    [(ENXPCTimer *)v20 handleActivity];
  }

  return v20;
}

- (ENXPCTimer)initWithName:(id)a3 delay:(double)a4 gracePeriod:(double)a5 cadence:(unint64_t)a6 priority:(int64_t)a7 options:(unint64_t)a8 block:(id)a9
{
  v16 = MEMORY[0x277CBEAA0];
  v17 = a9;
  v18 = a3;
  v19 = [v16 dateWithTimeIntervalSinceNow:a4];
  v20 = [(ENXPCTimer *)self initWithName:v18 date:v19 gracePeriod:a6 cadence:a7 priority:a8 options:v17 block:a5];

  return v20;
}

- (ENXPCTimer)initWithName:(id)a3 delay:(double)a4 gracePeriod:(double)a5 priority:(int64_t)a6 options:(unint64_t)a7 block:(id)a8
{
  v14 = MEMORY[0x277CBEAA0];
  v15 = a8;
  v16 = a3;
  v17 = [v14 dateWithTimeIntervalSinceNow:a4];
  v18 = [(ENXPCTimer *)self initWithName:v16 date:v17 gracePeriod:a6 priority:a7 options:v15 block:a5];

  return v18;
}

- (ENXPCTimer)initWithName:(id)a3 timeInterval:(double)a4 priority:(int64_t)a5 options:(unint64_t)a6 block:(id)a7
{
  v12 = MEMORY[0x277CBEAA0];
  v13 = a7;
  v14 = a3;
  v15 = [v12 dateWithTimeIntervalSinceNow:a4];
  v16 = [(ENXPCTimer *)self initWithName:v14 date:v15 gracePeriod:a5 priority:a6 options:v13 block:0.0];

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA0];
  v4 = [(ENXPCTimer *)self name];
  v5 = [(ENXPCTimer *)self criteria];
  v6 = [v3 stringWithFormat:@"EN XPC Activity: %@, %@", v4, v5];

  return v6;
}

- (id)criteria
{
  v3 = [(ENXPCTimer *)self date];
  [v3 timeIntervalSinceNow];
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
  v11 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86360], (v11 & 0x2000) != 0);
  xpc_dictionary_set_int64(v10, *MEMORY[0x277D86250], v7);
  xpc_dictionary_set_int64(v10, *MEMORY[0x277D86270], v9);
  v12 = [(ENXPCTimer *)self priority];
  v13 = MEMORY[0x277D86350];
  if (v12 != 1)
  {
    v13 = MEMORY[0x277D86348];
  }

  xpc_dictionary_set_string(v10, *MEMORY[0x277D86340], *v13);
  v14 = [(ENXPCTimer *)self cadence];
  if (v14 <= 3599)
  {
    if (v14 <= 299)
    {
      if (!v14)
      {
        goto LABEL_31;
      }

      if (v14 == 60)
      {
        v15 = *MEMORY[0x277D86288];
        v16 = MEMORY[0x277D862A8];
        goto LABEL_29;
      }
    }

    else
    {
      switch(v14)
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

  else if (v14 > 86399)
  {
    switch(v14)
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
    switch(v14)
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

  v31 = [(ENXPCTimer *)self cadence];
  if (([(ENXPCTimer *)self options]& 0x2000) != 0)
  {
    v15 = *MEMORY[0x277D86288];
    v17 = v10;
    v18 = v31;
    goto LABEL_30;
  }

LABEL_31:
  v19 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86330], v19 & 1);
  v20 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D863A8], (v20 & 4) != 0);
  v21 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D863B0], (v21 & 2) != 0);
  v22 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D863C8], (v22 & 8) != 0);
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
  v24 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86398], v24 < 0);
  v25 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86390], v25 & 0x100);
  v26 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86230], (v26 & 0x200) != 0);
  v27 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D862E0], (v27 & 0x400) != 0);
  v28 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86248], (v28 & 0x800) != 0);
  v29 = [(ENXPCTimer *)self options];
  xpc_dictionary_set_BOOL(v10, *MEMORY[0x277D86258], (v29 & 0x1000) != 0);

  return v10;
}

- (void)invalidate
{
  v1 = [a1 name];
  LogPrintF_safe();
}

- (id)activityHandler
{
  v3 = [(ENXPCTimer *)self name];
  v4 = [(ENXPCTimer *)self date];
  [v4 timeIntervalSinceNow];

  if (gLogCategory_ENXPCTimer <= 30 && (gLogCategory_ENXPCTimer != -1 || _LogCategory_Initialize()))
  {
    [(ENXPCTimer *)self activityHandler];
  }

  objc_initWeak(&location, self);
  v5 = [(ENXPCTimer *)self block];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__ENXPCTimer_activityHandler__block_invoke;
  v10[3] = &unk_278FD2608;
  objc_copyWeak(&v13, &location);
  v11 = v3;
  v12 = v5;
  v6 = v5;
  v7 = v3;
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
  v6 = [(ENXPCTimer *)self name];
  v3 = [v6 utf8ValueSafe];
  v4 = *MEMORY[0x277D86238];
  v5 = [(ENXPCTimer *)self activityHandler];
  xpc_activity_register(v3, v4, v5);
}

- (uint64_t)activityHandler
{
  [a1 cadence];
  [a1 gracePeriod];
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