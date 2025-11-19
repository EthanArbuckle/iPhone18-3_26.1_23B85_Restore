void sub_10000174C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 40) _setOffWristPreference:*(a1 + 48)];
  }

  (*(*(a1 + 32) + 16))();
}

id sub_100001F64(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100001F98(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100002274(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000238C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  [*(*(a1 + 32) + 56) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_1000034B0(id a1, PURemoteDeviceState *a2, NSError *a3)
{
  v3 = a3;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = @"FAILED to request";
    }

    else
    {
      v5 = @"Requested";
    }

    if (v3)
    {
      v6 = [NSString stringWithFormat:@" (%@)", v3];
    }

    else
    {
      v6 = &stru_100018D80;
    }

    *buf = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ notification of next unlock%@", buf, 0x16u);
    if (v3)
    {
    }
  }
}

void sub_100003648(id a1, PURemoteDeviceState *a2, NSError *a3)
{
  v3 = a3;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = @"FAILED to request";
    }

    else
    {
      v5 = @"Requested";
    }

    if (v3)
    {
      v6 = [NSString stringWithFormat:@" (%@)", v3];
    }

    else
    {
      v6 = &stru_100018D80;
    }

    *buf = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ disabling only remote unlock%@", buf, 0x16u);
    if (v3)
    {
    }
  }
}

void sub_100003A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003A1C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained responseHandlerForRequestMessageID:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v6);
    [WeakRetained removeResponseHandlerForRequestMessageID:*(a1 + 32)];
  }
}

void sub_100003B60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [NSNumber numberWithBool:*(a1 + 40)];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "peer requestDeviceSetWristDetectionDisabled:%@, error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t sub_100003E38(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000043A8(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = pu_log();
  v13 = v12;
  if (a2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unlock pairing succeeded; notifying other device of new state", buf, 2u);
    }

    [*(a1 + 32) _notifyCurrentStateReliably:1 completionHandler:&stru_100018770];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D174();
    }

    v14 = +[MCProfileConnection sharedConnection];
    v15 = [v14 changePasscodeFrom:v11 to:v10 outError:0];

    v16 = pu_log();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully changed passcode back. You are now at least no worse off than you were.", v18, 2u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000D1E4();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000453C(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = pu_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D220();
    }
  }
}

void sub_100004594(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = pu_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    v8 = [NSNumber numberWithBool:*(a1 + 72)];
    *buf = 138412802;
    v27 = v7;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "enableUnlockWithDevice returned success %@ %@ in state %@", buf, 0x20u);
  }

  if (!a2)
  {
    v12 = pu_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithBool:*(a1 + 72)];
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resetting passcode state = %@", buf, 0xCu);
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v11 = *(*(a1 + 56) + 16);
    goto LABEL_9;
  }

  if (*(a1 + 72) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 56) + 16);
LABEL_9:
    v11();
    goto LABEL_14;
  }

  v16 = [*(a1 + 48) _createAndStoreNewPasscodeWithCurrentPasscode:*(a1 + 32)];
  if (v16)
  {
    v17 = +[SFUnlockManager sharedUnlockManager];
    v18 = IDSDefaultPairedDevice;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100004874;
    v21[3] = &unk_1000187C0;
    v25 = *(a1 + 72);
    v24 = *(a1 + 56);
    v22 = *(a1 + 32);
    v23 = v16;
    [v17 enableUnlockWithDevice:v18 fromKey:0 withPasscode:v23 completionHandler:v21];

    v19 = v24;
  }

  else
  {
    v20 = *(a1 + 64);
    v19 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:0 userInfo:0];
    (*(v20 + 16))(v20, 0, v19);
  }

LABEL_14:
}

void sub_100004874(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = pu_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:*(a1 + 56)];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting passcode state = %@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void sub_100004AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pu_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D290();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "wrist detection enabled by user", v6, 2u);
    }

    [*(a1 + 32) completeEnableOnlyRemoteUnlockWithPasscode:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

void sub_1000050B8(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = pu_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D378();
    }
  }
}

void sub_100005A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose((v50 - 160), 8);
  objc_destroyWeak(&a50);
  _Block_object_dispose((v50 - 200), 8);
  objc_destroyWeak((v50 - 168));
  _Unwind_Resume(a1);
}

