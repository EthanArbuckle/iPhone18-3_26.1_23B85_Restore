@interface IDSDSessionDefaultAvailabilityCheck
- (int64_t)networkCheckOverrideBehavior;
- (void)availabilityTimerCancel;
- (void)checkLocalConnectivityForSession:(id)session withCompletionBlock:(id)block;
- (void)checkNetworkAvailabilityForSession:(id)session completionBlock:(id)block;
@end

@implementation IDSDSessionDefaultAvailabilityCheck

- (int64_t)networkCheckOverrideBehavior
{
  v2 = +[IMUserDefaults fixedInterface];
  if (v2)
  {
    v3 = +[IMUserDefaults fixedInterfaceDestination];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  result = +[IMUserDefaults sessionNetworkAvailabilityCheckOverrideBehavior];
  if (!result)
  {
    return v4;
  }

  return result;
}

- (void)checkNetworkAvailabilityForSession:(id)session completionBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [sessionCopy uniqueID];
    *buf = 138412290;
    v47 = *&uniqueID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting outgoing network availability check for session %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      uniqueID2 = [sessionCopy uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        uniqueID2 = [sessionCopy uniqueID];
        _IDSLogV();
      }
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060D0B0;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  if (qword_100CBF330 != -1)
  {
    dispatch_once(&qword_100CBF330, block);
  }

  if (qword_100CBF328)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID3 = [sessionCopy uniqueID];
      *buf = 138412546;
      v47 = *&uniqueID3;
      v48 = 2048;
      v49 = qword_100CBF328;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding network availability check result! { session: %@, overrideBehavior: %ld }", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        uniqueID4 = [sessionCopy uniqueID];
        v42 = qword_100CBF328;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          uniqueID5 = [sessionCopy uniqueID];
          _IDSLogV();
        }
      }
    }

    blockCopy[2](blockCopy, qword_100CBF328 != 2);
  }

  else if (([sessionCopy isInitiator] & 1) != 0 || !objc_msgSend(sessionCopy, "isWithDefaultPairedDevice"))
  {
    if ([sessionCopy isInitiator])
    {
      v14 = 0;
    }

    else
    {
      v14 = 5;
    }

    if ([sessionCopy disallowWifiInterface])
    {
      v15 = 0;
    }

    else
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Network availability check: including WiFi availability", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      if ([sessionCopy clientType] == 4)
      {
        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Network availability check: allowing WiFi hotspot", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v14 |= 0x10uLL;
      }

      v15 = 1;
    }

    if ([sessionCopy enableQuickRelay] && (objc_msgSend(sessionCopy, "disallowCellularInterface") & 1) == 0)
    {
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Network availability check: including cellular availability", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      v15 |= 2uLL;
    }

    else if ([sessionCopy isInitiator] && (objc_msgSend(sessionCopy, "clientType") == 1 || objc_msgSend(sessionCopy, "clientType") == 5 || objc_msgSend(sessionCopy, "clientType") == 6))
    {
      v14 |= 2uLL;
    }

    isInitiator = [sessionCopy isInitiator];
    v20 = 2.0;
    if (isInitiator)
    {
      v20 = 7.0;
    }

    v21 = 15.0;
    if (isInitiator)
    {
      v21 = 30.0;
      v22 = 60.0;
    }

    else
    {
      v22 = 30.0;
    }

    if ((v15 & 2) != 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v24 = +[IMSystemMonitor sharedInstance];
    isScreenLit = [v24 isScreenLit];

    if (isScreenLit)
    {
      v26 = objc_alloc_init(NSDate);
      v27 = +[IMSystemMonitor sharedInstance];
      dateScreenLightLastChanged = [v27 dateScreenLightLastChanged];

      [v26 timeIntervalSinceDate:dateScreenLightLastChanged];
      v30 = v29;
      v31 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v47 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Time since lights on: %f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      v32 = v23 - v30;
      if (v30 >= v23)
      {
        v32 = 0.0;
      }

      if (v30 > 0.0)
      {
        v23 = v32;
      }
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10060D0D4;
    v43[3] = &unk_100BE2310;
    v43[4] = self;
    v44 = blockCopy;
    v33 = objc_retainBlock(v43);
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v47 = v22;
      v48 = 2048;
      v49 = *&v23;
      v50 = 2048;
      v51 = v15;
      v52 = 2048;
      v53 = v14;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Starting availability check with network timeout: %fs   wifi timeout: %fs   flags: %lu   options: %lu", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v35 = [[IMNetworkAvailability alloc] initWithFlags:v15 options:v14 timeout:v33 wifiTimeout:v22 completionBlock:v23];
    [(IDSDSessionDefaultAvailabilityCheck *)self setAvailability:v35];

    availability = [(IDSDSessionDefaultAvailabilityCheck *)self availability];
    [availability start];
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID6 = [sessionCopy uniqueID];
      *buf = 138412290;
      v47 = *&uniqueID6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bypassing network availability check for incoming session from default paired device { session: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        uniqueID7 = [sessionCopy uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          uniqueID8 = [sessionCopy uniqueID];
          _IDSLogV();
        }
      }
    }

    blockCopy[2](blockCopy, 1);
  }
}

- (void)availabilityTimerCancel
{
  availability = [(IDSDSessionDefaultAvailabilityCheck *)self availability];
  [availability cancel];

  [(IDSDSessionDefaultAvailabilityCheck *)self setAvailability:0];
}

- (void)checkLocalConnectivityForSession:(id)session withCompletionBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  if (([sessionCopy isScreenSharingSession] & 1) == 0 && !objc_msgSend(sessionCopy, "isWithDefaultPairedDevice"))
  {
    if (![sessionCopy enableQuickRelay])
    {
      v8 = +[IDSUTunController sharedInstance];
      uniqueID = [sessionCopy uniqueID];
      participantID = [sessionCopy participantID];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10060D380;
      v11[3] = &unk_100BE2360;
      v12 = sessionCopy;
      v13 = blockCopy;
      [v8 createConnectionDataForDevice:uniqueID localPartyID:participantID dataReadyHandler:v11];

      goto LABEL_4;
    }

    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "QuickRelay is enabled, skip connection check.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  (*(blockCopy + 2))(blockCopy, 1, 0);
LABEL_4:
}

@end