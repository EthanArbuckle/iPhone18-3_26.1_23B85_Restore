@interface UnifiedMessages.Coordinator
- (BOOL)engagementTaskViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)engagement:(id)engagement didUpdateRequest:(id)request presentationAction:(int64_t)action placement:(id)placement serviceType:(id)type;
- (void)engagement:(id)engagement handleDialogRequest:(id)request completion:(id)completion;
- (void)engagement:(id)engagement handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation UnifiedMessages.Coordinator

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v8 = sub_21700E514();
  v10 = v9;
  sub_21700E514();
  engagementCopy = engagement;
  requestCopy = request;

  sub_216A04D9C(v13, request, v8, v10);
}

- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion
{
  v9 = _Block_copy(completion);
  sub_21700E514();
  sub_21700E514();
  *(swift_allocObject() + 16) = v9;
  engagementCopy = engagement;
  requestCopy = request;

  sub_216A01254();
}

- (void)engagement:(id)engagement handleDialogRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v7;
  engagementCopy = engagement;
  requestCopy = request;

  sub_216A05564(v10, request);
}

- (void)engagement:(id)engagement handleEngagementRequest:(id)request completion:(id)completion
{
  v7 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v7;
  engagementCopy = engagement;
  requestCopy = request;

  sub_216A05724();
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request presentationAction:(int64_t)action placement:(id)placement serviceType:(id)type
{
  sub_21700E514();
  sub_21700E514();
  engagementCopy = engagement;
  requestCopy = request;

  sub_216A05A54();
}

- (BOOL)engagementTaskViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  controllerCopy = controller;
  actionCopy = action;

  v11 = sub_216A2B380(controllerCopy, actionCopy, self, v8);
  _Block_release(v8);

  return v11 & 1;
}

@end