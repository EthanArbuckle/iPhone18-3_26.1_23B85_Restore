@interface IOUserNotification
+ (IOUserNotification)notificationWithHeader:(id)header andMessage:(id)message;
+ (NSLock)_notificationMapTableLock;
+ (NSMapTable)_notificationMapTable;
+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)notification;
- (BOOL)_addButton:(id)button;
- (BOOL)_addOption:(id)option;
- (BOOL)addButtonWithTitle:(id)title;
- (IOUserNotification)initWithHeader:(id)header andMessage:(id)message;
- (NSArray)buttons;
- (NSArray)options;
- (id)_userNotificationDictionary;
- (id)description;
- (unint64_t)_userNotificationOptionFlags;
- (void)_userNotificationDictionary;
- (void)dealloc;
- (void)dismissNotification;
- (void)presentNotification;
- (void)presentNotificationWithResponseHandler:(id)handler;
- (void)updateNotification;
@end

@implementation IOUserNotification

+ (IOUserNotification)notificationWithHeader:(id)header andMessage:(id)message
{
  messageCopy = message;
  headerCopy = header;
  v8 = [[self alloc] initWithHeader:headerCopy andMessage:messageCopy];

  return v8;
}

- (IOUserNotification)initWithHeader:(id)header andMessage:(id)message
{
  headerCopy = header;
  messageCopy = message;
  v32.receiver = self;
  v32.super_class = IOUserNotification;
  v8 = [(IOUserNotification *)&v32 init];
  v9 = v8;
  if (v8)
  {
    responseHandler = v8->_responseHandler;
    v8->_responseHandler = 0;

    v9->_shouldDisplayOnTop = 0;
    v9->_timeout = 0.0;
    v9->_notificationLevel = 0;
    v11 = [headerCopy copy];
    header = v9->_header;
    v9->_header = v11;

    v13 = [messageCopy copy];
    message = v9->_message;
    v9->_message = v13;

    iconURL = v9->_iconURL;
    v9->_iconURL = 0;

    lockScreenHeader = v9->_lockScreenHeader;
    v9->_lockScreenHeader = 0;

    lockScreenMessage = v9->_lockScreenMessage;
    v9->_lockScreenMessage = 0;

    *&v9->_shouldPresentViaSystemAperture = 0x1000000;
    *&v9->_shouldIgnoreQuietMode = 0;
    systemSoundID = v9->_systemSoundID;
    v9->_systemSoundID = 0;

    extensionIdentifier = v9->_extensionIdentifier;
    v9->_extensionIdentifier = 0;

    extensionItems = v9->_extensionItems;
    v9->_extensionItems = 0;

    v9->_updateCount = 0;
    *&v9->_noDefaultButton = 0;
    *&v9->_notificationCancelled = 0;
    array = [MEMORY[0x277CBEB18] array];
    buttonsMutable = v9->_buttonsMutable;
    v9->_buttonsMutable = array;

    array2 = [MEMORY[0x277CBEB18] array];
    optionsMutable = v9->_optionsMutable;
    v9->_optionsMutable = array2;

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = dispatch_queue_create([v26 UTF8String], 0);
    queue = v9->_queue;
    v9->_queue = v27;

    v29 = objc_alloc_init(IOThread);
    thread = v9->_thread;
    v9->_thread = v29;
  }

  return v9;
}

