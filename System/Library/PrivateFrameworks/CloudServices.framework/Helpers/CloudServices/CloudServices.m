void sub_100002650(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10000265CLL);
}

void sub_1000029AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000029CC()
{
  if (qword_100084A48 != -1)
  {
    sub_100048170();
  }

  return byte_100084A40;
}

id sub_100002A24()
{
  if (qword_100084A58 != -1)
  {
    sub_100048184();
  }

  v1 = qword_100084A50;

  return v1;
}

void sub_100002A68(id a1)
{
  memset(uu, 0, sizeof(uu));
  *in = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 37;
  v1 = sysctlbyname("kern.bootsessionuuid", in, &v8, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100048198(v2, v3);
    }

LABEL_7:

    goto LABEL_8;
  }

  v4 = uuid_parse(in, uu);
  if (v4)
  {
    v5 = v4;
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100048224(in, v5, v3);
    }

    goto LABEL_7;
  }

LABEL_8:
  v6 = [[NSUUID alloc] initWithUUIDBytes:uu];
  v7 = qword_100084A50;
  qword_100084A50 = v6;
}

id sub_100002B84()
{
  v0 = +[NSUbiquitousKeyValueStore defaultStore];
  v1 = [v0 stringForKey:@"BackupUUID"];

  return v1;
}

void sub_100002BE0(void *a1)
{
  v1 = a1;
  v2 = +[NSUbiquitousKeyValueStore defaultStore];
  [v2 setString:v1 forKey:@"BackupUUID"];
}

BOOL sub_100002C4C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = SecItemUpdate(v5, v6);
  if (v7 == -25300)
  {
    v8 = [(__CFDictionary *)v5 mutableCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
    v10 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [(__CFDictionary *)v9 objectForKeyedSubscript:v14, v17];
          [v8 setObject:v15 forKeyedSubscript:v14];
        }

        v11 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v7 = SecItemAdd(v8, 0);
  }

  if (a3 && v7)
  {
    *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:0];
  }

  return v7 == 0;
}

void sub_1000033E0(uint64_t a1)
{
  v2 = [*(a1 + 32) event];
  [v2 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];
}

void sub_1000034F0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
        v9 = [*(a1 + 40) event];
        [v9 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100003774(id a1)
{
  container_query_create();
  container_query_set_class();
  v1 = xpc_string_create("com.apple.sbd");
  container_query_set_identifiers();

  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  if (container_query_get_single_result())
  {
    v2 = [NSURL fileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
    v3 = qword_100084A60;
    qword_100084A60 = v2;

    v4 = container_copy_sandbox_token();
    if (v4)
    {
      v5 = v4;
      v6 = sandbox_extension_consume();
      free(v5);
      if (v6 < 0)
      {
        v7 = CloudServicesLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10004835C();
        }
      }
    }
  }

  else
  {
    container_query_get_last_error();
    v8 = container_error_copy_unlocalized_description();
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000483E4(v8, v9);
    }

    free(v8);
  }

  container_query_free();
}

void sub_100004CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004D00(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100004E08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[6] addObject:*(a1 + 32)];
}

void sub_100004F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[6] removeObject:*(a1 + 32)];
}

uint64_t sub_1000050D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000050EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    if (!v4)
    {
      if (*(v3 + 24) == 1)
      {
        v5 = [v3[5] readStoredLog];
        v4 = v5;
        if ((!v5 || [v5 allActivitiesComplete]) && !*(a1 + 32))
        {
          v6 = CloudServicesLog();
          if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 40);
            *buf = 138412290;
            v30 = objc_opt_class();
            _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "%@: No previous logs to process and no event to handle", buf, 0xCu);
          }

LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    v20 = a1;
    v6 = [[SBEscrowOperationLoggerUpdate alloc] initWithLog:v4 event:*(a1 + 32) context:*(a1 + 48)];
    v8 = [(SBEscrowOperationLoggerUpdate *)v6 updatedLog];
    v9 = v3[4];
    v3[4] = v8;

    v10 = v3[5];
    v11 = [(SBEscrowOperationLoggerUpdate *)v6 updatedLog];
    [v10 storeLog:v11];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v3[6];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = v3[2];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000053D0;
          block[3] = &unk_100074FD8;
          block[4] = v17;
          block[5] = v3;
          v23 = v6;
          dispatch_async(v18, block);
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v19 = v3[2];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000053E0;
    v21[3] = &unk_100075000;
    v21[4] = *(v20 + 56);
    dispatch_async(v19, v21);
    goto LABEL_18;
  }

LABEL_19:
}

void sub_1000053E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

uint64_t sub_1000058B4(uint64_t result, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (a3 < a3 + a4)
  {
    v4 = 2 * a3;
    do
    {
      v5 = *a2++;
      *(*(result + 32) + v4) = a0123456789abcd[v5 >> 4];
      *(*(result + 32) + v4 + 1) = a0123456789abcd[v5 & 0xF];
      v4 += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

void sub_100005B64(uint64_t a1)
{
  v2 = SOSPeerInfoGetPeerID();
  if (v2)
  {
    v9 = v2;
    v3 = SOSPeerInfoCopyBackupKey();
    v4 = *(a1 + 32);
    v5 = [NSString alloc];
    v6 = [v3 sha1Digest];
    v7 = [v6 hexString];
    v8 = [v5 initWithFormat:@"%@ (%@)", v9, v7];
    [v4 addObject:v8];

    v2 = v9;
  }
}

void sub_100005D50(uint64_t a1)
{
  v2 = SOSPeerInfoGetPeerID();
  if (v2)
  {
    v6 = v2;
    v3 = SOSPeerInfoCopyBackupKey();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 sha1Digest];
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }

    v2 = v6;
  }
}

void sub_100005E90(uint64_t a1)
{
  v2 = SOSPeerInfoCopyBackupKey();
  if (v2)
  {
    v4 = v2;
    v3 = [v2 sha1Digest];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }

    v2 = v4;
  }
}

void sub_100006078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000060A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000060B8(uint64_t a1)
{
  v2 = SOSPeerInfoCopyBackupKey();
  v3 = [v2 sha1Digest];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    v5 = SOSPeerInfoGetPeerID();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = CloudServicesLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(*(a1 + 40) + 8) + 40);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "found peer %@", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100048730();
    }
  }
}

void sub_100007EDC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v9 hexString];
  v12[0] = @"class";
  v12[1] = @"hash";
  v13[0] = v8;
  v13[1] = v9;
  v12[2] = @"data";
  v13[2] = v7;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v10];
}

void sub_100008110(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObject:v6];
}

void sub_100009068(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const char *sub_100009094()
{

  return sqlite3_errmsg(v0);
}

uint64_t sub_10000A8F4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___StoredCertificate__iCloudEnvironment;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___StoredCertificate__escrowBaseURL;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = &OBJC_IVAR___StoredCertificate__dsid;
            goto LABEL_28;
          case 4:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___StoredCertificate__escrowCertificate;
            goto LABEL_28;
          case 5:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___StoredCertificate__duplicateEscrowCertificate;
LABEL_28:
            v16 = *v15;
            v17 = *(a1 + v16);
            *(a1 + v16) = v14;

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000CD10(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [[EscrowAccountInfoResponse alloc] initFromResponseFilterPCS:v6];
    (*(*(a1 + 32) + 16))();
  }
}

id sub_10000DD7C(void *a1)
{
  memset(v7, 170, 20);
  v1 = a1;
  BytePtr = CFDataGetBytePtr(v1);
  v3 = [(__CFData *)v1 length:*v7];

  CC_SHA1(BytePtr, v3, v7);
  v4 = [[NSData alloc] initWithBytesNoCopy:v7 length:20 freeWhenDone:0];
  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

void sub_10000EDCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000EDF4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

id _CloudServicesSignpostLogSystem()
{
  if (qword_100084A78 != -1)
  {
    sub_100049D84();
  }

  v1 = qword_100084A70;

  return v1;
}

void sub_10000EE58(id a1)
{
  qword_100084A70 = os_log_create("com.apple.sbd", "signpost");

  _objc_release_x1();
}

os_signpost_id_t _CloudServicesSignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

double _CloudServicesSignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (qword_100084A88 != -1)
  {
    sub_100049D98();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = dword_100084A80;
  LODWORD(v5) = *algn_100084A84;
  return v4 / v5 * (v3 - a2);
}

BOOL sub_10000EF38()
{
  v0 = objc_autoreleasePoolPush();
  if (sub_100042C00())
  {
    v1 = sub_10000EF8C();
    v2 = v1 != 0;
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

id sub_10000EF8C()
{
  if (&kAAProtocoliCloudAccountKey)
  {
    v0 = +[ACAccountStore defaultStore];
    v1 = [v0 aa_primaryAppleAccount];
  }

  else
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AppleAccount.framework is not available; client must specify all parameters", v4, 2u);
    }

    v1 = 0;
    v0 = 0;
  }

  return v1;
}

id sub_10000F044()
{
  v0 = objc_autoreleasePoolPush();
  v1 = CloudServicesLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "getting dsid", &v6, 2u);
  }

  v2 = sub_10000EF8C();
  if ([v2 aa_isPrimaryEmailVerified])
  {
    v3 = [v2 aa_personID];
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "got dsid: %@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100049DAC(v4);
    }

    v3 = 0;
  }

  objc_autoreleasePoolPop(v0);

  return v3;
}

id sub_10000F1A8()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_10000EF8C();
  v2 = [v1 aa_altDSID];

  objc_autoreleasePoolPop(v0);

  return v2;
}

id sub_10000F20C()
{
  v0 = objc_autoreleasePoolPush();
  v1 = CloudServicesLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "getting iCloud env", buf, 2u);
  }

  v2 = sub_10000EF8C();
  if ([v2 aa_isPrimaryEmailVerified])
  {
    v3 = [v2 dataclassProperties];
    v4 = [v3 objectForKeyedSubscript:kAAProtocoliCloudAccountKey];
    v5 = [v4 objectForKeyedSubscript:@"iCloudEnv"];

    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "got iCloud env", v8, 2u);
    }
  }

  else
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100049DAC(v6);
    }

    v5 = 0;
  }

  objc_autoreleasePoolPop(v0);

  return v5;
}

void sub_100010150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"class"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v7 = [v4 objectForKeyedSubscript:@"data"];
  if (v7)
  {
    [v6 addObject:v7];
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100049DF0();
    }
  }
}

void sub_1000109B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000109EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010A04(uint64_t a1)
{
  v2 = [*(a1 + 32) kvs];
  v3 = *(a1 + 32);
  v15 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010B7C;
  v13[3] = &unk_1000751F8;
  v13[4] = v3;
  v12 = *(a1 + 40);
  v4 = v12;
  v14 = v12;
  v5 = [v3 backupWithRegisteredBackupsWithError:&v15 handler:v13];
  v6 = v15;
  [v2 removeObjectForKey:@"com.apple.icdp.backup"];
  if ((v5 & 1) == 0)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100049F3C();
    }

    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
    v9 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_100010B7C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) _pushCachedKeychainToKVSForView:v7 recordID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v3);
}

void sub_100010FA8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) allViews];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = [v10 kvs];
        v12 = [v10 _getICDPBackupFromKVS:v11 forView:v8];

        if (v12)
        {
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          [v2 addObject:v8];
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v2 componentsJoinedByString:@" "];
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "views with no backup: %@", buf, 0xCu);
    }
  }
}

void sub_1000127C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000127E4(uint64_t a1)
{
  v2 = [*(a1 + 32) copyMyPeerID];
  v3 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v4 = [v3 _consumeFullBackupForRecordID:v2];
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) _pushCachedKeychainToKVS];
  }

  else
  {
    v5 = [v3 _consumeBackupJournal];
  }

  v4 = v5;
LABEL_6:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "backup complete", v10, 2u);
  }
}

void sub_100012A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012A74(uint64_t a1)
{
  v2 = [*(a1 + 32) copyMyPeerID];
  v3 = *(a1 + 32);
  v22 = 0;
  v4 = [v3 backupWithRegisteredBackupViewWithError:@"iCloudIdentity-tomb" error:&v22];
  v5 = v22;
  v6 = CloudServicesLog();
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = @"iCloudIdentity-tomb";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: registered view: %@", buf, 0xCu);
    }

    v10 = [*(a1 + 32) _consumeViewBackup:@"iCloudIdentity-tomb" recordID:v2];
    v11 = CloudServicesLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10004A0A4();
      }

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: Pushing iCloudIdentity view to KVS!", buf, 2u);
      }

      v14 = [*(a1 + 32) _pushCachedKeychainToKVSForView:@"iCloudIdentity-tomb" recordID:v2];
      v15 = CloudServicesLog();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10004A124();
        }

        v17 = *(*(a1 + 40) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: successfully pushed iCloudIdentity to KVS", buf, 2u);
        }

        v19 = CloudServicesLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = @"YES";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: backup succeeded? %@", buf, 0xCu);
        }

        v20 = *(*(a1 + 40) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = 0;

        v18 = CloudServicesLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = @"iCloudIdentity-tomb";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: backup for %@ complete", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004A024();
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void sub_100013754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000137E4(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 3)
    {
      v10 = "unknown";
    }

    else
    {
      v10 = off_1000759F0[a2];
    }

    *buf = 136315138;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_consumeViewBackup: got backup manifest event: %s", buf, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  *(*(a1[6] + 8) + 24) = 0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        *(*(a1[6] + 8) + 24) = 1;
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    ++*(*(a1[11] + 8) + 24);
    v28 = *(*(a1[8] + 8) + 40);
    if (!v28)
    {
      v29 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
      v30 = *(a1[8] + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      v28 = *(*(a1[8] + 8) + 40);
    }

    v32 = *(a1[9] + 8);
    v33 = *(v32 + 40);
    v17 = (v32 + 40);
    obj = v33;
    v19 = [v28 removeItemWithKey:v7 error:&obj];
    v20 = obj;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        ++*(*(a1[10] + 8) + 24);
        v12 = *(*(a1[8] + 8) + 40);
        if (!v12)
        {
          v13 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
          v14 = *(a1[8] + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          v12 = *(*(a1[8] + 8) + 40);
        }

        v16 = *(a1[9] + 8);
        v18 = *(v16 + 40);
        v17 = (v16 + 40);
        v39 = v18;
        v19 = [v12 addItem:v8 error:&v39];
        v20 = v39;
        goto LABEL_24;
      }

LABEL_15:
      v21 = CloudServicesLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10004A194();
      }

LABEL_25:
      v34 = CloudServicesLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (a2 > 3)
        {
          v35 = "unknown";
        }

        else
        {
          v35 = off_1000759F0[a2];
        }

        *buf = 136315138;
        v42 = v35;
        v37 = "_consumeViewBackup: event %s successful!";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    ++*(*(a1[7] + 8) + 24);
    v22 = *(*(a1[8] + 8) + 40);
    if (!v22)
    {
      v23 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
      v24 = *(a1[8] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v22 = *(*(a1[8] + 8) + 40);
    }

    v26 = *(a1[9] + 8);
    v27 = *(v26 + 40);
    v17 = (v26 + 40);
    v40 = v27;
    v19 = [v22 resetWithKeybag:v7 error:&v40];
    v20 = v40;
  }

LABEL_24:
  objc_storeStrong(v17, v20);
  if (v19)
  {
    goto LABEL_25;
  }

  v34 = CloudServicesLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = off_1000759F0[a2];
    *buf = 136315138;
    v42 = v36;
    v37 = "_consumeViewBackup: event %s unsuccessful";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
  }

LABEL_33:

  objc_autoreleasePoolPop(v11);
}

void sub_100013E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013E84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = v3;
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1 + 32) _consumeViewBackup:v8 recordID:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_autoreleasePoolPop(v4);
    v3 = v8;
  }
}

void sub_1000141FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001423C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 48);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "consuming backup for view %@", &buf, 0xCu);
    }

    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 1;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x2020000000;
    v67 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v79 = 0x3032000000;
    v80 = sub_1000109EC;
    v81 = sub_1000109FC;
    v82 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v7 = *(a1 + 32);
    v53 = 0;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10001499C;
    v43[3] = &unk_1000752E8;
    v46 = v68;
    v47 = v66;
    v48 = &v62;
    p_buf = &buf;
    v8 = v3;
    v44 = v8;
    v45 = *(a1 + 40);
    v50 = *(a1 + 48);
    v51 = &v58;
    v52 = &v54;
    v9 = [v7 backupWithChanges:v8 error:&v53 handler:v43];
    v10 = v53;
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "false";
      if (v9)
      {
        v12 = "true";
      }

      v13 = *(v63 + 6);
      v14 = *(v59 + 6);
      v15 = *(v55 + 6);
      *v70 = 136315906;
      v71 = v12;
      v72 = 1024;
      v73 = v13;
      v74 = 1024;
      v75 = v14;
      v76 = 1024;
      v77 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecItemBackupWithChanges() returned %s (%d reset, %d add, %d remove)", v70, 0x1Eu);
    }

    v16 = *(*(&buf + 1) + 40);
    if (v16)
    {
      v17 = [v16 manifestHash];
      v18 = [*(*(&buf + 1) + 40) keybagDigest];
      [*(*(&buf + 1) + 40) closeStore];
      v19 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = 0;

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
      if (v9)
      {
LABEL_10:
        if (*(*(*v4 + 8) + 40))
        {
          v20 = CloudServicesLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10004A360(v8, v4);
          }

          v21 = +[CloudServicesAnalytics logger];
          [v21 logUnrecoverableError:*(*(*v4 + 8) + 40) forEvent:CloudServicesAnalyticsBackupWithChangesIncremental withAttributes:0];

          v22 = objc_alloc_init(NSMutableDictionary);
          [v22 setObject:*(*(*v4 + 8) + 40) forKeyedSubscript:NSUnderlyingErrorKey];
          v23 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
          v24 = *(*v4 + 8);
          v25 = *(v24 + 40);
          *(v24 + 40) = v23;
        }

        else
        {
          v28 = +[CloudServicesAnalytics logger];
          [v28 logSuccessForEvent:CloudServicesAnalyticsBackupWithChangesIncremental];

          if (!v18 || !v17)
          {
            goto LABEL_29;
          }

          v29 = *(a1 + 32);
          v30 = *(*(a1 + 48) + 8);
          obj = *(v30 + 40);
          v31 = [v29 backupSetConfirmedManifest:v8 digest:v18 manifest:v17 error:&obj];
          objc_storeStrong((v30 + 40), obj);
          if (v31)
          {
            v22 = +[CloudServicesAnalytics logger];
            [v22 logSuccessForEvent:CloudServicesAnalyticsSetConfirmedManifest];
          }

          else
          {
            v37 = +[CloudServicesAnalytics logger];
            [v37 logUnrecoverableError:*(*(*v4 + 8) + 40) forEvent:CloudServicesAnalyticsSetConfirmedManifest withAttributes:0];

            v38 = CloudServicesLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_10004A3DC(v8, v4);
            }

            v22 = objc_alloc_init(NSMutableDictionary);
            [v22 setObject:*(*(*v4 + 8) + 40) forKeyedSubscript:NSUnderlyingErrorKey];
            v39 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
            v40 = *(*v4 + 8);
            v41 = *(v40 + 40);
            *(v40 + 40) = v39;
          }
        }

