@interface CalFileSensor
- (CalFileSensor)initWithPath:(id)path eventBlock:(id)block;
- (id)description;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation CalFileSensor

- (CalFileSensor)initWithPath:(id)path eventBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  if (!pathCopy || (v9 = blockCopy, ![pathCopy length]))
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"The 'path' parameter must be non-nil and non-empty" userInfo:0];
    objc_exception_throw(v18);
  }

  v19.receiver = self;
  v19.super_class = CalFileSensor;
  v10 = [(CalFileSensor *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_path, path);
    v12 = _Block_copy(v9);
    eventBlock = v11->_eventBlock;
    v11->_eventBlock = v12;

    v11->_started = 0;
    v14 = CalGenerateRandomDispatchQueueName(v11->_path);
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    queue = v11->_queue;
    v11->_queue = v15;
  }

  return v11;
}

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
  }

  v4.receiver = self;
  v4.super_class = CalFileSensor;
  [(CalFileSensor *)&v4 dealloc];
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v9.receiver = self;
  v9.super_class = CalFileSensor;
  v4 = [(CalFileSensor *)&v9 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  [(CalDescriptionBuilder *)v5 setKey:@"_path" withString:self->_path];
  [(CalDescriptionBuilder *)v5 setKey:@"_queue" withDispatchQueue:self->_queue];
  [(CalDescriptionBuilder *)v5 setKey:@"_source" withDispatchSource:self->_source];
  v6 = _Block_copy(self->_eventBlock);
  [(CalDescriptionBuilder *)v5 setKey:@"_eventBlock" withObject:v6];

  [(CalDescriptionBuilder *)v5 setKey:@"_started" withBoolean:self->_started];
  build = [(CalDescriptionBuilder *)v5 build];

  return build;
}

- (void)start
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, a2, a3, "This sensor has already been started: [%@]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __22__CalFileSensor_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    if (dispatch_source_get_data(v4[2]))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [(dispatch_source_t *)v4 stop];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __22__CalFileSensor_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    if (*(v4 + 2))
    {
      v5 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __22__CalFileSensor_start__block_invoke_2_cold_1(v4, v5);
      }

      close(*(a1 + 48));
      v6 = *(v4 + 2);
      *(v4 + 2) = 0;

      *(v4 + 32) = 0;
    }

    objc_sync_exit(v4);

    v7 = *(*(a1 + 32) + 8);
    if (*(v7 + 24) == 1)
    {
      *(v7 + 24) = 0;
      [v4 start];
    }
  }
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  obj->_started = 0;
  source = obj->_source;
  if (source)
  {
    dispatch_source_cancel(source);
  }

  objc_sync_exit(obj);
}

void __22__CalFileSensor_start__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "Unregistering a file sensor for path: [%@]", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end