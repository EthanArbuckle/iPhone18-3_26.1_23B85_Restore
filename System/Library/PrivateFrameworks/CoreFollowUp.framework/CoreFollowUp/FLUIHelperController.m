@interface FLUIHelperController
+ (id)sharedInstance;
- (FLUIHelperController)init;
- (id)connection;
- (void)showHSA2PasswordChangeForAppleID:(id)a3 completion:(id)a4;
- (void)showUIForHSA2LoginCode:(id)a3 notification:(id)a4 completion:(id)a5;
- (void)showUIForHSA2LoginNotification:(id)a3 completion:(id)a4;
- (void)tearDownUIForHSA2LoginNotificationWithPushMessageID:(id)a3;
@end

@implementation FLUIHelperController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FLUIHelperController sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __38__FLUIHelperController_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(FLUIHelperController);

  return MEMORY[0x2821F96F8]();
}

- (FLUIHelperController)init
{
  v6.receiver = self;
  v6.super_class = FLUIHelperController;
  v2 = [(FLUIHelperController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connLock = v2->_connLock;
    v2->_connLock = v3;
  }

  return v2;
}

- (void)showUIForHSA2LoginNotification:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FLUIHelperController *)self connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke;
  v15[3] = &unk_278852F30;
  v15[4] = self;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v15];

  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Showing password change", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_3;
  v12[3] = &unk_278852AA8;
  v13 = v6;
  v11 = v6;
  [v9 showHSA2LoginNotification:v7 completion:v12];
}

void __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_cold_1(a1);
  }
}

void __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Notification completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)showHSA2PasswordChangeForAppleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FLUIHelperController *)self connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke;
  v15[3] = &unk_278852F30;
  v15[4] = self;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v15];

  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Showing password change", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_5;
  v12[3] = &unk_278852AA8;
  v13 = v6;
  v11 = v6;
  [v9 showHSA2ChangePasswordForAppleID:v7 completion:v12];
}

void __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_cold_1(a1);
  }
}

void __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Notification completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)showUIForHSA2LoginCode:(id)a3 notification:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FLUIHelperController *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke;
  v18[3] = &unk_278852F30;
  v18[4] = self;
  v12 = [v11 remoteObjectProxyWithErrorHandler:v18];

  v13 = _FLLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v13, OS_LOG_TYPE_DEFAULT, "Showing login code", buf, 2u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_6;
  v15[3] = &unk_278852AA8;
  v16 = v8;
  v14 = v8;
  [v12 showHSA2LoginCode:v10 withNotification:v9 completion:v15];
}

void __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_cold_1(a1);
  }
}

void __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Notification completed", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)tearDownUIForHSA2LoginNotificationWithPushMessageID:(id)a3
{
  v4 = a3;
  v5 = [(FLUIHelperController *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke;
  v7[3] = &unk_278852F30;
  v7[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v7];

  [v6 tearDownUIForHSA2LoginNotificationWithPushMessageID:v4];
}

void __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke_cold_1(a1);
  }
}

- (id)connection
{
  [(NSLock *)self->_connLock lock];
  conn = self->_conn;
  if (!conn)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corefollowup.uihelper" options:0];
    v5 = self->_conn;
    self->_conn = v4;

    v6 = self->_conn;
    v7 = [(FLUIHelperController *)self remoteObjectInterface];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__2;
    v14[4] = __Block_byref_object_dispose__2;
    v15 = self;
    v8 = self->_conn;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__FLUIHelperController_connection__block_invoke;
    v13[3] = &unk_2788528D0;
    v13[4] = v14;
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_conn;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__FLUIHelperController_connection__block_invoke_9;
    v12[3] = &unk_2788528D0;
    v12[4] = v14;
    [(NSXPCConnection *)v9 setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_conn resume];
    _Block_object_dispose(v14, 8);

    conn = self->_conn;
  }

  v10 = conn;
  [(NSLock *)self->_connLock unlock];

  return v10;
}

uint64_t __34__FLUIHelperController_connection__block_invoke(uint64_t result)
{
  v1 = result + 32;
  if (*(*(*(result + 32) + 8) + 40))
  {
    v2 = _FLLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__FLDaemon_connection__block_invoke_cold_1(v1);
    }

    [*(*(*(*v1 + 8) + 40) + 8) lock];
    v3 = *(*(*v1 + 8) + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    return [*(*(*(*v1 + 8) + 40) + 8) unlock];
  }

  return result;
}

uint64_t __34__FLUIHelperController_connection__block_invoke_9(uint64_t result)
{
  v1 = result + 32;
  if (*(*(*(result + 32) + 8) + 40))
  {
    v2 = _FLLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__FLDaemon_connection__block_invoke_6_cold_1(v1);
    }

    [*(*(*(*v1 + 8) + 40) + 8) lock];
    v3 = *(*(*v1 + 8) + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    return [*(*(*(*v1 + 8) + 40) + 8) unlock];
  }

  return result;
}

void __66__FLUIHelperController_showUIForHSA2LoginNotification_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v1, v2, "%@: Error from UI Helper process while displaying HSA2 login notification - %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __68__FLUIHelperController_showHSA2PasswordChangeForAppleID_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v1, v2, "%@: Error from UI Helper process while displaying HSA2 login password change - %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __71__FLUIHelperController_showUIForHSA2LoginCode_notification_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v1, v2, "%@: Error from UI Helper process while displaying HSA2 login code - %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __76__FLUIHelperController_tearDownUIForHSA2LoginNotificationWithPushMessageID___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_22E696000, v1, v2, "%@: Error from UI Helper process while tearing down HSA2 login notification - %@");
  v3 = *MEMORY[0x277D85DE8];
}

@end