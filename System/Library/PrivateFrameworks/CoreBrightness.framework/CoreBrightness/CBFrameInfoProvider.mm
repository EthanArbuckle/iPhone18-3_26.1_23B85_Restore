@interface CBFrameInfoProvider
- (CBFrameInfoProvider)initWithDisplayServer:(id)a3;
- (CBFrameInfoProvider)initWithDisplayServer:(id)a3 andQueue:(id)a4;
- (void)dealloc;
- (void)registerObserver:(id)a3 withCallback:(id)a4;
@end

@implementation CBFrameInfoProvider

- (CBFrameInfoProvider)initWithDisplayServer:(id)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = dispatch_queue_create("com.apple.CoreBrightness.FrameInfo", v3);
  if (v11)
  {
    v14 = [(CBFrameInfoProvider *)v14 initWithDisplayServer:v12 andQueue:v11];
    dispatch_release(v11);
    return v14;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
    v9 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create queue for FrameInfo!", v8, 2u);
    }

    MEMORY[0x1E69E5920](v14);
    v14 = 0;
    return 0;
  }
}

- (CBFrameInfoProvider)initWithDisplayServer:(id)a3 andQueue:(id)a4
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15.receiver = self;
  v15.super_class = CBFrameInfoProvider;
  v19 = [(CBFrameInfoProvider *)&v15 init];
  if (!v19)
  {
    return 0;
  }

  v4 = os_log_create("com.apple.CoreBrightness.FrameInfo", "default");
  *(v19 + 1) = v4;
  v5 = MEMORY[0x1E69E5928](v17);
  *(v19 + 2) = v5;
  *(v19 + 3) = v16;
  dispatch_retain(*(v19 + 3));
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v19 + 4) = v6;
  if (*(v19 + 4))
  {
    return v19;
  }

  if (*(v19 + 1))
  {
    v11 = *(v19 + 1);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v11 = inited;
  }

  oslog = v11;
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v9 = type;
    __os_log_helper_16_0_0(v12);
    _os_log_error_impl(&dword_1DE8E5000, log, v9, "Failed to create observers dictionary", v12, 2u);
  }

  MEMORY[0x1E69E5920](v19);
  v19 = 0;
  return 0;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = self;
  v12 = a2;
  [(CAWindowServerDisplay *)self->_windowServerDisplay setFrameInfoCallback:0];
  MEMORY[0x1E69E5920](v13->_windowServerDisplay);
  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)v13->_observers allValues];
  v8 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      aBlock = 0;
      aBlock = *(__b[1] + 8 * v5);
      _Block_release(aBlock);
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  v2 = MEMORY[0x1E69E5920](v13->_observers).n128_u64[0];
  if (v13->_queue)
  {
    dispatch_release(v13->_queue);
  }

  if (v13->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](v13->_logHandle).n128_u64[0];
  }

  v9.receiver = v13;
  v9.super_class = CBFrameInfoProvider;
  [(CBFrameInfoProvider *)&v9 dealloc];
  *MEMORY[0x1E69E9840];
}

- (void)registerObserver:(id)a3 withCallback:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __53__CBFrameInfoProvider_registerObserver_withCallback___block_invoke;
  v9 = &unk_1E867CD08;
  v10 = a3;
  v11 = v16;
  v12 = a4;
  dispatch_sync(queue, &block);
}

uint64_t __53__CBFrameInfoProvider_registerObserver_withCallback___block_invoke(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v12 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  v11 = 1;
  v10 = [*(*(a1 + 40) + 32) objectForKey:v12];
  if (v10)
  {
    _Block_release(v10);
    v11 = 0;
  }

  if (*(a1 + 48))
  {
    result = [*(*(a1 + 40) + 32) setObject:_Block_copy(*(a1 + 48)) forKey:v12];
    if (v11)
    {
      v2 = *(*(a1 + 40) + 16);
      v4 = MEMORY[0x1E69E9820];
      v5 = -1073741824;
      v6 = 0;
      v7 = __53__CBFrameInfoProvider_registerObserver_withCallback___block_invoke_2;
      v8 = &unk_1E867CCE0;
      v9 = *(a1 + 40);
      return [v2 setFrameInfoCallback:?];
    }
  }

  else
  {
    [*(*(a1 + 40) + 32) removeObjectForKey:v12];
    result = [*(*(a1 + 40) + 32) count];
    if (!result && (v11 & 1) == 0)
    {
      return [*(*(a1 + 40) + 16) setFrameInfoCallback:0];
    }
  }

  return result;
}

void __53__CBFrameInfoProvider_registerObserver_withCallback___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = a1;
  v12 = 0u;
  v13 = 0u;
  *&v12 = *(a2 + 16);
  DWORD2(v12) = *(a2 + 40);
  BYTE12(v12) = *(a2 + 45) & 1;
  BYTE13(v12) = *(a2 + 46) & 1;
  LODWORD(v13) = *(a2 + 96);
  *(&v13 + 4) = *(a2 + 48);
  HIDWORD(v13) = *(a2 + 56);
  v3 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __53__CBFrameInfoProvider_registerObserver_withCallback___block_invoke_3;
  v8 = &unk_1E867B458;
  v9 = *(a1 + 32);
  v10 = v12;
  v11 = v13;
  dispatch_async(v3, &block);
}

uint64_t __53__CBFrameInfoProvider_registerObserver_withCallback___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a1;
  memset(__b, 0, sizeof(__b));
  obj = [*(*(a1 + 32) + 32) allValues];
  result = [obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (result)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = result;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v11 = 0;
      v11 = *(__b[1] + 8 * v4);
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      (*(v11 + 16))();
      ++v4;
      if (v2 + 1 >= v5)
      {
        result = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        v4 = 0;
        v5 = result;
        if (!result)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return result;
}

@end