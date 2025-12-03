@interface IDSWRMExchange
+ (id)sharedInstance;
- (BOOL)_processLinkPreferenceNotificationEvent:(id)event;
- (BOOL)_processMetricsConfigEvent:(id)event;
- (BOOL)_processXPCMessage:(id)message;
- (BOOL)_setRecommendedLinkType:(unint64_t)type;
- (IDSWRMExchange)init;
- (id)_newMetricReportMessage;
- (id)_newPrefSubscribeMessage:(BOOL)message;
- (id)_newRegisterMessage;
- (id)_newSubscribeStatusUpdateMessage:(BOOL)message nearby:(BOOL)nearby;
- (id)_newUnsubscribeMessage;
- (void)_dispatchAfter:(double)after block:(id)block;
- (void)_notifyDelegate;
- (void)_processXPCEvent:(id)event;
- (void)_reconnectUntilTimeout;
- (void)_registerWithWRM;
- (void)_resetLocalMetric;
- (void)_restartClient;
- (void)_restartSubscriptionIfNeeded;
- (void)_sendMetricReport;
- (void)_sendMetricReportPeriodically;
- (void)_sendXPCMessage:(id)message;
- (void)_setReportInterval:(unint64_t)interval;
- (void)_startXPCConnection;
- (void)_stopXPCConnection;
- (void)_submitBlockAsync:(id)async;
- (void)_updateLocalMetric:(id)metric;
- (void)dealloc;
- (void)handleActiveLinkChange:(unint64_t)change;
- (void)submitMetric:(id)metric;
- (void)subscribeForRecommendation:(id)recommendation recommendationType:(unint64_t)type block:(id)block;
- (void)unsubscribeForRecommendation;
@end

@implementation IDSWRMExchange

- (void)_sendMetricReportPeriodically
{
  [(IDSWRMExchange *)self _sendMetricReport];
  reportInterval = self->_reportInterval;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7B03B2C;
  v4[3] = &unk_1E77E0818;
  v4[4] = self;
  [(IDSWRMExchange *)self _dispatchAfter:v4 block:reportInterval];
}

- (void)_sendMetricReport
{
  if (self->_shouldSendReport)
  {
    _newMetricReportMessage = [(IDSWRMExchange *)self _newMetricReportMessage];
    if (_newMetricReportMessage)
    {
      [(IDSWRMExchange *)self _sendXPCMessage:_newMetricReportMessage];
    }

    self->_shouldSendReport = 0;
    [(IDSWRMExchange *)self _resetLocalMetric];
  }
}

