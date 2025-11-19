id sub_100000F04()
{
  if (qword_100010CF0 != -1)
  {
    sub_100006338();
  }

  v1 = qword_100010CF8;

  return v1;
}

void sub_1000011C0(id a1)
{
  qword_100010CD0 = objc_alloc_init(DCXPCListener);

  _objc_release_x1();
}

void sub_1000013C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000013F0(uint64_t a1)
{
  if (qword_100010CE8 != -1)
  {
    sub_1000062D4();
  }

  v2 = qword_100010CE0;
  if (os_log_type_enabled(qword_100010CE0, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 136315650;
    v6 = "DCXPCListener.m";
    v7 = 1024;
    v8 = 85;
    v9 = 2112;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invalidated connection. { connection=%@ }", &v5, 0x1Cu);
  }
}

void sub_100001638(id a1)
{
  if (qword_100010CE8 != -1)
  {
    dispatch_once(&qword_100010CE8, &stru_10000C448);
  }

  v1 = qword_100010CE0;
  if (os_log_type_enabled(qword_100010CE0, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315394;
    v3 = "DCXPCListener.m";
    v4 = 1024;
    v5 = 101;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d SIGTERM requested, devicecheckd is being terminated.", &v2, 0x12u);
  }

  exit(0);
}

void sub_100001774(id a1)
{
  qword_100010CE0 = os_log_create("com.apple.devicecheck", "dcd");

  _objc_release_x1();
}

void sub_100001C3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    AppAttest_AppAttestation_CreateKey();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_100001E9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    AppAttest_AppAttestation_CreateKeyWithTeamIdentifier();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 124;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_100002128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    AppAttest_AppAttestation_AttestKey();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 144;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_1000023D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    AppAttest_AppAttestation_AttestKeyWithTeamIdentifier();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_100002634(uint64_t a1)
{
  v16 = -1;
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = sub_100005E34(@"appattest-webauthn", v2, &v16, &v15);
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v16 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || v4 != 0)
  {
    if (qword_100010D18 != -1)
    {
      sub_10000634C();
    }

    v8 = qword_100010D10;
    if (os_log_type_enabled(qword_100010D10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v5 localizedDescription];
      *buf = 136315906;
      v18 = "DCClientHandler.m";
      v19 = 1024;
      v20 = 184;
      v21 = 2112;
      v22 = v10;
      v23 = 1024;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to fetch key from keychain. { error=%@, err=%d }", buf, 0x22u);
    }
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  AppAttest_WebAuthentication_AttestKey();
}

void sub_100002820(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  if ([v5 count])
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [v5 objectAtIndexedSubscript:v8];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100002B7C;
      v20[3] = &unk_10000C508;
      v20[4] = v10;
      v11 = objc_retainBlock(v20);
      v12 = SecCertificateCopyData(v10);
      v13 = [NSString stringWithFormat:@"%@:%@:%d", *(a1 + 32), @"cert", v8];
      v19 = v9;
      v14 = sub_100006034(v12, @"appattest-webauthn", v13, &v19);
      v7 = v19;

      if (v14)
      {
        if (qword_100010D18 != -1)
        {
          sub_10000634C();
        }

        v15 = qword_100010D10;
        if (!os_log_type_enabled(qword_100010D10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        *buf = 136315650;
        v22 = "DCClientHandler.m";
        v23 = 1024;
        v24 = 202;
        v25 = 2112;
        v26 = v13;
        v16 = v15;
        v17 = "%25s:%-5d Saved cert data to keychain. { label=%@ }";
      }

      else
      {
        if (qword_100010D18 != -1)
        {
          sub_10000634C();
        }

        v18 = qword_100010D10;
        if (!os_log_type_enabled(qword_100010D10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        *buf = 136315650;
        v22 = "DCClientHandler.m";
        v23 = 1024;
        v24 = 201;
        v25 = 2112;
        v26 = 0;
        v16 = v18;
        v17 = "%25s:%-5d Failed to save cert data to keychain. { error=%@ }";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v17, buf, 0x1Cu);
LABEL_15:

      (v11[2])(v11);
      ++v8;
      v9 = v7;
      if ([v5 count] <= v8)
      {
        goto LABEL_18;
      }
    }
  }

  v7 = 0;
LABEL_18:
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 count], v7);
LABEL_19:
}

void sub_100002B7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_100002CB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v20 = -1;
    v3 = *(a1 + 32);
    v4 = *(a1 + 64);
    v19 = 0;
    v5 = sub_100005C28(@"appattest-device", v3, v4, &v20, &v19);
    v6 = v19;
    v7 = v6;
    if (v5)
    {
      v8 = v20 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8 || v6 != 0)
    {
      if (qword_100010D18 != -1)
      {
        sub_10000634C();
      }

      v10 = qword_100010D10;
      if (os_log_type_enabled(qword_100010D10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v7 localizedDescription];
        *buf = 136315906;
        *&buf[4] = "DCClientHandler.m";
        *&buf[12] = 1024;
        *&buf[14] = 230;
        *&buf[18] = 2112;
        *&buf[20] = v12;
        *&buf[28] = 1024;
        *&buf[30] = v20;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to fetch key from keychain. { error=%@, err=%d }", buf, 0x22u);
      }
    }

    memset(buf, 0, 32);
    v13 = [WeakRetained connection];
    v14 = v13;
    if (v13)
    {
      [v13 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v16 = *(a1 + 40);
    v18 = *(a1 + 48);
    v17 = *(a1 + 32);
    AppAttest_DeviceAttestation_AttestKeyWithAuditToken();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v15 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 223;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_100002F78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(*(a1 + 40) + 16))();
    goto LABEL_21;
  }

  if ([v5 count])
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [v5 objectAtIndexedSubscript:v8];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v12 = [v5 objectAtIndexedSubscript:v8];
      v13 = v12;
      if ((isKindOfClass & 1) == 0)
      {

        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000032F8;
        v22[3] = &unk_10000C508;
        v22[4] = v13;
        v14 = objc_retainBlock(v22);
        v13 = SecCertificateCopyData(v13);
        (v14[2])(v14);
      }

      v15 = [NSString stringWithFormat:@"%@:%@:%d", *(a1 + 32), @"cert", v8];
      v21 = v9;
      v16 = sub_100006034(v13, @"appattest-device", v15, &v21);
      v7 = v21;

      if (v16)
      {
        if (qword_100010D18 != -1)
        {
          sub_10000634C();
        }

        v17 = qword_100010D10;
        if (!os_log_type_enabled(qword_100010D10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        *buf = 136315650;
        v24 = "DCClientHandler.m";
        v25 = 1024;
        v26 = 256;
        v27 = 2112;
        v28 = v15;
        v18 = v17;
        v19 = "%25s:%-5d Saved cert data to keychain. { label=%@ }";
      }

      else
      {
        if (qword_100010D18 != -1)
        {
          sub_10000634C();
        }

        v20 = qword_100010D10;
        if (!os_log_type_enabled(qword_100010D10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        *buf = 136315650;
        v24 = "DCClientHandler.m";
        v25 = 1024;
        v26 = 255;
        v27 = 2112;
        v28 = 0;
        v18 = v20;
        v19 = "%25s:%-5d Failed to save cert data to keychain. { error=%@ }";
      }

      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0x1Cu);
LABEL_17:

      ++v8;
      v9 = v7;
      if ([v5 count] <= v8)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = 0;
LABEL_20:
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 count], v7);
LABEL_21:
}

void sub_1000032F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_100003454(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    AppAttest_AppAttestation_Assert();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 277;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_100003704(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    AppAttest_AppAttestation_AssertWithTeamIdentifier();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 297;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_1000039B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    AppAttest_AppAttestation_SignWithTeamIdentifier();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 317;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

uint64_t sub_100003D20(uint64_t a1)
{
  AppAttest_WebAuthentication_IsSupported();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_100003E40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    IsSupportedWithAuditToken = AppAttest_DeviceAttestation_IsSupportedWithAuditToken();
    (*(*(a1 + 32) + 16))(*(a1 + 32), IsSupportedWithAuditToken, 0, v8);
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 364;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_1000040E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    memset(buf, 0, 32);
    v4 = [WeakRetained connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v11 = *(a1 + 56);
    v12 = v10;
    AppAttest_AppAttestation_GetKey();
  }

  else
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCClientHandler.m";
      *&buf[12] = 1024;
      *&buf[14] = 389;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create strong reference to self.", buf, 0x12u);
    }
  }
}

void sub_100004294(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v6 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 localizedDescription];
      v19 = 136315650;
      v20 = "DCClientHandler.m";
      v21 = 1024;
      v22 = 396;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get key properties. { error=%@ }", &v19, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [[SecKeyProxy alloc] initWithKey:a2];
    [*(a1 + 32) setKeyProxy:v9];

    if (qword_100010D08 != -1)
    {
      sub_1000062FC();
    }

    v10 = qword_100010D00;
    if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 keyProxy];
      v14 = [*(a1 + 32) keyProxy];
      v15 = [v14 endpoint];
      v19 = 136315906;
      v20 = "DCClientHandler.m";
      v21 = 1024;
      v22 = 402;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created key proxy. { keyProxy=%@, endpoint=%@ }", &v19, 0x26u);
    }

    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) keyProxy];
    v18 = [v17 endpoint];
    (*(v16 + 16))(v16, v18, 0);
  }
}

