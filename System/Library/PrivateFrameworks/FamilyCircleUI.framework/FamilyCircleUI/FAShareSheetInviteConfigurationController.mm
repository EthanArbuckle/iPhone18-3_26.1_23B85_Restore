@interface FAShareSheetInviteConfigurationController
- (FAInviteControllerDelegate)delegate;
- (FAShareSheetInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller;
- (id)_parameterForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (void)_presentInviteControllerWithCompletion:(id)completion;
- (void)activityViewController:(id)controller didCompleteActivityType:(id)type;
- (void)activityViewController:(id)controller willStartAsyncActivity:(id)activity;
- (void)presentWhenReadyWithCompletion:(id)completion;
@end

@implementation FAShareSheetInviteConfigurationController

- (FAShareSheetInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  v9 = [(FAShareSheetInviteConfigurationController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_presentationContext, controller);
  }

  return v10;
}

- (void)presentWhenReadyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_linkMetadata)
  {
    [(FAShareSheetInviteConfigurationController *)self _presentInviteControllerWithCompletion:completionCopy];
  }

  else
  {
    v5 = [[FAInviteLinkMetadataProvider alloc] initWithContext:self->_context];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__FAShareSheetInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke;
    v6[3] = &unk_2782F2EB0;
    v6[4] = self;
    v7 = completionCopy;
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

- (id)_parameterForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277D54738]])
  {
    v4 = @"messages";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277D54728]])
  {
    v4 = @"mail";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277D54710]])
  {
    v4 = @"airdrop";
  }

  else if ([typeCopy isEqualToString:@"FAInviteInPersonActivity"])
  {
    v4 = @"inPerson";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_presentInviteControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [FAActivityViewController alloc];
  eventType = [(FAInviteContext *)self->_context eventType];
  v7 = [(FAActivityViewController *)v5 initWithItemSource:self eventType:eventType];

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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(FAActivityViewController *)v7 setModalPresentationStyle:2];
  }

  presentationContext = self->_presentationContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__FAShareSheetInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke_2;
  v14[3] = &unk_2782F2ED8;
  v13 = completionCopy;
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

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277D54710]])
  {
    bubbleMetadata = [(FAInviteLinkMetadata *)self->_linkMetadata bubbleMetadata];
    originalURL = [bubbleMetadata originalURL];
    fa_URLByAddingAirdropInviteParams = [originalURL fa_URLByAddingAirdropInviteParams];
  }

  else
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277D54738]])
    {
      fa_URLByAddingAirdropInviteParams = 0;
      goto LABEL_7;
    }

    bubbleMetadata = [(FAInviteLinkMetadata *)self->_linkMetadata bubbleMetadata];
    fa_URLByAddingAirdropInviteParams = [bubbleMetadata originalURL];
  }

LABEL_7:

  return fa_URLByAddingAirdropInviteParams;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  bubbleMetadata = [(FAInviteLinkMetadata *)self->_linkMetadata bubbleMetadata];
  title = [bubbleMetadata title];

  return title;
}

- (void)activityViewController:(id)controller willStartAsyncActivity:(id)activity
{
  v5 = [(FAShareSheetInviteConfigurationController *)self delegate:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(FAShareSheetInviteConfigurationController *)self delegate];
    [delegate inviteControllerDidStartAsyncLoading:self];
  }
}

- (void)activityViewController:(id)controller didCompleteActivityType:(id)type
{
  v5 = [(FAShareSheetInviteConfigurationController *)self delegate:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(FAShareSheetInviteConfigurationController *)self delegate];
    [delegate inviteControllerDidEndAsyncLoading:self];
  }
}

- (FAInviteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end