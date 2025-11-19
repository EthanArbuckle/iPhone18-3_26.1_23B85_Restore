void sub_1000023DC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 112) asset];

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 != 0, [*(*(a1 + 32) + 112) assetDownloaded] ^ 1, 0, v5);
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

intptr_t sub_100002644(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    (*(result + 16))(result, 0, a2);
    v4 = *(a1 + 32);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

void sub_100004260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Block_object_dispose((v31 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000042A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000042B8(void *a1, char a2, char a3, int a4, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_100004590(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = @"NOT successful";
  }

  else
  {
    v6 = @"successful";
  }

  [*(*(a1 + 32) + 8) log:7 format:{@"%s - success = %u", "-[USBCAccessoryFirmwareUpdater prepareFirmwareWithOptions:]_block_invoke", v5 == 0}];
  v7 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"Hardware Device Class"];
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10 = [*(v8 + 16) DeviceSerialNumber];
  [v9 log:6 format:{@"%@ %@ firmware prepare was %@", v7, v10, v6}];

  if (v5 || ([*(*(a1 + 32) + 16) updaterOperational] & 1) == 0)
  {
    [*(*(a1 + 32) + 8) log:7 format:{@"%s - returned error: %@", "-[USBCAccessoryFirmwareUpdater prepareFirmwareWithOptions:]_block_invoke", v5}];
    [*(a1 + 32) attemptErrorRecovery:v5 delegate:*(*(a1 + 32) + 8)];
  }

  [*(*(a1 + 32) + 8) didPrepare:v5 == 0 info:v11 error:v5];
}

void sub_10000481C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = @"FAILED to apply";
  }

  else
  {
    v6 = @"successfully updated";
  }

  [*(*(a1 + 32) + 8) log:7 format:{@"%s - success = %u", "-[USBCAccessoryFirmwareUpdater applyFirmwareWithOptions:]_block_invoke", v5 == 0}];
  v7 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"Hardware Device Class"];
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10 = [*(v8 + 16) DeviceSerialNumber];
  [v9 log:6 format:{@"%@ %@ firmware %@", v7, v10, v6}];

  if (v5 || ([*(*(a1 + 32) + 16) updaterOperational] & 1) == 0)
  {
    [*(*(a1 + 32) + 8) log:7 format:{@"%s - returned error: %@", "-[USBCAccessoryFirmwareUpdater applyFirmwareWithOptions:]_block_invoke", v5}];
    [*(a1 + 32) attemptErrorRecovery:v5 delegate:*(*(a1 + 32) + 8)];
  }

  [*(*(a1 + 32) + 8) didApply:v5 == 0 info:v11 error:v5];
}

void sub_100004AA8(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = @"FAILED to finish";
  }

  else
  {
    v6 = @"finished successfully";
  }

  [*(*(a1 + 32) + 8) log:7 format:{@"%s - success = %u", "-[USBCAccessoryFirmwareUpdater finishWithOptions:]_block_invoke", v5 == 0}];
  v7 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"Hardware Device Class"];
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10 = [*(v8 + 16) DeviceSerialNumber];
  [v9 log:1 format:{@"%@ %@ firmware %@", v7, v10, v6}];

  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  v13 = [*(v11 + 16) DeviceSerialNumber];
  v14 = [v15 description];
  [v12 log:1 format:{@"%@ %@ **** returned dict: %@", v7, v13, v14}];

  if (v5 || ([*(*(a1 + 32) + 16) updaterOperational] & 1) == 0)
  {
    [*(*(a1 + 32) + 8) log:7 format:{@"%s - returned error: %@", "-[USBCAccessoryFirmwareUpdater finishWithOptions:]_block_invoke", v5}];
    [*(a1 + 32) attemptErrorRecovery:v5 delegate:*(*(a1 + 32) + 8)];
  }

  [*(*(a1 + 32) + 8) didFinish:v5 == 0 info:v15 error:v5];
}

uint64_t sub_100008250()
{
  result = *(v0 + 856);
  v3 = *v1;
  return result;
}

void sub_100008270(uint64_t a1, uint64_t a2)
{
  NSLog(@"Got the download meta data reply: %ld", a2);
  v4 = *(a1 + 32);
  v5 = v4[2];
  if (a2)
  {
    v8 = [v5 results];
    [v4 queryComplete:v8 remote:*(a1 + 48) status:a2 completion:*(a1 + 40)];
  }

  else
  {
    [v5 returnTypes:0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000838C;
    v9[3] = &unk_100024518;
    v9[4] = v6;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v7 queryMetaData:v9];
  }
}

void sub_10000838C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4[2] results];
  [v4 queryComplete:v5 remote:*(a1 + 48) status:a2 completion:*(a1 + 40)];
}

void sub_100008400(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4[2] results];
  [v4 queryComplete:v5 remote:*(a1 + 48) status:a2 completion:*(a1 + 40)];
}

void sub_10000B954()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 191);
  v3 = *(v0 - 190);
  v4 = *(v0 - 189);
}

id sub_10000B97C()
{
  v5 = *(v2 + v0);

  return [v5 attemptErrorRecovery:v3 lastAttempt:v1 == 1];
}

void sub_10000B9F0()
{
  v3 = *(v0 - 186);
  v4 = *(v0 - 185);
  v1 = *(v0 - 188);
  v2 = *(v0 - 187);
}

id sub_10000BA18()
{
  v4 = *(v1 + v0);

  return [v4 didFailErrorRecovery:v2];
}

