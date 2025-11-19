@interface ACCTimeSyncServer
+ (id)sharedServer;
- (ACCTimeSyncServer)init;
- (BOOL)_initXPC;
- (void)_connectPeer:(id)a3;
- (void)_formSNTPPacket:(id)a3;
- (void)_getAccessoryTime:(id)a3;
- (void)_notifyServerActive;
- (void)_sendHostTimeToAccessory:(id)a3;
- (void)_setSystemTime:(__CFData *)a3;
- (void)dealloc;
- (void)setSystemTime:(__CFData *)a3;
@end

@implementation ACCTimeSyncServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__ACCTimeSyncServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_5 != -1)
  {
    dispatch_once(&sharedServer_once_5, block);
  }

  v2 = sharedServer_sharedInstance_5;

  return v2;
}

uint64_t __33__ACCTimeSyncServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_5 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (ACCTimeSyncServer)init
{
  v5.receiver = self;
  v5.super_class = ACCTimeSyncServer;
  v2 = [(ACCTimeSyncServer *)&v5 init];
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "in init", buf, 2u);
    }

    v3 = [(ACCTimeSyncServer *)v2 _initXPC];
    v2->_isActive = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: init finished with :%d", buf, 8u);
    }
  }

  return v2;
}

- (void)dealloc
{
  if (self->_isActive)
  {
    xpc_connection_cancel(self->_listenerConnection);
  }

  self->_isActive = 0;
  v3.receiver = self;
  v3.super_class = ACCTimeSyncServer;
  [(ACCTimeSyncServer *)&v3 dealloc];
}

- (void)setSystemTime:(__CFData *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer setSystemTime", v5, 2u);
  }

  [(ACCTimeSyncServer *)self _setSystemTime:a3];
}

- (void)_setSystemTime:(__CFData *)a3
{
  Length = CFDataGetLength(a3);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer _setSystemTime", buf, 2u);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "xpcEventName", "setSystemTime");
  BytePtr = CFDataGetBytePtr(a3);
  xpc_dictionary_set_data(v6, "sntpPacket", BytePtr, Length);
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __36__ACCTimeSyncServer__setSystemTime___block_invoke;
  v10[3] = &unk_100225A08;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(queue, v10);
}

void __36__ACCTimeSyncServer__setSystemTime___block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        xpc_connection_send_message(*(*(&v8 + 1) + 8 * v6), *(a1 + 40));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  if (![*(*(a1 + 32) + 24) count] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer no peers attached", v7, 2u);
  }
}

- (void)_formSNTPPacket:(id)a3
{
  v3 = a3;
  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
  if (v4)
  {
    v5 = v4;
    if (!xpc_data_get_bytes(v3, v4, 0, 0x30uLL))
    {
      free(v5);
      v5 = 0;
    }
  }

  else
  {
    [ACCTimeSyncServer _formSNTPPacket:?];
    v5 = v7;
  }

  return v5;
}

- (void)_getAccessoryTime:(id)a3
{
  v3 = [(ACCTimeSyncServer *)self _formSNTPPacket:a3];
  if (v3)
  {
    v4 = v3;
    platform_timeSync_getAccessoryTime(v3);

    free(v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ACCTimeSyncServer _getAccessoryTime:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer::%s could not create SNTP packet to send to accessory.", &v5, 0xCu);
  }
}

- (void)_sendHostTimeToAccessory:(id)a3
{
  v3 = [(ACCTimeSyncServer *)self _formSNTPPacket:a3];
  if (v3)
  {
    v4 = v3;
    platform_timeSync_sendHostTimeToAccessory(v3);

    free(v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ACCTimeSyncServer _sendHostTimeToAccessory:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer::%s could not create SNTP packet to send to accessory.", &v5, 0xCu);
  }
}

- (void)_notifyServerActive
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.coreaccessories.TimeSyncServerArrived", 0, 0, 1u);
}

- (BOOL)_initXPC
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("accessoryTimeSyncQueue", v3);
  queue = self->_queue;
  self->_queue = v4;

  mach_service = xpc_connection_create_mach_service("com.apple.timed.accessory-timesync", self->_queue, 1uLL);
  listenerConnection = self->_listenerConnection;
  self->_listenerConnection = mach_service;

  if (!self->_listenerConnection)
  {
    [ACCTimeSyncServer _initXPC];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer - initXPC", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.timed.accessory-timesync", self->_queue, &__block_literal_global_20);
  v8 = self->_listenerConnection;
  v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: listenerConnection", buf, 2u);
    }

    v10 = self->_listenerConnection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __29__ACCTimeSyncServer__initXPC__block_invoke_12;
    handler[3] = &unk_1002268A0;
    handler[4] = self;
    xpc_connection_set_event_handler(v10, handler);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: activate connection.", buf, 2u);
    }

    xpc_connection_resume(self->_listenerConnection);
    [(ACCTimeSyncServer *)self _notifyServerActive];
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: unable to create listner connection.", buf, 2u);
  }

  return v8 != 0;
}

