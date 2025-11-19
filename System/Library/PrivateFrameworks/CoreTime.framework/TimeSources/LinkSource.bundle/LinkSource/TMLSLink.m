@interface TMLSLink
- (TMLSLink)initWithDelegate:(id)a3 clock:(id)a4 workloop:(id)a5;
- (void)convertBTTime:(id)a3;
- (void)convertBTTimeFinal:(id)a3;
- (void)createSyncTimer;
- (void)dataReceived:(id)a3;
- (void)didSendDataIdentifier:(id)a3 withError:(id)a4;
- (void)didUpdateDeviceRegistryCompatibilityState:(id)a3;
- (void)doBTConversionFailure;
- (void)doSyncRTC;
- (void)handleDeliveryOfIdentifier:(id)a3 withData:(id)a4 withError:(id)a5;
- (void)handleSyncTimer;
- (void)restartSync;
- (void)sendBTConversionFailure;
- (void)sendDrift:(double)a3;
- (void)sendReset;
- (void)sendSyncRequest;
- (void)sendTimeZone:(id)a3 forSource:(id)a4;
- (void)setCompatible:(BOOL)a3;
- (void)setSyncState:(int)a3;
- (void)syncRTC;
- (void)updateCompatibilityState;
@end

@implementation TMLSLink

- (TMLSLink)initWithDelegate:(id)a3 clock:(id)a4 workloop:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = TMLSLink;
  v12 = [(TMLSLink *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clock, a4);
    objc_storeStrong(&v13->_delegate, a3);
    objc_storeStrong(&v13->_workloop, a5);
    v14 = [[TMLSTransport alloc] initWithDelegate:v13 clock:v10 workloop:v11];
    transport = v13->_transport;
    v13->_transport = v14;

    v16 = +[NRPairedDeviceRegistry sharedInstance];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v13 selector:"didUpdateDeviceRegistryCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

    [(TMLSLink *)v13 createSyncTimer];
    v18 = objc_opt_new();
    dataPendingSend = v13->_dataPendingSend;
    v13->_dataPendingSend = v18;

    v20 = objc_opt_new();
    dataPendingRetry = v13->_dataPendingRetry;
    v13->_dataPendingRetry = v20;

    v22 = objc_opt_new();
    pendingIdentifiers = v13->_pendingIdentifiers;
    v13->_pendingIdentifiers = v22;

    v24 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v24, "Notification", "com.apple.timesync.idslaunchnotification");
    xpc_set_event();
    [(TMLSLink *)v13 updateCompatibilityState];
  }

  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_883C();
  }

  return v13;
}

- (void)sendTimeZone:(id)a3 forSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(TMLSLink *)self isGizmo])
  {
    sub_8870();
  }

  v12[0] = @"kTMLSLinkMsgKey";
  v12[1] = @"kTMLSLinkTimeZoneKey";
  v13[0] = &off_112C0;
  v13[1] = v6;
  v12[2] = @"kTMLSLinkSourceKey";
  v13[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  v9 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "sendingTimeZone: %@", &v10, 0xCu);
  }

  [(TMLSLink *)self sendData:v8 localOnly:1 nonWaking:0];
}

- (void)sendDrift:(double)a3
{
  v6[0] = @"kTMLSLinkMsgKey";
  v6[1] = @"kTMLSLinkDriftKey";
  v7[0] = &off_112F0;
  v4 = [NSNumber numberWithDouble:a3];
  v7[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  [(TMLSLink *)self sendData:v5 localOnly:0 nonWaking:0];
}

- (void)sendReset
{
  v4 = @"kTMLSLinkMsgKey";
  v5 = &off_11308;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(TMLSLink *)self sendData:v3 localOnly:0 nonWaking:0 includeTinker:1];
}

