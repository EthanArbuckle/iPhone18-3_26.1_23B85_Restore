@interface OSActivityStream
- (BOOL)establishTrust:(id)a3;
- (BOOL)streamEvent:(id)a3 error:(id)a4;
- (OSActivityStream)init;
- (OSActivityStreamDelegate)delegate;
- (OSDeviceDelegate)deviceDelegate;
- (id)getInfoForDevice:(id)a3 andKey:(id)a4;
- (unint64_t)events;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)setDeviceDelegate:(id)a3;
- (void)setEvents:(unint64_t)a3;
- (void)setPredicate:(id)a3;
- (void)start;
- (void)startLocal;
- (void)startRemote;
- (void)stop;
- (void)stopLocal;
- (void)stopRemote;
@end

@implementation OSActivityStream

- (OSActivityStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OSDeviceDelegate)deviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceDelegate);

  return WeakRetained;
}

- (BOOL)establishTrust:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v18 = 0;
      goto LABEL_31;
    }

    *buffer = 0;
    v15 = MEMORY[0x277D86220];
    v16 = "Invalid input.";
    v17 = 2;
LABEL_15:
    _os_log_impl(&dword_22E01A000, v15, OS_LOG_TYPE_DEFAULT, v16, buffer, v17);
    goto LABEL_16;
  }

  v6 = [v4 devType];
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v7 = [v5 mobileDeviceRef];
      v8 = self;
      strcpy(buffer, "0000000000000000000000000000000000000000");
      buffer[41] = 0;
      if (!v7)
      {
        v13 = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid inputs", &v27, 2u);
          v13 = 0;
        }

        goto LABEL_30;
      }

      v9 = v8;
      v10 = (*(mobdevtab + 128))(v7);
      v11 = v10;
      if (v10)
      {
        CFStringGetCString(v10, buffer, 42, 0x8000100u);
      }

      v12 = (*(mobdevtab + 32))(v7);
      if (v12)
      {
        v13 = v12;
        v14 = (*(mobdevtab + 136))();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = 136315650;
          v28 = buffer;
          v29 = 1024;
          v30 = v13;
          v31 = 2112;
          v32 = v14;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%s) AMDeviceConnect failed with %08x (%@)\n", &v27, 0x1Cu);
        }

        goto LABEL_26;
      }

      v19 = (*(mobdevtab + 40))(v7);
      if (v19 != -402653155 && v19 != 0)
      {
        v23 = (*(mobdevtab + 120))(v7);
        if (v23)
        {
          v13 = v23;
          v14 = (*(mobdevtab + 136))();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136315650;
            v28 = buffer;
            v29 = 1024;
            v30 = v13;
            v31 = 2112;
            v32 = v14;
            v24 = MEMORY[0x277D86220];
            v25 = "(%s) AMDevicePair failed with %08x (%@)\n";
LABEL_35:
            _os_log_impl(&dword_22E01A000, v24, OS_LOG_TYPE_DEFAULT, v25, &v27, 0x1Cu);
          }

LABEL_25:
          (*(mobdevtab + 64))(v7);
LABEL_26:
          if (v11)
          {
            CFRelease(v11);
          }

          if (v14)
          {
            CFRelease(v14);
          }

LABEL_30:
          v18 = v13 == 0;
          goto LABEL_31;
        }

        v26 = (*(mobdevtab + 40))(v7);
        if (v26 != -402653155)
        {
          v13 = v26;
          if (v26)
          {
            v14 = (*(mobdevtab + 136))(v26);
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            v27 = 136315650;
            v28 = buffer;
            v29 = 1024;
            v30 = v13;
            v31 = 2112;
            v32 = v14;
            v24 = MEMORY[0x277D86220];
            v25 = "(%s) AMDeviceStartSession failed with %08x (%@)\n";
            goto LABEL_35;
          }
        }
      }

      logdev_notification_callback(0, buffer, v7, v9);
      v14 = 0;
      v13 = 0;
      goto LABEL_25;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buffer = 134217984;
    *&buffer[4] = [v5 devType];
    v15 = MEMORY[0x277D86220];
    v16 = "Unknown logging device type %ld";
    v17 = 12;
    goto LABEL_15;
  }

  v18 = 1;
LABEL_31:

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)getInfoForDevice:(id)a3 andKey:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v11 = MEMORY[0x277D86220];
      v12 = "Invalid input.";
      v13 = 2;
LABEL_16:
      _os_log_impl(&dword_22E01A000, v11, OS_LOG_TYPE_DEFAULT, v12, &v20, v13);
    }

