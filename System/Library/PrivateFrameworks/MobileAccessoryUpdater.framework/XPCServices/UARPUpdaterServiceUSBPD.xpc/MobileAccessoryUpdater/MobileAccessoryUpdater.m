void sub_100002BD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

unsigned int *sub_100002BF8@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  v4 = result[1];
  return result;
}

uint64_t sub_100002CC8(uint64_t a1)
{
  qword_100049138 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100002F04(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  existing = 0;
  v5 = IOServiceMatching("AppleHPM");
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v5, &existing);
  result = existing;
  if (MatchingServices)
  {
    v8 = 1;
  }

  else
  {
    v8 = existing == 0;
  }

  if (!v8)
  {
    v9 = IOIteratorNext(existing);
    if (v9)
    {
      v10 = v9;
      do
      {
        v11 = [[UARPAppleHPM alloc] initWithIOService:v10];
        if (v11)
        {
          [*(*(a1 + 32) + 24) addObject:v11];
        }

        IOObjectRelease(v10);

        v10 = IOIteratorNext(existing);
      }

      while (v10);
    }

    IOObjectRelease(existing);
    return [*(a1 + 32) qEnumerateHPMsWithMagSafe];
  }

  return result;
}

void sub_10000343C(uint64_t a1)
{
  v2 = [*(a1 + 32) qCreateOrUpdateMagSafeAccessory:*(a1 + 48) identifier:*(a1 + 40)];
  if (!v2)
  {
    v2 = [*(a1 + 32) qCreateOrUpdateDongle:*(a1 + 48) identifier:*(a1 + 40)];
  }

  if ([*(a1 + 40) isEqualToString:kUARPStringUSBCLightningDisconnectNotification])
  {
    v3 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Handle disconnection: %@", &v14, 0xCu);
    }

    [*(a1 + 32) qDisconnectDongle:*(a1 + 48)];
    goto LABEL_21;
  }

  if (!v2)
  {
    v8 = *(*(a1 + 32) + 56);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 40);
    v14 = 138412290;
    v15 = v9;
    v10 = "Ignore matching for %@";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, &v14, 0xCu);
    goto LABEL_21;
  }

  v5 = [v2 isMagSafeCable];
  v6 = *(*(a1 + 32) + 56);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v7)
    {
      v14 = 138412290;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "check for update %@", &v14, 0xCu);
    }

    v11 = [*(a1 + 32) qAddAccessory:v2];
    v12 = *(a1 + 32);
    if (v11)
    {
      [v12 qCheckForUpdate:v2 assetID:0];
      goto LABEL_21;
    }

    v8 = v12[7];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 40);
    v14 = 138412290;
    v15 = v13;
    v10 = "Ignore duplicate accessory: %@";
    goto LABEL_20;
  }

  if (v7)
  {
    v14 = 138412290;
    v15 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Hold update for MagSafe accessory %@ until Power Adapter notifications completes", &v14, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 96), v2);
LABEL_21:
}

void sub_100003768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003780(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(v1[1] + 8) + 24) = [*(*(a1 + 32) + 32) count] == 0;
  if (os_log_type_enabled(*(*v1 + 56), OS_LOG_TYPE_DEBUG))
  {
    sub_1000236C0(v1);
  }
}

void sub_1000038E0(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412290;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [UARPSupportedAccessory findByAppleModelNumber:v9];

        if ([v10 supportsAnalytics])
        {
          [v8 setNeedsTransferAnalytics:1];
          v11 = uarpAssetTagStructAnalytics();
          v12 = [[UARPAssetTag alloc] initWithChar1:*v11 char2:v11[1] char3:v11[2] char4:v11[3]];
          v13 = *(*(a1 + 32) + 56);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v14;
            v20 = v8;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Soliciting TICS for %@", buf, 0xCu);
          }

          [*(a1 + 32) qSolicitDynamicAssetForUSBPDAccessory:v8 assetTag:v12];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_100004194(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "[UARPUSBPDUpdater handleBsdNotificationPowerAdapter]_block_invoke";
    v5 = 1024;
    v6 = 8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: Requesting Power adapter discovery after %u seconds", &v3, 0x12u);
  }

  *(*(a1 + 32) + 92) = 1;
}

void sub_100008FCC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 manufacturer:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009190(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 modelName:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009354(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 firmwareVersion:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009518(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 stagedFirmwareVersion:*(a1 + 48) error:*(a1 + 56)];
}

void sub_1000096C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 stats:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009878(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 hardwareVersion:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009A3C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 serialNumber:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009C5C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 appleModelNumber:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009E10(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 hwFusingType:*(a1 + 48) error:*(a1 + 56)];
}

void sub_100009FC4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 queryCompleteForAccessoryID:v3 friendlyName:*(a1 + 48) error:*(a1 + 56)];
}

void sub_10000A204(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 firmwareStagingProgress:v3 bytesSent:*(a1 + 48) bytesTotal:*(a1 + 56)];
}

void sub_10000A454(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 assetSolicitationProgress:v3 assetID:*(a1 + 48) bytesReceived:*(a1 + 56) bytesTotal:*(a1 + 64)];
}

void sub_10000A580(uint64_t a1)
{
  v2 = [*(a1 + 32) getUARPUSBPDAccessoryForUARPAccessory:*(a1 + 40)];
  [v2 sendUARPMessage:*(a1 + 48)];
}

void sub_10000A6A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) uarpAccessory];
  v4 = *(a1 + 48);
  v5 = 0;
  [v2 recvDataFromAccessory:v3 data:v4 error:&v5];
}

void sub_10000A890(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 assetAvailablityUpdateForAccessoryID:v3 assetID:*(a1 + 48)];
}

void sub_10000AC90(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [*(a1 + 40) uarpAccessoryID];
  [v2 assetAvailablityUpdateForAccessoryID:v3 assetID:*(a1 + 48)];
}

id sub_10000AF50(uint64_t a1)
{
  if (os_log_type_enabled(*(*(a1 + 32) + 56), OS_LOG_TYPE_DEBUG))
  {
    sub_100024884(a1);
  }

  v2 = [*(a1 + 40) hpmDelegate];
  v3 = [v2 isConnected];

  v4 = *(a1 + 32);
  if (v3)
  {
    return [v4 qAccessoryTransferComplete:*(a1 + 40) assetID:*(a1 + 48) status:*(a1 + 56)];
  }

  v6 = v4[7];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = 136315394;
    v9 = "[UARPUSBPDUpdater assetTransferComplete:assetID:status:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: accessory is no longer connected %@", &v8, 0x16u);
  }

  return [*(a1 + 32) qAccessoryUnplugged:*(a1 + 40)];
}

void sub_10000B390(uint64_t a1)
{
  if (os_log_type_enabled(*(*(a1 + 32) + 56), OS_LOG_TYPE_DEBUG))
  {
    sub_100024980(a1);
  }

  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

uint64_t sub_10000B500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B518(void *a1)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 136315650;
    v13 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = *(a1[4] + 56);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = a1[5];
          *buf = v13;
          v19 = "[UARPUSBPDUpdater getUARPAccessoryForUARPAccessoryID:]_block_invoke";
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s: Check match %@ vs %@", buf, 0x20u);
        }

        v10 = [v8 uarpAccessoryID];
        v11 = [v10 isEqual:a1[5]];

        if (v11)
        {
          if (os_log_type_enabled(*(a1[4] + 56), OS_LOG_TYPE_DEBUG))
          {
            sub_100024A00();
          }

          objc_storeStrong((*(a1[6] + 8) + 40), v8);
          goto LABEL_15;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_10000B80C(void *a1)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 136315650;
    v13 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = *(a1[4] + 56);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = a1[5];
          *buf = v13;
          v19 = "[UARPUSBPDUpdater getUARPUSBPDAccessoryForUARPAccessory:]_block_invoke";
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s: Check match %@ vs %@", buf, 0x20u);
        }

        v10 = [v8 uarpAccessory];
        v11 = [v10 isEqual:a1[5]];

        if (v11)
        {
          if (os_log_type_enabled(*(a1[4] + 56), OS_LOG_TYPE_DEBUG))
          {
            sub_100024A7C();
          }

          objc_storeStrong((*(a1[6] + 8) + 40), v8);
          goto LABEL_15;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_10000BDD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10000C688(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10000C6A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = os_log_create("com.apple.accessoryupdater.uarp", "usbpdUpdater");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "USB-PD UARP updater started", v8, 2u);
  }

  v4 = AUSandboxPlatformInit(v3, 0);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[NSXPCListener serviceListener];
    [v6 setDelegate:v5];
    [v6 resume];
  }

  return v4;
}

void sub_10000D9BC(void *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v11 = a1;
  v9 = a2;
  v10 = [NSData dataWithBytes:a3 length:a4];
  LOBYTE(a5) = [v9 payloadData:v11 data:v10 offset:a5 error:0];

  if ((a5 & 1) == 0)
  {
    [v9 abandonAsset:v11 reason:2304];
  }
}

void sub_10000DA70(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (([v3 payloadDataComplete:v4 error:0] & 1) == 0)
  {
    [v3 abandonAsset:v4 reason:2304];
  }
}

uint64_t sub_10000DAE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ([a3 getBytesAtOffset:a6 accessory:a1 buffer:a4 length:a5 bytesCopied:?])
  {
    return 0;
  }

  else
  {
    return 35;
  }
}

uint64_t sub_10000DB1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ([a3 setBytesAtOffset:a6 accessory:a1 buffer:a4 length:a5])
  {
    return 0;
  }

  else
  {
    return 35;
  }
}

uint64_t sub_10000DB84(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = uarpPlatformEndpointAssetRelease2([a1 uarpEndpoint], 0, v4);

  return v5;
}

id sub_10000DBCC(id result, uint64_t a2, void *a3)
{
  if (result && a2)
  {
    if (a3)
    {
      return [a3 assetAllHeadersAndMetaDataComplete:result error:0];
    }
  }

  return result;
}

const char *sub_10000EB34()
{

  return uarpStatusCodeToString(v0);
}

void sub_10000EB4C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000107C0(void *a1, io_iterator_t a2)
{
  v5 = a1;
  v3 = IOIteratorNext(a2);
  if (v3)
  {
    v4 = v3;
    do
    {
      [v5 matchingService:v4];
      v4 = IOIteratorNext(a2);
    }

    while (v4);
  }
}

uint64_t sub_100010918(uint64_t a1)
{
  [*(*(a1 + 32) + 64) matchingService:*(a1 + 40) identifier:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 40);

  return IOObjectRelease(v2);
}

uint64_t sub_100011F38(int a1, void *a2, size_t count)
{
  if (!a2)
  {
    return 30;
  }

  v4 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  result = 0;
  *a2 = v4;
  return result;
}

void sub_100011F90(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t sub_100011FA0(void *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 30;
  if (a3)
  {
    if (a4)
    {
      v8 = [a1 maxTxPayloadLength] + 36;
      *a4 = v8;
      v9 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
      result = 0;
      *a3 = v9;
    }
  }

  return result;
}

void sub_10001200C(int a1, int a2, void *a3)
{
  if (a3)
  {
    free(a3);
  }
}

uint64_t sub_10001201C(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [[NSData alloc] initWithBytes:a3 length:a4];
  LODWORD(a3) = [v8 uarpSendMessage:v9 controller:v7 error:0];

  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 11;
  }

  return v10;
}

uint64_t sub_1000120B8(void *a1, uint64_t a2)
{
  if ([a1 uarpTransferPause:a2 error:0])
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_1000120E4(void *a1, uint64_t a2)
{
  if ([a1 uarpTransferResume:a2 error:0])
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_100012130(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 uarpApplyStagedAssets:a2 flags:a3 error:0])
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_100012160(void *a1, void *a2, unsigned int *a3)
{
  v3 = 30;
  if (a2 && a3)
  {
    v6 = [a1 manufacturerName];
    v7 = *a3;
    if ([v6 length] <= v7)
    {
      v8 = [v6 length];
      *a3 = v8;
      if (v8)
      {
        memcpy(a2, [v6 UTF8String], *a3);
      }

      v3 = 0;
    }

    else
    {
      v3 = 39;
    }
  }

  return v3;
}

uint64_t sub_1000121F4(void *a1, void *a2, unsigned int *a3)
{
  v3 = 30;
  if (a2 && a3)
  {
    v6 = [a1 modelName];
    v7 = *a3;
    if ([v6 length] <= v7)
    {
      v8 = [v6 length];
      *a3 = v8;
      if (v8)
      {
        memcpy(a2, [v6 UTF8String], *a3);
      }

      v3 = 0;
    }

    else
    {
      v3 = 39;
    }
  }

  return v3;
}

uint64_t sub_100012288(void *a1, void *a2, unsigned int *a3)
{
  v3 = 30;
  if (a2 && a3)
  {
    v6 = [a1 serialNumber];
    v7 = *a3;
    if ([v6 length] <= v7)
    {
      v8 = [v6 length];
      *a3 = v8;
      if (v8)
      {
        uarpLogDebug(3u, "%s: Serial number %s", "VUARPQuerySerialNumber", [v6 UTF8String]);
        memcpy(a2, [v6 UTF8String], *a3);
      }

      v3 = 0;
    }

    else
    {
      v3 = 39;
    }
  }

  return v3;
}

uint64_t sub_10001234C(void *a1, void *a2, unsigned int *a3)
{
  v3 = 30;
  if (a2 && a3)
  {
    v6 = [a1 hardwareVersion];
    v7 = *a3;
    if ([v6 length] <= v7)
    {
      v8 = [v6 length];
      *a3 = v8;
      if (v8)
      {
        memcpy(a2, [v6 UTF8String], *a3);
      }

      v3 = 0;
    }

    else
    {
      v3 = 39;
    }
  }

  return v3;
}

uint64_t sub_1000123E0(void *a1, uint64_t a2, _DWORD *a3)
{
  if (!a3)
  {
    return 30;
  }

  v4 = [a1 fwActiveVersion];
  *a3 = [v4 majorVersion];
  a3[1] = [v4 minorVersion];
  a3[2] = [v4 releaseVersion];
  a3[3] = [v4 buildVersion];

  return 0;
}

uint64_t sub_100012450(void *a1, uint64_t a2, _DWORD *a3)
{
  if (!a3)
  {
    return 30;
  }

  v4 = [a1 fwStagedVersion];
  *a3 = [v4 majorVersion];
  a3[1] = [v4 minorVersion];
  a3[2] = [v4 releaseVersion];
  a3[3] = [v4 buildVersion];

  return 0;
}

uint64_t sub_1000124C0(void *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 30;
  }

  v5 = 0;
  if (![a1 uarpLastError:&v5 + 4 lastAction:&v5])
  {
    return 27;
  }

  result = 0;
  v4 = HIDWORD(v5);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_100012520(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 uarpAssetSolicited:a2 tag:a3 error:0])
  {
    return 0;
  }

  else
  {
    return 45;
  }
}

uint64_t sub_10001255C(void *a1, uint64_t a2, void *a3, unsigned int a4, unsigned int *a5)
{
  v5 = 30;
  if (a3 && a5)
  {
    v9 = [a1 appleModelNumber];
    if ([v9 length] <= a4)
    {
      v10 = [v9 length];
      *a5 = v10;
      if (v10)
      {
        memcpy(a3, [v9 UTF8String], *a5);
      }

      v5 = 0;
    }

    else
    {
      v5 = 39;
    }
  }

  return v5;
}

uint64_t sub_1000125F8(void *a1, uint64_t a2, void *a3, unsigned int a4, unsigned int *a5)
{
  v5 = 30;
  if (a3 && a5)
  {
    v9 = [a1 hwFusingType];
    if ([v9 length] <= a4)
    {
      v10 = [v9 length];
      *a5 = v10;
      if (v10)
      {
        memcpy(a3, [v9 UTF8String], *a5);
      }

      v5 = 0;
    }

    else
    {
      v5 = 39;
    }
  }

  return v5;
}

uint64_t sub_1000129AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000129C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1904));
  v3 = [WeakRetained vuarpSendMessage:*(*(*(a1 + 40) + 8) + 40) error:0];

  if ((v3 & 1) == 0 && os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100026670(a1 + 40);
  }
}

void sub_100013544(uint64_t a1)
{
  v2 = uarpPlatformEndpointRecvMessage(*(a1 + 32) + 24, [*(*(a1 + 32) + 1872) uarpRemoteEndpoint], objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "bytes"), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length"));
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100026EB0(a1, v3, v4);
    }
  }
}

unsigned int *sub_100015E00@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = v1;
  bzero(v7, 0x400uLL);
  v4 = v3;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100028034();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100027FB4();
  }

  v5 = 1;
LABEL_11:

  return v5;
}

void sub_100015F38(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1000161A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000161BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bsdNotification];
}

uint64_t sub_100016270(uint64_t a1)
{
  result = notify_cancel(*(*(a1 + 32) + 40));
  *(*(a1 + 32) + 40) = -1;
  return result;
}

uint64_t uarpPlatformEndpointStreamingRecvInit(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    UARPLayer2RequestBuffer(a1, &v7, 0x18uLL, 0xFFFF, 37);
    if (v7)
    {
      v5 = *(a2 + 4) + 36;
      UARPLayer2RequestBuffer(a1, v7, v5, 0xFFFF, 49);
      v6 = v7;
      if (*v7)
      {
        result = 0;
        *(v7 + 2) = v5;
        *(a2 + 96) = v6;
        return result;
      }

      UARPLayer2ReturnBuffer(a1, v7, 0xFFFF, 56);
    }

    return 11;
  }

  return result;
}