- (id)_newMetricReportMessage
{
  if (self->_metrics)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = v3;
    if (!v3)
    {
      v7 = 0;
      goto LABEL_38;
    }

    activeRecommendationType = self->_activeRecommendationType;
    if (activeRecommendationType != 2)
    {
      xpc_dictionary_set_uint64(v3, "kWRMSubscriptionType", activeRecommendationType);
    }

    xpc_dictionary_set_uint64(v4, "kMessageId", 0x258uLL);
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      if ([(IDSWRMMetricContainer *)self->_metrics StreamBytesSent]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "StrmBytesSnt", [(IDSWRMMetricContainer *)self->_metrics StreamBytesSent]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics StreamBytesReceived]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "StrmBytesRcvd", [(IDSWRMMetricContainer *)self->_metrics StreamBytesReceived]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics StreamPacketsSent]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "StrmPktsSnt", [(IDSWRMMetricContainer *)self->_metrics StreamPacketsSent]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics StreamPacketsReceived]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "StrmPktRcvd", [(IDSWRMMetricContainer *)self->_metrics StreamPacketsReceived]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics MessageSentSize]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "LocMsgSntSz", [(IDSWRMMetricContainer *)self->_metrics MessageSentSize]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics MessageReceivedSize]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "LocMsgRcvdMgSz", [(IDSWRMMetricContainer *)self->_metrics MessageReceivedSize]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics MessageDeliveredSize]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "DeliveredMsgSz", [(IDSWRMMetricContainer *)self->_metrics MessageDeliveredSize]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics MessageDeliveredDeliveryError]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "LocMsgDeliveryEr", [(IDSWRMMetricContainer *)self->_metrics MessageDeliveredDeliveryError]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics MessageDeliveredRTT]!= -1)
      {
        xpc_dictionary_set_uint64(v6, "LocMsgDeliveredRTT", [(IDSWRMMetricContainer *)self->_metrics MessageDeliveredRTT]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics numMessageReceivedSize])
      {
        xpc_dictionary_set_uint64(v6, "LocMsgRcvd", [(IDSWRMMetricContainer *)self->_metrics numMessageReceivedSize]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics numMessageSentSize])
      {
        xpc_dictionary_set_uint64(v6, "LocMsgSnt", [(IDSWRMMetricContainer *)self->_metrics numMessageSentSize]);
      }

      if ([(IDSWRMMetricContainer *)self->_metrics numMessageDeliveredSize])
      {
        xpc_dictionary_set_uint64(v6, "LocMsgDelivered", [(IDSWRMMetricContainer *)self->_metrics numMessageDeliveredSize]);
      }

      if (!xpc_dictionary_get_count(v6))
      {
        goto LABEL_35;
      }

      xpc_dictionary_set_value(v4, "kMessageArgs", v6);
    }

    if ([(IDSWRMExchange *)self _isXPCDictionary:v4])
    {
      v7 = v4;
LABEL_36:

LABEL_38:
      return v7;
    }

LABEL_35:
    v7 = 0;
    goto LABEL_36;
  }

  return 0;
}

- (void)_resetLocalMetric
{
  metrics = self->_metrics;
  if (metrics)
  {
    [(IDSWRMMetricContainer *)metrics resetMetric];
  }
}

+ (id)sharedInstance
{
  if (qword_1ED5DF6E0 != -1)
  {
    sub_1A7E1F2A4();
  }

  v3 = qword_1ED5DF730;

  return v3;
}

- (IDSWRMExchange)init
{
  v16.receiver = self;
  v16.super_class = IDSWRMExchange;
  v2 = [(IDSWRMExchange *)&v16 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = vdupq_n_s64(2uLL);
    *(v2 + 24) = 0;
    v4 = *(v2 + 13);
    *(v2 + 13) = 0;

    delegateBlock = v3->_delegateBlock;
    v3->_delegateBlock = 0;

    v3->_reportInterval = 0;
    v3->_shouldSendReport = 0;
    v3->_connectCount = 0;
    v3->_activeRecommendationType = 2;
    *&v3->_isPaired = 0;
    v3->_isConnected = 0;
    v6 = objc_alloc_init(IDSWRMMetricContainer);
    metrics = v3->_metrics;
    v3->_metrics = v6;

    [(IDSWRMExchange *)v3 _resetLocalMetric];
    [@"kIDSPairingStateChangedNotification" UTF8String];
    IMUserScopedNotification();
    v8 = im_primary_queue();
    v14 = MEMORY[0x1E69E9820];
    v15 = v3;
    im_notify_register_dispatch();

    v3->_isPaired = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_get_global_queue(0, 0);
    v11 = dispatch_queue_create_with_target_V2("com.apple.ids.connection.queue", v9, v10);
    v12 = *(v15 + 1);
    *(v15 + 1) = v11;

    [v15 _startXPCConnection];
    [v15 _registerWithWRM];
  }

  return v3;
}

- (void)dealloc
{
  [(IDSWRMExchange *)self _stopXPCConnection];
  notify_cancel(self->_isPairedNotifyToken);
  v3.receiver = self;
  v3.super_class = IDSWRMExchange;
  [(IDSWRMExchange *)&v3 dealloc];
}