- (void)dealloc
{
  if ([(IOUserNotification *)self isVisible])
  {
    [(IOUserNotification *)self dismissNotification];
  }

  v3.receiver = self;
  v3.super_class = IOUserNotification;
  [(IOUserNotification *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  header = [(IOUserNotification *)self header];
  message = [(IOUserNotification *)self message];
  buttonsMutable = [(IOUserNotification *)self buttonsMutable];
  v9 = [buttonsMutable count];
  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v11 = [optionsMutable count];
  isVisible = [(IOUserNotification *)self isVisible];
  v13 = "NO";
  if (isVisible)
  {
    v13 = "YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p, header: %@, message: %@, numButtons: %lu, numOptions: %lu, visible: %s>", v5, self, header, message, v9, v11, v13];

  return v14;
}

- (NSArray)buttons
{
  buttonsMutable = [(IOUserNotification *)self buttonsMutable];
  v3 = [buttonsMutable copy];

  return v3;
}

- (NSArray)options
{
  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v3 = [optionsMutable copy];

  return v3;
}

- (BOOL)_addButton:(id)button
{
  buttonCopy = button;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addButton___block_invoke;
  block[3] = &unk_2796A3240;
  block[4] = self;
  v9 = buttonCopy;
  v10 = &v11;
  v6 = buttonCopy;
  dispatch_sync(queue, block);

  LOBYTE(buttonCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return buttonCopy;
}

void __33__IOUserNotification__addButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonsMutable];
  v3 = [v2 count];

  if (v3 > 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __33__IOUserNotification__addButton___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [*(a1 + 32) buttonsMutable];
    [v4 addObject:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)addButtonWithTitle:(id)title
{
  v4 = [IOUserNotificationButton buttonWithTitle:title];
  LOBYTE(self) = [(IOUserNotification *)self _addButton:v4];

  return self;
}

- (BOOL)_addOption:(id)option
{
  optionCopy = option;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addOption___block_invoke;
  block[3] = &unk_2796A3240;
  block[4] = self;
  v9 = optionCopy;
  v10 = &v11;
  v6 = optionCopy;
  dispatch_sync(queue, block);

  LOBYTE(optionCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return optionCopy;
}

void __33__IOUserNotification__addOption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) optionsMutable];
  v3 = [v2 count];

  if (v3 > 7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __33__IOUserNotification__addOption___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [*(a1 + 32) optionsMutable];
    [v4 addObject:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)presentNotificationWithResponseHandler:(id)handler
{
  [(IOUserNotification *)self setResponseHandler:handler];

  [(IOUserNotification *)self presentNotification];
}

- (void)presentNotification
{
  queue = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_presentNotification__block_invoke;
  block[3] = &unk_2796A31C0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__IOUserNotification_presentNotification__block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v2 = [IOUserNotification _findCFUserNotificationForUserNotification:*(a1 + 32)];
  v30[3] = v2;
  if (v2)
  {
    CFRetain(v2);
    if (v30[3])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __41__IOUserNotification_presentNotification__block_invoke_cold_1();
      }

      goto LABEL_10;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Creating CFUserNotification...", buf, 2u);
  }

  v3 = [*(a1 + 32) thread];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__IOUserNotification_presentNotification__block_invoke_14;
  v23[3] = &unk_2796A3268;
  v23[4] = *(a1 + 32);
  v23[5] = &v29;
  v23[6] = &v25;
  [v3 dispatchSync:v23];

  v4 = *(v26 + 6);
  if (v30[3] && !v4)
  {
    [*(a1 + 32) setVisible:1];
    v5 = +[IOUserNotification _notificationMapTableLock];
    [v5 lock];

    v6 = +[IOUserNotification _notificationMapTable];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCAE60] valueWithPointer:v30[3]];
    [v6 setObject:v7 forKey:v8];

    v9 = +[IOUserNotification _notificationMapTableLock];
    [v9 unlock];

    CFRetain(v30[3]);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x277CBECE8], v30[3], _userNotificationCallback, 0);
    v11 = [*(a1 + 32) thread];
    v12 = [v11 runLoop];
    v13 = [v12 getCFRunLoop];
    CFRunLoopAddSource(v13, RunLoopSource, *MEMORY[0x277CBF048]);

    CFRelease(RunLoopSource);
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v20 = MEMORY[0x277CCA9B8];
  v33 = *MEMORY[0x277CCA450];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"CFUserNotificationCreate() failed! (error: %d)", v4];
  v34[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v14 = [v20 errorWithDomain:@"IOUserNotificationErrorDomain" code:2 userInfo:v22];

LABEL_11:
  v15 = v30[3];
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    v16 = [*(a1 + 32) responseHandler];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [*(a1 + 32) responseHandler];
      (v18)[2](v18, *(a1 + 32), v14);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v19 = *MEMORY[0x277D85DE8];
}

