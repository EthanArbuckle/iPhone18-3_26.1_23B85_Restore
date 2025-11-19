@interface CNDSIMCardMonitor
+ (id)continuousPhoneNumberObservableWithCoreTelephonyClient:(id)a3 services:(id)a4 serverConnection:(__CTServerConnection *)a5;
+ (id)infoWithCompletion:(id)a3;
+ (id)os_log;
+ (id)phoneNumberChangedObservableWithCoreTelephonyServices:(id)a3 serverConnection:(__CTServerConnection *)a4;
+ (id)phoneNumberObservableWithCoreTelephonyClient:(id)a3;
+ (void)infoWithClient:(id)a3 completion:(id)a4;
- (CNDSIMCardMonitor)init;
- (CNDSIMCardMonitor)initWithCoreTelephonyClient:(id)a3 services:(id)a4;
- (id)addInfoChangeHandler:(id)a3;
- (void)configureStateIfNecessary;
- (void)dealloc;
- (void)nts_configureConnectionIfNecessary;
- (void)nts_configureSubjectIfNecessary;
- (void)setServerConnection:(__CTServerConnection *)a3;
@end

@implementation CNDSIMCardMonitor

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[CNDSIMCardMonitor os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

uint64_t __27__CNDSIMCardMonitor_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contacts.donation", "sim");

  return MEMORY[0x2821F96F8]();
}

- (CNDSIMCardMonitor)init
{
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v4 = objc_alloc_init(CNDCoreTelephonyServices);
  v5 = [(CNDSIMCardMonitor *)self initWithCoreTelephonyClient:v3 services:v4];

  return v5;
}

- (CNDSIMCardMonitor)initWithCoreTelephonyClient:(id)a3 services:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_0 != -1)
  {
    [CNDSIMCardMonitor initWithCoreTelephonyClient:services:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
  {
    [CNDSIMCardMonitor initWithCoreTelephonyClient:v9 services:?];
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_0 != -1)
  {
    [CNDSIMCardMonitor initWithCoreTelephonyClient:services:];
  }

  v10 = CNGuardOSLog_cn_once_object_0_0;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
  {
    [CNDSIMCardMonitor initWithCoreTelephonyClient:v10 services:?];
  }

LABEL_10:
  v19.receiver = self;
  v19.super_class = CNDSIMCardMonitor;
  v11 = [(CNDSIMCardMonitor *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_coreTelephonyClient, a3);
    objc_storeStrong(&v12->_coreTelephonyServices, a4);
    v13 = objc_alloc(MEMORY[0x277CFBE98]);
    v14 = [MEMORY[0x277CFBEB0] defaultProvider];
    v15 = [v13 initWithCapacity:1 schedulerProvider:v14];
    subject = v12->_subject;
    v12->_subject = v15;

    v17 = v12;
  }

  return v12;
}

- (void)dealloc
{
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    CFRelease(serverConnection);
  }

  [(CNCancelable *)self->_subjectToken cancel];
  v4.receiver = self;
  v4.super_class = CNDSIMCardMonitor;
  [(CNDSIMCardMonitor *)&v4 dealloc];
}

- (void)setServerConnection:(__CTServerConnection *)a3
{
  if (self->_serverConnection != a3)
  {
    if (a3)
    {
      v4 = CFRetain(a3);
    }

    else
    {
      v4 = 0;
    }

    self->_serverConnection = v4;
  }
}

- (id)addInfoChangeHandler:(id)a3
{
  v4 = a3;
  [(CNDSIMCardMonitor *)self configureStateIfNecessary];
  v5 = [(CNDSIMCardMonitor *)self subject];
  v6 = [MEMORY[0x277CFBE68] observerWithResultBlock:v4];

  v7 = [v5 subscribe:v6];

  return v7;
}