LABEL_28:

LABEL_29:
        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);
        _Block_object_dispose(&v62, 8);
        _Block_object_dispose(&buf, 8);

        _Block_object_dispose(v66, 8);
        _Block_object_dispose(v68, 8);

        objc_autoreleasePoolPop(v5);
        goto LABEL_30;
      }
    }

    if (v10)
    {
      v26 = [v10 domain];
      if ([v26 isEqualToString:NSPOSIXErrorDomain])
      {
        v27 = [v10 code] == 2;

        if (v27)
        {
          v22 = CloudServicesLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10004A274();
          }

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    v32 = +[CloudServicesAnalytics logger];
    [v32 logUnrecoverableError:v10 forEvent:CloudServicesAnalyticsBackupWithChangesIncremental withAttributes:0];

    v33 = CloudServicesLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10004A2E4();
    }

    v22 = objc_alloc_init(NSMutableDictionary);
    [v22 setObject:v10 forKeyedSubscript:NSUnderlyingErrorKey];
    v34 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
    v35 = *(*v4 + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    goto LABEL_28;
  }

LABEL_30:
}

void sub_100014920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10001499C(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v9 = objc_autoreleasePoolPush();
    *(*(a1[7] + 8) + 24) = 0;
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        ++*(*(a1[13] + 8) + 24);
        v27 = *(*(a1[9] + 8) + 40);
        if (!v27)
        {
          v28 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
          v29 = *(a1[9] + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          v27 = *(*(a1[9] + 8) + 40);
        }

        v31 = *(a1[10] + 8);
        v32 = *(v31 + 40);
        v15 = (v31 + 40);
        v33 = v32;
        v17 = [v27 removeItemWithKey:v7 error:&v33];
        v18 = v33;
        goto LABEL_21;
      }

      if (a2 != 3)
      {
LABEL_11:
        v20 = CloudServicesLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10004A458();
        }

        goto LABEL_22;
      }

      v19 = a1[7];
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          ++*(*(a1[12] + 8) + 24);
          v10 = *(*(a1[9] + 8) + 40);
          if (!v10)
          {
            v11 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
            v12 = *(a1[9] + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;

            v10 = *(*(a1[9] + 8) + 40);
          }

          v14 = *(a1[10] + 8);
          v16 = *(v14 + 40);
          v15 = (v14 + 40);
          v34 = v16;
          v17 = [v10 addItem:v8 error:&v34];
          v18 = v34;
LABEL_21:
          objc_storeStrong(v15, v18);
          *(*(a1[6] + 8) + 24) = v17;
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      ++*(*(a1[8] + 8) + 24);
      v21 = *(*(a1[9] + 8) + 40);
      if (!v21)
      {
        v22 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
        v23 = *(a1[9] + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v21 = *(*(a1[9] + 8) + 40);
      }

      v25 = *(a1[10] + 8);
      obj = *(v25 + 40);
      v26 = [v21 resetWithKeybag:v7 error:&obj];
      objc_storeStrong((v25 + 40), obj);
      *(*(a1[6] + 8) + 24) = v26;
      v19 = a1[11];
    }

    *(*(v19 + 8) + 24) = 1;
LABEL_22:
    objc_autoreleasePoolPop(v9);
  }
}

id sub_100015330(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    return [*(a1 + 32) _stateCapture];
  }

  else
  {
    return 0;
  }
}

void sub_10001545C(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
    if (string)
    {
      v4 = string;
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = [NSString stringWithUTF8String:v4];
      [v6 handleNotification:v7];

      objc_autoreleasePoolPop(v5);
    }
  }
}

void sub_100015784(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v8 = [v5 objectForKeyedSubscript:kSecureBackupTimestampKey];

  [v6 setObject:v8 forKeyedSubscript:@"timestamp"];
  v9 = [v7 objectForKeyedSubscript:@"recordID"];
  [v6 setObject:v9 forKeyedSubscript:@"creator"];

  v10 = [v7 objectForKeyedSubscript:@"keybag"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 peersAndBackupKeyDigests];
    [v6 setObject:v12 forKeyedSubscript:@"peerIDs"];

    v13 = [v11 recoveryKey];
    v14 = [v13 sha1Digest];
    [v6 setObject:v14 forKeyedSubscript:@"rk"];

    v15 = v16;
  }

  else
  {
    v15 = [[NSString alloc] initWithFormat:@"%@ (direct keybag)", v16];
    v13 = v16;
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v15];
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:@"backups"];
  }
}

void sub_1000163F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016410(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "in dispatch_after()", v5, 2u);
  }

  [*(a1 + 32) notificationOccurred:*(a1 + 40)];
  [*(a1 + 32) setPendingNotification:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100016748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Backup returned %@", &v5, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100017464(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: in daemon came back", buf, 2u);
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  if (v6)
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v229 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "escrowService getAccountInfoWithRequest: returned %@", buf, 0xCu);
    }

    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 code];
      *buf = 134217984;
      v229 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: error: %ld", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_193;
  }

  v12 = [v5 objectForKeyedSubscript:@"EscrowServiceAccountInfo"];
  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 count];
    *buf = 134217984;
    v229 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "got %lu records", buf, 0xCu);
  }

  v15 = objc_alloc_init(NSMutableArray);
  v189 = objc_alloc_init(NSMutableDictionary);
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v16 = v12;
  v184 = a1;
  v185 = v8;
  v183 = v16;
  v195 = [v16 countByEnumeratingWithState:&v222 objects:v240 count:16];
  v147 = v5;
  if (!v195)
  {
    v151 = 0;
    v17 = 0;
    v77 = 0;
    v78 = v16;
LABEL_99:

    goto LABEL_101;
  }

  v161 = v15;
  v186 = 0;
  v17 = 0;
  v151 = 0;
  v193 = *v223;
  v192 = kEscrowServiceRecordLabelKey;
  v194 = kEscrowServiceRecordMetadataKey;
  v198 = kSecureBackupKeybagSHA256Key;
  v197 = kSecureBackupKeybagDigestKey;
  v196 = kSecureBackupTimestampKey;
  v191 = kEscrowServiceRecordStatusKey;
  v190 = kEscrowServiceStingrayLabel;
  v182 = kEscrowServiceGuitarfishLabel;
  v160 = kEscrowServiceGuitarfishTokenLabel;
  v178 = kSecureBackupFederationKey;
  v177 = kSecureBackupExpectedFederationKey;
  v176 = kSecureBackupRemainingAttemptsKey;
  v148 = kSecureBackupGuitarfishRecoveryTokenMetadataKey;
  v166 = kSecureBackupEscrowDateKey;
  v159 = kSecureBackupRecordLabelKey;
  v158 = kSecureBackupSerialNumberKey;
  v157 = kSecureBackupBuildVersionKey;
  v149 = kSecureBackupPeerInfoDataKey;
  v156 = kSecureBackupBottleIDKey;
  v155 = kSecureBackupPeerInfoSerialNumberKey;
  v154 = kSecureBackupPeerInfoOSVersionKey;
  v169 = kSecureBackupRecordStatusValid;
  v168 = kSecureBackupRecordStatusKey;
  v167 = kSecureBackupRecordStatusInvalid;
  v165 = kSecureBackupEscrowTimestampKey;
  v164 = kSecureBackupEscrowDigestKey;
  v163 = kSecureBackupMetadataKey;
  v181 = kEscrowServiceRecordStatusValid;
  v170 = kSecureBackupContainsiCloudIdentityKey;
  v174 = kSecureBackupTriggerUpdateKey;
  v173 = kSecureBackupStingrayMetadataKey;
  v172 = kSecureBackupBackOffDateKey;
  v171 = kSecureBackupEncodedMetadataKey;
  v175 = kSecureBackupStingrayMetadataHashKey;
  v153 = kSecureBackupRecordIDKey;
  do
  {
    v18 = 0;
    do
    {
      if (*v223 != v193)
      {
        objc_enumerationMutation(v16);
      }

      v19 = *(*(&v222 + 1) + 8 * v18);
      v20 = [v19 objectForKeyedSubscript:v192];
      v21 = [v19 objectForKeyedSubscript:v194];

      v201 = [v21 objectForKeyedSubscript:v198];
      v207 = [v21 objectForKeyedSubscript:v197];
      v202 = [v21 objectForKeyedSubscript:v196];
      v205 = [CSDateUtilities secureBackupDateFromString:?];
      v22 = [v19 objectForKeyedSubscript:v191];
      v23 = v190;
      if ([*(a1 + 32) guitarfish])
      {
        v24 = v182;
        v25 = v23;
        v23 = v24;
      }

      v203 = v20;
      v200 = v22;
      v199 = v23;
      if ([v20 isEqualToString:v23])
      {
        if ([v22 isEqualToString:v181])
        {
          [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:v170];
        }

        if (v21)
        {
          v26 = [v21 mutableCopy];
          v27 = [v19 objectForKeyedSubscript:v174];
          [v26 setObject:v27 forKeyedSubscript:v174];

          v28 = [v19 objectForKeyedSubscript:@"federationID"];
          [v26 setObject:v28 forKeyedSubscript:v178];

          v29 = [v19 objectForKeyedSubscript:@"expectedFederationID"];
          [v26 setObject:v29 forKeyedSubscript:v177];

          v30 = [v19 objectForKeyedSubscript:v176];
          [v26 setObject:v30 forKeyedSubscript:v176];

          [v8 setObject:v26 forKeyedSubscript:v173];
          v31 = [v21 objectForKeyedSubscript:v172];
          [v8 setObject:v31 forKeyedSubscript:v172];
          v32 = objc_alloc_init(NSMutableDictionary);
          v33 = [v19 objectForKeyedSubscript:@"encodedMetadata"];
          [v32 setObject:v33 forKeyedSubscript:v171];

          [v32 setObject:v202 forKeyedSubscript:v196];
          [v32 setObject:v201 forKeyedSubscript:v198];
          [v32 setObject:v207 forKeyedSubscript:v197];
          [v32 setObject:v31 forKeyedSubscript:v172];
          [v8 setObject:v32 forKeyedSubscript:v175];

          goto LABEL_23;
        }

LABEL_63:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v17 = 0;
        goto LABEL_64;
      }

      if ([v20 isEqualToString:@"com.apple.protectedcloudstorage.record.double"])
      {
        v37 = [v19 objectForKeyedSubscript:@"encodedMetadata"];

        v34 = 0;
        v35 = 0;
        v36 = 0;
        v186 = v37;
        goto LABEL_26;
      }

      if (![v20 isEqualToString:@"com.apple.securebackup.record"])
      {
        if ([v20 hasPrefix:@"com.apple.icdp.record.double"])
        {
          v26 = CloudServicesLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v229 = v20;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "ignoring old double enrollment record: %@", buf, 0xCu);
          }

          goto LABEL_23;
        }

        if ([v20 hasPrefix:@"com.apple.icdp.record"] && objc_msgSend(v20, "hasSuffix:", @".double"))
        {
          v26 = [*(a1 + 40) _recordIDFromLabel:v20 withPrefix:@"com.apple.icdp.record" suffix:@".double"];
          v42 = [v19 objectForKeyedSubscript:@"encodedMetadata"];
          v43 = v42;
          if (v26 && v42)
          {
            [v189 setObject:v42 forKeyedSubscript:v26];
          }

          goto LABEL_23;
        }

        if ([v20 hasPrefix:@"com.apple.icdp.record"])
        {
          v44 = [v19 mutableCopy];
          [v44 setObject:v205 forKeyedSubscript:v166];
          v45 = [*(a1 + 40) _recordIDFromLabel:v20 withPrefix:@"com.apple.icdp.record" suffix:0];
          [v44 setObject:v45 forKeyedSubscript:v153];

          v179 = v44;
          [v44 setObject:@"com.apple.icdp.record" forKeyedSubscript:v159];
          v36 = [v21 objectForKeyedSubscript:v158];
          v46 = [v21 objectForKeyedSubscript:v157];
          v35 = v46;
          if (!v36 || !v46)
          {
            v47 = [v21 objectForKeyedSubscript:v149];
            if (v47)
            {
              v48 = *(a1 + 40);
              v221 = v151;
              v49 = [v48 createPeerInfoFromData:v47 error:&v221];
              v150 = v221;

              v152 = v49;
              if (v49)
              {
                if (!v36)
                {
                  v36 = [*(a1 + 40) copySerialNumber:v49];
                }

                v50 = v150;
                if (!v35)
                {
                  v35 = [*(a1 + 40) copyOSVersion:v152];
                }
              }

              else
              {
                v74 = CloudServicesLog();
                v50 = v150;
                if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v229 = v150;
                  _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "could not create peer info from data: %@", buf, 0xCu);
                }
              }

              v151 = v50;
            }
          }

          v75 = [v179 objectForKeyedSubscript:v194];
          v34 = [v75 objectForKeyedSubscript:v156];

          [v179 setObject:v36 forKeyedSubscript:v155];
          [v179 setObject:v35 forKeyedSubscript:v154];
          [v161 addObject:v179];

          goto LABEL_26;
        }

        if (![v20 isEqualToString:v160])
        {
          v26 = CloudServicesLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v229 = v20;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "unexpected label: %@", buf, 0xCu);
          }

LABEL_23:

          v34 = 0;
          v35 = 0;
          v36 = 0;
LABEL_26:
          v17 = v21;
          goto LABEL_64;
        }

        if (v21)
        {
          v26 = [v21 mutableCopy];
          v51 = [v19 objectForKeyedSubscript:@"federationID"];
          [v26 setObject:v51 forKeyedSubscript:v178];

          v52 = [v19 objectForKeyedSubscript:@"expectedFederationID"];
          [v26 setObject:v52 forKeyedSubscript:v177];

          v53 = [v19 objectForKeyedSubscript:v176];
          [v26 setObject:v53 forKeyedSubscript:v176];

          [v8 setObject:v26 forKeyedSubscript:v148];
          goto LABEL_23;
        }

        goto LABEL_63;
      }

      if ([v22 isEqualToString:@"invalid"])
      {
        v38 = v167;
      }

      else
      {
        v38 = v169;
      }

      [v8 setObject:v38 forKeyedSubscript:v168];
      if (!v21)
      {
        goto LABEL_63;
      }

      if (v202)
      {
        v39 = v202;
      }

      else
      {
        v39 = @"UNKNOWN";
      }

      [v8 setObject:v39 forKeyedSubscript:v165];
      if (v207)
      {
        v40 = v207;
      }

      else
      {
        v40 = @"UNKNOWN";
      }

      [v8 setObject:v40 forKeyedSubscript:v164];
      v17 = [*(a1 + 40) massageIncomingMetadataFromInfo:v21];

      if (v17)
      {
        v41 = v17;
      }

      else
      {
        v41 = &__NSDictionary0__struct;
      }

      [v8 setObject:v41 forKeyedSubscript:v163];
      [v8 setObject:v205 forKeyedSubscript:v166];
      v34 = 0;
      v35 = 0;
      v36 = 0;
LABEL_64:
      v54 = sub_1000029CC();
      v55 = CloudServicesLog();
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      if (v54)
      {
        if (!v56)
        {
          goto LABEL_85;
        }

        if (v36)
        {
          v57 = v36;
        }

        else
        {
          v57 = &stru_1000767A0;
        }

        v180 = v57;
        v58 = [(__CFString *)v207 hexString];
        if (v34)
        {
          v59 = v34;
        }

        else
        {
          v59 = @"(no bottle ID)";
        }

        v60 = v18;
        v61 = v36;
        v62 = v17;
        if (v35)
        {
          v63 = v35;
        }

        else
        {
          v63 = &stru_1000767A0;
        }

        v64 = [CSDateUtilities localStringFromDate:v205];
        *buf = 138413570;
        v229 = v203;
        v230 = 2112;
        v231 = v180;
        v232 = 2112;
        v233 = v58;
        v234 = 2112;
        v235 = v59;
        v236 = 2112;
        v237 = v63;
        v17 = v62;
        v36 = v61;
        v18 = v60;
        v8 = v185;
        v238 = 2112;
        v239 = v64;
        v65 = v55;
        v66 = "%@ %@ %@ %@ %@ %@";
        v67 = 62;
      }

      else
      {
        if (!v56)
        {
          goto LABEL_85;
        }

        v58 = [(__CFString *)v207 hexString];
        v68 = v35;
        v69 = v18;
        v70 = v36;
        v71 = v17;
        if (v34)
        {
          v72 = v34;
        }

        else
        {
          v72 = @"(no bottle ID)";
        }

        if (v68)
        {
          v73 = v68;
        }

        else
        {
          v73 = &stru_1000767A0;
        }

        v64 = [CSDateUtilities localStringFromDate:v205];
        *buf = 138413314;
        v229 = v203;
        v230 = 2112;
        v231 = v58;
        v232 = 2112;
        v233 = v72;
        v17 = v71;
        v36 = v70;
        v18 = v69;
        v35 = v68;
        v8 = v185;
        v234 = 2112;
        v235 = v73;
        v236 = 2112;
        v237 = v64;
        v65 = v55;
        v66 = "%@ %@ %@ %@ %@";
        v67 = 52;
      }

      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, v66, buf, v67);

      v16 = v183;
      a1 = v184;
