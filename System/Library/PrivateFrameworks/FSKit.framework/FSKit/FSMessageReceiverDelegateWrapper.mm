@interface FSMessageReceiverDelegateWrapper
- (FSMessageReceiverDelegateWrapper)initWithDelegate:(id)delegate Locale:(id)locale preferredLanguages:(id)languages;
- (void)completed:(id)completed replyHandler:(id)handler;
- (void)didStart;
@end

@implementation FSMessageReceiverDelegateWrapper

- (FSMessageReceiverDelegateWrapper)initWithDelegate:(id)delegate Locale:(id)locale preferredLanguages:(id)languages
{
  v24[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  localeCopy = locale;
  languagesCopy = languages;
  v23.receiver = self;
  v23.super_class = FSMessageReceiverDelegateWrapper;
  v12 = [(FSMessageReceiverDelegateWrapper *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_delegate, delegate);
    if (localeCopy)
    {
      currentLocale = localeCopy;
    }

    else
    {
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    }

    locale = v13->_locale;
    v13->_locale = currentLocale;

    if (languagesCopy && [languagesCopy count])
    {
      v16 = languagesCopy;
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

- (void)completed:(id)completed replyHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasCompleted = selfCopy->_hasCompleted;
  if (!hasCompleted)
  {
    selfCopy->_hasCompleted = 1;
  }

  if (selfCopy->_hasStarted)
  {
    objc_sync_exit(selfCopy);

    if (!hasCompleted)
    {
      [(FSTaskMessageOperations *)selfCopy->_delegate completed:completedCopy replyHandler:handlerCopy];
      goto LABEL_11;
    }

LABEL_7:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_11;
  }

  objc_storeStrong(&selfCopy->_completedError, completed);
  objc_sync_exit(selfCopy);

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

  (*(handlerCopy + 2))(handlerCopy, 0, v11);
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didStart
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_hasStarted = 1;
  hasCompleted = selfCopy->_hasCompleted;
  objc_sync_exit(selfCopy);

  if (hasCompleted)
  {
    delegate = selfCopy->_delegate;
    completedError = selfCopy->_completedError;

    [(FSTaskMessageOperations *)delegate completed:completedError replyHandler:&__block_literal_global];
  }
}

@end