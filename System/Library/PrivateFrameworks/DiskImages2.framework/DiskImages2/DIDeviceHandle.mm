@interface DIDeviceHandle
- (BOOL)addToRefCountWithError:(id *)error;
- (BOOL)updateBSDNameWithBlockDevice:(id)device error:(id *)error;
- (BOOL)waitForDeviceWithError:(id *)error;
- (BOOL)waitForQuietWithService:(unsigned int)service error:(id *)error;
- (DIDeviceHandle)initWithCoder:(id)coder;
- (DIDeviceHandle)initWithRegEntryID:(unint64_t)d xpcEndpoint:(id)endpoint;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIDeviceHandle

- (DIDeviceHandle)initWithRegEntryID:(unint64_t)d xpcEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v11.receiver = self;
  v11.super_class = DIDeviceHandle;
  v8 = [(DIDeviceHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_regEntryID = d;
    objc_storeStrong(&v8->_xpcEndpoint, endpoint);
  }

  return v9;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  client2IOhandler = [(DIDeviceHandle *)self client2IOhandler];

  if (client2IOhandler)
  {
    v4 = *__error();
    if (DIForwardLogs())
    {
      v13 = 0;
      v5 = getDIOSLog();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v15 = 25;
      v16 = 2080;
      v17 = "[DIDeviceHandle dealloc]";
      v11 = 18;
      v10 = buf;
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v6);
        free(v6);
      }
    }

    else
    {
      v7 = getDIOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v15 = 25;
        v16 = 2080;
        v17 = "[DIDeviceHandle dealloc]";
        _os_log_impl(&dword_248DE0000, v7, OS_LOG_TYPE_DEFAULT, "%.*s: DIDeviceHandle object is deallocating, invalidating connection", buf, 0x12u);
      }
    }

    *__error() = v4;
    client2IOhandler2 = [(DIDeviceHandle *)self client2IOhandler];
    [client2IOhandler2 closeConnection];
  }

  v12.receiver = self;
  v12.super_class = DIDeviceHandle;
  [(DIDeviceHandle *)&v12 dealloc:v10];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateBSDNameWithBlockDevice:(id)device error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [device copyIOMediaWithError:error];
  v7 = v6;
  if (v6)
  {
    bSDName = [v6 BSDName];
    [(DIDeviceHandle *)self setBSDName:bSDName];

    bSDName2 = [(DIDeviceHandle *)self BSDName];

    if (bSDName2)
    {
      v10 = *__error();
      if (DIForwardLogs())
      {
        v11 = getDIOSLog();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        [(DIDeviceHandle *)self BSDName];
        *buf = 68158210;
        v19 = 53;
        v20 = 2080;
        v21 = "[DIDeviceHandle updateBSDNameWithBlockDevice:error:]";
        v23 = v22 = 2114;
        v12 = _os_log_send_and_compose_impl();

        if (v12)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
          free(v12);
        }
      }

      else
      {
        v14 = getDIOSLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          bSDName3 = [(DIDeviceHandle *)self BSDName];
          *buf = 68158210;
          v19 = 53;
          v20 = 2080;
          v21 = "[DIDeviceHandle updateBSDNameWithBlockDevice:error:]";
          v22 = 2114;
          v23 = bSDName3;
          _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEFAULT, "%.*s: BSD name: %{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v10;
      v13 = 1;
    }

    else
    {
      v13 = [DIError failWithEnumValue:153 verboseInfo:@"Cannot find BSD name in IO media service" error:error];
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)waitForQuietWithService:(unsigned int)service error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  waitTime = 30;
  while (1)
  {
    v5 = IOServiceWaitQuiet(service, &waitTime);
    if (v5 != -536870186)
    {
      break;
    }

    v6 = *__error();
    if (DIForwardLogs())
    {
      v7 = getDIOSLog();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v21 = 48;
      v22 = 2080;
      v23 = "[DIDeviceHandle waitForQuietWithService:error:]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v9 = getDIOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v21 = 48;
        v22 = 2080;
        v23 = "[DIDeviceHandle waitForQuietWithService:error:]";
        _os_log_impl(&dword_248DE0000, v9, OS_LOG_TYPE_ERROR, "%.*s: IOServiceWaitQuiet timeout occurred, retrying.", buf, 0x12u);
      }
    }

    *__error() = v6;
  }

  if (v5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOServiceWaitQuiet error 0x%x", v5];
    v14 = [DIError failWithEnumValue:154 verboseInfo:v13 error:error];
  }

  else
  {
    v10 = *__error();
    if (DIForwardLogs())
    {
      v11 = getDIOSLog();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v21 = 48;
      v22 = 2080;
      v23 = "[DIDeviceHandle waitForQuietWithService:error:]";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v15 = getDIOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v21 = 48;
        v22 = 2080;
        v23 = "[DIDeviceHandle waitForQuietWithService:error:]";
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: IOServiceWaitQuiet done", buf, 0x12u);
      }
    }

    *__error() = v10;
    v14 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)waitForDeviceWithError:(id *)error
{
  v22 = 0;
  notification = 0;
  v5 = [DIBlockDevice copyUnmatchedDiskImageWithRegEntryID:[(DIDeviceHandle *)self regEntryID] error:error];
  v6 = v5;
  if (v5)
  {
    refCon[0] = &v22;
    refCon[1] = [v5 ioObj];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    getCFRunLoop = [currentRunLoop getCFRunLoop];
    if (!-[DIDeviceHandle waitForQuietWithService:error:](self, "waitForQuietWithService:error:", [v6 ioObj], error))
    {
      goto LABEL_16;
    }

    v9 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    if (v9)
    {
      v10 = v9;
      RunLoopSource = IONotificationPortGetRunLoopSource(v9);
      if (RunLoopSource)
      {
        v12 = RunLoopSource;
        v13 = *MEMORY[0x277CBF058];
        CFRunLoopAddSource(getCFRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);
        v14 = IOServiceMatching("IOMedia");
        if (!IOServiceAddMatchingNotification(v10, "IOServiceMatched", v14, waitForDevCB, refCon, &notification))
        {
          v19 = v13;
          waitForDevCB(refCon, notification);
          if (!v22)
          {
            v15 = *MEMORY[0x277CBE640];
            do
            {
              v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{1.0, v19}];
              [currentRunLoop runMode:v15 beforeDate:v16];
            }

            while (!v22);
          }

          IOObjectRelease(notification);
          v13 = v19;
        }

        CFRunLoopRemoveSource(getCFRunLoop, v12, v13);
      }

      else
      {
        [DIError failWithEnumValue:153 verboseInfo:@"Failed getting runloop source" error:0];
      }

      IONotificationPortDestroy(v10);
    }

    if (v22)
    {
      v17 = [(DIDeviceHandle *)self updateBSDNameWithBlockDevice:v6 error:error];
      v22 = v17;
    }

    else
    {
LABEL_16:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (DIDeviceHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DIDeviceHandle;
  v5 = [(DIDeviceHandle *)&v12 init];
  if (v5)
  {
    v5->_regEntryID = [coderCopy decodeInt64ForKey:@"regEntryID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xpcEndpoint"];
    xpcEndpoint = v5->_xpcEndpoint;
    v5->_xpcEndpoint = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BSDname"];
    BSDName = v5->_BSDName;
    v5->_BSDName = v8;

    v10 = [coderCopy decodeBoolForKey:@"handleRefCount"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[DIDeviceHandle regEntryID](self forKey:{"regEntryID"), @"regEntryID"}];
  xpcEndpoint = [(DIDeviceHandle *)self xpcEndpoint];
  [coderCopy encodeObject:xpcEndpoint forKey:@"xpcEndpoint"];

  bSDName = [(DIDeviceHandle *)self BSDName];
  [coderCopy encodeObject:bSDName forKey:@"BSDname"];

  [coderCopy encodeBool:-[DIDeviceHandle handleRefCount](self forKey:{"handleRefCount"), @"handleRefCount"}];
}

- (BOOL)addToRefCountWithError:(id *)error
{
  [(DIDeviceHandle *)self setHandleRefCount:1];
  v5 = [DIClient2IODaemonXPCHandler alloc];
  xpcEndpoint = [(DIDeviceHandle *)self xpcEndpoint];
  v7 = [(DIClient2IODaemonXPCHandler *)v5 initWithEndpoint:xpcEndpoint];
  [(DIDeviceHandle *)self setClient2IOhandler:v7];

  client2IOhandler = [(DIDeviceHandle *)self client2IOhandler];
  LODWORD(xpcEndpoint) = [client2IOhandler connectWithError:error];

  if (!xpcEndpoint)
  {
    return 0;
  }

  client2IOhandler2 = [(DIDeviceHandle *)self client2IOhandler];
  v10 = [client2IOhandler2 addToRefCountWithError:error];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bSDName = [(DIDeviceHandle *)self BSDName];
  xpcEndpoint = [(DIDeviceHandle *)self xpcEndpoint];
  v8 = @"managed";
  if (!xpcEndpoint)
  {
    v8 = @"unmanaged";
  }

  v9 = [v3 stringWithFormat:@"%@[%@, %@]", v5, bSDName, v8];

  return v9;
}

@end