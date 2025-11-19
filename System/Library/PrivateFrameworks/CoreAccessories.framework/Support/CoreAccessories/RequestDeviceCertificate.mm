@interface RequestDeviceCertificate
@end

@implementation RequestDeviceCertificate

void __iap2_deviceAuthentication_RequestDeviceCertificate_block_invoke(uint64_t a1)
{
  DeviceDataCertificate = platform_auth_createDeviceDataCertificate();
  v3 = DeviceDataCertificate;
  v4 = *(a1 + 32);
  if (DeviceDataCertificate)
  {
    BytePtr = CFDataGetBytePtr(DeviceDataCertificate);
    Length = CFDataGetLength(v3);
  }

  else
  {
    Length = 0;
    BytePtr = 0;
  }

  iAP2MsgInit(v4 + 120, 43537, *(*(a1 + 32) + 192), 0xFFFF, 0, 0);
  if (BytePtr && Length)
  {
    iAP2MsgAddDataParam(v4 + 120, 0, 0, BytePtr, Length);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 49)
    {
      v7 = *(gLogObjects + 384);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        logObjectForModule_cold_1_1();
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109632;
      v8[1] = v3;
      v9 = 1024;
      v10 = BytePtr;
      v11 = 2048;
      v12 = Length;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No device cert data parameter due to pCFDevCertData:%04X, pDevCertBytes:%04X, devCertLength:%02lX", v8, 0x18u);
    }
  }

  iap2_sessionControl_sendOutgoingMessage(*(a1 + 32), v4 + 120);
  if (v3)
  {
    CFRelease(v3);
  }
}

@end