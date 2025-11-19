@interface EDListUnsubscribeHandler
+ (id)log;
- (EDListUnsubscribeHandler)init;
- (EMListUnsubscribeDetector)detector;
- (void)ignoreWithCommand:(id)a3 completion:(id)a4;
- (void)unsubscribeHTMLWithCommand:(id)a3 timeout:(double)a4 completion:(id)a5;
- (void)unsubscribeMailtoWithCommand:(id)a3 completion:(id)a4;
- (void)unsubscribeWithCommand:(id)a3 completion:(id)a4;
@end

@implementation EDListUnsubscribeHandler

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDListUnsubscribeHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_48 != -1)
  {
    dispatch_once(&log_onceToken_48, block);
  }

  v2 = log_log_48;

  return v2;
}

void __31__EDListUnsubscribeHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_48;
  log_log_48 = v1;
}

- (EDListUnsubscribeHandler)init
{
  v6.receiver = self;
  v6.super_class = EDListUnsubscribeHandler;
  v2 = [(EDListUnsubscribeHandler *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.ListUnsubscribeScheduler" qualityOfService:17];
    scheduler = v2->_scheduler;
    v2->_scheduler = v3;

    v2->_detectorLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (EMListUnsubscribeDetector)detector
{
  os_unfair_lock_lock(&self->_detectorLock);
  detector = self->_detector;
  if (!detector)
  {
    v4 = objc_alloc_init(MEMORY[0x1E699ACF0]);
    v5 = self->_detector;
    self->_detector = v4;

    detector = self->_detector;
  }

  v6 = detector;
  os_unfair_lock_unlock(&self->_detectorLock);

  return v6;
}

- (void)ignoreWithCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EDListUnsubscribeHandler *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDListUnsubscribeHandler ignoreWithCommand:completion:]", "EDListUnsubscribeHandler.m", 45, "0");
}

- (void)unsubscribeWithCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 isMailtoOperation])
  {
    [(EDListUnsubscribeHandler *)self unsubscribeMailtoWithCommand:v7 completion:v6];
  }

  else
  {
    [(EDListUnsubscribeHandler *)self unsubscribeHTMLWithCommand:v7 timeout:v6 completion:15.0];
  }
}

- (void)unsubscribeMailtoWithCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EDListUnsubscribeHandler *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDListUnsubscribeHandler unsubscribeMailtoWithCommand:completion:]", "EDListUnsubscribeHandler.m", 57, "0");
}

- (void)unsubscribeHTMLWithCommand:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EDListUnsubscribeHandler *)self scheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__EDListUnsubscribeHandler_unsubscribeHTMLWithCommand_timeout_completion___block_invoke;
  v13[3] = &unk_1E8252E78;
  v11 = v8;
  v17 = a4;
  v14 = v11;
  v15 = self;
  v12 = v9;
  v16 = v12;
  [v10 performBlock:v13];
}

void __74__EDListUnsubscribeHandler_unsubscribeHTMLWithCommand_timeout_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) postValues];
  v3 = [v2 oneClickURL];
  v4 = [v2 postContent];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v11 = [v4 dataUsingEncoding:4];
    v12 = *(a1 + 56);
    EFPostUTF8FormData();
    v13 = 0;

    if (v13)
    {
      v14 = +[EDListUnsubscribeHandler log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v13 ef_publicDescription];
        __74__EDListUnsubscribeHandler_unsubscribeHTMLWithCommand_timeout_completion___block_invoke_cold_2(v15, buf, v14);
      }

      goto LABEL_14;
    }

LABEL_13:
    v14 = [*(a1 + 40) detector];
    [v14 acceptCommand:*(a1 + 32)];
    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot perform HTML unsubscribe. url was nil: %d, postContent was nil: %d", v3 == 0, v4 == 0];
  v13 = [v7 em_internalErrorWithReason:v8];

  v9 = +[EDListUnsubscribeHandler log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = [v13 ef_publicDescription];
    __74__EDListUnsubscribeHandler_unsubscribeHTMLWithCommand_timeout_completion___block_invoke_cold_1(v10, buf, v9);
  }

  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_15:
  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __74__EDListUnsubscribeHandler_unsubscribeHTMLWithCommand_timeout_completion___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Error performing HTML unsubscribe: %{public}@", buf, 0xCu);
}

void __74__EDListUnsubscribeHandler_unsubscribeHTMLWithCommand_timeout_completion___block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Error performing HTML unsubscribe: %{public}@", buf, 0xCu);
}

@end