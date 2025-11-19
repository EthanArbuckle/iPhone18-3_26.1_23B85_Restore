@interface DeviceRecoveryEnvironmentWorker
+ (id)sharedWorker;
- (DeviceRecoveryEnvironmentWorker)init;
- (id)DREEntryDescription;
- (id)DREStringFromEntryReason:(int)a3;
- (id)getObjectFromInternalCookie:(id)a3;
- (int)DREEntryReasonEnum;
- (void)CreateCookieAndCleanup;
- (void)populateDREDescription:(id)a3;
- (void)populateDREReason;
- (void)setupPopulateDREDescription;
@end

@implementation DeviceRecoveryEnvironmentWorker

+ (id)sharedWorker
{
  if (qword_10003A2D8 != -1)
  {
    sub_1000215CC();
  }

  v3 = qword_10003A2D0;

  return v3;
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
    block[2] = sub_100010B78;
    block[3] = &unk_100034AE8;
    v12 = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

- (void)populateDREReason
{
  v15 = 0;
  v3 = sub_1000102E0("IODeviceTree:/chosen", @"recovery-reason", &v15);
  v4 = v15;
  v5 = v4;
  if (v4)
  {
    sub_1000215E0(v4);
  }

  else if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 length] > 3)
      {
        v6 = *[v3 bytes];
        if (v6 > 5)
        {
          v8 = sub_1000118BC();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100021850(self);
          }

          v6 = 0;
          goto LABEL_21;
        }

        if (((1 << v6) & 0x3A) != 0)
        {
LABEL_22:
          self->_entryReason = v6;
          goto LABEL_23;
        }

        v7 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");

        if (!v7)
        {
          v8 = [(DeviceRecoveryEnvironmentWorker *)self getObjectFromInternalCookie:@"entryReason"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 unsignedIntValue]== 5)
          {
            v6 = 5;
          }

          goto LABEL_21;
        }

LABEL_13:
        v6 = 5;
        goto LABEL_22;
      }

      sub_100021918(v3);
    }

    else
    {
      sub_10002171C(v3);
    }
  }

  else
  {
    v9 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");

    if (v9)
    {
      goto LABEL_13;
    }

    v8 = [(DeviceRecoveryEnvironmentWorker *)self getObjectFromInternalCookie:@"entryReason"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v8 unsignedIntValue]== 5)
        {
          v6 = 5;
LABEL_21:

          goto LABEL_22;
        }

        v14 = sub_1000118BC();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100021B8C();
        }

        v12 = sub_1000118BC();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100021C3C(v8);
        }
      }

      else
      {
        v13 = sub_1000118BC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100021A44();
        }

        v12 = sub_1000118BC();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100021AF4(v8);
        }
      }
    }

    else
    {
      sub_100021CD4(buf);
      v12 = *buf;
    }
  }

LABEL_23:
  v10 = sub_1000118BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    entryReason = self->_entryReason;
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryEnvironmentWorker populateDREReason]";
    v17 = 1024;
    v18 = entryReason;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Entry reason: %d", buf, 0x12u);
  }
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
    handler[2] = sub_100011048;
    handler[3] = &unk_100034AE8;
    handler[4] = self;
    dispatch_source_set_event_handler(timer, handler);
    dispatch_resume(self->_timer);
  }
}

- (void)populateDREDescription:(id)a3
{
  v4 = a3;
  v5 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");
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

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v6 = [v4 objectForKey:@"PanicReason"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v10 = sub_1000118BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100021E04();
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
    sub_100021E98();
    v13 = 0;
  }

  objc_storeStrong(&self->_entryDescription, v13);
  v14 = sub_1000118BC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    entryDescription = self->_entryDescription;
    *buf = 136446466;
    v17 = "[DeviceRecoveryEnvironmentWorker populateDREDescription:]";
    v18 = 2114;
    v19 = entryDescription;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Entry description: %{public}@", buf, 0x16u);
  }

  dispatch_activate(self->_serviceQueue);
}

- (id)getObjectFromInternalCookie:(id)a3
{
  v3 = a3;
  v4 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DeviceRecovery.entryInfo"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:v3];
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100021FC4();
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
  v5[2] = sub_100011458;
  v5[3] = &unk_100034FC8;
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
  v9 = sub_100011564;
  v10 = sub_100011574;
  v11 = &stru_100035AE0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001157C;
  v5[3] = &unk_100034FC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DREStringFromEntryReason:(int)a3
{
  v4 = @"Unknown Entry Reason";
  if ((a3 - 1) <= 4)
  {
    v5 = *(&off_100035140)[a3 - 1];

    v4 = v5;
  }

  return v4;
}

- (void)CreateCookieAndCleanup
{
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011678;
  block[3] = &unk_100034AE8;
  block[4] = self;
  dispatch_sync(serviceQueue, block);
}

@end