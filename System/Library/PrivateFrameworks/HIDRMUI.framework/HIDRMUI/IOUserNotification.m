@interface IOUserNotification
+ (IOUserNotification)notificationWithHeader:(id)a3 andMessage:(id)a4;
+ (NSLock)_notificationMapTableLock;
+ (NSMapTable)_notificationMapTable;
+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)a3;
- (BOOL)_addButton:(id)a3;
- (BOOL)_addOption:(id)a3;
- (BOOL)addButtonWithTitle:(id)a3;
- (IOUserNotification)initWithHeader:(id)a3 andMessage:(id)a4;
- (NSArray)buttons;
- (NSArray)options;
- (id)_userNotificationDictionary;
- (id)description;
- (unint64_t)_userNotificationOptionFlags;
- (void)_userNotificationDictionary;
- (void)dealloc;
- (void)dismissNotification;
- (void)presentNotification;
- (void)presentNotificationWithResponseHandler:(id)a3;
- (void)updateNotification;
@end

@implementation IOUserNotification

+ (IOUserNotification)notificationWithHeader:(id)a3 andMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithHeader:v7 andMessage:v6];

  return v8;
}

- (IOUserNotification)initWithHeader:(id)a3 andMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v11 = [v6 copy];
    header = v9->_header;
    v9->_header = v11;

    v13 = [v7 copy];
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
    v21 = [MEMORY[0x277CBEB18] array];
    buttonsMutable = v9->_buttonsMutable;
    v9->_buttonsMutable = v21;

    v23 = [MEMORY[0x277CBEB18] array];
    optionsMutable = v9->_optionsMutable;
    v9->_optionsMutable = v23;

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
  v6 = [(IOUserNotification *)self header];
  v7 = [(IOUserNotification *)self message];
  v8 = [(IOUserNotification *)self buttonsMutable];
  v9 = [v8 count];
  v10 = [(IOUserNotification *)self optionsMutable];
  v11 = [v10 count];
  v12 = [(IOUserNotification *)self isVisible];
  v13 = "NO";
  if (v12)
  {
    v13 = "YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p, header: %@, message: %@, numButtons: %lu, numOptions: %lu, visible: %s>", v5, self, v6, v7, v9, v11, v13];

  return v14;
}

- (NSArray)buttons
{
  v2 = [(IOUserNotification *)self buttonsMutable];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)options
{
  v2 = [(IOUserNotification *)self optionsMutable];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)_addButton:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addButton___block_invoke;
  block[3] = &unk_2796A3240;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
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

- (BOOL)addButtonWithTitle:(id)a3
{
  v4 = [IOUserNotificationButton buttonWithTitle:a3];
  LOBYTE(self) = [(IOUserNotification *)self _addButton:v4];

  return self;
}

- (BOOL)_addOption:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__IOUserNotification__addOption___block_invoke;
  block[3] = &unk_2796A3240;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
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

- (void)presentNotificationWithResponseHandler:(id)a3
{
  [(IOUserNotification *)self setResponseHandler:a3];

  [(IOUserNotification *)self presentNotification];
}

