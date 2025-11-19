@interface FTMessageDelivery_APS
+ (id)sharedInstance;
- (BOOL)_fillMessageParameters:(id *)a3 ftMessage:(id *)a4;
- (BOOL)_isBusyWithMessage:(id)a3;
- (BOOL)_sendMessageAsynchronously:(id)a3 error:(id *)a4;
- (BOOL)_shouldSendSOSForFailure:(id)a3;
- (BOOL)busy;
- (BOOL)sendMessage:(id)a3;
- (BOOL)shouldFailFastForMessage:(id)a3;
- (FTMessageDelivery_APS)initWithAPSConnection:(id)a3;
- (FTMessageDelivery_APS)initWithAPSConnection:(id)a3 mobileNetworkManager:(id)a4;
- (id)_apsOutgoingMessageForFTMessage:(id)a3;
- (id)_bodyForMessage:(id)a3;
- (id)_getEnabledTopics;
- (id)_messageForAPSOutgoingMessage:(id)a3;
- (id)_requiredTopicsWithUltraConstrainedTopics:(id *)a3;
- (id)allMessages;
- (int64_t)_retryCountForMessage:(id)a3;
- (int64_t)maxLargeMessageSize;
- (int64_t)maxMessageSize;
- (void)_apsMessageBodyForMessage:(id)a3 completion:(id)a4;
- (void)_apsMessageForMessage:(id)a3 body:(id)a4 completion:(id)a5;
- (void)_clearMapForMessageID:(id)a3;
- (void)_dequeueIfNeeded;
- (void)_invalidateDeathTimerForMessageID:(id)a3;
- (void)_invalidateTimerForMessageID:(id)a3;
- (void)_messageACKTimedOut:(id)a3;
- (void)_messageAckGracePeriodTimedOut:(id)a3;
- (void)_messageCompletelyTimedOut:(id)a3;
- (void)_messageNeedsRetry:(id)a3;
- (void)_messageSendTimedOut:(id)a3;
- (void)_noteMessageACKd:(id)a3 ftMessage:(id)a4;
- (void)_noteMessageFailed:(id)a3 ftMessage:(id)a4 retryBehavior:(int)a5 error:(id)a6;
- (void)_noteMessageSent:(id)a3 ftMessage:(id)a4 body:(id)a5;
- (void)_noteMessageSucceeded:(id)a3 ftMessage:(id)a4 error:(id)a5 result:(id)a6 resultCode:(int64_t)a7;
- (void)_notifyDelegateAboutError:(id)a3 resultCode:(int64_t)a4 forMessage:(id)a5;
- (void)_powerLogEvent:(id)a3 dictionary:(id)a4;
- (void)_sendMessage:(id)a3 ftMessage:(id)a4;
- (void)_serverBagLoaded:(id)a3;
- (void)_setEnabledTopics:(id)a3;
- (void)_setMapForMessage:(id)a3 apsMessage:(id)a4 messageBody:(id)a5 timeoutTime:(double)a6 timeoutSelector:(SEL)a7 handlerBlock:(id)a8 retries:(id)a9;
- (void)_updateTopics;
- (void)cancelMessage:(id)a3 withError:(int64_t)a4;
- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didSendOutgoingMessage:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FTMessageDelivery_APS

- (int64_t)maxLargeMessageSize
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(FTMessageDelivery *)self connection];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(FTMessageDelivery *)self connection];
    v6 = [v5 largeMessageSize];

    if (v6 <= 5119)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(FTMessageDelivery *)self connection];
        *buf = 138412802;
        v16 = v8;
        v17 = 1024;
        v18 = v6;
        v19 = 2048;
        v20 = 5120;
        _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_ERROR, "APSConnection %@  gave me a connection large size of: %d  which doesn't pass our sanity size of: %ld   ignoring", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v12 = [(FTMessageDelivery *)self connection];
        _IDSWarnV();

        v13 = [(FTMessageDelivery *)self connection:v12];
        _IDSLogV();

        v14 = [(FTMessageDelivery *)self connection:v13];
        _IDSLogTransport();
      }
    }

    if (v6 <= 5120)
    {
      result = 5120;
    }

    else
    {
      result = v6;
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE66B58](self, sel_maxMessageSize);
  }

  return result;
}

- (int64_t)maxMessageSize
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(FTMessageDelivery *)self connection];
  v4 = [v3 messageSize];

  if (v4 <= 5119)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(FTMessageDelivery *)self connection];
      *buf = 138412802;
      v13 = v6;
      v14 = 1024;
      v15 = v4;
      v16 = 2048;
      v17 = 5120;
      _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_ERROR, "APSConnection %@  gave me a connection size of: %d  which doesn't pass our sanity size of: %ld   ignoring", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v9 = [(FTMessageDelivery *)self connection];
      _IDSWarnV();

      v10 = [(FTMessageDelivery *)self connection:v9];
      _IDSLogV();

      v11 = [(FTMessageDelivery *)self connection:v10];
      _IDSLogTransport();
    }
  }

  if (v4 <= 5120)
  {
    result = 5120;
  }

  else
  {
    result = v4;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_dequeueIfNeeded
{
  v55 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v52 = _os_activity_create(&dword_195925000, "APS dequeue message", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v52, &state);
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(FTMessageDelivery *)v7 _queue];
  v9 = [v8 count] == 0;

  if (!v9)
  {
    v10 = [(FTMessageDelivery *)v7 _queue];
    v11 = [v10 topMessage];

    [v11 startSendEventTracing];
    if ([v11 isIDSMessage] && objc_msgSend(v11, "wantsBagKey"))
    {
      v12 = [MEMORY[0x1E69A53F0] sharedInstance];
      if (([(__CFString *)v12 isLoaded]& 1) == 0)
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "Server bag is not loaded, waiting for it", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        if ([(__CFString *)v12 isServerAvailable])
        {
          v26 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, " => Server is available", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          if (([(__CFString *)v12 isLoading]& 1) == 0)
          {
            v38 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_195925000, v38, OS_LOG_TYPE_DEFAULT, " => Starting load", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            [(__CFString *)v12 startBagLoad];
            goto LABEL_148;
          }

          v27 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, " => Already loading", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v32 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, " => Server not available", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
          {
            goto LABEL_148;
          }
        }

        _IDSLogV();
        goto LABEL_148;
      }
    }

    else
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, " => Server bag not needed, proceeding", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    if ([(FTMessageDelivery_APS *)v7 busy])
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "We're already busy, not pulling from queue", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_149;
    }

    v16 = [(FTMessageDelivery *)v7 _queue];
    v17 = [v16 dequeueTopMessage];

    if (([v17 isValidMessage] & 1) == 0)
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "Cancelling message delivery! invalid message!", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v2 = [v17 payloadCanBeLogged];
        if (v2)
        {
          v11 = [v17 messageBodyUsingCache];
          v3 = [v11 description];
          v4 = [v17 service];
          v24 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v24 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v54 = v24;
        _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (v2)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v33 = [v17 payloadCanBeLogged];
        if (v33)
        {
          v23 = [v17 messageBodyUsingCache];
          v2 = [v23 description];
          v3 = [v17 service];
          v34 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v34 = @"(Not Loggable)";
        }

        v49 = v34;
        _IDSLogV();
        if (v33)
        {
        }
      }

      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5003 userInfo:0, v49];
      [(FTMessageDelivery_APS *)v7 _notifyDelegateAboutError:v37 resultCode:5003 forMessage:v17];
      v12 = 0;
      goto LABEL_147;
    }

    v50 = 0;
    v18 = [v17 hasRequiredKeys:&v50];
    v12 = v50;
    if ((v18 & 1) == 0)
    {
      v28 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_195963FAC(v12, v28);
      }

      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v12;
        _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Cancelling message delivery! Missing keys: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v49 = v12;
        _IDSLogV();
      }

      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [v17 payloadCanBeLogged];
        if (v3)
        {
          v2 = [v17 messageBodyUsingCache];
          v4 = [v2 description];
          v5 = [v17 service];
          v31 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v31 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v54 = v31;
        _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (v3)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v39 = [v17 payloadCanBeLogged];
        if (v39)
        {
          v30 = [v17 messageBodyUsingCache];
          v3 = [v30 description];
          v4 = [v17 service];
          v40 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v40 = @"(Not Loggable)";
        }

        v49 = v40;
        _IDSLogV();
        if (v39)
        {
        }
      }

      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5008 userInfo:0, v49];
      [(FTMessageDelivery_APS *)v7 _notifyDelegateAboutError:v37 resultCode:5008 forMessage:v17];
      goto LABEL_147;
    }

    if (([v17 ignoresNetworkConnectivity] & 1) == 0 && -[FTMessageDeliveryAPSMobileNetworkManager isAirplaneModeEnabled](v7->_mobileNetworkManager, "isAirplaneModeEnabled") && (-[FTMessageDeliveryAPSMobileNetworkManager isWiFiUsable](v7->_mobileNetworkManager, "isWiFiUsable") & 1) == 0)
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v41, OS_LOG_TYPE_DEFAULT, "Message not being delivered, airplane mode is enabled", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v42 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [v17 payloadCanBeLogged];
        if (v3)
        {
          v2 = [v17 messageBodyUsingCache];
          v4 = [v2 description];
          v5 = [v17 service];
          v43 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v43 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v54 = v43;
        _os_log_impl(&dword_195925000, v42, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (v3)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v46 = [v17 payloadCanBeLogged];
        if (v46)
        {
          v42 = [v17 messageBodyUsingCache];
          v3 = [v42 description];
          v4 = [v17 service];
          v47 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v47 = @"(Not Loggable)";
        }

        v49 = v47;
        _IDSLogV();
        if (v46)
        {
        }
      }

      goto LABEL_146;
    }

    if ([(FTMessageDelivery_APS *)v7 shouldFailFastForMessage:v17])
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Message not being delivered, no network, can attempt stewie", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [v17 payloadCanBeLogged];
        if (v3)
        {
          v2 = [v17 messageBodyUsingCache];
          v4 = [v2 description];
          v5 = [v17 service];
          v21 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v21 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v54 = v21;
        _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (v3)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v44 = [v17 payloadCanBeLogged];
        if (v44)
        {
          v20 = [v17 messageBodyUsingCache];
          v3 = [v20 description];
          v4 = [v17 service];
          v45 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v45 = @"(Not Loggable)";
        }

        v49 = v45;
        _IDSLogV();
        if (v44)
        {
        }
      }

