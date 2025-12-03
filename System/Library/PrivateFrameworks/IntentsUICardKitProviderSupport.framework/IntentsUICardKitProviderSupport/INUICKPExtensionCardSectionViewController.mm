@interface INUICKPExtensionCardSectionViewController
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info;
- (void)desiresInteractivity:(id)interactivity;
- (void)remoteViewController:(id)controller requestsHandlingOfIntent:(id)intent;
- (void)remoteViewControllerWillBeginEditing:(id)editing;
@end

@implementation INUICKPExtensionCardSectionViewController

- (void)desiresInteractivity:(id)interactivity
{
  interactivityCopy = interactivity;
  remoteViewController = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  [remoteViewController desiresInteractivity:interactivityCopy];
}

- (void)remoteViewController:(id)controller requestsHandlingOfIntent:(id)intent
{
  v6 = [(INUICKPExtensionCardSectionViewController *)self cardSectionViewControllingDelegate:controller];
  v5 = objc_alloc_init(MEMORY[0x277CF9468]);
  [v6 performCommand:v5 forViewController:self];
}

- (void)remoteViewControllerWillBeginEditing:(id)editing
{
  cardSectionViewControllingDelegate = [(INUICKPExtensionCardSectionViewController *)self cardSectionViewControllingDelegate];
  v4 = objc_alloc_init(MEMORY[0x277CF9428]);
  [cardSectionViewControllingDelegate performCommand:v4 forViewController:self];
}

- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController:occur];

  if (!v7)
  {
    goto LABEL_18;
  }

  if (occur > 4)
  {
    if (occur == 5)
    {
      remoteViewController = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
      _cancelTouchesForCurrentEventInHostedContent = [remoteViewController _cancelTouchesForCurrentEventInHostedContent];
      touchDeliveryPolicyAssertion = self->_touchDeliveryPolicyAssertion;
      self->_touchDeliveryPolicyAssertion = _cancelTouchesForCurrentEventInHostedContent;

      v20 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        remoteViewController2 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
        v23 = self->_touchDeliveryPolicyAssertion;
        *buf = 138412546;
        v27 = remoteViewController2;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&dword_255550000, v21, OS_LOG_TYPE_INFO, "CRKEventScrollingStarted, cancelling touches for %@ with assertion %@", buf, 0x16u);
      }
    }

    else if (occur == 6)
    {
      v11 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        remoteViewController3 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
        v14 = self->_touchDeliveryPolicyAssertion;
        *buf = 138412546;
        v27 = remoteViewController3;
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

  if (occur != 3)
  {
    if (occur == 4)
    {
      remoteViewController4 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
      disconnect = [remoteViewController4 disconnect];

      v10 = *MEMORY[0x277D85DE8];

      [(INUICKPSynchronousRemoteViewController *)self setRemoteViewController:0];
      return;
    }

LABEL_18:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  remoteViewController5 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  [remoteViewController5 requestCancellation];
  v16 = *MEMORY[0x277D85DE8];
}

- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSectionViewControllingDelegate);

  return WeakRetained;
}

@end