- (void)_submitBlockAsync:(id)async
{
  asyncCopy = async;
  v5 = asyncCopy;
  if (asyncCopy)
  {
    queue = self->_queue;
    if (queue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A7C68D50;
      block[3] = &unk_1E77E0B48;
      v8 = asyncCopy;
      dispatch_async(queue, block);
    }
  }
}

- (void)_dispatchAfter:(double)after block:(id)block
{
  blockCopy2 = block;
  if (blockCopy2 && self->_queue)
  {
    block = blockCopy2;
    v7 = dispatch_time(0, (after * 1000000.0));
    dispatch_after(v7, self->_queue, block);
    blockCopy2 = block;
  }
}

- (void)_startXPCConnection
{
  queue = self->_queue;
  if (queue)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", queue, 0);
    connection = self->_connection;
    self->_connection = mach_service;

    v6 = self->_connection;
    if (v6)
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1A7C6904C;
      handler[3] = &unk_1E77E2518;
      handler[4] = self;
      xpc_connection_set_event_handler(v6, handler);
      xpc_connection_resume(self->_connection);
      return;
    }

    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create a XPC connection to WirelessRadioManagerd", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSWRMExchange", @"IDS", @"Failed to create a XPC connection to WirelessRadioManagerd");
        if (_IDSShouldLog())
        {
          v8 = @"Failed to create a XPC connection to WirelessRadioManagerd";
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Failed to start XPC connection due to nil _queue", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSWRMExchange", @"IDS", @"Failed to start XPC connection due to nil _queue");
        if (_IDSShouldLog())
        {
          v8 = @"Failed to start XPC connection due to nil _queue";
LABEL_16:
          _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", v8);
        }
      }
    }
  }
}

- (void)_stopXPCConnection
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_set_event_handler(connection, &unk_1F1AAB760);
    xpc_connection_cancel(self->_connection);
    v4 = self->_connection;
    self->_connection = 0;
  }

  self->_registered = 0;
}

- (void)_restartClient
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A7C69114;
  v2[3] = &unk_1E77E0818;
  v2[4] = self;
  [(IDSWRMExchange *)self _submitBlockAsync:v2];
}

- (void)_processXPCEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = MEMORY[0x1AC5658A0]();
  v6 = MEMORY[0x1E69E9E80];
  if (v5 == MEMORY[0x1E69E9E80])
  {
    if (![(IDSWRMExchange *)self _processXPCMessage:eventCopy])
    {
      v10 = MEMORY[0x1AC5657E0](eventCopy);
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "<unknown";
        if (v10)
        {
          v12 = v10;
        }

        *buf = 136315138;
        v24 = v12;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Failed to process this event: %s", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Failed to process this event: %s");
      }

      free(v10);
    }

    if (v6 != MEMORY[0x1E69E9E98])
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v5 != MEMORY[0x1E69E9E98])
    {
      v7 = MEMORY[0x1AC5657E0](eventCopy);
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "<unknown>";
        if (v7)
        {
          v9 = v7;
        }

        *buf = 136315138;
        v24 = v9;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Received an unexpected message from WRM: %s", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Received an unexpected message from WRM: %s");
      }

      free(v7);
