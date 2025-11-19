@interface MRDRemoteDisplayPairingServer
- (MRDRemoteDisplayPairingServer)init;
- (void)_activateDiscoveryWithCompletion:(id)a3;
- (void)_activatePairingServerWithCompletion:(id)a3;
- (void)_cancelTimerIfNeeded;
- (void)_invalidate;
- (void)_restartTimer:(int64_t)a3;
- (void)activatePairingWithTimeout:(int64_t)a3 completion:(id)a4;
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

- (void)activatePairingWithTimeout:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FB88;
  block[3] = &unk_1004B94C0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
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

  v4 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [v4 stopPairingServer];

  v5 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [v5 invalidate];

  [(MRDRemoteDisplayPairingServer *)self setPairingServer:0];
  [(MRDRemoteDisplayPairingServer *)self setPairingData:0];
  v6 = [(MRDRemoteDisplayPairingServer *)self discovery];
  [v6 invalidate];

  [(MRDRemoteDisplayPairingServer *)self setDiscovery:0];
  [(MRDRemoteDisplayPairingServer *)self _cancelTimerIfNeeded];
  [(MRDRemoteDisplayPairingServer *)self setActive:0];
  v7 = [(MRDRemoteDisplayPairingServer *)self invalidationHandler];

  if (v7)
  {
    v8 = [(MRDRemoteDisplayPairingServer *)self invalidationHandler];
    v8[2]();

    [(MRDRemoteDisplayPairingServer *)self setInvalidationHandler:0];
  }
}

- (void)_cancelTimerIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(MRDRemoteDisplayPairingServer *)self timer];

  if (v3)
  {
    v4 = [(MRDRemoteDisplayPairingServer *)self timer];
    dispatch_source_cancel(v4);

    [(MRDRemoteDisplayPairingServer *)self setTimer:0];
  }
}

- (void)_restartTimer:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  [(MRDRemoteDisplayPairingServer *)self _cancelTimerIfNeeded];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
  [(MRDRemoteDisplayPairingServer *)self setTimer:v5];

  v6 = [(MRDRemoteDisplayPairingServer *)self timer];
  v7 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_initWeak(&location, self);
  v8 = [(MRDRemoteDisplayPairingServer *)self timer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100090124;
  handler[3] = &unk_1004B94E8;
  v11[1] = a3;
  objc_copyWeak(v11, &location);
  dispatch_source_set_event_handler(v8, handler);

  v9 = [(MRDRemoteDisplayPairingServer *)self timer];
  dispatch_resume(v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_activateDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(RPRemoteDisplayDiscovery);
  [(MRDRemoteDisplayPairingServer *)self setDiscovery:v5];

  v6 = [(MRDRemoteDisplayPairingServer *)self discovery];
  [v6 setDiscoveryFlags:{objc_msgSend(v6, "discoveryFlags") | 3}];

  queue = self->_queue;
  v8 = [(MRDRemoteDisplayPairingServer *)self discovery];
  [v8 setDispatchQueue:queue];

  objc_initWeak(&location, self);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v9 = [(MRDRemoteDisplayPairingServer *)self discovery];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000903C0;
  v15[3] = &unk_1004B9510;
  v15[4] = v17;
  objc_copyWeak(&v16, &location);
  [v9 setDiscoverySessionStateChangedHandler:v15];

  v10 = [(MRDRemoteDisplayPairingServer *)self discovery];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000904B8;
  v12[3] = &unk_1004B9498;
  objc_copyWeak(&v14, &location);
  v11 = v4;
  v13 = v11;
  [v10 activateWithCompletion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  _Block_object_dispose(v17, 8);
  objc_destroyWeak(&location);
}

- (void)_activatePairingServerWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(RPRemoteDisplayServer);
  [(MRDRemoteDisplayPairingServer *)self setPairingServer:v5];

  v6 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [v6 setServiceType:@"com.apple.ddui.guestpairing"];

  queue = self->_queue;
  v8 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [v8 setDispatchQueue:queue];

  v9 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [v9 setGuestPairStartReason:3];

  v10 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [v10 setInterruptionHandler:&stru_1004B9530];

  v11 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  [v11 setInvalidationHandler:&stru_1004B9550];

  objc_initWeak(&location, self);
  v12 = [(MRDRemoteDisplayPairingServer *)self pairingServer];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000907E8;
  v14[3] = &unk_1004B95A0;
  v13 = v4;
  v15 = v13;
  objc_copyWeak(&v16, &location);
  [v12 activateWithCompletion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end