@interface INUICKPExtensionCardSectionViewController
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5;
- (void)desiresInteractivity:(id)a3;
- (void)remoteViewController:(id)a3 requestsHandlingOfIntent:(id)a4;
- (void)remoteViewControllerWillBeginEditing:(id)a3;
@end

@implementation INUICKPExtensionCardSectionViewController

- (void)desiresInteractivity:(id)a3
{
  v4 = a3;
  v5 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  [v5 desiresInteractivity:v4];
}

- (void)remoteViewController:(id)a3 requestsHandlingOfIntent:(id)a4
{
  v6 = [(INUICKPExtensionCardSectionViewController *)self cardSectionViewControllingDelegate:a3];
  v5 = objc_alloc_init(MEMORY[0x277CF9468]);
  [v6 performCommand:v5 forViewController:self];
}

- (void)remoteViewControllerWillBeginEditing:(id)a3
{
  v5 = [(INUICKPExtensionCardSectionViewController *)self cardSectionViewControllingDelegate];
  v4 = objc_alloc_init(MEMORY[0x277CF9428]);
  [v5 performCommand:v4 forViewController:self];
}

- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController:a3];

  if (!v7)
  {
    goto LABEL_18;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v17 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
      v18 = [v17 _cancelTouchesForCurrentEventInHostedContent];
      touchDeliveryPolicyAssertion = self->_touchDeliveryPolicyAssertion;
      self->_touchDeliveryPolicyAssertion = v18;

      v20 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        v22 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
        v23 = self->_touchDeliveryPolicyAssertion;
        *buf = 138412546;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&dword_255550000, v21, OS_LOG_TYPE_INFO, "CRKEventScrollingStarted, cancelling touches for %@ with assertion %@", buf, 0x16u);
      }
    }

    else if (a3 == 6)
    {
      v11 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        v13 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
        v14 = self->_touchDeliveryPolicyAssertion;
        *buf = 138412546;
        v27 = v13;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_255550000, v12, OS_LOG_TYPE_INFO, "CRKEventScrollingEnded, resuming touches for %@ by invalidating assertion %@", buf, 0x16u);
      }

      [self->_touchDeliveryPolicyAssertion invalidate];
      v15 = self->_touchDeliveryPolicyAssertion;
      self->_touchDeliveryPolicyAssertion = 0;
    }

    goto LABEL_18;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v8 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
      v9 = [v8 disconnect];

      v10 = *MEMORY[0x277D85DE8];

      [(INUICKPSynchronousRemoteViewController *)self setRemoteViewController:0];
      return;
    }

LABEL_18:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  v25 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  [v25 requestCancellation];
  v16 = *MEMORY[0x277D85DE8];
}

- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSectionViewControllingDelegate);

  return WeakRetained;
}

@end