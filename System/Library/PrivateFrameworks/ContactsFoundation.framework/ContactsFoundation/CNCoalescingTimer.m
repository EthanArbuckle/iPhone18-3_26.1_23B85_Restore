@interface CNCoalescingTimer
+ (OS_os_log)os_log;
- (CNCoalescingTimer)initWithDelay:(double)a3 options:(unint64_t)a4 block:(id)a5 schedulerProvider:(id)a6 downstreamScheduler:(id)a7;
- (CNCoalescingTimer)initWithDelay:(double)a3 options:(unint64_t)a4 delegate:(id)a5;
- (void)dealloc;
- (void)handleEvent;
- (void)nts_closeDoor;
- (void)nts_letSomeoneIn;
- (void)nts_makeSomeoneWait;
- (void)nts_openDoor;
@end

@implementation CNCoalescingTimer

- (void)handleEvent
{
  v3 = [(CNCoalescingTimer *)self resourceLock];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__CNCoalescingTimer_handleEvent__block_invoke;
  v4[3] = &unk_1E6ED5830;
  v4[4] = self;
  CNRunWithLock(v3, v4);
}

uint64_t __32__CNCoalescingTimer_handleEvent__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) options] & 1) != 0 && objc_msgSend(*(a1 + 32), "nts_isDoorOpened"))
  {
    v2 = *(a1 + 32);

    return [v2 nts_letSomeoneIn];
  }

  else
  {
    if ([*(a1 + 32) nts_isDoorOpened])
    {
      [*(a1 + 32) nts_closeDoor];
    }

    v4 = *(a1 + 32);

    return [v4 nts_makeSomeoneWait];
  }
}

- (void)nts_closeDoor
{
  [(CNCoalescingTimer *)self setOpen:0];
  v3 = [(CNCoalescingTimer *)self delayScheduler];
  [(CNCoalescingTimer *)self delay];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CNCoalescingTimer_nts_closeDoor__block_invoke;
  v5[3] = &unk_1E6ED5830;
  v5[4] = self;
  v4 = [v3 afterDelay:v5 performBlock:?];
  [(CNCoalescingTimer *)self setScheduledToken:v4];
}

- (void)nts_makeSomeoneWait
{
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CNCoalescingTimer *)v3 nts_makeSomeoneWait];
  }

  [(CNCoalescingTimer *)self setSomeoneWaiting:1];
}

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_1_0 != -1)
  {
    +[CNCoalescingTimer os_log];
  }

  v3 = os_log_cn_once_object_1_0;

  return v3;
}

uint64_t __27__CNCoalescingTimer_os_log__block_invoke()
{
  os_log_cn_once_object_1_0 = os_log_create("com.apple.contacts.foundation", "coalescing-timer");

  return MEMORY[0x1EEE66BB8]();
}

- (CNCoalescingTimer)initWithDelay:(double)a3 options:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, v8);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__CNCoalescingTimer_initWithDelay_options_delegate___block_invoke;
  v16[3] = &unk_1E6ED5C10;
  objc_copyWeak(&v18, &location);
  v17 = self;
  v9 = +[(CNEnvironmentBase *)CNEnvironment];
  v10 = [v9 schedulerProvider];
  v11 = +[(CNEnvironmentBase *)CNEnvironment];
  v12 = [v11 schedulerProvider];
  v13 = [v12 backgroundScheduler];
  v14 = [(CNCoalescingTimer *)v17 initWithDelay:a4 options:v16 block:v10 schedulerProvider:v13 downstreamScheduler:a3];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v14;
}

void __52__CNCoalescingTimer_initWithDelay_options_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained timerDidEmitEvent:*(a1 + 32)];
}

- (CNCoalescingTimer)initWithDelay:(double)a3 options:(unint64_t)a4 block:(id)a5 schedulerProvider:(id)a6 downstreamScheduler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v25.receiver = self;
  v25.super_class = CNCoalescingTimer;
  v15 = [(CNCoalescingTimer *)&v25 init];
  v16 = v15;
  if (v15)
  {
    v15->_delay = a3;
    v17 = [v12 copy];
    block = v16->_block;
    v16->_block = v17;

    v16->_options = a4;
    objc_storeStrong(&v16->_downstreamScheduler, a7);
    v19 = objc_alloc_init(CNUnfairLock);
    resourceLock = v16->_resourceLock;
    v16->_resourceLock = v19;

    v21 = [v13 backgroundScheduler];
    delayScheduler = v16->_delayScheduler;
    v16->_delayScheduler = v21;

    *&v16->_open = 1;
    v23 = v16;
  }

  return v16;
}

- (void)dealloc
{
  [(CNCancelable *)self->_scheduledToken cancel];
  v3.receiver = self;
  v3.super_class = CNCoalescingTimer;
  [(CNCoalescingTimer *)&v3 dealloc];
}

- (void)nts_letSomeoneIn
{
  [(CNCoalescingTimer *)self setSomeoneWaiting:0];
  [(CNCoalescingTimer *)self nts_closeDoor];
  v4 = [(CNCoalescingTimer *)self downstreamScheduler];
  v3 = [(CNCoalescingTimer *)self block];
  [v4 performBlock:v3];
}

- (void)nts_openDoor
{
  [(CNCoalescingTimer *)self setOpen:1];
  if ([(CNCoalescingTimer *)self isSomeoneWaiting])
  {
    v3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(CNCoalescingTimer *)v3 nts_openDoor];
    }

    [(CNCoalescingTimer *)self nts_letSomeoneIn];
  }
}

void __34__CNCoalescingTimer_nts_closeDoor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceLock];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CNCoalescingTimer_nts_closeDoor__block_invoke_2;
  v3[3] = &unk_1E6ED5830;
  v3[4] = *(a1 + 32);
  CNRunWithLock(v2, v3);
}

@end