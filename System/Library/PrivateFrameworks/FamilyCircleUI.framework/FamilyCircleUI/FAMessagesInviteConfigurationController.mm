@interface FAMessagesInviteConfigurationController
+ (BOOL)isAvailable;
- (FAInviteControllerDelegate)delegate;
- (FAMessagesInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller;
- (FAMessagesInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller familySuggestionHandle:(id)handle;
- (id)_messageComposeViewController;
- (void)_presentInviteControllerWithCompletion:(id)completion;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)messageComposeViewController:(id)controller shouldSendMessage:(id)message toRecipients:(id)recipients completion:(id)completion;
- (void)presentWhenReadyWithCompletion:(id)completion;
@end

@implementation FAMessagesInviteConfigurationController

- (FAMessagesInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  v9 = [(FAMessagesInviteConfigurationController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_presentationContext, controller);
    v11 = objc_alloc_init(FAInviteRecipientEvaluator);
    inviteRecipientEvaluator = v10->_inviteRecipientEvaluator;
    v10->_inviteRecipientEvaluator = v11;
  }

  return v10;
}

- (FAMessagesInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller familySuggestionHandle:(id)handle
{
  contextCopy = context;
  controllerCopy = controller;
  handleCopy = handle;
  v12 = [(FAMessagesInviteConfigurationController *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_presentationContext, controller);
    v14 = objc_alloc_init(FAInviteRecipientEvaluator);
    inviteRecipientEvaluator = v13->_inviteRecipientEvaluator;
    v13->_inviteRecipientEvaluator = v14;

    objc_storeStrong(&v13->_familySuggestionHandle, handle);
  }

  return v13;
}

- (void)presentWhenReadyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_linkMetadata)
  {
    [(FAMessagesInviteConfigurationController *)self _presentInviteControllerWithCompletion:completionCopy];
  }

  else
  {
    v5 = [[FAInviteLinkMetadataProvider alloc] initWithContext:self->_context];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__FAMessagesInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke;
    v6[3] = &unk_2782F2EB0;
    v6[4] = self;
    v7 = completionCopy;
    [(FAInviteLinkMetadataProvider *)v5 loadMetatadataWithCompletion:v6];
  }
}

void __74__FAMessagesInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    v7 = [v10 bubbleMetadata];
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    [*(a1 + 32) _presentInviteControllerWithCompletion:*(a1 + 40)];
  }
}

- (id)_messageComposeViewController
{
  v26[1] = *MEMORY[0x277D85DE8];
  messageComposeViewController = self->_messageComposeViewController;
  if (!messageComposeViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD6888]);
    v5 = self->_messageComposeViewController;
    self->_messageComposeViewController = v4;

    [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:self];
    messageBubbleTitle = [(FAInviteContext *)self->_context messageBubbleTitle];

    if (messageBubbleTitle)
    {
      v7 = [objc_alloc(MEMORY[0x277CD6908]) initWithLinkMetadata:self->_linkMetadata];
      v8 = [objc_alloc(MEMORY[0x277CD6900]) initWithAlternateLayout:v7];
      v26[0] = *MEMORY[0x277D18888];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      [v8 setRequiredCapabilities:v9];

      v10 = objc_alloc(MEMORY[0x277CD68F8]);
      v11 = objc_alloc_init(MEMORY[0x277CD6920]);
      v12 = [v10 initWithSession:v11];

      [v12 setLayout:v8];
      v13 = [(FAInviteContext *)self->_context buildInviteMessageBubbleURL:self->_familySuggestionHandle];
      [v12 setURL:v13];

      messageBubbleSubTitle = [(FAInviteContext *)self->_context messageBubbleSubTitle];
      [v12 setSummaryText:messageBubbleSubTitle];

      [(MFMessageComposeViewController *)self->_messageComposeViewController setMessage:v12];
    }

    else
    {
      v15 = self->_messageComposeViewController;
      dataRepresentation = [(LPLinkMetadata *)self->_linkMetadata dataRepresentation];
      inviteURL = [(FAInviteContext *)self->_context inviteURL];
      [(MFMessageComposeViewController *)v15 addRichLinkData:dataRepresentation withWebpageURL:inviteURL];
    }

    invitees = [(FAInviteContext *)self->_context invitees];
    v19 = [invitees count];

    if (v19)
    {
      v20 = self->_messageComposeViewController;
      invitees2 = [(FAInviteContext *)self->_context invitees];
    }

    else
    {
      if (!self->_familySuggestionHandle)
      {
LABEL_10:
        [(MFMessageComposeViewController *)self->_messageComposeViewController _setCanEditRecipients:[(FAInviteContext *)self->_context canEditRecipients]];
        messageComposeViewController = self->_messageComposeViewController;
        goto LABEL_11;
      }

      v20 = self->_messageComposeViewController;
      familySuggestionHandle = self->_familySuggestionHandle;
      invitees2 = [MEMORY[0x277CBEA60] arrayWithObjects:&familySuggestionHandle count:1];
    }

    v22 = invitees2;
    [(MFMessageComposeViewController *)v20 setRecipients:invitees2];

    goto LABEL_10;
  }

