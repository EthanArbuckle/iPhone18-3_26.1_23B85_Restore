@interface FigExternalSyncDevice
- (FigExternalSyncDevice)initWithHpmEntID:(unint64_t)a3 ssamEntID:(unint64_t)a4 connectionState:(BOOL)a5 vid:(unint64_t)a6 pid:(unint64_t)a7;
- (id)getDeviceInfoDict;
- (void)_SSAMDeivceTerminatedService:(unint64_t)a3;
- (void)_setSSAMPortEnabled:(BOOL)a3;
- (void)_setupSSAMInterestNotification;
- (void)_teardownSSAMInterestNotification;
- (void)dealloc;
- (void)forceCleanup;
@end

@implementation FigExternalSyncDevice

- (FigExternalSyncDevice)initWithHpmEntID:(unint64_t)a3 ssamEntID:(unint64_t)a4 connectionState:(BOOL)a5 vid:(unint64_t)a6 pid:(unint64_t)a7
{
  v20.receiver = self;
  v20.super_class = FigExternalSyncDevice;
  v12 = [(FigExternalSyncDevice *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_usbConnected = a5;
    v12->_hpmentid = a3;
    v12->_ssamentid = a4;
    v12->_pid = a7;
    v12->_vid = a6;
    v12->_queue = dispatch_queue_create("com.apple.cameracapture.figexternalsyncdevice", 0);
    v14 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%llu, %llu", v13->_vid, v13->_pid), "UTF8String"];
    v15 = strlen(v14);
    CC_SHA256(v14, v15, md);
    v16 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v16 appendFormat:@"%02x", md[i]];
    }

    v13->_externalSyncDeviceDeviceIdentifer = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v16];
    [(FigExternalSyncDevice *)v13 _setSSAMPortEnabled:1];
    [(FigExternalSyncDevice *)v13 _setupSSAMInterestNotification];
  }

  return v13;
}

- (void)dealloc
{
  [(FigExternalSyncDevice *)self forceCleanup];

  v3.receiver = self;
  v3.super_class = FigExternalSyncDevice;
  [(FigExternalSyncDevice *)&v3 dealloc];
}

- (void)forceCleanup
{
  [(FigExternalSyncDevice *)self _teardownSSAMInterestNotification];

  [(FigExternalSyncDevice *)self _setSSAMPortEnabled:0];
}

- (void)_setupSSAMInterestNotification
{
  [(FigExternalSyncDevice *)self _teardownSSAMInterestNotification];
  v3 = IORegistryEntryIDMatching(self->_ssamentid);
  v4 = *MEMORY[0x1E696CD60];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v3);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = IONotificationPortCreate(v4);
    self->_ioServiceNotificationPort = v7;
    if (v7)
    {
      IONotificationPortSetDispatchQueue(v7, self->_queue);
      notification = 0;
      if (IOServiceAddInterestNotification(self->_ioServiceNotificationPort, v6, "IOGeneralInterest", sSSAMDeviceChangeHandler, self, &notification))
      {
        [FigExternalSyncDevice _setupSSAMInterestNotification];
      }

      else
      {
        self->_serviceNotification = notification;
      }
    }

    else
    {
      [FigExternalSyncDevice _setupSSAMInterestNotification];
    }

    IOObjectRelease(v6);
  }

  else
  {
    [FigExternalSyncDevice _setupSSAMInterestNotification];
  }
}

- (void)_teardownSSAMInterestNotification
{
  ioServiceNotificationPort = self->_ioServiceNotificationPort;
  if (ioServiceNotificationPort)
  {
    IONotificationPortDestroy(ioServiceNotificationPort);
    self->_ioServiceNotificationPort = 0;
  }

  serviceNotification = self->_serviceNotification;
  if (serviceNotification)
  {
    IOObjectRelease(serviceNotification);
    self->_serviceNotification = 0;
  }
}

- (void)_SSAMDeivceTerminatedService:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (dword_1EB58E5E0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_ssamentid == a3)
  {
    *&self->_usbConnected = 0;
    [(FigExternalSyncDevice *)self _teardownSSAMInterestNotification];
    [+[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager](FigExternalSyncDeviceDiscoverySessionManager "sharedFigExternalSyncDeviceDiscoverySessionManager")];
  }
}

- (void)_setSSAMPortEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(FigExternalSyncDevice *)self isSSAMEnabled]!= a3)
  {
    v5 = IORegistryEntryIDMatching(self->_hpmentid);
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v5);
    theInterface = 0;
    v16 = 0;
    theScore = 0;
    v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x12u, 0xA1u, 0xDCu, 0xCFu, 0xCFu, 0x7Au, 0x47u, 0x75u, 0xBEu, 0xE5u, 0x9Cu, 0x43u, 0x19u, 0xF4u, 0xCDu, 0x2Bu);
    v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    if (IOCreatePlugInInterfaceForService(MatchingService, v7, v8, &theInterface, &theScore))
    {
      [FigExternalSyncDevice _setSSAMPortEnabled:];
    }

    else
    {
      v9 = theInterface;
      QueryInterface = (*theInterface)->QueryInterface;
      v11 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x7Fu, 0xDCu, 0xF9u, 0x71u, 0x6Cu, 0x14u, 0x4Du, 0xB4u, 0xAEu, 6u, 0x77u, 0x7Bu, 0x6Du, 0xBDu, 6u, 0xFFu);
      v12 = CFUUIDGetUUIDBytes(v11);
      if ((QueryInterface)(v9, *&v12.byte0, *&v12.byte8, &v16))
      {
        [FigExternalSyncDevice _setSSAMPortEnabled:];
      }

      else
      {
        ((*theInterface)->Release)(theInterface);
        if (v16)
        {
          (*(*v16 + 48))(v16, v3, 0, 0);
          if (dword_1EB58E5E0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          self->_ssamEnabled = v3;
        }
      }
    }

    if (theInterface)
    {
      IODestroyPlugInInterface(theInterface);
    }

    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
    }
  }
}

- (id)getDeviceInfoDict
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_pid), @"ExternalSyncDeviceDiscoverySessionUpdatePID"}];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_vid), @"ExternalSyncDeviceDiscoverySessionUpdateVID"}];
  return v3;
}

@end