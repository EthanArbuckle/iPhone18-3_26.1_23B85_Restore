@interface MessageHandler
- (BOOL)messageViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5;
@end

@implementation MessageHandler

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_216DF311C(v8, v7);
}

- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5
{
  v8 = sub_21700E354();
  if (a5)
  {
    v9 = sub_21700E514();
    a5 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3;
  v12 = self;
  sub_216DF31C4(v12, v8, v9, a5);
}

- (BOOL)messageViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = sub_216DF3308(v9, v10, v11, v8);
  _Block_release(v8);

  return v12 & 1;
}

@end