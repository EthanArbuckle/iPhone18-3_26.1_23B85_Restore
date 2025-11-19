@interface IMPingTest
- (IMPingTest)initWithAddress:(id)a3 wifi:(BOOL)a4;
- (int)_setupAndPerformPing:(double)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)_setupReadSource:(int)a3 address:(sockaddr_in)a4 icmID:(unsigned __int16)a5 queue:(id)a6 completionHander:(id)a7;
- (void)dealloc;
- (void)startWithTimeout:(double)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)stop;
@end

@implementation IMPingTest

- (IMPingTest)initWithAddress:(id)a3 wifi:(BOOL)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = IMPingTest;
  v8 = [(IMPingTest *)&v23 init];
  if (v8)
  {
    if (objc_msgSend_isEqualToString_(v6, v7, IMPingTestDefaultGateway))
    {
      v11 = objc_msgSend_sharedInstance(NetworkChangeNotifier, v9, v10);
      v14 = objc_msgSend_myGatewayAddress(v11, v12, v13);
      v17 = objc_msgSend_copy(v14, v15, v16);
      address = v8->_address;
      v8->_address = v17;
    }

    else
    {
      v19 = objc_msgSend_copy(v6, v9, v10);
      v11 = v8->_address;
      v8->_address = v19;
    }

    v8->_usesWifi = a4;
    v20 = objc_alloc_init(_IMPingStatisticsCollector);
    collector = v8->_collector;
    v8->_collector = v20;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2);
  v4.receiver = self;
  v4.super_class = IMPingTest;
  [(IMPingTest *)&v4 dealloc];
}

- (void)startWithTimeout:(double)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v11 = a5;
  if (!v8)
  {
    v8 = dispatch_queue_create("com.apple.imcore.impingtest", 0);
  }

  v12 = objc_msgSend_copy(v11, v9, v10);
  v13 = self;
  objc_sync_enter(v13);
  isRunning = v13->_isRunning;
  if (!isRunning)
  {
    v13->_secondsToRun = a3;
    v13->_isRunning = 1;
  }

  objc_sync_exit(v13);

  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1959D1EC4;
    block[3] = &unk_1E7439CE0;
    v19 = !isRunning;
    block[4] = v13;
    v18 = a3;
    v16 = v8;
    v17 = v12;
    dispatch_async(v16, block);
  }
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isRunning = 0;
  sendTimer = obj->_sendTimer;
  if (sendTimer)
  {
    dispatch_source_cancel(sendTimer);
    v3 = obj->_sendTimer;
    obj->_sendTimer = 0;
  }

  socketReadSource = obj->_socketReadSource;
  if (socketReadSource)
  {
    dispatch_source_cancel(socketReadSource);
    v5 = obj->_socketReadSource;
    obj->_socketReadSource = 0;
  }

  objc_sync_exit(obj);
}

- (int)_setupAndPerformPing:(double)a3 queue:(id)a4 completionHandler:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v11 = a5;
  if (self->_isRunning)
  {
    v12 = objc_msgSend_UTF8String(self->_address, v9, v10);
    if (v12)
    {
      v13 = v12;
      LODWORD(v41) = 0;
      v42 = 0;
      HIDWORD(v41) = inet_addr(v12);
      if (HIDWORD(v41) == -1)
      {
        v15 = gethostbyname(v13);
        if (!v15)
        {
          v14 = 65;
          goto LABEL_22;
        }

        h_length = v15->h_length;
        BYTE1(v41) = v15->h_addrtype;
        v17 = *v15->h_addr_list;
        __memcpy_chk();
      }

      else
      {
        BYTE1(v41) = 2;
      }

      usesWifi = self->_usesWifi;
      v38 = 51200;
      v37[1] = 0xAAAAAAAA00000000;
      v19 = getprotobyname("icmp");
      if (v19)
      {
        v20 = socket(2, 2, v19->p_proto);
        v14 = 1;
        if ((v20 & 0x80000000) == 0)
        {
          v21 = v20;
          fcntl(v20, 4, 4);
          setsockopt(v21, 0xFFFF, 4098, &v38, 4u);
          v40 = 1;
          if (usesWifi)
          {
            setsockopt(v21, 0, 6969, &v40, 4u);
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            v23 = IMPCInterfaceName();
            v24 = CFRetain(v23);
            v27 = objc_msgSend_length(v24, v25, v26);
            v28 = @"pdp_ip0";
            if (v27)
            {
              v28 = v24;
            }

            v29 = v28;

            v30 = v29;
            v33 = objc_msgSend_UTF8String(v30, v31, v32);

            v39 = if_nametoindex(v33);
            setsockopt(v21, 0, 25, &v39, 4u);
            objc_autoreleasePoolPop(v22);
          }

          v37[0] = 1;
          if (!setsockopt(v21, 0xFFFF, 4102, v37, 0x10u))
          {
            goto LABEL_20;
          }

          close(v21);
          v14 = *__error();
          if (!v14)
          {
            v21 = 0xFFFFFFFFLL;
LABEL_20:
            objc_msgSend__doPingWithSocket_address_timeToRunTestInSeconds_pingTimeout_queue_completionHandler_(self, v34, v21, v41, v42, v8, v11, a3, 2.0);
            v14 = 0;
          }
        }
      }

      else
      {
        v14 = 46;
      }
    }

    else
    {
      v14 = 22;
    }
  }

  else
  {
    v14 = 4;
  }

LABEL_22:

  v35 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_setupReadSource:(int)a3 address:(sockaddr_in)a4 icmID:(unsigned __int16)a5 queue:(id)a6 completionHander:(id)a7
{
  v9 = *a4.sin_zero;
  v10 = *&a4.sin_len;
  v28 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = dispatch_source_create(MEMORY[0x1E69E96F8], a3, 0, a6);
  socketReadSource = self->_socketReadSource;
  self->_socketReadSource = v14;

  v16 = self->_socketReadSource;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1959D2890;
  v20[3] = &unk_1E7439D30;
  v22 = a3;
  v20[4] = self;
  v21 = v13;
  v17 = v13;
  dispatch_source_set_cancel_handler(v16, v20);
  v18 = self->_socketReadSource;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1959D293C;
  handler[3] = &unk_1E7439D58;
  handler[4] = self;
  v24 = a3;
  v25 = v10;
  v26 = v9;
  v27 = a5;
  dispatch_source_set_event_handler(v18, handler);

  v19 = *MEMORY[0x1E69E9840];
}

@end