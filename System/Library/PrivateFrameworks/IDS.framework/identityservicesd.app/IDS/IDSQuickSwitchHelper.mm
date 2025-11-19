@interface IDSQuickSwitchHelper
+ (id)sharedInstance;
- (BOOL)isQuickSwitchingToAnotherDevice;
- (IDSQuickSwitchHelper)init;
- (void)_resetCommunicationStateBeforeQuickSwitchDeactivatePairedDevices:(BOOL)a3 withCompletionBlock:(id)a4;
- (void)_setIsQuickSwitchingToAnotherDevice:(BOOL)a3;
- (void)dealloc;
- (void)initiateQuickSwitchToDeviceWithCBUUID:(id)a3 force:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation IDSQuickSwitchHelper

+ (id)sharedInstance
{
  if (qword_100CBD200 != -1)
  {
    sub_10091C774();
  }

  v3 = qword_100CBD208;

  return v3;
}

- (BOOL)isQuickSwitchingToAnotherDevice
{
  pthread_mutex_lock(&self->_isQuickSwitchingMutex);
  isQuickSwitchingToAnotherDevice = self->_isQuickSwitchingToAnotherDevice;
  pthread_mutex_unlock(&self->_isQuickSwitchingMutex);
  return isQuickSwitchingToAnotherDevice;
}

- (IDSQuickSwitchHelper)init
{
  v5.receiver = self;
  v5.super_class = IDSQuickSwitchHelper;
  v2 = [(IDSQuickSwitchHelper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_isQuickSwitchingMutex, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_isQuickSwitchingMutex);
  v3.receiver = self;
  v3.super_class = IDSQuickSwitchHelper;
  [(IDSQuickSwitchHelper *)&v3 dealloc];
}

- (void)_setIsQuickSwitchingToAnotherDevice:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "isQuickSwitching set to %@", &v7, 0xCu);
  }

  pthread_mutex_lock(&self->_isQuickSwitchingMutex);
  self->_isQuickSwitchingToAnotherDevice = v3;
  pthread_mutex_unlock(&self->_isQuickSwitchingMutex);
}

- (void)initiateQuickSwitchToDeviceWithCBUUID:(id)a3 force:(BOOL)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[IDSPairingManager sharedInstance];
  v11 = [v10 pairedDeviceUUIDString];

  v12 = [v8 isEqualToIgnoringCase:v11];
  v13 = v12;
  if (a4)
  {
    v14 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v26 = v11;
      v27 = 2113;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Forcing QuickSwitch {activeCBUUID: %{private}@, cbuuid: %{private}@}", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    v16 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Initiating QuickSwitch to (cbuuid %@)", buf, 0xCu);
    }

    if ((v13 & 1) == 0)
    {
      [(IDSQuickSwitchHelper *)self _setIsQuickSwitchingToAnotherDevice:1];
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v18 = v17;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1003F5B28;
    v19[3] = &unk_100BDADF8;
    v22 = v9;
    v24 = v13;
    v20 = v8;
    v21 = self;
    v23 = v18;
    [(IDSQuickSwitchHelper *)self _resetCommunicationStateBeforeQuickSwitchDeactivatePairedDevices:v13 ^ 1 withCompletionBlock:v19];

    goto LABEL_15;
  }

  v15 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We're already switched to (cbuuid %@), ignoring request to switch...", buf, 0xCu);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

LABEL_15:
}

- (void)_resetCommunicationStateBeforeQuickSwitchDeactivatePairedDevices:(BOOL)a3 withCompletionBlock:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = +[IMRGLog watchPairing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting communication before QuickSwitch {shouldDeactivatePairedDevices: %{public}@}", buf, 0xCu);
  }

  v8 = im_primary_queue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003F604C;
  v10[3] = &unk_100BDAE20;
  v12 = v4;
  v11 = v5;
  v9 = v5;
  dispatch_async(v8, v10);
}

@end