LABEL_17:
    v10 = 0;
    goto LABEL_27;
  }

  v7 = [v5 devType];
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      v8 = [v5 mobileDeviceRef];
      if (_logdev_mobdev_vtable_onceToken != -1)
      {
        dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
      }

      v9 = &_logdev_mobdev_vtable_vtab;
      if (!_logdev_mobdev_vtable_valid)
      {
        v9 = 0;
      }

      mobdevtab = v9;
      if (_logdev_mobdev_vtable_valid)
      {
        v10 = off_27DA52A88(v8, 0, v6);
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = [v5 devType];
      v11 = MEMORY[0x277D86220];
      v12 = "Unknown logging device type %ld";
      v13 = 12;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"DeviceName"])
  {
    v14 = [v5 simDev];
    v10 = [v14 name];
  }

  else
  {
    if ([v6 isEqualToString:@"UniqueDeviceID"])
    {
      v14 = [v5 simDev];
      v15 = [v14 UDID];
      v16 = [v15 UUIDString];
    }

    else
    {
      if ([v6 isEqualToString:@"ProductType"])
      {
        v14 = [v5 simDev];
        v17 = [v14 deviceType];
      }

      else
      {
        if (![v6 isEqualToString:@"ProductName"])
        {
          goto LABEL_17;
        }

        v14 = [v5 simDev];
        v17 = [v14 runtime];
      }

      v15 = v17;
      v16 = [v17 name];
    }

    v10 = v16;
  }

