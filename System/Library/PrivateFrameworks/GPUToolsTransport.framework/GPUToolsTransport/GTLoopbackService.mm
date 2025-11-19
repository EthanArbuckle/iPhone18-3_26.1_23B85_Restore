@interface GTLoopbackService
- (GTLoopbackService)init;
- (id)echo:(id)a3;
- (void)echo:(id)a3 completionHandler:(id)a4;
- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5;
- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5 complete:(id)a6;
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

- (id)echo:(id)a3
{
  v3 = a3;
  if (GTCoreLogUseOsLog())
  {
    v4 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [GTLoopbackService echo:v3];
    }
  }

  else
  {
    v5 = *MEMORY[0x277D85E08];
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 description];
    v8 = [v6 stringWithFormat:@"Sync: %s", objc_msgSend(v7, "UTF8String")];
    fprintf(v5, "%s\n", [v8 UTF8String]);
  }

  return v3;
}

- (void)echo:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (GTCoreLogUseOsLog())
  {
    v7 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [GTLoopbackService echo:v5 completionHandler:?];
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85E08];
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 description];
    v11 = [v9 stringWithFormat:@"Async: %s", objc_msgSend(v10, "UTF8String")];
    fprintf(v8, "%s\n", [v11 UTF8String]);
  }

  v6[2](v6, v5);
}

- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!GTCoreLogUseOsLog())
  {
    v10 = *MEMORY[0x277D85E08];
    v11 = MEMORY[0x277CCACA8];
    v12 = [v7 description];
    v13 = [v11 stringWithFormat:@"Repeat (%llu): %s", a4, objc_msgSend(v12, "UTF8String")];
    fprintf(v10, "%s\n", [v13 UTF8String]);

    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [GTLoopbackService echo:v7 repeat:? callback:?];
  }

  for (; a4; --a4)
  {
LABEL_7:
    v8[2](v8, v7);
  }

LABEL_8:
}

- (void)echo:(id)a3 repeat:(unint64_t)a4 callback:(id)a5 complete:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (GTCoreLogUseOsLog())
  {
    v13 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [GTLoopbackService echo:v10 repeat:? callback:?];
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85E08];
    v15 = MEMORY[0x277CCACA8];
    v16 = [v10 description];
    v17 = [v15 stringWithFormat:@"Repeat (%llu): %s", a4, objc_msgSend(v16, "UTF8String")];
    fprintf(v14, "%s\n", [v17 UTF8String]);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GTLoopbackService_echo_repeat_callback_complete___block_invoke;
  block[3] = &unk_279661AC0;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a4;
  v19 = v12;
  v20 = v10;
  v21 = v11;
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