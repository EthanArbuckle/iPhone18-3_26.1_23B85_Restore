@interface _UIShareInvitationModalAddParticipantController
- (NSString)continueActionTitle;
- (_UIShareInvitationModalAddParticipantController)initWithCurrentAddresses:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setCompletion:(id)a3;
- (void)setContinueActionTitle:(id)a3;
@end

@implementation _UIShareInvitationModalAddParticipantController

- (_UIShareInvitationModalAddParticipantController)initWithCurrentAddresses:(id)a3
{
  v4 = a3;
  v5 = [[_UIShareInvitationAddParticipantController alloc] initWithCurrentAddresses:v4];

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

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(_UIShareInvitationModalAddParticipantController *)self completion];
  v3[2](v3, 1, &__NSArray0__struct);
}

- (void)setCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_completion != v4)
  {
    v6 = [v4 copy];
    completion = self->_completion;
    self->_completion = v6;

    objc_initWeak(&location, self);
    v8 = [(_UIShareInvitationModalAddParticipantController *)self addParticipantController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005A08;
    v9[3] = &unk_100106E28;
    objc_copyWeak(&v10, &location);
    [v8 setCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (NSString)continueActionTitle
{
  v2 = [(_UIShareInvitationModalAddParticipantController *)self addParticipantController];
  v3 = [v2 navigationItem];
  v4 = [v3 rightBarButtonItem];
  v5 = [v4 title];

  return v5;
}

- (void)setContinueActionTitle:(id)a3
{
  v4 = a3;
  v7 = [(_UIShareInvitationModalAddParticipantController *)self addParticipantController];
  v5 = [v7 navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setTitle:v4];
}

@end