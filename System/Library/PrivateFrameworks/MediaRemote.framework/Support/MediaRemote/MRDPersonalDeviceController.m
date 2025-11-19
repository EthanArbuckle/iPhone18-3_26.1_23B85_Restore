@interface MRDPersonalDeviceController
- (MRDPersonalDeviceController)init;
- (MRDPersonalDeviceControllerDelegate)delegate;
- (void)_handlePersonalDeviceChangeNotification:(id)a3;
- (void)_onQueue_beginTimerWithInterval:(double)a3;
- (void)_onQueue_recalculateStateForReason:(id)a3;
- (void)_onQueue_restoreState;
@end

@implementation MRDPersonalDeviceController

- (MRDPersonalDeviceController)init
{
  v17.receiver = self;
  v17.super_class = MRDPersonalDeviceController;
  v2 = [(MRDPersonalDeviceController *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremote.MRDPersonalDeviceController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.mediaremote.MRDPersonalDeviceController.delegateQueue", v6);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v7;

    v9 = objc_opt_new();
    currentPersonalDeviceUIDs = v2->_currentPersonalDeviceUIDs;
    v2->_currentPersonalDeviceUIDs = v9;

    v2->_personalDeviceWasRecentlyAttached = 0;
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_handlePersonalDeviceChangeNotification:" name:MRAVOutputContextDidAddPersonalDeviceNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_handlePersonalDeviceChangeNotification:" name:MRAVOutputContextDidRemovePersonalDeviceNotification object:0];

    v13 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AEBBC;
    block[3] = &unk_1004B6D08;
    v16 = v2;
    dispatch_async(v13, block);
  }

  return v2;
}

- (void)_handlePersonalDeviceChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEC38;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onQueue_restoreState
{
  v3 = [(MRDPersonalDeviceController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[MRAVOutputContext sharedAudioPresentationContext];
  v5 = [v4 personalDeviceUIDs];

  if (![v5 count])
  {
    goto LABEL_9;
  }

  v6 = +[MRDSettings currentSettings];
  v7 = [v6 personalDeviceState];

  v8 = [v7 objectForKeyedSubscript:@"kMRDPersonalDeviceControllerPersonalDeviceStateDateKey"];
  v9 = [v7 objectForKeyedSubscript:@"kMRDPersonalDeviceControllerPersonalDeviceStateDevicesKey"];
  v10 = +[MRUserSettings currentSettings];
  [v10 personalDeviceLockScreenTimeout];
  v12 = v11;
  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:v8];
  v15 = v12 - v14;

  if (v15 <= 0.0 || ![v9 count] || (+[NSSet setWithArray:](NSSet, "setWithArray:", v9), v16 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v5), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToSet:", v17), v17, v16, !v18))
  {

LABEL_9:
    [(MRDPersonalDeviceController *)self _onQueue_recalculateStateForReason:@"Initial load with no persisted state."];
    goto LABEL_10;
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v9;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDPersonalDeviceController] Restoring personal device state for devices %@. Remaining time %f.", &v21, 0x16u);
  }

  [(MRDPersonalDeviceController *)self setPersonalDeviceWasRecentlyAttached:1];
  v20 = [NSSet setWithArray:v5];
  [(MRDPersonalDeviceController *)self setCurrentPersonalDeviceUIDs:v20];

  [(MRDPersonalDeviceController *)self _onQueue_beginTimerWithInterval:v15];
LABEL_10:
}

- (void)_onQueue_recalculateStateForReason:(id)a3
{
  v4 = a3;
  v5 = [(MRDPersonalDeviceController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDPersonalDeviceController] Recalculating state for reason: %@", buf, 0xCu);
  }

  v7 = +[MRAVOutputContext sharedAudioPresentationContext];
  v8 = [v7 personalDeviceUIDs];
  v9 = v8;
  v10 = &__NSArray0__struct;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [(MRDPersonalDeviceController *)self currentPersonalDeviceUIDs];
        v19 = [v18 containsObject:v17];

        if ((v19 & 1) == 0)
        {
          v20 = _MRLogForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v17;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MRDPersonalDeviceController] New personal device %@ recently attached.", buf, 0xCu);
          }

          [(MRDPersonalDeviceController *)self setPersonalDeviceWasRecentlyAttached:1];
          v21 = +[MRUserSettings currentSettings];
          [v21 personalDeviceLockScreenTimeout];
          [(MRDPersonalDeviceController *)self _onQueue_beginTimerWithInterval:?];

          goto LABEL_17;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v22 = [NSSet setWithArray:v12];
  [(MRDPersonalDeviceController *)self setCurrentPersonalDeviceUIDs:v22];

  v37[0] = @"kMRDPersonalDeviceControllerPersonalDeviceStateDateKey";
  v23 = +[NSDate date];
  v37[1] = @"kMRDPersonalDeviceControllerPersonalDeviceStateDevicesKey";
  v38[0] = v23;
  v38[1] = v12;
  v24 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v25 = +[MRDSettings currentSettings];
  [v25 setPersonalDeviceState:v24];

  v26 = [(MRDPersonalDeviceController *)self currentPersonalDeviceUIDs];
  v27 = [v26 count];

  if (!v27)
  {
    [(MRDPersonalDeviceController *)self setPersonalDeviceWasRecentlyAttached:0];
    v28 = [(MRDPersonalDeviceController *)self overrideTimer];
    [v28 invalidate];
  }

  v29 = [(MRDPersonalDeviceController *)self delegate];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = [(MRDPersonalDeviceController *)self delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AF29C;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(v31, block);
  }
}

- (void)_onQueue_beginTimerWithInterval:(double)a3
{
  v5 = [(MRDPersonalDeviceController *)self queue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v6 = [MRPersistentTimer alloc];
  v7 = [(MRDPersonalDeviceController *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AF428;
  v9[3] = &unk_1004B9630;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v8 = [v6 initWithInterval:@"com.apple.mediaremote.mrdpersonaldevicecontroller.overridetimer" name:v7 queue:v9 block:a3];
  [(MRDPersonalDeviceController *)self setOverrideTimer:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (MRDPersonalDeviceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end