LABEL_27:
  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setDeviceDelegate:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  deviceSearchSession = self->_deviceSearchSession;
  if (deviceSearchSession)
  {
    if (_logdev_mobdev_vtable_onceToken != -1)
    {
      dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
    }

    if (_logdev_mobdev_vtable_valid)
    {
      v6 = &_logdev_mobdev_vtable_vtab;
    }

    else
    {
      v6 = 0;
    }

    mobdevtab = v6;
    if (_logdev_mobdev_vtable_valid)
    {
      off_27DA52A98(deviceSearchSession);
    }

    self->_deviceSearchSession = 0;
  }

  objc_storeWeak(&self->_deviceDelegate, v4);
  if (v4)
  {
    v7 = self;
    if (_logdev_mobdev_vtable_onceToken != -1)
    {
      dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
    }

    v8 = 0;
    if (_logdev_mobdev_vtable_valid)
    {
      v9 = &_logdev_mobdev_vtable_vtab;
    }

    else
    {
      v9 = 0;
    }

    mobdevtab = v9;
    if (_logdev_mobdev_vtable_valid)
    {
      *buf = 0;
      v10 = _os_trace_calloc_typed();
      *v10 = logdev_notification_callback;
      v10[1] = v7;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionarySetValue(Mutable, @"NotificationOptionSearchForPairedDevices", *MEMORY[0x277CBED28]);
        (*(mobdevtab + 104))(observation_callback, 0, 0, v10, buf, v12);
        CFRelease(v12);
        v8 = *buf;
      }

      else
      {
        free(v10);
        v8 = 0;
      }
    }

    self->_deviceSearchSession = v8;
    v13 = v7;
    if (watchForSims_onceToken != -1)
    {
      dispatch_once(&watchForSims_onceToken, &__block_literal_global_177);
    }

    if (watchForSims_SimServiceContextClass && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = objc_autoreleasePoolPush();
      v40 = 0;
      v15 = [watchForSims_SimServiceContextClass sharedServiceContextForDeveloperDir:0 error:&v40];
      v16 = v40;
      v17 = v16;
      if (v15)
      {
        v39 = v16;
        v18 = [v15 defaultDeviceSetWithError:&v39];
        v19 = v39;

        if (v18)
        {
          context = v14;
          v20 = dispatch_get_global_queue(17, 0);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __watchForSims_block_invoke_2;
          v37[3] = &unk_2787ADCB0;
          v21 = v13;
          v38 = v21;
          [v18 registerNotificationHandlerOnQueue:v20 handler:v37];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v22 = [v18 devices];
          v23 = [v22 countByEnumeratingWithState:&v33 objects:buf count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v34;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v34 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                _simDeviceUpdate(*(*(&v33 + 1) + 8 * i), v21);
              }

              v24 = [v22 countByEnumeratingWithState:&v33 objects:buf count:16];
            }

            while (v24);
          }

          v14 = context;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v19 localizedDescription];
          v30 = [v29 UTF8String];
          *buf = 136315138;
          *&buf[4] = v30;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "watchForSims error: %s", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v17 localizedDescription];
          v28 = [v27 UTF8String];
          *buf = 136315138;
          *&buf[4] = v28;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "watchForSims error: %s", buf, 0xCu);
        }

        v19 = v17;
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)stopRemote
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(OSLogDevice *)self->_device devType];
  if (v3 == 2)
  {
LABEL_16:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v3 != 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      device = self->_device;
      *buf = 138412290;
      v13 = device;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown logging device type %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  deviceEventSession = obj->_deviceEventSession;
  if (deviceEventSession)
  {
    if (_logdev_mobdev_vtable_onceToken != -1)
    {
      v10 = obj->_deviceEventSession;
      dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
      v4 = obj;
      deviceEventSession = v10;
    }

    v6 = &_logdev_mobdev_vtable_vtab;
    if (!_logdev_mobdev_vtable_valid)
    {
      v6 = 0;
    }

    mobdevtab = v6;
    if (_logdev_mobdev_vtable_valid)
    {
      OTRCancelAndFreeActivityStream(deviceEventSession);
      v4 = obj;
    }

    v4->_deviceEventSession = 0;
  }

  objc_sync_exit(v4);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopLocal
{
  if (stopLocal_onceToken != -1)
  {
    dispatch_once(&stopLocal_onceToken, &__block_literal_global_331);
  }

  os_unfair_lock_lock(&stopLocal_stop_lock);
  stream = self->_stream;
  if (stream)
  {
    *(stream + 20) = 89;
    xpc_connection_cancel(*(stream + 2));
    xpc_release(*(stream + 2));
    self->_stream = 0;
  }

  os_unfair_lock_unlock(&stopLocal_stop_lock);
}

- (void)stop
{
  if (self->_device)
  {
    [(OSActivityStream *)self stopRemote];
  }

  else
  {
    [(OSActivityStream *)self stopLocal];
  }
}

- (void)startLocal
{
  v47 = *MEMORY[0x277D85DE8];
  options = self->_options;
  if ((options & 4) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__OSActivityStream_startLocal__block_invoke;
  aBlock[3] = &unk_2787ADC60;
  aBlock[4] = self;
  v5 = v4;
  v44 = v5;
  v6 = _Block_copy(aBlock);
  v7 = options & 0x100;
  if ((options & 0x200) != 0)
  {
    v7 = 288;
  }

  v8 = options & 1 | (4 * ((options >> 1) & 1)) | v7 | (options >> 31 << 7);
  device = self->_device;
  if (device && [(OSLogDevice *)device devType]== 2)
  {
    v10 = [(OSLogDevice *)self->_device uid];
    self->_stream = os_activity_stream_for_simulator([v10 UTF8String], v8, v6);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = self->_pids;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        stream = self->_stream;
        v17 = [*(*(&v39 + 1) + 8 * i) intValue];
        if (stream)
        {
          os_activity_stream_add_pid(stream, v17);
        }

        else
        {
          self->_stream = os_activity_stream_for_pid(v17, v8, v6);
        }
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = self->_uids;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = self->_stream;
        v24 = [*(*(&v35 + 1) + 8 * j) unsignedIntValue];
        if (v23)
        {
          os_activity_stream_add_uid(v23, v24);
        }

        else
        {
          self->_stream = os_activity_stream_for_uid(v24, v8, v6);
        }
      }

      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v20);
  }

  v25 = self->_stream;
  if (!v25)
  {
    v25 = os_activity_stream_for_pid(-1, v8, v6);
    self->_stream = v25;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __30__OSActivityStream_startLocal__block_invoke_2;
  v34[3] = &unk_2787ADC88;
  v34[4] = self;
  *(v25 + 8) = _Block_copy(v34);
  *(self->_stream + 16) |= LODWORD(self->_eventFilter);
  v26 = [(_OSLogStreamFilter *)self->_streamFilter data];
  v27 = v26;
  v28 = self->_stream;
  if (v26)
  {
    v29 = [v26 bytes];
    v30 = [v27 length];
    v31 = v28;
    v32 = v29;
  }

  else
  {
    v31 = v28;
    v32 = 0;
    v30 = 0;
  }

  _os_activity_stream_resume_with_filter(v31, v32, v30);

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __30__OSActivityStream_startLocal__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v8 = 1;
    if (!a3)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v5 = [OSActivityEvent activityEventFromStreamEntry:a2];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(*(a1 + 32) + 96);
  if (v6)
  {
    if (([v6 evaluateWithObject:v5] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 addObject:v5];
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = [*(a1 + 32) streamEvent:v5 error:0];
LABEL_8:

  if (a3)
  {
LABEL_9:
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a3 userInfo:0];
    v8 = [*(a1 + 32) streamEvent:0 error:v9] & v8;
  }

  return v8;
}

uint64_t __30__OSActivityStream_startLocal__block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  switch(a3)
  {
    case 3:
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
      [*(a1 + 32) streamEvent:0 error:v6];
      [*(a1 + 32) stop];

      break;
    case 2:
      v10 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        [v10 streamDidStop:*(a1 + 32)];
      }

      else
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:89 userInfo:0];
        [*(a1 + 32) streamEvent:0 error:v7];
      }

      [*(a1 + 32) stop];
      break;
    case 1:
      v9 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        [v9 streamDidStart:*(a1 + 32)];
      }

      break;
  }

  return MEMORY[0x2821F97C8]();
}