LABEL_146:
      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:10000 userInfo:0, v49];
      [(FTMessageDelivery_APS *)v7 _notifyDelegateAboutError:v37 resultCode:10000 forMessage:v17];
LABEL_147:

      v11 = v17;
      goto LABEL_148;
    }

    if ([(FTMessageDelivery *)v7 isTrafficDisabledOnVMForMessage:v17])
    {
      v35 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_195964024(v35);
      }

      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v36, OS_LOG_TYPE_DEFAULT, "Message not being delivered, vm traffic is disable", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:20000 userInfo:0];
      [(FTMessageDelivery_APS *)v7 _notifyDelegateAboutError:v37 resultCode:20000 forMessage:v17];
      goto LABEL_147;
    }

    [(FTMessageDelivery_APS *)v7 _sendMessageAsynchronously:v17 error:0];
    v11 = v17;
LABEL_148:

LABEL_149:
    goto LABEL_150;
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Nothing left in queue, done", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(FTMessageDelivery_APS *)v7 _updateTopics];
LABEL_150:
  objc_sync_exit(v7);

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v48 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  if (qword_1ED7687A8 != -1)
  {
    sub_195963C04();
  }

  v3 = qword_1ED768708;

  return v3;
}

- (FTMessageDelivery_APS)initWithAPSConnection:(id)a3 mobileNetworkManager:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = FTMessageDelivery_APS;
  v8 = [(FTMessageDelivery *)&v15 initWithAPSConnection:a3];
  if (v8)
  {
    v8->_APSOutgoingMessageClass = MEMORY[0x19A8B8550](@"APSOutgoingMessage", @"ApplePushService");
    v9 = [(FTMessageDelivery *)v8 connection];
    [v9 setDelegate:v8];

    objc_storeStrong(&v8->_mobileNetworkManager, a4);
    v10 = [MEMORY[0x1E695DEC8] array];
    [(FTMessageDelivery_APS *)v8 _setEnabledTopics:v10];

    [(FTMessageDelivery_APS *)v8 _updateTopics];
    if (_os_feature_enabled_impl() && ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) == 0)
    {
      v11 = [MEMORY[0x19A8B8550](@"IDSOffGridConnectionMonitor" @"IDS")];
      offGridConnectionMonitor = v8->_offGridConnectionMonitor;
      v8->_offGridConnectionMonitor = v11;
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v8 selector:sel__serverBagLoaded_ name:*MEMORY[0x1E69A50A8] object:0];
  }

  return v8;
}

- (FTMessageDelivery_APS)initWithAPSConnection:(id)a3
{
  v4 = MEMORY[0x1E69A6108];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [(FTMessageDelivery_APS *)self initWithAPSConnection:v5 mobileNetworkManager:v6];

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  apsMessageMap = self->_apsMessageMap;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195947A54;
  v8[3] = &unk_1E7435060;
  v8[4] = self;
  [(NSMutableDictionary *)apsMessageMap enumerateKeysAndObjectsUsingBlock:v8];
  [(NSMutableDictionary *)self->_timerMap enumerateKeysAndObjectsUsingBlock:&unk_1F09C7188];
  [(NSMutableDictionary *)self->_deathTimerMap enumerateKeysAndObjectsUsingBlock:&unk_1F09C71A8];
  v5 = [MEMORY[0x1E695DEC8] array];
  [(FTMessageDelivery_APS *)self _setEnabledTopics:v5];

  v6 = [(FTMessageDelivery *)self connection];
  [v6 setDelegate:0];

  v7.receiver = self;
  v7.super_class = FTMessageDelivery_APS;
  [(FTMessageDelivery *)&v7 dealloc];
}

- (void)_setEnabledTopics:(id)a3
{
  v4 = a3;
  v7 = [(FTMessageDelivery *)self connection];
  v5 = [MEMORY[0x1E695DEC8] array];
  v6 = [MEMORY[0x1E695DEC8] array];
  [v7 setEnabledTopics:v5 ignoredTopics:v6 opportunisticTopics:v4];
}

- (id)_getEnabledTopics
{
  v2 = [(FTMessageDelivery *)self connection];
  v3 = [v2 opportunisticTopics];

  return v3;
}

- (void)_invalidateTimerForMessageID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_timerMap objectForKey:a3];
  [v3 invalidate];
}

- (void)_invalidateDeathTimerForMessageID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deathTimerMap objectForKey:a3];
  [v3 invalidate];
}

