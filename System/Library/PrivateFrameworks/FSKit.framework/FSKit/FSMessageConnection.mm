@interface FSMessageConnection
- (FSMessageConnection)initWithCoder:(id)a3;
- (FSMessageConnection)initWithEndpoint:(id)a3;
- (id)localizedMessage:(id)a3 table:(id)a4 bundle:(id)a5;
- (id)localizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 arguments:(char *)a6;
- (id)localizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 array:(id)a6;
- (void)completed:(id)a3 replyHandler:(id)a4;
- (void)completedLocked:(id)a3 replyHandler:(id)a4;
- (void)connect:(id)a3;
- (void)didCompleteWithError:(id)a3 completionHandler:(id)a4;
- (void)didStart;
- (void)encodeWithCoder:(id)a3;
- (void)getLocalizationSetup:(id)a3;
- (void)logLocalizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 arguments:(char *)a6;
- (void)logLocalizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 array:(id)a6;
- (void)logMessage:(id)a3;
- (void)prompt:(id)a3 replyHandler:(id)a4;
- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4;
@end

@implementation FSMessageConnection

- (void)logMessage:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSXPCConnection *)v4->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  [v5 logMessage:v6];

  objc_sync_exit(v4);
}

void __34__FSMessageConnection_logMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v2);
  }
}

- (void)didCompleteWithError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__FSMessageConnection_didCompleteWithError_completionHandler___block_invoke;
  v8[3] = &unk_278FED5F0;
  v9 = v6;
  v7 = v6;
  [(FSMessageConnection *)self completed:a3 replyHandler:v8];
}

uint64_t __62__FSMessageConnection_didCompleteWithError_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)getLocalizationSetup:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__FSMessageConnection_getLocalizationSetup___block_invoke;
  v7[3] = &unk_278FED618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__FSMessageConnection_getLocalizationSetup___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__FSMessageConnection_getLocalizationSetup___block_invoke_2;
    v6[3] = &unk_278FECE20;
    v7 = *(a1 + 40);
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
    [v3 getLocalizationSetup:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = fs_errorForPOSIXError(57);
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

void __44__FSMessageConnection_getLocalizationSetup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [v5 encodeObject:self->_endpoint forKey:@"FSMessageConnection.Endpoint"];
}

- (FSMessageConnection)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v8);
  }

  if ([v4 containsValueForKey:@"FSMessageConnection.Endpoint"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSMessageConnection.Endpoint"];
    self = [(FSMessageConnection *)self initWithEndpoint:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)connect:(id)a3
{
  v4 = a3;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FSMessageConnection(Private) *)v5 connect:v6, v7, v8, v9, v10, v11, v12];
  }

  if (self->_connection)
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(FSMessageConnection(Private) *)v13 connect:v14, v15, v16, v17, v18, v19, v20];
    }

    v21 = fs_errorForPOSIXError(17);
    v4[2](v4, v21);
  }

  else
  {
    objc_initWeak(&location, self);
    v22 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:self->_endpoint];
    connection = self->_connection;
    self->_connection = v22;

    v24 = +[FSKitConstants FSTaskOperations];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v24];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__FSMessageConnection_Private__connect___block_invoke;
    aBlock[3] = &unk_278FECDB8;
    objc_copyWeak(&v56, &location);
    v25 = _Block_copy(aBlock);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v25];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v25];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v56);

    objc_destroyWeak(&location);
    location = 0;
    p_location = &location;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__3;
    v53 = __Block_byref_object_dispose__3;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__3;
    v47 = __Block_byref_object_dispose__3;
    v48 = 0;
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __40__FSMessageConnection_Private__connect___block_invoke_78;
    v39[3] = &unk_278FED640;
    v41 = &location;
    v42 = &v43;
    v27 = v26;
    v40 = v27;
    [(FSMessageConnection *)self getLocalizationSetup:v39];
    v28 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v27, v28))
    {
      v29 = fskit_std_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [FSMessageConnection(Private) connect:v29];
      }

      v30 = fs_errorForPOSIXError(57);
      v4[2](v4, v30);
    }

    else
    {
      objc_storeStrong(&self->_locale, p_location[5]);
      objc_storeStrong(&self->_preferredLanguages, v44[5]);
      v31 = fskit_std_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [(FSMessageConnection(Private) *)v31 connect:v32, v33, v34, v35, v36, v37, v38];
      }

      v4[2](v4, 0);
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&location, 8);
  }
}

void __40__FSMessageConnection_Private__connect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__FSMessageConnection_Private__connect___block_invoke_2;
    block[3] = &unk_278FED278;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

void __40__FSMessageConnection_Private__connect___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fs_errorForCocoaError(4097);
  [v2 completedLocked:v3 replyHandler:&__block_literal_global_77];

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

