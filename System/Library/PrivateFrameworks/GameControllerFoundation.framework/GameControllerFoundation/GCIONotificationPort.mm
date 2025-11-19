@interface GCIONotificationPort
- (GCIONotificationPort)initWithMainPort:(unsigned int)a3;
- (id)debugDescription;
- (void)addCancellationHandler:(id)a3 onQueue:(id)a4;
- (void)dealloc;
- (void)setQueue:(id)a3;
@end

@implementation GCIONotificationPort

- (GCIONotificationPort)initWithMainPort:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = GCIONotificationPort;
  v4 = [(GCIONotificationPort *)&v7 init];
  v5 = IONotificationPortCreate(a3);
  v4->_port = v5;
  if (!v5)
  {
    [GCIONotificationPort initWithMainPort:?];
    return v8;
  }

  return v4;
}

- (void)dealloc
{
  IONotificationPortDestroy(self->_port);
  self->_port = 0;
  self->_queue = 0;
  v3.receiver = self;
  v3.super_class = GCIONotificationPort;
  [(GCIONotificationPort *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return [v3 stringWithFormat:@"<%@ %p port='%#08x' queue='%s'>", v5, self, -[GCIONotificationPort wakePort](self, "wakePort"), dispatch_queue_get_label(-[GCIONotificationPort queue](self, "queue"))];
}

- (void)setQueue:(id)a3
{
  if (!a3)
  {
    [(GCIONotificationPort *)a2 setQueue:?];
  }

  IONotificationPortSetDispatchQueue(self->_port, a3);
  self->_queue = a3;
}

- (void)addCancellationHandler:(id)a3 onQueue:(id)a4
{
  if (!a3)
  {
    [GCIONotificationPort addCancellationHandler:a2 onQueue:self];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [GCIONotificationPort addCancellationHandler:a2 onQueue:self];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [(GCIONotificationPort *)self wakePort];
  mach_port_insert_right(*MEMORY[0x1E69E9A60], v8, v8, 0x14u);
  v9 = dispatch_source_create(MEMORY[0x1E69E96E0], v8, 1uLL, a4);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __55__GCIONotificationPort_addCancellationHandler_onQueue___block_invoke;
  handler[3] = &unk_1E84153E0;
  handler[4] = v9;
  handler[5] = a3;
  dispatch_source_set_event_handler(v9, handler);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__GCIONotificationPort_addCancellationHandler_onQueue___block_invoke_2;
  v10[3] = &unk_1E8415408;
  v11 = v8;
  v10[4] = v9;
  dispatch_source_set_cancel_handler(v9, v10);
  dispatch_activate(v9);
}

void __55__GCIONotificationPort_addCancellationHandler_onQueue___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

void __55__GCIONotificationPort_addCancellationHandler_onQueue___block_invoke_2(uint64_t a1)
{
  mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

- (void)initWithMainPort:(void *)a1 .cold.1(void *a1)
{
  v2 = _gc_log_iokit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_1D2C3B000, v2, OS_LOG_TYPE_ERROR, "IONotificationPortCreate() failed.", v3, 2u);
  }

  *a1 = 0;
}

- (uint64_t)setQueue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"GCIONotificationPort.m" lineNumber:70 description:@"Assertion failed: queue != ((void *)0)"];
}

- (uint64_t)addCancellationHandler:(uint64_t)a1 onQueue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"GCIONotificationPort.m" lineNumber:77 description:@"Assertion failed: cancelHandler != ((void *)0)"];
}

- (uint64_t)addCancellationHandler:(uint64_t)a1 onQueue:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"GCIONotificationPort.m" lineNumber:78 description:@"Assertion failed: queue != ((void *)0)"];
}

@end