LABEL_85:

      v18 = v18 + 1;
    }

    while (v195 != v18);
    v76 = [v16 countByEnumeratingWithState:&v222 objects:v240 count:16];
    v195 = v76;
  }

  while (v76);

  v77 = v186;
  if (v186)
  {
    v78 = [v8 objectForKeyedSubscript:v175];
    [v78 setObject:v186 forKeyedSubscript:@"duplicateEncodedMetadata"];
    v5 = v147;
    v15 = v161;
    goto LABEL_99;
  }

  v5 = v147;
  v15 = v161;
LABEL_101:
  v208 = v17;
  if ([v189 count])
  {
    v187 = v77;
    v79 = [v189 allKeys];
    [v8 setObject:v79 forKeyedSubscript:kSecureBackupiCDPDoubleEnrollmentRecordIDsKey];

    v219 = 0u;
    v220 = 0u;
    v218 = 0u;
    v217 = 0u;
    v80 = v15;
    v81 = v15;
    v82 = [v81 countByEnumeratingWithState:&v217 objects:v227 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v218;
      v85 = kSecureBackupRecordIDKey;
      do
      {
        for (i = 0; i != v83; i = i + 1)
        {
          if (*v218 != v84)
          {
            objc_enumerationMutation(v81);
          }

          v87 = *(*(&v217 + 1) + 8 * i);
          v88 = [v87 objectForKeyedSubscript:v85];
          v89 = [v189 objectForKeyedSubscript:v88];
          [v87 setObject:v89 forKeyedSubscript:@"duplicateEncodedMetadata"];
        }

        v83 = [v81 countByEnumeratingWithState:&v217 objects:v227 count:16];
      }

      while (v83);
    }

    v5 = v147;
    v8 = v185;
    v77 = v187;
    v15 = v80;
    v16 = v183;
  }

  if ([v15 count])
  {
    v90 = v184;
    if (([*(v184 + 32) excludeiCDPRecords] & 1) == 0)
    {
      [v8 setObject:v15 forKeyedSubscript:kSecureBackupAlliCDPRecordsKey];
      if (_os_feature_enabled_impl())
      {
        v91 = [*(v184 + 32) sosCompatibleEscrowSorting];
      }

      else
      {
        v91 = 0;
      }

      if ([*(v184 + 32) stingray] & 1) != 0 || ((objc_msgSend(*(v184 + 32), "suppressServerFiltering") | v91))
      {
        v92 = CloudServicesLog();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Skipping cuttlefish bottle sorting", buf, 2u);
        }
      }

      else
      {
        v92 = [*(v184 + 40) sortRecordsByBottleID:v15];
        v93 = [v92 mutableCopy];

        v15 = v93;
      }

      v94 = kSecureBackupiCDPRecordsKey;
      [v8 setObject:v15 forKeyedSubscript:kSecureBackupiCDPRecordsKey];
      if (OctagonPlatformSupportsSOS())
      {
        v95 = [*(v184 + 40) filteriCDPRecords:v15];
        if ([v95 count])
        {
          [v8 setObject:v95 forKeyedSubscript:v94];
        }

        else
        {
          v96 = CloudServicesLog();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "filteriCDPRecords returned 0 SOS viable records.", buf, 2u);
          }

          if (_os_feature_enabled_impl() && [*(v184 + 32) sosCompatibleEscrowSorting])
          {
            v206 = v95;
            v188 = v77;
            v162 = v15;
            v97 = CloudServicesLog();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "since this is an SOS driven escrow record fetch, remove Octagon only escrow records before returning the entire list", buf, 2u);
            }

            v98 = +[NSMutableArray array];
            v204 = v94;
            [v8 objectForKeyedSubscript:v94];
            v213 = 0u;
            v214 = 0u;
            v215 = 0u;
            v99 = v216 = 0u;
            v100 = [v99 countByEnumeratingWithState:&v213 objects:v226 count:16];
            if (v100)
            {
              v101 = v100;
              v102 = *v214;
              v103 = kEscrowServiceRecordMetadataKey;
              v104 = kSecureBackupPeerInfoDataKey;
              do
              {
                for (j = 0; j != v101; j = j + 1)
                {
                  if (*v214 != v102)
                  {
                    objc_enumerationMutation(v99);
                  }

                  v106 = *(*(&v213 + 1) + 8 * j);
                  v107 = [v106 objectForKeyedSubscript:v103];
                  v108 = [v107 objectForKeyedSubscript:v104];

                  if (v108)
                  {
                    [v98 addObject:v106];
                  }
                }

                v101 = [v99 countByEnumeratingWithState:&v213 objects:v226 count:16];
              }

              while (v101);
            }

            v109 = CloudServicesLog();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v229 = v98;
              _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "filtered out Octagon only records. new set of SOS records: %@", buf, 0xCu);
            }

            v8 = v185;
            [v185 setObject:v98 forKeyedSubscript:v204];

            v5 = v147;
            v16 = v183;
            v90 = v184;
            v15 = v162;
            v77 = v188;
            v95 = v206;
          }

          else
          {
            v110 = CloudServicesLog();
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "returning the entire list of iCDP records", buf, 2u);
            }
          }
        }
      }
    }
  }

  else
  {
    v90 = v184;
  }

  if ((OctagonPlatformSupportsSOS() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    if ([v15 count])
    {
      v138 = &__kCFBooleanTrue;
    }

    else
    {
      v138 = &__kCFBooleanFalse;
    }

    [v8 setObject:v138 forKeyedSubscript:kSecureBackupIsEnabledKey];
    v136 = kSecureBackupUsesRecoveryKeyKey;
    v137 = v8;
LABEL_177:
    [v137 setObject:&__kCFBooleanFalse forKeyedSubscript:v136];
    (*(*(v90 + 56) + 16))();
    goto LABEL_192;
  }

  v111 = [*(v90 + 40) _backupEnabled];
  v112 = CloudServicesLog();
  v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT);
  if (!v111)
  {
    if (v113)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "backup not enabled", buf, 2u);
    }

    v136 = kSecureBackupIsEnabledKey;
    v137 = v8;
    goto LABEL_177;
  }

  if (v113)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "backup enabled", buf, 2u);
  }

  v114 = kSecureBackupIsEnabledKey;
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupIsEnabledKey];
  v115 = *(v90 + 40);
  v116 = [v115 kvs];
  v117 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v115 hasRecoveryKeyInKVS:v116 error:0]);
  [v8 setObject:v117 forKeyedSubscript:kSecureBackupUsesRecoveryKeyKey];

  v118 = [*(v90 + 40) _getLastBackupTimestamp];
  if (v118)
  {
    v119 = [CSDateUtilities secureBackupDateFromString:v118];
    if (v119)
    {
      [v8 setObject:v119 forKeyedSubscript:kSecureBackupLastBackupDateKey];
    }

    [v8 setObject:v118 forKeyedSubscript:kSecureBackupLastBackupTimestampKey];
  }

  if (![*(v90 + 40) _usesEscrow])
  {
LABEL_158:
    v124 = CloudServicesLog();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "account does not use escrow", buf, 2u);
    }

    v125 = CloudServicesLog();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      v126 = [*(v90 + 40) _usesEscrow];
      *buf = 67109120;
      LODWORD(v229) = v126;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "account useEscrow: %d", buf, 8u);
    }

    v127 = CloudServicesLog();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v128 = [v185 objectForKeyedSubscript:kSecureBackupRecordStatusKey];
      *buf = 138412290;
      v229 = v128;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "account SecureBackup status: %@", buf, 0xCu);
    }

    v129 = CloudServicesLog();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      v130 = [v15 count];
      *buf = 67109120;
      LODWORD(v229) = v130;
      _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "account iCDP records: %d", buf, 8u);
    }

    if (v118)
    {
      v8 = v185;
      [v185 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesRandomPassphraseKey];
      v131 = [*(v90 + 40) _metadata];
      v132 = v131;
      if (v131 && (v133 = kSecureBackupClientMetadataKey, [v131 objectForKeyedSubscript:kSecureBackupClientMetadataKey], v134 = objc_claimAutoreleasedReturnValue(), v134, v134))
      {
        v135 = [v132 objectForKeyedSubscript:v133];
        [v185 setObject:v135 forKeyedSubscript:kSecureBackupMetadataKey];
      }

      else
      {
        [v185 setObject:&__NSDictionary0__struct forKeyedSubscript:kSecureBackupMetadataKey];
      }
    }

    else
    {
      v139 = CloudServicesLog();
      v8 = v185;
      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
      {
        sub_10004A8D0();
      }

      [v185 setObject:&__kCFBooleanFalse forKeyedSubscript:v114];
    }

LABEL_190:
    (*(*(v90 + 56) + 16))();
    goto LABEL_191;
  }

  v120 = kSecureBackupRecordStatusKey;
  v121 = [v185 objectForKeyedSubscript:kSecureBackupRecordStatusKey];
  v122 = v121;
  if (v121 == kSecureBackupRecordStatusValid)
  {
  }

  else
  {
    v123 = [v15 count];

    if (!v123)
    {
      goto LABEL_158;
    }
  }

  v140 = CloudServicesLog();
  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "account uses escrow", buf, 2u);
  }

  v8 = v185;
  [v185 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesRandomPassphraseKey];
  [v185 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupRecoveryRequiresVerificationTokenKey];
  [v185 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupAccountIsHighSecurityKey];
  v141 = [v185 objectForKeyedSubscript:v120];

  if (!v141)
  {
    goto LABEL_190;
  }

  v142 = CloudServicesLog();
  if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "calling listSMSTargets: in daemon", buf, 2u);
  }

  v143 = *(v90 + 48);
  v144 = *(v90 + 32);
  v209[0] = _NSConcreteStackBlock;
  v209[1] = 3221225472;
  v209[2] = sub_100018FC4;
  v209[3] = &unk_100075400;
  v145 = v185;
  v146 = *(v90 + 40);
  v210 = v145;
  v211 = v146;
  v212 = *(v90 + 56);
  [v143 listSMSTargetsWithRequest:v144 completionBlock:v209];

LABEL_191:
LABEL_192:
  v6 = v151;

LABEL_193:
}

void sub_100018FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "listSMSTargets: came back", &v20, 2u);
  }

  if (v6)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService listSMSTargetsWithRequest: returned %@", &v20, 0xCu);
    }
  }

  v9 = [v5 objectForKeyedSubscript:@"EscrowServiceSMSTargetInfo"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"challengeDevices"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:kSecureBackupSMSTargetInfoKey];
    }

    v13 = [v10 objectForKeyedSubscript:@"isHSAEnabled"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &__kCFBooleanFalse;
    }

    [*(a1 + 32) setObject:v15 forKeyedSubscript:kSecureBackupAccountIsHighSecurityKey];
    if ([*(a1 + 40) forceICDP])
    {
      [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupRecoveryRequiresVerificationTokenKey];
    }

    else
    {
      v16 = [v10 objectForKeyedSubscript:@"recoveryRequiresChallengeCode"];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = &__kCFBooleanFalse;
      }

      [*(a1 + 32) setObject:v18 forKeyedSubscript:kSecureBackupRecoveryRequiresVerificationTokenKey];
    }
  }

  v19 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void sub_100019400(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: in daemon came back", buf, 2u);
  }

  if (!v6)
  {
    v35 = a1;
    v11 = objc_alloc_init(CSStingrayAccountStatus);
    v36 = v5;
    v12 = [v5 objectForKeyedSubscript:@"EscrowServiceAccountInfo"];
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 count];
      *buf = 134217984;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "got %lu records", buf, 0xCu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (!v16)
    {
LABEL_48:

      (*(*(v35 + 32) + 16))();
      v6 = 0;
      v5 = v36;
      goto LABEL_49;
    }

    v17 = v16;
    v18 = *v42;
    v19 = kEscrowServiceRecordLabelKey;
    v20 = kEscrowServiceStingrayLabel;
    v37 = kEscrowServiceGuitarfishTokenLabel;
    v38 = kEscrowServiceGuitarfishLabel;
LABEL_13:
    v21 = 0;
    while (1)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v41 + 1) + 8 * v21);
      v23 = [v22 objectForKeyedSubscript:{v19, v35}];
      if ([v23 isEqualToString:v20])
      {
        v40 = 0;
        v24 = [CSStingrayRecord parseFromAccountInfoPlist:v22 error:&v40];
        v25 = v40;
        [v11 setStingrayRecord:v24];

        if (v25)
        {
          v26 = CloudServicesLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
LABEL_23:

            goto LABEL_24;
          }

          *buf = 138412290;
          v47 = v25;
          v27 = v26;
          v28 = "error parsing record: %@";
LABEL_44:
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
          goto LABEL_23;
        }
      }

      else if ([v23 isEqualToString:v38])
      {
        v39 = 0;
        v29 = [CSStingrayRecord parseFromAccountInfoPlist:v22 error:&v39];
        v25 = v39;
        [v11 setGfRecord:v29];

        if (v25)
        {
          v26 = CloudServicesLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 138412290;
          v47 = v25;
          v27 = v26;
          v28 = "error parsing Guitarfish record: %@";
          goto LABEL_44;
        }
      }

      else
      {
        if (([v23 isEqualToString:v37]& 1) != 0 || ([v23 isEqualToString:@"com.apple.protectedcloudstorage.record.double"]& 1) != 0)
        {
          goto LABEL_25;
        }

        if ([v23 isEqualToString:@"com.apple.securebackup.record"])
        {
          v25 = CloudServicesLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_41;
          }
        }

        else if ([v23 hasPrefix:@"com.apple.icdp.record.double"])
        {
          v25 = CloudServicesLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v23;
            v30 = v25;
            v31 = "ignoring old double enrollment record: %@";
LABEL_42:
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
          }
        }

        else if ([v23 hasPrefix:@"com.apple.icdp.record"]&& [v23 hasSuffix:@".double"])
        {
          v25 = CloudServicesLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v23;
            v30 = v25;
            v31 = "ignoring icdp record: %@";
            goto LABEL_42;
          }
        }

        else
        {
          v32 = [v23 hasPrefix:@"com.apple.icdp.record"];
          v33 = CloudServicesLog();
          v25 = v33;
          if (!v32)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v23;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "unexpected label: %@", buf, 0xCu);
            }

            goto LABEL_24;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
LABEL_41:
            *buf = 138412290;
            v47 = v23;
            v30 = v25;
            v31 = "ignoring escrow service record: %@";
            goto LABEL_42;
          }
        }
      }

LABEL_24:

LABEL_25:
      if (v17 == ++v21)
      {
        v34 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
        v17 = v34;
        if (!v34)
        {
          goto LABEL_48;
        }

        goto LABEL_13;
      }
    }
  }

  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService getAccountInfoWithRequest: returned %@", buf, 0xCu);
  }

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 code];
    *buf = 134217984;
    v47 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: error: %ld", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_49:
}

void sub_10001A88C(id a1)
{
  qword_100084A98 = dispatch_group_create();

  _objc_release_x1();
}

void sub_10001A8C0(uint64_t a1, void *a2)
{
  v3 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v5 = _CloudServicesSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 67240192;
    LODWORD(v25) = v3 == 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "KVSSynchronize", " CloudServicesSignpostNameKVSSynchronize=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameKVSSynchronize}d ", buf, 8u);
  }

  v8 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    *buf = 134218496;
    v25 = v9;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 1026;
    v29 = v3 == 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: KVSSynchronize  CloudServicesSignpostNameKVSSynchronize=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameKVSSynchronize}d ", buf, 0x1Cu);
  }

  kdebug_trace();
  if (v3)
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004AA50();
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"KVS synchronizeWithCompletionHandler failed" forKeyedSubscript:NSLocalizedDescriptionKey];
    [v11 setObject:v3 forKeyedSubscript:NSUnderlyingErrorKey];
    v12 = [NSError errorWithDomain:kSecureBackupErrorDomain code:32 userInfo:v11];
    v13 = [*(a1 + 32) connectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AC78;
    block[3] = &unk_100075498;
    v14 = *(a1 + 48);
    v22 = v12;
    v23 = v14;
    v15 = v12;
    dispatch_async(v13, block);
  }

  else
  {
    if (([*(a1 + 40) synchronize] & 1) == 0)
    {
      v16 = CloudServicesLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10004AAC0();
      }
    }

    v17 = CloudServicesLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "calling handler on connection queue", buf, 2u);
    }

    v18 = [*(a1 + 32) connectionQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001AC8C;
    v19[3] = &unk_1000754C0;
    v20 = *(a1 + 48);
    dispatch_async(v18, v19);

    v11 = v20;
  }

  dispatch_group_leave(qword_100084A98);
}

void sub_10001BB38(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10001C3EC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) kvs];
    if (v6)
    {
      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "calling synchronizeWithCompletionHandler", buf, 2u);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001C5F4;
      v16[3] = &unk_1000753D8;
      v17 = *(a1 + 32);
      [v6 synchronizeWithCompletionHandler:v16];
    }

    else
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      [v12 setObject:@"KVS not available" forKeyedSubscript:NSLocalizedDescriptionKey];
      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004AEB4();
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v9 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v6];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10001C5F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004AF24();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001E1A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004B1BC();
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [v3 name];
    [v5 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];

    v7 = [v3 reason];
    [v5 setObject:v7 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v5];
    (*(v2 + 16))(v2, v8);

    objc_end_catch();
    JUMPOUT(0x10001E064);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001E3B0(uint64_t a1, void *a2)
{
  v3 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v5 = _CloudServicesSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [v3 domain];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1000767A0;
    }

    v20 = 138543618;
    v21 = v10;
    v22 = 1026;
    LODWORD(v23) = [v3 code];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "EnableWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x12u);
  }

  v11 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 56);
    v13 = Nanoseconds / 1000000000.0;
    v14 = [v3 domain];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1000767A0;
    }

    v17 = [v3 code];
    v20 = 134218754;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2114;
    v25 = v16;
    v26 = 1026;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: EnableWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x26u);
  }

  v18 = [*(a1 + 32) operationsLogger];
  v19 = [*(a1 + 40) endEventWithResults:&__NSDictionary0__struct error:v3];
  [v18 updateStoreWithEvent:v19];

  (*(*(a1 + 48) + 16))();
}

