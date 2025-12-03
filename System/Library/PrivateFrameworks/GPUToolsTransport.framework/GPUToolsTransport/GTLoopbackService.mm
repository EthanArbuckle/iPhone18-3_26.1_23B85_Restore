@interface GTLoopbackService
- (GTLoopbackService)init;
- (id)echo:(id)echo;
- (void)echo:(id)echo completionHandler:(id)handler;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback;
- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete;
@end

@implementation GTLoopbackService

- (GTLoopbackService)init
{
  v6.receiver = self;
  v6.super_class = GTLoopbackService;
  v2 = [(GTLoopbackService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.gputools.loopback", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;
  }

  return v2;
}

- (id)echo:(id)echo
{
  echoCopy = echo;
  if (GTCoreLogUseOsLog())
  {
    v4 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [GTLoopbackService echo:echoCopy];
    }
  }

  else
  {
    v5 = *MEMORY[0x277D85E08];
    v6 = MEMORY[0x277CCACA8];
    v7 = [echoCopy description];
    v8 = [v6 stringWithFormat:@"Sync: %s", objc_msgSend(v7, "UTF8String")];
    fprintf(v5, "%s\n", [v8 UTF8String]);
  }

  return echoCopy;
}

- (void)echo:(id)echo completionHandler:(id)handler
{
  echoCopy = echo;
  handlerCopy = handler;
  if (GTCoreLogUseOsLog())
  {
    v7 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [GTLoopbackService echo:echoCopy completionHandler:?];
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85E08];
    v9 = MEMORY[0x277CCACA8];
    v10 = [echoCopy description];
    v11 = [v9 stringWithFormat:@"Async: %s", objc_msgSend(v10, "UTF8String")];
    fprintf(v8, "%s\n", [v11 UTF8String]);
  }

  handlerCopy[2](handlerCopy, echoCopy);
}

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback
{
  echoCopy = echo;
  callbackCopy = callback;
  if (!GTCoreLogUseOsLog())
  {
    v10 = *MEMORY[0x277D85E08];
    v11 = MEMORY[0x277CCACA8];
    v12 = [echoCopy description];
    v13 = [v11 stringWithFormat:@"Repeat (%llu): %s", repeat, objc_msgSend(v12, "UTF8String")];
    fprintf(v10, "%s\n", [v13 UTF8String]);

    if (!repeat)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [GTLoopbackService echo:echoCopy repeat:? callback:?];
  }

  for (; repeat; --repeat)
  {
LABEL_7:
    callbackCopy[2](callbackCopy, echoCopy);
  }

LABEL_8:
}

- (void)echo:(id)echo repeat:(unint64_t)repeat callback:(id)callback complete:(id)complete
{
  echoCopy = echo;
  callbackCopy = callback;
  completeCopy = complete;
  if (GTCoreLogUseOsLog())
  {
    v13 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [GTLoopbackService echo:echoCopy repeat:? callback:?];
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85E08];
    v15 = MEMORY[0x277CCACA8];
    v16 = [echoCopy description];
    v17 = [v15 stringWithFormat:@"Repeat (%llu): %s", repeat, objc_msgSend(v16, "UTF8String")];
    fprintf(v14, "%s\n", [v17 UTF8String]);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GTLoopbackService_echo_repeat_callback_complete___block_invoke;
  block[3] = &unk_279661AC0;
  v23 = echoCopy;
  v24 = callbackCopy;
  v25 = completeCopy;
  repeatCopy = repeat;
  v19 = completeCopy;
  v20 = echoCopy;
  v21 = callbackCopy;
  dispatch_async(serialQueue, block);
}

uint64_t __51__GTLoopbackService_echo_repeat_callback_complete___block_invoke(void *a1)
{
  if (a1[7])
  {
    v2 = 0;
    do
    {
      v3 = a1[4];
      (*(a1[5] + 16))();
      ++v2;
    }

    while (v2 < a1[7]);
  }

  v4 = a1[4];
  v5 = *(a1[6] + 16);

  return v5();
}

- (void)echo:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)echo:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)echo:(void *)a1 repeat:callback:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end