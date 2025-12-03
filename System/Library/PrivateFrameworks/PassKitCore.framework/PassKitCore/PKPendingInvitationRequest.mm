@interface PKPendingInvitationRequest
- (PKPendingInvitationRequest)initWithInvitation:(id)invitation completion:(id)completion;
- (void)invokeCompletionWithInvitation:(id)invitation error:(id)error;
@end

@implementation PKPendingInvitationRequest

- (PKPendingInvitationRequest)initWithInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  v9 = completionCopy;
  selfCopy = 0;
  if (invitationCopy && completionCopy)
  {
    v11 = [(PKPendingInvitationRequest *)self init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_invitation, invitation);
      v13 = _Block_copy(v9);
      completion = v12->_completion;
      v12->_completion = v13;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)invokeCompletionWithInvitation:(id)invitation error:(id)error
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, invitation, error);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

@end