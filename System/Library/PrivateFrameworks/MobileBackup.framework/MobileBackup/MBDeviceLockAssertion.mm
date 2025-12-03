@interface MBDeviceLockAssertion
- (BOOL)holdWithError:(id *)error;
- (void)_drop;
- (void)dealloc;
- (void)drop;
@end

@implementation MBDeviceLockAssertion

- (void)dealloc
{
  [(MBDeviceLockAssertion *)self _drop];
  v3.receiver = self;
  v3.super_class = MBDeviceLockAssertion;
  [(MBDeviceLockAssertion *)&v3 dealloc];
}

- (BOOL)holdWithError:(id *)error
{
  v5 = MKBDeviceUnlockedSinceBoot();
  v6 = MKBGetDeviceLockState();
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    LODWORD(v18[0]) = v5;
    WORD2(v18[0]) = 1024;
    *(v18 + 6) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MKBDeviceUnlockedSinceBoot=%d, MKBGetDeviceLockState=%d", buf, 0xEu);
    _MBLog();
  }

  v15 = @"MKBAssertionKey";
  v16 = @"RestoreFromBackup";
  v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v9 = MKBDeviceLockAssertion();
  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18[0] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Acquired the device lock assertion (%p)", buf, 0xCu);
      _MBLog();
    }

    self->_assertion = v9;
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18[0] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to acquire the device lock assertion: %@", buf, 0xCu);
      _MBLog();
    }

    v12 = [MBError errorWithCode:208 error:0 format:@"Failed to acquire the device lock assertion"];

    if (error)
    {
      v13 = v12;
      *error = v12;
    }
  }

  return v9 != 0;
}

- (void)_drop
{
  assertion = self->_assertion;
  if (assertion)
  {
    self->_assertion = 0;
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v5 = assertion;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing the device lock assertion (%p)", buf, 0xCu);
      _MBLog();
    }

    CFRelease(assertion);
  }
}

- (void)drop
{
  obj = self;
  objc_sync_enter(obj);
  [(MBDeviceLockAssertion *)obj _drop];
  objc_sync_exit(obj);
}

@end