void __41__IOUserNotification_presentNotification__block_invoke_14(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  [*(a1 + 32) timeout];
  v4 = v3;
  v5 = [*(a1 + 32) _userNotificationOptionFlags];
  v6 = *(*(a1 + 48) + 8);
  v7 = [*(a1 + 32) _userNotificationDictionary];
  *(*(*(a1 + 40) + 8) + 24) = CFUserNotificationCreate(v2, v4, v5, (v6 + 24), v7);
}

- (void)updateNotification
{
  queue = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__IOUserNotification_updateNotification__block_invoke;
  block[3] = &unk_2796A31C0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__IOUserNotification_updateNotification__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isVisible])
  {
    v2 = [IOUserNotification _findCFUserNotificationForUserNotification:*(a1 + 32)];
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Updating CFUserNotification...", buf, 2u);
      }

      v4 = [*(a1 + 32) thread];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __40__IOUserNotification_updateNotification__block_invoke_21;
      v5[3] = &unk_2796A3290;
      v5[4] = *(a1 + 32);
      v5[5] = v3;
      [v4 dispatchSync:v5];
    }
  }
}

void __40__IOUserNotification_updateNotification__block_invoke_21(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  [*(a1 + 32) timeout];
  v4 = v3;
  v5 = [*(v1 + 32) _userNotificationOptionFlags];
  v6 = [*(v1 + 32) _userNotificationDictionary];
  LODWORD(v1) = CFUserNotificationUpdate(v2, v4, v5, v6);

  if (v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __40__IOUserNotification_updateNotification__block_invoke_21_cold_1();
    }
  }
}

- (void)dismissNotification
{
  queue = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_dismissNotification__block_invoke;
  block[3] = &unk_2796A31C0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__IOUserNotification_dismissNotification__block_invoke(uint64_t a1)
{
  v2 = [IOUserNotification _findCFUserNotificationForUserNotification:*(a1 + 32)];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setNotificationDismissed:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_250977000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelling CFUserNotification...", buf, 2u);
    }

    CFRetain(v3);
    v4 = [*(a1 + 32) thread];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__IOUserNotification_dismissNotification__block_invoke_22;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = v3;
    [v4 dispatchSync:v8];

    v5 = dispatch_time(0, 1000000000);
    v6 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__IOUserNotification_dismissNotification__block_invoke_23;
    block[3] = &unk_2796A3290;
    block[4] = *(a1 + 32);
    block[5] = v3;
    dispatch_after(v5, v6, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__IOUserNotification_dismissNotification__block_invoke_cold_1();
  }
}

void __41__IOUserNotification_dismissNotification__block_invoke_22(uint64_t a1)
{
  if (CFUserNotificationCancel(*(a1 + 32)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __41__IOUserNotification_dismissNotification__block_invoke_22_cold_1();
    }
  }
}

void __41__IOUserNotification_dismissNotification__block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) thread];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__IOUserNotification_dismissNotification__block_invoke_2;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = *(a1 + 40);
  [v2 dispatchAsync:v3];
}

void __41__IOUserNotification_dismissNotification__block_invoke_2(uint64_t a1)
{
  if (CFUserNotificationCancel(*(a1 + 32)) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__IOUserNotification_dismissNotification__block_invoke_2_cold_1();
  }

  CFRelease(*(a1 + 32));
}

- (unint64_t)_userNotificationOptionFlags
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  notificationLevel = [(IOUserNotification *)self notificationLevel];
  if (notificationLevel - 1 > 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = qword_25097F8E0[notificationLevel - 1];
  }

  v10[3] |= v4;
  if ([(IOUserNotification *)self noDefaultButton])
  {
    v10[3] |= 0x20uLL;
  }

  if ([(IOUserNotification *)self useRadioOptions])
  {
    v10[3] |= 0x40uLL;
  }

  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__IOUserNotification__userNotificationOptionFlags__block_invoke;
  v8[3] = &unk_2796A32B8;
  v8[4] = &v9;
  [optionsMutable enumerateObjectsUsingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __50__IOUserNotification__userNotificationOptionFlags__block_invoke(uint64_t a1, void *a2, char a3)
{
  result = [a2 selected];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) |= 1 << (a3 + 8);
  }

  return result;
}

