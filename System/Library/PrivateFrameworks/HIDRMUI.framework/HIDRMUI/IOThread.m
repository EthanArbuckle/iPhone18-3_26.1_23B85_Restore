@interface IOThread
+ (unint64_t)classCount;
+ (void)decrementClassCount;
+ (void)incrementClassCount;
+ (void)initializeThread;
- (IOThread)init;
- (void)dealloc;
- (void)dispatchSync:(id)a3;
@end

@implementation IOThread

+ (unint64_t)classCount
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = sClassCount;
  objc_sync_exit(v2);

  return v3;
}

+ (void)incrementClassCount
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_250977000, MEMORY[0x277D86220], a3, "Incremented class count! (sClassCount: %lu)", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)decrementClassCount
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_250977000, MEMORY[0x277D86220], a3, "Last instance deallocated! Setting timer for %lu seconds...", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __31__IOThread_decrementClassCount__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = sClassCount;
  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      __31__IOThread_decrementClassCount__block_invoke_cold_1(v9, buf);
    }

    v10 = MEMORY[0x277D86220];
LABEL_11:

    goto LABEL_12;
  }

  if (v6)
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    __31__IOThread_decrementClassCount__block_invoke_cold_2(v13, buf);
  }

  if (sThread)
  {
    [sThread cancel];
    if (sRunLoop)
    {
      v14 = dispatch_semaphore_create(0);
      v15 = sRunLoop;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __31__IOThread_decrementClassCount__block_invoke_1;
      v19[3] = &unk_2796A31C0;
      v16 = v14;
      v20 = v16;
      [v15 performBlock:v19];
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v17 = sRunLoop;
      sRunLoop = 0;
    }

    v10 = sThread;
    sThread = 0;
    goto LABEL_11;
  }

LABEL_12:
  objc_sync_exit(v2);

  v18 = *MEMORY[0x277D85DE8];
}

intptr_t __31__IOThread_decrementClassCount__block_invoke_1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __31__IOThread_decrementClassCount__block_invoke_1_cold_1();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)initializeThread
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!sRunLoop)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = objc_alloc(MEMORY[0x277CCACC8]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__IOThread_initializeThread__block_invoke;
    v9[3] = &unk_2796A31C0;
    v5 = v3;
    v10 = v5;
    v6 = [v4 initWithBlock:v9];
    v7 = sThread;
    sThread = v6;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting thread...", v8, 2u);
    }

    [sThread start];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  objc_sync_exit(v2);
}

uint64_t __28__IOThread_initializeThread__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Initializing thread...", buf, 2u);
  }

  v2 = [MEMORY[0x277CBEB88] currentRunLoop];
  v3 = sRunLoop;
  sRunLoop = v2;

  v4 = sRunLoop;
  v5 = [MEMORY[0x277CBEB80] port];
  [v4 addPort:v5 forMode:*MEMORY[0x277CBE640]];

  dispatch_semaphore_signal(*(a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting run loop...", v7, 2u);
  }

  return [sRunLoop run];
}

- (void)dispatchSync:(id)a3
{
  v3 = a3;
  v4 = dispatch_semaphore_create(0);
  v5 = sRunLoop;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__IOThread_dispatchSync___block_invoke;
  v8[3] = &unk_2796A31E8;
  v9 = v4;
  v10 = v3;
  v6 = v4;
  v7 = v3;
  [v5 performBlock:v8];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __25__IOThread_dispatchSync___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (IOThread)init
{
  v4.receiver = self;
  v4.super_class = IOThread;
  v2 = [(IOThread *)&v4 init];
  if (v2)
  {
    [objc_opt_class() incrementClassCount];
  }

  return v2;
}

- (void)dealloc
{
  [objc_opt_class() decrementClassCount];
  v3.receiver = self;
  v3.super_class = IOThread;
  [(IOThread *)&v3 dealloc];
}

void __31__IOThread_decrementClassCount__block_invoke_cold_1(void *a1, uint8_t *buf)
{
  v3 = sClassCount;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = v3;
  _os_log_debug_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Still an instance of %@ allocated, not releasing thread! (sClassCount: %lu)", buf, 0x16u);
}

void __31__IOThread_decrementClassCount__block_invoke_cold_2(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "No instances of %@ allocated, releasing thread...", buf, 0xCu);
}

@end