LABEL_21:
      self->_connectCount = 0;
      goto LABEL_64;
    }

    string = xpc_dictionary_get_string(eventCopy, *MEMORY[0x1E69E9E28]);
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "<unknown>";
      if (string)
      {
        v15 = string;
      }

      *buf = 136315138;
      v24 = v15;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Received error message from WRM: %s", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v16 = string ? string : "<unknown>";
      v22 = v16;
      _IDSLogTransport(@"IDSWRMExchange", @"IDS", @"Received error message from WRM: %s");
      if (_IDSShouldLog())
      {
        v22 = v16;
        _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Received error message from WRM: %s");
      }
    }

    if (eventCopy == MEMORY[0x1E69E9E20])
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "WirelessRadioManagerd is not running", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"IDSWRMExchange", @"IDS", @"WirelessRadioManagerd is not running");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"WirelessRadioManagerd is not running");
          }
        }
      }
    }

    else if (eventCopy == MEMORY[0x1E69E9E18])
    {
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "WirelessRadioManagerd daemon has crashed", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"IDSWRMExchange", @"IDS", @"WirelessRadioManagerd daemon has crashed");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"WirelessRadioManagerd daemon has crashed");
          }
        }
      }
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = "<unknown>";
        if (string)
        {
          v18 = string;
        }

        *buf = 136315138;
        v24 = v18;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Received unknown error message from WirelessRadioManagerd: %s", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        if (!string)
        {
          string = "<unknown>";
        }

        v22 = string;
        _IDSLogTransport(@"IDSWRMExchange", @"IDS", @"Received unknown error message from WirelessRadioManagerd: %s");
        if (_IDSShouldLog())
        {
          v22 = string;
          _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Received unknown error message from WirelessRadioManagerd: %s");
        }
      }
    }

    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "Trying to reconnect to WirelessRadioManagerd daemon", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"IDSWRMExchange", @"IDS", @"Trying to reconnect to WirelessRadioManagerd daemon");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Trying to reconnect to WirelessRadioManagerd daemon");
        }
      }
    }

    [(IDSWRMExchange *)self _reconnectUntilTimeout];
  }

LABEL_64:
}

- (void)_reconnectUntilTimeout
{
  if (self->_connectCount <= 9u)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1A7C69900;
    v4[3] = &unk_1E77E0818;
    v4[4] = self;
    [(IDSWRMExchange *)self _dispatchAfter:v4 block:1000.0];
  }
}

- (void)_sendXPCMessage:(id)message
{
  messageCopy = message;
  if ([(IDSWRMExchange *)self _isXPCDictionary:messageCopy])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1A7C699E0;
    v5[3] = &unk_1E77E0C88;
    v5[4] = self;
    v6 = messageCopy;
    [(IDSWRMExchange *)self _submitBlockAsync:v5];
  }
}

- (id)_newRegisterMessage
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_uint64(v3, "kMessageId", 1uLL);
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      xpc_dictionary_set_uint64(v5, "kWCMRegisterProcess_ProcessId", 0xBuLL);
      xpc_dictionary_set_value(v4, "kMessageArgs", v6);
    }

    if ([(IDSWRMExchange *)self _isXPCDictionary:v4])
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_newSubscribeStatusUpdateMessage:(BOOL)message nearby:(BOOL)nearby
{
  self->_isNearby = nearby;
  self->_isConnected = message;
  return MEMORY[0x1EEE66B58](self, sel__newPrefSubscribeMessage_);
}

- (id)_newPrefSubscribeMessage:(BOOL)message
{
  messageCopy = message;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_23;
  }

  if (messageCopy)
  {
    v7 = 403;
  }

  else
  {
    v7 = 402;
  }

  xpc_dictionary_set_uint64(v5, "kMessageId", v7);
  activeRecommendationType = self->_activeRecommendationType;
  if (activeRecommendationType != 2)
  {
    xpc_dictionary_set_uint64(v6, "kWRMSubscriptionType", activeRecommendationType);
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = v10;
    if (!v10)
    {
LABEL_16:
      v15 = xpc_dictionary_create(0, 0, 0);
      v16 = v15;
      if (v15)
      {
        xpc_dictionary_set_value(v15, "kWRMApplicationTypeList", v9);
        xpc_dictionary_set_value(v6, "kMessageArgs", v16);
      }

      goto LABEL_19;
    }

    xpc_dictionary_set_uint64(v10, "kWRMApplicationType", 0);
    xpc_dictionary_set_uint64(v11, "kWRMLinkDirection", 2uLL);
    if (messageCopy)
    {
      xpc_dictionary_set_uint64(v11, "kWRMLinkType", self->_activeLinkType);
      xpc_dictionary_set_uint64(v11, "kWRMCompPairedWithGizmo", self->_isPaired);
      xpc_dictionary_set_uint64(v11, "kWRMNearByOverBT", self->_isNearby);
      xpc_dictionary_set_uint64(v11, "kWRMConnected", self->_isConnected);
      nearbyOverWiFi = self->_nearbyOverWiFi;
      v13 = "kWRMNearByOverWiFi";
    }

    else
    {
      nearbyOverWiFi = self->_recommendedLinkType;
      if (nearbyOverWiFi == 2)
      {
LABEL_15:
        xpc_array_append_value(v9, v11);
        goto LABEL_16;
      }

      v13 = "kWRMLinkType";
    }

    xpc_dictionary_set_uint64(v11, v13, nearbyOverWiFi);
    goto LABEL_15;
  }

