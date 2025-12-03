@interface FAMailInviteConfigurationController
- (FAInviteControllerDelegate)delegate;
- (FAMailInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller email:(id)email;
- (id)_mailComposeViewController;
- (void)_presentInviteControllerWithCompletion:(id)completion;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion;
- (void)presentWhenReadyWithCompletion:(id)completion;
@end

@implementation FAMailInviteConfigurationController

- (FAMailInviteConfigurationController)initWithInviteContext:(id)context presentingController:(id)controller email:(id)email
{
  contextCopy = context;
  controllerCopy = controller;
  emailCopy = email;
  v12 = [(FAMailInviteConfigurationController *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_presentationContext, controller);
    objc_storeStrong(&v13->_familySuggestionEmailAddress, email);
    v14 = objc_alloc_init(FAInviteRecipientEvaluator);
    inviteRecipientEvaluator = v13->_inviteRecipientEvaluator;
    v13->_inviteRecipientEvaluator = v14;
  }

  return v13;
}

- (void)presentWhenReadyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_linkMetadata)
  {
    [(FAMailInviteConfigurationController *)self _presentInviteControllerWithCompletion:completionCopy];
  }

  else
  {
    v5 = [[FAInviteLinkMetadataProvider alloc] initWithContext:self->_context];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__FAMailInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke;
    v6[3] = &unk_2782F2EB0;
    v6[4] = self;
    v7 = completionCopy;
    [(FAInviteLinkMetadataProvider *)v5 loadMetatadataWithCompletion:v6];
  }
}

void __70__FAMailInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v7 = [v10 mailMetadata];
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = v7;

    [*(a1 + 32) _presentInviteControllerWithCompletion:*(a1 + 40)];
  }
}

- (void)_presentInviteControllerWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = +[FAMailInviteConfigurationController isAvailable];
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "_presentMailViewController - can send Mail: %d", buf, 8u);
  }

  _mailComposeViewController = [(FAMailInviteConfigurationController *)self _mailComposeViewController];
  if (_mailComposeViewController && (v7 = _mailComposeViewController, v8 = +[FAMailInviteConfigurationController isAvailable], v7, v8))
  {
    presentationContext = self->_presentationContext;
    _mailComposeViewController2 = [(FAMailInviteConfigurationController *)self _mailComposeViewController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__FAMailInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke;
    v13[3] = &unk_2782F2ED8;
    v14 = completionCopy;
    [(UIViewController *)presentationContext presentViewController:_mailComposeViewController2 animated:1 completion:v13];
  }

  else
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Unable to present FAMailInviteConfigurationController", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __78__FAMailInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)_mailComposeViewController
{
  v21[1] = *MEMORY[0x277D85DE8];
  mailComposeViewController = self->_mailComposeViewController;
  if (!mailComposeViewController)
  {
    v4 = objc_alloc(MEMORY[0x277CD46C0]);
    originalURL = [(LPLinkMetadata *)self->_linkMetadata originalURL];
    v6 = [v4 initWithURL:originalURL];

    [v6 setMetadata:self->_linkMetadata];
    hTMLFragmentString = [v6 HTMLFragmentString];
    mailMessageBodyHTML = [(FAInviteContext *)self->_context mailMessageBodyHTML];
    v9 = mailMessageBodyHTML;
    v10 = &stru_282D9AA68;
    if (mailMessageBodyHTML)
    {
      v10 = mailMessageBodyHTML;
    }

    v11 = v10;

    v12 = [(__CFString *)v11 stringByAppendingString:hTMLFragmentString];

    v13 = objc_alloc_init(MEMORY[0x277CD6878]);
    v14 = self->_mailComposeViewController;
    self->_mailComposeViewController = v13;

    [(MFMailComposeViewController *)self->_mailComposeViewController setMailComposeDelegate:self];
    [(MFMailComposeViewController *)self->_mailComposeViewController setMessageBody:v12 isHTML:1];
    v15 = self->_mailComposeViewController;
    mailMessageSubject = [(FAInviteContext *)self->_context mailMessageSubject];
    [(MFMailComposeViewController *)v15 setSubject:mailMessageSubject];

    v17 = self->_mailComposeViewController;
    v21[0] = self->_familySuggestionEmailAddress;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [(MFMailComposeViewController *)v17 setToRecipients:v18];

    mailComposeViewController = self->_mailComposeViewController;
  }

  v19 = *MEMORY[0x277D85DE8];

  return mailComposeViewController;
}

- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  recipientsCopy = recipients;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = @"FAMailInviteConfigurationController.m";
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - shouldSendMail", buf, 0xCu);
  }

  v11 = [(FAInviteRecipientEvaluator *)self->_inviteRecipientEvaluator parseRecipientAddresses:recipientsCopy];
  recipientAddresses = self->_recipientAddresses;
  self->_recipientAddresses = v11;

  v13 = [recipientsCopy count];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277D08280]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__FAMailInviteConfigurationController_mailComposeController_shouldSendMail_toRecipients_completion___block_invoke;
    v16[3] = &unk_2782F3308;
    v16[4] = self;
    v17 = completionCopy;
    [v14 startRequestWithCompletionHandler:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __100__FAMailInviteConfigurationController_mailComposeController_shouldSendMail_toRecipients_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [*(*(a1 + 32) + 40) recipientAlreadyInFamily:a2 emailOnly:1 recipients:*(*(a1 + 32) + 32)];
  v3 = [v8 count];
  v4 = *(*(a1 + 40) + 16);
  if (v3)
  {
    v4();
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    v7 = [*(v5 + 8) visibleViewController];
    [v6 showAlreadyFamilyMember:v8 presenter:v7];
  }

  else
  {
    v4();
  }
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = @"FAMailInviteConfigurationController.m";
    v23 = 2048;
    resultCopy = result;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "%@ MFMailComposeVC delegate callback - didFinishWithResult:%ld", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = 2 * (result != 0);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __87__FAMailInviteConfigurationController_mailComposeController_didFinishWithResult_error___block_invoke;
    v18 = &unk_2782F3330;
    if (result == 2)
    {
      v11 = 1;
    }

    selfCopy = self;
    v20 = v11;
    v12 = &v15;
    v13 = controllerCopy;
  }

  else
  {
    v13 = controllerCopy;
    v12 = 0;
  }

  [v13 dismissViewControllerAnimated:1 completion:{v12, v15, v16, v17, v18, selfCopy, v20}];

  v14 = *MEMORY[0x277D85DE8];
}

void __87__FAMailInviteConfigurationController_mailComposeController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained inviteController:*(a1 + 32) didFinishWithStatus:*(a1 + 40) recipients:*(*(a1 + 32) + 32) userInfo:0 error:0];
}

- (FAInviteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end