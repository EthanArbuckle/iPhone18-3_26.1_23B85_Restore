@interface FAInviteInPersonActivity
- (FAInviteInPersonActivity)init;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)_handleRUIDismiss:(id)dismiss;
- (void)_notifyCompletionWithSuccess:(BOOL)success userInfo:(id)info;
- (void)dealloc;
- (void)performActivity;
@end

@implementation FAInviteInPersonActivity

- (FAInviteInPersonActivity)init
{
  v5.receiver = self;
  v5.super_class = FAInviteInPersonActivity;
  v2 = [(UIActivity *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleRUIDismiss_ name:*MEMORY[0x277D080D0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FAInviteInPersonActivity;
  [(FAInviteInPersonActivity *)&v4 dealloc];
}

- (id)activityTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INVITE_IN_PERSON" value:&stru_282D9AA68 table:@"Localizable"];

  return v3;
}

- (void)performActivity
{
  v3 = [[FACircleContext alloc] initWithEventType:@"FACircleEventTypeAddMemberInline"];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = objc_alloc_init(FACircleStateController);
  [v8[5] setPresentationType:1];
  presentingViewController = [(FAInviteInPersonActivity *)self presentingViewController];
  [v8[5] setPresenter:presentingViewController];

  v5 = v8[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__FAInviteInPersonActivity_performActivity__block_invoke;
  v6[3] = &unk_2782F4198;
  v6[4] = self;
  v6[5] = &v7;
  [v5 performWithContext:v3 completion:v6];
  _Block_object_dispose(&v7, 8);
}

void __43__FAInviteInPersonActivity_performActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __43__FAInviteInPersonActivity_performActivity__block_invoke_cold_1(v3, v6);
  }

  v7 = [v3 userInfo];
  v8 = *(a1 + 32);
  v9 = *(v8 + 144);
  *(v8 + 144) = v7;

  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != 1)
  {
    v12 = *(a1 + 32);
    v13 = [v3 success];
    v14 = [v3 userInfo];
    [v12 _notifyCompletionWithSuccess:v13 userInfo:v14];
  }
}

- (void)_notifyCompletionWithSuccess:(BOOL)success userInfo:(id)info
{
  infoCopy = info;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__FAInviteInPersonActivity__notifyCompletionWithSuccess_userInfo___block_invoke;
  block[3] = &unk_2782F4148;
  block[4] = self;
  v9 = infoCopy;
  successCopy = success;
  v7 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __66__FAInviteInPersonActivity__notifyCompletionWithSuccess_userInfo___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 activityDidFinish:v3];
}

- (void)_handleRUIDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    userInfo = [dismissCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"success"];

    if ([v8 length])
    {
      v9 = _FALogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(FAInviteInPersonActivity *)v8 _handleRUIDismiss:v9];
      }

      bOOLValue = [v8 BOOLValue];
      userInfo2 = [dismissCopy userInfo];
      [(FAInviteInPersonActivity *)self _notifyCompletionWithSuccess:bOOLValue userInfo:userInfo2];
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

void __43__FAInviteInPersonActivity_performActivity__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Finished FAInviteInPersonActivity %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleRUIDismiss:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Server indicated success: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end