void uarpPlatformEndpointStreamingRecvDeinit(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 96);
      if (v3)
      {
        if (*v3)
        {
          UARPLayer2ReturnBuffer(a1, *v3, 0xFFFF, 86);
          v3 = *(a2 + 96);
          *v3 = 0;
        }

        UARPLayer2ReturnBuffer(a1, v3, 0xFFFF, 94);
        *(a2 + 96) = 0;
      }
    }
  }
}

uint64_t uarpPlatformEndpointStreamingRecvBytes(uint64_t a1, void *a2, char *a3, int a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        LODWORD(v8) = a4;
        if (a4)
        {
          v9 = a2[12];
          if (v9)
          {
            goto LABEL_6;
          }

          result = uarpPlatformEndpointStreamingRecvInit(a1, a2);
          if (result)
          {
            return result;
          }

          v9 = a2[12];
          if (v9)
          {
LABEL_6:
            if (v9[2] >= v8)
            {
              v8 = v8;
              v10 = v9[4];
              do
              {
                v11 = *v7++;
                *(*v9 + v10) = v11;
                v10 = v9[4] + 1;
                v9[4] = v10;
                if (v10 == 6)
                {
                  v12 = uarpNtohs(*(*v9 + 2)) + 6;
                  v9[3] = v12;
                  v10 = v9[4];
                }

                else
                {
                  v12 = v9[3];
                }

                if (v10 == v12)
                {
                  result = uarpPlatformEndpointRecvMessage(a1, a2, *v9, v12);
                  if (result)
                  {
                    return result;
                  }

                  bzero(*v9, v9[2]);
                  v10 = 0;
                  v9[3] = 0;
                  v9[4] = 0;
                }

                --v8;
              }

              while (v8);
              return 0;
            }

            else
            {
              return 30;
            }
          }

          else
          {
            return 27;
          }
        }
      }
    }
  }

  return result;
}

char *uarpAssetTagAnalytics4cc()
{
  result = aTics;
  aTics[4] = 0;
  return result;
}

int *uarpAssetTagStructAnalytics()
{
  aTics[4] = 0;
  result = &dword_100049148;
  dword_100049148 = *aTics;
  return result;
}

__int16 *uarpOuiAnalytics()
{
  result = &word_10004914C;
  word_10004914C = 27480;
  byte_10004914E = 20;
  return result;
}

char *uarpAssetTagLogs4cc()
{
  result = aLogs_0;
  aLogs_0[4] = 0;
  return result;
}

int *uarpAssetTagStructLogs()
{
  aLogs_0[4] = 0;
  result = &dword_100049150;
  dword_100049150 = *aLogs_0;
  return result;
}

__int16 *uarpOuiLogs()
{
  result = &word_100049154;
  word_100049154 = 16400;
  byte_100049156 = -13;
  return result;
}

uint64_t uarpPlatformAssetProcessingCompleteInternal(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  result = 30;
  if (a1 && a3)
  {
    if (uarpPlatformAssetIsKnown(a1, a2, a3))
    {
      *(a3 + 72) = 1;
      *(a3 + 696) = 0;
      if (!a2 || (result = uarpAssetProcessingComplete(a1, a2, a3, a5 | a4), !result))
      {
        result = 0;
        if (a4 == 4 && !a6)
        {
          UARPLayer2AssetCorrupt(a1, a3);
          return 0;
        }
      }
    }

    else
    {
      return 23;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetRequestData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 30;
  }

  v3 = *(a2 + 696);
  if (!v3)
  {
    return 30;
  }

  if (*(a2 + 73) == 1 || !*(v3 + 60))
  {
    return 31;
  }

  v4 = a3[2];
  v5 = a3[20];
  v6 = v5 + v4 + *a3;
  v7 = a3[1] - (v5 + v4);
  if (v7 >= a3[6] - v5)
  {
    v7 = a3[6] - v5;
  }

  a3[22] = v6;
  a3[23] = v7;
  if (v7 >= *(*(a2 + 696) + 4))
  {
    v8 = *(*(a2 + 696) + 4);
  }

  else
  {
    v8 = v7;
  }

  a3[23] = v8;
  return uarpSendAssetRequestData(a1, *(a2 + 696), *(a2 + 44), v6, v8);
}

uint64_t uarpPlatformAssetResponseData(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, int a5, int a6, size_t __n)
{
  if (a3)
  {
    v9 = a3;
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
    return v9;
  }

  if (*(a2 + 400) != a5)
  {
    return 29;
  }

  v10 = *(a2 + 404);
  if (v10 != a6 || v10 < __n)
  {
    return 29;
  }

  v12 = *(a2 + 392);
  if ((v12 + __n) > *(a2 + 336))
  {
    return 29;
  }

  *(a2 + 408) = __n;
  memcpy((*(a2 + 328) + v12), __src, __n);
  v14 = *(a2 + 392) + *(a2 + 408);
  *(a2 + 392) = v14;
  v15 = *(a2 + 320) + v14;
  v16 = *(a2 + 316);
  if (v15 > v16)
  {
    return 65;
  }

  if (v15 == v16 || v14 == *(a2 + 336))
  {
    v9 = (*(a2 + 376))(a1, a2, a2 + 312);
    if (v9)
    {
      return v9;
    }

    v17 = *(a2 + 392);
    v18 = *(a2 + 396);
    v19 = v17 - v18;
    if (v17 != v18)
    {
      if (v17 > *(a2 + 336))
      {
        return 65;
      }

      memcpy(*(a2 + 328), (*(a2 + 328) + v18), v17 - v18);
      v17 = *(a2 + 396);
    }

    *(a2 + 392) = v19;
    *(a2 + 320) += v17;
    *(a2 + 396) = 0;
  }

  if (v15 == v16)
  {
    v20 = *(a2 + 384);

    return v20(a1, a2, a2 + 312);
  }

  else
  {

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }
}

uint64_t uarpPlatformAssetUpdateMetaData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, unsigned int *))
{
  v4 = *(a3 + 80);
  if (v4 < 8)
  {
    return 0;
  }

  v9 = *(a3 + 16);
  while (1)
  {
    v10 = uarpNtohl(*v9);
    v11 = uarpNtohl(v9[1]);
    if (v11 > *(a3 + 24) - 8)
    {
      break;
    }

    v12 = v11;
    v13 = v4 - 8;
    v4 = v4 - 8 - v11;
    if (v13 >= v11)
    {
      v14 = v9 + 2;
      v15 = *(a3 + 84) + 8;
      *(a3 + 84) = v15;
      if (a4)
      {
        a4(a1, a2, v10, v11, v14);
        v15 = *(a3 + 84);
      }

      v9 = (v14 + v12);
      *(a3 + 84) = v15 + v12;
      if (v4 > 7)
      {
        continue;
      }
    }

    return 0;
  }

  return 53;
}

uint64_t uarpPlatformAssetSuperBinaryPullHeader(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0x2C00000000;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = sub_100016AE8;
  *(a2 + 384) = sub_100016C38;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t sub_100016AE8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = *(a3 + 2);
  *a2 = uarpNtohl(*v9);
  *(a2 + 4) = uarpNtohl(v9[1]);
  *(a2 + 8) = uarpNtohl(v9[2]);
  uarpVersionEndianSwap(v9 + 3, (a2 + 12));
  *(a2 + 28) = uarpNtohl(v9[7]);
  *(a2 + 32) = uarpNtohl(v9[8]);
  *(a2 + 36) = uarpNtohl(v9[9]);
  v10 = uarpNtohl(v9[10]);
  *(a2 + 40) = v10;
  a3[21] = a3[20];
  v12 = *(a2 + 28);
  v11 = *(a2 + 32);
  if (__CFADD__(v11, v12))
  {
    return 8;
  }

  v15 = *(a2 + 68);
  v13 = 8;
  if (v15 >= v11 && v15 >= v12)
  {
    v16 = *(a2 + 36);
    if (!__CFADD__(v10, v16) && v15 >= v10 && v15 >= v16)
    {
      if (v12 + v11 <= v15 && v16 + v10 <= v15 && *(a2 + 4) == 44 && *a2 < 5u)
      {
        return 0;
      }

      else
      {
        uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
        return 47;
      }
    }
  }

  return v13;
}

uint64_t uarpPlatformAssetSuperBinaryPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      *(a2 + 688) = 0;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 440) = 0;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 312) = *(a2 + 28);
      *(a2 + 316) = v3;
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = sub_100016CD4;
      *(a2 + 384) = sub_100016D64;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    return 40;
  }

  return v2;
}

uint64_t sub_100016CD4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2AssetMetaDataTLV);
  if (updated)
  {
    UARPLayer2AssetMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 688) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  v2 = *(a2 + 456);
  if (v2 > *(a2 + 448))
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 40 * v2 + 44;
  *(a2 + 316) = 40;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = sub_100016E04;
  *(a2 + 384) = sub_100016E88;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t sub_100016E04(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = uarpPlatformAssetPayloadHeaderProcess(*(a3 + 2), a2 + 464, *(a2 + 68));
  if (v9)
  {
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    a3[21] = a3[20];
  }

  return v9;
}

uint64_t sub_100016E88(uint64_t a1, uint64_t a2)
{
  *(a2 + 452) = *(a2 + 456);
  UARPLayer2PayloadReady(a1, a2);
  return 0;
}

uint64_t uarpPlatformAssetPayloadHeaderProcess(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  *a2 = uarpNtohl(*a1);
  *(a2 + 4) = a1[1];
  uarpVersionEndianSwap(a1 + 2, (a2 + 8));
  *(a2 + 24) = uarpNtohl(a1[6]);
  *(a2 + 28) = uarpNtohl(a1[7]);
  *(a2 + 32) = uarpNtohl(a1[8]);
  v6 = uarpNtohl(a1[9]);
  *(a2 + 36) = v6;
  *(a2 + 52) = 0;
  *(a2 + 56) = 0;
  *(a2 + 76) = 0;
  *(a2 + 128) = v6;
  v8 = *(a2 + 24);
  v7 = *(a2 + 28);
  v9 = __CFADD__(v7, v8);
  result = 8;
  if (v8 <= a3 && v7 <= a3 && !v9)
  {
    if (v8 + v7 <= a3)
    {
      v11 = *(a2 + 32);
      v12 = __CFADD__(v6, v11);
      if (v11 <= a3 && v6 <= a3)
      {
        if (v11 + v6 <= a3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 48;
        }

        if (v12)
        {
          return 8;
        }

        else
        {
          return v13;
        }
      }
    }

    else
    {
      return 48;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetPayloadPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    else
    {
      v3 = *(a2 + 492);
      if (v3)
      {
        *(a2 + 512) = 0;
        *(a2 + 312) = 0u;
        *(a2 + 328) = 0u;
        *(a2 + 440) = 0;
        *(a2 + 344) = 0u;
        *(a2 + 360) = 0u;
        *(a2 + 376) = 0u;
        *(a2 + 392) = 0u;
        *(a2 + 408) = 0u;
        *(a2 + 424) = 0u;
        *(a2 + 312) = *(a2 + 488);
        *(a2 + 316) = v3;
        *(a2 + 328) = *(a2 + 640);
        *(a2 + 336) = *(a2 + 648);
        *(a2 + 376) = sub_100017040;
        *(a2 + 384) = sub_1000170D0;
        return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
      }

      return 40;
    }
  }

  return v2;
}

uint64_t sub_100017040(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2PayloadMetaDataTLV);
  if (updated)
  {
    UARPLayer2PayloadMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 512) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetPayloadPullData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    v5 = *(a2 + 508);
    v6 = *(a2 + 500);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      return 43;
    }

    v9 = *(a2 + 496) + v5;
    if (v9 > *(a2 + 8))
    {
      return 43;
    }

    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 440) = 0;
    *(a2 + 408) = 0u;
    *(a2 + 424) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 312) = v9;
    *(a2 + 316) = v8;
    *(a2 + 328) = *(a2 + 640);
    v10 = *(a2 + 648);
    *(a2 + 336) = v10;
    *(a2 + 368) = v10;
    *(a2 + 376) = sub_1000172A0;
    *(a2 + 384) = sub_10001732C;
    if (*(a2 + 516) == 1)
    {
      *(a2 + 356) = 1;
      *(a2 + 336) = 10;
      *(a2 + 344) = *(a2 + 656);
      *(a2 + 352) = *(a2 + 664);
      *(a2 + 376) = sub_100017404;
    }

    v11 = *(a2 + 520);
    *(a2 + 412) = v11;
    UARPLayer2HashInfo(a1, v11, (a2 + 416), (a2 + 432));
    v12 = *(a2 + 416);
    if (v12)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 424), v12, 48059, 900);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 424))
      {
        return 11;
      }
    }

    v13 = *(a2 + 432);
    if (v13)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 440), v13, 48059, 917);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 440))
      {
        return 11;
      }
    }

    UARPLayer2HashInit(a1, *(a2 + 412), *(a2 + 424));

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  return result;
}

uint64_t sub_1000172A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 16), *(a3 + 80));
  v6 = (*(a3 + 8) + *a3);
  v7 = *(a2 + 496);
  v8 = *(a3 + 16);
  v9 = *(a3 + 80);
  UARPLayer2PayloadData(a1, a2);
  v10 = *(a3 + 80);
  *(a3 + 84) = v10;
  *(a2 + 508) += v10;
  return 0;
}

uint64_t sub_10001732C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 520);
  if (!v5)
  {
    goto LABEL_7;
  }

  UARPLayer2HashFinal(a1, v5, *(a3 + 112), *(a3 + 128), *(a3 + 120));
  v7 = uarpPlatformCompareHash(a1, *(a3 + 128), *(a3 + 120), *(a2 + 528), *(a2 + 536));
  v8 = *(a3 + 112);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 48059, 1073);
    *(a3 + 112) = 0;
    *(a3 + 104) = 0;
  }

  v9 = *(a3 + 128);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 48059, 1084);
    *(a3 + 128) = 0;
    *(a3 + 120) = 0;
  }

  *(a3 + 100) = 0;
  if (!v7)
  {
    UARPLayer2AssetCorrupt(a1, a2);
  }

  else
  {
LABEL_7:
    UARPLayer2PayloadDataComplete2(a1, a2);
  }

  return 0;
}

uint64_t sub_100017404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  uarpCompressionHeaderEndianSwap(*(a3 + 16), a3 + 45);
  v5 = *(a3 + 80);
  *(a3 + 84) = v5;
  *(a2 + 508) += v5;
  *(a3 + 44) = 0;
  v6 = *(a3 + 51);
  *(a3 + 24) = v6;
  if (*(a3 + 56) < v6 || *(a3 + 40) < *(a3 + 53))
  {
    return 51;
  }

  result = 0;
  *(a3 + 64) = sub_1000179E4;
  return result;
}

uint64_t uarpPlatformAssetPullAllPayloadHeaders(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    if (*(a2 + 448) < 1)
    {
LABEL_7:
      *(a2 + 440) = 0;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 312) = *(a2 + 36);
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = sub_10001757C;
      *(a2 + 384) = j__uarpPlatformAssetPullAllMetaData;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    else
    {
      v5 = 0;
      while (1)
      {
        result = UARPLayer2RequestBuffer(a1, &v7, 0xB8uLL, 48059, 1138);
        if (result)
        {
          break;
        }

        v6 = v7;
        v7[22] = *(a2 + 632);
        *(a2 + 632) = v6;
        if (++v5 >= *(a2 + 448))
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 448) < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a3 + 16);
  v9 = *(a2 + 632);
  while (1)
  {
    if (!v9)
    {
      return 11;
    }

    if (v6 > *(a3 + 24))
    {
      return 48;
    }

    v10 = uarpPlatformAssetPayloadHeaderProcess(v8, v9, *(a2 + 68));
    if (v10)
    {
      break;
    }

    *(v9 + 124) = v7;
    v9 = *(v9 + 176);
    *(a3 + 84) += 40;
    ++v7;
    v6 += 40;
    v8 += 10;
    if (v7 >= *(a2 + 448))
    {
      return 0;
    }
  }

  v11 = v10;
  uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  return v11;
}

_DWORD *uarpProcessTLV(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (a3 < 8)
  {
    return 0;
  }

  v5 = a3;
  v6 = uarpNtohl(*a2);
  v7 = uarpNtohl(a2[1]);
  v8 = v7;
  if (v7 > 0xFFFFFFE7 || v7 + 8 > v5)
  {
    return 0;
  }

  v12 = v7;
  v14 = 0;
  v13 = UARPLayer2RequestBuffer(a1, &v14, v7 + 24, 48059, 1252);
  v10 = 0;
  if (!v13)
  {
    v10 = v14;
    *v14 = v6;
    v10[1] = v12;
    memcpy(v10 + 6, a2 + 2, v8);
    *(v10 + 1) = v10 + 6;
  }

  return v10;
}

uint64_t uarpPlatformAssetPullAllMetaData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (!a1 || !a2)
  {
    return result;
  }

  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  v6 = *(a2 + 28);
  v5 = *(a2 + 32);
  *(a2 + 312) = v6;
  *(a2 + 316) = v5;
  for (i = *(a2 + 632); i; i = *(i + 176))
  {
    v8 = *(i + 24);
    if (v8)
    {
      if (v8 != v5 + v6)
      {
        return 43;
      }

      v5 = (*(i + 28) + v5);
      *(a2 + 316) = v5;
    }
  }

  *(a2 + 680) = v5;
  *(a2 + 672) = 0;
  if (!v5)
  {
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 376) = sub_100017888;
    *(a2 + 384) = sub_1000179C0;