void sub_100005AF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005C5C;
  v9[3] = &unk_100018858;
  v10 = *(a1 + 32);
  objc_copyWeak(&v12, (a1 + 56));
  v11 = *(a1 + 40);
  v7 = objc_retainBlock(v9);
  v8 = v7;
  if (v6)
  {
    (v7[2])(v7, v6);
  }

  else if (+[PUPasscodeState hasSEP]|| *(a1 + 64) != 5)
  {
    v8[2](v8, 0);
  }

  else
  {
    [PUPasscodeState setWristDetectionDisabled:1 completion:v8];
  }

  objc_destroyWeak(&v12);
}

void sub_100005C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pu_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D464(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) actionID]);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "remote action %@ complete", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendResultOfMessage:100 requestID:*(a1 + 40) success:v3 == 0 error:v3];
}

void sub_100005D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "wrist detection enabled", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100005E24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "wrist detection disabled", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100005EBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "wrist detection prepared, putting up passcode screen for unlock pairing", buf, 2u);
  }

  v5 = [*(a1 + 32) passcodeType];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(v6 + 32);
  v9 = *(a1 + 64);
  if (v3)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006068;
    v13[3] = &unk_1000188A8;
    v10 = &v14;
    v14 = v3;
    v15 = *(a1 + 56);
    [v8 peer:v6 remoteDeviceRequestsRemoteAction:v9 type:v5 existingPasscode:v7 showAsReprompt:1 completionHandler:v13];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006168;
    v11[3] = &unk_100018658;
    v10 = &v12;
    v12 = *(a1 + 56);
    [v8 peer:v6 remoteDeviceRequestsRemoteAction:v9 type:v5 existingPasscode:v7 completionHandler:v11];
  }
}

void sub_100006068(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v6 = [PUPasscodeState setOffWristEnabled:0 withContext:*(a1 + 32)];
    v7 = pu_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "enabled wrist detection and paired unlock, error %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100006168(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v6 = [PUPasscodeState setOffWristEnabled:0 withContext:0];
    v7 = pu_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "enabled wrist detection and paired unlock, error %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100006268(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006280(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100006404(id a1, PURemoteDeviceState *a2, NSError *a3)
{
  v3 = a3;
  v4 = pu_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D528();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabled only remote unlock", v6, 2u);
  }
}

id sub_100007008(void *a1, int a2)
{
  v3 = a1;
  v4 = +[NSMutableDictionary dictionary];
  sub_100007268(v3);
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrIsPermanent];
  [v4 setObject:v3 forKeyedSubscript:kSecAttrApplicationTag];
  if (a2)
  {
    [v4 setObject:kSecAttrAccessibleAlwaysThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
  }

  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:kSecAttrKeyTypeRSA forKeyedSubscript:kSecAttrKeyType];
  [v5 setObject:&off_1000191B8 forKeyedSubscript:kSecAttrKeySizeInBits];
  [v5 setObject:v4 forKeyedSubscript:kSecPrivateKeyAttrs];
  [v5 setObject:&__NSDictionary0__struct forKeyedSubscript:kSecPublicKeyAttrs];
  [v5 setObject:@"com.apple.paired-unlock" forKeyedSubscript:kSecAttrAccessGroup];
  privateKey = 0;
  publicKey = 0;
  v6 = 0;
  if (!SecKeyGeneratePair(v5, &publicKey, &privateKey))
  {
    v7 = +[NSMutableDictionary dictionary];
    [v7 setObject:v3 forKeyedSubscript:kSecAttrApplicationTag];
    [v7 setObject:kSecClassKey forKeyedSubscript:kSecClass];
    [v7 setObject:kSecAttrKeyTypeRSA forKeyedSubscript:kSecAttrKeyType];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
    [v7 setObject:publicKey forKeyedSubscript:kSecValueRef];
    [v7 setObject:@"com.apple.paired-unlock" forKeyedSubscript:kSecAttrAccessGroup];
    result = 0;
    if (SecItemAdd(v7, &result))
    {
      v6 = 0;
    }

    else
    {
      v6 = result;
    }
  }

  return v6;
}

void sub_100007268(void *a1)
{
  v3[0] = kSecClass;
  v3[1] = kSecAttrAccessGroup;
  v4[0] = kSecClassKey;
  v4[1] = @"com.apple.paired-unlock";
  v3[2] = kSecAttrApplicationTag;
  v3[3] = kSecAttrKeyType;
  v4[2] = a1;
  v4[3] = kSecAttrKeyTypeRSA;
  v1 = a1;
  v2 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];

  SecItemDelete(v2);
}

