@interface DBBannerAuthority
- (BNConsideringDelegate)delegate;
- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable;
- (void)setSuspendedForAssistant:(BOOL)assistant;
@end

@implementation DBBannerAuthority

- (void)setSuspendedForAssistant:(BOOL)assistant
{
  assistantCopy = assistant;
  assistantPseudoPresentable = [(DBBannerAuthority *)self assistantPseudoPresentable];

  if (assistantCopy)
  {
    if (assistantPseudoPresentable)
    {
      return;
    }

    v6 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[Notifications] Suspending notifications for Siri", buf, 2u);
    }

    assistantPseudoPresentable2 = objc_alloc_init(_DBAssistantPresentable);
    [(DBBannerAuthority *)self setAssistantPseudoPresentable:assistantPseudoPresentable2];
  }

  else
  {
    if (!assistantPseudoPresentable)
    {
      return;
    }

    v8 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[Notifications] Un-suspending notifications for Siri", v10, 2u);
    }

    assistantPseudoPresentable2 = [(DBBannerAuthority *)self assistantPseudoPresentable];
    [(DBBannerAuthority *)self setAssistantPseudoPresentable:0];
    delegate = [(DBBannerAuthority *)self delegate];
    [delegate bannerAuthority:self mayChangeDecisionForResponsiblePresentable:assistantPseudoPresentable2];
  }
}

- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable
{
  v19 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  presentablesCopy = presentables;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v11 = [requesterIdentifier isEqual:@"com.apple.InCallService"];

  if (v11)
  {
    v12 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = presentableCopy;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "[Notifications] Allowing InCallService presentable %@", &v17, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    assistantPseudoPresentable = [(DBBannerAuthority *)self assistantPseudoPresentable];

    if (assistantPseudoPresentable)
    {
      v15 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = presentableCopy;
        _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "[Notifications] Presentable pended due to Siri: %@", &v17, 0xCu);
      }

      *responsiblePresentable = [(DBBannerAuthority *)self assistantPseudoPresentable];
      v13 = -1;
    }

    else if ([presentablesCopy count])
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