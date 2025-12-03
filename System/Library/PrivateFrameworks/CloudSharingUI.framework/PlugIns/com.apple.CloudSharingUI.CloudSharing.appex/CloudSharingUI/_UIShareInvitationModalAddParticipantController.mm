@interface _UIShareInvitationModalAddParticipantController
- (NSString)continueActionTitle;
- (_UIShareInvitationModalAddParticipantController)initWithCurrentAddresses:(id)addresses;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setCompletion:(id)completion;
- (void)setContinueActionTitle:(id)title;
@end

@implementation _UIShareInvitationModalAddParticipantController

- (_UIShareInvitationModalAddParticipantController)initWithCurrentAddresses:(id)addresses
{
  addressesCopy = addresses;
  v5 = [[_UIShareInvitationAddParticipantController alloc] initWithCurrentAddresses:addressesCopy];

  v9.receiver = self;
  v9.super_class = _UIShareInvitationModalAddParticipantController;
  v6 = [(_UIShareInvitationModalAddParticipantController *)&v9 initWithRootViewController:v5];
  v7 = v6;
  if (v6)
  {
    [(_UIShareInvitationModalAddParticipantController *)v6 setAddParticipantController:v5];
    [(_UIShareInvitationModalAddParticipantController *)v7 setModalPresentationStyle:2];
  }

  return v7;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  completion = [(_UIShareInvitationModalAddParticipantController *)self completion];
  completion[2](completion, 1, &__NSArray0__struct);
}

- (void)setCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_completion != completionCopy)
  {
    v6 = [completionCopy copy];
    completion = self->_completion;
    self->_completion = v6;

    objc_initWeak(&location, self);
    addParticipantController = [(_UIShareInvitationModalAddParticipantController *)self addParticipantController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005A08;
    v9[3] = &unk_100106E28;
    objc_copyWeak(&v10, &location);
    [addParticipantController setCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (NSString)continueActionTitle
{
  addParticipantController = [(_UIShareInvitationModalAddParticipantController *)self addParticipantController];
  navigationItem = [addParticipantController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  title = [rightBarButtonItem title];

  return title;
}

- (void)setContinueActionTitle:(id)title
{
  titleCopy = title;
  addParticipantController = [(_UIShareInvitationModalAddParticipantController *)self addParticipantController];
  navigationItem = [addParticipantController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setTitle:titleCopy];
}

@end