- (void)startRemote
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(OSLogDevice *)self->_device devType];
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        device = self->_device;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = device;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown logging device type %@", &buf, 0xCu);
      }

      goto LABEL_54;
    }

    v4 = [(OSLogDevice *)self->_device mobileDeviceRef];
    v5 = self;
    if (_logdev_mobdev_vtable_onceToken != -1)
    {
      dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
    }

    v6 = &_logdev_mobdev_vtable_vtab;
    if (!_logdev_mobdev_vtable_valid)
    {
      v6 = 0;
    }

    mobdevtab = v6;
    if (!_logdev_mobdev_vtable_valid)
    {
      goto LABEL_10;
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 0x40000000;
    v41[2] = __logdev_stream_events_block_invoke;
    v41[3] = &__block_descriptor_tmp_3375;
    v41[4] = logdev_message_callback;
    v41[5] = v5;
    v46 = 0xFFFF;
    valuePtr = -1;
    v45 = 60;
    v44 = 0;
    if (_CopyOTRServiceConnectionForDevice(v4, &v44, @"com.apple.os_trace_relay"))
    {
      if (_CopyOTRServiceConnectionForDevice(v4, &v44, @"com.apple.syslog_relay"))
      {
LABEL_10:
        v7 = 0;
LABEL_53:
        v5->_deviceEventSession = v7;
LABEL_54:
        v32 = *MEMORY[0x277D85DE8];
        return;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v14 = v44;
      goto LABEL_23;
    }

    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v11 = CFNumberCreate(0, kCFNumberIntType, &v46);
    v12 = CFNumberCreate(0, kCFNumberIntType, &v45);
    keys[0] = xmmword_2787AEC50;
    keys[1] = *off_2787AEC60;
    values[0] = @"StartActivity";
    values[1] = v10;
    values[2] = v11;
    values[3] = v12;
    v13 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v14 = v44;
    v15 = (*(mobdevtab + 72))(v44, v13, 200, 0);
    if (v15)
    {
      if (v15 == -402653139)
      {
        if (v14)
        {
          (*(mobdevtab + 88))(v14);
          CFRelease(v14);
          v44 = 0;
        }

        v16 = _CopyOTRServiceConnectionForDevice(v4, &v44, @"com.apple.syslog_relay");
        v14 = v44;
        if (!v16)
        {
LABEL_23:
          v48[0] = 0;
          v48[1] = v48;
          v48[2] = 0x2000000000;
          v49 = 1;
          v17 = dispatch_queue_create("com.apple.os_trace_relay.queue", MEMORY[0x277D85CD8]);
          v18 = (*(mobdevtab + 80))(v14);
          v19 = dispatch_source_create(MEMORY[0x277D85D28], v18, 0, v17);
          v7 = _os_trace_calloc_typed();
          *v7 = v14;
          v7[1] = v19;
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 0x40000000;
          v54 = __OTRStartLegacyStreaming_block_invoke;
          v55 = &unk_2787AECC8;
          v58 = v19;
          v59 = v14;
          v56 = v41;
          v57 = v48;
          dispatch_source_set_event_handler(v19, &buf);
          v20 = dispatch_semaphore_create(0);
          v7[3] = v20;
          if (v20)
          {
            v21 = v7[1];
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 0x40000000;
            handler[2] = __OTRStartLegacyStreaming_block_invoke_2;
            handler[3] = &unk_2787AECF0;
            handler[4] = v41;
            handler[5] = v7;
            dispatch_source_set_cancel_handler(v21, handler);
            dispatch_activate(v19);
            _Block_object_dispose(v48, 8);
LABEL_45:
            if (v10)
            {
              CFRelease(v10);
            }

            if (v11)
            {
              CFRelease(v11);
            }

            if (v12)
            {
              CFRelease(v12);
            }

            if (v7)
            {
              signal(2, 1);
              global_queue = dispatch_get_global_queue(21, 0);
              v31 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, global_queue);
              v7[2] = v31;
              *&buf = MEMORY[0x277D85DD0];
              *(&buf + 1) = 0x40000000;
              v54 = __logdev_stream_events_block_invoke_2;
              v55 = &__block_descriptor_tmp_4;
              v56 = v7;
              dispatch_source_set_event_handler(v31, &buf);
              dispatch_activate(v31);
            }

            goto LABEL_53;
          }

          free(v7);
          _Block_object_dispose(v48, 8);
        }
      }

LABEL_40:
      v28 = 0;
      goto LABEL_41;
    }

    CFRelease(v13);
    LOBYTE(v48[0]) = 0;
    *&buf = 0;
    if ((*(mobdevtab + 8))(v14, v48, 1) == 1)
    {
      v22 = LOBYTE(v48[0]);
      if (LOBYTE(v48[0]) != 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        LODWORD(handler[0]) = 67109120;
        HIDWORD(handler[0]) = v22;
        v25 = MEMORY[0x277D86220];
        v26 = "Got incorrect response type: %hhu";
        goto LABEL_36;
      }

      v23 = (*(mobdevtab + 16))(v14, &buf, 0, 0);
      if (v23)
      {
        v24 = v23;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        LODWORD(handler[0]) = 67109120;
        HIDWORD(handler[0]) = v24;
        v25 = MEMORY[0x277D86220];
        v26 = "Failed to receive response: %x";
LABEL_36:
        v27 = 8;
        goto LABEL_37;
      }

      if (buf)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(buf))
        {
          v28 = buf;
          if (buf)
          {
            Value = CFDictionaryGetValue(buf, @"Status");
            if (CFEqual(Value, @"RequestSuccessful"))
            {
              v35 = (*(mobdevtab + 80))(v14);
              if (v35 != -1)
              {
                v36 = v35;
                v37 = _os_trace_calloc_typed();
                *v37 = v14;
                v29 = v37;
                v38 = dispatch_queue_create("com.apple.os_trace_relay_client", 0);
                v29[3] = dispatch_semaphore_create(0);
                v39 = dispatch_source_create(MEMORY[0x277D85D28], v36, 0, v38);
                v29[1] = v39;
                v43[0] = MEMORY[0x277D85DD0];
                v43[1] = 0x40000000;
                v43[2] = __OTRCreateActivityStreamForPID_block_invoke;
                v43[3] = &unk_2787AEC78;
                v43[4] = v41;
                v43[5] = v29;
                dispatch_source_set_event_handler(v39, v43);
                v40 = v29[1];
                v42[0] = MEMORY[0x277D85DD0];
                v42[1] = 0x40000000;
                v42[2] = __OTRCreateActivityStreamForPID_block_invoke_2;
                v42[3] = &unk_2787AECA0;
                v42[4] = v41;
                v42[5] = v29;
                dispatch_source_set_cancel_handler(v40, v42);
                dispatch_activate(v29[1]);
                if (v38)
                {
                  dispatch_release(v38);
                }

LABEL_44:
                CFRelease(v28);
                v7 = v29;
                goto LABEL_45;
              }
            }

LABEL_41:
            if (v14)
            {
              (*(mobdevtab + 88))(v14);
              CFRelease(v14);
              v44 = 0;
            }

            v29 = 0;
            v7 = 0;
            if (!v28)
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }

          goto LABEL_40;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_38:
          if (buf)
          {
            CFRelease(buf);
          }

          goto LABEL_40;
        }

        LOWORD(handler[0]) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "Incorrect response type";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        LOWORD(handler[0]) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "Got NULL response dictionary";
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      LOWORD(handler[0]) = 0;
      v25 = MEMORY[0x277D86220];
      v26 = "Failed to get message type response";
    }

    v27 = 2;
