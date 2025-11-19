@interface RequestDeviceChallengeResponse
@end

@implementation RequestDeviceChallengeResponse

void __iap2_deviceAuthentication_RequestDeviceChallengeResponse_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(*(*(*(a1 + 32) + 8) + 24));
    v6 = *(a1 + 48);
  }

  else
  {
    Length = 0;
    BytePtr = 0;
    v6 = v2;
  }

  iAP2MsgInit(v2 + 120, 43539, *(v6 + 192), 0xFFFF, 0, 0);
  if (BytePtr && Length)
  {
    iAP2MsgAddDataParam(v2 + 120, 0, 0, BytePtr, Length);
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
      v10 = *(*(*(a1 + 40) + 8) + 24);
      v11[0] = 67109632;
      v11[1] = v10;
      v12 = 1024;
      v13 = BytePtr;
      v14 = 2048;
      v15 = Length;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No device signature parameter due to pCFDataChallenge:%04X, pSignatureBytes:%04X, signatureLength:%02lX", v11, 0x18u);
    }
  }

  iap2_sessionControl_sendOutgoingMessage(*(a1 + 48), v2 + 120);
  v8 = *(*(*(a1 + 40) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

@end