LABEL_15:
    UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
    return 0;
  }

  result = UARPLayer2RequestBuffer(a1, (a2 + 672), v5, 48059, 1328);
  if (result)
  {
    return result;
  }

  v9 = *(a2 + 680);
  v10 = *(a2 + 316);
  *(a2 + 328) = *(a2 + 672);
  *(a2 + 336) = v9;
  *(a2 + 376) = sub_100017888;
  *(a2 + 384) = sub_1000179C0;
  if (!v10)
  {
    goto LABEL_15;
  }

  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t sub_100017888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  v4 = *(a3 + 84);
  if (*(a3 + 80) - v4 < v3)
  {
    return 18;
  }

  if (v3)
  {
    v9 = *(a3 + 16);
    while (1)
    {
      v10 = uarpProcessTLV(a1, v9, v3);
      if (!v10)
      {
        return 10;
      }

      v11 = (v10[1] + 8);
      v9 = (v9 + v11);
      *(v10 + 2) = *(a2 + 720);
      *(a2 + 720) = v10;
      v3 -= v11;
      if (!v3)
      {
        v12 = *(a2 + 32);
        v4 = *(a3 + 84);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_9:
    v13 = v4 + v12;
    *(a3 + 84) = v13;
    v14 = *(a2 + 632);
    if (v14)
    {
      while (1)
      {
        v15 = *(v14 + 28);
        if (*(a3 + 80) - v13 < v15)
        {
          return 18;
        }

        if (v15)
        {
          v16 = (*(a3 + 16) + v13);
          while (1)
          {
            v17 = uarpProcessTLV(a1, v16, v15);
            if (!v17)
            {
              return 10;
            }

            v18 = (v17[1] + 8);
            v16 = (v16 + v18);
            *(v17 + 2) = *(v14 + 168);
            *(v14 + 168) = v17;
            v15 -= v18;
            if (!v15)
            {
              v19 = *(v14 + 28);
              v13 = *(a3 + 84);
              goto LABEL_17;
            }
          }
        }

        v19 = 0;
LABEL_17:
        result = 0;
        v13 += v19;
        *(a3 + 84) = v13;
        v14 = *(v14 + 176);
        if (!v14)
        {
          return result;
        }
      }
    }

    return 0;
  }
}

uint64_t sub_1000179E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = UARPLayer2DecompressBuffer(a1, *(a3 + 45), *(a3 + 16), *(a3 + 51), *(a3 + 32), *(a3 + 53));
  if (v6)
  {
    v7 = *(a1 + 440);
    if (v7)
    {
      v7(*(a1 + 608), 2, "Error decompressing buffer for payload");
    }

    else
    {
      uarpLogError(2u, "Error decompressing buffer for payload");
    }

    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 32), *(a3 + 53));
    v8 = *(a3 + 32);
    v9 = *(a3 + 53);
    v10 = *(a3 + 47);
    UARPLayer2PayloadData(a1, a2);
    v11 = *(a3 + 24);
    *(a3 + 84) = v11;
    *(a2 + 508) += v11;
    *(a3 + 44) = 1;
    *(a3 + 24) = 10;
    *(a3 + 64) = sub_100017404;
  }

  return v6;
}

uint64_t UARPLayer2RequestBuffer(uint64_t a1, void **a2, size_t __size, __int16 a4, int a5)
{
  v7 = __size;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v10(*(a1 + 608), a2, __size);
    if (v11)
    {
      return v11;
    }

    v12 = *a2;
    if (!*a2)
    {
      return 11;
    }
  }

  else
  {
    v12 = calloc(1uLL, __size);
    *a2 = v12;
    if (!v12)
    {
      return 11;
    }
  }

  v11 = *(a1 + 696);
  if (v11)
  {
    for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
    {
      if (!--v11)
      {
        return v11;
      }
    }

    v11 = 0;
    *(i - 2) = v12;
    *(i - 2) = v7;
    *(i - 2) = a4;
    *i = a5;
  }

  return v11;
}

void UARPLayer2ReturnBuffer(uint64_t a1, void *a2, __int16 a3, int a4)
{
  if (a2)
  {
    v4 = *(a1 + 696);
    if (v4)
    {
      v5 = (*(a1 + 704) + 24);
      while (*(v5 - 3) != a2 || *v5)
      {
        v5 += 8;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      *(v5 - 2) = a3;
      *v5 = a4;
    }

LABEL_10:
    v6 = *(a1 + 56);
    if (v6)
    {
      v6(*(a1 + 608));
    }

    else
    {
      free(a2);
    }
  }
}

uint64_t UARPLayer2RequestTransmitMsgBuffer(uint64_t a1, uint64_t a2, void **a3, int *a4, __int16 a5, int a6)
{
  v11 = *(a1 + 64);
  if (v11)
  {
    result = v11(*(a1 + 608), *(a2 + 40), a3, a4);
    if (!result)
    {
      if (*a3)
      {
        v13 = *(a1 + 696);
        if (v13)
        {
          for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
          {
            if (!--v13)
            {
              return 0;
            }
          }

          result = 0;
          *(i - 2) = *a3;
          *(i - 2) = *a4;
          *(i - 2) = a5;
          *i = a6;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 11;
      }
    }
  }

  else
  {
    v15 = *a4;

    return UARPLayer2RequestBuffer(a1, a3, v15, a5, a6);
  }

  return result;
}

void UARPLayer2ReturnTransmitMsgBuffer(uint64_t a1, uint64_t a2, void *a3, __int16 a4, int a5)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(a1 + 696);
    if (v6)
    {
      v7 = (*(a1 + 704) + 24);
      while (*(v7 - 3) != a3 || *v7)
      {
        v7 += 8;
        if (!--v6)
        {
          goto LABEL_10;
        }
      }

      *(v7 - 2) = a4;
      *v7 = a5;
    }

LABEL_10:
    v5(*(a1 + 608), *(a2 + 40), a3);
  }

  else
  {
    UARPLayer2ReturnBuffer(a1, a3, a4, a5);
  }
}

uint64_t UARPLayer2SendMessage(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  if (!v5)
  {
    return 14;
  }

  if (*(a2 + 120))
  {
    uarpPlatformDownstreamEndpointSendMessageInternal(a1, *(a2 + 160), a2, a3, a4);
    return 0;
  }

  else
  {
    v7 = *(a1 + 608);
    v8 = *(a2 + 40);

    return v5(v7, v8, a3, a4);
  }
}

uint64_t UARPLayer2DataTransferPause(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferPauseAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResume(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResumeAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2SuperBinaryOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 120);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DynamicAssetOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ApplyStagedAssetsResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ManufacturerName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ManufacturerNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ModelName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ModelNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 176);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2SerialNumber(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 184);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2SerialNumberResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2HardwareVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2HardwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ActiveFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[27];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[69];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpTagStructPack32(a2);
        v8 = a1[69];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2ActiveFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 224);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StagedFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[29];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[70];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpTagStructPack32(a2);
        v8 = a1[70];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2StagedFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 240);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2LastError(uint64_t a1, void *a2)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    return v2(*(a1 + 608));
  }

  *a2 = -1;
  return 0;
}

uint64_t UARPLayer2LastErrorResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 256);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StatisticsResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetSolicitation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2RescindAllAssets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 280);
  if (v3)
  {
    if (a2)
    {
      a2 = *(a2 + 40);
    }

    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), a2, a3);
  }

  return result;
}

uint64_t UARPLayer2RescindAllAssetsAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 288);
  if (v3)
  {
    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), *(a2 + 40), a3);
  }

  return result;
}

uint64_t UARPLayer2WatchdogSet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 296);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 1;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2WatchdogCancel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 0;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2MonotonicClockTime(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 312);
  if (!v2)
  {
    return 14;
  }

  v4 = v2(*(a1 + 608));
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t UARPLayer2ProtocolVersion(uint64_t result, uint64_t a2)
{
  v2 = *(result + 320);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2FriendlyName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 328);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2FriendlyNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 336);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 480);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointUnreachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReleased(uint64_t result, uint64_t a2)
{
  v2 = *(result + 496);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointRecvMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 504);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 16));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3NoFirmwareUpdateAvailable(uint64_t result, uint64_t a2)
{
  v2 = *(result + 512);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDComponents(uint64_t result, uint64_t a2)
{
  v2 = *(result + 352);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationQuery(uint64_t result, uint64_t a2)
{
  v2 = *(result + 360);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 368);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DecompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 376);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2CompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 384);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2HashInfo(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(result + 392);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  *a3 = 0;
  *a4 = 0;
  return result;
}

uint64_t UARPLayer2HashInit(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 400);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2HashUpdate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 408);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashFinal(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 416);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashLog(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 424);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2LogPacket(uint64_t result, uint64_t a2)
{
  v2 = *(result + 432);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2VendorSpecificRecvMessage(void *a1, uint64_t a2)
{
  v2 = a1[65];
  if (v2)
  {
    return v2(a1[76], *(a2 + 40));
  }

  v4 = a1[82];
  if (v4)
  {
    return v4();
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2VendorSpecificCheckExpectedResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificCheckValidToSend(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificExceededRetries(uint64_t result, uint64_t a2)
{
  v2 = *(result + 544);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataTLV(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

void *UARPLayer2PayloadMetaDataTLV(void *a1, uint64_t a2, uint64_t a3, size_t __size, unsigned int *a5)
{
  result = uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, a3, __size, a5);
  v11 = *(a2 + 120);
  if (v11)
  {
    v12 = a1[76];
    v13 = *(a2 + 704);

    return v11(v12, v13, a3, __size, a5);
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataComplete(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 540);
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 416);
  if (v5)
  {
    v6 = *(a2 + 568);
    v7 = *(a2 + 560);
    v8 = *(a2 + 544);
    v5();
  }

  result = uarpPlatformCompareHash(a1, *(a2 + 560), *(a2 + 568), *(a2 + 576), *(a2 + 584));
  if (!result)
  {
    v9 = *(a2 + 200);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
LABEL_5:
    v9 = *(a2 + 128);
    if (!v9)
    {
      return result;
    }
  }

  v10 = *(a1 + 608);
  v11 = *(a2 + 704);

  return v9(v10, v11);
}

uint64_t UARPLayer2AssetCorrupt(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadData(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 144);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete2(uint64_t result, void *a2)
{
  v2 = a2[20];
  if (v2)
  {
    return v2(*(result + 608), a2[88]);
  }

  v3 = a2[19];
  if (v3)
  {
    return v3(*(result + 608), a2[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetGetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v7 = a3[21];
  if (v7)
  {
    return v7(*(a1 + 608), a2, a3[88]);
  }

  v9 = a3[34];
  if (v9)
  {
    return v9(*(a1 + 608), a3[88], a4, a5, a6, a7);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetSetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v6 = a3[22];
  if (v6)
  {
    return v6(*(a1 + 608), a2, a3[88]);
  }

  v8 = a3[35];
  if (v8)
  {
    return v8(*(a1 + 608), a3[88], a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetRescinded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 184);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetRescindedAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 192);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetOrphaned(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetReleased2(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = a3[27];
  if (v3)
  {
    return v3(*(result + 608), a2, a3[88]);
  }

  v4 = a3[36];
  if (v4)
  {
    return v4(*(result + 608), a3[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetProcessingNotification2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[28];
  if (v4)
  {
    return v4(*(a1 + 608), *(a2 + 40), a3[88]);
  }

  v6 = a3[37];
  if (v6)
  {
    return v6(*(a1 + 608), a3[88], a4);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 232);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 240);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetAllHeadersAndMetaDataComplete(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 256);
  if (v3)
  {
    return v3(*(result + 608), *(a2 + 40), *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetStore(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t uarpPlatformEndpointQueryActiveFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2ActiveFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformEndpointQueryStagedFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2StagedFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformAssetFindFirmware(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 46) == 1)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetID(uint64_t a1, uint64_t a2, int a3, int a4)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 44) == a4)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByTag(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  for (i = *(a1 + 632); i; i = *(i + 712))
  {
    if (*(i + 304) == a3 && *(i + 696) == a2 && uarpAssetTagCompare((i + 48), a4))
    {
      break;
    }
  }

  return i;
}

void uarpPlatformCleanupAssetsForRemoteEndpoint(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 644) != 1)
  {
    v4 = *(a1 + 632);
    for (*(a1 + 632) = 0; v4; *(a1 + 632) = v7)
    {
      while (1)
      {
        v7 = v4;
        v4 = *(v4 + 712);
        *(v7 + 712) = 0;
        v8 = *(v7 + 696);
        v9 = v8 == a2 || a2 == 0;
        if (!v9 && v8 != 0)
        {
          break;
        }

        if (a3 == 1)
        {
          if (*(v7 + 46))
          {
            UARPLayer2AssetOrphaned(a1, v7);
            *(v7 + 696) = 0;
            *(v7 + 704) = 0;
          }

          else
          {
            *(v7 + 72) = 1;
          }
        }

        if (*(v7 + 72) != 1)
        {
          break;
        }

        UARPLayer2AssetReleased2(a1, a2, v7);
        *(v7 + 704) = 0;
        uarpPlatformAssetCleanup(a1, v7);
        if (!v4)
        {
          return;
        }
      }

      *(v7 + 712) = *(a1 + 632);
    }
  }
}

double uarpPlatformAssetOrphan(uint64_t a1, uint64_t a2)
{
  UARPLayer2AssetOrphaned(a1, a2);
  result = 0.0;
  *(a2 + 696) = 0u;
  return result;
}

uint64_t uarpPlatformAssetRelease(uint64_t a1, uint64_t a2, void *a3)
{
  result = UARPLayer2AssetReleased2(a1, a2, a3);
  a3[88] = 0;
  return result;
}

void uarpPlatformAssetCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 640);
  if (v4 && !*(a2 + 652))
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 412);
  }

  *(a2 + 640) = 0;
  *(a2 + 648) = 0;
  v5 = *(a2 + 656);
  if (v5 && !*(a2 + 668))
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 432);
  }

  *(a2 + 656) = 0;
  *(a2 + 664) = 0;
  v6 = *(a2 + 672);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 451);
    *(a2 + 672) = 0;
  }

  *(a2 + 680) = 0;
  v7 = *(a2 + 720);
  if (v7)
  {
    do
    {
      v8 = v7[2];
      v7[2] = 0;
      UARPLayer2ReturnBuffer(a1, v7, 52428, 388);
      v7 = v8;
    }

    while (v8);
  }

  *(a2 + 720) = 0;
  v9 = *(a2 + 632);
  if (v9)
  {
    do
    {
      v10 = v9[21];
      v11 = v9[22];
      if (v10)
      {
        do
        {
          v12 = v10[2];
          v10[2] = 0;
          UARPLayer2ReturnBuffer(a1, v10, 52428, 388);
          v10 = v12;
        }

        while (v12);
      }

      v9[21] = 0;
      uarpPlatformPayloadCleanup(a1, v9);
      UARPLayer2ReturnBuffer(a1, v9, 52428, 487);
      v9 = v11;
    }

    while (v11);
  }

  uarpPlatformPayloadCleanup(a1, a2 + 464);

  UARPLayer2ReturnBuffer(a1, a2, 52428, 511);
}

void uarpPlatformCleanupAssets(uint64_t a1)
{
  v1 = *(a1 + 632);
  *(a1 + 632) = 0;
  if (v1)
  {
    do
    {
      v3 = *(v1 + 712);
      *(v1 + 712) = 0;
      uarpPlatformAssetCleanup(a1, v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t uarpPlatformAssetIsKnown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 632);
  if (!v3)
  {
    return 0;
  }

  while (v3 != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t uarpPlatformPrepareAsset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  v6 = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v18 = 0;
        v6 = UARPLayer2RequestBuffer(a1, &v18, 0x2D8uLL, 52428, 245);
        if (!v6)
        {
          v14 = v18;
          if (v18)
          {
            *(v18 + 88) = a3;
            v14[87] = a2;
            uarpPlatformEndpointAssetSetCallbacks(a1, v14, a5);
            if (v15)
            {
              v6 = v15;
              UARPLayer2ReturnBuffer(a1, v18, 52428, 265);
            }

            else
            {
              v16 = v18;
              if (a4)
              {
                *(v18 + 23) = 2;
                *(v16 + 12) = *a4;
              }

              else
              {
                *(v18 + 23) = 1;
              }

              if (a6 == 1)
              {
                *(v16 + 76) = 1;
                v17 = *(a1 + 640);
                if (v17 == 65534)
                {
                  v17 = 1;
                }

                *(a1 + 640) = v17 + 1;
              }

              else
              {
                LOWORD(v17) = 0;
                *(v16 + 76) = 0;
              }

              *(v16 + 22) = v17;
              if (a4 && a6 == 1)
              {
                uarpPlatformAssetFindByTag(a1, a2, 1, v16 + 48);
                v16 = v18;
              }

              v6 = 0;
              *(v16 + 89) = *(a1 + 632);
              *(a1 + 632) = v16;
            }
          }

          else
          {
            return 11;
          }
        }
      }
    }
  }

  return v6;
}

void uarpPlatformPayloadCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 529);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 546);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 563);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  v7 = *(a2 + 64);
  if (v7)
  {
    UARPLayer2ReturnBuffer(a1, v7, 52428, 580);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  v8 = *(a2 + 152);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 52428, 592);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  v9 = *(a2 + 136);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 52428, 602);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
  }
}

