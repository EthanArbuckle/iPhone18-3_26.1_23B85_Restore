@interface DIDeviceHandle
- (BOOL)addToRefCountWithError:(id *)a3;
- (BOOL)updateBSDNameWithBlockDevice:(id)a3 error:(id *)a4;
- (BOOL)waitForDeviceWithError:(id *)a3;
- (BOOL)waitForQuietWithService:(unsigned int)a3 error:(id *)a4;
- (DIDeviceHandle)initWithCoder:(id)a3;
- (DIDeviceHandle)initWithRegEntryID:(unint64_t)a3 xpcEndpoint:(id)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIDeviceHandle

- (DIDeviceHandle)initWithRegEntryID:(unint64_t)a3 xpcEndpoint:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DIDeviceHandle;
  v8 = [(DIDeviceHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_regEntryID = a3;
    objc_storeStrong(&v8->_xpcEndpoint, a4);
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(DIDeviceHandle *)self client2IOhandler];

  if (v3)
  {
    v4 = *__error();
    if (sub_1000E044C())
    {
      v12 = 0;
      v5 = sub_1000E03D8();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v14 = 25;
      v15 = 2080;
      v16 = "[DIDeviceHandle dealloc]";
      v10 = 18;
      v9 = buf;
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        fprintf(__stderrp, "%s\n", v6);
        free(v6);
      }
    }

    else
    {
      v7 = sub_1000E03D8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v14 = 25;
        v15 = 2080;
        v16 = "[DIDeviceHandle dealloc]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: DIDeviceHandle object is deallocating, invalidating connection", buf, 0x12u);
      }
    }

    *__error() = v4;
    v8 = [(DIDeviceHandle *)self client2IOhandler];
    [v8 closeConnection];
  }

  v11.receiver = self;
  v11.super_class = DIDeviceHandle;
  [(DIDeviceHandle *)&v11 dealloc:v9];
}

- (BOOL)updateBSDNameWithBlockDevice:(id)a3 error:(id *)a4
{
  v6 = [a3 copyIOMediaWithError:a4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BSDName];
    [(DIDeviceHandle *)self setBSDName:v8];

    v9 = [(DIDeviceHandle *)self BSDName];

    if (v9)
    {
      v10 = *__error();
      if (sub_1000E044C())
      {
        v11 = sub_1000E03D8();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        [(DIDeviceHandle *)self BSDName];
        *buf = 68158210;
        v18 = 53;
        v19 = 2080;
        v20 = "[DIDeviceHandle updateBSDNameWithBlockDevice:error:]";
        v22 = v21 = 2114;
        v12 = _os_log_send_and_compose_impl();

        if (v12)
        {
          fprintf(__stderrp, "%s\n", v12);
          free(v12);
        }
      }

      else
      {
        v14 = sub_1000E03D8();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(DIDeviceHandle *)self BSDName];
          *buf = 68158210;
          v18 = 53;
          v19 = 2080;
          v20 = "[DIDeviceHandle updateBSDNameWithBlockDevice:error:]";
          v21 = 2114;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%.*s: BSD name: %{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v10;
      v13 = 1;
    }

    else
    {
      v13 = [DIError failWithEnumValue:153 verboseInfo:@"Cannot find BSD name in IO media service" error:a4];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)waitForQuietWithService:(unsigned int)a3 error:(id *)a4
{
  waitTime = 30;
  while (1)
  {
    v5 = IOServiceWaitQuiet(a3, &waitTime);
    if (v5 != -536870186)
    {
      break;
    }

    v6 = *__error();
    if (sub_1000E044C())
    {
      v7 = sub_1000E03D8();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v20 = 48;
      v21 = 2080;
      v22 = "[DIDeviceHandle waitForQuietWithService:error:]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(__stderrp, "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v9 = sub_1000E03D8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v20 = 48;
        v21 = 2080;
        v22 = "[DIDeviceHandle waitForQuietWithService:error:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%.*s: IOServiceWaitQuiet timeout occurred, retrying.", buf, 0x12u);
      }
    }

    *__error() = v6;
  }

  if (v5)
  {
    v13 = [NSString stringWithFormat:@"IOServiceWaitQuiet error 0x%x", v5];
    v14 = [DIError failWithEnumValue:154 verboseInfo:v13 error:a4];
  }

  else
  {
    v10 = *__error();
    if (sub_1000E044C())
    {
      v11 = sub_1000E03D8();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v20 = 48;
      v21 = 2080;
      v22 = "[DIDeviceHandle waitForQuietWithService:error:]";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v15 = sub_1000E03D8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v20 = 48;
        v21 = 2080;
        v22 = "[DIDeviceHandle waitForQuietWithService:error:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: IOServiceWaitQuiet done", buf, 0x12u);
      }
    }

    *__error() = v10;
    return 1;
  }

  return v14;
}

