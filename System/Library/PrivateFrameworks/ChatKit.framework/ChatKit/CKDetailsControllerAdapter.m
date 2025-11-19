@interface CKDetailsControllerAdapter
- (BOOL)isDetailsNavigationControllerDetached;
- (CKDetailsControllerAdapter)initWithConversation:(id)a3 delegate:(id)a4 customDetailsController:(id)a5;
- (CKDetailsControllerAdapterDelegate)delegate;
- (UINavigationControllerDelegate)customDetails;
- (id)detailsControllerBusinessPrivacyInfoPresentingViewController:(id)a3;
- (id)presentingViewControllerForAlertsFromDetailsController:(id)a3;
- (void)configureDetailsControllerForSearch:(id)a3 searchViewController:(id)a4;
- (void)detailsController:(id)a3 shouldComposeConversationWithRecipientAddresses:(id)a4;
- (void)detailsController:(id)a3 wantsToStageComposition:(id)a4;
- (void)detailsControllerDidDismiss:(id)a3;
- (void)detailsControllerDidSelectStopSharingLocation:(id)a3;
- (void)detailsControllerWantsToPresentKTContactVerificationUI:(id)a3;
- (void)detailsControllerWantsToPresentReportToAppleUI:(id)a3;
- (void)detailsControllerWillDismiss:(id)a3;
- (void)didSelectDeleteAndBlockFromDetailsController:(id)a3;
- (void)didSelectLeaveGroupFromDetailsController:(id)a3;
- (void)didSelectRemoveParticipantFromDetailsController:(id)a3 participantHandle:(id)a4;
- (void)dismissDetailsNavigationController;
- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3;
- (void)dismissDetailsViewAndShowConversationList;
- (void)stageDetailsFindMyCompositionWithShareType:(int64_t)a3;
- (void)stageLocationRequest;
@end

@implementation CKDetailsControllerAdapter

- (CKDetailsControllerAdapter)initWithConversation:(id)a3 delegate:(id)a4 customDetailsController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = CKDetailsControllerAdapter;
  v12 = [(CKDetailsControllerAdapter *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conversation, a3);
    objc_storeWeak(&v13->_delegate, v10);
    v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([v14 isBIAEnabled] && (objc_msgSend(v9, "isBusinessConversation") & 1) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = [v9 isChatBot];
    }

    v13->_useBusinessDetails = v15;

    v13->_addMemberPopoverPresented = 0;
    v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v17 = [v16 isModernDetailsViewEnabled];

    if (v17)
    {
      if (v11)
      {
        [(CKDetailsControllerAdapter *)v13 setCustomDetails:v11];
        goto LABEL_15;
      }

      if (![(CKDetailsControllerAdapter *)v13 useBusinessDetails])
      {
        v27 = [CKModernDetailsControllerFactory detailsControllerWithConversation:v9 delegate:v13];
        modernDetails = v13->_modernDetails;
        v13->_modernDetails = v27;

        v22 = v13->_modernDetails;
        goto LABEL_14;
      }
    }

    else if (![(CKDetailsControllerAdapter *)v13 useBusinessDetails])
    {
      v18 = [CKDetailsController alloc];
      v19 = [(CKDetailsControllerAdapter *)v13 conversation];
      v20 = [(CKDetailsController *)v18 initWithConversation:v19];
      legacyDetails = v13->_legacyDetails;
      v13->_legacyDetails = v20;

      [(CKDetailsController *)v13->_legacyDetails setDetailsControllerDelegate:v13];
      v22 = v13->_legacyDetails;
LABEL_14:
      objc_storeStrong(&v13->_detailsController, v22);
      goto LABEL_15;
    }

    v23 = [CKBusinessDetailsController alloc];
    v24 = [(CKDetailsControllerAdapter *)v13 conversation];
    v25 = [(CKBusinessDetailsController *)v23 initWithConversation:v24 detailsControllerDelegate:v13];
    businessDetails = v13->_businessDetails;
    v13->_businessDetails = v25;

    v22 = v13->_businessDetails;
    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

- (void)stageDetailsFindMyCompositionWithShareType:(int64_t)a3
{
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  [v4 detailsAdapterStageFindMyCompositionWithShareType:a3];
}

- (void)stageLocationRequest
{
  v2 = [(CKDetailsControllerAdapter *)self delegate];
  [v2 detailsAdapterStageLocationRequestComposition];
}

- (void)detailsControllerWillDismiss:(id)a3
{
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  [v4 detailsAdapterWillDismiss:self];
}

- (void)detailsControllerDidDismiss:(id)a3
{
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  [v4 detailsAdapterDidDismiss:self];
}

- (void)dismissDetailsNavigationControllerWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKDetailsControllerAdapter *)self delegate];
    [v6 dismissDetailsNavigationControllerWithCompletion:v7];
  }
}