uint64_t uarpPlatformEndpointAssetStore(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 4)
  {
    return UARPLayer2AssetStore(result, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescind(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (a3)
    {
      uarpTransmitQueueAssetRescinded(result, a2, a3);
      *(a3 + 72) = 1;

      return UARPLayer2AssetRescinded(v5, a2, a3);
    }

    else
    {

      return UARPLayer2RescindAllAssets(result, a2, 0);
    }
  }

  return result;
}

uint64_t uarpPlatformReOfferFirmware(uint64_t result, uint64_t a2)
{
  v2 = *(result + 632);
  if (v2)
  {
    v4 = result;
    do
    {
      if (*(v2 + 304) == 1 && *(v2 + 696) == a2 && (*(v2 + 46) & 2) == 0)
      {
        result = uarpPlatformEndpointOfferAsset(v4, a2, *(v2 + 704));
      }

      v2 = *(v2 + 712);
    }

    while (v2);
  }

  return result;
}

uint64_t uarpCallbackUpdateInformationTLV(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v9 = v6;
  if (v5 != 7)
  {
    result = uarpPlatformQueryAccessoryInfo(a1, v5, a3 + 2, v6, &v9);
    if (result)
    {
      return result;
    }

    v7 = v9;
    goto LABEL_6;
  }

  if (v6 >= 0x10)
  {
    a3[2] = uarpHtonl(*(a2 + 66));
    a3[3] = uarpHtonl(*(a2 + 70));
    a3[4] = uarpHtonl(*(a2 + 74));
    a3[5] = uarpHtonl(*(a2 + 78));
    v7 = 16;
LABEL_6:
    result = 0;
    a3[1] = v7;
    return result;
  }

  return 39;
}

uint64_t uarpPlatformQueryAccessoryInfo(void *a1, int a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  *a5 = a4;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {

      return UARPLayer2ManufacturerName(a1, a3, a5);
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      return UARPLayer2ModelName(a1, a3, a5);
    }
  }

  else
  {
    switch(a2)
    {
      case 3:

        return UARPLayer2SerialNumber(a1, a3, a5);
      case 4:

        return UARPLayer2HardwareVersion(a1, a3, a5);
      case 9:

        return UARPLayer2FriendlyName(a1, a3, a5);
      default:
LABEL_22:
        if ((a2 - 5) > 1)
        {
          if (a2 != 8)
          {
            *a5 = 0;
            return 28;
          }

          *a5 = 8;
          if (a4 >= 8)
          {
            Error = UARPLayer2LastError(a1, a3);
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            return Error;
          }
        }

        else
        {
          *a5 = 16;
          if (a4 >= 0x10)
          {
            if (a2 == 5)
            {
              v9 = 0;
              active = UARPLayer2ActiveFirmwareVersion2(a1, &v9, a3);
            }

            else
            {
              v10 = 0;
              active = UARPLayer2StagedFirmwareVersion2(a1, &v10, a3);
            }

            Error = active;
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            a3[2] = uarpHtonl(a3[2]);
            a3[3] = uarpHtonl(a3[3]);
            return Error;
          }
        }

        return 39;
    }
  }
}

uint64_t uarpPlatformResponseAccessoryInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v8 = result;
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {

        return UARPLayer2SerialNumberResponse(result, a2);
      }

      else
      {

        return UARPLayer2HardwareVersionResponse(result, a2);
      }
    }

    else if (a4 == 1)
    {

      return UARPLayer2ManufacturerNameResponse(result, a2);
    }

    else if (a4 == 2)
    {

      return UARPLayer2ModelNameResponse(result, a2);
    }
  }

  else if (a4 <= 6)
  {
    if (a4 == 5)
    {
      if (a5 >= 0x10)
      {
        uarpVersionEndianSwap(a6, a6);
        result = UARPLayer2ActiveFirmwareVersionResponse(v8, a2);
        *(a2 + 122) = *a6;
      }
    }

    else if (a5 >= 0x10)
    {
      uarpVersionEndianSwap(a6, a6);
      result = UARPLayer2StagedFirmwareVersionResponse(v8, a2);
      *(a2 + 138) = *a6;
    }
  }

  else
  {
    switch(a4)
    {
      case 7:
        if (a5 >= 0x10)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);
          a6[2] = uarpNtohl(a6[2]);
          a6[3] = uarpNtohl(a6[3]);

          return UARPLayer2StatisticsResponse(v8, a2);
        }

        break;
      case 8:
        if (a5 >= 8)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);

          return UARPLayer2LastErrorResponse(v8, a2);
        }

        break;
      case 9:

        return UARPLayer2FriendlyNameResponse(result, a2);
    }
  }

  return result;
}

uint64_t uarpPlatformAssetDataRequest(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *__dst, unsigned __int16 *a7)
{
  v8 = *(a1 + 632);
  if (!v8)
  {
    return 17;
  }

  while (*(v8 + 304) != 1 || *(v8 + 696) != a2 || *(v8 + 44) != a3)
  {
    v8 = *(v8 + 712);
    if (!v8)
    {
      return 17;
    }
  }

  v10 = *(v8 + 68);
  if (v10 < a5)
  {
    return 17;
  }

  if (v10 >= a4 + a5)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10 - a5;
  }

  return uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v8, __dst, v11, a5, a7);
}

uint64_t uarpPlatformDataTransferResume(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 632);
  if (v4)
  {
    while (1)
    {
      if (!*(v4 + 304) && *(v4 + 696) == a2)
      {
        result = uarpPlatformAssetRequestData(a1, v4, (v4 + 312));
        if (result)
        {
          break;
        }
      }

      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    return UARPLayer2DataTransferResume(a1, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescinded(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(result + 632);
  if (a3 == 0xFFFF)
  {
    if (!v4)
    {
      return uarpPlatformAssetRescind(result, a2, v4);
    }

    v5 = *(result + 632);
    do
    {
      if (!*(v5 + 304) && *(v5 + 696) == a2)
      {
        *(v5 + 72) = 1;
      }

      v5 = *(v5 + 712);
    }

    while (v5);
  }

  if (v4)
  {
    while (*(v4 + 304) || *(v4 + 696) != a2 || *(v4 + 44) != a3)
    {
      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (a3 != 0xFFFF)
    {
      return result;
    }

    v4 = 0;
  }

  return uarpPlatformAssetRescind(result, a2, v4);
}

uint64_t uarpAssetProcessingComplete(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v8 = uarpAllocPrepareTransmitBuffer2(a1, a2, 9u, 0xAu, 1);
    if (v8)
    {
      v9 = v8;
      v10 = v8[3];
      *(v10 + 6) = uarpHtons(*(a3 + 44));
      *(v10 + 8) = uarpHtons(a4);

      return uarpTransmitBuffer2(a1, a2, v9);
    }

    else
    {
      return 11;
    }
  }

  else if (a4 == 3)
  {
    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t uarpOfferAssetToRemoteEP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 5u, 0x24u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpTagStructPack32((a3 + 48));
  *(v8 + 10) = uarpHtons(*(a3 + 46));
  *(v8 + 12) = uarpHtons(*(a3 + 44));
  uarpVersionEndianSwap((a3 + 52), (v8 + 14));
  *(v8 + 30) = uarpHtonl(*(a3 + 68));
  *(v8 + 34) = uarpHtons(*(a3 + 448));

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpAssetRescind(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xCu, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x11u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  *(v6[3] + 6) = *a3;

  return uarpTransmitBuffer2(a1, a2, v6);
}

uint64_t uarpPlatformFindPreparedAsset(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5)
{
  if ((a4 & 2) == 0)
  {
    return 0;
  }

  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (!*(result + 304) && *(result + 696) == a2 && !*(result + 44) && *(result + 48) == *a5 && *(result + 49) == a5[1] && *(result + 50) == a5[2] && *(result + 51) == a5[3])
    {
      break;
    }
  }

  return result;
}

void *uarpPlatformCreateRxAsset(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (UARPLayer2RequestBuffer(a1, &v5, 0x2D8uLL, 52428, 1213))
  {
    return 0;
  }

  result = v5;
  if (v5)
  {
    v5[87] = a2;
    *(result + 76) = 0;
    result[89] = *(a1 + 632);
    *(a1 + 632) = result;
  }

  return result;
}

BOOL uarpPlatformCompareHash(uint64_t a1, void *__s1, size_t __n, void *__s2, int a5)
{
  if (!*(a1 + 416))
  {
    return 1;
  }

  if (__n == a5)
  {
    return memcmp(__s1, __s2, __n) == 0;
  }

  return 0;
}

uint64_t UARPPlatformDownstreamEndpointByID(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*i)
        {
          if (*(result + 160) == a2 && *(result + 120) == a3)
          {
            break;
          }
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UARPPlatformDownstreamEndpointByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*(*i + 160) == a2 && *(result + 40) == a3)
        {
          break;
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointAddEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 620);
  if (v4)
  {
    v5 = *(a1 + 624);
    v6 = *(a1 + 620);
    while (*v5)
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *v5 = a2;
  }

  else
  {
LABEL_5:
    v7 = v4 + 1;
    v11 = 0;
    result = UARPLayer2RequestBuffer(a1, &v11, (8 * (v4 + 1)), 52428, 1360);
    if (!result)
    {
      v9 = *(a1 + 620);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v11[i] = *(*(a1 + 624) + i * 8);
        }
      }

      else
      {
        v9 = 0;
      }

      v11[v9] = a2;
      UARPLayer2ReturnBuffer(a1, *(a1 + 624), 52428, 1377);
      result = 0;
      *(a1 + 620) = v7;
      *(a1 + 624) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointAddToList(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  v3 = *(result + 688);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    v5 = (v4 + 24);
  }

  else
  {
    v5 = (result + 688);
  }

  *v5 = a3;
  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnList(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 8) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 16) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointIDFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 16) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 8);
}

uint64_t uarpPlatformDownstreamEndpointDelegateFindOnListByID(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 8) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 16);
}

uint64_t uarpPlatformDownstreamEndpointRemoveFromList(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 688);
  if (result)
  {
    if (*(result + 8) == a3)
    {
      v5 = (a1 + 688);
LABEL_7:
      *v5 = *(result + 24);
    }

    else
    {
      while (1)
      {
        v6 = result;
        result = *(result + 24);
        if (!result)
        {
          break;
        }

        if (*(result + 8) == a3)
        {
          v5 = (v6 + 24);
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformSendDownstreamMessageWithDownstreamID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v5 = *(a1 + 688);
  if (!v5)
  {
    return 58;
  }

  while (*(v5 + 8) != a3)
  {
    v5 = *(v5 + 24);
    if (!v5)
    {
      return 58;
    }
  }

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, a3, a4, a5);
}

void uarpPlatformReleaseEndpointIDs(uint64_t a1)
{
  if (*(a1 + 664))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 672) + v2;
      UARPLayer2ReturnBuffer(a1, *(v4 + 8), 52428, 1605);
      *(v4 + 2) = 0;
      *(v4 + 8) = 0;
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 664));
  }

  UARPLayer2ReturnBuffer(a1, *(a1 + 672), 52428, 1592);
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
}

uint64_t uarpPlatformReleaseEndpointTags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2ReturnBuffer(a1, *(a3 + 8), 52428, 1605);
  *(a3 + 2) = 0;
  *(a3 + 8) = 0;
  return 0;
}