- (void)_setMapForMessage:(id)a3 apsMessage:(id)a4 messageBody:(id)a5 timeoutTime:(double)a6 timeoutSelector:(SEL)a7 handlerBlock:(id)a8 retries:(id)a9
{
  v83 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v71 = a4;
  value = a5;
  v68 = a8;
  v70 = a9;
  v17 = [v16 uniqueIDString];
  if (v17)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (a7)
      {
        v19 = NSStringFromSelector(a7);
      }

      else
      {
        v19 = @"none";
      }

      *buf = 138413314;
      v74 = v17;
      v75 = 2112;
      v76 = v16;
      v77 = 2112;
      v78 = v71;
      v79 = 2048;
      v80 = a6;
      v81 = 2112;
      v82 = v19;
      _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Mapping messageID: %@  message: %@   APSMessage: %@   timeout: %f  timeoutSelector: %@", buf, 0x34u);
      if (a7)
      {
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      if (a7)
      {
        v67 = NSStringFromSelector(a7);
        v66 = a6;
        v64 = v16;
        v65 = v71;
        v59 = v17;
        _IDSLogV();
      }

      else
      {
        v67 = @"none";
        v66 = a6;
        v64 = v16;
        v65 = v71;
        v59 = v17;
        _IDSLogV();
      }
    }

    [(FTMessageDelivery_APS *)self _invalidateTimerForMessageID:v17, v59, v64, v65, *&v66, v67];
    if (!self->_ftMessageMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      ftMessageMap = self->_ftMessageMap;
      self->_ftMessageMap = Mutable;
    }

    if (!self->_apsMessageMap)
    {
      v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      apsMessageMap = self->_apsMessageMap;
      self->_apsMessageMap = v23;
    }

    if (!self->_timerMap)
    {
      v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      timerMap = self->_timerMap;
      self->_timerMap = v25;
    }

    if (!self->_retriesMap)
    {
      v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      retriesMap = self->_retriesMap;
      self->_retriesMap = v27;
    }

    if (!self->_bodyMap)
    {
      v29 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      bodyMap = self->_bodyMap;
      self->_bodyMap = v29;
    }

    if (!self->_startDateMap)
    {
      v31 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      startDateMap = self->_startDateMap;
      self->_startDateMap = v31;
    }

    if (!self->_deathTimerMap)
    {
      v33 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      deathTimerMap = self->_deathTimerMap;
      self->_deathTimerMap = v33;
    }

    if (a6 > 0.0)
    {
      v35 = objc_alloc(MEMORY[0x1E69A60C0]);
      v36 = im_primary_queue();
      v37 = [v35 initWithQueue:v36 interval:a6 repeats:0 userInfo:v17 handlerBlock:v68];

      if (v37)
      {
        [(NSMutableDictionary *)self->_timerMap setObject:v37 forKey:v17];
      }

      else
      {
        v38 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v74 = v17;
          _os_log_impl(&dword_195925000, v38, OS_LOG_TYPE_ERROR, "No timer specified for message ID: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v60 = v17;
          _IDSLogTransport();
        }
      }
    }

    if (v16)
    {
      CFDictionarySetValue(self->_ftMessageMap, v17, v16);
    }

    if (value)
    {
      CFDictionarySetValue(self->_bodyMap, v17, value);
    }

    if (v70)
    {
      CFDictionarySetValue(self->_retriesMap, v17, v70);
    }

    if (v71)
    {
      CFDictionarySetValue(self->_apsMessageMap, v17, v71);
    }

    v39 = [(NSMutableDictionary *)self->_apsMessageMap objectForKey:v17, v60];
    v40 = v39 == 0;

    if (v40)
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v74 = v17;
        _os_log_impl(&dword_195925000, v41, OS_LOG_TYPE_ERROR, "Missing APS Message for message ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v61 = v17;
        _IDSLogTransport();
      }
    }

    v42 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v17, v61];
    v43 = v42 == 0;

    if (v43)
    {
      v44 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v74 = v17;
        _os_log_impl(&dword_195925000, v44, OS_LOG_TYPE_ERROR, "Missing FTMessage for message ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v62 = v17;
        _IDSLogTransport();
      }
    }

    v45 = [(NSMutableDictionary *)self->_bodyMap objectForKey:v17, v62];
    v46 = v45 == 0;

    if (v46)
    {
      v47 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v74 = v17;
        _os_log_impl(&dword_195925000, v47, OS_LOG_TYPE_ERROR, "Missing body for message ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v63 = v17;
        _IDSLogTransport();
      }
    }

    v48 = [(NSMutableDictionary *)self->_retriesMap objectForKey:v17, v63];
    v49 = v48 == 0;

    if (v49)
    {
      CFDictionarySetValue(self->_retriesMap, v17, &unk_1F09D0788);
    }

    v50 = [(NSMutableDictionary *)self->_deathTimerMap objectForKey:v17];
    v51 = v50 == 0;

    if (v51)
    {
      v52 = objc_alloc(MEMORY[0x1E69A60C0]);
      v53 = im_primary_queue();
      [v16 timeout];
      v55 = v54;
      v56 = [v16 uniqueIDString];
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = sub_1959486A0;
      v72[3] = &unk_1E7435238;
      v72[4] = self;
      v57 = [v52 initWithQueue:v53 interval:fmax(v55 repeats:20.0) userInfo:0 handlerBlock:{v56, v72}];

      [(NSMutableDictionary *)self->_deathTimerMap setObject:v57 forKey:v17];
    }
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v74 = v16;
      _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_ERROR, "Cannot map Message: %@   no ID!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)_clearMapForMessageID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "_clearMapForMessageID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = v4;
    _IDSLogV();
  }

  [(FTMessageDelivery_APS *)self _invalidateTimerForMessageID:v4, v13];
  [(FTMessageDelivery_APS *)self _invalidateDeathTimerForMessageID:v4];
  [(NSMutableDictionary *)self->_ftMessageMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_apsMessageMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_retriesMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_timerMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_bodyMap removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_deathTimerMap removeObjectForKey:v4];
  if (![(NSMutableDictionary *)self->_deathTimerMap count])
  {
    deathTimerMap = self->_deathTimerMap;
    self->_deathTimerMap = 0;
  }

  if (![(NSMutableDictionary *)self->_ftMessageMap count])
  {
    ftMessageMap = self->_ftMessageMap;
    self->_ftMessageMap = 0;
  }

  if (![(NSMutableDictionary *)self->_apsMessageMap count])
  {
    apsMessageMap = self->_apsMessageMap;
    self->_apsMessageMap = 0;
  }

  if (![(NSMutableDictionary *)self->_bodyMap count])
  {
    bodyMap = self->_bodyMap;
    self->_bodyMap = 0;
  }

  if (![(NSMutableDictionary *)self->_timerMap count])
  {
    timerMap = self->_timerMap;
    self->_timerMap = 0;
  }

  if (![(NSMutableDictionary *)self->_retriesMap count])
  {
    retriesMap = self->_retriesMap;
    self->_retriesMap = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isBusyWithMessage:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_apsMessageMap allKeysForObject:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)allMessages
{
  v3 = [(FTMessageDelivery *)self queuedMessages];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v5 = [(FTMessageDelivery_APS *)self _currentMessages];
  [v4 addObjectsFromArray:v5];

  return v4;
}

- (int64_t)_retryCountForMessage:(id)a3
{
  retriesMap = self->_retriesMap;
  v4 = [a3 uniqueIDString];
  v5 = [(NSMutableDictionary *)retriesMap objectForKey:v4];
  v6 = [v5 intValue];

  return v6;
}

- (id)_bodyForMessage:(id)a3
{
  bodyMap = self->_bodyMap;
  v4 = [a3 uniqueIDString];
  v5 = [(NSMutableDictionary *)bodyMap objectForKey:v4];

  return v5;
}

- (id)_messageForAPSOutgoingMessage:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_apsMessageMap allKeysForObject:a3];
  v5 = [v4 __imFirstObject];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v5];

  return v6;
}

- (id)_apsOutgoingMessageForFTMessage:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_ftMessageMap allKeysForObject:a3];
  v5 = [v4 __imFirstObject];
  v6 = [(NSMutableDictionary *)self->_apsMessageMap objectForKey:v5];

  return v6;
}

- (BOOL)_fillMessageParameters:(id *)a3 ftMessage:(id *)a4
{
  result = 0;
  if (a3 && a4)
  {
    v8 = *a3;
    v9 = *a4;
    if (v8)
    {
      if (v9)
      {
        return 1;
      }
    }

    else
    {
      v8 = [(FTMessageDelivery_APS *)self _apsOutgoingMessageForFTMessage:v9];
      *a3 = v8;
      if (*a4)
      {
        v10 = 1;
        return v8 != 0 && v10;
      }
    }

    v11 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:v8];
    *a4 = v11;
    v8 = *a3;
    v10 = v11 != 0;
    return v8 != 0 && v10;
  }

  return result;
}

- (BOOL)_shouldSendSOSForFailure:(id)a3
{
  v3 = a3;
  if (qword_1EAED7830 != -1)
  {
    sub_195963C18();
  }

  v4 = [v3 domain];
  v5 = [v4 isEqualToString:qword_1ED768810];

  if ((v5 & 1) != 0 || ([v3 domain], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E696A978]), v6, v7))
  {
    [v3 code];
  }

  return 0;
}

- (void)_noteMessageFailed:(id)a3 ftMessage:(id)a4 retryBehavior:(int)a5 error:(id)a6
{
  v87 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v79 = a4;
  v80 = a3;
  v11 = a4;
  v12 = a3;
  v13 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&v80 ftMessage:&v79];
  v14 = v80;

  v15 = v79;
  if (!v13)
  {
    goto LABEL_90;
  }

  if (qword_1EAED7838 != -1)
  {
    sub_195963C2C();
  }

  v74 = [(FTMessageDelivery_APS *)self _retryCountForMessage:v15];
  v16 = [v10 domain];
  v17 = [v16 isEqualToString:*MEMORY[0x1E696A978]];

  if (v17)
  {
    v73 = 0;
    v18 = [v10 code] == -1001;
    goto LABEL_11;
  }

  v19 = [v10 domain];
  v20 = [v19 isEqualToString:qword_1ED768818];

  if (v20)
  {
    v21 = [v10 code];
    if (v21 <= 7)
    {
      if (((1 << v21) & 0xC6) != 0)
      {
        v18 = 0;
        v73 = 1;
        goto LABEL_11;
      }

      if (v21 == 3)
      {
        goto LABEL_90;
      }
    }

    v73 = 1;
    v18 = 1;
  }

  else
  {
    v73 = 0;
    v18 = 0;
  }