void sub_100005080(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.devicecheck.server.processing", v1);
  v3 = qword_100010CF8;
  qword_100010CF8 = v2;

  if (qword_100010D08 != -1)
  {
    sub_1000062FC();
  }

  v4 = qword_100010D00;
  if (os_log_type_enabled(qword_100010D00, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "DCClientHandler.m";
    v7 = 1024;
    v8 = 556;
    v9 = 2080;
    label = dispatch_queue_get_label(qword_100010CF8);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created server processing queue. { queueName=%s }", &v5, 0x1Cu);
  }
}

void sub_1000052E0(id a1)
{
  qword_100010D00 = os_log_create("com.apple.devicecheck", "dcd");

  _objc_release_x1();
}

void sub_100005324(id a1)
{
  qword_100010D10 = os_log_create("com.apple.devicecheck", "aai");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = +[DCBGSTaskController sharedInstance];
  v1 = +[DCTaskCreator create];
  if (([v0 registerForTask:v1] & 1) == 0)
  {
    if (qword_100010D28 != -1)
    {
      sub_100006374();
    }

    v2 = qword_100010D20;
    if (os_log_type_enabled(qword_100010D20, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = [v1 taskID];
      *buf = 136315650;
      v28 = "main.m";
      v29 = 1024;
      v30 = 35;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to register DC BGST task. { taskID=%@ }", buf, 0x1Cu);
    }
  }

  v16 = v1;
  v5 = +[AppAttestTaskCreator create];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (([v0 registerForTask:v10] & 1) == 0)
        {
          if (qword_100010D28 != -1)
          {
            sub_100006388();
          }

          v11 = qword_100010D20;
          if (os_log_type_enabled(qword_100010D20, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            v13 = [v10 taskID];
            *v21 = 136315650;
            v22 = "main.m";
            v23 = 1024;
            v24 = 41;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to register AA BGST task. { taskID=%@ }", v21, 0x1Cu);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:buf count:16];
    }

    while (v7);
  }

  v14 = +[DCXPCListener sharedInstance];
  [v14 start];

  CFRunLoopRun();
  return 0;
}

void sub_1000056E4(id a1)
{
  qword_100010D20 = os_log_create("com.apple.devicecheck", "dcd");

  _objc_release_x1();
}

void sub_1000057D4(uint64_t a1)
{
  if (qword_100010D50 != -1)
  {
    sub_1000063B0();
  }

  v2 = qword_100010D48;
  if (os_log_type_enabled(qword_100010D48, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "FeatureFlagsManager.m";
    v6 = 1024;
    v7 = 23;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App Attest Modernization feature flag enabled { enabled=%d }.", &v4, 0x18u);
  }
}

void sub_10000595C(uint64_t a1)
{
  if (qword_100010D50 != -1)
  {
    sub_1000063B0();
  }

  v2 = qword_100010D48;
  if (os_log_type_enabled(qword_100010D48, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "FeatureFlagsManager.m";
    v6 = 1024;
    v7 = 35;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Mac feature flag enabled { enabled=%d }.", &v4, 0x18u);
  }
}

void sub_100005AE4(uint64_t a1)
{
  if (qword_100010D50 != -1)
  {
    sub_1000063B0();
  }

  v2 = qword_100010D48;
  if (os_log_type_enabled(qword_100010D48, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "FeatureFlagsManager.m";
    v6 = 1024;
    v7 = 47;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App Attest Extension Support feature flag enabled { enabled=%d }.", &v4, 0x18u);
  }
}

void sub_100005BC0(id a1)
{
  qword_100010D48 = os_log_create("com.apple.devicecheck", "aai");

  _objc_release_x1();
}

CFTypeRef sub_100005C28(void *a1, void *a2, uint64_t a3, OSStatus *a4, void *a5)
{
  v8 = a1;
  v9 = a2;
  v10 = v9;
  result = 0;
  if (v9)
  {
    v19[0] = kSecAttrLabel;
    v19[1] = kSecClass;
    v20[0] = v9;
    v20[1] = kSecClassKey;
    v19[2] = kSecReturnRef;
    v19[3] = kSecUseDataProtectionKeychain;
    v20[2] = &__kCFBooleanTrue;
    v20[3] = &__kCFBooleanTrue;
    v19[4] = kSecUseSystemKeychain;
    v20[4] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];
    v12 = [v11 mutableCopy];

    if (v8)
    {
      [v12 setObject:v8 forKeyedSubscript:kSecAttrAccessGroup];
    }

    v13 = SecItemCopyMatching(v12, &result);
    if (v13)
    {
      v14 = createAppAttestError();

      v15 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = result;
      result = 0;

      v14 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v14 = createAppAttestError();
  v15 = 0;
  v13 = -1;
  if (a4)
  {
LABEL_8:
    *a4 = v13;
  }

LABEL_9:
  if (a5 && !v15)
  {
    v16 = v14;
    *a5 = v14;
  }

  if (result)
  {
    CFRelease(result);
  }

  return v15;
}

uint64_t sub_100005E44(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v6)
  {
    v11 = createAppAttestError();
    v9 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v14[0] = kSecAttrLabel;
  v14[1] = kSecAttrGeneric;
  v15[0] = v6;
  v15[1] = v6;
  v14[2] = kSecAttrAccount;
  v14[3] = kSecAttrService;
  v15[2] = v6;
  v15[3] = v6;
  v14[4] = kSecClass;
  v14[5] = kSecUseDataProtectionKeychain;
  v15[4] = kSecClassGenericPassword;
  v15[5] = &__kCFBooleanTrue;
  v14[6] = kSecUseSystemKeychain;
  v15[6] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:7];
  v9 = [v8 mutableCopy];

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:kSecAttrAccessGroup];
  }

  v10 = SecItemDelete(v9);
  v11 = 0;
  v12 = 1;
  if (v10 != -25300 && v10)
  {
    v11 = createAppAttestError();
    if (!a3)
    {
LABEL_7:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v11 = v11;
    v12 = 0;
    *a3 = v11;
  }

LABEL_10:

  return v12;
}

uint64_t sub_100006034(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v7 && v9)
  {
    v19 = 0;
    v11 = sub_100005E44(v8, v9, &v19);
    v12 = v19;
    if (v11)
    {
      v20[0] = kSecAttrLabel;
      v20[1] = kSecAttrGeneric;
      v21[0] = v10;
      v21[1] = v10;
      v20[2] = kSecAttrAccount;
      v20[3] = kSecAttrService;
      v21[2] = v10;
      v21[3] = v10;
      v20[4] = kSecClass;
      v20[5] = kSecValueData;
      v21[4] = kSecClassGenericPassword;
      v21[5] = v7;
      v20[6] = kSecUseDataProtectionKeychain;
      v20[7] = kSecUseSystemKeychain;
      v21[6] = &__kCFBooleanTrue;
      v21[7] = &__kCFBooleanTrue;
      v20[8] = kSecAttrAccessible;
      v21[8] = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
      v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:9];
      v14 = [v13 mutableCopy];

      if (v8)
      {
        [v14 setObject:v8 forKeyedSubscript:kSecAttrAccessGroup];
      }

      if (!SecItemAdd(v14, 0))
      {
        v17 = 1;
        goto LABEL_14;
      }

      v15 = createAppAttestError();
    }

    else
    {
      v15 = createAppAttestError();

      v14 = 0;
    }

    v12 = v15;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = createAppAttestError();
    v14 = 0;
    if (!a4)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_14;
    }
  }

  v16 = v12;
  v17 = 0;
  *a4 = v12;
LABEL_14:

  return v17;
}