id sub_10001F050()
{
  v0 = sub_1000328A4();
  v1 = [v0 mutableCopy];

  [v1 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  result = 0;
  if (SecItemCopyMatching(v1, &result))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10004B3B8();
    }
  }

  v3 = result;

  return v3;
}

void sub_10001F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F4C0(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 count];
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "s";
      v10 = 138412802;
      v11 = v5;
      if (v7 == 1)
      {
        v9 = "";
      }

      v12 = 2048;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: %ld item%s", &v10, 0x20u);
    }
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004B468();
    }
  }
}

void sub_10001F5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CloudServicesAnalytics logger];
  v5 = CloudServicesAnalyticsRestoreBackupName;
  v6 = *(a1 + 32);
  v16 = @"view";
  v17 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v4 logResultForEvent:v5 hardFailure:1 result:v3 withAttributes:v7];

  v8 = CloudServicesLog();
  v9 = v8;
  if (v3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004B4D8((a1 + 32));
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:v3 forKeyedSubscript:NSUnderlyingErrorKey];
    v10 = [NSError errorWithDomain:kSecureBackupErrorDomain code:19 userInfo:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecItemBackupRestore for view %@ succeeded", &v14, 0xCu);
  }
}

void sub_10001F948(id a1)
{
  v1 = qword_100084AA0;
  qword_100084AA0 = &off_10007A4A0;

  v4 = [&off_10007A4A0 allKeys];
  v2 = [v4 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = qword_100084AA8;
  qword_100084AA8 = v2;
}

void sub_10001FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FE70(uint64_t a1)
{
  v2 = [*(a1 + 32) currentViews];
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "currentViews: %@", buf, 0xCu);
  }

  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) hexString];
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restoring view-based backup for keybag digest %@", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    *&v8 = 138412290;
    v30 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        if ([*(a1 + 48) containsObject:v12])
        {
          v14 = CloudServicesLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v30;
            v39 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "skipping %@", buf, 0xCu);
          }
        }

        else
        {
          *(*(*(a1 + 80) + 8) + 24) |= [*(a1 + 32) _restoreView:v12 password:*(a1 + 56) keybagDigest:*(a1 + 40) restoredViews:*(a1 + 64) error:0];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v15 = CloudServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 64);
    *buf = 138412290;
    v39 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "restoredViews (async): %@", buf, 0xCu);
  }

  if (sub_1000029CC())
  {
    v17 = +[NSMutableDictionary dictionary];
    v18 = [*(a1 + 32) encodedStatsForViews:*(a1 + 64)];
    [v17 setObject:v18 forKeyedSubscript:@"views"];

    v19 = +[CloudServicesAnalytics logger];
    [v19 logSoftFailureForEventNamed:CloudServicesSOSRestoreMetrics withAttributes:v17];
  }

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    [*(a1 + 32) setNeedInitialBackup:1];
    v20 = *(a1 + 32);
    v21 = [v20 circleChangedNotification];
    [v20 registerForNotifyEvent:v21];
LABEL_43:

    goto LABEL_44;
  }

  v22 = CloudServicesLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10004B568();
  }

  if (*(a1 + 72))
  {
    v21 = [*(a1 + 32) _getProtectedKeychainAndKeybagDigestFromKVS:0];
    if (!v21)
    {
      v23 = CloudServicesLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10004B5A4();
      }
    }

    v24 = [*(a1 + 32) derDataFromDict:{v21, v30, v31}];
    if (v24)
    {
      v25 = CloudServicesLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "restoring legacy backup", buf, 2u);
      }
    }

    else
    {
      v35 = NSLocalizedDescriptionKey;
      v36 = @"could not create DER data from dict";
      v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v28 = [NSError errorWithDomain:kSecureBackupErrorDomain code:19 userInfo:v25];
      v29 = CloudServicesLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10004B5E0();
      }
    }

    goto LABEL_43;
  }

  v26 = *(a1 + 88);
  v27 = CloudServicesLog();
  v21 = v27;
  if (v26 != 1)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004B650();
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Having a bottled peer, so skipping SOS restore on this device", buf, 2u);
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
LABEL_44:
}

void sub_1000207DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10002082C(void *a1)
{
  v3 = a1 + 8;
  v2 = a1[8];
  v4 = a1[4];
  v5 = *(v3 - 3);
  v6 = *(v3 - 2);
  v7 = *(*(*(v3 - 1) + 8) + 40);
  v8 = *(v2 + 8);
  obj = *(v8 + 40);
  v9 = [v4 _restoreView:@"iCloudIdentity" password:v5 keybagDigest:v6 restoredViews:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[9] + 8) + 24) = 1;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = *(*(a1[7] + 8) + 40);
    v14 = *(a1[8] + 8);
    v17 = *(v14 + 40);
    v15 = [v10 _restoreView:@"PCS-MasterKey" password:v11 keybagDigest:v12 restoredViews:v13 error:&v17];
    objc_storeStrong((v14 + 40), v17);
    if (v15)
    {
      return;
    }

    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004B774(v3);
    }
  }

  else
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004B700(v3);
    }
  }
}

void sub_10002094C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentViews];
  v3 = [v2 mutableCopy];

  [v3 removeObject:@"iCloudIdentity"];
  [v3 removeObject:@"PCS-MasterKey"];
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "remaining views to restore: %@", buf, 0xCu);
  }

  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) hexString];
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "restoring view-based backup for keybag digest %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        *(*(*(a1 + 56) + 8) + 24) |= [*(a1 + 32) _restoreView:v12 password:*(a1 + 48) keybagDigest:*(a1 + 40) restoredViews:*(*(*(a1 + 64) + 8) + 40) error:{0, v16}];
        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = CloudServicesLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412290;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "restoredViews (async): %@", buf, 0xCu);
  }
}

void sub_100020C9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"keybag"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 backupKeyDigests];
      if (![v10 count])
      {
        v11 = CloudServicesLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "backups (%@): keybag contains no backup key digests", &v12, 0xCu);
        }
      }

      [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
    }

    else
    {
      v10 = CloudServicesLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "backups (%@): missing keybag", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "backups (%@): missing keychain", &v12, 0xCu);
    }
  }
}

void sub_100020FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004B7E8();
    }

    v8 = *(a1 + 56);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v5 objectForKeyedSubscript:kSecureBackupiCDPRecordsKey];
    if ([v10 count])
    {
      context = v9;
      v34 = v5;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v32 = v10;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        v15 = kSecureBackupRecordIDKey;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:{v15, v32}];
            if (v18)
            {
              v19 = [*(a1 + 32) cachedRecordID];
              v20 = [v19 isEqualToString:v18];

              if (v20)
              {
                v25 = [v17 objectForKeyedSubscript:kSecureBackupEscrowDateKey];
                v26 = CloudServicesLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = [CSDateUtilities localStringFromDate:v25];
                  *buf = 138412546;
                  v40 = v18;
                  v41 = 2112;
                  v42 = v27;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "found preferred record: %@ from %@", buf, 0x16u);
                }

                v28 = *(a1 + 48);
                v29 = [v17 objectForKeyedSubscript:kEscrowServiceRecordMetadataKey];
                (*(v28 + 16))(v28, v18, v29, *(a1 + 56));

                objc_autoreleasePoolPop(context);
                v6 = 0;
                v5 = v34;
                goto LABEL_31;
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v21 = [*(a1 + 32) secureBackups];
      if ([v21 count])
      {
        v10 = v32;
        v9 = context;
        if (_os_feature_enabled_impl())
        {
          v22 = [*(a1 + 40) sosCompatibleEscrowSorting];
        }

        else
        {
          v22 = 0;
        }

        v6 = 0;
        [v21 recordIDAndClientMetadataForSilentAttemptFromRecords:v11 passphraseLength:*(a1 + 56) platform:*(a1 + 64) sosCompatibilityModeEnabled:v22 reply:{*(a1 + 48), v32}];
        v5 = v34;
      }

      else
      {
        v30 = CloudServicesLog();
        v10 = v32;
        v9 = context;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10004B858();
        }

        v31 = *(a1 + 56);
        (*(*(a1 + 48) + 16))();
        v6 = 0;
        v5 = v34;
      }
    }

    else
    {
      v23 = CloudServicesLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10004B894();
      }

      v24 = *(a1 + 56);
      (*(*(a1 + 48) + 16))();
    }

    objc_autoreleasePoolPop(v9);
  }

LABEL_31:
}

void sub_100021F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(v6, v7);
  v10 = _CloudServicesSignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = [(__CFString *)v5 domain];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1000767A0;
    }

    *buf = 138543618;
    v160 = v15;
    v161 = 1026;
    LODWORD(v162) = [(__CFString *)v5 code];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "RecoverRecordWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);
  }

  v16 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 56);
    v18 = Nanoseconds / 1000000000.0;
    v19 = [(__CFString *)v5 domain];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1000767A0;
    }

    v22 = [(__CFString *)v5 code];
    *buf = 134218754;
    v160 = v17;
    v161 = 2048;
    v162 = v18;
    v163 = 2114;
    *v164 = v21;
    *&v164[8] = 1026;
    *&v164[10] = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverRecordWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);
  }

  v23 = [v8 mutableCopy];
  v24 = +[CloudServicesAnalytics logger];
  [v24 logResultForEvent:CloudServicesRecoverEscrowWithRequest hardFailure:1 result:v5];

  [*(a1 + 32) uncacheRecordIDPassphrase];
  if (!v5)
  {
    v29 = [*(a1 + 40) silent];
    v30 = CloudServicesLog();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_24;
      }

      v32 = [*(a1 + 40) recordID];
      *buf = 138412290;
      v160 = v32;
      v33 = "silent attempt succeeded for record ID %@";
    }

    else
    {
      if (!v31)
      {
        goto LABEL_24;
      }

      v32 = [*(a1 + 40) recordID];
      *buf = 138412290;
      v160 = v32;
      v33 = "recovery attempt succeeded for record ID %@";
    }

    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);

LABEL_24:
    v34 = [v23 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    v35 = [*(a1 + 40) recordID];
    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = [*(a1 + 32) _KVSKeybag];
    }

    v37 = [*(a1 + 40) recordID];
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = [v36 sha1Digest];
    }

    v39 = [v34 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
    v149 = [v34 objectForKeyedSubscript:kSecureBackupBagPasswordKey];
    v153 = [v34 objectForKeyedSubscript:@"BackupVersion"];
    v152 = [v34 objectForKeyedSubscript:kSecureBackupTimestampKey];
    if (_os_feature_enabled_impl() && ([*(a1 + 40) sosCompatibleEscrowSorting] & 1) != 0)
    {
      v150 = 0;
      v151 = 0;
      v40 = 1;
    }

    else
    {
      v41 = [*(a1 + 40) metadata];
      v151 = [v41 objectForKeyedSubscript:kSecureBackupBottleIDKey];

      v42 = [*(a1 + 40) metadata];
      v150 = [v42 objectForKeyedSubscript:kSecureBackupBottleValidityKey];

      v40 = 0;
    }

    v43 = CloudServicesLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [*(a1 + 40) metadata];
      *buf = 138413058;
      v160 = v152;
      v161 = 2112;
      v162 = *&v153;
      v163 = 2112;
      *v164 = v39;
      *&v164[8] = 2112;
      *&v164[10] = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=== Escrow record ===\nTime of escrow: %@\nEscrow version: %@\nKeybag digest: %@\nMetadata: %@", buf, 0x2Au);
    }

    v45 = [v34 objectForKeyedSubscript:@"BottledPeerEntropy"];
    if ([v153 isEqualToString:@"1"])
    {
      v46 = [*(a1 + 40) recordID];
      if (v46)
      {

LABEL_59:
        if ((v40 & 1) == 0)
        {
          if (v45 && v151 && [v150 isEqualToString:kSecureBackupRecordStatusValid])
          {
            v70 = CloudServicesLog();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = [v45 length];
              *buf = 138413058;
              v160 = v151;
              v161 = 2112;
              v162 = *&v150;
              v163 = 1024;
              *v164 = 1;
              *&v164[4] = 2048;
              *&v164[6] = v71;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "adding bottleID:%@ and validity:%@ to results; entropy present: %d (%llu bytes)", buf, 0x26u);
            }

            [v23 setObject:v151 forKeyedSubscript:kSecureBackupBottleIDKey];
            [v23 setObject:v150 forKeyedSubscript:kSecureBackupBottleValidityKey];
          }

          else
          {
            v72 = CloudServicesLog();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = [v45 length];
              *buf = 138413058;
              v160 = v151;
              v161 = 2112;
              v162 = *&v150;
              v163 = 1024;
              *v164 = v45 != 0;
              *&v164[4] = 2048;
              *&v164[6] = v73;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "skipping setting bottle; bottleID:%@ validity:%@ entropy present: %d (%llu bytes)", buf, 0x26u);
            }
          }
        }

        if (OctagonPlatformSupportsSOS())
        {
          v146 = v23;
          v74 = v45;
          v75 = *(a1 + 32);
          v154 = 0;
          v76 = [v75 _restoreKeychainWithBackupPassword:v149 keybagDigest:v39 error:&v154];
          v77 = v154;
          if ((v76 & 1) == 0)
          {
            v78 = CloudServicesLog();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              sub_10004B940();
            }
          }

          v79 = +[CloudServicesAnalytics logger];
          [v79 logResultForEvent:CloudServicesAnalyticsRestoreKeychainWithBackupBag hardFailure:1 result:v77];

          v45 = v74;
          v23 = v146;
        }

        v80 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
        v81 = _CloudServicesSignpostLogSystem();
        v82 = v81;
        v83 = *(a1 + 72);
        if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
        {
          v84 = [0 domain];
          v147 = v36;
          v85 = v38;
          v86 = v34;
          v87 = v23;
          v88 = v45;
          v89 = v84;
          v90 = v39;
          if (v84)
          {
            v91 = v84;
          }

          else
          {
            v91 = &stru_1000767A0;
          }

          v92 = [0 code];
          *buf = 138543618;
          v160 = v91;
          v39 = v90;
          v161 = 1026;
          LODWORD(v162) = v92;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, OS_SIGNPOST_INTERVAL_END, v83, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);

          v45 = v88;
          v23 = v87;
          v34 = v86;
          v38 = v85;
          v36 = v147;
        }

        v93 = _CloudServicesSignpostLogSystem();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v94 = v39;
          v95 = *(a1 + 72);
          v96 = v80 / 1000000000.0;
          v97 = [0 domain];
          v148 = v36;
          v98 = v38;
          v99 = v34;
          v100 = v23;
          v101 = v45;
          v102 = v97;
          if (v97)
          {
            v103 = v97;
          }

          else
          {
            v103 = &stru_1000767A0;
          }

          v104 = [0 code];
          *buf = 134218754;
          v160 = v95;
          v39 = v94;
          v161 = 2048;
          v162 = v96;
          v163 = 2114;
          *v164 = v103;
          *&v164[8] = 1026;
          *&v164[10] = v104;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverEscrowWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);

          v45 = v101;
          v23 = v100;
          v34 = v99;
          v38 = v98;
          v36 = v148;
        }

        (*(*(a1 + 48) + 16))();
        v5 = 0;
        goto LABEL_87;
      }

      if ([v39 isEqual:v38])
      {
        goto LABEL_59;
      }

      v144 = v38;
      v145 = v36;
      v105 = CloudServicesLog();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        sub_10004B8D0();
      }

      v155 = NSLocalizedDescriptionKey;
      v156 = @"backup keybag digest does not match version in escrow";
      v48 = [NSDictionary dictionaryWithObjects:&v156 forKeys:&v155 count:1];
      v5 = [NSError errorWithDomain:kSecureBackupErrorDomain code:21 userInfo:v48];
      v106 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
      v107 = _CloudServicesSignpostLogSystem();
      v108 = v107;
      v109 = *(a1 + 72);
      if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
      {
        v110 = [(__CFString *)v5 domain];
        v143 = v34;
        v111 = v23;
        v112 = v45;
        v113 = v110;
        v114 = v39;
        if (v110)
        {
          v115 = v110;
        }

        else
        {
          v115 = &stru_1000767A0;
        }

        v116 = [(__CFString *)v5 code];
        *buf = 138543618;
        v160 = v115;
        v39 = v114;
        v161 = 1026;
        LODWORD(v162) = v116;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v108, OS_SIGNPOST_INTERVAL_END, v109, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);

        v45 = v112;
        v23 = v111;
        v34 = v143;
      }

      v60 = _CloudServicesSignpostLogSystem();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
LABEL_55:

        (*(*(a1 + 48) + 16))();
        v38 = v144;
        v36 = v145;
