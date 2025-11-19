@interface IDSDSessionDefaultAvailabilityCheck
- (int64_t)networkCheckOverrideBehavior;
- (void)availabilityTimerCancel;
- (void)checkLocalConnectivityForSession:(id)a3 withCompletionBlock:(id)a4;
- (void)checkNetworkAvailabilityForSession:(id)a3 completionBlock:(id)a4;
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

- (void)checkNetworkAvailabilityForSession:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 uniqueID];
    *buf = 138412290;
    v47 = *&v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting outgoing network availability check for session %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v37 = [v6 uniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v37 = [v6 uniqueID];
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
      v11 = [v6 uniqueID];
      *buf = 138412546;
      v47 = *&v11;
      v48 = 2048;
      v49 = qword_100CBF328;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding network availability check result! { session: %@, overrideBehavior: %ld }", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v38 = [v6 uniqueID];
        v42 = qword_100CBF328;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v39 = [v6 uniqueID];
          _IDSLogV();
        }
      }
    }

    v7[2](v7, qword_100CBF328 != 2);
  }

  else if (([v6 isInitiator] & 1) != 0 || !objc_msgSend(v6, "isWithDefaultPairedDevice"))
  {
    if ([v6 isInitiator])
    {
      v14 = 0;
    }

    else
    {
      v14 = 5;
    }

    if ([v6 disallowWifiInterface])
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

      if ([v6 clientType] == 4)
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

    if ([v6 enableQuickRelay] && (objc_msgSend(v6, "disallowCellularInterface") & 1) == 0)
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

    else if ([v6 isInitiator] && (objc_msgSend(v6, "clientType") == 1 || objc_msgSend(v6, "clientType") == 5 || objc_msgSend(v6, "clientType") == 6))
    {
      v14 |= 2uLL;
    }

    v19 = [v6 isInitiator];
    v20 = 2.0;
    if (v19)
    {
      v20 = 7.0;
    }

    v21 = 15.0;
    if (v19)
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
    v25 = [v24 isScreenLit];

    if (v25)
    {
      v26 = objc_alloc_init(NSDate);
      v27 = +[IMSystemMonitor sharedInstance];
      v28 = [v27 dateScreenLightLastChanged];

      [v26 timeIntervalSinceDate:v28];
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
    v44 = v7;
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

    v36 = [(IDSDSessionDefaultAvailabilityCheck *)self availability];
    [v36 start];
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 uniqueID];
      *buf = 138412290;
      v47 = *&v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bypassing network availability check for incoming session from default paired device { session: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v40 = [v6 uniqueID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v41 = [v6 uniqueID];
          _IDSLogV();
        }
      }
    }

    v7[2](v7, 1);
  }
}

- (void)availabilityTimerCancel
{
  v3 = [(IDSDSessionDefaultAvailabilityCheck *)self availability];
  [v3 cancel];

  [(IDSDSessionDefaultAvailabilityCheck *)self setAvailability:0];
}

- (void)checkLocalConnectivityForSession:(id)a3 withCompletionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isScreenSharingSession] & 1) == 0 && !objc_msgSend(v5, "isWithDefaultPairedDevice"))
  {
    if (![v5 enableQuickRelay])
    {
      v8 = +[IDSUTunController sharedInstance];
      v9 = [v5 uniqueID];
      v10 = [v5 participantID];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10060D380;
      v11[3] = &unk_100BE2360;
      v12 = v5;
      v13 = v6;
      [v8 createConnectionDataForDevice:v9 localPartyID:v10 dataReadyHandler:v11];

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

  (*(v6 + 2))(v6, 1, 0);
LABEL_4:
}

@end