- (id)_userNotificationDictionary
{
  v64 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(IOUserNotification *)self shouldDisplayOnTop])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldDisplayOnTop](self, "shouldDisplayOnTop")}];
    [dictionary setObject:v4 forKey:*MEMORY[0x277CBF1B0]];
  }

  header = [(IOUserNotification *)self header];

  if (header)
  {
    header2 = [(IOUserNotification *)self header];
    [dictionary setObject:header2 forKey:*MEMORY[0x277CBF188]];
  }

  message = [(IOUserNotification *)self message];

  if (message)
  {
    message2 = [(IOUserNotification *)self message];
    [dictionary setObject:message2 forKey:*MEMORY[0x277CBF198]];
  }

  iconURL = [(IOUserNotification *)self iconURL];

  if (iconURL)
  {
    iconURL2 = [(IOUserNotification *)self iconURL];
    [dictionary setObject:iconURL2 forKey:*MEMORY[0x277CBF1F0]];
  }

  lockScreenHeader = [(IOUserNotification *)self lockScreenHeader];

  if (lockScreenHeader)
  {
    lockScreenHeader2 = [(IOUserNotification *)self lockScreenHeader];
    [dictionary setObject:lockScreenHeader2 forKey:*MEMORY[0x277D673B8]];
  }

  lockScreenMessage = [(IOUserNotification *)self lockScreenMessage];

  if (lockScreenMessage)
  {
    lockScreenMessage2 = [(IOUserNotification *)self lockScreenMessage];
    [dictionary setObject:lockScreenMessage2 forKey:*MEMORY[0x277D673C8]];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldPresentViaSystemAperture](self, "shouldPresentViaSystemAperture")}];
  [dictionary setObject:v15 forKey:*MEMORY[0x277D67420]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldDismissOnLock](self, "shouldDismissOnLock")}];
  [dictionary setObject:v16 forKey:*MEMORY[0x277D67320]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[IOUserNotification shouldDismissOnUnlock](self, "shouldDismissOnUnlock") ^ 1}];
  [dictionary setObject:v17 forKey:*MEMORY[0x277D67340]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldAllowLockScreenDismissal](self, "shouldAllowLockScreenDismissal")}];
  [dictionary setObject:v18 forKey:*MEMORY[0x277D67290]];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldIgnoreQuietMode](self, "shouldIgnoreQuietMode")}];
  [dictionary setObject:v19 forKey:*MEMORY[0x277D673B0]];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldHideOnMirroredDisplay](self, "shouldHideOnMirroredDisplay")}];
  [dictionary setObject:v20 forKey:*MEMORY[0x277D67388]];

  systemSoundID = [(IOUserNotification *)self systemSoundID];

  if (systemSoundID)
  {
    systemSoundID2 = [(IOUserNotification *)self systemSoundID];
    [dictionary setObject:systemSoundID2 forKey:*MEMORY[0x277D67430]];
  }

  extensionIdentifier = [(IOUserNotification *)self extensionIdentifier];

  if (extensionIdentifier)
  {
    extensionIdentifier2 = [(IOUserNotification *)self extensionIdentifier];
    [dictionary setObject:extensionIdentifier2 forKey:*MEMORY[0x277D67350]];
  }

  extensionItems = [(IOUserNotification *)self extensionItems];

  if (extensionItems)
  {
    v26 = MEMORY[0x277CCAAB0];
    extensionItems2 = [(IOUserNotification *)self extensionItems];
    v62 = 0;
    v28 = [v26 archivedDataWithRootObject:extensionItems2 requiringSecureCoding:1 error:&v62];
    v29 = v62;
    [dictionary setObject:v28 forKey:*MEMORY[0x277D67358]];

    if (v29 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOUserNotification _userNotificationDictionary];
    }
  }

  buttonsMutable = [(IOUserNotification *)self buttonsMutable];
  v31 = [buttonsMutable count];

  if (v31)
  {
    buttonsMutable2 = [(IOUserNotification *)self buttonsMutable];
    v33 = [buttonsMutable2 objectAtIndexedSubscript:0];
    title = [v33 title];
    [dictionary setObject:title forKey:*MEMORY[0x277CBF1E8]];
  }

  buttonsMutable3 = [(IOUserNotification *)self buttonsMutable];
  v36 = [buttonsMutable3 count];

  if (v36 >= 2)
  {
    buttonsMutable4 = [(IOUserNotification *)self buttonsMutable];
    v38 = [buttonsMutable4 objectAtIndexedSubscript:1];
    title2 = [v38 title];
    [dictionary setObject:title2 forKey:*MEMORY[0x277CBF1C0]];
  }

  buttonsMutable5 = [(IOUserNotification *)self buttonsMutable];
  v41 = [buttonsMutable5 count];

  if (v41 >= 3)
  {
    buttonsMutable6 = [(IOUserNotification *)self buttonsMutable];
    v43 = [buttonsMutable6 objectAtIndexedSubscript:2];
    title3 = [v43 title];
    [dictionary setObject:title3 forKey:*MEMORY[0x277CBF218]];
  }

  optionsMutable = [(IOUserNotification *)self optionsMutable];
  v46 = [optionsMutable count];

  if (v46)
  {
    array = [MEMORY[0x277CBEB18] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    optionsMutable2 = [(IOUserNotification *)self optionsMutable];
    v49 = [optionsMutable2 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v59;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v59 != v51)
          {
            objc_enumerationMutation(optionsMutable2);
          }

          title4 = [*(*(&v58 + 1) + 8 * i) title];
          v54 = [title4 copy];
          [array addObject:v54];
        }

        v50 = [optionsMutable2 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v50);
    }

    [dictionary setObject:array forKey:*MEMORY[0x277CBF1D0]];
  }

  v55 = [dictionary copy];

  v56 = *MEMORY[0x277D85DE8];

  return v55;
}

