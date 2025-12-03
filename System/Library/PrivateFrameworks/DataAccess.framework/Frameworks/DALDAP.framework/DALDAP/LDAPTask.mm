@interface LDAPTask
- (DATaskManager)taskManager;
- (id)delegate;
- (int64_t)taskStatusForError:(id)error;
- (void)_performQuery;
- (void)cancelTaskWithReason:(int)reason underlyingError:(id)error;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)initializeConnection;
- (void)performTask;
- (void)reportStatusWithError:(id)error;
@end

@implementation LDAPTask

- (void)dealloc
{
  if (self->_ldConnection)
  {
    ldap_connection_disconnect();
  }

  v3.receiver = self;
  v3.super_class = LDAPTask;
  [(LDAPTask *)&v3 dealloc];
}

- (void)disable
{
  v4.receiver = self;
  v4.super_class = LDAPTask;
  [(DADisableableObject *)&v4 disable];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  [(LDAPTask *)self finishWithError:v3];
}

- (void)performTask
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"LDAPTask.m" lineNumber:30 description:@"Must be implemented in subclass"];
}

- (void)_performQuery
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"LDAPTask.m" lineNumber:34 description:@"Must be implemented in subclass"];
}

- (void)reportStatusWithError:(id)error
{
  taskManager = [(LDAPTask *)self taskManager];
  account = [taskManager account];
  statusReport = [account statusReport];
  v7 = statusReport;
  if (error)
  {
    [statusReport noteFailedNetworkRequest];
  }

  else
  {
    [statusReport noteSuccessfulRequestWithNumDownloadedElements:{-[LDAPTask numDownloadedElements](self, "numDownloadedElements")}];
  }
}

- (void)finishWithError:(id)error
{
  [(LDAPTask *)self reportStatusWithError:error];
  taskManager = [(LDAPTask *)self taskManager];
  [taskManager taskDidFinish:self];
}

- (void)cancelTaskWithReason:(int)reason underlyingError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_24857C000, v6, v7, "Task %@ canceled.", buf, 0xCu);
  }

  if (errorCopy)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LDAPTask taskStatusForError:](self, "taskStatusForError:", errorCopy, *MEMORY[0x277CCA7E8], *MEMORY[0x277D038E8], errorCopy)}];
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:2];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:v9];
  [(LDAPTask *)self finishWithError:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)taskStatusForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:*MEMORY[0x277D038E0]];

    if (v6)
    {
      code = [v4 code];
    }

    else
    {
      code = 0;
    }

    domain2 = [v4 domain];
    v9 = [domain2 isEqualToString:*MEMORY[0x277D03700]];

    if (v9 && [v4 code] == 102)
    {
      code = 79;
    }
  }

  else
  {
    code = 2;
  }

  return code;
}

- (void)initializeConnection
{
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_24857C000, v3, v5, "Initializing the server", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(LDAPTask *)self setDateConnectionWentOut:date];

  taskManager = [(LDAPTask *)self taskManager];
  account = [taskManager account];
  v9 = [account connectionURLWithSSL:0];

  if ([v9 length])
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  taskManager2 = [(LDAPTask *)self taskManager];
  account2 = [taskManager2 account];
  v13 = [account2 connectionURLWithSSL:1];

  if ([v13 length])
  {
    v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
  }

  else
  {
    v14 = 0;
  }

  taskManager3 = [(LDAPTask *)self taskManager];
  user = [taskManager3 user];

  taskManager4 = [(LDAPTask *)self taskManager];
  password = [taskManager4 password];

  if (!v10 || !v14)
  {
    goto LABEL_20;
  }

  if ([user length] && !objc_msgSend(password, "length"))
  {
    v29 = DALoggingwithCategory();
    v30 = *(v4 + 3);
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 0;
      _os_log_impl(&dword_24857C000, v29, v30, "Bad account juju: we've got a username, but no password, faking out invalid credentials", buf, 2u);
    }

LABEL_20:
    v31 = [(LDAPTask *)self daLevelErrorForLDAPError:10001];
    [(LDAPTask *)self finishWithError:v31];

    goto LABEL_21;
  }

  v32 = v9;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __32__LDAPTask_initializeConnection__block_invoke;
  v40[3] = &unk_278F1FA08;
  v40[4] = self;
  v41 = user;
  v42 = password;
  v19 = MEMORY[0x24C1D1EE0](v40);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __32__LDAPTask_initializeConnection__block_invoke_2;
  v39[3] = &unk_278F1FA30;
  v39[4] = self;
  v20 = MEMORY[0x24C1D1EE0](v39);
  taskManager5 = [(LDAPTask *)self taskManager];
  useSSL = [taskManager5 useSSL];

  if (useSSL)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __32__LDAPTask_initializeConnection__block_invoke_3;
    v35[3] = &unk_278F1FAD0;
    v23 = &v37;
    v35[4] = self;
    v37 = v20;
    v24 = v19;
    v38 = v24;
    v36 = v14;
    v25 = v19[2];
    v26 = v20;
    v25(v24, v10, 1, v35);
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __32__LDAPTask_initializeConnection__block_invoke_17;
    v33[3] = &unk_278F1FB20;
    v23 = &v34;
    v33[4] = self;
    v34 = v20;
    v27 = v19[2];
    v28 = v20;
    v27(v19, v10, 0, v33);
  }

  v9 = v32;
LABEL_21:
}