LABEL_11:
  v23 = *MEMORY[0x277D85DE8];

  return messageComposeViewController;
}

+ (BOOL)isAvailable
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _FALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [MEMORY[0x277CD6888] canSendText];
    _os_log_impl(&dword_21BB35000, v2, OS_LOG_TYPE_DEFAULT, "can send text %d", v5, 8u);
  }

  result = [MEMORY[0x277CD6888] isiMessageEnabled];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_presentInviteControllerWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = +[FAMessagesInviteConfigurationController isAvailable];
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "_presentMessagesViewController - can send text: %d", buf, 8u);
  }

  _messageComposeViewController = [(FAMessagesInviteConfigurationController *)self _messageComposeViewController];
  if (_messageComposeViewController && (v7 = _messageComposeViewController, v8 = +[FAMessagesInviteConfigurationController isAvailable], v7, v8))
  {
    presentationContext = self->_presentationContext;
    _messageComposeViewController2 = [(FAMessagesInviteConfigurationController *)self _messageComposeViewController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__FAMessagesInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke;
    v13[3] = &unk_2782F2ED8;
    v14 = completionCopy;
    [(UIViewController *)presentationContext presentViewController:_messageComposeViewController2 animated:1 completion:v13];
  }

  else
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Unable to present FAMessagesInViteConfigurationController", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __82__FAMessagesInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    v22 = v9;
    v23 = 2048;
    resultCopy = result;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - didFinishWithResult:%ld", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (result == 1)
    {
      v12 = @"0";
    }

    else if (result)
    {
      v12 = @"0";
      result = 2;
    }

    else
    {
      v12 = @"1";
    }

    v19 = @"userCancelled";
    v20 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__FAMessagesInviteConfigurationController_messageComposeViewController_didFinishWithResult___block_invoke;
    v16[3] = &unk_2782F2F00;
    v17 = v13;
    resultCopy2 = result;
    v16[4] = self;
    v14 = v13;
    [controllerCopy dismissViewControllerAnimated:1 completion:v16];
  }

  else
  {
    [controllerCopy dismissViewControllerAnimated:1 completion:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __92__FAMessagesInviteConfigurationController_messageComposeViewController_didFinishWithResult___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 56));
  [WeakRetained inviteController:a1[4] didFinishWithStatus:a1[6] recipients:*(a1[4] + 32) userInfo:a1[5] error:0];
}

- (void)messageComposeViewController:(id)controller shouldSendMessage:(id)message toRecipients:(id)recipients completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  completionCopy = completion;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - shouldSendMessage", &v19, 0xCu);
  }

  recipientAddresses = self->_recipientAddresses;
  self->_recipientAddresses = recipientsCopy;
  v14 = recipientsCopy;

  inviteRecipientEvaluator = self->_inviteRecipientEvaluator;
  context = self->_context;
  visibleViewController = [(MFMessageComposeViewController *)self->_messageComposeViewController visibleViewController];
  [(FAInviteRecipientEvaluator *)inviteRecipientEvaluator validateRecipients:v14 inviteContext:context presenter:visibleViewController completion:completionCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (FAInviteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end