uint64_t uarpPlatformEndpointSendSyncMsg(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a1 + 616))
    {
      v5 = 1;
    }

    else
    {
      uarpTransmitQueuePurge(a1, a2);
      v5 = 0;
    }

    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0, 6u, v5);
    if (v6)
    {

      return uarpTransmitBuffer2(a1, a2, v6);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 1u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      if (a3 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = a3;
      }

      *(a2 + 48) = v10;
      *(v9 + 6) = uarpHtons(v10);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryResponse(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 30;
  if (a1 && a2)
  {
    *(a2 + 48) = a3;
    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 2u, 0xCu, 0);
    if (v6)
    {
      v7 = v6;
      v8 = v6[3];
      v8[3] = uarpHtons(0);
      v8[4] = uarpHtons(*(a2 + 48));
      v8[5] = *(a2 + 36);
      v9 = UARPProtocolVersionResponseAdjustByProtocolVersion(*(a2 + 48));
      v10 = uarpNtohs(v8[1]);
      v8[1] = v10 - v9;
      v8[1] = uarpHtons((v10 - v9));
      *(v7 + 18) -= v9;

      return uarpTransmitBuffer2(a1, a2, v7);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendInformationRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 3u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtonl(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t sub_10001A310(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 8u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      *(v9 + 6) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendDynamicAssetPreProcessingStatus(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x13u, 0xCu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = *a3;
  *(v12 + 10) = uarpHtons(a5 | a4);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendAssetRequestData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 6u, 0xEu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = uarpHtons(a3);
  *(v12 + 8) = uarpHtonl(a4);
  if (a5 >= 0xFFFF)
  {
    v13 = 0xFFFF;
  }

  else
  {
    v13 = a5;
  }

  *(v12 + 12) = uarpHtons(v13);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (!a2)
  {
    return 13;
  }

  v12 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, (a6 + 11), a4 == 32);
  if (!v12)
  {
    return 11;
  }

  v13 = v12;
  v14 = v12[3];
  v15 = *a3;
  *(v14 + 8) = *(a3 + 2);
  *(v14 + 6) = v15;
  *(v14 + 9) = uarpHtons(a4);
  if (a5 && a6)
  {
    memcpy((v14 + 11), a5, a6);
  }

  return uarpTransmitBuffer2(a1, a2, v13);
}

uint64_t uarpSendDownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x15u, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpSendDownstreamEndpointReachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x17u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSendDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x19u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpTransmitMessageToDownstreamEndpointID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v10 = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  v11 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Bu, (a5 + 8), v10);
  if (!v11)
  {
    return 11;
  }

  v12 = v11;
  v13 = v11[3];
  *(v13 + 6) = uarpHtons(a3);
  memcpy((v13 + 8), a4, a5);

  return uarpTransmitBuffer2(a1, a2, v12);
}

uint64_t uarpPlatformEndpointRecvMessage(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = 30;
  if (a1 && a2 && a3)
  {
    UARPLayer2LogPacket(a1, a2);
    if (a4 <= 5)
    {
      v9 = *(a1 + 440);
      if (v9)
      {
        v10 = *(a1 + 608);
        v11 = uarpEndpointRoleToString(*(a1 + 616));
        v9(v10, 0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>", v11, a4);
      }

      else
      {
        uarpEndpointRoleToString(*(a1 + 616));
        uarpLogError(0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>");
      }

      return 8;
    }

    v12 = uarpNtohs(*a3);
    v13 = uarpNtohs(a3[1]);
    v14 = uarpNtohs(a3[2]);
    *(a2 + 32) = v14;
    v15 = v13 + 6;
    if (a4 < v15)
    {
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>";
LABEL_10:
      v16(v17, 0, v18);
      return 8;
    }

    if (a4 > v15)
    {
      v19 = *(a1 + 440);
      if (v19)
      {
        v19(*(a1 + 608), 0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      else
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      if (a4 - v15 < 6)
      {
        return 8;
      }

      v22 = (a3 + v15);
      uarpNtohs(*v22);
      uarpNtohs(v22[1]);
      uarpNtohs(v22[2]);
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>";
      goto LABEL_10;
    }

    v4 = 1;
    *(a1 + 644) = 1;
    switch(v12)
    {
      case 0:
        if (!*(a1 + 616))
        {
          uarpTransmitQueuePurge(a1, a2);
          uarpPlatformEndpointSendSyncMsg(a1, a2);
          goto LABEL_371;
        }

        v20 = a2[14];
        if (!v20)
        {
          goto LABEL_284;
        }

        while (!*(v20 + 40) || uarpNtohs(*v20[3]))
        {
          v20 = *v20;
          if (!v20)
          {
            goto LABEL_284;
          }
        }

        *(v20 + 40) = 0;
        *(v20 + 39) = *(v20 + 38);
LABEL_284:
        *(a2 + 130) = 0;
        *(a2 + 122) = 0;
        *(a2 + 146) = 0;
        *(a2 + 138) = 0;
        *(a2 + 24) = 0;
        if ((*(a1 + 616) - 1) <= 1)
        {
          uarpSendVersionDiscoveryRequest(a1, a2, *(a2 + 6));
        }

        goto LABEL_371;
      case 1:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v90 = uarpNtohs(a3[3]);
        v91 = *(a1 + 12);
        if (v90 < v91)
        {
          v91 = v90;
        }

        if (v91 <= 1)
        {
          v92 = 1;
        }

        else
        {
          v92 = v91;
        }

        *(a2 + 24) = v92;
        uarpSendVersionDiscoveryResponse(a1, a2, v92);
        v93 = *(a2 + 24);
        UARPLayer2ProtocolVersion(a1, a2);
        goto LABEL_371;
      case 2:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v77 = a2[14];
        if (!v77)
        {
          goto LABEL_213;
        }

        while (!*(v77 + 40) || uarpNtohs(*v77[3]) != 1)
        {
          v77 = *v77;
          v4 = 9;
          if (!v77)
          {
            goto LABEL_372;
          }
        }

        *(v77 + 40) = 0;
        *(v77 + 39) = *(v77 + 38);
        v4 = uarpNtohs(a3[3]);
        v161 = uarpHtons(a3[4]);
        v162 = 0;
        v163 = 0;
        if (a4 >= 0xC)
        {
          v162 = *(a3 + 10);
          v163 = *(a3 + 11);
        }

        *(a2 + 25) = v162;
        *(a2 + 26) = v163;
        if (v4)
        {
          v4 = 2;
        }

        else
        {
          if (v161 <= 1)
          {
            v181 = 1;
          }

          else
          {
            v181 = v161;
          }

          if (v181 >= 7)
          {
            v182 = 7;
          }

          else
          {
            v182 = v181;
          }

          *(a2 + 24) = v182;
          UARPLayer2ProtocolVersion(a1, a2);
        }

        goto LABEL_372;
      case 3:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v79 = uarpAllocPrepareTransmitBuffer2(a1, a2, 4u, 0x10u, 0);
        if (!v79)
        {
          goto LABEL_282;
        }

        v80 = v79;
        v81 = v79[3];
        *(v81 + 8) = uarpNtohl(*(a3 + 3));
        *(v81 + 12) = *(v80 + 8) - 16;
        updated = uarpCallbackUpdateInformationTLV(a1, a2, (v81 + 8));
        v83 = updated;
        if (updated)
        {
          v84 = 16;
        }

        else
        {
          v174 = *(v81 + 12);
          *(v81 + 2) = uarpHtons((v174 + 10));
          *(v81 + 8) = uarpHtonl(*(v81 + 8));
          *(v81 + 12) = uarpHtonl(*(v81 + 12));
          v84 = v174 + 16;
        }

        *(v81 + 6) = uarpHtons(v83);
        *(v80 + 18) = v84;
        goto LABEL_317;
      case 4:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v56 = uarpNtohs(a3[3]);
        if (a4 < 0x10)
        {
          goto LABEL_213;
        }

        v57 = v56;
        v58 = uarpNtohl(*(a3 + 2));
        v59 = uarpNtohl(*(a3 + 3));
        if (v59 > 0xFFFFFFEF)
        {
          goto LABEL_303;
        }

        if (v59 + 16 > a4)
        {
          goto LABEL_213;
        }

        v60 = v59;
        v61 = a2[14];
        if (!v61)
        {
          goto LABEL_370;
        }

        while (!*(v61 + 40) || uarpNtohs(*v61[3]) != 3 || v58 != uarpNtohl(*(v61[3] + 6)))
        {
          v61 = *v61;
          if (!v61)
          {
            goto LABEL_370;
          }
        }

        *(v61 + 40) = 0;
        *(v61 + 39) = *(v61 + 38);
LABEL_370:
        uarpPlatformResponseAccessoryInfo(a1, a2, v57, v58, v60, a3 + 4);
        goto LABEL_371;
      case 5:
        if (a4 < 0x24)
        {
          goto LABEL_213;
        }

        v200 = 0;
        uarpTagStructUnpack32(*(a3 + 3), &v200);
        v104 = uarpNtohs(a3[5]);
        v105 = uarpNtohs(a3[6]);
        v199[0] = 0;
        v199[1] = 0;
        uarpVersionEndianSwap((a3 + 7), v199);
        v106 = uarpNtohl(*(a3 + 15));
        v107 = uarpNtohs(a3[17]);
        v108 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xDu, 0x24u, 0);
        if (!v108)
        {
          goto LABEL_282;
        }

        v109 = v108;
        v110 = v108[3];
        *(v110 + 6) = uarpTagStructPack32(&v200);
        *(v110 + 10) = uarpHtons(v104);
        *(v110 + 12) = uarpHtons(v105);
        uarpVersionEndianSwap(v199, (v110 + 14));
        *(v110 + 30) = uarpHtonl(v106);
        *(v110 + 34) = uarpHtons(v107);
        v4 = uarpTransmitBuffer2(a1, a2, v109);
        if (v4)
        {
          goto LABEL_372;
        }

        v111 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v105);
        if (v111 && !*(v111 + 8))
        {
          goto LABEL_371;
        }

        PreparedAsset = uarpPlatformFindPreparedAsset(a1, a2, v105, v104, &v200);
        if (!PreparedAsset)
        {
          PreparedAsset = uarpPlatformCreateRxAsset(a1, a2);
          if (!PreparedAsset)
          {
            goto LABEL_282;
          }
        }

        v113 = PreparedAsset;
        *(PreparedAsset + 452) = -1;
        *(PreparedAsset + 448) = uarpNtohs(a3[17]);
        *(v113 + 44) = v105;
        *(v113 + 46) = v104;
        *(v113 + 48) = v200;
        *(v113 + 52) = *v199;
        *(v113 + 68) = uarpNtohl(*(a3 + 15));
        v114 = *(v113 + 46);
        if (v114)
        {
          UARPLayer2SuperBinaryOffered(a1, a2);
        }

        else
        {
          if ((v114 & 2) == 0)
          {
            v4 = 22;
            goto LABEL_372;
          }

          UARPLayer2DynamicAssetOffered(a1, a2);
        }

        goto LABEL_371;
      case 6:
        if (a4 < 0xE)
        {
          goto LABEL_213;
        }

        v118 = uarpNtohs(a3[6]);
        if (*a2 >= v118)
        {
          v119 = v118;
        }

        else
        {
          v119 = *a2;
        }

        LOWORD(v199[0]) = v119;
        v120 = uarpNtohl(*(a3 + 2));
        v121 = uarpNtohs(a3[3]);
        v122 = uarpAllocPrepareTransmitBuffer2(a1, a2, 7u, (v119 + 18), 0);
        if (!v122)
        {
          goto LABEL_282;
        }

        v80 = v122;
        v123 = v122[3];
        v124 = uarpPlatformAssetDataRequest(a1, a2, v121, v119, v120, (v123 + 18), v199);
        *(v123 + 6) = uarpHtons(v124);
        *(v123 + 8) = a3[3];
        *(v123 + 10) = *(a3 + 2);
        *(v123 + 14) = a3[6];
        *(v123 + 16) = uarpHtons(LOWORD(v199[0]));
        v125 = LOWORD(v199[0]) + 18;
        *(v123 + 2) = uarpHtons((LOWORD(v199[0]) + 12));
        *(v80 + 18) = v125;
LABEL_317:
        v129 = a1;
        v130 = a2;
        v131 = v80;
        goto LABEL_318;
      case 7:
        if (a4 < 0x12)
        {
          goto LABEL_213;
        }

        v85 = uarpNtohs(a3[4]);
        v86 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v85);
        if (!v86)
        {
          goto LABEL_327;
        }

        v87 = a2[14];
        if (!v87)
        {
          goto LABEL_213;
        }

        v88 = v86;
        while (1)
        {
          if (*(v87 + 40))
          {
            if (uarpNtohs(*v87[3]) == 6)
            {
              v89 = v87[3];
              if (v85 == uarpNtohs(*(v89 + 6)) && *(a3 + 5) == *(v89 + 8) && a3[7] == *(v89 + 12))
              {
                break;
              }
            }
          }

          v87 = *v87;
          v4 = 9;
          if (!v87)
          {
            goto LABEL_372;
          }
        }

        *(v87 + 40) = 0;
        *(v87 + 39) = *(v87 + 38);
        v194 = uarpNtohs(a3[3]);
        v195 = uarpNtohl(*(a3 + 5));
        v196 = uarpNtohs(a3[7]);
        v197 = uarpNtohs(a3[8]);
        if (v197 + 18 > a4)
        {
LABEL_213:
          v4 = 9;
        }

        else
        {
          v198 = uarpPlatformAssetResponseData(a1, v88, v194, a3 + 9, v195, v196, v197);
          if (v198 == 29)
          {
            v4 = 0;
          }

          else
          {
            v4 = v198;
          }
        }

        goto LABEL_372;
      case 8:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v153 = uarpNtohs(a3[3]);
        v154 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xEu, 8u, 0);
        if (!v154)
        {
          goto LABEL_282;
        }

        *(v154[3] + 6) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v154);
        if (v26)
        {
          goto LABEL_319;
        }

        if ((v153 & 1) != 0 && *(a2 + 60) == 1)
        {
          *(a2 + 60) = 0;
          v26 = UARPLayer2DataTransferPause(a1, a2);
          goto LABEL_319;
        }

        if ((v153 & 2) == 0 || *(a2 + 60))
        {
          v4 = 33;
          goto LABEL_372;
        }

        *(a2 + 60) = 1;
        v26 = uarpPlatformDataTransferResume(a1, a2);
        goto LABEL_319;
      case 9:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v64 = uarpNtohs(a3[3]);
        v65 = uarpNtohs(a3[4]);
        v66 = uarpPlatformAssetFindByAssetID(a1, a2, 1, v64);
        if (!v66)
        {
          goto LABEL_371;
        }

        v67 = v66;
        v68 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFu, 0xAu, 0);
        if (!v68)
        {
          goto LABEL_282;
        }

        v69 = v68;
        v70 = v68[3];
        *(v70 + 6) = uarpHtons(v64);
        *(v70 + 8) = uarpHtons(v65);
        v26 = uarpTransmitBuffer2(a1, a2, v69);
        if (!v26)
        {
          v26 = UARPLayer2AssetProcessingNotification2(a1, a2, v67, v65);
        }

        goto LABEL_319;
      case 10:
        LOWORD(v199[0]) = 0;
        v126 = UARPLayer2ApplyStagedAssets(a1, a2);
        v4 = 11;
        v127 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xBu, 0xAu, 0);
        if (!v127)
        {
          goto LABEL_372;
        }

        v95 = v127;
        v128 = v127[3];
        *(v128 + 6) = uarpHtons(v126);
        *(v128 + 8) = uarpHtons(LOWORD(v199[0]));
        goto LABEL_211;
      case 11:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v55 = a2[14];
        if (!v55)
        {
          goto LABEL_296;
        }

        while (!*(v55 + 40) || uarpNtohs(*v55[3]) != 10)
        {
          v55 = *v55;
          if (!v55)
          {
            goto LABEL_296;
          }
        }

        *(v55 + 40) = 0;
        *(v55 + 39) = *(v55 + 38);
LABEL_296:
        uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v26 = UARPLayer2ApplyStagedAssetsResponse(a1, a2);
        goto LABEL_319;
      case 12:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v62 = uarpNtohs(a3[3]);
        v63 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x10u, 8u, 0);
        if (!v63)
        {
          goto LABEL_282;
        }

        *(v63[3] + 6) = a3[3];
        v4 = uarpTransmitBuffer2(a1, a2, v63);
        if (!v4)
        {
          uarpPlatformAssetRescinded(a1, a2, v62);
        }

        goto LABEL_372;
      case 13:
        if (a4 < 0x24)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpNtohs(*v39[3]) != 5 || a3[6] != *(v39[3] + 12))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 14:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v48 = a2[14];
        if (!v48)
        {
          goto LABEL_290;
        }

        while (!*(v48 + 40) || uarpNtohs(*v48[3]) != 8)
        {
          v48 = *v48;
          if (!v48)
          {
            goto LABEL_290;
          }
        }

        *(v48 + 40) = 0;
        *(v48 + 39) = *(v48 + 38);
LABEL_290:
        v160 = uarpNtohs(a3[3]);
        if (v160)
        {
          v26 = UARPLayer2DataTransferPauseAck(a1, a2);
        }

        else
        {
          if ((v160 & 2) == 0)
          {
            v4 = 26;
            goto LABEL_372;
          }

          v26 = UARPLayer2DataTransferResumeAck(a1, a2);
        }

        goto LABEL_319;
      case 15:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v78 = a2[14];
        if (!v78)
        {
          goto LABEL_330;
        }

        while (!*(v78 + 40) || uarpNtohs(*v78[3]) != 9 || a3[3] != *(v78[3] + 6))
        {
          v78 = *v78;
          if (!v78)
          {
            goto LABEL_330;
          }
        }

        *(v78 + 40) = 0;
        *(v78 + 39) = *(v78 + 38);
LABEL_330:
        v177 = uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v178 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v177);
        if (!v178)
        {
          goto LABEL_371;
        }

        v179 = v178;
        v4 = UARPLayer2AssetProcessingNotificationAck(a1, a2, v178);
        *(v179 + 72) = 1;
        goto LABEL_372;
      case 16:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v47 = a2[14];
        if (!v47)
        {
          goto LABEL_324;
        }

        while (!*(v47 + 40) || uarpNtohs(*v47[3]) != 12 || a3[3] != *(v47[3] + 6))
        {
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_324;
          }
        }

        *(v47 + 40) = 0;
        *(v47 + 39) = *(v47 + 38);
LABEL_324:
        v175 = uarpNtohs(a3[3]);
        if (v175 == 0xFFFF)
        {
          UARPLayer2RescindAllAssetsAck(a1, a2, 0);
          goto LABEL_371;
        }

        v176 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v175);
        if (v176)
        {
          UARPLayer2AssetRescindedAck(a1, a2, v176);
          goto LABEL_371;
        }

LABEL_327:
        v4 = 17;
        goto LABEL_372;
      case 17:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v100 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x12u, 0xEu, 0);
        if (!v100)
        {
          goto LABEL_282;
        }

        v101 = v100;
        v102 = v100[3];
        *(v102 + 6) = uarpHtonl(0);
        *(v102 + 10) = *(a3 + 3);
        v26 = uarpTransmitBuffer2(a1, a2, v101);
        if (!v26)
        {
          v26 = UARPLayer2AssetSolicitation(a1, a2);
        }

        goto LABEL_319;
      case 18:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpNtohs(*v39[3]) != 17 || !uarpAssetTagCompare(a3 + 10, (v39[3] + 6)))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 19:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v134 = uarpNtohs(a3[5]);
        v135 = *(a3 + 3);
        LODWORD(v199[0]) = v135;
        v136 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x14u, 0xCu, 0);
        if (!v136)
        {
          goto LABEL_282;
        }

        v137 = v136;
        v138 = v136[3];
        *(v138 + 6) = v135;
        *(v138 + 10) = uarpHtons(v134);
        v4 = uarpTransmitBuffer2(a1, a2, v137);
        if (v4)
        {
          goto LABEL_372;
        }

        v139 = uarpPlatformAssetFindByTag(a1, a2, 0, v199);
        if (v139)
        {
          *(v139 + 72) = 1;
          v26 = UARPLayer2AssetPreProcessingNotification(a1, a2, v139);
          goto LABEL_319;
        }

        v4 = 3;
        goto LABEL_372;
      case 20:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v103 = a2[14];
        if (!v103)
        {
          goto LABEL_333;
        }

        while (!*(v103 + 40) || uarpNtohs(*v103[3]) != 19 || !uarpAssetTagCompare(a3 + 6, (v103[3] + 6)))
        {
          v103 = *v103;
          if (!v103)
          {
            goto LABEL_333;
          }
        }

        *(v103 + 40) = 0;
        *(v103 + 39) = *(v103 + 38);
LABEL_333:
        uarpNtohs(a3[5]);
        LODWORD(v199[0]) = *(a3 + 3);
        v180 = uarpPlatformAssetFindByTag(a1, a2, 1, v199);
        if (!v180)
        {
          goto LABEL_371;
        }

        *(v180 + 72) = 1;
        v26 = UARPLayer2AssetPreProcessingNotificationAck(a1, a2, v180);
        if (v26 == 3)
        {
          goto LABEL_371;
        }

        goto LABEL_319;
      case 21:
        v115 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x16u, 8u, 0);
        if (!v115)
        {
          goto LABEL_282;
        }

        v116 = v115;
        v117 = v115[3];
        *(v117 + 6) = uarpHtons(0);
        v26 = uarpTransmitBuffer2(a1, a2, v116);
        if (!v26)
        {
          v26 = fUarpLayer3DownstreamEndpointDiscovery(a1, a2);
        }

        goto LABEL_319;
      case 22:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 21)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 23:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v140 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x18u, 0xAu, 0);
        if (!v140)
        {
          goto LABEL_282;
        }

        v141 = v140;
        v142 = v140[3];
        *(v142 + 6) = uarpHtons(0);
        *(v142 + 8) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v141);
        if (v26)
        {
          goto LABEL_319;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, 0x20uLL, 56797, 1483);
        if (!v4)
        {
          v143 = uarpNtohs(a3[3]);
          v144 = v199[0];
          *(v199[0] + 4) = v143;
          v144[2] = 0;
          v144[3] = 0;
          uarpPlatformDownstreamEndpointAddToList(a1, a2, v144);
          v145 = *(a1 + 448);
          if (v145)
          {
            v146 = *(a1 + 608);
            v147 = uarpEndpointRoleToString(*(a1 + 616));
            v145(v146, 6, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v147, a1, a2, *(v199[0] + 4));
          }

          else
          {
            v192 = uarpEndpointRoleToString(*(a1 + 616));
            uarpLogInfo(6u, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v192, a1, a2, *(v199[0] + 4));
          }

          v193 = *(v199[0] + 4);
          v4 = fUarpLayer3DownstreamEndpointReachable(a1, a2);
          if (v4)
          {
            UARPLayer2ReturnBuffer(a1, v199[0], 56797, 1512);
          }
        }

        goto LABEL_372;
      case 24:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 23)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 25:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v71 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Au, 0xAu, 0);
        if (!v71)
        {
          goto LABEL_282;
        }

        v72 = v71;
        v73 = uarpNtohs(a3[3]);
        v74 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v73);
        if (v74)
        {
          v75 = 0;
        }

        else
        {
          v173 = *(a1 + 440);
          if (v173)
          {
            v173(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          else
          {
            uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          v75 = 58;
        }

        v183 = v72[3];
        *(v183 + 6) = uarpHtons(v75);
        *(v183 + 8) = a3[3];
        v184 = uarpTransmitBuffer2(a1, a2, v72);
        v4 = v184;
        if (!v74 || v184)
        {
          goto LABEL_372;
        }

        v185 = *(a1 + 448);
        if (v185)
        {
          v186 = *(a1 + 608);
          v187 = uarpEndpointRoleToString(*(a1 + 616));
          v185(v186, 6, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v187, a1, a2, v73);
        }

        else
        {
          v188 = uarpEndpointRoleToString(*(a1 + 616));
          uarpLogInfo(6u, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v188, a1, a2, v73);
        }

        if (fUarpLayer3DownstreamEndpointUnreachable(a1, a2))
        {
          goto LABEL_371;
        }

        v189 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v74 + 8));
        v190 = a1;
        v191 = 1655;
        goto LABEL_357;
      case 26:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v152 = a2[14];
        if (!v152)
        {
          goto LABEL_309;
        }

        while (!*(v152 + 40) || uarpNtohs(*v152[3]) != 25)
        {
          v152 = *v152;
          if (!v152)
          {
            goto LABEL_309;
          }
        }

        *(v152 + 40) = 0;
        *(v152 + 39) = *(v152 + 38);
LABEL_309:
        v168 = uarpHtons(a3[4]);
        v169 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v168);
        if (v169)
        {
          v170 = v169;
          uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v169 + 8));
          v171 = *(v170 + 8);
          fUarpLayer3DownstreamEndpointReleased(a1, a2);
          goto LABEL_371;
        }

        v172 = *(a1 + 440);
        if (v172)
        {
          v172(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        v4 = 58;
        goto LABEL_372;
      case 27:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v41 = uarpNtohs(a3[3]);
        v42 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v41);
        if (v42)
        {
          v43 = v42;
          sub_10001C4C4(a1, a2, v41, 0);
          v26 = fUarpLayer3DownstreamEndpointRecvMessage(a1, a2, v43);
          goto LABEL_319;
        }

        v155 = *(a1 + 440);
        if (v155)
        {
          v155(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        v4 = 58;
        sub_10001C4C4(a1, a2, v41, 0x3Au);
        goto LABEL_372;
      case 28:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 27)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 29:
        v148 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Eu, 8u, 0);
        if (!v148)
        {
          goto LABEL_282;
        }

        v149 = v148;
        v150 = v148[3];
        *(v150 + 6) = uarpHtons(0);
        v4 = uarpTransmitBuffer2(a1, a2, v149);
        if (!v4)
        {
          fUarpLayer3NoFirmwareUpdateAvailable(a1, a2);
        }

        goto LABEL_372;
      case 30:
        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 29)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

