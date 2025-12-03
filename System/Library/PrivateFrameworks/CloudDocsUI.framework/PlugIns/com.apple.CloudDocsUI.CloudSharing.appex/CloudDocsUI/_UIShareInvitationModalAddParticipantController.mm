@interface _UIShareInvitationModalAddParticipantController
- (NSString)continueActionTitle;
- (_UIShareInvitationModalAddParticipantController)initWithShare:(id)share uti:(id)uti;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setCompletion:(id)completion;
- (void)setContinueActionTitle:(id)title;
@end

@implementation _UIShareInvitationModalAddParticipantController

- (_UIShareInvitationModalAddParticipantController)initWithShare:(id)share uti:(id)uti
{
  utiCopy = uti;
  shareCopy = share;
  v8 = [[_UIShareInvitationAddParticipantController alloc] initWithShare:shareCopy uti:utiCopy];

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
    v9[2] = sub_10000FAEC;
    v9[3] = &unk_10004CD40;
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