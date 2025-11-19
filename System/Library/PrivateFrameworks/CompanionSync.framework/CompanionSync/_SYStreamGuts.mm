@interface _SYStreamGuts
- (id)propertyForKey:(id)a3;
- (void)createRunloopSourceForStream:(id)a3;
- (void)dealloc;
- (void)postStreamEvent:(unint64_t)a3 forStream:(id)a4;
- (void)setEventHandler:(id)a3 queue:(id)a4;
- (void)storeProperty:(id)a3 forKey:(id)a4;
@end

@implementation _SYStreamGuts

- (void)dealloc
{
  runloopSource = self->_runloopSource;
  if (runloopSource)
  {
    CFRelease(runloopSource);
  }

  port = self->_port;
  if (port)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], port);
  }

  v5.receiver = self;
  v5.super_class = _SYStreamGuts;
  [(_SYStreamGuts *)&v5 dealloc];
}

- (void)setEventHandler:(id)a3 queue:(id)a4
{
  v6 = a4;
  v12 = v6;
  if (a3 && v6)
  {
    v7 = [a3 copy];
    handler = self->_handler;
    self->_handler = v7;

    v9 = v12;
    queue = self->_queue;
    self->_queue = v9;
  }

  else
  {
    v11 = self->_handler;
    self->_handler = 0;

    queue = self->_queue;
    self->_queue = 0;
  }
}

- (void)createRunloopSourceForStream:(id)a3
{
  v5 = MEMORY[0x1E69E9A60];
  if (!mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &self->_port))
  {
    if (mach_port_insert_right(*v5, self->_port, self->_port, 0x14u))
    {
      v6 = *v5;
      port = self->_port;

      JUMPOUT(0x1E12E0E60);
    }

    context.version = 1;
    context.info = a3;
    memset(&context.retain, 0, 40);
    context.schedule = __SYZlibStreamGetPort;
    context.cancel = __SYZlibStreamPerform;
    self->_runloopSource = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  }
}

- (void)postStreamEvent:(unint64_t)a3 forStream:(id)a4
{
  v6 = a4;
  if (self->_queue)
  {
    v7 = [self->_handler copy];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___SYStreamGuts_postStreamEvent_forStream___block_invoke;
    block[3] = &unk_1E86C9F60;
    v12 = v7;
    v11 = v6;
    v13 = a3;
    v9 = v7;
    dispatch_async(queue, block);
  }

  else if (self->_runloopSource)
  {
    _TryPostEvent(a3, self, 1);
  }
}

- (void)storeProperty:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  propertyStore = v7->_propertyStore;
  if (v11 && !propertyStore)
  {
    v9 = objc_opt_new();
    v10 = v7->_propertyStore;
    v7->_propertyStore = v9;

    propertyStore = v7->_propertyStore;
  }

  [(NSMutableDictionary *)propertyStore setObject:v11 forKeyedSubscript:v6];
  objc_sync_exit(v7);
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_propertyStore objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

@end