LABEL_19:
  if ([(IDSWRMExchange *)self _isXPCDictionary:v6])
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
  return v14;
}

- (id)_newUnsubscribeMessage
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_uint64(v3, "kMessageId", 0x192uLL);
    activeRecommendationType = self->_activeRecommendationType;
    if (activeRecommendationType != 2)
    {
      xpc_dictionary_set_uint64(v4, "kWRMSubscriptionType", activeRecommendationType);
    }

    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v7)
      {
        xpc_dictionary_set_value(v7, "kWRMApplicationTypeList", v6);
        xpc_dictionary_set_value(v4, "kMessageArgs", v8);
      }
    }

    if ([(IDSWRMExchange *)self _isXPCDictionary:v4])
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_registerWithWRM
{
  self->_registered = 1;
  _newRegisterMessage = [(IDSWRMExchange *)self _newRegisterMessage];
  [(IDSWRMExchange *)self _sendXPCMessage:_newRegisterMessage];
}

- (void)subscribeForRecommendation:(id)recommendation recommendationType:(unint64_t)type block:(id)block
{
  recommendationCopy = recommendation;
  blockCopy = block;
  activeRecommendationType = self->_activeRecommendationType;
  if (activeRecommendationType != 2 && activeRecommendationType != type)
  {
    [(IDSWRMExchange *)self unsubscribeForRecommendation];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_delegateQueue, recommendation);
  if (blockCopy)
  {
    v14 = [blockCopy copy];
    delegateBlock = selfCopy->_delegateBlock;
    selfCopy->_delegateBlock = v14;
  }

  objc_sync_exit(selfCopy);

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A7C6A100;
  v16[3] = &unk_1E77E21D0;
  v16[4] = selfCopy;
  v16[5] = type;
  [(IDSWRMExchange *)selfCopy _submitBlockAsync:v16];
}

- (void)_restartSubscriptionIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_subscribed && (self->_activeLinkType == 1 || self->_recommendedLinkType != 3))
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      activeRecommendationType = self->_activeRecommendationType;
      *buf = 67109120;
      v8 = activeRecommendationType;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Re-subscribe to WRM for link recommendations of type: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        v6 = self->_activeRecommendationType;
        _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Re-subscribe to WRM for link recommendations of type: %d");
      }
    }

    _newSubscribeMessage = [(IDSWRMExchange *)self _newSubscribeMessage];
    [(IDSWRMExchange *)self _sendXPCMessage:_newSubscribeMessage];
  }
}

- (void)unsubscribeForRecommendation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A7C6A400;
  v2[3] = &unk_1E77E0818;
  v2[4] = self;
  [(IDSWRMExchange *)self _submitBlockAsync:v2];
}