LABEL_87:

        goto LABEL_118;
      }

      v117 = v39;
      v118 = *(a1 + 72);
      v119 = v106 / 1000000000.0;
      v120 = [(__CFString *)v5 domain];
      v142 = v34;
      v65 = v23;
      v66 = v45;
      v67 = v120;
      if (v120)
      {
        v121 = v120;
      }

      else
      {
        v121 = &stru_1000767A0;
      }

      v122 = [(__CFString *)v5 code];
      *buf = 134218754;
      v160 = v118;
      v39 = v117;
      v161 = 2048;
      v162 = v119;
      v163 = 2114;
      *v164 = v121;
      *&v164[8] = 1026;
      *&v164[10] = v122;
    }

    else
    {
      v144 = v38;
      v145 = v36;
      v47 = CloudServicesLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "backup data version does not match version in escrow", buf, 2u);
      }

      v157 = NSLocalizedDescriptionKey;
      v158 = @"backup data version does not match version in escrow";
      v48 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v157 count:1];
      v5 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v48];
      v49 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
      v50 = _CloudServicesSignpostLogSystem();
      v51 = v50;
      v52 = *(a1 + 72);
      if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        v53 = [(__CFString *)v5 domain];
        v141 = v34;
        v54 = v23;
        v55 = v45;
        v56 = v53;
        v57 = v39;
        if (v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = &stru_1000767A0;
        }

        v59 = [(__CFString *)v5 code];
        *buf = 138543618;
        v160 = v58;
        v39 = v57;
        v161 = 1026;
        LODWORD(v162) = v59;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v52, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);

        v45 = v55;
        v23 = v54;
        v34 = v141;
      }

      v60 = _CloudServicesSignpostLogSystem();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v61 = v39;
      v62 = *(a1 + 72);
      v63 = v49 / 1000000000.0;
      v64 = [(__CFString *)v5 domain];
      v142 = v34;
      v65 = v23;
      v66 = v45;
      v67 = v64;
      if (v64)
      {
        v68 = v64;
      }

      else
      {
        v68 = &stru_1000767A0;
      }

      v69 = [(__CFString *)v5 code];
      *buf = 134218754;
      v160 = v62;
      v39 = v61;
      v161 = 2048;
      v162 = v63;
      v163 = 2114;
      *v164 = v68;
      *&v164[8] = 1026;
      *&v164[10] = v69;
    }

    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverEscrowWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);

    v45 = v66;
    v23 = v65;
    v34 = v142;
    goto LABEL_55;
  }

  v25 = CloudServicesLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v160 = v5;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "escrowService recoverRecordWithRequest: returned: %@", buf, 0xCu);
  }

  v26 = [(__CFString *)v5 domain];
  v27 = [v26 isEqualToString:kEscrowServiceErrorDomain];

  if (!v27)
  {
    goto LABEL_106;
  }

  if ([(__CFString *)v5 code]== -4005)
  {
    v28 = 25;
  }

  else if ([(__CFString *)v5 code]== -6015)
  {
    v28 = 26;
  }

  else if ([(__CFString *)v5 code]== -6012)
  {
    v28 = 13;
  }

  else if ([(__CFString *)v5 code]== -6014)
  {
    v28 = 14;
  }

  else
  {
    if ([(__CFString *)v5 code]!= -4010)
    {
      goto LABEL_106;
    }

    v28 = 33;
  }

  v123 = kSecureBackupErrorDomain;
  v124 = [(__CFString *)v5 userInfo];
  v125 = [NSError errorWithDomain:v123 code:v28 userInfo:v124];

  v5 = v125;
LABEL_106:
  v126 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v127 = _CloudServicesSignpostLogSystem();
  v128 = v127;
  v129 = *(a1 + 72);
  if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
  {
    v130 = [(__CFString *)v5 domain];
    v131 = v130;
    if (v130)
    {
      v132 = v130;
    }

    else
    {
      v132 = &stru_1000767A0;
    }

    v133 = [(__CFString *)v5 code];
    *buf = 138543618;
    v160 = v132;
    v161 = 1026;
    LODWORD(v162) = v133;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, OS_SIGNPOST_INTERVAL_END, v129, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);
  }

  v134 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
  {
    v135 = *(a1 + 72);
    v136 = v126 / 1000000000.0;
    v137 = [(__CFString *)v5 domain];
    v138 = v137;
    if (v137)
    {
      v139 = v137;
    }

    else
    {
      v139 = &stru_1000767A0;
    }

    v140 = [(__CFString *)v5 code];
    *buf = 134218754;
    v160 = v135;
    v161 = 2048;
    v162 = v136;
    v163 = 2114;
    *v164 = v139;
    *&v164[8] = 1026;
    *&v164[10] = v140;
    _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverEscrowWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_118:
}

void sub_100024CB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  _Block_object_dispose((v18 - 160), 8);
  if (a2 == 1)
  {
    v21 = objc_begin_catch(a1);
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v21 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004BB40();
    }

    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = [v21 name];
    [v23 setObject:v24 forKeyedSubscript:NSLocalizedDescriptionKey];

    v25 = [v21 reason];
    [v23 setObject:v25 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v26 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v23];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a18 success:0 error:v26];
    (*(a17 + 16))(a17, 0, v26);

    objc_end_catch();
    JUMPOUT(0x100024B50);
  }

  _Unwind_Resume(a1);
}

void sub_100024E84(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"recoverEscrowWithRequest failed, didn't return status dictionary";
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v8];
    }

    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:0 error:v7];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:0 error:v7];
  }

  else
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:1 error:0];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:1 error:0];
    v7 = 0;
  }

  (*(a1[6] + 16))();
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100024FF8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:*(a1 + 32) success:1 error:0];
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "found record ID to use! :%@", buf, 0xCu);
    }

    [*(a1 + 48) setRecordID:v7];
    v10 = [OTEscrowTranslation metadataToDictionary:v8];
    [*(a1 + 48) setMetadata:v10];

    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 48) metadata];
      *buf = 138412290;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "using metadata :%@", buf, 0xCu);
    }

    v13 = [*(a1 + 56) cachedRecordID];
    v14 = [v13 isEqualToString:v7];

    if (v14)
    {
      v15 = [*(a1 + 56) cachedRecordIDPassphrase];
      [*(a1 + 48) setPassphrase:v15];
    }

    else
    {
      v15 = [*(a1 + 48) passphrase];
      v19 = [v15 substringToIndex:a4];
      [*(a1 + 48) setPassphrase:v19];
    }

    LOBYTE(v25) = 1;
    v20 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:*(a1 + 64) flowID:*(a1 + 72) deviceSessionID:*(a1 + 80) eventName:@"com.apple.sbd.recoverEscrowWithRequest" testsAreEnabled:0 canSendMetrics:v25 category:&off_10007A488];
    v22 = *(a1 + 48);
    v21 = *(a1 + 56);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000253B0;
    v26[3] = &unk_100075750;
    v27 = v20;
    v28 = *(a1 + 40);
    v23 = *(a1 + 88);
    v24 = *(a1 + 96);
    v29 = v23;
    v30 = v24;
    v17 = v20;
    [v21 recoverEscrowWithRequest:v22 reply:v26];

    v18 = v27;
  }

  else
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB90();
    }

    v33 = NSLocalizedDescriptionKey;
    v34 = @"silent attempt failed: no valid record found";
    v17 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v18 = [NSError errorWithDomain:kSecureBackupErrorDomain code:43 userInfo:v17];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:*(a1 + 32) success:0 error:v18];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:*(a1 + 40) success:0 error:v18];
    (*(*(a1 + 88) + 16))();
  }
}

void sub_1000253B0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"recoverEscrowWithRequest failed, didn't return status dictionary";
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v8];
    }

    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:0 error:v7];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:0 error:v7];
  }

  else
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:1 error:0];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:1 error:0];
    v7 = 0;
  }

  (*(a1[6] + 16))();
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100025524(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v9 = NSLocalizedDescriptionKey;
      v10 = @"recoverWithRequest failed, didn't return result dictionary";
      v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v8];
    }

    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:0 error:v7];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:0 error:v7];
  }

  else
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:1 error:0];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:1 error:0];
    v7 = 0;
  }

  (*(a1[6] + 16))();
}

void sub_100025AA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v18 = objc_begin_catch(a1);
    v19 = CloudServicesLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [v18 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004BC08();
    }

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = [v18 name];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];

    v22 = [v18 reason];
    [v20 setObject:v22 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v23 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v20];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v15 success:0 error:v23];
    (*(v14 + 16))(v14, 0, v23);

    objc_end_catch();
    JUMPOUT(0x100025A40);
  }

  _Unwind_Resume(a1);
}

void sub_100025C1C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Failed to recover escrow record";
      v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v11];
    }

    v8 = a1[4];
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v8 = a1[4];
    v9 = 1;
    v10 = 0;
  }

  [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v8 success:v9 error:v10];
  (*(a1[5] + 16))();
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100025F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v12 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004BC94();
    }

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = [v12 name];
    [v14 setObject:v15 forKeyedSubscript:NSLocalizedDescriptionKey];

    v16 = [v12 reason];
    [v14 setObject:v16 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v17 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v14];
    (*(v11 + 16))(v11, v17);

    objc_end_catch();
    JUMPOUT(0x100025ED4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100027370(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004C014();
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [v3 name];
    [v5 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];

    v7 = [v3 reason];
    [v5 setObject:v7 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v5];
    (*(v2 + 16))(v2, 0, v8);

    objc_end_catch();
    JUMPOUT(0x10002626CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002759C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:NSPOSIXErrorDomain])
    {
      v6 = [v4 code];

      if (v6 == 22)
      {
        v7 = CloudServicesLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ignoring EINVAL from synchronizeWithCompletionHandler", buf, 2u);
        }

        goto LABEL_7;
      }
    }

    else
    {
    }

    (*(*(a1 + 72) + 16))();
    goto LABEL_29;
  }

LABEL_7:
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) hexString];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [CSDateUtilities localStringFromDate:*(a1 + 40)];
    }

    else
    {
      v11 = @"unknown timestamp";
    }

    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "looking for EMCS backup for stashed keybag digest %@ from %@", buf, 0x16u);
    if (v10)
    {
    }
  }

  v12 = [*(a1 + 48) _EMCSBackupDictForKeybagDigest:*(a1 + 32)];
  if (v12)
  {
    v13 = [*(a1 + 48) restoreEMCSBackup:v12 withPassword:*(a1 + 56)];
  }

  else
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004C064((a1 + 32));
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = [NSString alloc];
    v17 = [*(a1 + 32) hexString];
    v18 = [v16 initWithFormat:@"no backup found for stashed keybag digest %@", v17];
    [v15 setObject:v18 forKeyedSubscript:NSLocalizedDescriptionKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v15];

    v4 = v15;
  }

  if (v13)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    [*(a1 + 48) setBackupAllowed:1];
    if (*(a1 + 32))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v27 = sub_1000109EC;
      v28 = sub_1000109FC;
      v29 = os_transaction_create();
      (*(*(a1 + 72) + 16))();
      if (*(a1 + 80) == 1)
      {
        v19 = *(a1 + 48);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100027A50;
        v23[3] = &unk_1000757F0;
        v23[4] = buf;
        [v19 backupWithInfo:0 garbageCollect:1 reply:v23];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = [*(a1 + 64) objectForKeyedSubscript:@"stashedEMCSDict"];
      v21 = sub_10001F050();
      v22 = *(a1 + 48);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100027A38;
      v24[3] = &unk_1000757C8;
      v25 = *(a1 + 72);
      [v22 setEMCSDict:v20 backupKeybag:v21 saveKeybag:0 reply:v24];
    }
  }

  v4 = v13;
LABEL_29:
}

void sub_100027A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027A50(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100027A94(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = a2;
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService iDMS recoverRecordWithRequest: returned: %@", buf, 0xCu);
    }

    v9 = [v6 userInfo];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v7 objectForKeyedSubscript:@"coolOffEnd"];
    v12 = [v7 objectForKeyedSubscript:@"recoveryStatus"];

    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:kSecureBackupCoolOffEndKey];
    }

    if (v12)
    {
      [v10 setObject:v12 forKeyedSubscript:kSecureBackupRecoveryStatusKey];
    }

    v13 = [v6 domain];
    v14 = [v13 isEqualToString:kEscrowServiceErrorDomain];

    if (!v14)
    {
      goto LABEL_42;
    }

    v15 = [v6 code];
    v16 = kSecureBackupErrorDomain;
    v17 = [v6 code];
    if (v17 > -4018)
    {
      if (v17 > -4011)
      {
        if (v17 == -4010)
        {
          v15 = 33;
          goto LABEL_41;
        }

        if (v17 == -4005)
        {
          v15 = 25;
          goto LABEL_41;
        }
      }

      else
      {
        if (v17 == -4017)
        {
          v15 = 35;
          goto LABEL_41;
        }

        if (v17 == -4015)
        {
          v15 = 34;
          goto LABEL_41;
        }
      }
    }

    else if (v17 > -6013)
    {
      if (v17 == -6012)
      {
        v15 = 13;
        goto LABEL_41;
      }

      if (v17 == -6005)
      {
        v15 = 30;
        goto LABEL_41;
      }
    }

    else
    {
      if (v17 == -6015)
      {
        v15 = 26;
        goto LABEL_41;
      }

      if (v17 == -6014)
      {
        v15 = 14;
LABEL_41:
        v32 = [[NSError alloc] initWithDomain:v16 code:v15 userInfo:v10];

        v6 = v32;
LABEL_42:
        (*(*(a1 + 48) + 16))();
        goto LABEL_43;
      }
    }

    v31 = [v6 domain];

    v16 = v31;
    goto LABEL_41;
  }

  v18 = kEscrowServiceRecordDataKey;
  v19 = a2;
  v10 = [v19 objectForKeyedSubscript:v18];

  v11 = [v10 objectForKeyedSubscript:@"BackupVersion"];
  v20 = kSecureBackupTimestampKey;
  v12 = [v10 objectForKeyedSubscript:kSecureBackupTimestampKey];
  v21 = kSecureBackupIDMSDataKey;
  v22 = [v10 objectForKeyedSubscript:kSecureBackupIDMSDataKey];
  v23 = CloudServicesLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v12;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=== Escrow record ===\nTime of escrow: %@\nEscrow version: %@", buf, 0x16u);
  }

  if ([v11 isEqualToString:@"1"])
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    [v24 setObject:v22 forKeyedSubscript:v21];
    [v24 setObject:v12 forKeyedSubscript:v20];
    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 32) recordID];
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "caching recordID %@", buf, 0xCu);
    }

    v27 = *(a1 + 40);
    v28 = [*(a1 + 32) passphrase];
    [v27 setCachedRecordIDPassphrase:v28];

    v29 = [*(a1 + 32) recordID];
    [*(a1 + 40) setCachedRecordID:v29];

    (*(*(a1 + 48) + 16))();
    v6 = 0;
  }

  else
  {
    v30 = CloudServicesLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "backup data version does not match version in escrow", buf, 2u);
    }

    v33 = NSLocalizedDescriptionKey;
    v34 = @"backup data version does not match version in escrow";
    v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v6 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v24];
    (*(*(a1 + 48) + 16))();
  }

LABEL_43:
}

void sub_100028018(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "escrowService iDMS recoverRecordWithRequest: returned: %@", &v21, 0xCu);
    }

    v9 = [v5 userInfo];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v6 objectForKeyedSubscript:@"coolOffEnd"];
    v12 = [v6 objectForKeyedSubscript:@"recoveryStatus"];

    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:kSecureBackupCoolOffEndKey];
    }

    if (v12)
    {
      [v10 setObject:v12 forKeyedSubscript:kSecureBackupRecoveryStatusKey];
    }

    v13 = [v5 domain];
    v14 = [v13 isEqualToString:kEscrowServiceErrorDomain];

    if (!v14)
    {
      goto LABEL_35;
    }

    v15 = [v5 code];
    v16 = kSecureBackupErrorDomain;
    v17 = [v5 code];
    if (v17 > -4018)
    {
      if (v17 > -4011)
      {
        if (v17 == -4010)
        {
          v15 = 33;
          goto LABEL_34;
        }

        if (v17 == -4005)
        {
          v15 = 25;
          goto LABEL_34;
        }
      }

      else
      {
        if (v17 == -4017)
        {
          v15 = 35;
          goto LABEL_34;
        }

        if (v17 == -4015)
        {
          v15 = 34;
          goto LABEL_34;
        }
      }
    }

    else if (v17 > -6013)
    {
      if (v17 == -6012)
      {
        v15 = 13;
        goto LABEL_34;
      }

      if (v17 == -6005)
      {
        v15 = 30;
        goto LABEL_34;
      }
    }

    else
    {
      if (v17 == -6015)
      {
        v15 = 26;
        goto LABEL_34;
      }

      if (v17 == -6014)
      {
        v15 = 14;
LABEL_34:
        v20 = [[NSError alloc] initWithDomain:v16 code:v15 userInfo:v10];

        v5 = v20;
LABEL_35:
        (*(*(a1 + 32) + 16))();

        goto LABEL_36;
      }
    }

    v19 = [v5 domain];

    v16 = v19;
    goto LABEL_34;
  }

  if (v8)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMiP recovery attempt successful", &v21, 2u);
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v18 = [v6 objectForKeyedSubscript:@"EscrowServiceFMiPData"];

  [v5 setObject:v18 forKeyedSubscript:kSecureBackupFMiPDataKey];
  (*(*(a1 + 32) + 16))();
LABEL_36:
}

