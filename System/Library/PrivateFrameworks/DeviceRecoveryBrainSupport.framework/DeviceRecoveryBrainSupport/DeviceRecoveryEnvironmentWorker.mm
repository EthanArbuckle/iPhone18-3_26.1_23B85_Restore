@interface DeviceRecoveryEnvironmentWorker
+ (id)sharedWorker;
- (DeviceRecoveryEnvironmentWorker)init;
- (id)DREEntryDescription;
- (id)DREStringFromEntryReason:(int)reason;
- (id)getObjectFromInternalCookie:(id)cookie;
- (int)DREEntryReasonEnum;
- (void)CreateCookieAndCleanup;
- (void)populateDREDescription:(id)description;
- (void)populateDREReason;
- (void)setupPopulateDREDescription;
@end

@implementation DeviceRecoveryEnvironmentWorker

+ (id)sharedWorker
{
  if (sharedWorker_onceToken != -1)
  {
    +[DeviceRecoveryEnvironmentWorker sharedWorker];
  }

  v3 = sharedWorker_worker;

  return v3;
}

void __47__DeviceRecoveryEnvironmentWorker_sharedWorker__block_invoke(id a1)
{
  sharedWorker_worker = objc_alloc_init(DeviceRecoveryEnvironmentWorker);

  _objc_release_x1();
}

- (DeviceRecoveryEnvironmentWorker)init
{
  v13.receiver = self;
  v13.super_class = DeviceRecoveryEnvironmentWorker;
  v2 = [(DeviceRecoveryEnvironmentWorker *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_initially_inactive(0);
    v4 = dispatch_get_global_queue(33, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.DeviceRecovery.DREnvironmentServiceQueue", v3, v4);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v5;

    v2->_entryReason = 0;
    entryDescription = v2->_entryDescription;
    v2->_entryDescription = 0;

    v2->_isInternalBuild = os_variant_allows_internal_security_policies();
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
    timer = v2->_timer;
    v2->_timer = v8;

    v2->_timerCount = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __39__DeviceRecoveryEnvironmentWorker_init__block_invoke;
    block[3] = &unk_2C1A8;
    v12 = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

id __39__DeviceRecoveryEnvironmentWorker_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) populateDREReason];
  v2 = *(a1 + 32);

  return [v2 setupPopulateDREDescription];
}

- (void)populateDREReason
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  *self = v1;
}

- (void)setupPopulateDREDescription
{
  entryReason = self->_entryReason;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:@"/var/run/com.apple.DumpPanic.finishedThisBoot"];

  if ((v5 & 1) != 0 || entryReason != 3)
  {
    v7 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
    [(DeviceRecoveryEnvironmentWorker *)self populateDREDescription:v7];
  }

  else
  {
    dispatch_source_set_timer(self->_timer, 0, 0x3B9ACA00uLL, 0x1DCD6500uLL);
    timer = self->_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __62__DeviceRecoveryEnvironmentWorker_setupPopulateDREDescription__block_invoke;
    handler[3] = &unk_2C1A8;
    handler[4] = self;
    dispatch_source_set_event_handler(timer, handler);
    dispatch_resume(self->_timer);
  }
}

void __62__DeviceRecoveryEnvironmentWorker_setupPopulateDREDescription__block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/run/com.apple.DumpPanic.finishedThisBoot"];

  v4 = *(a1 + 32);
  if ((v3 & 1) != 0 || (v5 = *(v4 + 8), v5 >= 15))
  {
    dispatch_source_cancel(*(v4 + 24));
    v6 = *(a1 + 32);
    v7 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
    [v6 populateDREDescription:v7];

    v4 = *(a1 + 32);
    LOBYTE(v5) = *(v4 + 8);
  }

  *(v4 + 8) = v5 + 1;
}

- (void)populateDREDescription:(id)description
{
  descriptionCopy = description;
  v5 = DRECopyIORegAsString("IODeviceTree:/options", @"device-recovery-boot-reason");
  if (!v5)
  {
    v9 = [(DeviceRecoveryEnvironmentWorker *)self getObjectFromInternalCookie:@"entryDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    if (descriptionCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (!descriptionCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  v6 = [descriptionCopy objectForKey:@"PanicReason"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v10 = DRGetLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryEnvironmentWorker populateDREDescription:];
    }
  }

LABEL_14:
  if (v5 | v7)
  {
    if (v5 && v7)
    {
      v11 = [v5 stringByAppendingFormat:@" | PanicMedic: %@", v7];
    }

    else
    {
      if (v5)
      {
        v12 = v5;
      }

      else
      {
        v12 = v7;
      }

      v11 = v12;
    }

    v13 = v11;
  }

  else
  {
    [DeviceRecoveryEnvironmentWorker populateDREDescription:];
    v13 = 0;
  }

  objc_storeStrong(&self->_entryDescription, v13);
  v14 = DRGetLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    entryDescription = self->_entryDescription;
    *buf = 136446466;
    v17 = "[DeviceRecoveryEnvironmentWorker populateDREDescription:]";
    v18 = 2114;
    v19 = entryDescription;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Entry description: %{public}@", buf, 0x16u);
  }

  dispatch_activate(self->_serviceQueue);
}

- (id)getObjectFromInternalCookie:(id)cookie
{
  cookieCopy = cookie;
  v4 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DeviceRecovery.entryInfo"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:cookieCopy];
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = DRGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryEnvironmentWorker getObjectFromInternalCookie:];
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (int)DREEntryReasonEnum
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __53__DeviceRecoveryEnvironmentWorker_DREEntryReasonEnum__block_invoke;
  v5[3] = &unk_2C1D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)DREEntryDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = &stru_30AA8;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __54__DeviceRecoveryEnvironmentWorker_DREEntryDescription__block_invoke;
  v5[3] = &unk_2C1D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DREStringFromEntryReason:(int)reason
{
  v4 = @"Unknown Entry Reason";
  if ((reason - 1) <= 4)
  {
    v5 = *off_2C1F0[reason - 1];

    v4 = v5;
  }

  return v4;
}

- (void)CreateCookieAndCleanup
{
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__DeviceRecoveryEnvironmentWorker_CreateCookieAndCleanup__block_invoke;
  block[3] = &unk_2C1A8;
  block[4] = self;
  dispatch_sync(serviceQueue, block);
}

void __57__DeviceRecoveryEnvironmentWorker_CreateCookieAndCleanup__block_invoke(uint64_t a1)
{
  v2 = DRECopyIORegAsString("IODeviceTree:/options", @"device-recovery-boot-reason");
  if (v2)
  {
    v6[0] = @"entryReason";
    v3 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
    v6[1] = @"entryDescription";
    v7[0] = v3;
    v7[1] = *(*(a1 + 32) + 32);
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

    if ([v4 writeToFile:@"/var/db/com.apple.DeviceRecovery.entryInfo" atomically:1])
    {
      DREDeleteNVRAMProperty(@"device-recovery-boot-reason");
    }
  }

  if (*(*(a1 + 32) + 12) == 3)
  {
    v5 = DRECopyIORegAsString("IODeviceTree:/options", @"boot-command");
    if ([v5 isEqualToString:@"device-recovery"])
    {
      DREDeleteNVRAMProperty(@"boot-command");
    }
  }
}

- (void)populateDREDescription:.cold.2()
{
  v0 = DRGetLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  v1 = DRGetLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }
}

@end