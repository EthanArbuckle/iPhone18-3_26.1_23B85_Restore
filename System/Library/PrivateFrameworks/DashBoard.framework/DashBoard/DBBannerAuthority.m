@interface DBBannerAuthority
- (BNConsideringDelegate)delegate;
- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5;
- (void)setSuspendedForAssistant:(BOOL)a3;
@end

@implementation DBBannerAuthority

- (void)setSuspendedForAssistant:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBBannerAuthority *)self assistantPseudoPresentable];

  if (v3)
  {
    if (v5)
    {
      return;
    }

    v6 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[Notifications] Suspending notifications for Siri", buf, 2u);
    }

    v7 = objc_alloc_init(_DBAssistantPresentable);
    [(DBBannerAuthority *)self setAssistantPseudoPresentable:v7];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v8 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[Notifications] Un-suspending notifications for Siri", v10, 2u);
    }

    v7 = [(DBBannerAuthority *)self assistantPseudoPresentable];
    [(DBBannerAuthority *)self setAssistantPseudoPresentable:0];
    v9 = [(DBBannerAuthority *)self delegate];
    [v9 bannerAuthority:self mayChangeDecisionForResponsiblePresentable:v7];
  }
}

- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 requesterIdentifier];
  v11 = [v10 isEqual:@"com.apple.InCallService"];

  if (v11)
  {
    v12 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "[Notifications] Allowing InCallService presentable %@", &v17, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    v14 = [(DBBannerAuthority *)self assistantPseudoPresentable];

    if (v14)
    {
      v15 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v8;
        _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "[Notifications] Presentable pended due to Siri: %@", &v17, 0xCu);
      }

      *a5 = [(DBBannerAuthority *)self assistantPseudoPresentable];
      v13 = -1;
    }

    else if ([v9 count])
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (BNConsideringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end