LABEL_37:
    _os_log_impl(&dword_22E01A000, v25, OS_LOG_TYPE_DEFAULT, v26, handler, v27);
    goto LABEL_38;
  }

  v8 = *MEMORY[0x277D85DE8];

  [(OSActivityStream *)self startLocal];
}

- (BOOL)streamEvent:(id)a3 error:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (v7)
  {
    if (self->_delegateHasDidFail)
    {
      [WeakRetained streamDidFail:self error:v7];
LABEL_14:
      v15 = 1;
      goto LABEL_17;
    }

    if (!self->_delegateStreamWithError)
    {
      goto LABEL_14;
    }

    v12 = self;
    v13 = v7;
    goto LABEL_9;
  }

  if (self->_delegateStreamErrorLess)
  {
    if (!v6)
    {
      v14 = [WeakRetained activityStream:self results:0];
      goto LABEL_16;
    }

    v19[0] = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v11 = [v9 activityStream:self results:v10];
  }

  else
  {
    if (!self->_delegateStreamWithError)
    {
      goto LABEL_14;
    }

    if (!v6)
    {
      v12 = self;
      v13 = 0;
LABEL_9:
      v14 = [WeakRetained activityStream:v12 results:0 error:v13];
LABEL_16:
      v15 = v14;
      goto LABEL_17;
    }

    v18 = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v11 = [v9 activityStream:self results:v10 error:0];
  }

  v15 = v11;

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)start
{
  if (self->_device)
  {
    [(OSActivityStream *)self startRemote];
  }

  else
  {
    [(OSActivityStream *)self startLocal];
  }
}