LABEL_11:
  if ([v15 ignoreMaxRetryCount])
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v15 hasReceivedPushAck];
      v24 = @"NO";
      if (v23)
      {
        v24 = @"YES";
      }

      *buf = 67109378;
      *v82 = v74;
      *&v82[4] = 2112;
      *&v82[6] = v24;
      _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "  => Message ignores max retry count set on server bag. Keep retrying (current retires %d). Has received courier ack? %@", buf, 0x12u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  v25 = [MEMORY[0x1E69A53F0] sharedInstance];
  v26 = [v25 objectForKey:@"md-retry-attempts"];

  if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v27 = v26;
    v28 = [v27 intValue];
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v82 = v28;
      _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d retries", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v64 = v28;
      _IDSLogV();
    }

    v30 = v28;
  }

  else
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v82 = 2;
      _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for retries, using the default: %ld retries", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v64 = 2;
      _IDSLogV();
    }

    v30 = 2;
  }

  if (v74 < v30)
  {
    goto LABEL_44;
  }

  v32 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v15 hasReceivedPushAck];
    v34 = @"NO";
    if (v33)
    {
      v34 = @"YES";
    }

    *buf = 67109378;
    *v82 = v74;
    *&v82[4] = 2112;
    *&v82[6] = v34;
    _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "  => Message retried too many times (%d), not retrying anymore. Has received courier ack? %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v18 = 0;
    if (_IDSShouldLog())
    {
LABEL_40:
      v35 = [v15 hasReceivedPushAck];
      v36 = @"NO";
      if (v35)
      {
        v36 = @"YES";
      }

      v64 = v74;
      v66 = v36;
      _IDSLogV();
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_44:
  v37 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [v15 uniqueIDString];
    v39 = v38;
    v40 = @"NO";
    *buf = 138413314;
    *v82 = v15;
    *&v82[8] = 2112;
    if (a5 == 1)
    {
      v41 = @"YES";
    }

    else
    {
      v41 = @"NO";
    }

    *&v82[10] = v38;
    if (v18)
    {
      v40 = @"YES";
    }

    LOWORD(v83) = 1024;
    *(&v83 + 2) = v74;
    HIWORD(v83) = 2112;
    v84 = v41;
    v85 = 2112;
    v86 = v40;
    _os_log_impl(&dword_195925000, v37, OS_LOG_TYPE_DEFAULT, "Noting message failed: %@   (Request ID: %@  Retries: %d  Retry Allowed: %@  Wants Retry: %@)", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v42 = [v15 uniqueIDString];
    v43 = v42;
    v44 = @"NO";
    if (a5 == 1)
    {
      v45 = @"YES";
    }

    else
    {
      v45 = @"NO";
    }

    if (v18)
    {
      v44 = @"YES";
    }

    v70 = v45;
    v72 = v44;
    v66 = v42;
    v68 = v74;
    v64 = v15;
    _IDSLogV();
  }

  [v15 logFailureInfo];
  if ([(FTMessageDelivery_APS *)self _shouldSendSOSForFailure:v10])
  {
    if ([v10 code])
    {
      v46 = [v10 code];
    }

    else
    {
      v46 = 9999;
    }

    v47 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v10 code];
      *buf = 67109120;
      *v82 = v48;
      _os_log_impl(&dword_195925000, v47, OS_LOG_TYPE_DEFAULT, "FTMessageDelivery Sending SOS for APS failure that recieved response code: (HTTP Status Code: %d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v65 = [v10 code];
      _IDSLogV();
    }

    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [v15 topic];
      *buf = 67109890;
      *v82 = 0;
      *&v82[4] = 1024;
      *&v82[6] = 0;
      *&v82[10] = 1024;
      *&v82[12] = v46;
      *&v82[16] = 2112;
      v83 = v50;
      _os_log_impl(&dword_195925000, v49, OS_LOG_TYPE_DEFAULT, "SOS Metric Domain (%d), sos type (%d), error code (%d), url (%@)", buf, 0x1Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v15 topic];
      v65 = 0;
      v67 = 0.0;
      v71 = v69 = v46;
      _IDSLogV();
    }

    v51 = MEMORY[0x1E69A53D8];
    v52 = [v15 topic];
    v53 = [v51 metricWithDomain:0 type:0 error:v46 bagURL:v52];

    v54 = [MEMORY[0x1E69A53D0] logger];
    [v54 logMetric:v53];
  }

  v55 = !v18;
  if (a5 != 1)
  {
    v55 = 1;
  }

  if (v55)
  {
    if ((v73 & 1) != 0 || ((a5 == 2) | [v15 hasReceivedPushAck]) == 1)
    {
      [(FTMessageDelivery_APS *)self _notifyDelegateAboutError:v10 resultCode:20001 forMessage:v15];
    }

    else if (([v15 hasReceivedPushAck] & 1) == 0)
    {
      objc_initWeak(buf, self);
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = sub_195949B48;
      v75[3] = &unk_1E7435500;
      objc_copyWeak(&v76, buf);
      v63 = [MEMORY[0x1E696AD98] numberWithInteger:v74];
      [(FTMessageDelivery_APS *)self _setMapForMessage:v15 apsMessage:0 messageBody:0 timeoutTime:sel__messageAckGracePeriodTimedOut_ timeoutSelector:v75 handlerBlock:v63 retries:90.0];

      objc_destroyWeak(&v76);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v56 = 1.0;
    if ([v15 wantsCustomRetryInterval])
    {
      [v15 customRetryInterval];
      v56 = v57;
    }

    v58 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v82 = v15;
      *&v82[8] = 2048;
      *&v82[10] = v56;
      _os_log_impl(&dword_195925000, v58, OS_LOG_TYPE_DEFAULT, "  => Will retry message: %@ in %f seconds", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v67 = v56;
      v65 = v15;
      _IDSLogV();
    }

    v59 = [(FTMessageDelivery *)self connection:v65];
    [v59 cancelOutgoingMessage:v14];

    [v15 setHasReceivedPushAck:0];
    objc_initWeak(buf, self);
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = sub_195949A48;
    v77[3] = &unk_1E7435500;
    objc_copyWeak(&v78, buf);
    v60 = [MEMORY[0x1E696AD98] numberWithInteger:v74 + 1];
    v61 = 1.0;
    if (v56 >= 1.0)
    {
      v61 = v56;
    }

    [(FTMessageDelivery_APS *)self _setMapForMessage:v15 apsMessage:0 messageBody:0 timeoutTime:sel__messageNeedsRetry_ timeoutSelector:v77 handlerBlock:v60 retries:v61];

    objc_destroyWeak(&v78);
    objc_destroyWeak(buf);
  }

LABEL_90:

  v62 = *MEMORY[0x1E69E9840];
}