- (void)configureStateIfNecessary
{
  obj = self;
  objc_sync_enter(obj);
  [(CNDSIMCardMonitor *)obj nts_configureConnectionIfNecessary];
  [(CNDSIMCardMonitor *)obj nts_configureSubjectIfNecessary];
  objc_sync_exit(obj);
}

- (void)nts_configureConnectionIfNecessary
{
  if (!self->_serverConnection)
  {
    v4 = dispatch_queue_create("com.apple.contacts.ContactsDonation.CNDSIMCardMonitor", 0);
    [(CNDSIMCardMonitor *)self setServerConnectionQueue:v4];

    v7 = [(CNDSIMCardMonitor *)self coreTelephonyServices];
    v5 = *MEMORY[0x277CBECE8];
    v6 = [(CNDSIMCardMonitor *)self serverConnectionQueue];
    -[CNDSIMCardMonitor setServerConnection:](self, "setServerConnection:", [v7 _CTServerConnectionCreateOnTargetQueue:v5 :@"com.apple.contacts.ContactsDonation.CNDSIMCardMonitor" :v6 :0]);
  }
}

- (void)nts_configureSubjectIfNecessary
{
  v3 = [(CNDSIMCardMonitor *)self subjectToken];

  if (!v3)
  {
    v4 = objc_opt_class();
    v5 = [(CNDSIMCardMonitor *)self coreTelephonyClient];
    v6 = [(CNDSIMCardMonitor *)self coreTelephonyServices];
    v9 = [v4 continuousPhoneNumberObservableWithCoreTelephonyClient:v5 services:v6 serverConnection:{-[CNDSIMCardMonitor serverConnection](self, "serverConnection")}];

    v7 = [(CNDSIMCardMonitor *)self subject];
    v8 = [v9 subscribe:v7];
    [(CNDSIMCardMonitor *)self setSubjectToken:v8];
  }
}

+ (id)continuousPhoneNumberObservableWithCoreTelephonyClient:(id)a3 services:(id)a4 serverConnection:(__CTServerConnection *)a5
{
  v8 = a3;
  v9 = [a1 phoneNumberChangedObservableWithCoreTelephonyServices:a4 serverConnection:a5];
  v10 = [v9 startWith:&unk_2838DF3C0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__CNDSIMCardMonitor_continuousPhoneNumberObservableWithCoreTelephonyClient_services_serverConnection___block_invoke;
  v14[3] = &unk_278569948;
  v15 = v8;
  v16 = a1;
  v11 = v8;
  v12 = [v10 concatMap:v14];

  return v12;
}

+ (id)phoneNumberChangedObservableWithCoreTelephonyServices:(id)a3 serverConnection:(__CTServerConnection *)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CFBE60];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__CNDSIMCardMonitor_phoneNumberChangedObservableWithCoreTelephonyServices_serverConnection___block_invoke;
  v10[3] = &unk_2785699C0;
  v11 = v5;
  v12 = a4;
  v7 = v5;
  v8 = [v6 observableWithBlock:v10];

  return v8;
}

id __92__CNDSIMCardMonitor_phoneNumberChangedObservableWithCoreTelephonyServices_serverConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *MEMORY[0x277CC4208];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__CNDSIMCardMonitor_phoneNumberChangedObservableWithCoreTelephonyServices_serverConnection___block_invoke_2;
  v16[3] = &unk_278569970;
  v17 = v3;
  v7 = v3;
  [v4 _CTServerConnectionRegisterBlockForNotification:v5 :v6 :v16];
  v8 = MEMORY[0x277CFBDC8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__CNDSIMCardMonitor_phoneNumberChangedObservableWithCoreTelephonyServices_serverConnection___block_invoke_3;
  v13[3] = &unk_278569998;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v11 = [v8 tokenWithCancelationBlock:v13];

  return v11;
}