- (BOOL)_processXPCMessage:(id)message
{
  v13 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if ([(IDSWRMExchange *)self _isXPCDictionary:messageCopy])
  {
    v5 = MEMORY[0x1AC5657E0](messageCopy);
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = v5;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Got an event = %s", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Got an event = %s");
    }

    free(v5);
    uint64 = xpc_dictionary_get_uint64(messageCopy, "kMessageId");
    if (uint64 == 1103)
    {
      v8 = [(IDSWRMExchange *)self _processMetricsConfigEvent:messageCopy];
      goto LABEL_12;
    }

    if (uint64 == 1301)
    {
      v8 = [(IDSWRMExchange *)self _processLinkPreferenceNotificationEvent:messageCopy];
LABEL_12:
      v9 = v8;
      goto LABEL_13;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (BOOL)_processLinkPreferenceNotificationEvent:(id)event
{
  eventCopy = event;
  if ([(IDSWRMExchange *)self _isXPCDictionary:eventCopy]&& xpc_dictionary_get_uint64(eventCopy, "kMessageId") == 1301)
  {
    v5 = xpc_dictionary_get_value(eventCopy, "kMessageArgs");
    if ([(IDSWRMExchange *)self _isXPCDictionary:v5])
    {
      v6 = xpc_dictionary_get_value(v5, "kWRMApplicationTypeList");
      v7 = v6;
      if (v6 && MEMORY[0x1AC5658A0](v6) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v7))
      {
        v10 = xpc_array_get_value(v7, 0);
        if (v10 && [(IDSWRMExchange *)self _isXPCDictionary:v10]&& !xpc_dictionary_get_uint64(v10, "kWRMApplicationType") && (uint64 = xpc_dictionary_get_uint64(v10, "kWRMLinkType"), (uint64 & 0xFFFFFFFFFFFFFFFDLL) == 1))
        {
          if ([(IDSWRMExchange *)self _setRecommendedLinkType:uint64])
          {
            [(IDSWRMExchange *)self _notifyDelegate];
          }

          v8 = 1;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_setRecommendedLinkType:(unint64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  recommendedLinkType = self->_recommendedLinkType;
  if (recommendedLinkType != type)
  {
    self->_recommendedLinkType = type;
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_recommendedLinkType;
      v8 = "Unknown";
      if (v7 == 3)
      {
        v8 = "BT";
      }

      if (v7 == 1)
      {
        v9 = "WiFi";
      }

      else
      {
        v9 = v8;
      }

      *buf = 136315138;
      v12 = v9;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Recommended link changed to '%s'", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Recommended link changed to '%s'");
    }
  }

  return recommendedLinkType != type;
}

- (void)_notifyDelegate
{
  delegateBlock = self->_delegateBlock;
  if (delegateBlock)
  {
    delegateBlock[2](delegateBlock, self->_recommendedLinkType);
  }
}

- (void)_setReportInterval:(unint64_t)interval
{
  if (interval && !self->_reportInterval)
  {
    block[5] = v3;
    block[6] = v4;
    intervalCopy = 5000;
    if (interval > 0x1388)
    {
      intervalCopy = interval;
    }

    self->_reportInterval = intervalCopy;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7C6AAE8;
    block[3] = &unk_1E77E0818;
    block[4] = self;
    if (qword_1EB2BC130 != -1)
    {
      dispatch_once(&qword_1EB2BC130, block);
    }
  }
}

- (BOOL)_processMetricsConfigEvent:(id)event
{
  eventCopy = event;
  if ([(IDSWRMExchange *)self _isXPCDictionary:eventCopy]&& xpc_dictionary_get_uint64(eventCopy, "kMessageId") == 1103)
  {
    v5 = xpc_dictionary_get_value(eventCopy, "kMessageArgs");
    if ([(IDSWRMExchange *)self _isXPCDictionary:v5]&& (uint64 = xpc_dictionary_get_uint64(v5, "PeriodRptInval")) != 0)
    {
      [(IDSWRMExchange *)self _setReportInterval:uint64];
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)submitMetric:(id)metric
{
  metricCopy = metric;
  v5 = metricCopy;
  if (metricCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A7C6AC4C;
    v6[3] = &unk_1E77E0C88;
    v6[4] = self;
    v7 = metricCopy;
    [(IDSWRMExchange *)self _submitBlockAsync:v6];
  }
}

- (void)_updateLocalMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy && self->_metrics)
  {
    v5 = metricCopy;
    if ([metricCopy StreamBytesSent] != -1)
    {
      -[IDSWRMMetricContainer setStreamBytesSent:](self->_metrics, "setStreamBytesSent:", [v5 StreamBytesSent]);
    }

    if ([v5 StreamBytesReceived] != -1)
    {
      -[IDSWRMMetricContainer setStreamBytesReceived:](self->_metrics, "setStreamBytesReceived:", [v5 StreamBytesReceived]);
    }

    if ([v5 StreamPacketsSent] != -1)
    {
      -[IDSWRMMetricContainer setStreamPacketsSent:](self->_metrics, "setStreamPacketsSent:", [v5 StreamPacketsSent]);
    }

    if ([v5 StreamPacketsReceived] != -1)
    {
      -[IDSWRMMetricContainer setStreamPacketsReceived:](self->_metrics, "setStreamPacketsReceived:", [v5 StreamPacketsReceived]);
    }

    if ([v5 MessageSentSize] != -1)
    {
      -[IDSWRMMetricContainer setMessageSentSize:](self->_metrics, "setMessageSentSize:", [v5 MessageSentSize]);
    }

    if ([v5 MessageReceivedSize] != -1)
    {
      -[IDSWRMMetricContainer setMessageReceivedSize:](self->_metrics, "setMessageReceivedSize:", [v5 MessageReceivedSize]);
    }

    if ([v5 MessageDeliveredSize] != -1)
    {
      -[IDSWRMMetricContainer setMessageDeliveredSize:](self->_metrics, "setMessageDeliveredSize:", [v5 MessageDeliveredSize]);
    }

    if ([v5 MessageDeliveredDeliveryError] != -1)
    {
      -[IDSWRMMetricContainer setMessageDeliveredDeliveryError:](self->_metrics, "setMessageDeliveredDeliveryError:", [v5 MessageDeliveredDeliveryError]);
    }

    if ([v5 MessageDeliveredRTT] != -1)
    {
      -[IDSWRMMetricContainer setMessageDeliveredRTT:](self->_metrics, "setMessageDeliveredRTT:", [v5 MessageDeliveredRTT]);
    }

    self->_shouldSendReport = 1;
    metricCopy = v5;
  }
}

- (void)handleActiveLinkChange:(unint64_t)change
{
  v24 = *MEMORY[0x1E69E9840];
  if (change == 2 || self->_activeLinkType != change)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "Unknown";
      activeLinkType = self->_activeLinkType;
      if (activeLinkType == 3)
      {
        v8 = "BT";
      }

      else
      {
        v8 = "Unknown";
      }

      if (activeLinkType == 1)
      {
        v9 = "WiFi";
      }

      else
      {
        v9 = v8;
      }

      if (change == 3)
      {
        v6 = "BT";
      }

      if (change == 1)
      {
        v6 = "WiFi";
      }

      *buf = 136315394;
      v21 = v9;
      v22 = 2080;
      v23 = v6;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Active link changed from '%s' to '%s'", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = self->_activeLinkType;
      v11 = "Unknown";
      if (v10 == 3)
      {
        v12 = "BT";
      }

      else
      {
        v12 = "Unknown";
      }

      if (v10 == 1)
      {
        v13 = "WiFi";
      }

      else
      {
        v13 = v12;
      }

      if (change == 3)
      {
        v11 = "BT";
      }

      if (change == 1)
      {
        v11 = "WiFi";
      }

      v16 = v13;
      v17 = v11;
      _IDSLogV(0, @"IDSFoundation", @"IDSWRMExchange", @"Active link changed from '%s' to '%s'");
    }

    self->_activeLinkType = change;
    v14 = [(IDSWRMExchange *)self _newSubscribeStatusUpdateMessage:v16];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A7C6B030;
    v18[3] = &unk_1E77E0C88;
    v18[4] = self;
    v19 = v14;
    v15 = v14;
    [(IDSWRMExchange *)self _submitBlockAsync:v18];
  }
}

@end