@interface EMOneTimeCodeAccelerator
+ (id)log;
- (EMOneTimeCodeAccelerator)initWithDaemonInterface:(id)a3 updateBlock:(id)a4;
- (EMOneTimeCodeAccelerator)initWithUpdateBlock:(id)a3;
- (void)dealloc;
- (void)deleteOneTimeCodeEmails:(int64_t)a3;
- (void)didEnterOneTimeCodeField;
- (void)didExitOneTimeCodeField;
- (void)didFillOneTimeCode:(int64_t)a3;
- (void)didReceiveOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5 subject:(id)a6 senders:(id)a7 observers:(unint64_t)a8;
- (void)startObservingOneTimeCode;
@end

@implementation EMOneTimeCodeAccelerator

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EMOneTimeCodeAccelerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_28 != -1)
  {
    dispatch_once(&log_onceToken_28, block);
  }

  v2 = log_log_28;

  return v2;
}

void __31__EMOneTimeCodeAccelerator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_28;
  log_log_28 = v1;
}

- (EMOneTimeCodeAccelerator)initWithUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(EMDaemonInterface);
  v6 = [(EMOneTimeCodeAccelerator *)self initWithDaemonInterface:v5 updateBlock:v4];

  return v6;
}

- (EMOneTimeCodeAccelerator)initWithDaemonInterface:(id)a3 updateBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = EMOneTimeCodeAccelerator;
  v9 = [(EMOneTimeCodeAccelerator *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonInterface, a3);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.email.EMOneTimeCodeAccelerator.oneTimeCodeQueue", v12);
    oneTimeCodeQueue = v10->_oneTimeCodeQueue;
    v10->_oneTimeCodeQueue = v13;

    v15 = _Block_copy(v8);
    updateBlock = v10->_updateBlock;
    v10->_updateBlock = v15;

    [(EMOneTimeCodeAccelerator *)v10 startObservingOneTimeCode];
  }

  return v10;
}

- (void)startObservingOneTimeCode
{
  v5 = [(EMOneTimeCodeAccelerator *)self daemonInterface];
  v3 = [v5 messageRepository];
  v4 = [v3 startObservingOneTimeCodes:self];
  [(EMOneTimeCodeAccelerator *)self setCancelable:v4];
}

- (void)didReceiveOneTimeCode:(id)a3 timestamp:(id)a4 messageID:(int64_t)a5 subject:(id)a6 senders:(id)a7 observers:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = [(EMOneTimeCodeAccelerator *)self oneTimeCodeQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__EMOneTimeCodeAccelerator_didReceiveOneTimeCode_timestamp_messageID_subject_senders_observers___block_invoke;
  block[3] = &unk_1E826F038;
  v24 = v16;
  v25 = v17;
  v26 = v14;
  v27 = v15;
  v29 = a5;
  v30 = a8;
  v28 = self;
  v19 = v15;
  v20 = v14;
  v21 = v17;
  v22 = v16;
  dispatch_async(v18, block);
}

void __96__EMOneTimeCodeAccelerator_didReceiveOneTimeCode_timestamp_messageID_subject_senders_observers___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = +[EMOneTimeCodeAccelerator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:*(a1 + 32)];
    v4 = [MEMORY[0x1E699B858] partiallyRedactedStringFromArray:*(a1 + 40)];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) description];
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v11 = 138413570;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "Received one-time code subject: %@, sender: %@, data: %@, timestamp: %@, GlobalMessageID: %lld, Current Observers: %lu", &v11, 0x3Eu);
  }

  v9 = [*(a1 + 64) updateBlock];
  v9[2](v9, *(a1 + 48), *(a1 + 56), *(a1 + 72));

  v10 = *MEMORY[0x1E69E9840];
}

- (void)didEnterOneTimeCodeField
{
  v3 = +[EMOneTimeCodeAccelerator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "One Time Code field has been entered.", buf, 2u);
  }

  v4 = [(EMOneTimeCodeAccelerator *)self daemonInterface];
  v5 = [v4 fetchController];
  [v5 performFetchForOTC];

  v6 = +[EMOneTimeCodeAccelerator log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "Start fetching email with One Time Code", v7, 2u);
  }
}

- (void)didExitOneTimeCodeField
{
  v2 = +[EMOneTimeCodeAccelerator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "One Time Code field has been exited.", v3, 2u);
  }
}

- (void)didFillOneTimeCode:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = +[EMOneTimeCodeAccelerator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "One Time Code from message with GlobalMessageID: %lld was added to text field", &v7, 0xCu);
  }

  [(EMOneTimeCodeAccelerator *)self deleteOneTimeCodeEmails:a3];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteOneTimeCodeEmails:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [EMMessageObjectID alloc];
  v6 = +[EMMailboxScope allMailboxesScope];
  v7 = [(EMMessageObjectID *)v5 initWithGlobalMessageID:a3 mailboxScope:v6];

  v8 = [(EMOneTimeCodeAccelerator *)self daemonInterface];
  v9 = [v8 messageRepository];
  [v9 performOneTimeCodeMessageDeletionWithObjectID:v7 afterDelay:0.0];

  v10 = +[EMOneTimeCodeAccelerator log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_DEFAULT, "Used one-time code email with GlobalMessageID %lld is moved to the trash folder", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [(EMOneTimeCodeAccelerator *)self cancelable];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = EMOneTimeCodeAccelerator;
  [(EMOneTimeCodeAccelerator *)&v4 dealloc];
}

@end