LABEL_266:
        v4 = 0;
        *(v76 + 40) = 0;
        *(v76 + 39) = *(v76 + 38);
        goto LABEL_372;
      case 31:
        v94 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x20u, (2 * *(a1 + 664) + 10) & 0xFFFE, 0);
        if (!v94)
        {
          goto LABEL_282;
        }

        v95 = v94;
        v96 = v94[3];
        *(v96 + 6) = uarpHtons(0);
        *(v96 + 8) = uarpHtons(*(a1 + 664));
        if (*(a1 + 664))
        {
          v97 = 0;
          v98 = 0;
          v99 = v96 + 10;
          do
          {
            *(v99 + 2 * v98++) = uarpHtons(*(*(a1 + 672) + v97));
            v97 += 16;
          }

          while (v98 < *(a1 + 664));
        }

LABEL_211:
        v129 = a1;
        v130 = a2;
        v131 = v95;
        goto LABEL_318;
      case 32:
        v44 = a4 >= 0xA;
        v132 = a4 - 10;
        if (!v44)
        {
          goto LABEL_303;
        }

        v133 = a2[14];
        if (!v133)
        {
          goto LABEL_302;
        }

        while (!*(v133 + 40) || uarpNtohs(*v133[3]) != 31)
        {
          v133 = *v133;
          if (!v133)
          {
            goto LABEL_302;
          }
        }

        *(v133 + 40) = 0;
        *(v133 + 39) = *(v133 + 38);
LABEL_302:
        v164 = uarpNtohs(a3[4]);
        if (v132 < 2 * v164)
        {
          goto LABEL_303;
        }

        v165 = a3 + 5;
        if (v164)
        {
          v166 = v164;
          v167 = v165;
          do
          {
            *v167 = uarpHtons(*v167);
            ++v167;
            --v166;
          }

          while (v166);
        }

        UARPLayer2EndpointIDs(a1, a2);
        goto LABEL_371;
      case 33:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v49 = uarpHtons(a3[3]);
        v50 = v49;
        v51 = *(a1 + 672);
        v52 = *(a1 + 664);
        if (!*(a1 + 664))
        {
          goto LABEL_89;
        }

        v53 = *(a1 + 672);
        while (*v53 != v49)
        {
          v53 += 8;
          if (!--v52)
          {
LABEL_89:
            v54 = 0;
            goto LABEL_277;
          }
        }

        v54 = v53[1];
        v51 = v53;
LABEL_277:
        v156 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x22u, (4 * v54 + 12) & 0xFFFC, 0);
        if (!v156)
        {
LABEL_282:
          v4 = 11;
          goto LABEL_372;
        }

        v157 = v156;
        v158 = v156[3];
        v158[3] = uarpHtons(0);
        v158[4] = uarpHtons(v50);
        v158[5] = uarpHtons(v54);
        if (v54)
        {
          v159 = 0;
          do
          {
            *&v158[v159 + 6] = *(*(v51 + 1) + v159 * 2);
            v159 += 2;
          }

          while (2 * v54 != v159);
        }

        v129 = a1;
        v130 = a2;
        v131 = v157;
LABEL_318:
        v26 = uarpTransmitBuffer2(v129, v130, v131);
        goto LABEL_319;
      case 34:
        v44 = a4 >= 0xC;
        v45 = a4 - 12;
        if (!v44)
        {
          goto LABEL_303;
        }

        v46 = a2[14];
        if (!v46)
        {
          goto LABEL_287;
        }

        while (!*(v46 + 40) || uarpNtohs(*v46[3]) != 33)
        {
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_287;
          }
        }

        *(v46 + 40) = 0;
        *(v46 + 39) = *(v46 + 38);
LABEL_287:
        uarpNtohs(a3[4]);
        if (v45 < 2 * uarpNtohs(a3[5]))
        {
LABEL_303:
          v4 = 8;
        }

        else
        {
          UARPLayer2EndpointIDComponents(a1, a2);
LABEL_371:
          v4 = 0;
        }

        goto LABEL_372;
      case 35:
        if (a4 < 0x10)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        v30 = *(a3 + 3);
        v200 = *(a3 + 2);
        v31 = uarpHtonl(v30);
        if (v31 >> 30)
        {
          goto LABEL_303;
        }

        v32 = v31;
        v33 = 4 * v31;
        if (v33 > a4 - 16)
        {
          goto LABEL_303;
        }

        v34 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x24u, (4 * v31 + 18), 0);
        if (!v34)
        {
          goto LABEL_282;
        }

        v35 = v34;
        v36 = v34[3];
        *(v36 + 6) = uarpHtons(0);
        *(v36 + 8) = a3[3];
        *(v36 + 10) = *(a3 + 2);
        *(v36 + 14) = *(a3 + 3);
        memcpy((v36 + 18), a3 + 8, v33);
        v4 = uarpTransmitBuffer2(a1, a2, v35);
        if (v4)
        {
          goto LABEL_372;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, v33, 56797, 2292);
        if (v4)
        {
          goto LABEL_372;
        }

        if (v32)
        {
          v37 = 0;
          do
          {
            v38 = uarpNtohl(*&a3[v37 + 8]);
            *(v199[0] + v37 * 2) = v38;
            v37 += 2;
          }

          while (2 * v32 != v37);
        }

        UARPLayer2EndpointBulkInformationQuery(a1, a2);
        v189 = v199[0];
        v190 = a1;
        v191 = 2313;
LABEL_357:
        UARPLayer2ReturnBuffer(v190, v189, 56797, v191);
        goto LABEL_371;
      case 36:
        if (a4 < 0x12)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpNtohs(*v39[3]) == 35)
            {
              v40 = v39[3];
              if (*(v40 + 6) == a3[4] && uarp4ccCompare((v40 + 8), a3 + 10))
              {
                goto LABEL_273;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

      case 37:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        LODWORD(v199[0]) = *(a3 + 2);
        uarpNtohs(a3[1]);
        v27 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x26u, 0xEu, 0);
        if (!v27)
        {
          goto LABEL_282;
        }

        v28 = v27;
        v29 = v27[3];
        *(v29 + 6) = uarpHtons(0);
        *(v29 + 8) = a3[3];
        *(v29 + 10) = *(a3 + 2);
        v4 = uarpTransmitBuffer2(a1, a2, v28);
        if (!v4)
        {
          UARPLayer2EndpointBulkInformationResponse(a1, a2);
        }

        goto LABEL_372;
      case 38:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpNtohs(*v39[3]) == 37)
            {
              v151 = v39[3];
              if (*(v151 + 6) == a3[4] && uarp4ccCompare((v151 + 8), a3 + 10))
              {
                break;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

LABEL_273:
        v4 = 0;
        *(v39 + 40) = 0;
        *(v39 + 39) = *(v39 + 38);
        goto LABEL_372;
      default:
        if (v12 != 0xFFFF)
        {
          goto LABEL_372;
        }

        if (a4 < 0xB)
        {
          goto LABEL_303;
        }

        v23 = a2[14];
        if (!v23)
        {
          goto LABEL_38;
        }

        break;
    }

    while (1)
    {
      if (*(v23 + 40))
      {
        if (uarpNtohs(*v23[3]) == 0xFFFF)
        {
          v24 = v23[3];
          v25 = *(v23 + 18);
          if (UARPLayer2VendorSpecificCheckExpectedResponse(a1, a2))
          {
            break;
          }
        }
      }

      v23 = *v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    *(v23 + 40) = 0;
    *(v23 + 39) = *(v23 + 38);
LABEL_38:
    uarpNtohs(*(a3 + 9));
    v26 = UARPLayer2VendorSpecificRecvMessage(a1, a2);
LABEL_319:
    v4 = v26;
LABEL_372:
    *(a1 + 644) = 0;
    uarpTransmitQueueReclaimEntries(a1, a2);
    uarpTransmitQueueService(a1, a2);
    uarpPlatformGarbageCollection(a1, a2);
  }

  return v4;
}

uint64_t sub_10001C4C4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  result = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  if (result)
  {
    result = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Cu, 0xAu, 0);
    if (result)
    {
      v9 = result;
      v10 = *(result + 24);
      *(v10 + 6) = uarpHtons(a4);
      *(v10 + 8) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v9);
    }
  }

  return result;
}

__int16 *uarpOuiAppleGenericFeatures()
{
  result = &word_100049157;
  word_100049157 = 2492;
  byte_100049159 = 99;
  return result;
}

uint64_t uarpApplePlatformEndpointRecvMessage(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int *a5, unsigned int a6)
{
  result = 30;
  if (!a1 || !a2 || !a3 || !a5)
  {
    return result;
  }

  word_100049157 = 2492;
  byte_100049159 = 99;
  if (!uarpOuiCompare(a3, &word_100049157))
  {
    return 9;
  }

  if (a4 != 33)
  {
    if (a4 == 32 && a6 >= 4)
    {
      v12 = *a2;
      v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, *a2, 0);
      if (!v13)
      {
        return 11;
      }

      v14 = v13;
      v15 = v13[3];
      word_100049157 = 2492;
      byte_100049159 = 99;
      *(v15 + 6) = 2492;
      *(v15 + 8) = 99;
      *(v15 + 9) = uarpHtons(0x21u);
      v16 = *(a1 + 40);
      v47 = 0;
      v17 = uarpNtohl(*a5);
      v18 = (v12 - 23);
      switch(v17)
      {
        case 1u:
          v19 = v16[1];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 1;
          goto LABEL_99;
        case 2u:
          v19 = v16[3];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 2;
          goto LABEL_99;
        case 3u:
          v19 = v16[5];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 3;
          goto LABEL_99;
        case 4u:
          v33 = v16[7];
          if (!v33)
          {
            goto LABEL_100;
          }

          v34 = v33(*(a1 + 608), 4, v15 + 23, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
          if (v47 != 8)
          {
            goto LABEL_89;
          }

LABEL_72:
          *(v15 + 23) = uarpHtonll(*(v15 + 23));
          break;
        case 5u:
          v29 = v16[9];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 5;
          goto LABEL_87;
        case 6u:
          v29 = v16[11];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 6;
          goto LABEL_87;
        case 7u:
          v36 = v16[13];
          if (!v36)
          {
            goto LABEL_100;
          }

          v34 = v36(*(a1 + 608), 7, v15 + 23, v18, &v47);
          if (*(a2 + 48) >= 4u && v47 == 8)
          {
            goto LABEL_72;
          }

          break;
        case 8u:
          v29 = v16[17];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 8;
          goto LABEL_87;
        case 9u:
          v29 = v16[19];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 9;
          goto LABEL_87;
        case 0xAu:
          v29 = v16[21];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 10;
          goto LABEL_87;
        case 0xBu:
          v29 = v16[23];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 11;
          goto LABEL_87;
        case 0xCu:
          v19 = v16[25];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 12;
          goto LABEL_99;
        case 0xDu:
          v19 = v16[27];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 13;
          goto LABEL_99;
        case 0xEu:
          v19 = v16[29];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 14;
          goto LABEL_99;
        case 0xFu:
          v19 = v16[31];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 15;
          goto LABEL_99;
        case 0x10u:
          v29 = v16[33];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 16;
          goto LABEL_87;
        case 0x11u:
          v19 = v16[35];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 17;
          goto LABEL_99;
        case 0x12u:
          v19 = v16[37];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 18;
          goto LABEL_99;
        case 0x13u:
          v29 = v16[39];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 19;
          goto LABEL_87;
        case 0x14u:
          v29 = v16[41];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 20;
          goto LABEL_87;
        case 0x15u:
          v29 = v16[43];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 21;
          goto LABEL_87;
        case 0x16u:
          v29 = v16[45];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 22;
          goto LABEL_87;
        case 0x17u:
          v19 = v16[47];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 23;
          goto LABEL_99;
        case 0x18u:
          v19 = v16[49];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 24;
          goto LABEL_99;
        case 0x19u:
          v19 = v16[51];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 25;
          goto LABEL_99;
        case 0x1Au:
          v19 = v16[53];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 26;
          goto LABEL_99;
        case 0x1Bu:
          v19 = v16[55];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 27;
          goto LABEL_99;
        case 0x1Cu:
          v19 = v16[57];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 28;
          goto LABEL_99;
        case 0x1Du:
          v19 = v16[15];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 29;
          goto LABEL_99;
        case 0x1Eu:
          v19 = v16[59];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 30;
          goto LABEL_99;
        case 0x1Fu:
          v19 = v16[61];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 31;
          goto LABEL_99;
        case 0x20u:
          v19 = v16[63];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 32;
LABEL_99:
          v34 = v19(v20, v22, v21, v18, &v47);
          break;
        case 0x21u:
          v29 = v16[65];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 33;
LABEL_87:
          v34 = v29(v30, v32, v31, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
LABEL_89:
          if (v35 == 4)
          {
            *(v15 + 23) = uarpHtonl(*(v15 + 23));
          }

          break;
        default:
LABEL_100:
          v34 = 26;
          break;
      }

      *(v15 + 11) = uarpHtonl(v34);
      *(v15 + 15) = uarpHtonl(v17);
      *(v15 + 19) = uarpHtonl(v47);
      v37 = v47 + 23;
      *(v15 + 2) = uarpHtons((v47 + 17));
      *(v14 + 18) = v37;
      return uarpTransmitBuffer2(a1, a2, v14);
    }

    return 9;
  }

  if (a6 < 4)
  {
    return 9;
  }

  if (a6 < 0xC)
  {
    return 8;
  }

  v23 = uarpNtohl(a5[1]);
  v24 = uarpNtohl(a5[2]);
  result = 8;
  if (v24 <= 0xFFFFFFF3 && v24 + 12 <= a6)
  {
    v25 = (a5 + 3);
    if (v24)
    {
      v26 = a5 + 3;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 40);
    switch(v23)
    {
      case 1:
        v28 = v27[2];
        if (v28)
        {
          goto LABEL_159;
        }

        return 1;
      case 2:
        v28 = v27[4];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 3:
        v28 = v27[6];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 4:
        v41 = v27[8];
        v38 = (v27 + 8);
        if (!v41)
        {
          return 1;
        }

        if (v24 == 8)
        {
          goto LABEL_149;
        }

        if (v24 != 4)
        {
          goto LABEL_158;
        }

        break;
      case 5:
        v39 = v27[10];
        v38 = (v27 + 10);
        v28 = v39;
        if (!v39)
        {
          return 1;
        }

        goto LABEL_156;
      case 6:
        v43 = v27[12];
        v38 = (v27 + 12);
        v28 = v43;
        if (!v43)
        {
          return 1;
        }

        goto LABEL_156;
      case 7:
        v44 = v27[14];
        v38 = (v27 + 14);
        v28 = v44;
        if (!v44)
        {
          return 1;
        }

        if (v24 != 8)
        {
          goto LABEL_159;
        }

LABEL_149:
        *v25 = uarpNtohll(*v25);
        goto LABEL_158;
      case 8:
        v42 = v27[18];
        v38 = (v27 + 18);
        v28 = v42;
        if (!v42)
        {
          return 1;
        }

        goto LABEL_156;
      case 9:
        v46 = v27[20];
        v38 = (v27 + 20);
        v28 = v46;
        if (v46)
        {
          goto LABEL_156;
        }

        return 1;
      case 10:
        v40 = v27[22];
        v38 = (v27 + 22);
        v28 = v40;
        if (!v40)
        {
          return 1;
        }

        goto LABEL_156;
      case 11:
        v45 = v27[24];
        v38 = (v27 + 24);
        v28 = v45;
        if (!v45)
        {
          return 1;
        }

LABEL_156:
        if (v24 == 4)
        {
          break;
        }

        goto LABEL_159;
      case 12:
        v28 = v27[26];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 13:
        v28 = v27[28];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 14:
        v28 = v27[30];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 15:
        v28 = v27[32];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 16:
        v28 = v27[34];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 34);
        break;
      case 17:
        v28 = v27[36];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 18:
        v28 = v27[38];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 19:
        v28 = v27[40];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 40);
        break;
      case 20:
        v28 = v27[42];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 42);
        break;
      case 21:
        v28 = v27[44];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 44);
        break;
      case 22:
        v28 = v27[46];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 46);
        break;
      case 23:
        v28 = v27[48];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 24:
        v28 = v27[50];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 25:
        v28 = v27[52];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 26:
        v28 = v27[54];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 27:
        v28 = v27[56];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 28:
        v28 = v27[58];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 29:
        v28 = v27[16];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 30:
        v28 = v27[60];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 31:
        v28 = v27[62];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 32:
        v28 = v27[64];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 33:
        v28 = v27[66];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 66);
        break;
      default:
        return 1;
    }

    *v25 = uarpNtohl(*v25);
