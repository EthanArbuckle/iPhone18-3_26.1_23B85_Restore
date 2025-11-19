@interface REAudioStateHandler
- (REAudioStateHandler)initWithTitle:(id)a3 block:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation REAudioStateHandler

- (REAudioStateHandler)initWithTitle:(id)a3 block:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = REAudioStateHandler;
  v8 = [(REAudioStateHandler *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v14 = v7;
    v13 = v6;
    v9->osStateHandle = os_state_add_handler();
  }

  v10 = *re::audioLogObjects(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    osStateHandle = v9->osStateHandle;
    *buf = 134217984;
    v17 = osStateHandle;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Created osStateHandle: %llu", buf, 0xCu);
  }

  return v9;
}

char *__43__REAudioStateHandler_initWithTitle_block___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!os_variant_has_internal_diagnostics() || *(a2 + 16) != 3)
  {
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E696AE40];
  v6 = (*(*(a1 + 40) + 16))();
  v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:0];

  if (v7)
  {
    v8 = [v7 length];
    v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    if (v9)
    {
      strlcpy(v9 + 136, [*(a1 + 32) UTF8String], 0x40uLL);
      *v9 = 1;
      *(v9 + 1) = v8;
      memcpy(v9 + 200, [v7 bytes], v8);
    }
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->osStateHandle)
  {
    v3 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      osStateHandle = self->osStateHandle;
      v5 = 134217984;
      v6 = osStateHandle;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Removed osStateHandle: %llu", &v5, 0xCu);
    }

    os_state_remove_handler();
    self->osStateHandle = 0;
  }
}

- (void)dealloc
{
  [(REAudioStateHandler *)self invalidate];
  v3.receiver = self;
  v3.super_class = REAudioStateHandler;
  [(REAudioStateHandler *)&v3 dealloc];
}

@end