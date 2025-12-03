@interface MessageHandler
- (BOOL)messageViewController:(id)controller handleDelegateAction:(id)action completionHandler:(id)handler;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic;
@end

@implementation MessageHandler

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_216DF311C(selfCopy, resultCopy);
}

- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic
{
  v8 = sub_21700E354();
  if (topic)
  {
    v9 = sub_21700E514();
    topic = v10;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_216DF31C4(selfCopy, v8, v9, topic);
}

- (BOOL)messageViewController:(id)controller handleDelegateAction:(id)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  v12 = sub_216DF3308(controllerCopy, actionCopy, selfCopy, v8);
  _Block_release(v8);

  return v12 & 1;
}

@end