void sub_10002838C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsRecoverRequest hardFailure:1 result:v6];

  if (v6)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService stingray recoverRecordWithRequest: returned: %@", buf, 0xCu);
    }

    v9 = [v6 domain];
    v10 = [v9 isEqualToString:kEscrowServiceErrorDomain];

    if (!v10)
    {
      goto LABEL_26;
    }

    if ([v6 code] == -4005)
    {
      v11 = 25;
    }

    else if ([v6 code] == -6015)
    {
      v11 = 26;
    }

    else if ([v6 code] == -6005)
    {
      v11 = 30;
    }

    else if ([v6 code] == -6012)
    {
      v11 = 13;
    }

    else if ([v6 code] == -6014)
    {
      v11 = 14;
    }

    else
    {
      if ([v6 code] != -4010)
      {
LABEL_26:
        (*(*(a1 + 32) + 16))();
        goto LABEL_27;
      }

      v11 = 33;
    }

    v24 = kSecureBackupErrorDomain;
    v25 = [v6 userInfo];
    v26 = [NSError errorWithDomain:v24 code:v11 userInfo:v25];

    v6 = v26;
    goto LABEL_26;
  }

  v28 = a1;
  v12 = [v5 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
  v13 = kSecureBackupKeybagSHA256Key;
  v14 = [v12 objectForKeyedSubscript:kSecureBackupKeybagSHA256Key];
  v15 = kSecureBackupKeybagDigestKey;
  v16 = [v12 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
  v27 = [v12 objectForKeyedSubscript:kSecureBackupBagPasswordKey];
  v17 = [v12 objectForKeyedSubscript:@"BackupVersion"];
  v18 = kSecureBackupTimestampKey;
  v19 = [v12 objectForKeyedSubscript:kSecureBackupTimestampKey];
  v20 = CloudServicesLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v32 = v19;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=== Escrow record ===\nTime of escrow: %@\nEscrow version: %@\nKeybag SHA256: %@\nKeybag digest: %@", buf, 0x2Au);
  }

  if ([v17 isEqualToString:@"1"])
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:v14 forKeyedSubscript:v13];
    [v21 setObject:v16 forKeyedSubscript:v15];
    v22 = v27;
    [v21 setObject:v27 forKeyedSubscript:kSecureBackupiCloudIdentityDataKey];
    [v21 setObject:v17 forKeyedSubscript:@"BackupVersion"];
    [v21 setObject:v19 forKeyedSubscript:v18];
    (*(*(v28 + 32) + 16))();
    v6 = 0;
  }

  else
  {
    v23 = CloudServicesLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "backup data version does not match version in escrow", buf, 2u);
    }

    v29 = NSLocalizedDescriptionKey;
    v30 = @"backup data version does not match version in escrow";
    v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v6 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v21];
    (*(*(v28 + 32) + 16))();
    v22 = v27;
  }

LABEL_27:
}

void sub_100028870(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    [*(a1 + 32) setRecordID:v7];
    [*(a1 + 32) setMetadata:v8];
    v9 = [*(a1 + 40) cachedRecordID];
    v10 = [v9 isEqualToString:v7];

    if (v10)
    {
      v11 = [*(a1 + 40) cachedRecordIDPassphrase];
      [*(a1 + 32) setPassphrase:v11];
    }

    else
    {
      v11 = [*(a1 + 32) passphrase];
      v15 = [v11 substringToIndex:a4];
      [*(a1 + 32) setPassphrase:v15];
    }

    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100028AA0;
    v20[3] = &unk_100075868;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v21 = v18;
    v22 = v19;
    [v16 recoverEscrowWithRequest:v17 reply:v20];
    v13 = v21;
  }

  else
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004C0F8();
    }

    v23 = NSLocalizedDescriptionKey;
    v24 = @"silent attempt failed: no valid record found";
    v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [NSError errorWithDomain:kSecureBackupErrorDomain code:43 userInfo:v13];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100028AA0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100028AF0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100028C30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100028DCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100028FAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100029148(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100029328(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10002971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100029758(uint64_t a1)
{
  v2 = objc_alloc_init(NSDate);
  v3 = *(a1 + 32);
  v4 = [v3 kvs];
  v5 = [v3 _getICDPBackupFromKVS:v4 forView:@"iCloudIdentity"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v48 = @"iCloudIdentity";
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v6)
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = @"iCloudIdentity";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "about to remove recovery key from backup view %@", buf, 0xCu);
      }

      v10 = [v6 objectForKeyedSubscript:@"keybag"];
      v11 = [v6 objectForKeyedSubscript:@"backup"];
      v12 = v11;
      if (v10 && v11)
      {
        v13 = *(a1 + 32);
        v14 = *(*(a1 + 40) + 8);
        obj = *(v14 + 40);
        v15 = [v13 removeRKFromKeyBag:v10 error:&obj];
        objc_storeStrong((v14 + 40), obj);
        if (v15 && !*(*(*(a1 + 40) + 8) + 40))
        {
          goto LABEL_14;
        }

        v16 = CloudServicesLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10004C22C((a1 + 40));
        }

        if (v15)
        {
LABEL_14:
          *(*(*(a1 + 48) + 8) + 24) = 1;
          v43 = [v6 mutableCopy];
          [v43 setObject:v15 forKeyedSubscript:@"keybag"];
          v17 = [v5 mutableCopy];
          [v17 setObject:v43 forKeyedSubscript:@"com.apple.securebackup.keychain"];
          [v17 setObject:v2 forKeyedSubscript:kSecureBackupTimestampKey];
          v18 = [[NSString alloc] initWithFormat:@"%@.%@-tomb", @"com.apple.icdp.backup", @"iCloudIdentity"];
          [*(a1 + 32) kvs];
          v19 = v15;
          v21 = v20 = v2;
          [v21 setObject:v17 forKey:v18];

          v2 = v20;
          v15 = v19;
        }
      }
    }
  }

  v22 = *(a1 + 32);
  v23 = [v22 kvs];
  v24 = [v22 _getICDPBackupFromKVS:v23 forView:@"PCS-MasterKey"];

  if (v24)
  {
    v25 = [v24 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v26 = CloudServicesLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v24 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v48 = @"PCS-MasterKey";
      v49 = 2112;
      v50 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v25)
    {
      v28 = CloudServicesLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = @"PCS-MasterKey";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "about to remove recovery key from backup view %@", buf, 0xCu);
      }

      v29 = [v25 objectForKeyedSubscript:@"keybag"];
      v30 = [v25 objectForKeyedSubscript:@"backup"];
      v31 = v30;
      if (v29 && v30)
      {
        v32 = *(a1 + 32);
        v45 = 0;
        v33 = [v32 removeRKFromKeyBag:v29 error:&v45];
        v34 = v45;
        v44 = v34;
        if (v33 && !v34)
        {
          goto LABEL_31;
        }

        v35 = CloudServicesLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10004C2A0();
        }

        v36 = v44;
        if (v33)
        {
LABEL_31:
          *(*(*(a1 + 56) + 8) + 24) = 1;
          v37 = [v25 mutableCopy];
          [v37 setObject:v33 forKeyedSubscript:@"keybag"];
          v42 = v33;
          v38 = v2;
          v39 = [v24 mutableCopy];
          [v39 setObject:v37 forKeyedSubscript:@"com.apple.securebackup.keychain"];
          [v39 setObject:v38 forKeyedSubscript:kSecureBackupTimestampKey];
          v40 = [[NSString alloc] initWithFormat:@"%@.%@-tomb", @"com.apple.icdp.backup", @"PCS-MasterKey"];
          v41 = [*(a1 + 32) kvs];
          [v41 setObject:v39 forKey:v40];

          v2 = v38;
          v33 = v42;

          v36 = v44;
        }
      }
    }
  }
}

void sub_10002A068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10002A0AC(uint64_t a1)
{
  v2 = [*(a1 + 32) dataUsingEncoding:4];
  v3 = *(a1 + 40);
  v4 = [v3 kvs];
  v5 = [v3 _getICDPBackupFromKVS:v4 forView:@"iCloudIdentity"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v36 = @"iCloudIdentity";
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v6)
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = @"iCloudIdentity";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "verifying rk against backup view %@", buf, 0xCu);
      }

      v10 = [v6 objectForKeyedSubscript:@"keybag"];
      v11 = [v6 objectForKeyedSubscript:@"backup"];
      v12 = v11;
      if (v10 && v11)
      {
        v13 = *(a1 + 40);
        v34 = 0;
        v14 = [v13 verifyRKWithKeyBag:v10 password:v2 error:&v34];
        v15 = v34;
        v16 = v34;
        *(*(*(a1 + 48) + 8) + 24) = v14;
        if (v16)
        {
          v17 = CloudServicesLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10004C34C();
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
        }
      }
    }
  }

  v18 = *(a1 + 40);
  v19 = [v18 kvs];
  v20 = [v18 _getICDPBackupFromKVS:v19 forView:@"PCS-MasterKey"];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v20 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v36 = @"PCS-MasterKey";
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v21)
    {
      v24 = CloudServicesLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = @"PCS-MasterKey";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "restoring backup view %@", buf, 0xCu);
      }

      v25 = [v21 objectForKeyedSubscript:@"keybag"];
      v26 = [v21 objectForKeyedSubscript:@"backup"];
      v27 = v26;
      if (v25 && v26)
      {
        v28 = *(a1 + 40);
        v33 = 0;
        v29 = [v28 verifyRKWithKeyBag:v25 password:v2 error:&v33];
        v30 = v33;
        v31 = v33;
        *(*(*(a1 + 64) + 8) + 24) = v29;
        if (v31)
        {
          v32 = CloudServicesLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10004C34C();
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v30);
        }
      }
    }
  }
}

void sub_10002A758(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10002AA50(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Escrow recovery completed with possible error: %@", &v8, 0xCu);
  }

  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10002B25C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = CloudServicesLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004B20C();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "escrowService storeRecordWithRequest: succeeded", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_10002B4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "escrowService deleteRecordWithRequest: returned: %@", &v6, 0xCu);
    }

    [*(a1 + 32) setDeleteError:v4];
  }

  [*(a1 + 40) _deleteAlliCDPRecordsWithContext:*(a1 + 32)];
}

void sub_10002B794(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:kSecureBackupAlliCDPRecordsKey];
    v7 = objc_alloc_init(NSMutableArray);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      v12 = kSecureBackupRecordIDKey;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{v12, v20}];
          if (v14)
          {
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v15 = objc_alloc_init(SecureBackupDeletionContext);
      [(SecureBackupDeletionContext *)v15 setRequest:*(a1 + 32)];
      v16 = [(SecureBackupDeletionContext *)v15 request];
      [v16 setIcdp:1];

      [(SecureBackupDeletionContext *)v15 setCompletionBlock:*(a1 + 48)];
      v17 = [EscrowService alloc];
      v18 = [*(a1 + 40) operationsLogger];
      v19 = [(EscrowService *)v17 initWithOperationsLogger:v18];
      [(SecureBackupDeletionContext *)v15 setEscrowService:v19];

      [(SecureBackupDeletionContext *)v15 setRecordIDs:v7];
      [(SecureBackupDeletionContext *)v15 setDeleteError:0];
      [*(a1 + 40) _deleteAlliCDPRecordsWithContext:v15];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_10002BC24(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = kSecureBackupBackOffDateKey;
    v7 = [v10 objectForKeyedSubscript:kSecureBackupBackOffDateKey];
    v8 = kSecureBackupStingrayMetadataHashKey;
    v9 = [v10 objectForKeyedSubscript:kSecureBackupStingrayMetadataHashKey];
    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:v6];
    }

    if (v9)
    {
      [v5 setObject:v9 forKeyedSubscript:v8];
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10002C860(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004C5BC();
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [v3 name];
    [v5 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];

    v7 = [v3 reason];
    [v5 setObject:v7 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v5];
    (*(v2 + 16))(v2, v8);

    objc_end_catch();
    JUMPOUT(0x10002C7D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002C99C(uint64_t a1, void *a2)
{
  v3 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v5 = _CloudServicesSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [v3 domain];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1000767A0;
    }

    v20 = 138543618;
    v21 = v10;
    v22 = 1026;
    LODWORD(v23) = [v3 code];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "DisableWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x12u);
  }

  v11 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 56);
    v13 = Nanoseconds / 1000000000.0;
    v14 = [v3 domain];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1000767A0;
    }

    v17 = [v3 code];
    v20 = 134218754;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2114;
    v25 = v16;
    v26 = 1026;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisableWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x26u);
  }

  v18 = [*(a1 + 32) operationsLogger];
  v19 = [*(a1 + 40) endEventWithResults:&__NSDictionary0__struct error:v3];
  [v18 updateStoreWithEvent:v19];

  (*(*(a1 + 48) + 16))();
}

void sub_10002CBC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) disableiCDPBackup];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10002CC30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "escrowService deleteRecordWithRequest: returned: %@", &v11, 0xCu);
    }
  }

  else if (([*(a1 + 32) stingray] & 1) == 0)
  {
    if (([*(a1 + 32) icdp] & 1) == 0)
    {
      if (([*(a1 + 40) _backupEnabled] & 1) == 0)
      {
        v10 = *(a1 + 56);
        if (!v10)
        {
          goto LABEL_14;
        }

        v9 = *(v10 + 16);
        goto LABEL_13;
      }

      [*(a1 + 40) _disableBackup];
      [*(a1 + 40) _removeUsesEscrow];
    }

    if (!*(a1 + 32))
    {
      notify_post("com.apple.EscrowSecurityAlert.reset");
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(v8 + 16);
LABEL_13:
    v9();
  }

LABEL_14:
}

void sub_10002D4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(exception_object);
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [v20 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004C67C();
    }

    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = [v20 name];
    [v22 setObject:v23 forKeyedSubscript:NSLocalizedDescriptionKey];

    v24 = [v20 reason];
    [v22 setObject:v24 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v25 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
    (*(v19 + 16))(v19, v25);

    objc_end_catch();
    JUMPOUT(0x10002D478);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002D65C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 domain];
    v7 = [v6 isEqualToString:kEscrowServiceErrorDomain];

    if (v7 && [v5 code] == -5012)
    {
      v8 = kSecureBackupErrorDomain;
      v9 = [v5 userInfo];
      v10 = [NSError errorWithDomain:v8 code:29 userInfo:v9];

      v5 = v10;
    }

    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "updateRecordMetadataWithRequest: returned: %@", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);

    v12();
  }
}

void sub_10002ED2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v11 = [v5 objectForKeyedSubscript:@"recoveryChallengeCodeLength"];
    [v7 setObject:v11 forKeyedSubscript:kSecureBackupRecoveryVerificationTokenLengthKey];

    v12 = *(*(a1 + 32) + 16);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 domain];
  v9 = [v8 isEqualToString:kEscrowServiceErrorDomain];

  if (v9)
  {
    if ([v7 code] == -4002)
    {
      v10 = 27;
LABEL_8:
      v13 = kSecureBackupErrorDomain;
      v14 = [v7 userInfo];
      v15 = [NSError errorWithDomain:v13 code:v10 userInfo:v14];

      v7 = v15;
      goto LABEL_9;
    }

    if ([v7 code] == -4007)
    {
      v10 = 28;
      goto LABEL_8;
    }
  }

LABEL_9:
  v16 = CloudServicesLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "escrowService startSMSChallengeWithRequest: returned: %@", &v17, 0xCu);
  }

  v12 = *(*(a1 + 32) + 16);
LABEL_12:
  v12();
}

void sub_10002F2A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService getCountrySMSCodesWithRequest: returned: %@", &v16, 0xCu);
    }

    v9 = [v7 domain];
    v10 = [v9 isEqualToString:kEscrowServiceErrorDomain];

    if (v10)
    {
      v11 = kSecureBackupErrorDomain;
      v12 = [v7 userInfo];
      v13 = [NSError errorWithDomain:v11 code:24 userInfo:v12];

      v7 = v13;
    }

    v14 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v15 = [v5 objectForKeyedSubscript:@"EscrowServiceCountrySMSCodes"];
    [v7 setObject:v15 forKeyedSubscript:kSecureBackupCountrySMSCodesKey];

    v14 = *(*(a1 + 32) + 16);
  }

  v14();
}

void sub_10002FABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = CloudServicesLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [v18 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004CD68();
    }

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = [v18 name];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];

    v22 = [v18 reason];
    [v20 setObject:v22 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v23 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v20];
    (*(v17 + 16))(v17, v23);

    objc_end_catch();
    JUMPOUT(0x10002FA60);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002FC30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "escrowService changeSMSTargetWithRequest: returned: %@", &v13, 0xCu);
    }

    v8 = [v6 domain];
    v9 = [v8 isEqualToString:kEscrowServiceErrorDomain];

    if (v9 && [v6 code] == -5012)
    {
      v10 = kSecureBackupErrorDomain;
      v11 = [v6 userInfo];
      v12 = [NSError errorWithDomain:v10 code:29 userInfo:v11];

      v6 = v12;
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10003039C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004CDB8();
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (v9)
    {
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004CE28();
      }
    }

    v13 = a1[4];
    v19 = 0;
    v14 = [v13 cacheStoredCertificate:v7 error:&v19];
    v15 = v19;
    v16 = v15;
    if (!v14 || v15)
    {
      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10004CE98();
      }

      (*(a1[7] + 16))();
    }

    else
    {
      v17 = [[SecureBackupBeginPasscodeRequestResults alloc] initWithStoredCertificate:v7 uuid:a1[5]];
      (*(a1[7] + 16))();
    }
  }
}

void sub_10003171C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 escrowCertificate];
  v7 = [v6 duplicateEscrowCertificate];

  (*(v4 + 16))(v4, 0, v8, v7, v5);
}

void sub_100032108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = CloudServicesLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004B20C();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "escrowService storeRecordWithRequest: succeeded", v8, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_10003245C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Guitarfish token recovery returned: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [a2 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    v9 = kSecureBackupKeybagSHA256Key;
    v10 = [v8 objectForKeyedSubscript:kSecureBackupKeybagSHA256Key];
    v11 = [v8 objectForKeyedSubscript:kSecureBackupBagPasswordKey];
    v12 = [v8 objectForKeyedSubscript:@"BackupVersion"];
    v13 = kSecureBackupTimestampKey;
    v14 = [v8 objectForKeyedSubscript:kSecureBackupTimestampKey];
    if ([v12 isEqualToString:@"1"])
    {
      v17[0] = v9;
      v17[1] = kSecureBackupiCloudIdentityDataKey;
      v18[0] = v10;
      v18[1] = v11;
      v17[2] = @"BackupVersion";
      v17[3] = v13;
      v18[2] = v12;
      v18[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
      (*(*(a1 + 32) + 16))();
      v6 = 0;
    }

    else
    {
      v16 = CloudServicesLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "guitarfish token data version does not match version in escrow", buf, 2u);
      }

      v19 = NSLocalizedDescriptionKey;
      v20 = @"guitarfish token data version does not match version in escrow";
      v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v6 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v15];
      (*(*(a1 + 32) + 16))();
    }
  }
}

