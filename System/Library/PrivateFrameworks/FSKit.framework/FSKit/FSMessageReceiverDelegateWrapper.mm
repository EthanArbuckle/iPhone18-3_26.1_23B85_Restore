@interface FSMessageReceiverDelegateWrapper
- (FSMessageReceiverDelegateWrapper)initWithDelegate:(id)a3 Locale:(id)a4 preferredLanguages:(id)a5;
- (void)completed:(id)a3 replyHandler:(id)a4;
- (void)didStart;
@end

@implementation FSMessageReceiverDelegateWrapper

- (FSMessageReceiverDelegateWrapper)initWithDelegate:(id)a3 Locale:(id)a4 preferredLanguages:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = FSMessageReceiverDelegateWrapper;
  v12 = [(FSMessageReceiverDelegateWrapper *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delegate, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = [MEMORY[0x277CBEAF8] currentLocale];
    }

    locale = v13->_locale;
    v13->_locale = v14;

    if (v11 && [v11 count])
    {
      v16 = v11;
      preferredLanguages = v13->_preferredLanguages;
      v13->_preferredLanguages = v16;
    }

    else
    {
      preferredLanguages = [(NSLocale *)v13->_locale languageCode];
      v24[0] = preferredLanguages;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v19 = v13->_preferredLanguages;
      v13->_preferredLanguages = v18;
    }

    *&v13->_hasCompleted = 0;
    completedError = v13->_completedError;
    v13->_completedError = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)completed:(id)a3 replyHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  hasCompleted = v9->_hasCompleted;
  if (!hasCompleted)
  {
    v9->_hasCompleted = 1;
  }

  if (v9->_hasStarted)
  {
    objc_sync_exit(v9);

    if (!hasCompleted)
    {
      [(FSTaskMessageOperations *)v9->_delegate completed:v7 replyHandler:v8];
      goto LABEL_11;
    }

LABEL_7:
    (*(v8 + 2))(v8, 0, 0);
    goto LABEL_11;
  }

  objc_storeStrong(&v9->_completedError, a3);
  objc_sync_exit(v9);

  if (hasCompleted)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FSKitErrorDomain" code:27503 userInfo:0];
  v12 = fskit_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[FSMessageReceiverDelegateWrapper completed:replyHandler:]";
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "%s: Task didn't start yet, replying (%@) to FSMessageConnection", &v14, 0x16u);
  }

  (*(v8 + 2))(v8, 0, v11);
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didStart
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_hasStarted = 1;
  hasCompleted = v2->_hasCompleted;
  objc_sync_exit(v2);

  if (hasCompleted)
  {
    delegate = v2->_delegate;
    completedError = v2->_completedError;

    [(FSTaskMessageOperations *)delegate completed:completedError replyHandler:&__block_literal_global];
  }
}

@end