CFTypeRef sub_100007354(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:v5 forKeyedSubscript:kSecAttrApplicationTag];

  [v6 setObject:kSecClassKey forKeyedSubscript:kSecClass];
  [v6 setObject:kSecAttrKeyTypeRSA forKeyedSubscript:kSecAttrKeyType];
  v7 = &kSecAttrKeyClassPublic;
  if (!a2)
  {
    v7 = &kSecAttrKeyClassPrivate;
  }

  [v6 setObject:*v7 forKeyedSubscript:kSecAttrKeyClass];
  [v6 setObject:@"com.apple.paired-unlock" forKeyedSubscript:kSecAttrAccessGroup];
  v8 = &kSecReturnRef;
  if (!a3)
  {
    v8 = &kSecReturnData;
  }

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:*v8];
  result = 0;
  if (SecItemCopyMatching(v6, &result))
  {
    v9 = 0;
  }

  else
  {
    v9 = result;
  }

  return v9;
}

CFTypeRef sub_1000074AC(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:v5 forKeyedSubscript:kSecAttrApplicationTag];

  [v7 setObject:kSecClassKey forKeyedSubscript:kSecClass];
  [v7 setObject:kSecAttrKeyClassPublic forKeyedSubscript:kSecAttrKeyClass];
  [v7 setObject:kSecAttrKeyTypeRSA forKeyedSubscript:kSecAttrKeyType];
  if (a3)
  {
    [v7 setObject:kSecAttrAccessibleAlwaysThisDeviceOnly forKeyedSubscript:kSecAttrAccessible];
  }

  [v7 setObject:@"com.apple.paired-unlock" forKeyedSubscript:kSecAttrAccessGroup];
  SecItemDelete(v7);
  [v7 setObject:v6 forKeyedSubscript:kSecValueData];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
  result = 0;
  if (SecItemAdd(v7, &result))
  {
    v8 = 0;
  }

  else
  {
    v8 = result;
  }

  return v8;
}

uint64_t PUProtoPasscodeStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v43[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43[0] & 0x7F) << v5;
        if ((v43[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 5)
      {
        if (v13 == 4)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v43[0] & 0x7F) << v28;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_65;
            }
          }

          v20 = (v30 != 0) & ~[a2 hasError];
LABEL_65:
          v40 = 19;
          goto LABEL_72;
        }

        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43[0] & 0x7F) << v14;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_69;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_69:
          v40 = 18;
LABEL_72:
          *(a1 + v40) = v20;
          goto LABEL_73;
        }

        goto LABEL_62;
      }

      v27 = objc_alloc_init(PUProtoPasscodePolicy);
      objc_storeStrong((a1 + 8), v27);
      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || !PUProtoPasscodePolicyReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_73:
      v41 = [a2 position];
      if (v41 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v36 |= (v43[0] & 0x7F) << v34;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v11 = v35++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_67;
        }
      }

      v20 = (v36 != 0) & ~[a2 hasError];
LABEL_67:
      v40 = 16;
      goto LABEL_72;
    }

    if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v43[0] & 0x7F) << v21;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_71;
        }
      }

      v20 = (v23 != 0) & ~[a2 hasError];
LABEL_71:
      v40 = 17;
      goto LABEL_72;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoDidUnlockReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoGetPasscodeStateReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoStartRemoteActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___PUProtoStartRemoteAction__actionID;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___PUProtoStartRemoteAction__actionID;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___PUProtoStartRemoteAction__passcodeType;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___PUProtoStartRemoteAction__passcodeType;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoRemoveLockoutReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoRequestCompletedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v29 = PBReaderReadData();
        v30 = *(a1 + 8);
        *(a1 + 8) = v29;

        goto LABEL_52;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(PUProtoPasscodeState);
      objc_storeStrong((a1 + 24), v21);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !PUProtoPasscodeStateReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_52:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v33[0] & 0x7F) << v22;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_51;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_51:
      *(a1 + 16) = v28;
      goto LABEL_52;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_47;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
      *(a1 + 32) = v20;
      goto LABEL_52;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoRequestDisableOnlyRemoteUnlockReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoPasscodePolicyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_44;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_40;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_40:
        *(a1 + 12) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PUProtoSetShouldNotifyNextUnlockReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000AFE8(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = pu_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "com.apple.notifyd.matching event received", buf, 2u);
  }

  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B0D8;
  block[3] = &unk_1000189A0;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, block);
}

