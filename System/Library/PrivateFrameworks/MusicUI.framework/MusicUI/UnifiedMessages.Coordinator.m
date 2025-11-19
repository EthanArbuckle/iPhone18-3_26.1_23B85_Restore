@interface UnifiedMessages.Coordinator
- (BOOL)engagementTaskViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5;
- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 presentationAction:(int64_t)a5 placement:(id)a6 serviceType:(id)a7;
- (void)engagement:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)engagement:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
@end

@implementation UnifiedMessages.Coordinator

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v8 = sub_21700E514();
  v10 = v9;
  sub_21700E514();
  v11 = a3;
  v12 = a4;

  sub_216A04D9C(v13, a4, v8, v10);
}

- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7
{
  v9 = _Block_copy(a7);
  sub_21700E514();
  sub_21700E514();
  *(swift_allocObject() + 16) = v9;
  v10 = a3;
  v11 = a4;

  sub_216A01254();
}

- (void)engagement:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v7;
  v8 = a3;
  v9 = a4;

  sub_216A05564(v10, a4);
}

- (void)engagement:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v7;
  v8 = a3;
  v9 = a4;

  sub_216A05724();
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 presentationAction:(int64_t)a5 placement:(id)a6 serviceType:(id)a7
{
  sub_21700E514();
  sub_21700E514();
  v9 = a3;
  v10 = a4;

  sub_216A05A54();
}

- (BOOL)engagementTaskViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;

  v11 = sub_216A2B380(v9, v10, self, v8);
  _Block_release(v8);

  return v11 & 1;
}

@end