+ (NSMapTable)_notificationMapTable
{
  if (_notificationMapTable_onceToken != -1)
  {
    +[IOUserNotification _notificationMapTable];
  }

  v3 = _notificationMapTable_mapTable;

  return v3;
}

uint64_t __43__IOUserNotification__notificationMapTable__block_invoke()
{
  _notificationMapTable_mapTable = objc_alloc_init(MEMORY[0x277CCAB00]);

  return MEMORY[0x2821F96F8]();
}

+ (NSLock)_notificationMapTableLock
{
  if (_notificationMapTableLock_onceToken != -1)
  {
    +[IOUserNotification _notificationMapTableLock];
  }

  v3 = _notificationMapTableLock_lock;

  return v3;
}

uint64_t __47__IOUserNotification__notificationMapTableLock__block_invoke()
{
  _notificationMapTableLock_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);

  return MEMORY[0x2821F96F8]();
}

+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = +[IOUserNotification _notificationMapTableLock];
  [v4 lock];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[IOUserNotification _notificationMapTable];
  pointerValue = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (pointerValue)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != pointerValue; i = (i + 1))
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = +[IOUserNotification _notificationMapTable];
        v11 = [v10 objectForKey:v9];

        if (v11 == notificationCopy)
        {
          pointerValue = [v9 pointerValue];

          goto LABEL_11;
        }
      }

      pointerValue = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (pointerValue)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = +[IOUserNotification _notificationMapTableLock];
  [v12 unlock];

  v13 = *MEMORY[0x277D85DE8];
  return pointerValue;
}

void __40__IOUserNotification_updateNotification__block_invoke_21_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__IOUserNotification_dismissNotification__block_invoke_22_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__IOUserNotification_dismissNotification__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_userNotificationDictionary
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end