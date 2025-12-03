@interface CKDetailsControllerAdapter
- (BOOL)isDetailsNavigationControllerDetached;
- (CKDetailsControllerAdapter)initWithConversation:(id)conversation delegate:(id)delegate customDetailsController:(id)controller;
- (CKDetailsControllerAdapterDelegate)delegate;
- (UINavigationControllerDelegate)customDetails;
- (id)detailsControllerBusinessPrivacyInfoPresentingViewController:(id)controller;
- (id)presentingViewControllerForAlertsFromDetailsController:(id)controller;
- (void)configureDetailsControllerForSearch:(id)search searchViewController:(id)controller;
- (void)detailsController:(id)controller shouldComposeConversationWithRecipientAddresses:(id)addresses;
- (void)detailsController:(id)controller wantsToStageComposition:(id)composition;
- (void)detailsControllerDidDismiss:(id)dismiss;
- (void)detailsControllerDidSelectStopSharingLocation:(id)location;
- (void)detailsControllerWantsToPresentKTContactVerificationUI:(id)i;
- (void)detailsControllerWantsToPresentReportToAppleUI:(id)i;
- (void)detailsControllerWillDismiss:(id)dismiss;
- (void)didSelectDeleteAndBlockFromDetailsController:(id)controller;
- (void)didSelectLeaveGroupFromDetailsController:(id)controller;
- (void)didSelectRemoveParticipantFromDetailsController:(id)controller participantHandle:(id)handle;
- (void)dismissDetailsNavigationController;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion;
- (void)dismissDetailsViewAndShowConversationList;
- (void)stageDetailsFindMyCompositionWithShareType:(int64_t)type;
- (void)stageLocationRequest;
@end

@implementation CKDetailsControllerAdapter

- (CKDetailsControllerAdapter)initWithConversation:(id)conversation delegate:(id)delegate customDetailsController:(id)controller
{
  conversationCopy = conversation;
  delegateCopy = delegate;
  controllerCopy = controller;
  v30.receiver = self;
  v30.super_class = CKDetailsControllerAdapter;
  v12 = [(CKDetailsControllerAdapter *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conversation, conversation);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([mEMORY[0x1E69A8070] isBIAEnabled] && (objc_msgSend(conversationCopy, "isBusinessConversation") & 1) != 0)
    {
      isChatBot = 1;
    }

    else
    {
      isChatBot = [conversationCopy isChatBot];
    }

    v13->_useBusinessDetails = isChatBot;

    v13->_addMemberPopoverPresented = 0;
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernDetailsViewEnabled = [mEMORY[0x1E69A8070]2 isModernDetailsViewEnabled];

    if (isModernDetailsViewEnabled)
    {
      if (controllerCopy)
      {
        [(CKDetailsControllerAdapter *)v13 setCustomDetails:controllerCopy];
        goto LABEL_15;
      }

      if (![(CKDetailsControllerAdapter *)v13 useBusinessDetails])
      {
        v27 = [CKModernDetailsControllerFactory detailsControllerWithConversation:conversationCopy delegate:v13];
        modernDetails = v13->_modernDetails;
        v13->_modernDetails = v27;

        v22 = v13->_modernDetails;
        goto LABEL_14;
      }
    }

    else if (![(CKDetailsControllerAdapter *)v13 useBusinessDetails])
    {
      v18 = [CKDetailsController alloc];
      conversation = [(CKDetailsControllerAdapter *)v13 conversation];
      v20 = [(CKDetailsController *)v18 initWithConversation:conversation];
      legacyDetails = v13->_legacyDetails;
      v13->_legacyDetails = v20;

      [(CKDetailsController *)v13->_legacyDetails setDetailsControllerDelegate:v13];
      v22 = v13->_legacyDetails;
LABEL_14:
      objc_storeStrong(&v13->_detailsController, v22);
      goto LABEL_15;
    }

    v23 = [CKBusinessDetailsController alloc];
    conversation2 = [(CKDetailsControllerAdapter *)v13 conversation];
    v25 = [(CKBusinessDetailsController *)v23 initWithConversation:conversation2 detailsControllerDelegate:v13];
    businessDetails = v13->_businessDetails;
    v13->_businessDetails = v25;

    v22 = v13->_businessDetails;
    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

- (void)stageDetailsFindMyCompositionWithShareType:(int64_t)type
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate detailsAdapterStageFindMyCompositionWithShareType:type];
}