void sub_10000B0D8(uint64_t a1)
{
  string = xpc_dictionary_get_string(*(a1 + 32), _xpc_event_key_name);
  if (!strcmp(string, "KeybagStateChanged"))
  {
    v2 = pu_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "com.apple.notifyd.matching KeybagStateChanged - event received", v9, 2u);
    }

    v3 = MKBGetDeviceLockState();
    if ((v3 - 3) <= 0xFFFFFFFD)
    {
      v4 = v3;
      v5 = [qword_10001E868 gizmoWantsNotificationOnNextUnlock];
      v6 = pu_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notifying watch of unlock", buf, 2u);
        }

        v8 = [qword_10001E868 peer];
        [v8 notifyThisDeviceDidUnlock];

        [qword_10001E868 setGizmoWantsNotificationOnNextUnlock:0];
      }

      else
      {
        if (v7)
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch hasn’t asked for a notification of unlock; not bothering", v10, 2u);
        }
      }

      if (v4 == 3)
      {
        [qword_10001E868 _handlePasscodeRemoval];
      }
    }
  }
}

void sub_10000B774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_10000B7B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = objc_loadWeakRetained((a1 + 32));
    [v3 _removeConnection:v4];

    v5 = pu_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Server connection invalidated!", v6, 2u);
    }
  }
}

void sub_10000C0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C0D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained connections];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) remoteObjectProxy];
        [v13 remoteDeviceDidCompleteRemoteAction:v6 == 0 remoteDeviceState:v5 error:v6];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

void sub_10000C330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000C34C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained connections];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) remoteObjectProxy];
        [v11 didUnpairForUnlock:v4 == 0 error:v4];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void sub_10000C4F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 40) copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [v10 didEnableOnlyRemoteUnlock:v4 == 0 error:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_10000C694(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 40) copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [v10 didDisableOnlyRemoteUnlock:v4 == 0 error:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

uint64_t sub_10000C854(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000C8E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 40) copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxy];
        [v10 remoteDeviceDidRemoveLockout:v4 == 0 error:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_10000CA8C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = pu_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000D6E0(v2, v3);
    }
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_10001E888 != -1)
  {
    sub_10000D758();
  }

  v1 = objc_alloc_init(PUServer);
  v2 = qword_10001E870;
  qword_10001E870 = v1;

  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];

  return 0;
}

void sub_10000CBDC(id a1)
{
  v21 = &off_1000191D0;
  v22 = &stru_100018AE0;
  v1 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v2 = qword_10001E878;
  qword_10001E878 = v1;

  v3 = objc_opt_new();
  v4 = qword_10001E880;
  qword_10001E880 = v3;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = qword_10001E878;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [qword_10001E878 objectForKeyedSubscript:v9];
        v11 = [v9 integerValue];
        v12 = v10;
        v13 = [NSNumber numberWithInteger:v11];
        NSLog(@"setting up signal handler for %@", v13);

        signal(v11, 1);
        v14 = dispatch_source_create(&_dispatch_source_type_signal, v11, 0, &_dispatch_main_q);
        dispatch_source_set_event_handler(v14, v12);

        dispatch_resume(v14);
        [qword_10001E880 setObject:v14 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void sub_10000CDF8(id a1)
{
  v1 = pu_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM has been received, exiting...", v2, 2u);
  }

  exit(0);
}

void sub_10000CE58(char a1, uint64_t a2, NSObject *a3)
{
  v5 = [NSNumber numberWithBool:a1 & 1];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "couldn't set wrist detection disabled to %@, error %@", &v6, 0x16u);
}

void sub_10000CF18()
{
  sub_100006CC8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Send of message with id:%@ FAILED with error: %@", v2, 0x16u);
}

void sub_10000CF9C()
{
  sub_100006CC8();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D00C()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D048()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D084()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D0C0()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D0FC()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D138()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D174()
{
  sub_100006CC8();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D1E4()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D220()
{
  sub_100006CC8();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D290()
{
  sub_100006CC8();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D300()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D33C()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D378()
{
  sub_100006CC8();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D3E8(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_100006CB0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000D464(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) actionID]);
  sub_100006CC8();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "remote action %@ complete, error = %@", v6, 0x16u);
}

void sub_10000D528()
{
  sub_100006CC8();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D598()
{
  sub_100006CBC();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000D5D4()
{
  sub_100006CC8();
  sub_100006CB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000D644(void *a1, NSObject *a2)
{
  v3 = [a1 serviceName];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Connection is missing required entitlement. Rejecting. Service Name: %@", &v4, 0xCu);
}

void sub_10000D6E0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "could not restore wrist detection setting %@", &v2, 0xCu);
}