- (void)_noteMessageSucceeded:(id)a3 ftMessage:(id)a4 error:(id)a5 result:(id)a6 resultCode:(int64_t)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v31 = a4;
  v32 = a3;
  v14 = a4;
  v15 = a3;
  v16 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&v32 ftMessage:&v31];
  v17 = v32;

  v18 = v31;
  if (v16)
  {
    v19 = [v18 uniqueIDString];
    [v18 setHasReceivedPushAck:1];
    v20 = [(FTMessageDelivery *)self _queue];
    [v20 removeMessage:v18];

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v18;
      v35 = 2048;
      v36 = a7;
      _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "Informing delegate about message %@ with resultCode %ld", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v26 = v18;
      v28 = a7;
      _IDSLogV();
    }

    [(FTMessageDelivery *)self _informDelegateAboutMessage:v18 error:0 result:v13 resultCode:a7 interface:1, v26, v28];
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v18 uniqueIDString];
      v24 = [(NSMutableDictionary *)self->_ftMessageMap count];
      *buf = 138412802;
      v34 = v18;
      v35 = 2112;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "Noting message success: %@   (Request ID: %@   %d remaining)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v29 = [v18 uniqueIDString];
      v30 = [(NSMutableDictionary *)self->_ftMessageMap count];
      v27 = v18;
      _IDSLogV();
    }

    [(FTMessageDelivery_APS *)self _clearMapForMessageID:v19, v27, v29, v30];
    [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_noteMessageACKd:(id)a3 ftMessage:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = a4;
  v22 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&v22 ftMessage:&v21];
  v9 = v22;

  v10 = v21;
  if (v8)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 uniqueIDString];
      v13 = [(NSMutableDictionary *)self->_ftMessageMap count];
      *buf = 138412802;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      v27 = 1024;
      v28 = v13;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Noting message ack'd: %@   (Request ID: %@   %d remaining)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v19 = [v10 uniqueIDString];
      v20 = [(NSMutableDictionary *)self->_ftMessageMap count];
      v18 = v10;
      _IDSLogV();
    }

    v14 = [v10 originalTimestamp];
    v15 = v14 == 0;

    if (v15)
    {
      v16 = [v10 pushAckTimestamp];
      [v10 setOriginalTimestamp:v16];
    }

    [v10 setHasReceivedPushAck:1];
    [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_noteMessageSent:(id)a3 ftMessage:(id)a4 body:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v46 = a4;
  v47 = a3;
  v9 = a4;
  v10 = a3;
  v11 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&v47 ftMessage:&v46];
  v12 = v47;

  v13 = v46;
  if (v11)
  {
    v14 = [v13 uniqueIDString];
    if ([v13 wantsAPSRetries] && objc_msgSend(v13, "highPriority"))
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "   => Setting ack timeout time, this will use APS retries", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v16 = [(FTMessageDelivery_APS *)self _retryCountForMessage:v13];
      v17 = [MEMORY[0x1E69A53F0] sharedInstance];
      v18 = [v17 objectForKey:@"md-retry-start-interval"];

      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = v18;
        [v19 doubleValue];
        v21 = v20;
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v49 = *&v21;
          _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with a retry interval of %f ", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v40 = *&v21;
          _IDSLogV();
        }
      }

      else
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v49 = 0x404E000000000000;
          _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for interval , using the default: %f interval", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v40 = 0x404E000000000000;
          _IDSLogV();
        }

        v21 = 60.0;
      }

      if ([v13 wantsCustomRetryInterval])
      {
        [v13 customRetryInterval];
        v21 = v29;
      }

      v30 = v21 * (v16 + 1);
      v31 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v49 = v16;
        v50 = 2048;
        v51 = v30;
        _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "Message has used %ld retries, Retry timeout time with multiplier will be %f", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = v30;
        v40 = v16;
        _IDSLogV();
      }

      objc_initWeak(buf, self);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_19594AA04;
      v44[3] = &unk_1E7435500;
      objc_copyWeak(&v45, buf);
      [(FTMessageDelivery_APS *)self _setMapForMessage:v13 apsMessage:v12 messageBody:v8 timeoutTime:sel__messageACKTimedOut_ timeoutSelector:v44 handlerBlock:0 retries:v30];
      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);
    }

    else
    {
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [v13 timeout];
        *buf = 134217984;
        v49 = v24;
        _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "   => Setting send timeout time: %f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [v13 timeout];
        v40 = v25;
        _IDSLogV();
      }

      objc_initWeak(buf, self);
      [v13 timeout];
      v27 = v26;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_19594AB04;
      v42[3] = &unk_1E7435500;
      objc_copyWeak(&v43, buf);
      [(FTMessageDelivery_APS *)self _setMapForMessage:v13 apsMessage:v12 messageBody:v8 timeoutTime:sel__messageSendTimedOut_ timeoutSelector:v42 handlerBlock:0 retries:v27 + 2.0];
      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }

    [v13 setSentByteCount:{objc_msgSend(v12, "payloadLength", v40, *&v41)}];
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v13 uniqueIDString];
      v34 = [(NSMutableDictionary *)self->_ftMessageMap count];
      v35 = [(NSMutableDictionary *)self->_retriesMap objectForKey:v14];
      v36 = [v35 intValue];
      *buf = 138413058;
      v49 = v13;
      v50 = 2112;
      v51 = *&v33;
      v52 = 1024;
      v53 = v34;
      v54 = 1024;
      v55 = v36;
      _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "Noting message sent: %@   (Request ID: %@  Remaining: %d  Attempt: %d)", buf, 0x22u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v37 = [v13 uniqueIDString];
      [(NSMutableDictionary *)self->_ftMessageMap count];
      v38 = [(NSMutableDictionary *)self->_retriesMap objectForKey:v14];
      [v38 intValue];
      _IDSLogV();
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_sendMessage:(id)a3 ftMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19594ACD0;
  v10[3] = &unk_1E7435528;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(FTMessageDelivery_APS *)self _apsMessageForMessage:v9 body:v8 completion:v10];
}

- (void)_messageACKTimedOut:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v5];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 uniqueIDString];
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server ack for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v11, v12}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:1 error:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_messageSendTimedOut:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v5];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 uniqueIDString];
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server response for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v11, v12}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:1 error:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_messageCompletelyTimedOut:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v5];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 uniqueIDString];
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server response for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v11, v12}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:0 error:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_messageNeedsRetry:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v5];
  v7 = [(FTMessageDelivery_APS *)self _retryCountForMessage:v6];
  if (objc_opt_respondsToSelector())
  {
    [(NSMutableDictionary *)self->_bodyMap removeObjectForKey:v5];
    [(NSMutableDictionary *)self->_apsMessageMap removeObjectForKey:v5];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v6 setRetryCount:v8];
  }

  v9 = [(NSMutableDictionary *)self->_apsMessageMap objectForKey:v5];
  v10 = [(FTMessageDelivery_APS *)self _bodyForMessage:v6];
  if (v6)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 uniqueIDString];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Starting retry for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v16 = v15 = v9;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v16 = v15 = v9;
      MarcoNoteCheckpoint();
    }

    [(FTMessageDelivery_APS *)self _sendMessage:v10 ftMessage:v6, v15, v16];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_ERROR, "Missing message for retry!  (timer: %@   messageID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_messageAckGracePeriodTimedOut:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v5];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 uniqueIDString];
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server response after final grace period for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v12 = v11 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v11, v12}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:2 error:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_requiredTopicsWithUltraConstrainedTopics:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_19592BEA4;
  v33 = sub_19592BFE0;
  v34 = 0;
  v6 = [(FTMessageDelivery *)self currentMessage];
  v7 = [v6 topic];

  if ([v7 length])
  {
    [v5 addObject:v7];
    if (a3)
    {
      v8 = [(FTMessageDelivery *)self currentMessage];
      v9 = [v8 ultraConstrainedAllowed];

      if (v9)
      {
        v10 = v30[5];
        if (!v10)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v12 = v30[5];
          v30[5] = v11;

          v10 = v30[5];
        }

        [v10 addObject:v7];
      }
    }
  }

  v13 = [(FTMessageDelivery *)self queuedMessages];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_19594BE7C;
  v26[3] = &unk_1E7435550;
  v14 = v5;
  v27 = v14;
  v28 = &v29;
  [v13 enumerateObjectsUsingBlock:v26];

  v15 = [(FTMessageDelivery_APS *)self _currentMessages];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = sub_19594BF34;
  v23 = &unk_1E7435550;
  v16 = v14;
  v24 = v16;
  v25 = &v29;
  [v15 enumerateObjectsUsingBlock:&v20];

  if (a3)
  {
    v17 = v30[5];
    if (v17)
    {
      *a3 = [v17 allObjects];
    }
  }

  v18 = [v16 allObjects];

  _Block_object_dispose(&v29, 8);

  return v18;
}