- (void)setPredicate:(id)a3
{
  v17 = a3;
  if (v17)
  {
    v4 = [[_OSLogPredicateMapper alloc] initWithPredicate:v17 andValidate:0];
    v5 = [_OSLogLegacyPredicateMapper alloc];
    v6 = [(_OSLogPredicateMapper *)v4 mappedPredicate];
    v7 = [(_OSLogPredicateMapper *)v5 initWithPredicate:v6];

    v8 = [(_OSLogPredicateMapper *)v7 mappedPredicate];

    if (!v8)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = [(_OSLogPredicateMapper *)v7 validationErrors];
      v15 = [v14 componentsJoinedByString:@"\n"];
      v16 = [v13 exceptionWithName:@"OSLogInvalidPredicateException" reason:v15 userInfo:0];

      objc_exception_throw(v16);
    }

    v9 = [(_OSLogPredicateMapper *)v7 mappedPredicate];
    predicate = self->_predicate;
    self->_predicate = v9;

    if (([(_OSLogPredicateMapper *)v4 flags]& 1) != 0)
    {
      self->_options |= 0x300uLL;
    }

    if (([(_OSLogPredicateMapper *)v4 flags]& 2) != 0)
    {
      self->_options |= 0x100uLL;
    }
  }

  else
  {
    v4 = self->_predicate;
    self->_predicate = 0;
  }

  v11 = [[_OSLogStreamFilter alloc] initWithPredicate:self->_predicate];
  streamFilter = self->_streamFilter;
  self->_streamFilter = v11;
}

- (unint64_t)events
{
  if ((self->_eventFilter & 2) != 0)
  {
    return ((self->_eventFilter << 63) >> 63) & 0x203 | self->_eventFilter & 0x400 | 0x300;
  }

  else
  {
    return ((self->_eventFilter << 63) >> 63) & 0x203 | self->_eventFilter & 0x400;
  }
}

- (void)setEvents:(unint64_t)a3
{
  v3 = (a3 & 0x203) != 0;
  if ((a3 & 0x400) != 0)
  {
    v3 = 4;
  }

  if ((a3 & 0x300) != 0)
  {
    v3 = 2;
  }

  if (v3)
  {
    self->_eventFilter = v3;
  }
}

- (void)dealloc
{
  stream = self->_stream;
  if (stream)
  {
    *(stream + 20) = 89;
    xpc_connection_cancel(*(stream + 2));
    xpc_release(*(stream + 2));
  }

  v4.receiver = self;
  v4.super_class = OSActivityStream;
  [(OSActivityStream *)&v4 dealloc];
}

- (OSActivityStream)init
{
  v8.receiver = self;
  v8.super_class = OSActivityStream;
  v2 = [(OSActivityStream *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    pids = v2->_pids;
    v2->_pids = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    uids = v2->_uids;
    v2->_uids = v5;

    *&v2->_options = xmmword_22E0816B0;
    v2->_deviceSearchSession = 0;
    v2->_deviceEventSession = 0;
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  self->_delegateHasDidFail = objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    *&self->_delegateStreamErrorLess = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
    self->_delegateStreamErrorLess = 0;
    self->_delegateStreamWithError = (v4 & 1) != 0;
  }

  objc_storeWeak(&self->_delegate, obj);
}

@end