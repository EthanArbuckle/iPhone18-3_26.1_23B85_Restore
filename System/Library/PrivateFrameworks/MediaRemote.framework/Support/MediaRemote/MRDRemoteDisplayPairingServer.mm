@interface MRDRemoteDisplayPairingServer
- (MRDRemoteDisplayPairingServer)init;
- (void)_activateDiscoveryWithCompletion:(id)completion;
- (void)_activatePairingServerWithCompletion:(id)completion;
- (void)_cancelTimerIfNeeded;
- (void)_invalidate;
- (void)_restartTimer:(int64_t)timer;
- (void)activatePairingWithTimeout:(int64_t)timeout completion:(id)completion;
- (void)invalidate;
@end

@implementation MRDRemoteDisplayPairingServer

- (MRDRemoteDisplayPairingServer)init
{
  v6.receiver = self;
  v6.super_class = MRDRemoteDisplayPairingServer;
  v2 = [(MRDRemoteDisplayPairingServer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MRDRemoteDisplayPairingServer", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)activatePairingWithTimeout:(int64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FB88;
  block[3] = &unk_1004B94C0;
  v10 = completionCopy;
  timeoutCopy = timeout;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FDEC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingServer] Invalidate", v9, 2u);
  }

  pairingServer = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [pairingServer stopPairingServer];

  pairingServer2 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [pairingServer2 invalidate];

  [(MRDRemoteDisplayPairingServer *)self setPairingServer:0];
  [(MRDRemoteDisplayPairingServer *)self setPairingData:0];
  discovery = [(MRDRemoteDisplayPairingServer *)self discovery];
  [discovery invalidate];

  [(MRDRemoteDisplayPairingServer *)self setDiscovery:0];
  [(MRDRemoteDisplayPairingServer *)self _cancelTimerIfNeeded];
  [(MRDRemoteDisplayPairingServer *)self setActive:0];
  invalidationHandler = [(MRDRemoteDisplayPairingServer *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(MRDRemoteDisplayPairingServer *)self invalidationHandler];
    invalidationHandler2[2]();

    [(MRDRemoteDisplayPairingServer *)self setInvalidationHandler:0];
  }
}

- (void)_cancelTimerIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  timer = [(MRDRemoteDisplayPairingServer *)self timer];

  if (timer)
  {
    timer2 = [(MRDRemoteDisplayPairingServer *)self timer];
    dispatch_source_cancel(timer2);

    [(MRDRemoteDisplayPairingServer *)self setTimer:0];
  }
}

- (void)_restartTimer:(int64_t)timer
{
  dispatch_assert_queue_V2(self->_queue);
  [(MRDRemoteDisplayPairingServer *)self _cancelTimerIfNeeded];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
  [(MRDRemoteDisplayPairingServer *)self setTimer:v5];

  timer = [(MRDRemoteDisplayPairingServer *)self timer];
  v7 = dispatch_time(0, 1000000000 * timer);
  dispatch_source_set_timer(timer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_initWeak(&location, self);
  timer2 = [(MRDRemoteDisplayPairingServer *)self timer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100090124;
  handler[3] = &unk_1004B94E8;
  v11[1] = timer;
  objc_copyWeak(v11, &location);
  dispatch_source_set_event_handler(timer2, handler);

  timer3 = [(MRDRemoteDisplayPairingServer *)self timer];
  dispatch_resume(timer3);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_activateDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(RPRemoteDisplayDiscovery);
  [(MRDRemoteDisplayPairingServer *)self setDiscovery:v5];

  discovery = [(MRDRemoteDisplayPairingServer *)self discovery];
  [discovery setDiscoveryFlags:{objc_msgSend(discovery, "discoveryFlags") | 3}];

  queue = self->_queue;
  discovery2 = [(MRDRemoteDisplayPairingServer *)self discovery];
  [discovery2 setDispatchQueue:queue];

  objc_initWeak(&location, self);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  discovery3 = [(MRDRemoteDisplayPairingServer *)self discovery];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000903C0;
  v15[3] = &unk_1004B9510;
  v15[4] = v17;
  objc_copyWeak(&v16, &location);
  [discovery3 setDiscoverySessionStateChangedHandler:v15];

  discovery4 = [(MRDRemoteDisplayPairingServer *)self discovery];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000904B8;
  v12[3] = &unk_1004B9498;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [discovery4 activateWithCompletion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  _Block_object_dispose(v17, 8);
  objc_destroyWeak(&location);
}

- (void)_activatePairingServerWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(RPRemoteDisplayServer);
  [(MRDRemoteDisplayPairingServer *)self setPairingServer:v5];

  pairingServer = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [pairingServer setServiceType:@"com.apple.ddui.guestpairing"];

  queue = self->_queue;
  pairingServer2 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [pairingServer2 setDispatchQueue:queue];

  pairingServer3 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [pairingServer3 setGuestPairStartReason:3];

  pairingServer4 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [pairingServer4 setInterruptionHandler:&stru_1004B9530];

  pairingServer5 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [pairingServer5 setInvalidationHandler:&stru_1004B9550];

  objc_initWeak(&location, self);
  pairingServer6 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000907E8;
  v14[3] = &unk_1004B95A0;
  v13 = completionCopy;
  v15 = v13;
  objc_copyWeak(&v16, &location);
  [pairingServer6 activateWithCompletion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end