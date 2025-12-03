@interface MRDRemoteDisplayPairingAction
- (MRDRemoteDisplayPairingAction)init;
- (void)_performWithPairingInfo:(id)info completion:(id)completion;
- (void)performWithPairingInfo:(id)info completion:(id)completion;
@end

@implementation MRDRemoteDisplayPairingAction

- (MRDRemoteDisplayPairingAction)init
{
  v6.receiver = self;
  v6.super_class = MRDRemoteDisplayPairingAction;
  v2 = [(MRDRemoteDisplayPairingAction *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaRemote.MRDRemoteDisplayPairingAction", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)performWithPairingInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B16BC;
  block[3] = &unk_1004B71F8;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)_performWithPairingInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingAction] Perform pairing with info: %@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(MRDRemoteDisplayPairingAction *)self connecting])
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003B075C(v9);
    }

    v10 = [[NSError alloc] initWithMRError:2 userInfo:0];
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    [(MRDRemoteDisplayPairingAction *)self setConnecting:1];
    v10 = objc_alloc_init(RPRemoteDisplayDevice);
    v11 = +[NSUUID UUID];
    uUIDString = [v11 UUIDString];
    [v10 setIdentifier:uUIDString];

    v13 = objc_alloc_init(RPRemoteDisplaySession);
    remoteDisplaySession = self->_remoteDisplaySession;
    self->_remoteDisplaySession = v13;

    [(RPRemoteDisplaySession *)self->_remoteDisplaySession setDestinationDevice:v10];
    [(RPRemoteDisplaySession *)self->_remoteDisplaySession setDispatchQueue:self->_queue];
    [(RPRemoteDisplaySession *)self->_remoteDisplaySession setPairingInfo:infoCopy];
    [(RPRemoteDisplaySession *)self->_remoteDisplaySession setPasswordType:10];
    [(RPRemoteDisplaySession *)self->_remoteDisplaySession setServiceType:@"com.apple.ddui.guestpairing"];
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingAction] Performing guest pairing...", buf, 2u);
    }

    objc_initWeak(buf, self);
    v16 = self->_remoteDisplaySession;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001B19B8;
    v17[3] = &unk_1004B9498;
    objc_copyWeak(&v19, buf);
    v18 = completionCopy;
    [(RPRemoteDisplaySession *)v16 activateWithCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

@end