id sub_1000328A4()
{
  v2[0] = kSecClass;
  v2[1] = kSecAttrAccessGroup;
  v3[0] = kSecClassGenericPassword;
  v3[1] = @"com.apple.sbd";
  v2[2] = kSecAttrAccessible;
  v2[3] = kSecAttrAccount;
  v3[2] = kSecAttrAccessibleWhenUnlocked;
  v3[3] = @"SecureBackupPublicKeybag";
  v2[4] = kSecAttrService;
  v2[5] = kSecAttrSynchronizable;
  v3[4] = @"SecureBackupService";
  v3[5] = kCFBooleanTrue;
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:6];

  return v0;
}

uint64_t sub_1000329B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

void sub_1000329EC(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x20u);
}

uint64_t *sub_100032A14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100032F08(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) currentRequest];
    v4 = [v3 URL];
    v5 = [*(a1 + 32) originalRequest];
    v6 = [v5 URL];
    v7 = [*(a1 + 40) URL];
    v8 = [*(a1 + 48) allHeaderFields];
    v12 = 138413058;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "redirect: current URL = %@, original URL = %@, new URL = %@, response headers = %@", &v12, 0x2Au);
  }

  v9 = [*(a1 + 32) currentRequest];
  v10 = [v9 mutableCopy];

  v11 = [*(a1 + 40) URL];
  [v10 setURL:v11];

  (*(*(a1 + 56) + 16))();
}

void sub_1000333DC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000334E0;
  block[3] = &unk_100075A90;
  v10 = a1[4];
  v11 = a1[6];
  block[4] = a1[5];
  v16 = v9;
  v17 = v8;
  v18 = v7;
  v19 = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  os_activity_apply(v10, block);
}

void sub_1000334E0(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) loggingDescription];
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: escrow proxy request returned", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  if (!v4)
  {
    v10 = [objc_alloc(objc_msgSend(v5 "responseClass"))];
    v4 = [v10 error];

    if (!v4)
    {
      goto LABEL_23;
    }

    v11 = [v10 error];
    v12 = [v11 userInfo];
    v4 = [v12 objectForKeyedSubscript:@"retryAfterDate"];

    if (v4)
    {
      v13 = CloudServicesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10004D508(v4, v13);
      }

      objc_storeStrong(&qword_100084AD0, v4);
    }

    v9 = [v10 error];
    goto LABEL_16;
  }

  if ([v5 pinningFailure])
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004D4C4(v6);
    }

    v7 = sub_1000029CC();
    v8 = &stru_1000767A0;
    if (v7)
    {
      v8 = @", please see rdar://problem/15631298";
    }

    v9 = [CloudServicesError errorWithCode:310 error:v4 format:@"Certificate pinning error%@", v8];
    v10 = 0;
LABEL_16:

    if (!v9)
    {
      v4 = 0;
      goto LABEL_23;
    }

    v4 = v9;
    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  v14 = CloudServicesLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10004D580(v4, v14);
  }

LABEL_23:
  v15 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000337D8;
  block[3] = &unk_100075A68;
  v16 = *(a1 + 64);
  v21 = v4;
  v22 = v16;
  v20 = v10;
  v17 = v4;
  v18 = v10;
  dispatch_async(v15, block);
}

void sub_100033CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 operations];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100033DA0;
  v10[3] = &unk_100075BD0;
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v13 = a4;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

uint64_t sub_100033DA0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = 0;
  v6 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v8 = v9;
  *a4 = v9;
  **(a1 + 48) = v8;
  return result;
}

void sub_100034C74(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 isEqual:v5] & 1) == 0)
  {
    *(*(a1 + 32) + 8) = 1;
    [*(a1 + 40) insertObject:v5 atIndex:0];
  }

  *(*(a1 + 32) + 9) &= [v5 isComplete];
  *(*(a1 + 32) + 10) &= [v5 isStaleWithcontext:*(a1 + 48)];
  v6 = *(*(*(a1 + 80) + 8) + 24);
  v7 = [*(a1 + 48) operationRecordRetentionMaxCount];
  v8 = [v5 isComplete];
  if (v6 >= v7)
  {
    v9 = @"incomplete";
    if (v8)
    {
      v9 = @"complete";
    }

    v10 = v9;
    v11 = [v5 startTimestamp];
    v12 = +[NSTimeZone defaultTimeZone];
    v13 = [NSISO8601DateFormatter stringFromDate:v11 timeZone:v12 formatOptions:1907];

    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) operationRecordRetentionMaxCount]);
      v16 = [v5 id];
      v17 = [v16 UUIDString];
      v18 = 138413058;
      v19 = v15;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Total operation count is greater than %@, reaping %@ operation %@ from %@.", &v18, 0x2Au);
    }

    [*(a1 + 56) addObject:v5];
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      [*(a1 + 64) addObject:v5];
    }

    [*(a1 + 72) insertObject:v5 atIndex:0];
    ++*(*(*(a1 + 80) + 8) + 24);
  }
}

void sub_100035550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1000355AC(void *a1, void *a2)
{
  v21 = a2;
  if ([v21 shouldReap])
  {
    v3 = a1[6];
    v4 = [v21 activity];
    [v3 addObject:v4];

    v5 = a1[4];
    v6 = [v21 activity];
    v7 = [v6 operations];
    [v5 addObjectsFromArray:v7];
  }

  else
  {
    v8 = [v21 activity];
    v9 = [v8 operations];
    *(*(a1[11] + 8) + 24) += [v9 count];

    v10 = a1[4];
    v11 = [v21 reapedOperations];
    [v10 addObjectsFromArray:v11];

    v12 = a1[5];
    v6 = [v21 activity];
    [v12 insertObject:v6 atIndex:0];
  }

  if ([v21 didChange])
  {
    v13 = a1[7];
    v14 = [v21 activity];
    [v13 addObject:v14];

    v15 = a1[8];
    v16 = [v21 updatedOperations];
    [v15 addObjectsFromArray:v16];
  }

  if (([v21 isComplete] & 1) == 0)
  {
    *(*(a1[12] + 8) + 24) = 0;
    v17 = a1[9];
    v18 = [v21 activity];
    [v17 addObject:v18];

    v19 = a1[10];
    v20 = [v21 activeOperations];
    [v19 addObjectsFromArray:v20];
  }
}

uint64_t sub_100036958(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v26[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v26[0] & 0x7F) << v5;
      if ((v26[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_43;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_43;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_43;
      case 4u:
        v13 = PBReaderReadData();
        v14 = 40;
        goto LABEL_43;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_43;
      case 6u:
        v13 = PBReaderReadData();
        v14 = 88;
        goto LABEL_43;
      case 7u:
        v13 = PBReaderReadData();
        v14 = 80;
        goto LABEL_43;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_43;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 8;
        goto LABEL_43;
      case 0xAu:
        v13 = PBReaderReadData();
        v14 = 48;
        goto LABEL_43;
      case 0xBu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 112) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_49;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_49:
        *(a1 + 72) = v22;
        goto LABEL_44;
      case 0xCu:
        v13 = PBReaderReadData();
        v14 = 24;
LABEL_43:
        v23 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_44;
      case 0xDu:
        v15 = objc_alloc_init(EscrowPrerecordPasscodeGeneration);
        objc_storeStrong((a1 + 64), v15);
        v26[0] = 0xAAAAAAAAAAAAAAAALL;
        v26[1] = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && sub_1000452D4(v15, a2))
        {
          PBReaderRecallMark();

LABEL_44:
          v24 = [a2 position];
          if (v24 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_44;
    }
  }
}

void sub_100038154(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [CloudServicesError errorWithCode:305 error:v5 format:@"Error getting account info"];
  }

  else
  {
    v9 = @"EscrowServiceAccountInfo";
    v8 = [a2 accountInfo];
    v10 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100038914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched certificates with result: %@ %@)", &v17, 0x16u);
  }

  if (v6)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004D9FC();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v5 error];

    if (v9)
    {
      v10 = CloudServicesLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10004DA6C(v5);
      }

      v11 = *(a1 + 40);
      v12 = [v5 error];
      (*(v11 + 16))(v11, 0, v12);
    }

    else
    {
      if (v5)
      {
        v12 = objc_alloc_init(StoredCertificate);
        v13 = [*(a1 + 32) iCloudEnv];
        [(StoredCertificate *)v12 setICloudEnvironment:v13];

        v14 = [*(a1 + 32) baseURL];
        [(StoredCertificate *)v12 setEscrowBaseURL:v14];

        v15 = [*(a1 + 32) dsid];
        [(StoredCertificate *)v12 setDsid:v15];

        v16 = [v5 cert];
        [(StoredCertificate *)v12 setEscrowCertificate:v16];
      }

      else
      {
        v12 = 0;
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), v12, 0);
    }
  }
}

uint64_t sub_100038C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!(a3 | a4))
  {
    return (*(v4 + 16))(v4, a2, 0);
  }

  if (!a3)
  {
    a3 = a4;
  }

  return (*(v4 + 16))(v4, 0, a3);
}

void sub_100038F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 176), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100038FDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100038FF4(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000390A4;
  v4[3] = &unk_100075CE0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _fetchCertificatesWithRequest:v3 duplicate:0 completionBlock:v4];
}

void sub_1000390A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100039140(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000391F0;
  v4[3] = &unk_100075CE0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _fetchCertificatesWithRequest:v3 duplicate:1 completionBlock:v4];
}

void sub_1000391F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleGetClubCert hardFailure:1 result:v6];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v13 = v5;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_1000392BC(void *a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v4 = *(*(a1[6] + 8) + 40);
    v5 = *(*(a1[7] + 8) + 40);
    v6 = *(*(a1[8] + 8) + 40);
    v13 = 138413058;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning fetch result of: %@ %@ %@ %@)", &v13, 0x2Au);
  }

  v7 = *(*(a1[7] + 8) + 40);
  if (v7)
  {
    v8 = [v7 escrowCertificate];
    [*(*(a1[5] + 8) + 40) setDuplicateEscrowCertificate:v8];
  }

  v9 = *(*(a1[5] + 8) + 40);
  v10 = *(*(a1[6] + 8) + 40);
  v11 = *(*(a1[8] + 8) + 40);
  return (*(a1[4] + 16))();
}

void sub_10003A108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v44 - 232), 8);
  _Block_object_dispose((v44 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_10003A148(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

void sub_10003A1FC(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003A2AC;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _storeRecordWithRequest:v3 duplicate:0 completionBlock:v4];
}

void sub_10003A2AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10003A348(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003A3F8;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _storeRecordWithRequest:v3 duplicate:1 completionBlock:v4];
}

void sub_10003A3F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleEnrollment hardFailure:1 result:v6];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v13 = v5;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10003A4C4(uint64_t a1)
{
  if ([*(a1 + 32) requiresDoubleEnrollment])
  {
    if (*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
    {
      v6 = CloudServicesLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) passphrase];
        if (v7)
        {
          v8 = "YES";
        }

        else
        {
          v8 = "NO";
        }

        if ([*(a1 + 32) stingray])
        {
          v9 = "YES";
        }

        else
        {
          v9 = "NO";
        }

        v13 = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Double enrollment succeeded (passphrase: %s) (PCS: %s)", &v13, 0x16u);
      }

      v10 = [*(a1 + 32) icdp];
      v11 = *(a1 + 32);
      if (v10)
      {
        v12 = [v11 passphrase];
        if (v12)
        {
        }

        else if (([*(a1 + 32) stingray] & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else if (![v11 stingray])
      {
        goto LABEL_7;
      }

      [*(a1 + 40) _performPostEnrollSilentRecoveryWithRequest:*(a1 + 32)];
      goto LABEL_7;
    }

    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10004DD48(a1);
    }
  }

LABEL_7:
  v3 = *(*(*(a1 + 72) + 8) + 40);
  v4 = *(*(*(a1 + 80) + 8) + 40);
  return (*(*(a1 + 48) + 16))();
}

void sub_10003A828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v16 = [v5 cert];
    [*(a1 + 32) setCertData:v16];

    v17 = [*(a1 + 32) certData];

    if (v17)
    {
      v18 = [*(a1 + 32) dsid];
      v19 = [v5 dsid];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        [*(a1 + 40) storeRecordWithCertDataRequest:*(a1 + 32) duplicate:*(a1 + 56) completionBlock:*(a1 + 48)];
        goto LABEL_21;
      }

      v23 = CloudServicesLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10004DE38((a1 + 32), v5);
      }

      v21 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:99 format:@"Mismatched user credential"];
    }

    else
    {
      v21 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:124 format:@"Unexpected error with encoded certificate"];
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Certificate encoding error: %@", &v24, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();

    goto LABEL_21;
  }

  v7 = v6;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v11 = [v10 code];
  if (v11 == 401)
  {
    v12 = @"Unauthorized";
  }

  else
  {
    v12 = @"Unexpected error getting club cert";
  }

  if (v11 == 401)
  {
    v13 = 99;
  }

  else
  {
    v13 = 96;
  }

  [v8 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];
  v14 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:v13 userInfo:v8];

  v15 = CloudServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10004DDC8();
  }

  (*(*(a1 + 48) + 16))();
LABEL_21:
}

void sub_10003B224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v10 code] == 401)
    {
      [v8 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v11 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v8];

      v7 = v11;
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (([*(a1 + 32) stingray] & 1) != 0 || (objc_msgSend(v5, "bypassToken"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v15 = CloudServicesLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Missing bypass token (might not be hooked up in iCloud yet)", buf, 2u);
      }
    }

    else
    {
      [*(a1 + 40) _removeBypassToken];
      v13 = *(a1 + 40);
      v14 = [v5 bypassToken];
      [v13 _saveBypassToken:v14];
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v20 = 0;
    v18 = [v16 _invalidateEscrowCache:v17 error:&v20];
    v7 = v20;
    if ((v18 & 1) == 0)
    {
      (*(*(a1 + 64) + 16))();
      goto LABEL_14;
    }

    v19 = *(a1 + 56);
    v22 = @"EscrowServiceCertificate";
    v23 = v19;
    v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    (*(*(a1 + 64) + 16))();
  }

LABEL_14:
}

void sub_10003C1F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v30 = 0;
  v9 = [v7 _invalidateEscrowCache:v8 error:&v30];
  v10 = v30;
  if ((v9 & 1) == 0)
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004E0B8();
    }
  }

  if (v6)
  {
    if ([v6 code] != -6015)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = [v6 localizedDescription];
      [v12 setObject:v13 forKeyedSubscript:NSLocalizedDescriptionKey];

      [v12 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
      v14 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v12];

      v6 = v14;
    }

    v15 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    [NSThread sleepUntilDate:v15];

    v16 = *(a1 + 64);
    v17 = [v5 responseDictionary];
    (*(v16 + 16))(v16, v17, v6);
  }

  else
  {
    v18 = *(a1 + 48);
    v19 = [v5 recoveryData];
    v20 = [*(a1 + 56) stingray];
    v21 = [*(a1 + 56) iCloudEnv];
    v22 = *(a1 + 72);
    v29 = 0;
    v6 = [v18 decodedEscrowRecordFromData:v19 stingray:v20 env:v21 duplicate:v22 error:&v29];
    v23 = v29;

    if (v6)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      [v17 setObject:v6 forKeyedSubscript:kEscrowServiceRecordDataKey];
      v24 = [*(a1 + 48) decodedLabel];
      [v17 setObject:v24 forKeyedSubscript:kEscrowServiceRecordLabelKey];

      v25 = [*(a1 + 48) escrowDate];
      [v17 setObject:v25 forKeyedSubscript:@"date"];

      [v17 setObject:@"EscrowOperationSucceeded" forKeyedSubscript:@"EscrowOperationStatus"];
      v26 = [v5 metadata];
      [v17 setObject:v26 forKeyedSubscript:kEscrowServiceRecordMetadataKey];

      v27 = [v5 fmipRecoveryData];
      [v17 setObject:v27 forKeyedSubscript:@"EscrowServiceFMiPData"];

      v28 = [v5 requestUUID];
      [v17 setObject:v28 forKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
    }

    else
    {
      v17 = [CloudServicesError errorWithDomain:kCloudServicesErrorDomain code:98 underlyingError:v23 format:@"Error deserializing data"];
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_10003C7BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = [v4 code];
    if ((v5 + 4017 > 0xC || ((1 << (v5 - 79)) & 0x1085) == 0) && v5 != -6014 && v5 != -6012)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      v12 = [v14 localizedDescription];
      [v11 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];

      [v11 setObject:v14 forKeyedSubscript:NSUnderlyingErrorKey];
      v13 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:102 userInfo:v11];

      v14 = v13;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 40) + 16);

    v10();
  }
}

void sub_10003CB44(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_17;
  }

  [*(a1 + 32) setPasswordMetadataWithRequest:*(a1 + 40) response:v7 ses:v8];
  v9 = [v7 clubTypeID];
  if (!v9)
  {
    v15 = _os_feature_enabled_impl();
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 56);
    if (v15)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10003D188;
      v22[3] = &unk_100075E70;
      v22[4] = v12;
      v24 = *(a1 + 48);
      v23 = *(a1 + 40);
      v25 = *(a1 + 56);
      [v12 _recoverWithVersion:1 req:v11 duplicate:v13 sesWrapper:v8 srpInitResponse:v7 reply:v22];

      v14 = v24;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v9 == 1)
  {
    v10 = _os_feature_enabled_impl();
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 56);
    if (v10)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10003CE18;
      v26[3] = &unk_100075E70;
      v26[4] = v12;
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);
      v29 = *(a1 + 56);
      [v12 _recoverWithVersion:2 req:v11 duplicate:v13 sesWrapper:v8 srpInitResponse:v7 reply:v26];

      v14 = v28;
LABEL_9:

      goto LABEL_17;
    }

LABEL_10:
    v16 = *(a1 + 48);
    v17 = v12;
    v18 = v11;
    v19 = v13;