- (void)_updateTopics
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v13 = 0;
  v3 = [(FTMessageDelivery_APS *)v2 _requiredTopicsWithUltraConstrainedTopics:&v13];
  v4 = v13;
  v5 = [(FTMessageDelivery_APS *)v2 _getEnabledTopics];
  v6 = [v5 count];
  if (v6 == [v3 count])
  {
    v7 = [v5 isEqualToArray:v3] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Enabling required topics: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v3;
    _IDSLogV();
  }

  if (v7)
  {
    [(FTMessageDelivery_APS *)v2 _setEnabledTopics:v3];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEBUG, "  => Skipping, already enabled", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v10 = [(FTMessageDelivery *)v2 connection];
  [v10 setUltraConstrainedTopics:v4];

  objc_sync_exit(v2);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_apsMessageBodyForMessage:(id)a3 completion:(id)a4
{
  v143 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v109 = a4;
  v112 = v5;
  v113 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(__CFString *)v5 messageBodyUsingCache];
  v7 = [v6 mutableCopy];

  v111 = v7;
  if (!v7)
  {
    v111 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v107 = [(__CFString *)v112 bagKey];
  v110 = [(__CFString *)v112 topic];
  if (v110)
  {
    theDict = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v140 = v110;
      v141 = 2112;
      v142 = v107;
      _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Building URL request with topic: %@  bagKey: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v97 = v110;
      v102 = v107;
      _IDSLogV();
    }

    if ([(__CFString *)v112 wantsHTTPHeaders:v97])
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(FTMessageDelivery *)self userAgent];
        *buf = 138412290;
        v140 = v10;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v98 = [(FTMessageDelivery *)self userAgent];
        _IDSLogV();
      }

      v104 = [(FTMessageDelivery *)self userAgent];
      if ([v104 length])
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = +[FTDeviceSupport sharedInstance];
        v13 = [v12 userAgentString];
        v105 = [v11 stringWithFormat:@"%@ %@", v104, v13];
      }

      else
      {
        v12 = +[FTDeviceSupport sharedInstance];
        v105 = [v12 userAgentString];
      }

      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v140 = v105;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "            Agent: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v99 = v105;
        _IDSLogV();
      }

      v16 = [(__CFString *)v112 wantsUserAgentInHeaders];
      if ([(__CFString *)v105 length])
      {
        if (v16)
        {
          v17 = v113;
        }

        else
        {
          v17 = v111;
        }

        v18 = [(__CFString *)v112 userAgentHeaderString];
        [v17 setObject:v105 forKey:v18];
      }

      if ([(__CFString *)v112 wantsCompressedBody])
      {
        v19 = sub_19592BCA0();
        v20 = [v19 length] == 0;

        if (!v20)
        {
          v21 = sub_19592BCA0();
          [v113 setObject:v21 forKey:@"Accept-Language"];
        }
      }

      v22 = [(__CFString *)v112 additionalMessageHeadersForOutgoingPush];
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v23 = [v22 allKeys];
      v24 = [v23 countByEnumeratingWithState:&v131 objects:v138 count:16];
      if (v24)
      {
        v25 = *v132;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v132 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v131 + 1) + 8 * i);
            v28 = [v22 objectForKey:{v27, v100, v103}];

            if (v28)
            {
              v29 = [v22 objectForKey:v27];
              [v113 setObject:v29 forKey:v27];
            }

            v30 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v22 objectForKey:v27];
              *buf = 138412546;
              v140 = v27;
              v141 = 2112;
              v142 = v31;
              _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [v22 objectForKey:v27];
              v103 = v100 = v27;
              _IDSLogV();
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v131 objects:v138 count:16];
        }

        while (v24);
      }

      v32 = [MEMORY[0x1E69A60F0] sharedInstance];
      v33 = [v32 isInternalInstall];

      if (v33)
      {
        v34 = [(__CFString *)v112 additionalInternalHeaders];

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v35 = [v34 allKeys];
        v36 = [v35 countByEnumeratingWithState:&v127 objects:v137 count:16];
        if (v36)
        {
          v37 = *v128;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v128 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v127 + 1) + 8 * j);
              v40 = [(__CFString *)v112 wantsUserAgentInHeaders:v100];
              v41 = [v34 objectForKey:v39];

              if (v41)
              {
                if (v40)
                {
                  v42 = v113;
                }

                else
                {
                  v42 = v111;
                }

                v43 = [v34 objectForKey:v39];
                [v42 setObject:v43 forKey:v39];
              }

              v44 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v45 = [v34 objectForKey:v39];
                *buf = 138412546;
                v140 = v39;
                v141 = 2112;
                v142 = v45;
                _os_log_impl(&dword_195925000, v44, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                [v34 objectForKey:v39];
                v103 = v100 = v39;
                _IDSLogV();
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v127 objects:v137 count:16];
          }

          while (v36);
        }
      }

      else
      {
        v34 = v22;
      }

      v46 = [(__CFString *)v112 nonStandardMessageHeadersForOutgoingPush];

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v47 = [v46 allKeys];
      v48 = [v47 countByEnumeratingWithState:&v123 objects:v136 count:16];
      if (v48)
      {
        v49 = *v124;
        do
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v124 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = *(*(&v123 + 1) + 8 * k);
            v52 = [v46 objectForKey:{v51, v98, v103}];

            if (v52)
            {
              v53 = [v46 objectForKey:v51];
              [v113 setObject:v53 forKey:v51];
            }

            v54 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = [v46 objectForKey:v51];
              *buf = 138412546;
              v140 = v51;
              v141 = 2112;
              v142 = v55;
              _os_log_impl(&dword_195925000, v54, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [v46 objectForKey:v51];
              v103 = v98 = v51;
              _IDSLogV();
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v123 objects:v136 count:16];
        }

        while (v48);
      }

      v56 = [(__CFString *)v112 nonStandardMessageHeadersForOutgoingPush];

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v57 = [v56 allKeys];
      v58 = [v57 countByEnumeratingWithState:&v119 objects:v135 count:16];
      if (v58)
      {
        v59 = *v120;
        do
        {
          for (m = 0; m != v58; ++m)
          {
            if (*v120 != v59)
            {
              objc_enumerationMutation(v57);
            }

            v61 = *(*(&v119 + 1) + 8 * m);
            v62 = [v56 objectForKey:{v61, v98, v103}];

            if (v62)
            {
              v63 = [v56 objectForKey:v61];
              [v113 setObject:v63 forKey:v61];
            }

            v64 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = [v56 objectForKey:v61];
              *buf = 138412546;
              v140 = v61;
              v141 = 2112;
              v142 = v65;
              _os_log_impl(&dword_195925000, v64, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [v56 objectForKey:v61];
              v103 = v98 = v61;
              _IDSLogV();
            }
          }

          v58 = [v57 countByEnumeratingWithState:&v119 objects:v135 count:16];
        }

        while (v58);
      }
    }

    if ([(__CFString *)v112 wantsCompressedBody])
    {
      v66 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [(__CFString *)v112 payloadCanBeLogged];
        if (v67)
        {
          v68 = [v111 description];
        }

        else
        {
          v68 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v140 = v68;
        _os_log_impl(&dword_195925000, v66, OS_LOG_TYPE_DEFAULT, "Body: %@", buf, 0xCu);
        if (v67)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        if (([(__CFString *)v112 payloadCanBeLogged]& 1) != 0)
        {
          v101 = [v111 description];
          _IDSLogV();
        }

        else
        {
          v101 = @"(Not Loggable)";
          _IDSLogV();
        }
      }
    }

    if ([(__CFString *)v112 wantsBagKey])
    {
      v69 = [MEMORY[0x1E69A53F0] sharedInstance];
      v70 = [(__CFString *)v112 bagKey];
      v71 = [v69 urlWithKey:v70];

      v72 = [v71 absoluteString];
      if (v72)
      {
        CFDictionarySetValue(theDict, @"u", v72);
      }

      else
      {
        v73 = MEMORY[0x1E69E9C10];
        v74 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_195963C54();
        }
      }
    }

    v75 = [(__CFString *)v112 command];
    if (v75 >= 1)
    {
      v76 = [MEMORY[0x1E696AD98] numberWithInt:v75];
      if (v76)
      {
        CFDictionarySetValue(theDict, @"c", v76);
      }

      else
      {
        v77 = MEMORY[0x1E69E9C10];
        v78 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_195963CDC();
        }
      }
    }

    v79 = [v111 count] == 0;
    v80 = [(__CFString *)v112 wantsCompressedBody];
    if (v79)
    {
      if (v80)
      {
        v82 = [MEMORY[0x1E695DF20] dictionary];
        [(__CFDictionary *)theDict setObject:v82 forKey:@"p"];
      }
    }

    else if (v80)
    {
      v81 = v111;
      if (v81)
      {
        CFDictionarySetValue(theDict, @"p", v81);
      }

      else
      {
        v83 = MEMORY[0x1E69E9C10];
        v84 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          sub_195963D64();
        }
      }
    }

    else
    {
      [(__CFDictionary *)theDict addEntriesFromDictionary:v111];
    }

    if ([v113 count] && -[__CFString wantsHTTPHeaders](v112, "wantsHTTPHeaders"))
    {
      v85 = v113;
      if (v85)
      {
        CFDictionarySetValue(theDict, @"h", v85);
      }

      else
      {
        v86 = MEMORY[0x1E69E9C10];
        v87 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          sub_195963DEC();
        }
      }
    }

    if ([(__CFString *)v112 wantsIntegerUniqueIDs])
    {
      v88 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[__CFString uniqueID](v112, "uniqueID")}];
      if (v88)
      {
LABEL_149:
        CFDictionarySetValue(theDict, @"i", v88);
LABEL_157:

        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = sub_19594D5E8;
        v114[3] = &unk_1E7435578;
        v115 = v113;
        v93 = v112;
        v116 = v93;
        v94 = theDict;
        v117 = v94;
        v118 = v109;
        v95 = MEMORY[0x19A8B8CC0](v114);
        if ([(__CFString *)v93 wantsSignature])
        {
          [(FTMessageDelivery *)self _signMessage:v93 useDataSignatures:1 authKitHeadersPresent:0 body:0 queryString:0 completion:v95];
        }

        else
        {
          v95[2](v95, 0);
        }

        goto LABEL_161;
      }

      v91 = MEMORY[0x1E69E9C10];
      v92 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        sub_195963E74();
      }
    }

    else
    {
      v88 = [(__CFString *)v112 uniqueIDString];
      if (v88)
      {
        goto LABEL_149;
      }

      v89 = MEMORY[0x1E69E9C10];
      v90 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        sub_195963E74();
      }
    }

    goto LABEL_157;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v140 = v112;
    _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Cannot send message: Empty topic requested for message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (MarcoShouldLogCheckpoints())
  {
    MarcoNoteCheckpoint();
  }

  (*(v109 + 2))(v109, 0);
LABEL_161:

  v96 = *MEMORY[0x1E69E9840];
}

- (void)_apsMessageForMessage:(id)a3 body:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19594DB00;
  v15[3] = &unk_1E7435378;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  v13 = MEMORY[0x19A8B8CC0](v15);
  v14 = v13;
  if (v9)
  {
    (*(v13 + 16))(v13, v9);
  }

  else
  {
    [(FTMessageDelivery_APS *)self _apsMessageBodyForMessage:v11 completion:v13];
  }
}