- (void)dataReceived:(id)a3
{
  v4 = a3;
  v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:0];
  v6 = [v5 objectForKey:@"kTMLSLinkMsgKey"];
  v7 = [v6 intValue];

  if (v7 <= 6)
  {
    if (v7 > 4)
    {
      if (v7 == 5)
      {
        if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
        {
          sub_89CC();
        }

        v23 = [v5 objectForKey:@"kTMLSLinkDriftKey"];
        [v23 doubleValue];
        v25 = v24;

        v8 = [(TMLSLink *)self delegate];
        [v8 link:self didReceiveDrift:v25];
      }

      else
      {
        if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
        {
          sub_8998();
        }

        v8 = [(TMLSLink *)self delegate];
        [v8 linkDidReceiveReset:self];
      }

      goto LABEL_32;
    }

    if (v7 == 1)
    {
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
      {
        sub_8A94();
      }

      v11 = [v5 objectForKey:@"kTMLSLinkTimeKey"];
      [v11 doubleValue];
      v13 = v12;

      v14 = [v5 objectForKey:@"kTMLSLinkRTCKey"];
      [v14 doubleValue];
      v16 = v15;

      v17 = [v5 objectForKey:@"kTMLSLinkUncertaintyKey"];
      [v17 doubleValue];
      v19 = v18;

      v8 = [v5 objectForKey:@"kTMLSLinkSourceKey"];
      v20 = [v5 objectForKey:@"kTMLSLinkReliableKey"];
      v21 = [v20 BOOLValue];

      if (v21)
      {
        v22 = @"TMLSSourceComputedReliable";

        v8 = v22;
      }

      v9 = [(TMLSLink *)self delegate];
      [v9 link:self didReceiveTime:v8 remoteRTC:v13 uncertainty:v16 source:v19];
      goto LABEL_28;
    }

    if (v7 == 4)
    {
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
      {
        sub_8A00();
      }

      v8 = [v5 objectForKey:@"kTMLSLinkTimeZoneKey"];
      v9 = [v5 objectForKey:@"kTMLSLinkSourceKey"];
      v10 = [(TMLSLink *)self delegate];
      [v10 link:self didReceiveTimeZone:v8 forSource:v9];

      goto LABEL_28;
    }
  }

  else if (v7 <= 8)
  {
    if (v7 == 7)
    {
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
      {
        sub_8A34();
      }

      if (![(TMLSLink *)self isGizmo])
      {
        sub_8A68();
      }

      [(TMLSLink *)self syncRTC];
    }

    else
    {
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
      {
        sub_8964();
      }

      [(TMLSLink *)self convertBTTime:v5];
    }
  }

  else
  {
    switch(v7)
    {
      case 9:
        if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
        {
          sub_8930();
        }

        [(TMLSLink *)self convertBTTimeFinal:v5];
        break;
      case 11:
        if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
        {
          sub_88FC();
        }

        [(TMLSLink *)self doBTConversionFailure];
        break;
      case 12:
        if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
        {
          sub_88C8();
        }

        v8 = [(TMLSLink *)self delegate];
        v9 = [v5 objectForKeyedSubscript:@"kTMLSLinkAutomaticTimeEnabledKey"];
        [v8 link:self didReceiveAutomaticTimeEnabled:{objc_msgSend(v9, "BOOLValue")}];
LABEL_28:

LABEL_32:
        break;
    }
  }
}

- (void)didSendDataIdentifier:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_dataPendingSend objectForKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_dataPendingSend removeObjectForKey:v6];
  v9 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "didSendDataIdentifier:%@ withError: %@ (data: %@)", buf, 0x20u);
  }

  v10 = v7;
  v11 = v8;
  AnalyticsSendEventLazy();
  if (v11)
  {
    v12 = sub_573C(v11);
    v13 = [(NSMutableDictionary *)self->_pendingIdentifiers objectForKeyedSubscript:v12];
    v14 = [v13 isEqualToString:v6];

    if (v14)
    {
      [(TMLSLink *)self handleDeliveryOfIdentifier:v6 withData:v11 withError:v10];
    }

    else
    {
      v16 = TIMELINK_FACILITY;
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
      {
        pendingIdentifiers = self->_pendingIdentifiers;
        v18 = v16;
        v19 = [(NSMutableDictionary *)pendingIdentifiers objectForKeyedSubscript:v12];
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%@ superseded by %@", buf, 0x16u);
      }

      v20 = v10;
      AnalyticsSendEventLazy();
    }
  }

  else
  {
    v15 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Do not remember sent message: %@", buf, 0xCu);
    }

    v21 = v10;
    AnalyticsSendEventLazy();
    v12 = v21;
  }
}

