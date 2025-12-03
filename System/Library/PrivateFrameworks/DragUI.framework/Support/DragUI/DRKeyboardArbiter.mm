@interface DRKeyboardArbiter
- (id)proxy;
- (void)connect;
- (void)disconnect;
- (void)queue_activeProcessResignWithCompletion:(id)completion;
- (void)queue_endInputSessionWithCompletion:(id)completion;
- (void)queue_getDebugInfoWithCompletion:(id)completion;
- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete;
- (void)queue_keyboardChangedWithCompletion:(id)completion;
- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete;
- (void)queue_keyboardSuppressed:(BOOL)suppressed withCompletion:(id)completion;
- (void)queue_keyboardTransition:(id)transition event:(unint64_t)event withInfo:(id)info onComplete:(id)complete;
- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete;
- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion;
- (void)queue_setKeyboardDisabled:(BOOL)disabled withCompletion:(id)completion;
- (void)queue_setLastEventSource:(int64_t)source withCompletion:(id)completion;
@end

@implementation DRKeyboardArbiter

- (void)connect
{
  objc_initWeak(&location, self);
  v3 = +[_UIRemoteKeyboards createArbiterConnection];
  connection = self->_connection;
  self->_connection = v3;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008414;
  v8[3] = &unk_100054CA0;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008470;
  v6[3] = &unk_100054CA0;
  objc_copyWeak(&v7, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  [(NSXPCConnection *)self->_connection resume];
  proxy = [(DRKeyboardArbiter *)self proxy];
  [proxy setWantsFencing:0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)disconnect
{
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (id)proxy
{
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000085A0;
  v5[3] = &unk_100054D18;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete
{
  completeCopy = complete;
  animationFence = [changed animationFence];
  [animationFence invalidate];

  v6 = completeCopy;
  if (completeCopy)
  {
    (*(completeCopy + 2))(completeCopy);
    v6 = completeCopy;
  }
}

- (void)queue_keyboardChangedWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete
{
  if (complete)
  {
    (*(complete + 2))(complete, changed);
  }
}

- (void)queue_keyboardTransition:(id)transition event:(unint64_t)event withInfo:(id)info onComplete:(id)complete
{
  if (complete)
  {
    (*(complete + 2))(complete);
  }
}

- (void)queue_keyboardSuppressed:(BOOL)suppressed withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)queue_getDebugInfoWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, &off_100057A60);
  }
}

- (void)queue_setKeyboardDisabled:(BOOL)disabled withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)queue_setLastEventSource:(int64_t)source withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)queue_activeProcessResignWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete
{
  if (complete)
  {
    (*(complete + 2))(complete);
  }
}

- (void)queue_endInputSessionWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end