void __29__ACCTimeSyncServer__initXPC__block_invoke(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: Received %s", &v4, 0xCu);
    }
  }
}

void __29__ACCTimeSyncServer__initXPC__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: peer connection arrived", &v8, 2u);
    }

    [*(a1 + 32) _connectPeer:v3];
  }

  else
  {
    if (type != &_xpc_type_error)
    {
      v5 = xpc_copy_description(v3);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136446210;
        string_ptr = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: received error or other non-connection type in handler for listener: %{public}s.", &v8, 0xCu);
      }

      free(v5);
      goto LABEL_9;
    }

    if (xpc_equal(v3, &_xpc_error_connection_interrupted))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      string_ptr = "com.apple.timed.accessory-timesync";
      v6 = "ACCTimeSyncServer: Service interrupted: %s";
LABEL_16:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
      goto LABEL_9;
    }

    if (xpc_equal(v3, &_xpc_error_connection_invalid))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      string_ptr = "com.apple.timed.accessory-timesync";
      v6 = "ACCTimeSyncServer: Service not available: %s";
      goto LABEL_16;
    }

    v7 = xpc_dictionary_get_value(v3, _xpc_error_key_description);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      string_ptr = xpc_string_get_string_ptr(v7);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: listener connection error %s", &v8, 0xCu);
    }
  }

LABEL_9:
}

- (void)_connectPeer:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: _connectPeer.", buf, 2u);
  }

  peers = self->_peers;
  if (!peers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_peers;
    self->_peers = v6;

    peers = self->_peers;
  }

  [(NSMutableArray *)peers addObject:v4];
  v8 = [(NSMutableArray *)self->_peers count];
  if (v8 >= 2)
  {
    v9 = v8;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer: unexpected number of peer connections %lu.", buf, 0xCu);
    }
  }

  xpc_connection_set_target_queue(v4, self->_queue);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __34__ACCTimeSyncServer__connectPeer___block_invoke;
  v11[3] = &unk_100228A08;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  xpc_connection_set_event_handler(v10, v11);
  xpc_connection_resume(v10);
}

void __34__ACCTimeSyncServer__connectPeer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(v3, "xpcEventName");
    string_ptr = xpc_string_get_string_ptr(v6);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136315138;
      *&v11[4] = string_ptr;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "AccessoryTimeSyncServer: received event name:%s", v11, 0xCu);
    }

    if (!strcmp(string_ptr, "getTimeFromAccessory"))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer:: getTimeFromAccessory msg received", v11, 2u);
      }

      v10 = xpc_dictionary_get_value(v3, "sntpPacket");
      [*(a1 + 32) _getAccessoryTime:v10];
    }

    else
    {
      if (strcmp(string_ptr, "sendTimeToAccessory"))
      {
        if (!strcmp(string_ptr, "timeSyncClientArrived") && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer:: timeSyncClientArrived msg received, adding to list of peers", v11, 2u);
        }

        goto LABEL_29;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer:: sendTimeToAccessory msg received", v11, 2u);
      }

      v10 = xpc_dictionary_get_value(v3, "sntpPacket");
      [*(a1 + 32) _sendHostTimeToAccessory:v10];
    }

    goto LABEL_29;
  }

  if (type != &_xpc_type_error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v5 = "ACCTimeSyncServer: Unexpected data, invalidating the connection.";
LABEL_5:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, v11, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (v3 != &_xpc_error_connection_interrupted && v3 != &_xpc_error_termination_imminent)
  {
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v3 == &_xpc_error_connection_invalid)
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ACCTimeSyncServer:: disconnecting peer", v11, 2u);
      }

      goto LABEL_7;
    }

    if (v9)
    {
      *v11 = 0;
      v5 = "ACCTimeSyncServer: Unexpected error dictionary, invalidating the connection.";
      goto LABEL_5;
    }

LABEL_6:
    xpc_connection_cancel(*(a1 + 40));
LABEL_7:
    [*(*(a1 + 32) + 24) removeObjectIdenticalTo:{*(a1 + 40), *v11}];
  }

LABEL_29:
}

- (void)_formSNTPPacket:(void *)a1 .cold.1(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[ACCTimeSyncServer _formSNTPPacket:]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Could not allocate SNTP buffer.", &v2, 0xCu);
  }

  *a1 = 0;
}

@end