- (void)_powerLogEvent:(id)a3 dictionary:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (qword_1ED768828 != -1)
  {
    sub_195963F10();
  }

  if (off_1ED768820)
  {
    off_1ED768820(2, v6, v5, 0);
  }
}

- (void)_notifyDelegateAboutError:(id)a3 resultCode:(int64_t)a4 forMessage:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 uniqueIDString];
  [(FTMessageDelivery_APS *)self _clearMapForMessageID:v10];

  [(FTMessageDelivery *)self _informDelegateAboutMessage:v8 error:v9 result:0 resultCode:a4 interface:1];

  [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "invalidating: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(FTMessageDelivery *)v4 _queue];
  [v5 removeAllMessages];

  [(FTMessageDelivery_APS *)v4 _updateTopics];
  objc_sync_exit(v4);

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_sendMessageAsynchronously:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Requesting async send: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = v5;
    _IDSLogV();
  }

  v8 = [v5 bagKey];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19594E2A0;
  v14[3] = &unk_1E74350D8;
  v9 = v8;
  v15 = v9;
  v10 = v5;
  v16 = v10;
  v17 = v6;
  [(FTMessageDelivery_APS *)v6 _apsMessageBodyForMessage:v10 completion:v14];

  objc_sync_exit(v6);
  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)busy
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_ftMessageMap copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v6 += [*(*(&v12 + 1) + 8 * i) hasReceivedPushAck] ^ 1;
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    v5 = v6;
  }

  v9 = [(FTMessageDelivery *)self maxConcurrentMessages]<= v5;
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)cancelMessage:(id)a3 withError:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = FTMessageDelivery_APS;
  [(FTMessageDelivery *)&v21 cancelMessage:v6];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v18 = v6;
      _IDSLogV();
    }

    v8 = [(FTMessageDelivery_APS *)self _apsOutgoingMessageForFTMessage:v6, v18];
    v9 = [(FTMessageDelivery *)self currentMessage];
    v10 = [(FTMessageDelivery *)self _queue];
    v11 = [v10 removeMessage:v6];
    if (v9 == v6)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v8)
      {
        v13 = [(FTMessageDelivery *)self connection];
        [v13 cancelOutgoingMessage:v8];
      }

      [(FTMessageDelivery *)self _informDelegateAboutMessage:v6 error:0 result:0 resultCode:a4 interface:1];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Removed message: %@   apsMessage: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v19 = v6;
        v20 = v8;
        _IDSLogV();
      }

      if (v8)
      {
        [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
      }
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Message: %@ not in queue.   Current message: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v19 = v6;
        v20 = v8;
        _IDSLogV();
      }
    }

    v16 = [v6 uniqueIDString];
    [(FTMessageDelivery_APS *)self _clearMapForMessageID:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendMessage:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [v4 _setUsingOutgoingPush:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v4 setTimeSent:?];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = v4;
    _IDSLogV();
  }

  v7 = [(FTMessageDelivery *)v5 _queue];
  [v7 addMessage:v4];

  if ([(FTMessageDelivery_APS *)v5 busy])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(FTMessageDelivery_APS *)v5 _currentMessages];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = [(FTMessageDelivery_APS *)v5 _currentMessages];
      _IDSLogV();
    }
  }

  else
  {
    [(FTMessageDelivery_APS *)v5 _dequeueIfNeeded];
  }

  objc_sync_exit(v5);

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_serverBagLoaded:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Server bag loaded", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if ([(FTMessageDelivery_APS *)self busy])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FTMessageDelivery_APS *)self _currentMessages];
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v9 = [(FTMessageDelivery_APS *)self _currentMessages];
      _IDSLogV();
    }
  }

  else
  {
    [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldFailFastForMessage:(id)a3
{
  v4 = a3;
  if (!_os_feature_enabled_impl() || ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) != 0)
  {
    goto LABEL_14;
  }

  if (qword_1ED768830 != -1)
  {
    sub_195964068();
  }

  if (qword_1ED768840 != -1)
  {
    sub_19596407C();
  }

  v5 = [v4 topic];
  if ([v5 isEqualToIgnoringCase:qword_1ED768838])
  {
    v6 = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  else
  {
    v7 = [v4 topic];
    if (([v7 isEqualToIgnoringCase:qword_1ED768848] & 1) == 0)
    {

      goto LABEL_14;
    }

    v6 = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  if ((v6 & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v93 = *MEMORY[0x1E69E9840];
  v79 = a3;
  v7 = a4;
  v8 = a5;
  v84 = [v8 objectForKey:@"c"];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138412290;
    v90 = v10;
    _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "received response dictionary: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v65 = IDSLoggableDescriptionForObjectOnService();
    _IDSLogV();
  }

  v11 = [v8 objectForKey:{@"i", v65}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [v8 objectForKey:@"i"];
  v14 = v13;
  if ((isKindOfClass & 1) == 0)
  {
    v15 = [v13 stringValue];

    v14 = v15;
  }

  v82 = [v8 _dataForKey:@"U"];
  v16 = [v8 objectForKey:@"h"];
  if (v16)
  {
    v17 = [v84 intValue] == 97;

    if (v17)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v8 objectForKey:@"h"];
        *buf = 138412290;
        v90 = v19;
        _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Response Headers: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v66 = [v8 objectForKey:@"h"];
        _IDSLogV();
      }
    }
  }

  v20 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v14, v66];
  if (v20)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412290;
      v90 = v22;
      _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "received response dictionary: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v67 = IDSLoggableDescriptionForObjectOnService();
      _IDSLogV();
    }

    v23 = [v84 intValue];
    if ([v20 responseCommand] == v23 || objc_msgSend(v84, "intValue") == 255 || objc_msgSend(v84, "intValue") == 101)
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = IDSLoggableDescriptionForObjectOnService();
        *buf = 138412290;
        v90 = v25;
        _os_log_impl(&dword_195925000, v24, OS_LOG_TYPE_DEFAULT, "received response dictionary: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v68 = IDSLoggableDescriptionForObjectOnService();
        _IDSLogV();
      }

      v26 = [v8 objectForKey:{@"b", v68}];

      if (v26)
      {
        v27 = [v8 objectForKey:@"b"];
        objc_opt_class();
        v28 = objc_opt_isKindOfClass();

        v80 = [v8 objectForKey:@"b"];
        if (v28)
        {
          v29 = [v80 _FTDataFromBase64String];
          goto LABEL_44;
        }

        objc_opt_class();
        v32 = objc_opt_isKindOfClass();

        if (v32)
        {
          v29 = [v8 objectForKey:@"b"];
          v80 = 0;
          goto LABEL_44;
        }

        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v33, OS_LOG_TYPE_ERROR, "Received an unknown object for kBodyIDKey", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }

      v80 = 0;
      v29 = 0;
LABEL_44:
      v86 = 0xAAAAAAAAAAAAAAAALL;
      v76 = v29;
      v34 = [v29 _FTDecompressData];
      v77 = v34;
      v35 = v76;
      if (v34)
      {
        v35 = v34;
      }

      v78 = v35;
      v36 = [v8 objectForKey:@"p"];
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        if (!v78)
        {
          v37 = 0;
          v36 = 0;
          goto LABEL_54;
        }

        v85 = 0;
        v38 = [MEMORY[0x1E696AE40] propertyListWithData:v78 options:0 format:&v86 error:&v85];
        v37 = v85;
        v36 = v38;
      }

      if (!v37 && v36)
      {
        v37 = 0;
        goto LABEL_60;
      }

LABEL_54:
      if ([v80 length] || objc_msgSend(v36, "count"))
      {
        v39 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v90 = v37;
          v91 = 2112;
          v92 = v78;
          _os_log_impl(&dword_195925000, v39, OS_LOG_TYPE_ERROR, "Error decompressing body: %@  (Data: %@)", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v69 = v37;
          v73 = v78;
          _IDSLogTransport();
        }
      }