- (void)dismissDetailsViewAndShowConversationList
{
  v2 = [(CKDetailsControllerAdapter *)self delegate];
  [v2 dismissDetailsViewAndShowConversationList];
}

- (BOOL)isDetailsNavigationControllerDetached
{
  v2 = [(CKDetailsControllerAdapter *)self delegate];
  v3 = [v2 isDetailsNavigationControllerDetached];

  return v3;
}

- (id)detailsControllerBusinessPrivacyInfoPresentingViewController:(id)a3
{
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  v5 = [v4 detailsAdapterBusinessPrivacyInfoPresentingViewController:self];

  return v5;
}

- (void)detailsControllerWantsToPresentKTContactVerificationUI:(id)a3
{
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  [v4 detailsAdapterWantsToPresentKTContactVerificationUI:self];
}

- (void)detailsController:(id)a3 wantsToStageComposition:(id)a4
{
  v5 = a4;
  v6 = [(CKDetailsControllerAdapter *)self delegate];
  [v6 detailsAdapter:self wantsToStageComposition:v5];
}

- (void)detailsControllerDidSelectStopSharingLocation:(id)a3
{
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  [v4 detailsAdapterDidSelectStopSharingLocation:self];
}

- (void)detailsController:(id)a3 shouldComposeConversationWithRecipientAddresses:(id)a4
{
  v8 = a4;
  v5 = [(CKDetailsControllerAdapter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKDetailsControllerAdapter *)self delegate];
    [v7 detailsAdapter:self shouldComposeConversationWithRecipientAddresses:v8];
  }
}

- (id)presentingViewControllerForAlertsFromDetailsController:(id)a3
{
  v4 = [(CKDetailsControllerAdapter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKDetailsControllerAdapter *)self delegate];
    v7 = [v6 presentingViewControllerForAlertsFromDetailsAdapter:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)detailsControllerWantsToPresentReportToAppleUI:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isModernDetailsViewEnabled];

  if (v5)
  {
    v6 = [(CKDetailsControllerAdapter *)self modernDetails];
    [CKKeyTransparencyErrorUtilities showReportToAppleUIFromViewController:v6];
  }
}

- (void)configureDetailsControllerForSearch:(id)a3 searchViewController:(id)a4
{
  v9 = a4;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernDetailsViewEnabled];

  if (v6)
  {
    v7 = [(CKDetailsControllerAdapter *)self modernDetails];
    [v9 willMoveToParentViewController:v7];

    v8 = [(CKDetailsControllerAdapter *)self modernDetails];
    [v8 addChildViewController:v9];
  }
}

- (void)dismissDetailsNavigationController
{
  v2 = [(CKDetailsControllerAdapter *)self delegate];
  [v2 dismissDetailsNavigationControllerWithCompletion:0];
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

- (void)didSelectRemoveParticipantFromDetailsController:(id)a3 participantHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190AE4304(v6, v7);
}

- (void)didSelectLeaveGroupFromDetailsController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AE4DA0(v4);
}

- (void)didSelectDeleteAndBlockFromDetailsController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AE5D24();
}

@end