- (void)stageLocationRequest
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate detailsAdapterStageLocationRequestComposition];
}

- (void)detailsControllerWillDismiss:(id)dismiss
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate detailsAdapterWillDismiss:self];
}

- (void)detailsControllerDidDismiss:(id)dismiss
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate detailsAdapterDidDismiss:self];
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKDetailsControllerAdapter *)self delegate];
    [delegate2 dismissDetailsNavigationControllerWithCompletion:completionCopy];
  }
}

- (void)dismissDetailsViewAndShowConversationList
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate dismissDetailsViewAndShowConversationList];
}

- (BOOL)isDetailsNavigationControllerDetached
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  isDetailsNavigationControllerDetached = [delegate isDetailsNavigationControllerDetached];

  return isDetailsNavigationControllerDetached;
}

- (id)detailsControllerBusinessPrivacyInfoPresentingViewController:(id)controller
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  v5 = [delegate detailsAdapterBusinessPrivacyInfoPresentingViewController:self];

  return v5;
}

- (void)detailsControllerWantsToPresentKTContactVerificationUI:(id)i
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate detailsAdapterWantsToPresentKTContactVerificationUI:self];
}

- (void)detailsController:(id)controller wantsToStageComposition:(id)composition
{
  compositionCopy = composition;
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate detailsAdapter:self wantsToStageComposition:compositionCopy];
}

- (void)detailsControllerDidSelectStopSharingLocation:(id)location
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate detailsAdapterDidSelectStopSharingLocation:self];
}

- (void)detailsController:(id)controller shouldComposeConversationWithRecipientAddresses:(id)addresses
{
  addressesCopy = addresses;
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKDetailsControllerAdapter *)self delegate];
    [delegate2 detailsAdapter:self shouldComposeConversationWithRecipientAddresses:addressesCopy];
  }
}

- (id)presentingViewControllerForAlertsFromDetailsController:(id)controller
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKDetailsControllerAdapter *)self delegate];
    v7 = [delegate2 presentingViewControllerForAlertsFromDetailsAdapter:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)detailsControllerWantsToPresentReportToAppleUI:(id)i
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernDetailsViewEnabled = [mEMORY[0x1E69A8070] isModernDetailsViewEnabled];

  if (isModernDetailsViewEnabled)
  {
    modernDetails = [(CKDetailsControllerAdapter *)self modernDetails];
    [CKKeyTransparencyErrorUtilities showReportToAppleUIFromViewController:modernDetails];
  }
}

- (void)configureDetailsControllerForSearch:(id)search searchViewController:(id)controller
{
  controllerCopy = controller;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernDetailsViewEnabled = [mEMORY[0x1E69A8070] isModernDetailsViewEnabled];

  if (isModernDetailsViewEnabled)
  {
    modernDetails = [(CKDetailsControllerAdapter *)self modernDetails];
    [controllerCopy willMoveToParentViewController:modernDetails];

    modernDetails2 = [(CKDetailsControllerAdapter *)self modernDetails];
    [modernDetails2 addChildViewController:controllerCopy];
  }
}

- (void)dismissDetailsNavigationController
{
  delegate = [(CKDetailsControllerAdapter *)self delegate];
  [delegate dismissDetailsNavigationControllerWithCompletion:0];
}

- (CKDetailsControllerAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationControllerDelegate)customDetails
{
  WeakRetained = objc_loadWeakRetained(&self->_customDetails);

  return WeakRetained;
}

- (void)didSelectRemoveParticipantFromDetailsController:(id)controller participantHandle:(id)handle
{
  controllerCopy = controller;
  handleCopy = handle;
  selfCopy = self;
  sub_190AE4304(controllerCopy, handleCopy);
}

- (void)didSelectLeaveGroupFromDetailsController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_190AE4DA0(controllerCopy);
}

- (void)didSelectDeleteAndBlockFromDetailsController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_190AE5D24();
}

@end