LABEL_60:
      v81 = [v8 objectForKey:{@"h", v69, v73}];
      v40 = [v8 objectForKey:@"s"];
      if (_os_feature_enabled_impl())
      {
        v41 = [v8 objectForKey:@"hs"];
        v42 = MEMORY[0x19A8B8550](@"IDSBAASigner", @"IDS");
        if (v41)
        {
          v43 = v42;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & (v43 != 0)) == 1)
          {
            if ([v43 isBAAHTTPResponseCode:{objc_msgSend(v41, "integerValue")}])
            {
              v44 = v41;

              v40 = v44;
            }
          }
        }
      }

      if (v81)
      {
        v45 = [v81 objectForKey:@"X-Apple-Splunk-Hint"];
        if (!v45)
        {
          v45 = [v81 objectForKey:@"sh"];
          if (!v45)
          {
            v45 = [v81 objectForKey:@"xt-hint"];
          }
        }

        [v20 setSplunkHint:v45];
      }

      if (([v20 isWebTunnelMessage] & 1) == 0)
      {
        v46 = sub_195951F64(v36);

        v36 = v46;
      }

      v47 = [MEMORY[0x1E695DF00] date];
      [v20 setResponseReceived:v47];

      if (![v36 count])
      {
        v48 = v8;

        v36 = v48;
      }

      v49 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = IDSLoggableDescriptionForObjectOnService();
        *buf = 138412546;
        v90 = v40;
        v91 = 2112;
        v92 = v50;
        _os_log_impl(&dword_195925000, v49, OS_LOG_TYPE_DEFAULT, "received response code: %@  response body: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        IDSLoggableDescriptionForObjectOnService();
        v74 = v71 = v40;
        _IDSLogV();
      }

      v75 = [objc_alloc(MEMORY[0x1E69A5230]) initWithServerResponseDictionary:v36];
      if (v36)
      {
        if ([v20 isIDSMessage])
        {
          [v20 handleResponseDictionary:v36];
        }

        else
        {
          [v20 handleResponseDictionary:v8];
        }

        v51 = [v36 objectForKey:{@"status", v71, v74}];
        if (v51)
        {
          v52 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v90 = v51;
            _os_log_impl(&dword_195925000, v52, OS_LOG_TYPE_DEFAULT, "  Found internal status code of: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v71 = v51;
            _IDSLogV();
          }

          v53 = v51;

          v40 = v53;
        }
      }

      if ([v20 wantsMultipleResponses])
      {
        v54 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v54, OS_LOG_TYPE_DEFAULT, "  This Message Wants Multiple responses", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        if (objc_opt_respondsToSelector())
        {
          v55 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v55, OS_LOG_TYPE_DEFAULT, "  This Message responds to receiving updates for multipleMessages", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          [v20 noteResponseForToken:v75];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_113;
        }

        if ([v20 expectingMoreResponses])
        {
          v56 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v56, OS_LOG_TYPE_DEFAULT, " More To Come, Not done yet", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          goto LABEL_113;
        }

        v64 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v64, OS_LOG_TYPE_DEFAULT, "  Last message Has Been acknowledged", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      [(FTMessageDelivery_APS *)self _noteMessageSucceeded:0 ftMessage:v20 error:v37 result:v36 resultCode:[(NSMutableDictionary *)v40 intValue]];
LABEL_113:
      v87[0] = @"CommandID";
      v87[1] = @"MessageIdentifier";
      v88[0] = v84;
      v88[1] = v14;
      v87[2] = @"Topic";
      v88[2] = v7;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:3];
      v58 = [v57 mutableCopy];

      if (v82)
      {
        v59 = JWUUIDPushObjectToString();
        [(NSMutableDictionary *)v58 setObject:v59 forKeyedSubscript:@"MessageGUID"];
      }

      v60 = objc_opt_class();
      v61 = sub_19594EAB0(v60, v8, *MEMORY[0x1E69A49E8]);
      if (v61)
      {
        [(NSMutableDictionary *)v58 setObject:v61 forKeyedSubscript:@"CommandContext"];
      }

      v62 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v90 = v58;
        _os_log_impl(&dword_195925000, v62, OS_LOG_TYPE_DEFAULT, "Logging incoming push power event: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v72 = v58;
        _IDSLogV();
      }

      [(FTMessageDelivery_APS *)self _powerLogEvent:@"IDS IncomingPushReceived" dictionary:v58, v72];
    }
  }

  else
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      ftMessageMap = self->_ftMessageMap;
      *buf = 138412290;
      v90 = ftMessageMap;
      _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "no message found, map reads: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v70 = self->_ftMessageMap;
      _IDSLogV();
    }
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 didSendOutgoingMessage:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(FTMessageDelivery_APS *)self _isBusyWithMessage:v7])
  {
    v8 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:v7];
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 uniqueIDString];
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Server ACK'd outgoing message: %@      (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v8 uniqueIDString];
      v28 = v27 = v7;
      _IDSLogV();
    }

    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 wantsResponse];
      v13 = @"NO";
      if (v12)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "   message: %@ wants response: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v14 = [v8 wantsResponse];
      v15 = @"NO";
      if (v14)
      {
        v15 = @"YES";
      }

      v27 = v8;
      v28 = v15;
      _IDSLogV();
    }

    if (1000000 * [v7 ackTimestamp])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [v8 setPushAckTimestamp:v16];
    }

    v17 = [v8 deliveryAcknowledgementBlock];
    v18 = v17;
    if (v17)
    {
      (*(v17 + 16))(v17, v8);
    }

    v19 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:v7];
    v20 = [(FTMessageDelivery_APS *)self _bodyForMessage:v19];
    v21 = [v20 objectForKey:*MEMORY[0x1E69A49F0]];

    v22 = [v21 integerValue];
    if ((v22 - 200) <= 0x27 && ((1 << (v22 + 56)) & 0x8100000FC1) != 0)
    {
      v23 = [objc_alloc(MEMORY[0x1E69A5208]) initWithCommand:objc_msgSend(v21 success:"integerValue") errorDomain:1 errorCode:0 retryCount:{0, -[FTMessageDelivery_APS _retryCountForMessage:](self, "_retryCountForMessage:", v19)}];
      v24 = [MEMORY[0x1E69A53A8] loggerWithCategory:2000];
      [v24 logMetric:v23];
    }

    v25 = [MEMORY[0x1E695DF00] date];
    [v8 setRequestEnd:v25];

    if ([v8 wantsResponse])
    {
      [(FTMessageDelivery_APS *)self _noteMessageACKd:v7 ftMessage:v8];
    }

    else
    {
      [(FTMessageDelivery_APS *)self _noteMessageSucceeded:v7 ftMessage:v8 error:0 result:0 resultCode:0];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v8 = a4;
  v9 = a5;
  if ([(FTMessageDelivery_APS *)self _isBusyWithMessage:v8])
  {
    if (qword_1EAED7840 != -1)
    {
      sub_195964090();
    }

    v10 = [v9 domain];
    v11 = [v10 isEqualToString:qword_1ED768850];

    if (!v11 || [v9 code] != 3)
    {
      v12 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:v8];
      v48 = [(FTMessageDelivery *)self disallowRetry]^ 1;
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v51 = v9;
        v52 = 1024;
        v53 = v48;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "message delivery failed {error: %@, retryBehavior: %d}", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v42 = v9;
        v43 = v48;
        _IDSLogV();
      }

      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v9 domain];
        v16 = [v9 code];
        v17 = [v9 localizedDescription];
        v18 = [v9 userInfo];
        v19 = [v18 objectForKey:*MEMORY[0x1E696A990]];
        *buf = 138413058;
        v51 = v15;
        v52 = 1024;
        v53 = v16;
        v54 = 2112;
        v55 = v17;
        v56 = 2112;
        v57 = v19;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_ERROR, "FTMessageDelivery failed! Error (%@:%d): %@ %@", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v20 = [v9 domain];
        v21 = [v9 code];
        v22 = [v9 localizedDescription];
        v23 = [v9 userInfo];
        v24 = *MEMORY[0x1E696A990];
        v46 = [v23 objectForKey:*MEMORY[0x1E696A990]];
        _IDSWarnV();

        v25 = [v9 domain];
        v26 = [v9 code];
        v27 = [v9 localizedDescription];
        v28 = [v9 userInfo];
        v47 = [v28 objectForKey:v24];
        _IDSLogV();

        v29 = [v9 domain];
        v30 = [v9 code];
        v31 = [v9 localizedDescription];
        v32 = [v9 userInfo];
        [v32 objectForKey:v24];
        v45 = v44 = v31;
        v42 = v29;
        v43 = v30;
        _IDSLogTransport();
      }

      v33 = [(FTMessageDelivery_APS *)self _bodyForMessage:v12, v42, v43, v44, v45];
      v34 = [v33 objectForKey:*MEMORY[0x1E69A49F0]];

      v35 = [v34 integerValue] - 200;
      if (v35 <= 0x27 && ((1 << v35) & 0x8100000FC1) != 0)
      {
        v36 = objc_alloc(MEMORY[0x1E69A5208]);
        v37 = [v34 integerValue];
        v38 = [v9 domain];
        v39 = [v36 initWithCommand:v37 success:0 errorDomain:v38 errorCode:objc_msgSend(v9 retryCount:{"code"), -[FTMessageDelivery_APS _retryCountForMessage:](self, "_retryCountForMessage:", v12)}];

        v40 = [MEMORY[0x1E69A53A8] loggerWithCategory:2000];
        [v40 logMetric:v39];
      }

      [(FTMessageDelivery_APS *)self _noteMessageFailed:v8 ftMessage:v12 retryBehavior:v48 error:v9];
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

@end