void __40__FSMessageConnection_Private__connect___block_invoke_78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __40__FSMessageConnection_Private__connect___block_invoke_78_cold_1(v10);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)logLocalizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 array:(id)a6
{
  v7 = [(FSMessageConnection *)self localizedMessage:a3 table:a4 bundle:a5 array:a6];
  [(FSMessageConnection *)self logMessage:v7];
}

- (void)logLocalizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 arguments:(char *)a6
{
  v7 = [(FSMessageConnection *)self localizedMessage:a3 table:a4 bundle:a5 arguments:a6];
  [(FSMessageConnection *)self logMessage:v7];
}

- (void)completedLocked:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  hasCompleted = self->_hasCompleted;
  v9 = _Block_copy(self->_earlyCompletedBlock);
  earlyCompletedBlock = self->_earlyCompletedBlock;
  self->_earlyCompletedBlock = 0;

  v11 = _Block_copy(self->_lateCompletedBlock);
  lateCompletedBlock = self->_lateCompletedBlock;
  self->_lateCompletedBlock = 0;

  if (!self->_hasCompleted)
  {
    self->_hasCompleted = 1;
  }

  if (hasCompleted)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    if (v9)
    {
      v9[2](v9, v6);
    }

    connection = self->_connection;
    if (connection)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke;
      v21[3] = &unk_278FECE20;
      v14 = v7;
      v22 = v14;
      v15 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v21];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke_80;
      v17[3] = &unk_278FED668;
      v19 = v14;
      v20 = v11;
      v18 = v6;
      [v15 completed:v18 replyHandler:v17];
    }

    else
    {
      v16 = fs_errorForPOSIXError(57);
      (*(v7 + 2))(v7, 0, v16);
    }
  }
}

void __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke_80(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 domain];
  if (![v4 isEqualToString:@"FSKitErrorDomain"])
  {

    goto LABEL_5;
  }

  v5 = [v7 code];

  if (v5 != 27503)
  {
LABEL_5:
    (*(a1[5] + 16))();
  }

  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, a1[4]);
  }
}

- (void)completed:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FSMessageConnection_Private__completed_replyHandler___block_invoke;
  block[3] = &unk_278FED690;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)prompt:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke;
  block[3] = &unk_278FED6B8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke_2;
    v6[3] = &unk_278FECE20;
    v7 = *(a1 + 48);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
    [v3 prompt:*(a1 + 40) replyHandler:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = fs_errorForPOSIXError(57);
    (*(v4 + 16))(v4, 0, v5);
  }
}

void __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke;
  block[3] = &unk_278FED6B8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke_2;
    v6[3] = &unk_278FECE20;
    v7 = *(a1 + 48);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
    [v3 promptTrueFalse:*(a1 + 40) replyHandler:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = fs_errorForPOSIXError(57);
    (*(v4 + 16))(v4, 0, v5);
  }
}

void __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)localizedMessage:(id)a3 table:(id)a4 bundle:(id)a5
{
  v5 = [(FSMessageConnection *)self localizedMessage:a3 table:a4 bundle:a5 arguments:&v8];

  return v5;
}

- (id)localizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 arguments:(char *)a6
{
  v10 = a3;
  locale = self->_locale;
  v12 = a5;
  v13 = a4;
  v14 = [(NSLocale *)locale languageCode];
  v15 = [v12 localizedStringForKey:v10 value:0 table:v13 localization:v14];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v15 locale:self->_locale arguments:a6];
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSMessageConnection(Private) localizedMessage:table:bundle:arguments:];
    }

    v16 = 0;
  }

  return v16;
}

- (FSMessageConnection)initWithEndpoint:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = FSMessageConnection;
  v6 = [(FSMessageConnection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    connection = v7->_connection;
    v7->_connection = 0;

    v7->_hasCompleted = 0;
    v9 = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v7->_locale;
    v7->_locale = v9;

    v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
    preferredLanguages = v7->_preferredLanguages;
    v7->_preferredLanguages = v11;

    receiver = v7->_receiver;
    v7->_receiver = 0;

    v14 = dispatch_queue_create("com.apple.fskit.fsmessageconnection", 0);
    queue = v7->_queue;
    v7->_queue = v14;
  }

  return v7;
}

- (void)didStart
{
  receiver = self->_receiver;
  if (receiver)
  {
    [(FSMessageReceiver *)receiver didStart];
  }
}

- (id)localizedMessage:(id)a3 table:(id)a4 bundle:(id)a5 array:(id)a6
{
  locale = self->_locale;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(NSLocale *)locale languageCode];
  v16 = [v12 localizedStringForKey:v14 value:0 table:v13 localization:v15];

  v17 = [FSKitUtils stringWithFormatString:v16 locale:self->_locale arguments:v11];

  return v17;
}

void __34__FSMessageConnection_logMessage___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __40__FSMessageConnection_Private__connect___block_invoke_78_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end