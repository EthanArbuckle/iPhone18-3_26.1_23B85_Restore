@interface CWFKernelEventMonitor
+ (id)descriptionForKernelEventCode:(unint64_t)a3;
- (BOOL)isMonitoringEvents;
- (CWFKernelEventMonitor)init;
- (unint64_t)interfaceFlagsWithInterfaceName:(id)a3;
- (void)dealloc;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFKernelEventMonitor

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BD4E9C;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)descriptionForKernelEventCode:(unint64_t)a3
{
  if (a3 - 1 >= 0x1E)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%lu)", a3];
  }

  else
  {
    v4 = off_1E86E6798[a3 - 1];
  }

  return v4;
}

- (CWFKernelEventMonitor)init
{
  v50 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CWFKernelEventMonitor;
  v2 = [(CWFKernelEventMonitor *)&v39 init];
  if (!v2)
  {
    goto LABEL_29;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.kevent-mutex", v3);
  v5 = *(v2 + 1);
  *(v2 + 1) = v4;

  if (!*(v2 + 1))
  {
    goto LABEL_29;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.kevent-event", v6);
  v8 = *(v2 + 2);
  *(v2 + 2) = v7;

  if (!*(v2 + 2))
  {
    goto LABEL_29;
  }

  v9 = socket(32, 3, 1);
  v10 = v9;
  if (v9 < 0)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = *__error();
      v25 = __error();
      v26 = strerror(*v25);
      v40 = 136447234;
      v41 = "[CWFKernelEventMonitor init]";
      v42 = 2082;
      v43 = "CWFKernelEventMonitor.m";
      v44 = 1024;
      v45 = 185;
      v46 = 1024;
      v47 = v24;
      v48 = 2082;
      v49 = v26;
      _os_log_send_and_compose_impl();
    }

    if (v10 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v38 = 2;
  v37 = 0x100000001;
  if (ioctl(v9, 0x800C6502uLL, &v37))
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v28 = *__error();
    v29 = __error();
    v30 = strerror(*v29);
    v40 = 136447234;
    v41 = "[CWFKernelEventMonitor init]";
    v42 = 2082;
    v43 = "CWFKernelEventMonitor.m";
    v44 = 1024;
    v45 = 188;
    v46 = 1024;
    v47 = v28;
    v48 = 2082;
    v49 = v30;
    goto LABEL_26;
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E96F8], v10, 0, *(v2 + 2));
  v12 = *(v2 + 3);
  *(v2 + 3) = v11;

  v13 = *(v2 + 3);
  if (!v13)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v40 = 136446722;
    v41 = "[CWFKernelEventMonitor init]";
    v42 = 2082;
    v43 = "CWFKernelEventMonitor.m";
    v44 = 1024;
    v45 = 191;
LABEL_26:
    _os_log_send_and_compose_impl();
LABEL_27:

LABEL_28:
    close(v10);
LABEL_29:

    v15 = 0;
    goto LABEL_8;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C26594;
  handler[3] = &unk_1E86E6750;
  v36 = v10;
  dispatch_source_set_cancel_handler(v13, handler);
  v14 = *(v2 + 3);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1E0BD476C;
  v32[3] = &unk_1E86E6778;
  v34 = v10;
  v15 = v2;
  v33 = v15;
  dispatch_source_set_event_handler(v14, v32);

  dispatch_activate(*(v2 + 3));
LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)dealloc
{
  keventSource = self->_keventSource;
  if (keventSource)
  {
    dispatch_source_cancel(keventSource);
  }

  v4.receiver = self;
  v4.super_class = CWFKernelEventMonitor;
  [(CWFKernelEventMonitor *)&v4 dealloc];
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C26660;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C2671C;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (unint64_t)interfaceFlagsWithInterfaceName:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  v10 = 0u;
  v11 = 0u;
  if (v3 && [v3 length] && objc_msgSend(v4, "length") <= 0x10 && (v5 = socket(30, 2, 0), v5 != -1))
  {
    v6 = v5;
    if ([v4 getCString:&v10 maxLength:16 encoding:4])
    {
      ioctl(v6, 0xC0206911uLL, &v10);
    }

    close(v6);
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end