LABEL_16:
    [v17 _recoverWithVersion:0 req:v18 duplicate:v19 sesWrapper:v8 srpInitResponse:v7 reply:v16];
    goto LABEL_17;
  }

  if (!_os_feature_enabled_impl())
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v16 = *(a1 + 48);
    goto LABEL_16;
  }

  v20 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:106 format:@"Unknown/bad ClubTypeID"];
  v21 = CloudServicesLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10004E164(v7);
  }

  (*(*(a1 + 48) + 16))();
LABEL_17:
}

void sub_10003CE18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  if (v6 && v7 && (v8 = *(a1 + 32), ![objc_opt_class() isFatalError:v6]))
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E1E4();
    }

    v11 = +[CloudServicesAnalytics logger];
    [v11 logResultForEvent:CloudServicesAnalyticsRequestV2Fallback hardFailure:1 result:v6];

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003CFD8;
    v18[3] = &unk_100075E48;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v20 = v15;
    v18[4] = v16;
    v19 = v17;
    v21 = *(a1 + 56);
    [v12 _srpInitHelper:v13 duplicate:v14 completionBlock:v18];
  }

  else
  {
    v9 = +[CloudServicesAnalytics logger];
    [v9 logResultForEvent:CloudServicesAnalyticsRequestV2 hardFailure:1 result:v6];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003CFD8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) setPasswordMetadataWithRequest:*(a1 + 40) response:v7 ses:v8];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003D0E0;
    v12[3] = &unk_100075450;
    v13 = *(a1 + 48);
    [v9 _recoverWithVersion:0 req:v10 duplicate:v11 sesWrapper:v8 srpInitResponse:v7 reply:v12];
  }
}

void sub_10003D0E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[CloudServicesAnalytics logger];
  [v6 logResultForEvent:CloudServicesAnalyticsRequestV2ToV0Fallback hardFailure:1 result:v5];

  (*(*(a1 + 32) + 16))();
}

void sub_10003D188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  if (v6 && v7 && (v8 = *(a1 + 32), ![objc_opt_class() isFatalError:v6]))
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E254();
    }

    v11 = +[CloudServicesAnalytics logger];
    [v11 logResultForEvent:CloudServicesAnalyticsRequestV1Fallback hardFailure:1 result:v6];

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003D348;
    v18[3] = &unk_100075E48;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v20 = v15;
    v18[4] = v16;
    v19 = v17;
    v21 = *(a1 + 56);
    [v12 _srpInitHelper:v13 duplicate:v14 completionBlock:v18];
  }

  else
  {
    v9 = +[CloudServicesAnalytics logger];
    [v9 logResultForEvent:CloudServicesAnalyticsRequestV1 hardFailure:1 result:v6];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003D348(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) setPasswordMetadataWithRequest:*(a1 + 40) response:v7 ses:v8];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003D450;
    v12[3] = &unk_100075450;
    v13 = *(a1 + 48);
    [v9 _recoverWithVersion:0 req:v10 duplicate:v11 sesWrapper:v8 srpInitResponse:v7 reply:v12];
  }
}

void sub_10003D450(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[CloudServicesAnalytics logger];
  [v6 logResultForEvent:CloudServicesAnalyticsRequestV1ToV0Fallback hardFailure:1 result:v5];

  (*(*(a1 + 32) + 16))();
}

void sub_10003D6E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

id sub_10003D798()
{
  if (qword_100084AE8 != -1)
  {
    sub_10004E2C4();
  }

  v1 = qword_100084AF0;

  return v1;
}

void sub_10003D7DC(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting for recover group", buf, 2u);
  }

  v3 = sub_10003D904();
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = sub_10003D904();
  dispatch_group_enter(v4);

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003D948;
  v9[3] = &unk_100075400;
  v7 = v5;
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  [v6 _recoverActualRecordWithRequest:v7 duplicate:0 completionBlock:v9];
}

id sub_10003D904()
{
  if (qword_100084AF8 != -1)
  {
    sub_10004E2D8();
  }

  v1 = qword_100084B00;

  return v1;
}

void sub_10003D948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) requiresDoubleEnrollment])
  {
    if (!v5 || v6)
    {
      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v8 = "double recovery skipped because primary recovery failed";
        v9 = &v11;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      if ([*(a1 + 32) icdp])
      {
        [*(a1 + 40) _performDoubleRecoveryICDPWithRequest:*(a1 + 32) primaryResponse:v5];
        goto LABEL_10;
      }

      if ([*(a1 + 32) stingray])
      {
        [*(a1 + 40) _performDoubleRecoveryStingrayWithRequest:*(a1 + 32) primaryResponse:v5];
        goto LABEL_10;
      }

      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "double recovery requested for invalid request type";
        v9 = &v12;
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  (*(*(a1 + 48) + 16))(*(a1 + 48));
  v10 = sub_10003D904();
  dispatch_group_leave(v10);
}

void sub_10003DCC0(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a3;
  v5 = CloudServicesLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "silent recovery succeeded", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10004E2EC();
  }
}

void sub_10003DF40(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting for recover group (double recovery)", buf, 2u);
  }

  v3 = sub_10003D904();
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = sub_10003D904();
  dispatch_group_enter(v4);

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E068;
  v9[3] = &unk_100075F20;
  v10 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  [v6 _recoverActualRecordWithRequest:v10 duplicate:1 completionBlock:v9];
}

void sub_10003E068(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v6 = [CloudServicesError errorWithCode:1 format:@"Recovery seemingly failed with no error"];
  }

  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleRecovery hardFailure:1 result:v6];

  v8 = [a1[5] objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setRecoveryUUID:v8];

  v9 = [v5 objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setDoubleRecoveryUUID:v9];

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[4] recoveryUUID];
    v12 = [a1[4] doubleRecoveryUUID];
    v28 = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: recoveryUUID: %@, doubleRecoveryUUID: %@", &v28, 0x16u);
  }

  v13 = CloudServicesLog();
  v14 = v13;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004E35C();
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "double enrollment recovery succeeded", &v28, 2u);
    }

    v15 = kEscrowServiceRecordDataKey;
    v16 = [v5 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    if (v16)
    {
      v17 = [a1[5] objectForKeyedSubscript:v15];
      v18 = [v16 isEqualToDictionary:v17];
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "not ";
        if (v18)
        {
          v20 = "";
        }

        v28 = 136315138;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: record is %sidentical", &v28, 0xCu);
      }

      v21 = a1[4];
      if (v18)
      {
        [v21 setRecoveryResult:1];
        v14 = 0;
      }

      else
      {
        [v21 setRecoveryResult:0];
        v14 = [CloudServicesError errorWithCode:24 format:@"Record data does not match"];
      }

      v23 = [EscrowService alloc];
      v24 = [a1[6] operationsLogger];
      v25 = [(EscrowService *)v23 initWithOperationsLogger:v24];

      [(EscrowService *)v25 logRecoveryResults:a1[4] completionBlock:&stru_100075EF8];
    }

    else
    {
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: record data is missing", &v28, 2u);
      }

      v14 = [CloudServicesError errorWithCode:23 format:@"Record data is missing"];
    }

    v26 = +[CloudServicesAnalytics logger];
    [v26 logResultForEvent:CloudServicesAnalyticsDoubleRecoveryDataMatch3 hardFailure:1 result:v14];
  }

  v27 = sub_10003D904();
  dispatch_group_leave(v27);
}

void sub_10003E488(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004E3CC();
    }
  }

  else
  {
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"status"];
    v7 = [(NSDictionary *)v4 objectForKeyedSubscript:@"message"];
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: logged metrics with status: %@, message: %@", &v9, 0x16u);
    }
  }
}

void sub_10003E6DC(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting for recover group (PCS double recovery)", buf, 2u);
  }

  v3 = sub_10003D904();
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v4 = sub_10003D904();
  dispatch_group_enter(v4);

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E804;
  v9[3] = &unk_100075F20;
  v10 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  [v6 _recoverActualRecordWithRequest:v10 duplicate:1 completionBlock:v9];
}

void sub_10003E804(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v6 = [CloudServicesError errorWithCode:1 format:@"Recovery seemingly failed with no error"];
  }

  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleRecoveryPCS hardFailure:1 result:v6];

  v8 = [a1[5] objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setRecoveryUUID:v8];

  v9 = [v5 objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setDoubleRecoveryUUID:v9];

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[4] recoveryUUID];
    v12 = [a1[4] doubleRecoveryUUID];
    v28 = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PCS double recovery: recoveryUUID: %@, doubleRecoveryUUID: %@", &v28, 0x16u);
  }

  v13 = CloudServicesLog();
  v14 = v13;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004E43C();
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PCS double recovery succeeded", &v28, 2u);
    }

    v15 = kEscrowServiceRecordDataKey;
    v16 = [v5 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    if (v16)
    {
      v17 = [a1[5] objectForKeyedSubscript:v15];
      v18 = [v16 isEqualToDictionary:v17];
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "not ";
        if (v18)
        {
          v20 = "";
        }

        v28 = 136315138;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PCS double recovery: record is %sidentical", &v28, 0xCu);
      }

      v21 = a1[4];
      if (v18)
      {
        [v21 setRecoveryResult:1];
        v14 = 0;
      }

      else
      {
        [v21 setRecoveryResult:0];
        v14 = [CloudServicesError errorWithCode:24 format:@"Record data does not match"];
      }

      v23 = [EscrowService alloc];
      v24 = [a1[6] operationsLogger];
      v25 = [(EscrowService *)v23 initWithOperationsLogger:v24];

      [(EscrowService *)v25 logRecoveryResults:a1[4] completionBlock:&stru_100075F40];
    }

    else
    {
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PCS double recovery: record data is missing", &v28, 2u);
      }

      v14 = [CloudServicesError errorWithCode:23 format:@"Record data is missing"];
    }

    [a1[6] ttrForPCSDataMatchFailure:v14];
    v26 = +[CloudServicesAnalytics logger];
    [v26 logResultForEvent:CloudServicesAnalyticsDoubleRecoveryPCSDataMatch hardFailure:1 result:v14];
  }

  v27 = sub_10003D904();
  dispatch_group_leave(v27);
}

void sub_10003EC30(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004E4AC();
    }
  }

  else
  {
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"status"];
    v7 = [(NSDictionary *)v4 objectForKeyedSubscript:@"message"];
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PCS double recovery: logged metrics with status: %@, message: %@", &v9, 0x16u);
    }
  }
}

void sub_10003EF48(uint64_t a1)
{
  v19[0] = kCFUserNotificationDefaultButtonTitleKey;
  v19[1] = kCFUserNotificationAlternateButtonTitleKey;
  v20[0] = @"Tap-To-Radar";
  v20[1] = @"No";
  v19[2] = kCFUserNotificationAlertMessageKey;
  v19[3] = kCFUserNotificationAlertHeaderKey;
  v20[2] = @"This device found a test data consistency issue. No device behavior or account data is impacted. Please file a radar to help track down the test issue!";
  v20[3] = @"iCloud Account Data Mismatch";
  v2 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  error = 0;
  v3 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v2);
  if (v3)
  {
    v4 = v3;
    *responseFlags = 0;
    CFUserNotificationReceiveResponse(v3, 180.0, responseFlags);
    v5 = responseFlags[0] & 3;
    CFRelease(v4);
    if (!v5)
    {
      if (qword_100084AD8 != -1)
      {
        sub_10004E544();
      }

      v6 = objc_alloc_init(NSDateFormatter);
      [v6 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
      v7 = [v6 stringFromDate:*(a1 + 32)];
      v8 = [NSString stringWithFormat:@"PCS Double Recovery data mismatch detected at %@: %@", v7, *(a1 + 40)];

      v9 = [@"PCS Double Recovery Data Mismatch" stringByAddingPercentEncodingWithAllowedCharacters:qword_100084AE0];
      v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:qword_100084AE0];
      v11 = [NSString stringWithFormat:@"tap-to-radar://new?Reproducibilty=Always&Title=%@&ComponentName=CloudServices&ComponentVersion=all&Reproducibility=Not%%20Applicable&ComponentID=507587&Classification=Crash/Hang/Data%%20Loss&Description=%@", v9, v10];

      v12 = [NSURL URLWithString:v11];
      v13 = CloudServicesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *responseFlags = 138412290;
        *&responseFlags[4] = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PCS double TTR: going to use URL string %@", responseFlags, 0xCu);
      }

      v14 = +[LSApplicationWorkspace defaultWorkspace];
      [v14 openURL:v12 configuration:0 completionHandler:&stru_100075F80];

      goto LABEL_13;
    }
  }

  else
  {
    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSNumber numberWithInt:error];
      *responseFlags = 138412290;
      *&responseFlags[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PCS double TTR: failed to ask user about TTR: %@", responseFlags, 0xCu);
    }
  }

  v6 = CloudServicesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *responseFlags = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PCS double TTR: user declined", responseFlags, 2u);
  }

LABEL_13:
}

void sub_10003F29C(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  v2 = qword_100084AE0;
  qword_100084AE0 = v1;

  v3 = qword_100084AE0;
  v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = qword_100084AE0;

  [v5 removeCharactersInString:@"&"];
}

void sub_10003F790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v44 - 216), 8);
  _Block_object_dispose((v44 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_10003F7CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

void sub_10003F880(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003F930;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _deleteRecordWithRequest:v3 duplicate:0 completionBlock:v4];
}

void sub_10003F930(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10003F9CC(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003FA7C;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _deleteRecordWithRequest:v3 duplicate:1 completionBlock:v4];
}

void sub_10003FA7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to delete double-enrolled record: %@", &v14, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10003FB88(uint64_t a1)
{
  v2 = [*(a1 + 32) deleteDoubleOnly];
  v3 = *(*(a1 + 40) + 16);
  v4 = 48;
  if (v2)
  {
    v4 = 64;
  }

  v5 = 56;
  if (v2)
  {
    v5 = 72;
  }

  v6 = *(*(*(a1 + v4) + 8) + 40);
  v7 = *(*(*(a1 + v5) + 8) + 40);
  v8 = *(a1 + 40);

  return v3(v8, v6, v7);
}

void sub_10003FD98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v8 code] == 401)
    {
      [v6 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v9 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v6];
    }

    else
    {
      if ([v5 code] == -6011)
      {
LABEL_8:
        (*(a1[6] + 16))();

        goto LABEL_9;
      }

      v9 = [CloudServicesError errorWithCode:22 error:v5 format:@"Error deleting record"];
    }

    v12 = v9;

    v5 = v12;
    goto LABEL_8;
  }

  v10 = a1[4];
  v11 = a1[5];
  v13 = 0;
  [v10 _invalidateEscrowCache:v11 error:&v13];
  v5 = v13;
  (*(a1[6] + 16))();
LABEL_9:
}

void sub_100040160(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

void sub_100040214(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v8 code] == 401)
    {
      [v6 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v6];
    }

    else
    {
      [CloudServicesError errorWithCode:22 error:v5 format:@"Error updating metadata"];
    }
    v10 = ;

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 32) + 16);

    v9();
  }
}

void sub_100040460(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v9 code] == 401)
    {
      [v7 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v10 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v7];
    }

    else
    {
      v12 = [v6 code];
      if (v12 == -4007 || v12 == -4002)
      {
        goto LABEL_9;
      }

      v10 = [CloudServicesError errorWithCode:22 error:v6 format:@"SMS challenge error"];
    }

    v13 = v10;

    v6 = v13;
LABEL_9:
    (*(*(a1 + 32) + 16))();

    goto LABEL_10;
  }

  v14 = @"recoveryChallengeCodeLength";
  v11 = [a2 smsVerificationCodeLength];
  v15 = v11;
  v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  (*(*(a1 + 32) + 16))();
LABEL_10:
}

void sub_100040738(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = objc_alloc_init(NSMutableDictionary);
    [v5 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];
    v6 = [v12 userInfo];
    v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v7 code] == 401)
    {
      [v5 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v8 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v5];
    }

    else
    {
      if ([v12 code] == -5012)
      {
        v10 = v12;
LABEL_11:
        v13 = v10;
        (*(*(a1 + 32) + 16))();

        return;
      }

      v8 = [CloudServicesError errorWithCode:22 error:v12 format:@"Unable to change SMS Target"];
    }

    v11 = v8;

    v10 = v11;
    goto LABEL_11;
  }

  v9 = *(*(a1 + 32) + 16);

  v9();
}

void sub_1000409A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [CloudServicesError errorWithCode:305 error:v5 format:@"Unable to get target list"];
  }

  else
  {
    v9 = @"EscrowServiceSMSTargetInfo";
    v8 = [a2 smsTargetsInfo];
    v10 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100040B7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [CloudServicesError errorWithCode:305 error:v5 format:@"Unable to get country SMS code list"];
  }

  else
  {
    v9 = @"EscrowServiceCountrySMSCodes";
    v8 = [a2 countrySMSCodes];
    v10 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100041118(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v10 = [CloudServicesError errorWithCode:312 error:v5 format:@"Unable to log metrics"];

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [a2 responseDictionary];
    v7 = *(v8 + 16);
    v10 = v9;
  }

  v7();
}

void sub_1000411EC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sbd.recoverQueue", v3);
  v2 = qword_100084AF0;
  qword_100084AF0 = v1;
}

void sub_100041250(id a1)
{
  qword_100084B00 = dispatch_group_create();

  _objc_release_x1();
}

void sub_100041284(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sbd.uiQueue", v3);
  v2 = qword_100084B10;
  qword_100084B10 = v1;
}

void sub_100041310(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100041D24(id a1)
{
  v3 = [AAFAnalyticsTransportRTC analyticsTransportRTCWithClientType:&off_10007A470 clientBundleId:@"com.apple.sbd" clientName:@"com.apple.aaa.dnu"];
  v1 = [AAFAnalyticsReporter analyticsReporterWithTransport:v3];
  v2 = qword_100084B18;
  qword_100084B18 = v1;
}

void sub_100041E90(uint64_t a1)
{
  v4 = [*(a1 + 32) getEvent];
  v2 = [NSNumber numberWithBool:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:@"didSucceed"];

  [v4 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];
  v3 = +[SecureBackupAnalyticsReporterRTC rtcAnalyticsReporter];
  [v3 sendEvent:v4];
}