@interface HDHRCarouselUITriggerObserver
- (HDHRCarouselUITriggerObserver)initWithProfile:(id)profile;
- (void)_postHypertensionNotificationWithCompletion:(id)completion;
- (void)dealloc;
@end

@implementation HDHRCarouselUITriggerObserver

- (HDHRCarouselUITriggerObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDHRCarouselUITriggerObserver;
  v5 = [(HDHRCarouselUITriggerObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = HDHRCarouselUITriggerObserver;
  [(HDHRCarouselUITriggerObserver *)&v2 dealloc];
}

- (void)_postHypertensionNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = HDHRHypertensionNotificationRequestForEvent(0);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HDHRCarouselUITriggerObserver__postHypertensionNotificationWithCompletion___block_invoke;
  v9[3] = &unk_27865FD68;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [notificationManager postNotificationWithRequest:v5 completion:v9];
}

void __77__HDHRCarouselUITriggerObserver__postHypertensionNotificationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v13 = 138543362;
      v14 = objc_opt_class();
      v9 = v14;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sucessfully posted hypertension notification", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __77__HDHRCarouselUITriggerObserver__postHypertensionNotificationWithCompletion___block_invoke_cold_1(a1, v5, v7);
  }

  v10 = *(a1 + 40);
  v11 = [v5 description];
  (*(v10 + 16))(v10, a2, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void __77__HDHRCarouselUITriggerObserver__postHypertensionNotificationWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v8 = 138543618;
  v9 = objc_opt_class();
  v10 = 2112;
  v11 = a2;
  v6 = v9;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to post hypertension notification with error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end