@interface MRDPhoneCallObserver
- (BOOL)callControllerWillHandleCommandForBargeCalls:(id)a3;
- (MRDPhoneCallObserver)init;
- (MRDPhoneCallObserverDelegate)delegate;
- (void)_notifyDelegate:(id)a3;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)handleMediaRemoteCommand:(id)a3 completion:(id)a4;
- (void)numberOfActivePhoneCalls:(id)a3;
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

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v6 = [a4 UUID];
  v5 = [v6 UUIDString];
  [(MRDPhoneCallObserver *)self _notifyDelegate:v5];
}

- (void)_notifyDelegate:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 phoneCallObserver:self callDidChange:v7];
  }
}

- (void)numberOfActivePhoneCalls:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CXCallObserver *)self->_callObserver calls];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (([v11 hasEnded] & 1) == 0)
          {
            v8 += [v11 isScreening] ^ 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v4[2](v4, v8);
  }
}

- (BOOL)callControllerWillHandleCommandForBargeCalls:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(TUCallCenter *)self->_callCenter queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100148AD4;
  block[3] = &unk_1004BA9B8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)handleMediaRemoteCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate now];
  v9 = [NSMutableString alloc];
  v10 = [v6 commandID];
  v11 = [v9 initWithFormat:@"%@<%@>", @"MRDPhoneCallObserver.handleMediaRemoteCommand", v10];

  v12 = [v6 playerPath];

  if (v12)
  {
    v13 = [v6 playerPath];
    [v11 appendFormat:@" for %@", v13];
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
  v15 = v6;
  v26 = v15;
  v16 = v8;
  v27 = v16;
  v17 = v7;
  v28 = v17;
  v18 = objc_retainBlock(v25);
  callCenter = self->_callCenter;
  v20 = objc_opt_respondsToSelector();
  v21 = self->_callCenter;
  if (v20)
  {
    v22 = [v15 commandType];
    v23 = [v15 routeUID];
    [(TUCallCenter *)v21 handleMediaRemoteCommand:v22 sourceIdentifier:v23 completion:v18];
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