void __32__LDAPTask_initializeConnection__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = ldap_connection_create_with_url();
  [*(a1 + 32) setLdConnection:v9];

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [*(a1 + 32) ldConnection];
    *buf = 134218242;
    v34 = v12;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_24857C000, v10, v11, "Connection at %p created for url %@", buf, 0x16u);
  }

  if ([*(a1 + 40) length])
  {
    v13 = *MEMORY[0x277CEE080];
    v31[0] = *MEMORY[0x277CEE088];
    v31[1] = v13;
    v14 = *(a1 + 48);
    v32[0] = *(a1 + 40);
    v32[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v16 = [*(a1 + 32) ldConnection];
    v17 = *MEMORY[0x277CEE050];
    ldap_connection_add_credential();

    v18 = [*(a1 + 32) ldConnection];
    v19 = *MEMORY[0x277CEE058];
    ldap_connection_add_credential();

    v20 = [*(a1 + 32) ldConnection];
    v21 = *MEMORY[0x277CEE068];
    ldap_connection_add_credential();
  }

  if (a3)
  {
    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_24857C000, v22, v11, "Account requires LDAP+TLS", buf, 2u);
    }

    v23 = [*(a1 + 32) ldConnection];
    [MEMORY[0x277D03910] ignoreBadLDAPCerts];
    ldap_connection_set_tls();

    v24 = DALoggingwithCategory();
    if (os_log_type_enabled(v24, v11))
    {
      v25 = [*(a1 + 32) ldConnection];
      *buf = 134217984;
      v34 = v25;
      _os_log_impl(&dword_24857C000, v24, v11, "Set TLS requirement for ldConnection %p", buf, 0xCu);
    }
  }

  v26 = [*(a1 + 32) ldConnection];
  [*MEMORY[0x277D03708] UTF8String];
  ldap_connection_set_source_application_by_bundle();

  v27 = [*(a1 + 32) ldConnection];
  v30 = v8;
  v28 = v8;
  ldap_connection_start();

  v29 = *MEMORY[0x277D85DE8];
}

void __32__LDAPTask_initializeConnection__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [v3 finishWithError:v4];
  }

  else
  {

    [v3 _performQuery];
  }
}

void __32__LDAPTask_initializeConnection__block_invoke_3(id *a1, char a2, int a3)
{
  v6 = a1[4];
  objc_sync_enter(v6);
  v7 = [a1[4] isFinished];
  objc_sync_exit(v6);

  if ((v7 & 1) == 0)
  {
    v8 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__LDAPTask_initializeConnection__block_invoke_4;
    block[3] = &unk_278F1FAA8;
    v19 = a2;
    v9 = a1[6];
    v14 = a1[4];
    v10 = a1[7];
    v11 = a1[5];
    *&v12 = v14;
    *(&v12 + 1) = v11;
    *&v13 = v9;
    *(&v13 + 1) = v10;
    v17 = v13;
    v16 = v12;
    v18 = a3;
    dispatch_async(v8, block);
  }
}

void __32__LDAPTask_initializeConnection__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 68) == 1)
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) ldConnection];

    if (v4)
    {
      v5 = [*(a1 + 32) ldConnection];
      ldap_connection_disconnect();

      [*(a1 + 32) setLdConnection:0];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__LDAPTask_initializeConnection__block_invoke_5;
    v8[3] = &unk_278F1FA80;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v7 = *(a1 + 56);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    (*(v7 + 16))(v7, v6, 0, v8);
  }
}

void __32__LDAPTask_initializeConnection__block_invoke_5(uint64_t a1, char a2, int a3)
{
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = [*(a1 + 32) isFinished];
  objc_sync_exit(v6);

  if ((v7 & 1) == 0)
  {
    v8 = dataaccess_get_global_queue();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__LDAPTask_initializeConnection__block_invoke_6;
    v10[3] = &unk_278F1FA58;
    v14 = a2;
    v9 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = a3;
    v10[4] = *(a1 + 32);
    v11 = v9;
    dispatch_async(v8, v10);
  }
}

void __32__LDAPTask_initializeConnection__block_invoke_6(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 52);
      v12[0] = 67109376;
      v12[1] = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_24857C000, v5, v6, "Couldn't connect to LDAP+TLS (error %d) or LDAPS (error %d)", v12, 0xEu);
    }

    v9 = *(a1 + 32);
    v10 = [v9 daLevelErrorForLDAPError:*(a1 + 52)];
    [v9 finishWithError:v10];

    v11 = *MEMORY[0x277D85DE8];
  }
}

void __32__LDAPTask_initializeConnection__block_invoke_17(uint64_t a1, char a2, int a3)
{
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = [*(a1 + 32) isFinished];
  objc_sync_exit(v6);

  if ((v7 & 1) == 0)
  {
    v8 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__LDAPTask_initializeConnection__block_invoke_2_18;
    block[3] = &unk_278F1FAF8;
    v13 = a2;
    v9 = *(a1 + 40);
    v12 = a3;
    block[4] = *(a1 + 32);
    v11 = v9;
    dispatch_async(v8, block);
  }
}

void __32__LDAPTask_initializeConnection__block_invoke_2_18(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 52) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(a1 + 48);
      v11[0] = 67109120;
      v11[1] = v7;
      _os_log_impl(&dword_24857C000, v5, v6, "Couldn't connect LDAP, error %d", v11, 8u);
    }

    v8 = *(a1 + 32);
    v9 = [v8 daLevelErrorForLDAPError:*(a1 + 48)];
    [v8 finishWithError:v9];

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (DATaskManager)taskManager
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end