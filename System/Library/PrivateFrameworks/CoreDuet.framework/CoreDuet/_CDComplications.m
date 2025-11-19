@interface _CDComplications
+ (id)sharedComplication;
- (BOOL)admissionCheckOnComplication:(id)a3 forRemote:(BOOL)a4 error:(id *)a5;
- (BOOL)isBundleActiveComplication:(id)a3;
- (BOOL)watchIsCharging;
- (id)initForComplications;
- (int)remainingPushesOnComplication:(id)a3 andReduceBy:(id)a4;
- (void)readOutActiveComplications;
@end

@implementation _CDComplications

+ (id)sharedComplication
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___CDComplications_sharedComplication__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedComplication_init_once_token != -1)
  {
    dispatch_once(&sharedComplication_init_once_token, block);
  }

  v2 = sharedInstance;

  return v2;
}

- (void)readOutActiveComplications
{
  v9 = _CDDCurrentActiveComplications();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v9 count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v8 = [v9 objectAtIndex:i];
      [v3 setObject:v7 forKey:v8];
    }
  }

  [(_CDComplications *)self setActiveComplications:v3];
}

- (id)initForComplications
{
  v28.receiver = self;
  v28.super_class = _CDComplications;
  v2 = [(_CDComplications *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
    activeComplications = v2->_activeComplications;
    v2->_activeComplications = v3;

    v2->deviceChangeToken = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.complications", v5);
    complicationQueue = v2->complicationQueue;
    v2->complicationQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    meterTokens = v2->meterTokens;
    v2->meterTokens = v8;

    v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreduet.complications.pushLimits"];
    pushLimits = v2->pushLimits;
    v2->pushLimits = v10;

    if (!v2->pushLimits)
    {
      v12 = +[_CDLogging admissionCheckChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(_CDComplications *)v12 initForComplications];
      }
    }

    v13 = _CDDComplicationChangeNotificationString();
    v14 = v13;
    if (v13)
    {
      v15 = [v13 UTF8String];
      v16 = v2->complicationQueue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __40___CDComplications_initForComplications__block_invoke;
      handler[3] = &unk_1E73687B8;
      v27 = v2;
      notify_register_dispatch(v15, &v2->deviceChangeToken, v16, handler);
    }

    v17 = _CDDComplicationChangeOverCloudNotificationString();

    if (v17)
    {
      v18 = [v17 UTF8String];
      v19 = v2->complicationQueue;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __40___CDComplications_initForComplications__block_invoke_2;
      v24[3] = &unk_1E73687B8;
      v25 = v2;
      notify_register_dispatch(v18, &v2->deviceChangeToken, v19, v24);
    }

    v20 = v2->complicationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40___CDComplications_initForComplications__block_invoke_3;
    block[3] = &unk_1E7367440;
    v23 = v2;
    dispatch_sync(v20, block);
  }

  return v2;
}

- (int)remainingPushesOnComplication:(id)a3 andReduceBy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSUserDefaults *)self->pushLimits objectForKey:@"complicationPushLimits"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = v10;
  v12 = [v10 objectForKey:v6];
  if (v12)
  {
    if ([v7 intValue] >= 1 && objc_msgSend(v12, "integerValue") >= 1)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue") - objc_msgSend(v7, "intValue")}];
      [v11 setValue:v13 forKey:v6];

      [(NSUserDefaults *)self->pushLimits setObject:v11 forKey:@"complicationPushLimits"];
    }

    v14 = [v12 intValue];
  }

  else
  {
    [v11 setValue:&unk_1F05EE748 forKey:v6];
    [(NSUserDefaults *)self->pushLimits setObject:v11 forKey:@"complicationPushLimits"];
    v14 = 50;
  }

  return v14;
}

- (BOOL)watchIsCharging
{
  state64 = 0;
  out_token = 0;
  LOBYTE(v2) = 0;
  if (!notify_register_check("com.apple.coreduetd.nearbydeviceschanged", &out_token))
  {
    if (notify_get_state(out_token, &state64))
    {
      v3 = 0;
    }

    else
    {
      v3 = state64 == 1;
    }

    if (!v3)
    {
      v2 = +[_CDLogging admissionCheckChannel];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "Watch is not nearby\n", buf, 2u);
      }

      LOBYTE(v2) = 0;
      goto LABEL_24;
    }

    *buf = 0;
    token = 0;
    LOBYTE(v2) = 0;
    if (notify_register_check("com.apple.coreduetd.watchischarging", &token))
    {
LABEL_23:
      notify_cancel(token);
LABEL_24:
      notify_cancel(out_token);
      return v2;
    }

    if (notify_get_state(token, buf))
    {
      v4 = 0;
    }

    else
    {
      v4 = *buf == 1;
    }

    LODWORD(v2) = v4;
    v5 = +[_CDLogging admissionCheckChannel];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v2 == 1)
    {
      if (v6)
      {
        *v9 = 0;
        v7 = "Watch is nearby and charging, approving complication push\n";
LABEL_21:
        _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, v7, v9, 2u);
      }
    }

    else if (v6)
    {
      *v9 = 0;
      v7 = "Watch is nearby but not charging\n";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  return v2;
}

- (BOOL)admissionCheckOnComplication:(id)a3 forRemote:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    complicationQueue = self->complicationQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65___CDComplications_admissionCheckOnComplication_forRemote_error___block_invoke;
    v13[3] = &unk_1E73687E0;
    v13[4] = self;
    v14 = v8;
    v15 = &v17;
    v16 = a4;
    dispatch_sync(complicationQueue, v13);
    if (a5)
    {
      *a5 = 0;
    }

    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)isBundleActiveComplication:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  complicationQueue = self->complicationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___CDComplications_isBundleActiveComplication___block_invoke;
  block[3] = &unk_1E7368808;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(complicationQueue, block);
  LOBYTE(complicationQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return complicationQueue;
}

@end