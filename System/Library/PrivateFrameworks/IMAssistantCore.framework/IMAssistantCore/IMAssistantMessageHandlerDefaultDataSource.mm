@interface IMAssistantMessageHandlerDefaultDataSource
+ (id)sharedInstance;
- (BOOL)screentimeAllowedToShowChat:(id)a3 error:(id *)a4;
- (BOOL)screentimeAllowedToShowConversationWithHandleIDs:(id)a3 error:(id *)a4;
- (IMAssistantCommSafetyManager)commSafetyDataSource;
- (IMAssistantContactsDataSource)contactsDataSource;
- (NSCache)contactIdentifierToUnifiedContactIdentifierCache;
- (NSCache)handleToContactIdentifierCache;
- (NSCache)spiHandleToPersonCache;
- (void)contactStoreDidChange:(id)a3;
- (void)registerForContactStoreChangeNotificationsIfNecessary;
@end

@implementation IMAssistantMessageHandlerDefaultDataSource

- (IMAssistantContactsDataSource)contactsDataSource
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
    if (!contactStore)
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Failed to allocate contact store", v8, 2u);
      }

      contactStore = self->_contactStore;
    }
  }

  return contactStore;
}

- (IMAssistantCommSafetyManager)commSafetyDataSource
{
  v2 = [IMAssistantCommSafetyManager alloc];
  v3 = [MEMORY[0x277D1A950] sharedManager];
  v4 = [MEMORY[0x277D1A958] sharedManager];
  v5 = [(IMAssistantCommSafetyManager *)v2 initWithCommSafetyRequestsManager:v3 commSafetySettingsManager:v4];

  return v5;
}

- (NSCache)handleToContactIdentifierCache
{
  if (qword_28118F658 != -1)
  {
    sub_2547C8550();
  }

  [(IMAssistantMessageHandlerDefaultDataSource *)self registerForContactStoreChangeNotificationsIfNecessary];
  v3 = qword_28118F650;

  return v3;
}

- (NSCache)spiHandleToPersonCache
{
  if (qword_28118F628 != -1)
  {
    sub_2547C8564();
  }

  [(IMAssistantMessageHandlerDefaultDataSource *)self registerForContactStoreChangeNotificationsIfNecessary];
  v3 = qword_28118F620;

  return v3;
}

- (NSCache)contactIdentifierToUnifiedContactIdentifierCache
{
  if (qword_27F610F80 != -1)
  {
    sub_2547C8578();
  }

  [(IMAssistantMessageHandlerDefaultDataSource *)self registerForContactStoreChangeNotificationsIfNecessary];
  v3 = qword_27F610F78;

  return v3;
}

- (void)contactStoreDidChange:(id)a3
{
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Contact store change notification received.", v8, 2u);
  }

  v5 = [(IMAssistantMessageHandlerDefaultDataSource *)self handleToContactIdentifierCache];
  [v5 removeAllObjects];

  v6 = [(IMAssistantMessageHandlerDefaultDataSource *)self spiHandleToPersonCache];
  [v6 removeAllObjects];

  v7 = [(IMAssistantMessageHandlerDefaultDataSource *)self contactIdentifierToUnifiedContactIdentifierCache];
  [v7 removeAllObjects];
}

- (void)registerForContactStoreChangeNotificationsIfNecessary
{
  if (!self->_didRegisterForContactStoreChangeNotifications)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_contactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];

    self->_didRegisterForContactStoreChangeNotifications = 1;
  }
}

- (BOOL)screentimeAllowedToShowChat:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = _IMAssistantCoreGeneralSignpostLogHandle();
  v7 = os_signpost_id_generate(v6);

  v8 = _IMAssistantCoreGeneralSignpostLogHandle();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "screentimeAllowedToShowChat", &unk_2547CAD0B, buf, 2u);
  }

  v10 = [v5 allowedByScreenTime];
  v11 = v10;
  if (a4 && (v10 & 1) == 0)
  {
    v12 = [v5 allowedToShowConversationSync];
    v13 = MEMORY[0x277CD4588];
    if (!v12)
    {
      v13 = MEMORY[0x277CD4578];
    }

    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMAssistantMessageHandlerErrorDomain" code:*v13 userInfo:0];
  }

  v14 = _IMAssistantCoreGeneralSignpostLogHandle();
  v15 = v14;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v15, OS_SIGNPOST_INTERVAL_END, v7, "screentimeAllowedToShowChat", &unk_2547CAD0B, v17, 2u);
  }

  return v11;
}

- (BOOL)screentimeAllowedToShowConversationWithHandleIDs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = _IMAssistantCoreGeneralSignpostLogHandle();
  v7 = os_signpost_id_generate(v6);

  v8 = _IMAssistantCoreGeneralSignpostLogHandle();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "screentimeAllowedToShowConversationWithHandleIDs", &unk_2547CAD0B, buf, 2u);
  }

  if ([MEMORY[0x277D18D70] isContactLimitsFeatureEnabled])
  {
    v10 = [MEMORY[0x277D18D70] sharedInstance];
    v19 = 0;
    v11 = [v10 allowedToShowConversationWithHandleIDs:v5 sync:1 context:&v19];
    v12 = v19;

    if (a4 && (v11 & 1) == 0)
    {
      v13 = [v12 applicationCurrentlyLimited];
      v14 = MEMORY[0x277CD4578];
      if (!v13)
      {
        v14 = MEMORY[0x277CD4588];
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMAssistantMessageHandlerErrorDomain" code:*v14 userInfo:0];
      *a4 = v11 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v15 = _IMAssistantCoreGeneralSignpostLogHandle();
  v16 = v15;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v16, OS_SIGNPOST_INTERVAL_END, v7, "screentimeAllowedToShowConversationWithHandleIDs", &unk_2547CAD0B, v18, 2u);
  }

  return v11;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547BBB8C;
  block[3] = &unk_279786A78;
  block[4] = a1;
  if (qword_28118F640 != -1)
  {
    dispatch_once(&qword_28118F640, block);
  }

  v2 = qword_28118F630;

  return v2;
}

@end