id sub_10000BA3C()
{

  return [v1 getBytes:v3 - 192 range:{v2, v0}];
}

id sub_10000BABC()
{
  v5 = *(v2 + v1);

  return [v5 attemptErrorRecovery:v3 lastAttempt:v0 == 0];
}

id sub_10000BADC()
{

  return [v0 log:7 format:?];
}

void sub_10000BF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BFAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BFC4(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(*(a1 + 32) + 112) asset];
  *(*(*(a1 + 64) + 8) + 24) = v3 != 0;

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v4 = [*(*(a1 + 32) + 112) assetDownloaded] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *(*(*(a1 + 72) + 8) + 24) = v4;
  v5 = [*(a1 + 32) getAccessoryFWStagedInfoForSerialNum:*(a1 + 40)];
  if (v5)
  {
    if (*(a1 + 40))
    {
      v6 = [*(*(a1 + 32) + 112) fwVersion];

      if (v6)
      {
        v7 = [v5 objectForKey:@"StagedFW"];
        v8 = *(*(a1 + 80) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v10 = *(*(*(a1 + 80) + 8) + 40);
        if (v10)
        {
          v11 = [*(*(a1 + 32) + 112) fwVersion];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            [*(*(a1 + 32) + 40) log:7 format:{@"Accessory already has the same version staged, update not required"}];
            *(*(*(a1 + 64) + 8) + 24) = 0;
            *(*(*(a1 + 72) + 8) + 24) = 0;
          }
        }
      }
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 72) + 8) + 24), 0, v14);
    dispatch_semaphore_signal(*(a1 + 48));
  }
}

intptr_t sub_10000C358(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    (*(result + 16))(result, 0, a2);
    v4 = *(a1 + 32);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

id sub_10000FB20()
{

  return [v0 log:1 format:?];
}

uLong crc32(uLong crc, const Bytef *buf, uInt len)
{
  if (!buf)
  {
    return 0;
  }

  v3 = -1;
  do
  {
    v4 = *crc++;
    v5 = dword_1000208E8[(v3 ^ v4) & 0xF] ^ (v3 >> 4);
    v3 = dword_1000208E8[v5 & 0xF ^ (v4 >> 4)] ^ (v5 >> 4);
    --buf;
  }

  while (buf);
  return ~v3;
}

id readACEReg(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v7 = 0;
  result = [a1 registerRead:a4 ofLength:a3 atAddress:a2 andOutReadLength:&v7];
  *a5 = v7;
  return result;
}

uint64_t sub_1000111E8(uint64_t *a1)
{
  result = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:1536 userInfo:0];
  *a1 = result;
  return result;
}

void sub_100011AF8(void *a1, uint64_t *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:a1 forKeyedSubscript:@"Previous Error Response"];
  *a2 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:14081 userInfo:v4];
}

uint64_t sub_100012020(uint64_t *a1)
{
  sub_100008A50();
  result = [v2 errorWithDomain:? code:? userInfo:?];
  *a1 = result;
  return result;
}

uint64_t sub_100012064(uint64_t *a1)
{
  result = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:2816 userInfo:0];
  *a1 = result;
  return result;
}

uint64_t sub_1000120AC(uint64_t a1, uint64_t *a2)
{
  result = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:a1 << 8 userInfo:0];
  *a2 = result;
  return result;
}

void sub_10001331C(void *a1, uint64_t *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:a1 forKeyedSubscript:@"Previous Error Response"];
  *a2 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:7936 userInfo:v4];
}

void sub_10001339C(uint64_t *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"Not in alternate mode" forKeyedSubscript:@"Notes"];
  *a1 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9472 userInfo:v2];
}

void sub_10001343C(uint64_t *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"Failed to get valid active partition data from qApp" forKeyedSubscript:@"Notes"];
  *a1 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12289 userInfo:v2];
}

void sub_1000134B0(uint64_t *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"Failed to get valid active partition data from qApp" forKeyedSubscript:@"Notes"];
  *a1 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:12033 userInfo:v2];
}

uint64_t sub_100013574(uint64_t *a1)
{
  result = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:6912 userInfo:0];
  *a1 = result;
  return result;
}

void sub_100014C3C(void *a1, uint64_t *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:a1 forKeyedSubscript:@"Previous Error Response"];
  *a2 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:9472 userInfo:v4];
}

uint64_t sub_1000153A4(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = [v3 objectForKey:@"FirmwareVersionMajor"];
  v6 = v5;
  if (!v5)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v7 = [v5 unsignedLongLongValue];
  v8 = [v4 objectForKey:@"FirmwareVersionMinor"];

  if (!v8)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_11;
  }

  v9 = [v8 unsignedLongLongValue];
  v6 = [v4 objectForKey:@"FirmwareVersionRelease"];

  if (!v6)
  {
    goto LABEL_11;
  }

  v10 = [v6 unsignedLongLongValue];
  v11 = *(a1 + 32);
  [*(v11 + 40) log:7 format:{@"Applying Predicate:((majorVersion > %llu) || ((majorVersion == %llu) && ((minorVersion > %llu) || ((minorVersion == %llu) && (releaseVersion > %llu)))))", *(v11 + 120), *(v11 + 120), *(v11 + 124), *(v11 + 124), *(v11 + 128)}];
  v12 = *(a1 + 32);
  v13 = v12[30];
  if (v7 <= v13)
  {
    if (v7 != v13)
    {
      goto LABEL_11;
    }

    v15 = v12[31];
    if (v9 <= v15 && (v9 != v15 || v10 <= v12[32]))
    {
      goto LABEL_11;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}