- (BOOL)waitForDeviceWithError:(id *)a3
{
  v21 = 0;
  notification = 0;
  v5 = [DIBlockDevice copyUnmatchedDiskImageWithRegEntryID:[(DIDeviceHandle *)self regEntryID] error:a3];
  v6 = v5;
  if (v5)
  {
    refCon[0] = &v21;
    refCon[1] = [v5 ioObj];
    v7 = +[NSRunLoop currentRunLoop];
    v8 = [v7 getCFRunLoop];
    if (!-[DIDeviceHandle waitForQuietWithService:error:](self, "waitForQuietWithService:error:", [v6 ioObj], a3))
    {
      goto LABEL_15;
    }

    v9 = IONotificationPortCreate(kIOMainPortDefault);
    if (v9)
    {
      v10 = v9;
      RunLoopSource = IONotificationPortGetRunLoopSource(v9);
      if (RunLoopSource)
      {
        v12 = RunLoopSource;
        v13 = kCFRunLoopDefaultMode;
        CFRunLoopAddSource(v8, RunLoopSource, kCFRunLoopDefaultMode);
        v14 = IOServiceMatching("IOMedia");
        if (!IOServiceAddMatchingNotification(v10, "IOServiceMatched", v14, sub_100017740, refCon, &notification))
        {
          v18 = kCFRunLoopDefaultMode;
          sub_100017740(refCon, notification);
          while (!v21)
          {
            v15 = [NSDate dateWithTimeIntervalSinceNow:1.0, v18];
            [v7 runMode:NSDefaultRunLoopMode beforeDate:v15];
          }

          IOObjectRelease(notification);
          v13 = v18;
        }

        CFRunLoopRemoveSource(v8, v12, v13);
      }

      else
      {
        [DIError failWithEnumValue:153 verboseInfo:@"Failed getting runloop source" error:0];
      }

      IONotificationPortDestroy(v10);
    }

    if (v21)
    {
      v16 = [(DIDeviceHandle *)self updateBSDNameWithBlockDevice:v6 error:a3];
      v21 = v16;
    }

    else
    {
LABEL_15:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (DIDeviceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DIDeviceHandle;
  v5 = [(DIDeviceHandle *)&v12 init];
  if (v5)
  {
    v5->_regEntryID = [v4 decodeInt64ForKey:@"regEntryID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"xpcEndpoint"];
    xpcEndpoint = v5->_xpcEndpoint;
    v5->_xpcEndpoint = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BSDname"];
    BSDName = v5->_BSDName;
    v5->_BSDName = v8;

    v10 = [v4 decodeBoolForKey:@"handleRefCount"];
    v5->_handleRefCount = v10;
    if (v10)
    {
      if (v5->_xpcEndpoint)
      {
        [(DIDeviceHandle *)v5 addToRefCountWithError:0];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt64:-[DIDeviceHandle regEntryID](self forKey:{"regEntryID"), @"regEntryID"}];
  v4 = [(DIDeviceHandle *)self xpcEndpoint];
  [v6 encodeObject:v4 forKey:@"xpcEndpoint"];

  v5 = [(DIDeviceHandle *)self BSDName];
  [v6 encodeObject:v5 forKey:@"BSDname"];

  [v6 encodeBool:-[DIDeviceHandle handleRefCount](self forKey:{"handleRefCount"), @"handleRefCount"}];
}

- (BOOL)addToRefCountWithError:(id *)a3
{
  [(DIDeviceHandle *)self setHandleRefCount:1];
  v5 = [DIClient2IODaemonXPCHandler alloc];
  v6 = [(DIDeviceHandle *)self xpcEndpoint];
  v7 = [(DIClient2IODaemonXPCHandler *)v5 initWithEndpoint:v6];
  [(DIDeviceHandle *)self setClient2IOhandler:v7];

  v8 = [(DIDeviceHandle *)self client2IOhandler];
  LODWORD(v6) = [v8 connectWithError:a3];

  if (!v6)
  {
    return 0;
  }

  v9 = [(DIDeviceHandle *)self client2IOhandler];
  v10 = [v9 addToRefCountWithError:a3];

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DIDeviceHandle *)self BSDName];
  v6 = [(DIDeviceHandle *)self xpcEndpoint];
  v7 = @"managed";
  if (!v6)
  {
    v7 = @"unmanaged";
  }

  v8 = [NSString stringWithFormat:@"%@[%@, %@]", v4, v5, v7];

  return v8;
}

@end