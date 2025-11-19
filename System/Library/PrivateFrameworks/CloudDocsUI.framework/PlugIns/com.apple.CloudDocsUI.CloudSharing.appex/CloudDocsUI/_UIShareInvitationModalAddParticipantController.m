@interface _UIShareInvitationModalAddParticipantController
- (NSString)continueActionTitle;
- (_UIShareInvitationModalAddParticipantController)initWithShare:(id)a3 uti:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setCompletion:(id)a3;
- (void)setContinueActionTitle:(id)a3;
@end

@implementation _UIShareInvitationModalAddParticipantController

- (_UIShareInvitationModalAddParticipantController)initWithShare:(id)a3 uti:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_UIShareInvitationAddParticipantController alloc] initWithShare:v7 uti:v6];

  v12.receiver = self;
  v12.super_class = _UIShareInvitationModalAddParticipantController;
  v9 = [(_UIShareInvitationModalAddParticipantController *)&v12 initWithRootViewController:v8];
  v10 = v9;
  if (v9)
  {
    [(_UIShareInvitationModalAddParticipantController *)v9 setAddParticipantController:v8];
    [(_UIShareInvitationModalAddParticipantController *)v10 setModalPresentationStyle:2];
  }

  return v10;
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
    v9[2] = sub_10000FAEC;
    v9[3] = &unk_10004CD40;
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