- (void)handleDeliveryOfIdentifier:(id)a3 withData:(id)a4 withError:(id)a5
{
  v9 = a3;
  v10 = a4;
  v48 = _NSConcreteStackBlock;
  v49 = 3221225472;
  v50 = sub_5F60;
  v51 = &unk_10678;
  v11 = a5;
  v52 = v11;
  v12 = v10;
  v53 = v12;
  AnalyticsSendEventLazy();
  v13 = sub_573C(v12);
  v14 = [(NSMutableDictionary *)self->_pendingIdentifiers objectForKeyedSubscript:v13];
  if (([v14 isEqualToString:v9] & 1) == 0)
  {
    v43 = +[NSAssertionHandler currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"TMLSLink.m" lineNumber:383 description:{@"Handling delivery of '%@' despite being superceded by '%@' on '%@' with error (%@) and data (%@)", v9, v14, v13, v11, v12}];
  }

  v15 = [v12 objectForKeyedSubscript:@"kTMLSLinkMsgKey"];
  v16 = [v15 integerValue];

  if (v16 != 9)
  {
    if (v16 == 7)
    {
      if ([(TMLSLink *)self isGizmo])
      {
        sub_8BAC(a2, self);
      }

      v17 = [(TMLSLink *)self syncState];
      if (!v11)
      {
        if (v17 == 1)
        {
          [(TMLSLink *)self setSyncState:3];
          v31 = TIMELINK_FACILITY;
          if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "TMLS_MSG_SYNC_RTC_INIT sent successfully", buf, 2u);
          }
        }

        else
        {
          v41 = TIMELINK_FACILITY;
          if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
          {
            v19 = v41;
            *buf = 67109120;
            LODWORD(v55) = [(TMLSLink *)self syncState];
            v20 = "TMLS_MSG_SYNC_RTC_INIT sent successfully, but syncState is %d";
            v21 = v19;
            v22 = OS_LOG_TYPE_INFO;
            v24 = 8;
            goto LABEL_17;
          }
        }

        goto LABEL_33;
      }

      if (v17 != 1)
      {
        v18 = TIMELINK_FACILITY;
        if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          *buf = 138412546;
          v55 = v11;
          v56 = 1024;
          LODWORD(v57) = [(TMLSLink *)self syncState];
          v20 = "TMLS_MSG_SYNC_RTC_INIT send failure (%@), but syncState is %d";
          v21 = v19;
          v22 = OS_LOG_TYPE_INFO;
LABEL_16:
          v24 = 18;
LABEL_17:
          _os_log_impl(&dword_0, v21, v22, v20, buf, v24);
LABEL_22:

          goto LABEL_33;
        }

        goto LABEL_33;
      }
    }

    else if (!v11)
    {
      goto LABEL_33;
    }

    v25 = [v11 code];
    v26 = TIMELINK_FACILITY;
    if (v25 == &dword_18)
    {
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
      {
        pendingIdentifiers = self->_pendingIdentifiers;
        v19 = v26;
        v28 = [(NSMutableDictionary *)pendingIdentifiers objectForKeyedSubscript:v13];
        *buf = 138412802;
        v55 = v9;
        v56 = 2112;
        v57 = v13;
        v58 = 2112;
        v59 = v28;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%@ (%@) replaced by %@, not retrying", buf, 0x20u);

        goto LABEL_22;
      }
    }

    else
    {
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v55 = v9;
        v56 = 2112;
        v57 = v13;
        v58 = 2112;
        v59 = v11;
        _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%@ (%@) send failure (%@), will retry", buf, 0x20u);
      }

      [(NSMutableDictionary *)self->_dataPendingRetry setObject:v12 forKeyedSubscript:v9];
      v29 = dispatch_time(0, 30000000000);
      v30 = [(TMLSLink *)self workloop];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_60C8;
      block[3] = &unk_106C8;
      block[4] = self;
      v45 = v9;
      v46 = v13;
      v47 = v12;
      dispatch_after(v29, v30, block);
    }

    goto LABEL_33;
  }

  if ([(TMLSLink *)self isGizmo])
  {
    sub_8AC8(a2, self);
  }

  v23 = TIMELINK_FACILITY;
  if (v11)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v23;
      *buf = 138412546;
      v55 = v11;
      v56 = 1024;
      LODWORD(v57) = [(TMLSLink *)self syncState];
      v20 = "TMLS_MSG_CONVERT_BT_TIME_FINAL send failure (%@), sync state, %d, dropping";
      v21 = v19;
      v22 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_16;
    }
  }

  else
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
    {
      sub_8B2C(v23);
    }

    v32 = [(TMLSLink *)self delegate];
    v33 = [v12 objectForKeyedSubscript:@"kTMLSLinkRTCKey"];
    [v33 doubleValue];
    v35 = v34;
    v36 = [v12 objectForKeyedSubscript:@"kTMLSLinkRemoteRTCKey"];
    [v36 doubleValue];
    v38 = v37;
    v39 = [v12 objectForKeyedSubscript:@"kTMLSLinkUncertaintyKey"];
    [v39 doubleValue];
    [v32 link:self didSyncLocalRTC:v35 remoteRTC:v38 uncertainty:v40];

    [(TMLSLink *)self setSyncState:0];
  }

