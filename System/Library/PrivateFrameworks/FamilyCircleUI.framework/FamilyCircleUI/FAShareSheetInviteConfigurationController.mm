@interface FAShareSheetInviteConfigurationController
- (FAInviteControllerDelegate)delegate;
- (FAShareSheetInviteConfigurationController)initWithInviteContext:(id)a3 presentingController:(id)a4;
- (id)_parameterForActivityType:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (void)_presentInviteControllerWithCompletion:(id)a3;
- (void)activityViewController:(id)a3 didCompleteActivityType:(id)a4;
- (void)activityViewController:(id)a3 willStartAsyncActivity:(id)a4;
- (void)presentWhenReadyWithCompletion:(id)a3;
@end

@implementation FAShareSheetInviteConfigurationController

- (FAShareSheetInviteConfigurationController)initWithInviteContext:(id)a3 presentingController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FAShareSheetInviteConfigurationController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_presentationContext, a4);
  }

  return v10;
}

- (void)presentWhenReadyWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_linkMetadata)
  {
    [(FAShareSheetInviteConfigurationController *)self _presentInviteControllerWithCompletion:v4];
  }

  else
  {
    v5 = [[FAInviteLinkMetadataProvider alloc] initWithContext:self->_context];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__FAShareSheetInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke;
    v6[3] = &unk_2782F2EB0;
    v6[4] = self;
    v7 = v4;
    [(FAInviteLinkMetadataProvider *)v5 loadMetatadataWithCompletion:v6];
  }
}

void __76__FAShareSheetInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 1, v6);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    [*(a1 + 32) _presentInviteControllerWithCompletion:*(a1 + 40)];
  }
}

- (id)_parameterForActivityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D54738]])
  {
    v4 = @"messages";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D54728]])
  {
    v4 = @"mail";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D54710]])
  {
    v4 = @"airdrop";
  }

  else if ([v3 isEqualToString:@"FAInviteInPersonActivity"])
  {
    v4 = @"inPerson";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_presentInviteControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [FAActivityViewController alloc];
  v6 = [(FAInviteContext *)self->_context eventType];
  v7 = [(FAActivityViewController *)v5 initWithItemSource:self eventType:v6];

  [(FAActivityViewController *)v7 setDelegate:self];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__FAShareSheetInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke;
  aBlock[3] = &unk_2782F3798;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  v8 = _Block_copy(aBlock);
  activityControllerCompletionHandler = self->_activityControllerCompletionHandler;
  self->_activityControllerCompletionHandler = v8;

  [(FAActivityViewController *)v7 setCompletionWithItemsHandler:self->_activityControllerCompletionHandler];
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    [(FAActivityViewController *)v7 setModalPresentationStyle:2];
  }

  presentationContext = self->_presentationContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__FAShareSheetInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke_2;
  v14[3] = &unk_2782F2ED8;
  v13 = v4;
  v15 = v13;
  [(UIViewController *)presentationContext presentViewController:v7 animated:1 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __84__FAShareSheetInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = _FALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = @"NO";
    *buf = 138413058;
    v29 = v9;
    if (a3)
    {
      v24 = @"YES";
    }

    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_debug_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEBUG, "_activityControllerCompletionHandler type: %@\ncompleted: %@\nreturnedItems: %@\nerror:%@", buf, 0x2Au);
  }

  if ([v9 isEqualToString:@"FAInviteInPersonActivity"])
  {
    [WeakRetained activityViewController:v13 didCompleteActivityType:v9];
    if (([WeakRetained alwaysNotifyServer] & 1) == 0)
    {
      if (!a3)
      {
        goto LABEL_17;
      }

      v18 = [v13 activity];
      v21 = [WeakRetained delegate];
      v22 = [v18 response];
      [v21 dismissWithUserInfo:v22];

LABEL_16:
      goto LABEL_17;
    }
  }

  if ([v9 isEqualToString:*MEMORY[0x277D54710]] && (objc_msgSend(v13, "didCompleteAirdropTransfer") & 1) == 0)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__FAShareSheetInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke_30;
    v25[3] = &unk_2782F2AF8;
    v26 = v13;
    v27 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v25);

    v18 = v26;
    goto LABEL_16;
  }

  if (v9 && (v11 || a3))
  {
    if (v11)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v16 = [v13 recipientAddresses];
    v17 = WeakRetained[4];
    WeakRetained[4] = v16;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    v19 = [WeakRetained _parameterForActivityType:v9];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277D080F8]];

    v20 = [WeakRetained delegate];
    [v20 inviteController:WeakRetained didFinishWithStatus:v15 recipients:WeakRetained[4] userInfo:v18 error:v11];

    goto LABEL_16;
  }

LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __84__FAShareSheetInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:*MEMORY[0x277D54710]])
  {
    v6 = [(FAInviteLinkMetadata *)self->_linkMetadata bubbleMetadata];
    v7 = [v6 originalURL];
    v8 = [v7 fa_URLByAddingAirdropInviteParams];
  }

  else
  {
    if ([v5 isEqualToString:*MEMORY[0x277D54738]])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v6 = [(FAInviteLinkMetadata *)self->_linkMetadata bubbleMetadata];
    v8 = [v6 originalURL];
  }

LABEL_7:

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = [(FAInviteLinkMetadata *)self->_linkMetadata bubbleMetadata];
  v4 = [v3 title];

  return v4;
}

- (void)activityViewController:(id)a3 willStartAsyncActivity:(id)a4
{
  v5 = [(FAShareSheetInviteConfigurationController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(FAShareSheetInviteConfigurationController *)self delegate];
    [v7 inviteControllerDidStartAsyncLoading:self];
  }
}

- (void)activityViewController:(id)a3 didCompleteActivityType:(id)a4
{
  v5 = [(FAShareSheetInviteConfigurationController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(FAShareSheetInviteConfigurationController *)self delegate];
    [v7 inviteControllerDidEndAsyncLoading:self];
  }
}

- (FAInviteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end