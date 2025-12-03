@interface MRDPhoneCallObserver
- (BOOL)callControllerWillHandleCommandForBargeCalls:(id)calls;
- (MRDPhoneCallObserver)init;
- (MRDPhoneCallObserverDelegate)delegate;
- (void)_notifyDelegate:(id)delegate;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)handleMediaRemoteCommand:(id)command completion:(id)completion;
- (void)numberOfActivePhoneCalls:(id)calls;
@end

@implementation MRDPhoneCallObserver

- (MRDPhoneCallObserver)init
{
  v10.receiver = self;
  v10.super_class = MRDPhoneCallObserver;
  v2 = [(MRDPhoneCallObserver *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(CXCallObserver);
    callObserver = v2->_callObserver;
    v2->_callObserver = v3;

    [(CXCallObserver *)v2->_callObserver setDelegate:v2 queue:&_dispatch_main_q];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.mediaremote.TUCallCenter", v5);

    v7 = [TUCallCenter callCenterWithQueue:v6];
    callCenter = v2->_callCenter;
    v2->_callCenter = v7;
  }

  return v2;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  uUID = [changed UUID];
  uUIDString = [uUID UUIDString];
  [(MRDPhoneCallObserver *)self _notifyDelegate:uUIDString];
}

- (void)_notifyDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 phoneCallObserver:self callDidChange:delegateCopy];
  }
}

- (void)numberOfActivePhoneCalls:(id)calls
{
  callsCopy = calls;
  if (callsCopy)
  {
    calls = [(CXCallObserver *)self->_callObserver calls];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [calls countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(calls);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (([v11 hasEnded] & 1) == 0)
          {
            v8 += [v11 isScreening] ^ 1;
          }
        }

        v7 = [calls countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    callsCopy[2](callsCopy, v8);
  }
}

- (BOOL)callControllerWillHandleCommandForBargeCalls:(id)calls
{
  callsCopy = calls;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(TUCallCenter *)self->_callCenter queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100148AD4;
  block[3] = &unk_1004BA9B8;
  v9 = callsCopy;
  v10 = &v11;
  block[4] = self;
  v6 = callsCopy;
  dispatch_sync(queue, block);

  LOBYTE(callsCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return callsCopy;
}

- (void)handleMediaRemoteCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = +[NSDate now];
  v9 = [NSMutableString alloc];
  commandID = [commandCopy commandID];
  v11 = [v9 initWithFormat:@"%@<%@>", @"MRDPhoneCallObserver.handleMediaRemoteCommand", commandID];

  playerPath = [commandCopy playerPath];

  if (playerPath)
  {
    playerPath2 = [commandCopy playerPath];
    [v11 appendFormat:@" for %@", playerPath2];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100148E10;
  v25[3] = &unk_1004BECB8;
  v15 = commandCopy;
  v26 = v15;
  v16 = v8;
  v27 = v16;
  v17 = completionCopy;
  v28 = v17;
  v18 = objc_retainBlock(v25);
  callCenter = self->_callCenter;
  v20 = objc_opt_respondsToSelector();
  v21 = self->_callCenter;
  if (v20)
  {
    commandType = [v15 commandType];
    routeUID = [v15 routeUID];
    [(TUCallCenter *)v21 handleMediaRemoteCommand:commandType sourceIdentifier:routeUID completion:v18];
  }

  else
  {
    v24 = self->_callCenter;
    if (objc_opt_respondsToSelector())
    {
      -[TUCallCenter handleMediaRemoteCommand:completion:](self->_callCenter, "handleMediaRemoteCommand:completion:", [v15 commandType], v18);
    }
  }
}

- (MRDPhoneCallObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end