LABEL_33:
}

- (void)syncRTC
{
  v3 = [(TMLSLink *)self syncState];
  v4 = TIMELINK_FACILITY;
  v5 = os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Already syncing RTC", v6, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Syncing RTC", buf, 2u);
    }

    if ([(TMLSLink *)self isGizmo])
    {
      [(TMLSLink *)self doSyncRTC];
    }

    else
    {
      [(TMLSLink *)self sendSyncRequest];
    }
  }
}

- (void)sendSyncRequest
{
  if ([(TMLSLink *)self syncState]< 2)
  {
    [(TMLSLink *)self setSyncState:1];
    v5 = @"kTMLSLinkMsgKey";
    v6 = &off_11320;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [(TMLSLink *)self sendData:v4 localOnly:1 nonWaking:1 includeTinker:1];
  }

  else
  {
    v3 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_8C10(v3);
    }
  }
}

- (void)sendBTConversionFailure
{
  v4 = @"kTMLSLinkMsgKey";
  v5 = &off_11338;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(TMLSLink *)self sendData:v3 localOnly:0 nonWaking:0];
}

- (void)doBTConversionFailure
{
  if ([(TMLSLink *)self isGizmo])
  {
    if ([(TMLSLink *)self syncState]== 4)
    {

      [(TMLSLink *)self restartSync];
    }

    else
    {
      v4 = TIMELINK_FACILITY;
      if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
      {
        v5 = v4;
        v6[0] = 67109120;
        v6[1] = [(TMLSLink *)self syncState];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "conversion failure, but sync state is %d", v6, 8u);
      }
    }
  }

  else
  {
    v3 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_8C90(v3);
    }
  }
}

- (void)doSyncRTC
{
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    sub_8D9C();
  }
}

- (void)didUpdateDeviceRegistryCompatibilityState:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_8DDC();
  }

  workloop = self->_workloop;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6BAC;
  block[3] = &unk_104B8;
  block[4] = self;
  dispatch_async(workloop, block);
}

- (void)setCompatible:(BOOL)a3
{
  if (self->_compatible != a3)
  {
    self->_compatible = a3;
    if (a3)
    {
      if ([(TMLSLink *)self isGizmo])
      {
        [(TMLSLink *)self setSyncState:2];

        [(TMLSLink *)self sendReset];
      }

      else
      {
        [(TMLSLink *)self setSyncState:0];
        v4 = [(TMLSLink *)self delegate];
        [v4 linkBecameCompatible:self];

        v5 = [(TMLSLink *)self delegate];
        [v5 linkDidReceiveReset:self];
      }
    }
  }
}

- (void)updateCompatibilityState
{
  v3 = [(TMLSLink *)self isCompatible];
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 compatibilityState];

  v6 = v5 - 2;
  v7 = CORETIME_DATA_FACILITY;
  if (os_log_type_enabled(CORETIME_DATA_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v9 = v5;
    v10 = 1024;
    v11 = v3;
    v12 = 1024;
    v13 = v6 < 3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "cmd,updateCompatibilityState,raw,%d,old,%d,new,%d", buf, 0x14u);
  }

  AnalyticsSendEventLazy();
  [(TMLSLink *)self setCompatible:v6 < 3];
}