LABEL_158:
    v28 = *v38;
LABEL_159:
    v28(*(a1 + 608), *(a2 + 40), v26, v24);
    return 0;
  }

  return result;
}

BOOL uarpApplePlatformMessageCheckExpectedResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6 < 0xB)
  {
    return 0;
  }

  if (*(a5 + 6) != *(a3 + 6) || *(a5 + 8) != *(a3 + 8))
  {
    return 0;
  }

  word_100049157 = 2492;
  byte_100049159 = 99;
  v10 = *(a5 + 6) == 2492 && *(a5 + 8) == 99;
  if (!v10 || uarpNtohs(*(a5 + 9)) != 33)
  {
    return 0;
  }

  v12 = uarpNtohs(*(a3 + 9));
  result = 0;
  if (a6 >= 0x17 && v12 == 32)
  {
    return *(a5 + 15) == *(a3 + 11);
  }

  return result;
}

uint64_t uarpApplePlatformMessageCheckValidToSend(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 1;
  }

  word_100049157 = 2492;
  byte_100049159 = 99;
  if (*(a3 + 6) != 2492 || *(a3 + 8) != 99)
  {
    return 1;
  }

  v11 = uarpNtohs(*(a3 + 9));
  result = 1;
  if (a4 >= 0xF && v11 == 32)
  {
    if (uarpNtohl(*(a3 + 11)) == 2 && (*(a2 + 48) < 2u || *(a2 + 24)))
    {
      v12 = *(v4 + 32);
      if (v12)
      {
LABEL_14:
        v12(*(a1 + 608), *(a2 + 40), 0, 0);
      }
    }

    else
    {
      if (uarpNtohl(*(a3 + 11)) != 1 || *(a2 + 48) >= 2u && !*(a2 + 24))
      {
        return 1;
      }

      v12 = *(v4 + 16);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t uarpApplePlatformMessageExceededRetries(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 40);
  if (v4)
  {
    word_100049157 = 2492;
    byte_100049159 = 99;
    if (*(a3 + 6) == 2492 && *(a3 + 8) == 99)
    {
      v9 = result;
      result = uarpHtons(*(a3 + 9));
      if (a4 >= 0xF && result == 32)
      {
        result = uarpHtonl(*(a3 + 11));
        if (result == 1)
        {
          v10 = v4[2];
          if (!v10)
          {
            return result;
          }
        }

        else
        {
          result = uarpHtonl(*(a3 + 11));
          if (result == 2)
          {
            v10 = v4[4];
            if (!v10)
            {
              return result;
            }
          }

          else
          {
            result = uarpHtonl(*(a3 + 11));
            if (result == 3)
            {
              v10 = v4[6];
              if (!v10)
              {
                return result;
              }
            }

            else
            {
              result = uarpHtonl(*(a3 + 11));
              if (result == 4)
              {
                v10 = v4[8];
                if (!v10)
                {
                  return result;
                }
              }

              else
              {
                result = uarpHtonl(*(a3 + 11));
                if (result == 5)
                {
                  v10 = v4[10];
                  if (!v10)
                  {
                    return result;
                  }
                }

                else
                {
                  result = uarpHtonl(*(a3 + 11));
                  if (result == 6)
                  {
                    v10 = v4[12];
                    if (!v10)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = uarpHtonl(*(a3 + 11));
                    if (result == 7)
                    {
                      v10 = v4[14];
                      if (!v10)
                      {
                        return result;
                      }
                    }

                    else
                    {
                      result = uarpHtonl(*(a3 + 11));
                      if (result == 29)
                      {
                        v10 = v4[16];
                        if (!v10)
                        {
                          return result;
                        }
                      }

                      else
                      {
                        result = uarpHtonl(*(a3 + 11));
                        if (result == 8)
                        {
                          v10 = v4[18];
                          if (!v10)
                          {
                            return result;
                          }
                        }

                        else
                        {
                          result = uarpHtonl(*(a3 + 11));
                          if (result == 9)
                          {
                            v10 = v4[20];
                            if (!v10)
                            {
                              return result;
                            }
                          }

                          else
                          {
                            result = uarpHtonl(*(a3 + 11));
                            if (result == 10)
                            {
                              v10 = v4[22];
                              if (!v10)
                              {
                                return result;
                              }
                            }

                            else
                            {
                              result = uarpHtonl(*(a3 + 11));
                              if (result == 11)
                              {
                                v10 = v4[24];
                                if (!v10)
                                {
                                  return result;
                                }
                              }

                              else
                              {
                                result = uarpHtonl(*(a3 + 11));
                                if (result == 12)
                                {
                                  v10 = v4[26];
                                  if (!v10)
                                  {
                                    return result;
                                  }
                                }

                                else
                                {
                                  result = uarpHtonl(*(a3 + 11));
                                  if (result == 13)
                                  {
                                    v10 = v4[28];
                                    if (!v10)
                                    {
                                      return result;
                                    }
                                  }

                                  else
                                  {
                                    result = uarpHtonl(*(a3 + 11));
                                    if (result == 14)
                                    {
                                      v10 = v4[30];
                                      if (!v10)
                                      {
                                        return result;
                                      }
                                    }

                                    else
                                    {
                                      result = uarpHtonl(*(a3 + 11));
                                      if (result == 15)
                                      {
                                        v10 = v4[32];
                                        if (!v10)
                                        {
                                          return result;
                                        }
                                      }

                                      else
                                      {
                                        result = uarpHtonl(*(a3 + 11));
                                        if (result == 16)
                                        {
                                          v10 = v4[34];
                                          if (!v10)
                                          {
                                            return result;
                                          }
                                        }

                                        else
                                        {
                                          result = uarpHtonl(*(a3 + 11));
                                          if (result == 17)
                                          {
                                            v10 = v4[36];
                                            if (!v10)
                                            {
                                              return result;
                                            }
                                          }

                                          else
                                          {
                                            result = uarpHtonl(*(a3 + 11));
                                            if (result == 18)
                                            {
                                              v10 = v4[38];
                                              if (!v10)
                                              {
                                                return result;
                                              }
                                            }

                                            else
                                            {
                                              result = uarpHtonl(*(a3 + 11));
                                              if (result == 19)
                                              {
                                                v10 = v4[40];
                                                if (!v10)
                                                {
                                                  return result;
                                                }
                                              }

                                              else
                                              {
                                                result = uarpHtonl(*(a3 + 11));
                                                if (result == 20)
                                                {
                                                  v10 = v4[42];
                                                  if (!v10)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                else
                                                {
                                                  result = uarpHtonl(*(a3 + 11));
                                                  if (result == 21)
                                                  {
                                                    v10 = v4[44];
                                                    if (!v10)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    result = uarpHtonl(*(a3 + 11));
                                                    if (result == 22)
                                                    {
                                                      v10 = v4[46];
                                                      if (!v10)
                                                      {
                                                        return result;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      result = uarpHtonl(*(a3 + 11));
                                                      if (result == 23)
                                                      {
                                                        v10 = v4[48];
                                                        if (!v10)
                                                        {
                                                          return result;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        result = uarpHtonl(*(a3 + 11));
                                                        if (result == 24)
                                                        {
                                                          v10 = v4[50];
                                                          if (!v10)
                                                          {
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          result = uarpHtonl(*(a3 + 11));
                                                          if (result == 30)
                                                          {
                                                            v10 = v4[60];
                                                            if (!v10)
                                                            {
                                                              return result;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            result = uarpHtonl(*(a3 + 11));
                                                            if (result == 31)
                                                            {
                                                              v10 = v4[62];
                                                              if (!v10)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              result = uarpHtonl(*(a3 + 11));
                                                              if (result == 32)
                                                              {
                                                                v10 = v4[64];
                                                                if (!v10)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                result = uarpHtonl(*(a3 + 11));
                                                                if (result != 33)
                                                                {
                                                                  return result;
                                                                }

                                                                v10 = v4[66];
                                                                if (!v10)
                                                                {
                                                                  return result;
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v11 = *(v9 + 608);
        v12 = *(a2 + 40);

        return v10(v11, v12, 0, 0);
      }
    }
  }

  return result;
}

uint64_t uarpCompressionHeaderEndianSwap(unsigned __int16 *a1, uint64_t a2)
{
  *a2 = uarpHtons(*a1);
  *(a2 + 2) = uarpHtonl(*(a1 + 1));
  *(a2 + 6) = uarpHtons(a1[3]);
  result = uarpHtons(a1[4]);
  *(a2 + 8) = result;
  return result;
}

char *uarpAssetTagChdr4cc()
{
  result = aChdr;
  aChdr[4] = 0;
  return result;
}

int *uarpAssetTagStructChdr()
{
  aChdr[4] = 0;
  result = &dword_10004915C;
  dword_10004915C = *aChdr;
  return result;
}

uint64_t uarpPayloadTagUnpack(uint64_t result, char *a2)
{
  v2 = result >> 8;
  v3 = WORD1(result);
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = 48;
  }

  if (!result)
  {
    LOBYTE(v2) = 48;
    LOBYTE(v3) = 48;
  }

  *a2 = v4;
  a2[1] = v2;
  if (result)
  {
    v5 = BYTE3(result);
  }

  else
  {
    v5 = 48;
  }

  a2[2] = v3;
  a2[3] = v5;
  return result;
}

_BYTE *uarpPayloadTagStructPack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

_BYTE *uarpPayloadTagStructUnpack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

uint64_t uarpVersionCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    return 2;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 > v4)
  {
    return 2;
  }

  if (v3 < v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 > v6)
  {
    return 2;
  }

  if (v5 < v6)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v9 = v7 >= v8;
  v10 = v7 == v8;
  v11 = v7 < v8;
  if (!v10 && v9)
  {
    return 2;
  }

  else
  {
    return v11;
  }
}

uint64_t uarpAssetCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 46) == *(a2 + 46) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50) && *(a1 + 51) == *(a2 + 51) && *(a1 + 68) == *(a2 + 68) && *(a1 + 448) == *(a2 + 448))
  {
    return uarpVersionCompare((a1 + 52), (a2 + 52));
  }

  else
  {
    return 3;
  }
}

uint64_t uarpVersionEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpNtohl(*a1);
  a2[1] = uarpNtohl(a1[1]);
  a2[2] = uarpNtohl(a1[2]);
  result = uarpNtohl(a1[3]);
  a2[3] = result;
  return result;
}

const char *uarpStatusCodeToString(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100040880)[a1];
  }
}

int *uarpAssetTagStructSuperBinary()
{
  result = &dword_100049160;
  dword_100049160 = 0;
  return result;
}

const char *uarpApplyFlagsToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100040A90)[a1 - 1];
  }
}

const char *uarpProcessingFlagsReasonToString(int a1)
{
  HIDWORD(v2) = a1 - 256;
  LODWORD(v2) = a1 - 256;
  v1 = v2 >> 8;
  if (v1 > 0xE)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100040AC0)[v1];
  }
}

const char *uarpProcessingStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100040B38)[(a1 - 1)];
  }
}

__int128 *uarpStageStatusToString(unsigned __int16 a1)
{
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      result = xmmword_100049164;
      strcpy(xmmword_100049164, "Upload Complete");
      return result;
    }

    if (a1 == 2)
    {
      v1 = "Upload Denied";
      goto LABEL_13;
    }

LABEL_12:
    v1 = "<unknown>";
    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v1 = "Asset Not Found";
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v1 = "Asset Corrupt";
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v1 = "Upload Abandoned";
LABEL_13:
  v3 = uarpProcessingFlagsReasonToString(a1 & 0xFF00);
  snprintf(xmmword_100049164, 0x100uLL, "%s (%s)", v1, v3);
  return xmmword_100049164;
}

const char *uarpEndpointRoleToString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100040BA8)[a1];
  }
}

const char *uarpLoggingCategoryToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100040B60)[a1];
  }
}

void *uarpProcessPayloadTLVInternal(void *result, uint64_t a2, uint64_t a3, signed int a4, size_t __size, unsigned int *a6)
{
  v10 = result;
  if (a4 != -858619624)
  {
    if (a4 == -858619625)
    {
      if (__size == 2)
      {
        v12 = uarpNtohs(*a6);
        *(a3 + 76) = v12;
        UARPLayer2HashInfo(v10, v12, (a3 + 88), (a3 + 104));
        v13 = *(a3 + 88);
        if (!v13 || !UARPLayer2RequestBuffer(v10, (a3 + 80), v13, 34952, 850) && *(a3 + 80))
        {
          v14 = *(a3 + 104);
          if (!v14 || !UARPLayer2RequestBuffer(v10, (a3 + 96), v14, 34952, 866) && *(a3 + 96))
          {
            v18 = *(a3 + 76);
            v19 = *(a3 + 80);

            return UARPLayer2HashInit(v10, v18, v19);
          }
        }

        *(a3 + 76) = 0;
      }

LABEL_11:

      return UARPLayer2AssetCorrupt(v10, a2);
    }

    if (*(a3 + 76))
    {
      v21 = uarpHtonl(a4);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v21, 4);
      v20 = uarpHtonl(__size);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v20, 4);
      result = UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), a6, __size);
    }

    if (a4 > -858619631)
    {
      if (a4 == -858619630)
      {
        if (__size == 2)
        {
          result = uarpNtohs(*a6);
          *(a3 + 56) = result;
          return result;
        }
      }

      else
      {
        if (a4 != -858619623)
        {
          return result;
        }

        if (__size == 4)
        {
          result = uarpNtohl(*a6);
          *(a3 + 128) = result;
          return result;
        }
      }
    }

    else if (a4 == -858619641)
    {
      *(a3 + 72) = __size;
      if (!UARPLayer2RequestBuffer(v10, (a3 + 64), __size, 34952, 966))
      {
        v17 = *(a3 + 64);
        if (v17)
        {
          return memcpy(v17, a6, *(a3 + 72));
        }
      }
    }

    else
    {
      if (a4 != -858619636)
      {
        return result;
      }

      if (__size == 4)
      {
        result = uarpNtohl(*a6);
        if (result)
        {
          *(a3 + 52) = 1;
          if (!*(a2 + 656))
          {
            result = UARPLayer2RequestBuffer(v10, (a2 + 656), *(a2 + 648), 34952, 942);
            if (*(a2 + 656))
            {
              *(a2 + 664) = *(a2 + 648);
              *(a2 + 668) = 0;
            }
          }

          return result;
        }
      }
    }

    return UARPLayer2AssetCorrupt(v10, a2);
  }

  *(a3 + 120) = __size;
  if (UARPLayer2RequestBuffer(result, (a3 + 112), __size, 34952, 887))
  {
    goto LABEL_11;
  }

  v15 = *(a3 + 112);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(a3 + 120);

  return memcpy(v15, a6, v16);
}

uint64_t uarpAssetSuperBinaryVersionForProtocolVersion(unsigned int a1)
{
  if (a1 < 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t uarpDownstreamEndpointGetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

void uarpPrintDataResponseDetails(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7)
{
  v12 = *(a1 + 448);
  if (v12)
  {
    v13 = *(a1 + 608);
    v14 = *(a1 + 616);
    if (v14 > 2)
    {
      v15 = "<unknown>";
    }

    else
    {
      v15 = (&off_100040BA8)[v14];
    }

    v18 = uarpStatusCodeToString(a4);
    v12(v13, 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v15, v18, a5, a6, a7);
  }

  else
  {
    v16 = *(a1 + 616);
    if (v16 > 2)
    {
      v17 = "<unknown>";
    }

    else
    {
      v17 = (&off_100040BA8)[v16];
    }

    v19 = uarpStatusCodeToString(a4);
    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v17, v19, a5, a6, a7);
  }

  v20 = *(a1 + 448);
  if (v20)
  {
    v21 = *(a1 + 616);
    if (v21 > 2)
    {
      v22 = "<unknown>";
    }

    else
    {
      v22 = (&off_100040BA8)[v21];
    }

    v20(*(a1 + 608), 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v22, *(a3 + 88), *(a3 + 92));
  }

  else
  {
    v23 = *(a1 + 616);
    if (v23 > 2)
    {
      v24 = "<unknown>";
    }

    else
    {
      v24 = (&off_100040BA8)[v23];
    }

    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v24, *(a3 + 88), *(a3 + 92));
  }
}

uint64_t uarpCopyDefaultInfoString(_DWORD *a1, uint64_t a2)
{
  if (a2 < 7)
  {
    return 0;
  }

  *(a1 + 3) = 1314344782;
  *a1 = 1313558101;
  return a2;
}

uint64_t uarpMessageAdjustedForEndpointID(unsigned __int16 *a1, unsigned int a2, _WORD *a3, void *a4, unsigned int *a5)
{
  result = 30;
  if (a2 >= 6 && a1 && a3 && a4 && a5)
  {
    v10 = a2;
    if (uarpNtohs(*a1) == 27)
    {
      v11 = v10 >= 8;
      v10 -= 8;
      if (!v11)
      {
        return 30;
      }

      *a3 = uarpNtohs(a1[3]);
      *a4 = a1 + 4;
    }

    else
    {
      *a3 = 0;
      *a4 = a1;
    }

    result = 0;
    *a5 = v10;
  }

  return result;
}

const char *uarpMessageTypeToString(__int16 a1)
{
  if ((a1 + 1) > 0x27u)
  {
    return "<unknown>";
  }

  else
  {
    return (&off_100040BC0)[(a1 + 1)];
  }
}

void *uarpAllocateTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = 0;
  v6 = UARPLayer2RequestBuffer(a1, &v12, 0x48uLL, 61166, 61);
  result = 0;
  if (!v6)
  {
    v8 = *a2 + *(a2 + 30) + 26;
    if (v8 <= a3)
    {
      v8 = a3;
    }

    v11 = v8;
    if (UARPLayer2RequestTransmitMsgBuffer(a1, a2, v12 + 1, &v11, 61166, 95))
    {
      UARPLayer2ReturnBuffer(a1, v12, 61166, 101);
      return 0;
    }

    else
    {
      v9 = v11;
      result = v12;
      *(v12 + 4) = v11;
      v10 = *(a2 + 30);
      result[3] = result[1] + v10;
      *(result + 8) = v9 - v10;
      *(result + 18) = 0;
    }
  }

  return result;
}

void *uarpAllocPrepareTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = *(a2 + 104);
  if (v10)
  {
    *(a2 + 104) = *v10;
    v11 = *(v10 + 8);
    if (v11 >= a4)
    {
      goto LABEL_6;
    }

    UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v10[1], 61166, 128);
    UARPLayer2ReturnBuffer(a1, v10, 61166, 133);
  }

  TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, a4);
  v10 = TransmitBuffer2;
  if (!TransmitBuffer2)
  {
    return v10;
  }

  v11 = *(TransmitBuffer2 + 8);
LABEL_6:
  *(v10 + 18) = a4;
  *(v10 + 40) = a5;
  if (a5)
  {
    v13 = *(a2 + 18) + 1;
  }

  else
  {
    v13 = 1;
  }

  *(v10 + 39) = v13;
  *(v10 + 32) = *(a2 + 16);
  bzero(v10[3], v11);
  v14 = uarpHtons(a3);
  v15 = v10[3];
  *v15 = v14;
  v15[1] = a4 - 6;
  v16 = uarpHtons((a4 - 6));
  v17 = v10[3];
  *(v17 + 2) = v16;
  *(v17 + 4) = 0;
  return v10;
}

uint64_t uarpAllocateTransmitBuffers(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 34))
  {
    v4 = 0;
    do
    {
      TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, 0);
      bzero(TransmitBuffer2[1], *(TransmitBuffer2 + 4));
      *(TransmitBuffer2 + 42) = 0;
      *(TransmitBuffer2 + 9) = 0;
      *(TransmitBuffer2 + 40) = 0;
      TransmitBuffer2[6] = 0;
      TransmitBuffer2[7] = 0;
      *(TransmitBuffer2 + 32) = 0;
      *TransmitBuffer2 = *(a2 + 104);
      *(a2 + 104) = TransmitBuffer2;
      ++v4;
    }

    while (v4 < *(a2 + 34));
  }

  return 0;
}