- (void)presentNotification
{
  v3 = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_presentNotification__block_invoke;
  block[3] = &unk_2796A31C0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__IOUserNotification_updateNotification__block_invoke;
  block[3] = &unk_2796A31C0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(IOUserNotification *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__IOUserNotification_dismissNotification__block_invoke;
  block[3] = &unk_2796A31C0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(IOUserNotification *)self notificationLevel];
  if (v3 - 1 > 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = qword_25097F8E0[v3 - 1];
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

  v5 = [(IOUserNotification *)self optionsMutable];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__IOUserNotification__userNotificationOptionFlags__block_invoke;
  v8[3] = &unk_2796A32B8;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(IOUserNotification *)self shouldDisplayOnTop])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldDisplayOnTop](self, "shouldDisplayOnTop")}];
    [v3 setObject:v4 forKey:*MEMORY[0x277CBF1B0]];
  }

  v5 = [(IOUserNotification *)self header];

  if (v5)
  {
    v6 = [(IOUserNotification *)self header];
    [v3 setObject:v6 forKey:*MEMORY[0x277CBF188]];
  }

  v7 = [(IOUserNotification *)self message];

  if (v7)
  {
    v8 = [(IOUserNotification *)self message];
    [v3 setObject:v8 forKey:*MEMORY[0x277CBF198]];
  }

  v9 = [(IOUserNotification *)self iconURL];

  if (v9)
  {
    v10 = [(IOUserNotification *)self iconURL];
    [v3 setObject:v10 forKey:*MEMORY[0x277CBF1F0]];
  }

  v11 = [(IOUserNotification *)self lockScreenHeader];

  if (v11)
  {
    v12 = [(IOUserNotification *)self lockScreenHeader];
    [v3 setObject:v12 forKey:*MEMORY[0x277D673B8]];
  }

  v13 = [(IOUserNotification *)self lockScreenMessage];

  if (v13)
  {
    v14 = [(IOUserNotification *)self lockScreenMessage];
    [v3 setObject:v14 forKey:*MEMORY[0x277D673C8]];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldPresentViaSystemAperture](self, "shouldPresentViaSystemAperture")}];
  [v3 setObject:v15 forKey:*MEMORY[0x277D67420]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldDismissOnLock](self, "shouldDismissOnLock")}];
  [v3 setObject:v16 forKey:*MEMORY[0x277D67320]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[IOUserNotification shouldDismissOnUnlock](self, "shouldDismissOnUnlock") ^ 1}];
  [v3 setObject:v17 forKey:*MEMORY[0x277D67340]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldAllowLockScreenDismissal](self, "shouldAllowLockScreenDismissal")}];
  [v3 setObject:v18 forKey:*MEMORY[0x277D67290]];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldIgnoreQuietMode](self, "shouldIgnoreQuietMode")}];
  [v3 setObject:v19 forKey:*MEMORY[0x277D673B0]];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[IOUserNotification shouldHideOnMirroredDisplay](self, "shouldHideOnMirroredDisplay")}];
  [v3 setObject:v20 forKey:*MEMORY[0x277D67388]];

  v21 = [(IOUserNotification *)self systemSoundID];

  if (v21)
  {
    v22 = [(IOUserNotification *)self systemSoundID];
    [v3 setObject:v22 forKey:*MEMORY[0x277D67430]];
  }

  v23 = [(IOUserNotification *)self extensionIdentifier];

  if (v23)
  {
    v24 = [(IOUserNotification *)self extensionIdentifier];
    [v3 setObject:v24 forKey:*MEMORY[0x277D67350]];
  }

  v25 = [(IOUserNotification *)self extensionItems];

  if (v25)
  {
    v26 = MEMORY[0x277CCAAB0];
    v27 = [(IOUserNotification *)self extensionItems];
    v62 = 0;
    v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v62];
    v29 = v62;
    [v3 setObject:v28 forKey:*MEMORY[0x277D67358]];

    if (v29 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [IOUserNotification _userNotificationDictionary];
    }
  }

  v30 = [(IOUserNotification *)self buttonsMutable];
  v31 = [v30 count];

  if (v31)
  {
    v32 = [(IOUserNotification *)self buttonsMutable];
    v33 = [v32 objectAtIndexedSubscript:0];
    v34 = [v33 title];
    [v3 setObject:v34 forKey:*MEMORY[0x277CBF1E8]];
  }

  v35 = [(IOUserNotification *)self buttonsMutable];
  v36 = [v35 count];

  if (v36 >= 2)
  {
    v37 = [(IOUserNotification *)self buttonsMutable];
    v38 = [v37 objectAtIndexedSubscript:1];
    v39 = [v38 title];
    [v3 setObject:v39 forKey:*MEMORY[0x277CBF1C0]];
  }

  v40 = [(IOUserNotification *)self buttonsMutable];
  v41 = [v40 count];

  if (v41 >= 3)
  {
    v42 = [(IOUserNotification *)self buttonsMutable];
    v43 = [v42 objectAtIndexedSubscript:2];
    v44 = [v43 title];
    [v3 setObject:v44 forKey:*MEMORY[0x277CBF218]];
  }

  v45 = [(IOUserNotification *)self optionsMutable];
  v46 = [v45 count];

  if (v46)
  {
    v47 = [MEMORY[0x277CBEB18] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v48 = [(IOUserNotification *)self optionsMutable];
    v49 = [v48 countByEnumeratingWithState:&v58 objects:v63 count:16];
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
            objc_enumerationMutation(v48);
          }

          v53 = [*(*(&v58 + 1) + 8 * i) title];
          v54 = [v53 copy];
          [v47 addObject:v54];
        }

        v50 = [v48 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v50);
    }

    [v3 setObject:v47 forKey:*MEMORY[0x277CBF1D0]];
  }

  v55 = [v3 copy];

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

+ (__CFUserNotification)_findCFUserNotificationForUserNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IOUserNotification _notificationMapTableLock];
  [v4 lock];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[IOUserNotification _notificationMapTable];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = +[IOUserNotification _notificationMapTable];
        v11 = [v10 objectForKey:v9];

        if (v11 == v3)
        {
          v6 = [v9 pointerValue];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
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
  return v6;
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