- (void)convertBTTime:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"kTMLSLinkRemoteMachKey"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 objectForKey:@"kTMLSLinkRTCKey"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v4 objectForKeyedSubscript:@"kTMLSLinkUncertaintyKey"];

  [v10 doubleValue];
  v12 = v11;

  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_8E50();
  }

  v13 = [(TMLSLink *)self clock];
  v14 = [v13 machTime];

  if (v6 <= v14)
  {
    v16 = [(TMLSLink *)self clock];
    v17 = [(TMLSLink *)self workloop];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_70C4;
    v18[3] = &unk_10738;
    v18[4] = self;
    v18[5] = v9;
    v18[6] = v12;
    [v16 montonicTimeForMachTime:v6 toQueue:v17 withCompletionHandler:v18];
  }

  else
  {
    v15 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_8ED0(v15);
    }
  }
}

- (void)convertBTTimeFinal:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"kTMLSLinkRemoteRTCKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKey:@"kTMLSLinkRTCKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKey:@"kTMLSLinkUncertaintyKey"];

  [v11 doubleValue];
  v13 = v12;

  v14 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    v16 = v14;
    v17 = 134218752;
    v18 = v7;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = v13;
    v23 = 1024;
    v24 = [(TMLSLink *)self syncState];
    _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "convertBTTimeFinal, calling didSyncLocalRTC with localRTC: %f, remoteRTC: %f, uncertainty: %f, syncState: %d", &v17, 0x26u);
  }

  v15 = [(TMLSLink *)self delegate];
  [v15 link:self didSyncLocalRTC:v7 remoteRTC:v10 uncertainty:v13];

  [(TMLSLink *)self setSyncState:0];
}

- (void)restartSync
{
  v3 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_8F50(v3);
  }

  if ([(TMLSLink *)self isGizmo])
  {
    if ([(TMLSLink *)self syncState])
    {
      [(TMLSLink *)self setSyncState:2];
      [(TMLSLink *)self doSyncRTC];
    }

    else if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_9050();
    }
  }

  else
  {
    v4 = TIMELINK_FACILITY;
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
    {
      sub_8FD0(v4);
    }
  }
}

- (void)setSyncState:(int)a3
{
  v5 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_INFO))
  {
    syncState = self->_syncState;
    *buf = 67109376;
    v11 = syncState;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "sync state transition from %d to %d", buf, 0xEu);
  }

  v7 = CORETIME_DATA_FACILITY;
  if (os_log_type_enabled(CORETIME_DATA_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_syncState;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "cmd,SyncStateTransition,old,%d,new,%d", buf, 0xEu);
  }

  AnalyticsSendEventLazy();
  if (a3 <= 2)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
    {
      sub_9108(self);
    }

    v9 = -1;
LABEL_13:
    dispatch_source_set_timer(self->_syncTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    goto LABEL_14;
  }

  if (self->_syncState <= 2u)
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
    {
      sub_9090(&self->_syncState);
    }

    v9 = dispatch_walltime(0, 30000000000);
    goto LABEL_13;
  }

LABEL_14:
  self->_syncState = a3;
}

- (void)createSyncTimer
{
  v3 = [(TMLSLink *)self workloop];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  syncTimer = self->_syncTimer;
  self->_syncTimer = v4;

  dispatch_source_set_timer(self->_syncTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v6 = self->_syncTimer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7954;
  v7[3] = &unk_10788;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_syncTimer);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)handleSyncTimer
{
  v3 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5[0] = 67109120;
    v5[1] = [(TMLSLink *)self syncState];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "syncTimer fired, sync state %d", v5, 8u);
  }

  if ([(TMLSLink *)self syncState]>= 3)
  {
    if ([(TMLSLink *)self isGizmo])
    {
      [(TMLSLink *)self restartSync];
    }

    else
    {
      [(TMLSLink *)self setSyncState:1];
      [(TMLSLink *)self sendSyncRequest];
    }
  }
}

@end