+ (id)phoneNumberObservableWithCoreTelephonyClient:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE60];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CNDSIMCardMonitor_phoneNumberObservableWithCoreTelephonyClient___block_invoke;
  v9[3] = &unk_2785699C0;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __66__CNDSIMCardMonitor_phoneNumberObservableWithCoreTelephonyClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__CNDSIMCardMonitor_phoneNumberObservableWithCoreTelephonyClient___block_invoke_2;
  v13[3] = &unk_278569A10;
  v8 = v4;
  v14 = v8;
  v15 = v3;
  v9 = v3;
  [v6 infoWithClient:v5 completion:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __66__CNDSIMCardMonitor_phoneNumberObservableWithCoreTelephonyClient___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__CNDSIMCardMonitor_phoneNumberObservableWithCoreTelephonyClient___block_invoke_3;
  v10[3] = &unk_2785699E8;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  [v7 performBlock:v10];
}

+ (id)infoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v6 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__CNDSIMCardMonitor_infoWithCompletion___block_invoke;
  v12[3] = &unk_278569A60;
  v7 = v6;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  [a1 infoWithClient:v5 completion:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __40__CNDSIMCardMonitor_infoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__CNDSIMCardMonitor_infoWithCompletion___block_invoke_2;
  v11[3] = &unk_278569A38;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 performBlock:v11];
}

+ (void)infoWithClient:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke;
  v10[3] = &unk_278569AB0;
  v12 = v7;
  v13 = a1;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [v8 getSubscriptionInfo:v10];
}

void __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 subscriptionsInUse];
  if (v6)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_21;
    v23 = &unk_278569A88;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v24 = v7;
    v25 = v8;
    v9 = [v6 _cn_compactMap:&v20];
    v10 = [*(a1 + 48) os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 count];
      *buf = 134217984;
      v27 = v11;
      _os_log_impl(&dword_2258E5000, v10, OS_LOG_TYPE_INFO, "Read %lu values from SIM", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = [*(a1 + 48) os_log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_cold_1(v5, v12, v13, v14, v15, v16, v17, v18);
    }

    (*(*(a1 + 40) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

CNDSIMCardItem *__47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSimHidden] & 1) != 0 || (objc_msgSend(v3, "isSimDataOnly"))
  {
    v4 = 0;
    goto LABEL_21;
  }

  v5 = *(a1 + 32);
  v34 = 0;
  v6 = [v5 getSimLabel:v3 error:&v34];
  v7 = v34;
  if (!v6)
  {
    v11 = [*(a1 + 40) os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_21_cold_3(v7, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_10;
  }

  v8 = *MEMORY[0x277CFBD30];
  v9 = [v6 unique_id];
  v10 = (*(v8 + 16))(v8, v9);

  if (!v10)
  {
    v18 = *(a1 + 32);
    v33 = 0;
    v19 = [v18 getPhoneNumber:v3 error:&v33];
    v11 = v33;
    if (v19)
    {
      v20 = [v19 number];
      v21 = (*(v8 + 16))(v8, v20);

      if (!v21)
      {
        v29 = [CNDSIMCardItem alloc];
        v22 = [v6 unique_id];
        v30 = [v19 number];
        v4 = [(CNDSIMCardItem *)v29 initWithIdentifier:v22 value:v30];

        goto LABEL_19;
      }

      v22 = [*(a1 + 40) os_log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v32[0] = 0;
        _os_log_impl(&dword_2258E5000, v22, OS_LOG_TYPE_INFO, "No phone number for passed in subscription, skipping.", v32, 2u);
      }
    }

    else
    {
      v22 = [*(a1 + 40) os_log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_21_cold_1(v7, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    v4 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v11 = [*(a1 + 40) os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_21_cold_2(v11);
  }

LABEL_10:
  v4 = 0;
LABEL_20:

LABEL_21:

  return v4;
}

void __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2258E5000, a2, a3, "Could not get subscription information: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_21_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2258E5000, a2, a3, "Skipping subscription because there was an error fetching the phone number: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __47__CNDSIMCardMonitor_infoWithClient_completion___block_invoke_21_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2258E5000, a2, a3, "Skipping subscription because there was an error fetching the label: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end