uint64_t uarpTransmitBuffer2(uint64_t a1, uint64_t a2, void *a3)
{
  UARPLayer2MonotonicClockTime(a1, a3 + 6);
  *a3 = 0;
  v6 = (a2 + 112);
  for (i = *(a2 + 112); i; i = *i)
  {
    v6 = i;
  }

  *v6 = a3;
  if (!*(a2 + 54))
  {
    uarpTransmitQueueService(a1, a2);
  }

  return 0;
}

uint64_t uarpTransmitQueueService(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 644) == 1)
  {
    return 0;
  }

  v20[11] = v2;
  v20[12] = v3;
  UARPLayer2WatchdogCancel(a1, a2);
  v20[0] = 0;
  v6 = UARPLayer2MonotonicClockTime(a1, v20);
  v7 = *(a2 + 112);
  if (!v7)
  {
    uarpTransmitQueueReclaimEntries(v6, a2);
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (*(v7 + 42) == 1)
    {
      goto LABEL_5;
    }

    v10 = v7[3];
    if (!v10)
    {
      v11 = *(a1 + 440);
      if (v11)
      {
        v6 = v11(*(a1 + 608), 6, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      else
      {
        uarpLogError(6u, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      goto LABEL_5;
    }

    v6 = uarpNtohs(*v10);
    if (v6 != 0xFFFF)
    {
      break;
    }

    v12 = v7[3];
    v13 = *(v7 + 18);
    v6 = UARPLayer2VendorSpecificCheckValidToSend(a1, a2);
    if (v6)
    {
      goto LABEL_17;
    }

LABEL_5:
    *(v7 + 38) = *(v7 + 39) + 1;
    v7[7] = v20[0];
LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  if (v6 == 3)
  {
    v6 = uarpNtohl(*(v7[3] + 6));
    if (v6 == 9 && *(a2 + 48) <= 2u)
    {
      v6 = UARPLayer2FriendlyNameResponse(a1, a2);
      goto LABEL_5;
    }
  }

LABEL_17:
  v14 = v20[0];
  if (v20[0] && v20[0] - v7[7] < ((8389 * (*(v7 + 32) >> 3)) >> 20))
  {
    goto LABEL_6;
  }

  v15 = *(v7 + 38);
  if (v15 >= *(v7 + 39))
  {
    goto LABEL_6;
  }

  *(v7 + 38) = v15 + 1;
  v7[7] = v14;
  *(v7[3] + 4) = uarpHtons(*(a2 + 62));
  ++*(a2 + 62);
  UARPLayer2SendMessage(a1, a2, v7[1], *(a2 + 30) + *(v7 + 18));
  v16 = v7[3];
  v17 = *(v7 + 18);
  v6 = UARPLayer2LogPacket(a1, a2);
  if (*(v7 + 40) == 1)
  {
    v9 = 1;
  }

  if (++v8 < *(a2 + 20) || !*(v7 + 40))
  {
    goto LABEL_6;
  }

LABEL_26:
  uarpTransmitQueueReclaimEntries(v6, a2);
  if (v8 >= 1 && v9 == 1)
  {
    v18 = *(a2 + 16);
    UARPLayer2WatchdogSet(a1, a2);
  }

  return 0;
}

void uarpTransmitQueueReclaimEntries(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 104);
    while (1)
    {
      v6 = *v3;
      *v3 = 0;
      if (!*(v3 + 40) && *(v3 + 38) >= *(v3 + 39))
      {
        break;
      }

      if (v4)
      {
        v7 = v4;
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        goto LABEL_11;
      }

      v4 = v3;
LABEL_12:
      v3 = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    bzero(v3[1], *(v3 + 4));
    *(v3 + 42) = 0;
    *(v3 + 9) = 0;
    *(v3 + 40) = 0;
    v3[6] = 0;
    v3[7] = 0;
    *(v3 + 32) = 0;
    *v3 = *v5;
    v8 = (a2 + 104);
LABEL_11:
    *v8 = v3;
    goto LABEL_12;
  }

  v4 = 0;
LABEL_15:
  *(a2 + 112) = v4;
}

void uarpTransmitQueuesCleanup(uint64_t a1, uint64_t a2)
{
  UARPLayer2WatchdogCancel(a1, a2);
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  if (v4)
  {
    do
    {
      v5 = *v4;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v4[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v4, 61166, 133);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v6)
  {
    do
    {
      v7 = *v6;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v6[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v6, 61166, 133);
      v6 = v7;
    }

    while (v7);
  }
}

void uarpTransmitQueueAssetRescinded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    while (v3)
    {
      if (uarpNtohs(*v3[3]) == 6)
      {
        v5 = uarpNtohs(*(v3[3] + 6));
        if (!a3 || v5 == *(a3 + 44))
        {
          *(v3 + 42) = 1;
          v3 = *v3;
        }
      }
    }
  }
}

void uarpTransmitQueuePurge(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v2)
  {
    do
    {
      v4 = *v2;
      bzero(v2[1], *(v2 + 4));
      *(v2 + 42) = 0;
      *(v2 + 9) = 0;
      *(v2 + 40) = 0;
      v2[6] = 0;
      v2[7] = 0;
      *(v2 + 32) = 0;
      *v2 = *(a2 + 104);
      *(a2 + 104) = v2;
      v2 = v4;
    }

    while (v4);
  }
}

uint64_t uarpPlatformDarwinDecompressBuffer(int a1, const uint8_t *__src, size_t src_size, uint8_t *__dst, size_t __n)
{
  result = 50;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = COMPRESSION_LZBITMAP;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v7 = COMPRESSION_LZ4;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v7 = 1538;
LABEL_11:
    if (compression_decode_buffer(__dst, __n, __src, src_size, 0, v7) == __n)
    {
      return 0;
    }

    else
    {
      return 51;
    }
  }

  if (src_size != __n)
  {
    return 51;
  }

  memcpy(__dst, __src, __n);
  return 0;
}

uint64_t uarpPlatformDarwinHashInfo(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = result - 1;
  if ((result - 1) > 2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *&aH[4 * v3];
    v5 = 16 * v3 + 32;
  }

  *a2 = v4;
  *a3 = v5;
  return result;
}

uint64_t uarpPlatformDarwinHashInit(uint64_t result, CC_SHA512_CTX *c)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Init(c);
    case 2:
      return CC_SHA384_Init(c);
    case 1:
      return CC_SHA256_Init(c);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashUpdate(uint64_t result, CC_SHA512_CTX *c, void *data, CC_LONG len)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Update(c, data, len);
    case 2:
      return CC_SHA384_Update(c, data, len);
    case 1:
      return CC_SHA256_Update(c, data, len);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashFinal(uint64_t result, CC_SHA512_CTX *a2, unsigned __int8 *md, int a4)
{
  if (result == 2)
  {
    if (a4 == 48)
    {
      return CC_SHA384_Final(md, a2);
    }
  }

  else if (result == 1)
  {
    if (a4 == 32)
    {
      return CC_SHA256_Final(md, a2);
    }
  }

  else if (result == 3 && a4 == 64)
  {
    return CC_SHA512_Final(md, a2);
  }

  return result;
}

void uarpLogError(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_100049268, 0x200uLL, __format, va);
  v3 = sub_10001EA28(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100028140(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void *sub_10001EA28(unsigned int a1)
{
  for (i = 0; i != 9; ++i)
  {
    v3 = uarpLoggingCategoryToString(i);
    qword_10004A268[i] = os_log_create("com.apple.uarp.embedded", v3);
  }

  if (a1 <= 8)
  {
    return qword_10004A268[a1];
  }

  else
  {
    return &_os_log_default;
  }
}

void uarpLogDebug(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_100049468, 0x200uLL, __format, va);
  v3 = sub_10001EA28(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000281B8(v3);
  }
}

void uarpLogInfo(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_100049668, 0x200uLL, __format, va);
  v3 = sub_10001EA28(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = byte_100049668;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }
}

void uarpLogFault(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(byte_100049868, 0x200uLL, __format, va);
  v3 = sub_10001EA28(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002823C(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void uarpPlatformDarwinLogError(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_100049A68, 0x200uLL, a3, &a9);
  v10 = sub_10001EA28(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000282B4(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void uarpPlatformDarwinLogInfo(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_100049C68, 0x200uLL, a3, &a9);
  v10 = sub_10001EA28(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = byte_100049C68;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }
}

void uarpPlatformDarwinLogDebug(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_100049E68, 0x200uLL, a3, &a9);
  v10 = sub_10001EA28(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10002832C(v10);
  }
}

void uarpPlatformDarwinLogFault(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(byte_10004A068, 0x200uLL, a3, &a9);
  v10 = sub_10001EA28(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_1000283B0(v10);
  }
}

uint64_t UARPSuperBinarySetupHeader(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, int a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  result = 30;
  if (a3 >= 2)
  {
    if (v9)
    {
      v16 = 0x2C00000002;
      v18 = *a4;
      v20 = 0x2C00000000;
      v21 = 40 * a5;
      v19 = 40 * a5 + 44;
      v17 = v19;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v16, 44, 0);
      if (!result)
      {
        if (a5)
        {
          v11 = 44;
          while (1)
          {
            v15 = 0;
            v14 = 0u;
            v13 = 0u;
            v12 = 40;
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v12, 40, v11);
            if (result)
            {
              break;
            }

            v11 = (v11 + 40);
            if (!--a5)
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddMetaData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  v16 = 0;
  LOWORD(__dst[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &v16, 4, 0, __dst);
  v12 = result;
  if (LOWORD(__dst[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(__dst[0]) != 4)
  {
    return result;
  }

  if (v16 < 2)
  {
    return 30;
  }

  memset(__dst, 0, 44);
  v18 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, __dst, 44, 0, &v18);
  if (!result)
  {
    if (v18 == 44)
    {
      v14 = HIDWORD(__dst[1]);
      v15 = __dst[2];
      v17[0] = uarpHtonl(a3);
      v17[1] = uarpHtonl(a4);
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 8, (v15 + v14));
      if (!result)
      {
        LODWORD(__dst[2]) += 8;
        DWORD2(__dst[0]) += 8;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a5, a4, (HIDWORD(__dst[1]) + LODWORD(__dst[2])));
        if (!result)
        {
          LODWORD(__dst[2]) += a4;
          DWORD2(__dst[0]) += a4;
          return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, __dst, 44, 0);
        }
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPreparePayload(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, _OWORD *a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v16[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v16);
  v12 = result;
  if (LOWORD(v16[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v16[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v19 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v16, 44, 0, &v19);
  if (!result)
  {
    if (v19 != 44)
    {
      return 11;
    }

    v14 = (DWORD1(v16[2]) + 40 * a3);
    result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 40, v14, &v19);
    if (!result)
    {
      if (v19 == 40)
      {
        DWORD1(v17[0]) = uarpTagStructPack32(a4);
        *(v17 + 8) = *a5;
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 40, v14);
      }

      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v11)
  {
    return 30;
  }

  v12 = v11;
  __dst = 0;
  LOWORD(v21[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v11, &__dst, 4, 0, v21);
  v14 = result;
  if (LOWORD(v21[0]) == 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v15;
  }

  if (v14 || LOWORD(v21[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, v21, 44, 0, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 44)
  {
    return 11;
  }

  v16 = (DWORD1(v21[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, &v22, 40, v16, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 40)
  {
    return 11;
  }

  v17 = DWORD2(v23);
  if (!DWORD2(v23))
  {
    v17 = DWORD2(v21[0]);
    DWORD2(v23) = DWORD2(v21[0]);
  }

  v18 = HIDWORD(v23);
  v20[0] = uarpHtonl(a4);
  v20[1] = uarpHtonl(a5);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v20, 8, (v18 + v17));
  if (!result)
  {
    HIDWORD(v23) += 8;
    DWORD2(v21[0]) += 8;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, a6, a5, (DWORD2(v23) + HIDWORD(v23)));
    if (!result)
    {
      HIDWORD(v23) += a5;
      DWORD2(v21[0]) += a5;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, &v22, 40, v16);
      if (!result)
      {
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v21, 44, 0);
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadDataLarge(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v10 = 0;
  while (a5)
  {
    if (a5 >= 0xFFFF)
    {
      v11 = 0xFFFF;
    }

    else
    {
      v11 = a5;
    }

    result = UARPSuperBinaryAddPayloadData(a1, a2, a3, a4 + v10, v11);
    v10 += v11;
    a5 -= v11;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t UARPSuperBinaryAddPayloadData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (HIWORD(a5))
  {
    return 39;
  }

  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v17[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v17);
  v12 = result;
  if (LOWORD(v17[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v17[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v20 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 44, 0, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 44)
  {
    return 11;
  }

  v14 = (DWORD1(v17[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v18, 40, v14, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 40)
  {
    return 11;
  }

  v15 = v19;
  if (!v19)
  {
    v15 = DWORD2(v17[0]);
    LODWORD(v19) = DWORD2(v17[0]);
  }

  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a4, a5, (HIDWORD(v19) + v15));
  if (!result)
  {
    HIDWORD(v19) += a5;
    DWORD2(v17[0]) += a5;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v18, 40, v14);
    if (!result)
    {
      return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 44, 0);
    }
  }

  return result;
}