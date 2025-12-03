@interface _SYStreamGuts
- (id)propertyForKey:(id)key;
- (void)createRunloopSourceForStream:(id)stream;
- (void)dealloc;
- (void)postStreamEvent:(unint64_t)event forStream:(id)stream;
- (void)setEventHandler:(id)handler queue:(id)queue;
- (void)storeProperty:(id)property forKey:(id)key;
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

- (void)setEventHandler:(id)handler queue:(id)queue
{
  queueCopy = queue;
  v12 = queueCopy;
  if (handler && queueCopy)
  {
    v7 = [handler copy];
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

- (void)createRunloopSourceForStream:(id)stream
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
    context.info = stream;
    memset(&context.retain, 0, 40);
    context.schedule = __SYZlibStreamGetPort;
    context.cancel = __SYZlibStreamPerform;
    self->_runloopSource = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  }
}

- (void)postStreamEvent:(unint64_t)event forStream:(id)stream
{
  streamCopy = stream;
  if (self->_queue)
  {
    v7 = [self->_handler copy];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___SYStreamGuts_postStreamEvent_forStream___block_invoke;
    block[3] = &unk_1E86C9F60;
    v12 = v7;
    v11 = streamCopy;
    eventCopy = event;
    v9 = v7;
    dispatch_async(queue, block);
  }

  else if (self->_runloopSource)
  {
    _TryPostEvent(event, self, 1);
  }
}

- (void)storeProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  propertyStore = selfCopy->_propertyStore;
  if (propertyCopy && !propertyStore)
  {
    v9 = objc_opt_new();
    v10 = selfCopy->_propertyStore;
    selfCopy->_propertyStore = v9;

    propertyStore = selfCopy->_propertyStore;
  }

  [(NSMutableDictionary *)propertyStore setObject:propertyCopy forKeyedSubscript:keyCopy];
  objc_sync_exit(selfCopy);
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_propertyStore objectForKeyedSubscript:keyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

@end