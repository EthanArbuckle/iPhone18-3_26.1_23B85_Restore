void sub_1006BB048(id a1, CSDBThreadedRecordStore *a2)
{
  v2 = a2;
  CSDBThreadedRecordStoreRegisterClass();
  CSDBThreadedRecordStoreRegisterClass();
}

uint64_t sub_1006BB09C()
{
  CSDBSqliteConnectionPerformSQL();
  CSDBSqliteConnectionPerformSQL();
  CSDBSqliteConnectionPerformSQL();

  return CSDBSqliteConnectionPerformSQL();
}

BOOL sub_1006BB104(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if ([v8 length])
  {
    v9 = CSDBSqliteConnectionPerformSQL();
    v10 = v9 == 101 || v9 == 0;
    if (v9 == 101 || !v9)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

BOOL sub_1006BB27C(_BOOL8 a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ([v7 length] && objc_msgSend(v8, "length") && objc_msgSend(v9, "length"))
    {
      v10 = [[NSString alloc] initWithFormat:@"SELECT %@ FROM %@", v7, v9];
      v11 = CSDBSqliteConnectionPerformSQL();
      if ((v11 - 100) >= 2 && v11)
      {
        v13 = [[NSString alloc] initWithFormat:@"IDS DB migration failed to add column %@ to the %@ table.", v7, v9];
        v14 = [[NSString alloc] initWithFormat:@"Added %@ column to the %@ table.", v7, v9];
        v15 = [[NSString alloc] initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ %@;", v9, v7, v8];
        a1 = sub_1006BB104(a1, v13, v14, v15);
      }

      else
      {
        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v7;
          v19 = 2112;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The %@ column already exists on %@, skipping this step.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        a1 = 1;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id sub_1006BBCF0(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@":"])
  {
    goto LABEL_2;
  }

  if ([v1 _appearsToBeEmail])
  {
    v2 = _IDSCopyIDForEmailAddress();
  }

  else if ([v1 _appearsToBePhoneNumber])
  {
    v2 = _IDSCopyIDForPhoneNumberWithOptions();
  }

  else if ([v1 _appearsToBePseudonymID])
  {
    v2 = [v1 _URIFromCanonicalizedPseudonymID];
  }

  else
  {
    if (![v1 _appearsToBeTemporaryID])
    {
LABEL_2:
      v2 = v1;
      goto LABEL_11;
    }

    v2 = [v1 _URIFromCanonicalizedTemporaryID];
  }

LABEL_11:
  v3 = v2;

  return v3;
}

int64_t sub_1006BD7E8(id a1, NSUUID *a2, NSUUID *a3)
{
  v4 = a3;
  v5 = [(NSUUID *)a2 UUIDString];
  v6 = [(NSUUID *)v4 UUIDString];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

void sub_1006BDF9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      v4 = [*(a1 + 32) utunDeliveryController];
      [v4 addUTunPeerWithDeviceUniqueID:IDSDeviceDefaultPairedDeviceUniqueID btuuid:*(a1 + 40)];
    }

    v5 = [*(a1 + 32) utunDeliveryController];
    [v5 prepareForQuickSwitch];

    kdebug_trace();
    v6 = [*(a1 + 32) pairingManager];
    [v6 addLocalPairedDevice:*(a1 + 40) BTOutOfBandKey:*(a1 + 48) shouldPairDirectlyOverIPsec:*(a1 + 88) pairingType:*(a1 + 80) bluetoothMACAddress:*(a1 + 56)];

    kdebug_trace();
    kdebug_trace();
    v7 = [*(a1 + 32) accountController];
    [v7 startLocalSetup];

    kdebug_trace();
    kdebug_trace();
    v8 = [*(a1 + 32) utunDeliveryController];
    [v8 localSetupStarted];

    v9 = [*(a1 + 32) utunController];
    [v9 startLocalSetup];

    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 64);
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(Daemon) Told to add a paired device %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    kdebug_trace();
    v12 = [*(a1 + 32) utunController];
    [v12 addPairedDevice:*(a1 + 40) shouldPairDirectlyOverIPsec:*(a1 + 88)];
  }
}

id sub_1006BE430(id a1, IDSEndpoint *a2)
{
  v2 = a2;
  v3 = [(IDSEndpoint *)v2 pushToken];
  if (v3)
  {
    v4 = [(IDSEndpoint *)v2 KTLoggableData];

    if (v4)
    {
      v5 = [IDSKeyTransparencyEntry alloc];
      v6 = [(IDSEndpoint *)v2 pushToken];
      v7 = [(IDSEndpoint *)v2 KTLoggableData];
      v8 = [(IDSEndpoint *)v2 KTDeviceSignature];
      v3 = [(IDSKeyTransparencyEntry *)v5 initWithPushToken:v6 loggableData:v7 signedData:v8];

      [(IDSKeyTransparencyEntry *)v3 setKtCapable:[(IDSEndpoint *)v2 ktCapableFlag]];
      v9 = [(IDSEndpoint *)v2 capabilities];
      -[IDSKeyTransparencyEntry setSupportConditionalEnforcement:](v3, "setSupportConditionalEnforcement:", [v9 valueForCapability:IDSRegistrationPropertySupportsConditionalCKVEnforcement] != 0);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1006BE86C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v3 error];

    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v6 = [v3 value];

    (*(v5 + 16))(v5, v6, 0);
  }
}

void sub_1006BEBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8)
{
  v10 = a8;
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (a6)
    {
      v12 = @"YES";
    }

    *buf = 138412546;
    v28 = v12;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed query for forced verification. { success: %@, errorDictionary: %@ }", buf, 0x16u);
  }

  v13 = [[IDSPeerIDKey alloc] initWithService:*(a1 + 32) fromURI:*(a1 + 40) toURI:*(a1 + 48)];
  v14 = [*(a1 + 56) _peerIDManager];
  v15 = [v14 pleaseDontCopyCacheDictionaryRepresentation];
  v16 = [v15 objectForKeyedSubscript:v13];

  v17 = [v16 keyTransparencyContext];
  v18 = [v17 ticket];

  v19 = [IDSKeyTransparencyIndex alloc];
  v20 = *(a1 + 32);
  v21 = [v16 keyTransparencyContext];
  v22 = [v21 accountKey];
  v23 = [(IDSKeyTransparencyIndex *)v19 initWithServiceIdentifier:v20 accountKey:v22 URI:*(a1 + 48)];

  v24 = [*(a1 + 56) _verifier];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1006BEE08;
  v25[3] = &unk_100BDA9F0;
  v26 = *(a1 + 64);
  [v24 forceVerificationWithIndex:v23 ticket:v18 completion:v25];
}

void sub_1006BEEDC(uint64_t a1)
{
  v2 = [*(a1 + 32) _verifier];
  v4 = [v2 fetchTrustedDevicesFromKVS];

  if ([v4 count])
  {
    v3 = [v4 __imArrayByApplyingBlock:&stru_100BE5380];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1006BF068(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 value];

  v4 = [v3 error];

  (*(*(a1 + 32) + 16))();
}

void sub_1006BF1A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v8 objectForKey:{v13, v16}];
        v15 = [v14 dictionaryRepresentation];
        if (v15)
        {
          CFDictionarySetValue(v7, v13, v15);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1006BF3C8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v20 = a1;
  v7 = a2;
  v8 = a3;
  v21 = a5;
  theDict = objc_alloc_init(NSMutableDictionary);
  v9 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v10 objectForKey:{v15, v20}];
        v17 = [v8 objectForKey:v15];
        v18 = [v16 dictionaryRepresentation];
        if (v18)
        {
          CFDictionarySetValue(theDict, v15, v18);
        }

        v19 = [v17 dictionaryRepresentation];
        if (v19)
        {
          CFDictionarySetValue(v9, v15, v19);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  (*(*(v20 + 32) + 16))();
}

void sub_1006BFF30(id a1)
{
  v1 = [[IDSRestoreMonitor alloc] initWithTimerBlock:&stru_100BE53E0];
  v2 = qword_100CBF528;
  qword_100CBF528 = v1;

  _objc_release_x1(v1, v2);
}

IMTimer *__cdecl sub_1006BFF78(id a1, id a2, SEL a3)
{
  v4 = a2;
  v5 = [IMTimer alloc];
  v6 = im_primary_queue();
  v7 = [v5 initWithTimeInterval:@"com.apple.identityservicesd-backup-check" name:0 shouldWake:v4 target:a3 selector:0 userInfo:v6 queue:60.0];

  return v7;
}

void sub_1006C060C(id a1)
{
  v1 = objc_alloc_init(IDSFirewallStore);
  v2 = qword_100CBF540;
  qword_100CBF540 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006C0A18(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentLocalTime];
  v9 = [*(a1 + 40) uri];
  v3 = [v9 prefixedURI];
  v4 = [*(a1 + 40) mergeID];
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  v7 = [*(a1 + 40) lastSeen];
  [v7 timeIntervalSince1970];
  sub_1006F9F60(v3, v4, v5, v6, v8, v2);
}

void sub_1006C0AD0(uint64_t a1)
{
  v15 = [*(a1 + 32) _currentLocalTime];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v14 = *v17;
    do
    {
      v4 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v16 + 1) + 8 * v4);
        v6 = [*(a1 + 48) uri];
        v7 = [v6 prefixedURI];
        v8 = [*(a1 + 48) mergeID];
        v9 = *(a1 + 56);
        v10 = *(a1 + 60);
        v11 = [*(a1 + 48) lastSeen];
        [v11 timeIntervalSince1970];
        sub_1006F9E50(v7, v8, v5, v9, v10, v12, v15);

        v4 = v4 + 1;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

id sub_1006C0EAC(uint64_t a1)
{
  sub_1006FA2A0([*(a1 + 32) allObjects], *(a1 + 48), *(a1 + 52));
  result = [*(a1 + 40) count];
  if (result)
  {
    v3 = [*(a1 + 40) allObjects];
    v4 = *(a1 + 48);
    v5 = *(a1 + 52);

    return sub_1006FA3D4(v3, v4, v5);
  }

  return result;
}

id sub_1006C1164(uint64_t a1)
{
  sub_1006FA060([*(a1 + 32) allObjects], *(a1 + 48));
  result = [*(a1 + 40) count];
  if (result)
  {
    v3 = [*(a1 + 40) allObjects];
    v4 = *(a1 + 48);

    return sub_1006FA180(v3, v4);
  }

  return result;
}

void sub_1006C1458(uint64_t a1)
{
  v2 = [*(a1 + 32) uri];
  *(*(*(a1 + 40) + 8) + 24) = sub_1006FA688([v2 prefixedURI], *(a1 + 48), *(a1 + 52));
}

uint64_t sub_1006C14C0(uint64_t a1)
{
  result = sub_1006FA8F4([*(a1 + 32) mergeID], *(a1 + 48), *(a1 + 52));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1006C1680(uint64_t a1)
{
  v2 = [*(a1 + 32) uri];
  *(*(*(a1 + 40) + 8) + 24) = sub_1006FA7C4([v2 prefixedURI], *(a1 + 48));
}

uint64_t sub_1006C16E4(uint64_t a1)
{
  result = sub_1006FAA30([*(a1 + 32) mergeID], *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1006C1810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C1828(uint64_t a1)
{
  v2 = [*(a1 + 32) _createFirewallRecordsFromSQLRecords:sub_1006FAB60(*(a1 + 48))];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1006C1970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C1988(uint64_t a1)
{
  v2 = [*(a1 + 32) _createFirewallRecordsFromSQLRecords:sub_1006FAC70(*(a1 + 48))];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1006C1DC0(id a1)
{
  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Performing initial database housekeeping", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "  => Setting cache size", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  sub_1004AA0EC();
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "  => Invalidating caches", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  sub_1004AA090();
}

void sub_1006C2134(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1006C215C(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSMutableString string];
    if (+[IMUserDefaults isFirewallEnabled])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    [v4 appendFormat:@"Is firewall user default enabled %@", v5];
    if (+[IMUserDefaults shouldFirewallDropForAllCategories])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    [v4 appendFormat:@"Should firewall drop for all categories %@", v6];
    v7 = 0;
    do
    {
      v8 = [WeakRetained getAllAllowedEntriesForCategory:v7];
      [v4 appendFormat:@"Entries for category %u: %@", v7, v8];

      v7 = (v7 + 1);
    }

    while (v7 != 12);
    v9[2](v9, v4);
  }

  else
  {
    v9[2](v9, 0);
  }
}

uint64_t sub_1006C22A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[IMUserDefaults isFirewallEnabled];
    v4 = @"NO";
    if (v3)
    {
      v4 = @"YES";
    }

    *buf = 138412290;
    v19[0] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Is firewall user default enabled %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v5 = +[IMUserDefaults isFirewallEnabled];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v16 = v6;
    _IDSLogV();
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[IMUserDefaults shouldFirewallDropForAllCategories];
    v9 = @"NO";
    if (v8)
    {
      v9 = @"YES";
    }

    *buf = 138412290;
    v19[0] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Should firewall drop for all categories %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = +[IMUserDefaults shouldFirewallDropForAllCategories];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    v16 = v11;
    _IDSLogV();
  }

  v12 = 0;
  do
  {
    v13 = [WeakRetained getAllAllowedEntriesForCategory:{v12, v16, v17}];
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v19[0]) = v12;
      WORD2(v19[0]) = 2112;
      *(v19 + 6) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Entries for category %u: %@", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v16 = v12;
      v17 = v13;
      _IDSLogV();
    }

    v12 = (v12 + 1);
  }

  while (v12 != 12);

  return 0;
}

void sub_1006C25E4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1006C2440);
  }

  _Unwind_Resume(a1);
}

void sub_1006C29D0(uint64_t a1)
{
  v2 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [*(a1 + 32) _currentLocalTime]);
  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:@"ids-firewall-record-expiration-time-in-seconds"];

  [v4 doubleValue];
  if (v5 == 0.0)
  {
    v5 = *(a1 + 40);
  }

  v6 = [v2 dateByAddingTimeInterval:-v5];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Removing entries older than %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = v6;
    _IDSLogV();
  }

  [v6 timeIntervalSince1970];
  sub_1006FAD80(v8);
  sub_1004AA090();
  [*(a1 + 32) _setDatabaseCloseTimerOnIvarQueue];
}

void *sub_1006C2C64(uint64_t a1, int a2)
{
  *(a1 + 16) = 0;
  *a1 = a2;
  result = malloc_type_malloc(16 * a2, 0x10800407411B482uLL);
  *(a1 + 8) = result;
  return result;
}

void sub_1006C2CB0(int *a1, int a2, void *a3)
{
  if (!*(a1 + 1))
  {
    v11 = +[IDSFoundationLog utunController];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = 136315138;
    *v25 = "SimpleUInt32ToObjectTable_SetObjectForKey";
    v12 = "%s: table empty";
    v13 = v11;
    v14 = 12;
    goto LABEL_22;
  }

  v6 = a3;
  v7 = a1[4];
  v8 = *(a1 + 1);
  if (v7 <= 0)
  {
    v15 = a1[4];
    LODWORD(v7) = 0;
LABEL_20:
    v21 = &v8[16 * v7];
    *v21 = a2;
    *(v21 + 1) = a3;
    a1[4] = v15 + 1;
    v22 = +[IDSFoundationLog utunController];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v23 = a1[4];
    v24 = 67109890;
    *v25 = a2;
    *&v25[4] = 1024;
    *&v25[6] = v7;
    LOWORD(v26) = 1024;
    *(&v26 + 2) = v23;
    HIWORD(v26) = 2112;
    v27 = a3;
    v12 = "UI32Table_Set: key %08X at %d (total elements: %d) store object %@";
    v13 = v22;
    v14 = 30;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v24, v14);
    return;
  }

  v9 = 0;
  v10 = 0;
  while (*&v8[v9] != a2)
  {
    ++v10;
    v9 += 16;
    if (v7 == v10)
    {
      goto LABEL_11;
    }
  }

  if (v7 != v10)
  {
    v19 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a1 + 1) + v9 + 8);
      v24 = 138412546;
      *v25 = v20;
      *&v25[8] = 2112;
      v26 = a3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "UI32Table_Set: replacing object %@ with %@", &v24, 0x16u);
    }

    v15 = a1[4] - 1;
    v8 = *(a1 + 1);
    LODWORD(v7) = v10;
    goto LABEL_20;
  }

LABEL_11:
  if (*a1 != v7)
  {
    v15 = a1[4];
    goto LABEL_20;
  }

  v8 = malloc_type_realloc(*(a1 + 1), 32 * v7, 0x10800407411B482uLL);
  v16 = +[IDSFoundationLog utunController];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v17)
    {
      v18 = *a1;
      v24 = 67109376;
      *v25 = v18;
      *&v25[4] = 1024;
      *&v25[6] = 2 * v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "UI32Table_Set: table resize from %d to %d", &v24, 0xEu);
    }

    *(a1 + 1) = v8;
    *a1 = 2 * v7;
    v15 = a1[4];
    goto LABEL_20;
  }

  if (v17)
  {
    v24 = 138412290;
    *v25 = a3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "UI32Table_Set: cannot allocate memory for %@", &v24, 0xCu);
  }
}

uint64_t sub_1006C2FC8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3 >= 1)
    {
      for (i = v2 + 8; *(i - 8) != a2; i += 16)
      {
        if (!--v3)
        {
          return 0;
        }
      }

      if (v3)
      {
        return *i;
      }
    }
  }

  else
  {
    v5 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "SimpleUInt32ToObjectTable_ObjectForKey_NoRetain";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: table empty", &v7, 0xCu);
    }
  }

  return 0;
}

void sub_1006C30B8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v8 = +[IDSFoundationLog utunController];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = 136315138;
    *v16 = "SimpleUInt32ToObjectTable_RemoveObjectForKey";
    v9 = "%s: table empty";
    v10 = v8;
    v11 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    return;
  }

  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  while (*(v2 + v6) != a2)
  {
    ++v7;
    v6 += 16;
    if (v5 == v7)
    {
      goto LABEL_10;
    }
  }

  if (v5 == v7)
  {
LABEL_10:
    v12 = +[IDSFoundationLog utunController];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v15 = 67109376;
    *v16 = a2;
    *&v16[4] = 1024;
    *&v16[6] = v5;
    v9 = "UI32Table_Remove: did not find %08X (from %d entries)";
    v10 = v12;
    v11 = 14;
    goto LABEL_12;
  }

  v13 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 8) + v6 + 8);
    v15 = 138412802;
    *v16 = v14;
    *&v16[8] = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "UI32Table_Remove: removing %@ @%d (from %d entries)", &v15, 0x18u);
  }

  if (v5 != 1)
  {
    *(*(a1 + 8) + 16 * v7) = *(*(a1 + 8) + 16 * v5 - 16);
  }

  --*(a1 + 16);
}

void *sub_1006C32C0(uint64_t a1, int a2)
{
  *(a1 + 16) = 0;
  *a1 = a2;
  result = malloc_type_malloc(16 * a2, 0x80040803F642BuLL);
  *(a1 + 8) = result;
  return result;
}

void sub_1006C3304(int *a1, void *a2, void *a3)
{
  if (!*(a1 + 1))
  {
    v10 = +[IDSFoundationLog utunController];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v22 = 136315138;
    *v23 = "SimpleNSStringToObjectTable_SetObjectForKey";
    v11 = "%s: table empty";
    v12 = v10;
    goto LABEL_9;
  }

  v6 = a3;
  v7 = a1[4];
  if (v7 > 0)
  {
    v8 = 0;
    v9 = 0;
    while (([*(*(a1 + 1) + v8) isEqualToString:a2] & 1) == 0)
    {
      ++v9;
      v8 += 16;
      if (v7 == v9)
      {
        goto LABEL_12;
      }
    }

    if (v7 != v9)
    {
      v20 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*(a1 + 1) + v8 + 8);
        v22 = 138412546;
        *v23 = v21;
        *&v23[8] = 2112;
        *v24 = a3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "NSSTable_Set: replacing object %@ with %@", &v22, 0x16u);
      }

      *(*(a1 + 1) + 16 * v9 + 8) = a3;
      LODWORD(v7) = v9;
      goto LABEL_18;
    }

LABEL_12:
    v14 = *(a1 + 1);
    if (*a1 != v7)
    {
      goto LABEL_17;
    }

    v14 = malloc_type_realloc(*(a1 + 1), 16 * (2 * v7), 0x80040803F642BuLL);
    v15 = +[IDSFoundationLog utunController];
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = *a1;
        v22 = 67109376;
        *v23 = v17;
        *&v23[4] = 1024;
        *&v23[6] = 2 * v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NSSTable_Set: table resize from %d to %d", &v22, 0xEu);
      }

      *(a1 + 1) = v14;
      *a1 = 2 * v7;
      goto LABEL_17;
    }

    if (!v16)
    {
      return;
    }

    v22 = 138412290;
    *v23 = a3;
    v11 = "NSSTable_Set: cannot allocate memory for %@";
    v12 = v15;
LABEL_9:
    v13 = 12;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
    return;
  }

  LODWORD(v7) = 0;
  v14 = *(a1 + 1);
LABEL_17:
  v14[2 * v7 + 1] = a3;
  ++a1[4];
  *(*(a1 + 1) + 16 * v7) = [a2 copy];
LABEL_18:
  v18 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1[4];
    v22 = 138413058;
    *v23 = a2;
    *&v23[8] = 1024;
    *v24 = v7;
    *&v24[4] = 1024;
    *&v24[6] = v19;
    v25 = 2112;
    v26 = a3;
    v11 = "NSSTable_Set: key %8@ at %d (total elements: %d) store object %@";
    v12 = v18;
    v13 = 34;
    goto LABEL_20;
  }
}

void sub_1006C361C(uint64_t a1, const char *a2)
{
  if (!*(a1 + 8))
  {
    v7 = +[IDSFoundationLog utunController];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 136315138;
    v15 = "SimpleNSStringToObjectTable_RemoveObjectForKey";
    v8 = "%s: table empty";
    v9 = v7;
    v10 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
    return;
  }

  v4 = *(a1 + 16);
  if (v4 < 1)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = 0;
  while (([*(*(a1 + 8) + v5) isEqualToString:a2] & 1) == 0)
  {
    ++v6;
    v5 += 16;
    if (v4 == v6)
    {
      goto LABEL_10;
    }
  }

  if (v4 == v6)
  {
LABEL_10:
    v11 = +[IDSFoundationLog utunController];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 138412546;
    v15 = a2;
    v16 = 1024;
    v17 = v4;
    v8 = "NSSTable_Remove: did not find %@ (from %d entries)";
    v9 = v11;
    v10 = 18;
    goto LABEL_12;
  }

  v12 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 8) + v5 + 8);
    v14 = 138412802;
    v15 = v13;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NSSTable_Remove: removing %@ @%d (from %d entries)", &v14, 0x18u);
  }

  if (v4 != 1)
  {
    *(*(a1 + 8) + 16 * v6) = *(*(a1 + 8) + 16 * v4 - 16);
  }

  --*(a1 + 16);
}

void sub_1006C53AC(uint64_t a1)
{
  v2 = +[IMLockdownManager sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = IMGetCachedDomainBoolForKey();

    if (v3)
    {
      v4 = +[IMRGLog sms];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Suppressing non-zero-rated SMS notification due to presence of internal deafult -- allowing SMS", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      return;
    }
  }

  else
  {
  }

  v5 = [*(a1 + 32) systemMonitor];
  v6 = [v5 isSetup];

  if (v6)
  {
    v7 = +[IDSSMSRegistrationCenter sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006C5724;
    v17[3] = &unk_100BDAB08;
    v8 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v8;
    v19 = *(a1 + 48);
    [v7 postSMSRegistrationConsentNotificationWithCompletion:v17];
  }

  else
  {
    v9 = +[IMRGLog sms];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to post SMS alert during buddy, deferring until device is setup {CTPNR: %@}", buf, 0xCu);
    }

    v11 = [*(a1 + 32) CTPNRByConsentCompletion];

    if (!v11)
    {
      v12 = +[NSMapTable strongToStrongObjectsMapTable];
      [*(a1 + 32) setCTPNRByConsentCompletion:v12];
    }

    v13 = [*(a1 + 32) CTPNRByConsentCompletion];
    v14 = objc_retainBlock(*(a1 + 48));
    [v13 setObject:v14 forKey:*(a1 + 40)];

    v15 = [*(a1 + 32) restoreMonitor];
    LOBYTE(v14) = [v15 hasActionForTarget:*(a1 + 32)];

    if ((v14 & 1) == 0)
    {
      v16 = [*(a1 + 32) restoreMonitor];
      [v16 addTarget:*(a1 + 32) actionBlock:&stru_100BE5508];
    }
  }
}

void sub_1006C5678(id a1, id a2)
{
  v2 = a2;
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C571C;
  block[3] = &unk_100BD6ED0;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t sub_1006C5724(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 80);
    v4 = [*(a1 + 40) uniqueIdentifier];
    [v3 addObject:v4];
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_1006C65E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IMRGLog sms];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for registration failure { context: %@, sessionID: %@, error: %@ }", &v9, 0x20u);
  }
}

void sub_1006C68E0(id a1)
{
  v1 = objc_alloc_init(IDSGroupEncryptionController);
  v2 = qword_100CBF558;
  qword_100CBF558 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006C6DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1006C6DE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1006C6FD8(uint64_t a1)
{
  v2 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setAccount: Add the registraion listener for account: %@", buf, 0xCu);
  }

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 accountWithUniqueID:*(a1 + 32)];

  v6 = objc_alloc_init(NSMutableSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v5 registeredDevices];
  v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) pushToken];
        v12 = [v5 service];
        v13 = [v12 identifier];
        v14 = [IDSPushToken pushTokenWithData:v11 withServiceLoggingHint:v13];
        [v6 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 40) + 80) setObject:v6 forKeyedSubscript:*(a1 + 32)];
  [v5 addRegistrationListener:*(a1 + 40)];
}

id sub_1006C7390(uint64_t a1)
{
  v2 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setAccount: Remove the registraion listener for account: %@", &v7, 0xCu);
  }

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 accountWithUniqueID:*(a1 + 32)];
  [v5 removeRegistrationListener:*(a1 + 40)];

  return [*(*(a1 + 40) + 80) setObject:0 forKeyedSubscript:*(a1 + 32)];
}

uint64_t sub_1006C7670(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1006C9D10(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1006C9D74(void *a1, int a2)
{
  v4 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1[8] + 8) + 24))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    if (*(*(a1[9] + 8) + 24))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = a1[4];
    v8 = a1[5];
    v11[0] = 67110146;
    v11[1] = a2;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendMessage: sendKeyMaterialMessageDataOverQR completed with %d. completionBlocks called %@ %@, groupID %@, sessionID %@", v11, 0x30u);
  }

  if (a1[6])
  {
    v9 = *(a1[8] + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      (*(a1[6] + 16))();
    }
  }

  if (a1[7])
  {
    v10 = *(a1[9] + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      *(v10 + 24) = 1;
      (*(a1[7] + 16))();
    }
  }
}

void sub_1006C9EF0(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[11];
    v7 = [v3 idsResponseCode];
    if ([v3 lastCall])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [v3 responseError];
    v18 = 138413314;
    *v19 = v5;
    *&v19[8] = 2048;
    *&v19[10] = v6;
    *&v19[18] = 2048;
    *&v19[20] = v7;
    *&v19[28] = 2112;
    *&v19[30] = v8;
    *&v19[38] = 2112;
    *&v19[40] = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Group session encryption message completion block fired { GUID: %@, command: %ld, responseCode: %lu, lastCall: %@, error: %@ }", &v18, 0x34u);
  }

  if ([v3 lastCall])
  {
    v10 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v3 responseCode];
      if (*(*(a1[9] + 8) + 24))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (*(*(a1[10] + 8) + 24))
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v14 = a1[5];
      v15 = a1[6];
      v18 = 67110146;
      *v19 = v11;
      *&v19[4] = 2112;
      *&v19[6] = v12;
      *&v19[14] = 2112;
      *&v19[16] = v13;
      *&v19[24] = 2112;
      *&v19[26] = v14;
      *&v19[34] = 2112;
      *&v19[36] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendMessage: sendMessageWithSendParameters completed with %d. completionBlocks called %@ %@, groupID %@, sessionID %@", &v18, 0x30u);
    }

    if (a1[7])
    {
      v16 = *(a1[9] + 8);
      if ((*(v16 + 24) & 1) == 0)
      {
        *(v16 + 24) = 1;
        (*(a1[7] + 16))(a1[7], [v3 responseCode]);
      }
    }

    if (a1[8])
    {
      v17 = *(a1[10] + 8);
      if ((*(v17 + 24) & 1) == 0)
      {
        *(v17 + 24) = 1;
        (*(a1[8] + 16))();
      }
    }
  }
}

void sub_1006CA170(uint64_t a1)
{
  v2 = +[IDSFoundationLog RealTimeEncryptionController_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315651;
    v5 = "IDSGroupEncryptionController.m";
    v6 = 1024;
    v7 = 657;
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d %{private}@", &v4, 0x1Cu);
  }
}

id sub_1006CA374(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  [v1 _multiwayFTMessageSendTimeout];
  LOBYTE(v7) = 0;
  return [v1 _sendMessage:v2 toDestination:v3 forGroup:v4 sessionID:v5 command:210 timeout:0 shouldExpire:v7 useQR:0 completion:0 completionBlock:?];
}

id sub_1006CA504(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  [v1 _multiwayFTMessageSendTimeout];
  LOBYTE(v7) = 0;
  return [v1 _sendMessage:v2 toDestination:v3 forGroup:v4 sessionID:v5 command:210 timeout:1 shouldExpire:v7 useQR:0 completion:0 completionBlock:?];
}

uint64_t sub_1006CAB6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 pushToken];
  if (v7)
  {
    v8 = [v5 pushToken];
    if ([v8 isNull])
    {
      v9 = 1;
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = [v5 pushToken];
      v12 = [v11 __imHexString];
      LODWORD(v10) = [v10 containsObject:v12];

      v9 = v10 ^ 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v13 = [v6 pushToken];
  if (v13)
  {
    v14 = [v6 pushToken];
    if ([v14 isNull])
    {
      v15 = 0;
    }

    else
    {
      v16 = *(a1 + 32);
      v17 = [v6 pushToken];
      v18 = [v17 __imHexString];
      v15 = [v16 containsObject:v18];
    }
  }

  else
  {
    v15 = 0;
  }

  if ((v9 | v15))
  {
    v19 = v9 & v15;
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_1006CB974(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionController];
  v3 = (a1 + 40);
  v4 = [v2 sessionWithGroupID:*(a1 + 40)];

  v5 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *v3;
    v7 = [v4 uniqueID];
    *buf = 138412802;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "rollNewKeysAfterResettingPrekeysForGroups: %@ session %@: %@", buf, 0x20u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006CBBC0;
  v14[3] = &unk_100BD7020;
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v8 = v4;
  v17 = v8;
  v9 = objc_retainBlock(v14);
  v10 = v9;
  if (v8)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006CBDC4;
    v12[3] = &unk_100BD7270;
    v13 = v9;
    [v8 recvMembershipChangeEventWithReason:3 completionHandler:v12];
  }

  else
  {
    v11 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100931F68(v3, v11);
    }

    v10[2](v10);
  }
}

void sub_1006CBBC0(uint64_t a1)
{
  [*(a1 + 32) resetKeysForGroup:*(a1 + 40) shouldRemoveCurrentParticipants:1];
  v2 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006CBCA4;
  block[3] = &unk_100BD7020;
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = *(a1 + 56);
  *&v6 = v7;
  *&v5 = v8;
  *(&v6 + 1) = v4;
  *(&v5 + 1) = v3;
  v10 = v5;
  v11 = v6;
  dispatch_async(v2, block);
}

void sub_1006CBCA4(uint64_t a1)
{
  v2 = [*(a1 + 32) createRealTimeEncryptionFullIdentityForDevice:*(a1 + 40) completionBlock:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) uniqueID];
  [v3 sendPublicKeyToGroup:v4 sessionID:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) uniqueID];
  [v6 requestKeyMaterialForGroup:v7 sessionID:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 56) uniqueID];
  [v9 _updateRelevantEncryptedDataBlobForSession:v10];

  v11 = [NSDictionary dictionaryWithObjectsAndKeys:&off_100C3D3F0, IDSGlobalLinkOptionSessionInfoRequestTypeKey, &off_100C3D408, IDSGlobalLinkOptionSessionInfoCommandFlagKey, 0];
  [*(a1 + 56) requestSessionInfoWithOptions:v11];
}

void sub_1006CC1DC(uint64_t a1)
{
  v2 = +[IDSFoundationLog RealTimeEncryptionController_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315651;
    v5 = "IDSGroupEncryptionController.m";
    v6 = 1024;
    v7 = 992;
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d %{private}@", &v4, 0x1Cu);
  }
}

void sub_1006CC2B0(void *a1)
{
  v2 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didReceiveEndpointsUpdate: %@ forGroup: %@ - roll new keys for the group (previous %@)", &v10, 0x20u);
  }

  v6 = a1[7];
  v7 = [NSArray arrayWithObject:a1[5]];
  [v6 rollNewKeysAfterResettingPrekeysForGroups:v7 withReason:2];

  [*(a1[7] + 88) invalidate];
  v8 = a1[7];
  v9 = *(v8 + 88);
  *(v8 + 88) = 0;
}

void sub_1006CCBB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006CCCD4;
  v10[3] = &unk_100BE5688;
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  [v3 initializeWithCompletion:v10];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006CCED8;
  v7[3] = &unk_100BE56B0;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v6;
  v9 = *(a1 + 56);
  [*(a1 + 32) setResolvedEndpointsDidUpdateHandler:v7];
}

void sub_1006CCCD4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableSet);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) pushToken];
        v14 = [IDSPushToken pushTokenWithData:v13];
        [v7 addObject:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v10);
  }

  v15 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[4];
    *buf = 134218754;
    v22 = v16;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "setMembers: endpointSubscription: %p initialResolvedEndpoints: %@ error: %@ _lastKnownGroupIDToPushTokens: %@", buf, 0x2Au);
  }

  os_unfair_lock_lock((a1[5] + 36));
  [*(a1[5] + 72) setObject:v7 forKeyedSubscript:a1[6]];
  os_unfair_lock_unlock((a1[5] + 36));
}

void sub_1006CD600(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionController];
  v3 = [v2 sessionWithGroupID:*(a1 + 40)];

  v4 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Account is no longer registered, ending group: %@", &v6, 0xCu);
  }

  [v3 endSessionWithReason:47];
}

uint64_t IDSProtoApplicationKeyEntryReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1006CF554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006CF598(uint64_t a1)
{
  v2 = IMGetSecAttrDataProtectionClassFromKeychainDataProtectionClass();
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [IDSNGMFullDeviceIdentity identityWithAccess:v2 usageIdentifier:@"com.apple.identityservicesd" error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id sub_1006D15E0()
{
  if (qword_100CBF568 != -1)
  {
    sub_100932C10();
  }

  v1 = qword_100CBF560;

  return v1;
}

void sub_1006D1624(id a1)
{
  definition = nw_framer_create_definition("IDSNWSocketPairConnectionProtocol", 0, &stru_100BE5738);
  v2 = qword_100CBF560;
  qword_100CBF560 = definition;

  v3 = qword_100CBF560;

  _nw_framer_register_definition(v3);
}

int sub_1006D167C(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  nw_framer_set_input_handler(v2, &stru_100BE5758);
  nw_framer_set_output_handler(v2, &stru_100BE5778);
  nw_framer_pass_through_output(v2);

  return 1;
}

void sub_1006D18C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1006D18DC(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v8 = +[IDSFoundationLog socketPairConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a3 + 32);
    v13[0] = 67109634;
    v13[1] = a2;
    v14 = 2080;
    v15 = a3;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: initWithServiceConnection index: %d identifier: (%s, %d)", v13, 0x18u);
  }

  if (a2 || (v10 = *(*(a1 + 40) + 8), (*(v10 + 24) & 1) != 0))
  {
    v11 = 0;
    *a4 = 0;
  }

  else
  {
    *(v10 + 24) = 1;
    *a4 = 2;
    v11 = *(a1 + 32);
  }

  return v11;
}

void sub_1006D1C0C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ((a2 - 4) >= 2 && a2)
  {
    if (a2 == 3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = nw_connection_copy_connected_path();
      if (v7)
      {
        is_multilayer_packet_logging_enabled = nw_path_is_multilayer_packet_logging_enabled();
        v9 = *(a1 + 32);
      }

      else
      {
        v14 = +[IDSFoundationLog socketPairConnection];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*(a1 + 32) identifier];
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Connection: nw_path_t is NULL, dissabling cross-layer logging.", buf, 0xCu);
        }

        v9 = *(a1 + 32);
        is_multilayer_packet_logging_enabled = 0;
      }

      [v9 setShouldUseCrossLayerLogging:is_multilayer_packet_logging_enabled];
      nw_connection_reset_traffic_class();
      v16 = +[IDSFoundationLog socketPairConnection];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) identifier];
        v18 = vabdd_f64(Current, *(a1 + 40));
        v19 = *(*(a1 + 32) + 68);
        *buf = 138412802;
        v24 = v17;
        v25 = 2048;
        v26 = v18;
        v27 = 1024;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Connection from listener is ready connection_time: %fs, trafficClass: %d", buf, 0x1Cu);
      }

      [*(a1 + 32) _setConnectionReady];
      v20 = +[IDSDaemonPriorityQueueController sharedInstance];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1006D1F70;
      v21[3] = &unk_100BD6ED0;
      v22 = *(a1 + 32);
      [v20 performBlockWithPriority:v21 priority:*(v22 + 96)];

      [*(a1 + 32) _dequeueNextMessageFromOutgoingQueue];
      [*(a1 + 32) _receiveFromNWConnection:*(*(a1 + 32) + 104)];
    }

    else
    {
      v12 = +[IDSFoundationLog socketPairConnection];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) identifier];
        *buf = 138412546;
        v24 = v13;
        v25 = 1024;
        LODWORD(v26) = a2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Listening connection state: %d", buf, 0x12u);
      }
    }
  }

  else
  {
    v10 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Listening connection closed.", buf, 0xCu);
    }

    [*(a1 + 32) endSession];
  }
}

void sub_1006D1F70(uint64_t a1)
{
  if (*(*(a1 + 32) + 56))
  {
    v2 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) identifier];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Canceling connect ready block", &v6, 0xCu);
    }

    dispatch_block_cancel(*(*(a1 + 32) + 56));
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;
  }
}

_BYTE *sub_1006D2060(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[52] & 1) == 0)
  {
    result = [result hasEndedSession];
    if ((result & 1) == 0)
    {
      v3 = +[IDSFoundationLog socketPairConnection];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) identifier];
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Ending session because nw_connection did not move to ready state", &v5, 0xCu);
      }

      return [*(a1 + 32) endSession];
    }
  }

  return result;
}

void sub_1006D2454(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (v9)
  {
    size = dispatch_data_get_size(v9);
    if (HIDWORD(size))
    {
      goto LABEL_21;
    }
  }

  else
  {
    size = 0;
  }

  v13 = +[IDSSocketPairMessage headerDataSize];
  is_final = nw_content_context_get_is_final(v10);
  v15 = +[IDSFoundationLog socketPairConnection];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) identifier];
    *buf = 138412546;
    v32 = v16;
    v33 = 1024;
    LODWORD(v34) = size;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ Read %u bytes", buf, 0x12u);
  }

  if (v9 && size >= v13)
  {
    v28 = is_final;
    v17 = v9;
    [v17 subdataWithRange:0, v13];
    v19 = v18 = a4;
    v20 = [v17 subdataWithRange:v13, [v17 length]- v13];
    if (bswap32(*([v19 bytes] + 1)) + v13 == size && v18 != 0)
    {
      v22 = [IDSSocketPairMessage messageWithHeaderData:v19 data:v20];
      [*(a1 + 32) _processIncomingRawMessage:v22];
    }

    is_final = v28;
  }

  if (v11 == 0 && !is_final)
  {
    v26 = +[IDSDaemonPriorityQueueController sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1006D279C;
    v29[3] = &unk_100BD6E40;
    v27 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v27;
    [v26 performBlockWithPriority:v29 priority:*(*(a1 + 32) + 96)];

    goto LABEL_23;
  }

  v23 = +[IDSFoundationLog socketPairConnection];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [*(a1 + 32) identifier];
    v25 = @"NO";
    *buf = 138412802;
    v32 = v24;
    v33 = 2112;
    if (is_final)
    {
      v25 = @"YES";
    }

    v34 = v11;
    v35 = 2112;
    v36 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ nw_connection_receive_message Error %@, isFinal %@", buf, 0x20u);
  }

LABEL_21:
  [*(a1 + 32) endSession];
LABEL_23:
}

void sub_1006D30BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 52) == 1)
  {
    if (!*(v2 + 32))
    {

      [v2 _dequeueNextMessageFromOutgoingQueue];
    }
  }

  else
  {
    v3 = +[IDSFoundationLog socketPairConnection];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) identifier];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: %@ sendDataMessage: nw_connection is not ready yet, queuing message to send", &v5, 0xCu);
    }
  }
}

void sub_1006D31CC(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = [v7 objectForKey:@"originalMessage"];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [v4 addObject:v6];
}

void sub_1006D3354(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog socketPairConnection];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) identifier];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSNWSocketPairConnection: _sendDataViaNWConnection: %@ Error %@! Could not write data to nw_connection.", &v8, 0x16u);
    }

    [*(a1 + 32) endSession];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100932E50(a1, v5);
    }
  }

  --*(*(a1 + 32) + 32);
  v7 = *(a1 + 32);
  if (!v7[8])
  {
    [v7 _dequeueNextMessageFromOutgoingQueue];
  }
}

void sub_1006D3994(uint64_t a1)
{
  IDSTransportThreadRemoveSocket();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  os_channel_destroy();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v4);
}

void sub_1006D438C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  os_unfair_lock_unlock((v2 + 8));
  if (v3)
  {
    v4 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006D44BC;
    v8[3] = &unk_100BE57F0;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    sub_10050FA10(v3, v5, v4, v8);
  }

  else
  {
    v6 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "startReadOnTransportThread fd ready to read but os_channel now nil - %@", buf, 0xCu);
    }
  }
}

uint64_t sub_1006D44BC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = objc_retainBlock(*(*(a1 + 32) + 16));
  *(a2 + 43) = *(*(a1 + 32) + 114);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [*(a1 + 32) _logOutgoingPacket:*(a2 + 16)];
  v5 = v4[2](v4, a2);

  return v5;
}

nw_protocol_definition_t sub_1006D4A44(void *a1)
{
  start_handler[0] = _NSConcreteStackBlock;
  start_handler[1] = 3221225472;
  start_handler[2] = sub_1006D4AE4;
  start_handler[3] = &unk_100BE5888;
  v5 = a1;
  v1 = v5;
  definition = nw_framer_create_definition("IDSGroupSessionProtocol", 0, start_handler);

  return definition;
}

uint64_t sub_1006D4AE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setFramer:v4];
  v5 = [*(a1 + 32) transport];
  v6 = [v5 participantIDToAliasConverter];
  v7 = [*(a1 + 32) multiplexerParams];
  v8 = [v7 participantID];
  v9 = [*(a1 + 32) multiplexerParams];
  v10 = [v9 salt];
  v11 = [v6 participantIDForAlias:v8 salt:v10];

  [*(a1 + 32) setContext:v11];
  v12 = [*(a1 + 32) verboseFunctionalLogging];
  input_handler[0] = _NSConcreteStackBlock;
  input_handler[1] = 3221225472;
  input_handler[2] = sub_1006D4C4C;
  input_handler[3] = &unk_100BE5840;
  v16 = v11;
  v17 = v12;
  v15 = *(a1 + 32);
  nw_framer_set_input_handler(v4, input_handler);
  nw_framer_set_output_handler(v4, &stru_100BE5860);

  return 1;
}

uint64_t sub_1006D4C4C(uint64_t a1, NSObject *a2)
{
  do
  {
    parse[0] = _NSConcreteStackBlock;
    parse[1] = 3221225472;
    parse[2] = sub_1006D4D20;
    parse[3] = &unk_100BE5818;
    v4 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v8 = v4;
    v5 = nw_framer_parse_input(a2, 1uLL, 0xFFFFFFFFuLL, 0, parse);
  }

  while (v5);
  return 1;
}

size_t sub_1006D4D20(uint64_t a1, const void *a2, size_t a3)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = _IDSLinkPacketBufferCreate();
    v8 = v7;
    v9 = *(a1 + 40);
    if (v9)
    {
      *(v7 + 536) |= 1u;
      *(v7 + 488) = v9;
    }

    memcpy(*v7, a2, a3);
    v8[2] = a3;
    v10 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v14 = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "input_handler read %lu bytes for participant %llu", &v14, 0x16u);
    }

    if (*(a1 + 48) == 1)
    {
      v12 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_10050F958(*v8, v8[2]);
        v14 = 136315138;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "input_handler whole packet:\n%s", &v14, 0xCu);
      }
    }

    [*(a1 + 32) callPacketBufferReadHandler:v8];
    _IDSLinkPacketBufferRelease();
    return a3;
  }

  return result;
}

void sub_1006D5A50(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1006D5C44;
  v24[3] = &unk_100BE0DD8;
  v29 = a4;
  v11 = v9;
  v25 = v11;
  v12 = v10;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v15 = a2;
  v16 = objc_retainBlock(v24);
  os_unfair_lock_lock((*(a1 + 32) + 232));
  v17 = [*(a1 + 32) multiplexerParams];
  v18 = [v17 participantID];

  v19 = _IDSLinkPacketBufferCreate();
  v20 = v19;
  if (v18)
  {
    *(v19 + 536) |= 1u;
    *(v19 + 488) = v18;
  }

  v21 = *v19;
  *v21 = __rev16([*(a1 + 32) localPort]);
  v22 = [*(a1 + 32) remotePort];
  *(v21 + 2) = HIBYTE(v22);
  *(v21 + 3) = v22;
  *(v21 + 4) = 0;
  memcpy((v21 + 8), [v15 bytes], objc_msgSend(v15, "length"));
  v23 = [v15 length];

  *(v20 + 16) = v23 + 8;
  os_unfair_lock_unlock((*(a1 + 32) + 232));
  [*(a1 + 32) callPacketBufferReadHandler:v20];
  (v16[2])(v16);
}

id sub_1006D5C44(id result)
{
  v1 = result;
  if (*(result + 64) == 1)
  {
    v2 = *(result + 4);
    if (!v2 || (result = nw_content_context_get_is_final(v2), result))
    {
      exit(0);
    }
  }

  if (!v1[5])
  {
    v3 = v1[6];
    v4 = v1[7];

    return [v3 receiveFromSimulatorSendToQRLoopFromConnection:v4];
  }

  return result;
}

void sub_1006D5CD4(id a1, OS_nw_error *a2)
{
  if (a2)
  {
    error_code = nw_error_get_error_code(a2);
    *__error() = error_code;
  }
}

void sub_1006D6200(id a1)
{
  v1 = objc_alloc_init(IDSDevicePropertiesStateNotifier);
  v2 = qword_100CBF578;
  qword_100CBF578 = v1;

  _objc_release_x1(v1, v2);
}

BOOL sub_1006D6B44(void *a1)
{
  v1 = [a1 unprefixedURI];
  CMFItemFromString = CreateCMFItemFromString();
  IsItemBlocked = CMFBlockListIsItemBlocked();
  if (CMFItemFromString)
  {
    CFRelease(CMFItemFromString);
  }

  return IsItemBlocked != 0;
}

id sub_1006D7178(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableData);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v1 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&stru_100BE5968];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v2 appendData:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v2;
}

void sub_1006D7DD0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1006D7780);
  }

  _Unwind_Resume(a1);
}

int64_t sub_1006D7F80(id a1, NSData *a2, NSData *a3)
{
  v4 = a3;
  v5 = [(NSData *)a2 __imHexString];
  v6 = [(NSData *)v4 __imHexString];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1006D7FF0(id a1)
{
  v1 = objc_alloc_init(IDSDevicePolicyController);
  v2 = qword_100CBF588;
  qword_100CBF588 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006D8288(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      objc_end_catch();
      JUMPOUT(0x1006D81FCLL);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 4);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1006D82E4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1006D82ACLL);
}

void sub_1006D834C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1006D86E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      objc_end_catch();
      JUMPOUT(0x1006D8534);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 4);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1006D8D4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D8DC0;
  block[3] = &unk_100BD6ED0;
  block[4] = v1;
  dispatch_async(v2, block);
}

id sub_1006D8DC0(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Migration completed, calling updateUsers", v4, 2u);
  }

  return [*(*(a1 + 32) + 16) reloadUsersForRealm:1];
}

Class sub_1006D8F10(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100CBF598)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1006D9034;
    v3[4] = &unk_100BD75B8;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement";
    qword_100CBF598 = _sl_dlopen();
  }

  if (!qword_100CBF598)
  {
    sub_100933290(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UMUserPersona");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100933214();
  }

  qword_100CBF590 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1006D9034()
{
  result = _sl_dlopen();
  qword_100CBF598 = result;
  return result;
}

void sub_1006DA148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v12 = a4;
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) localObject];
  v11 = [v9 broadcasterForLocalObject:v10 messageContext:*(a1 + 40)];

  if (v11)
  {
    [v11 iMessageReportSpamCheckUnknownResponseForRequestID:*(a1 + 48) status:a2 abusive:a3 delay:v12 withError:a5];
  }
}

id sub_1006DA200(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_13:
    v5 = 0;
    goto LABEL_15;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqualToString:NSOSStatusErrorDomain];

  if (!v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v2 underlyingErrors];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = sub_1006DA200(*(*(&v13 + 1) + 8 * v10));
          if (v11)
          {
            v5 = v11;

            goto LABEL_15;
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

  v5 = [v2 code];
LABEL_15:

  return v5;
}

void sub_1006DA7A8()
{
  v0 = MAERecertifyDeviceWithError();
  v1 = 0;
  v2 = +[IMRGLog warning];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (v0)
    {
      v3 = @"YES";
    }

    *buf = 138412546;
    v5 = v3;
    v6 = 2112;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed device re-certification { result: %@, error: %@ }", buf, 0x16u);
  }

  im_dispatch_after_primary_queue();
}

void sub_1006DA8F8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 deviceRecertificationCompleted:*(a1 + 32)];
}

BOOL sub_1006DAD80(uint64_t a1)
{
  SecCertificateNotValidAfter();
  v3 = v2;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current + 864000.0;
  v6 = CFDateCreate(kCFAllocatorDefault, v3);
  v7 = CFDateCreate(kCFAllocatorDefault, Current);
  v8 = +[IMRGLog warning];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    v11 = 134219266;
    v12 = a1;
    v13 = 2048;
    if (v3 < v5)
    {
      v9 = @"YES";
    }

    v14 = v3;
    v15 = 2048;
    v16 = Current;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking if cert is near expiry { cert: %p, expireTime: %f, currentTime: %f, expirationDate: %@, currentDate: %@, isNearExpiry: %@ }", &v11, 0x3Eu);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v3 < v5;
}

void sub_1006DAEF4(id a1)
{
  v1 = +[IMRGLog warning];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Telling apsd to invalidate the identity", v2, 2u);
  }

  [sub_1006DAF6C() invalidateDeviceIdentity];
}

id sub_1006DAF6C()
{
  if (qword_100CBF5B8 != -1)
  {
    sub_100933438();
  }

  v1 = qword_100CBF5B0;

  return v1;
}

void sub_1006DB03C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFStringHasSuffix(v1, @"DEV"))
    {
      v3 = 1;
    }

    else
    {
      v3 = CFStringHasSuffix(v2, @"dev") != 0;
    }

    byte_100CBF5A0 = v3;

    CFRelease(v2);
  }
}

void sub_1006DB6F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Executing temporary phone user transaction %@", buf, 0xCu);
  }

  v5 = [v3 type];
  if (v5 == 1)
  {
    v18 = v3;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = *(a1 + 40);
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v20)
    {
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    v21 = v20;
    v31 = a1;
    v32 = v3;
    v9 = 0;
    v22 = *v35;
    obj = v19;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [*(*(&v34 + 1) + 8 * i) user];
        v25 = [v24 phoneNumber];
        v26 = [v18 user];
        v27 = [v26 phoneNumber];
        v28 = [v25 isEqualToString:v27];

        if (v28)
        {
          v29 = v24;

          v9 = v29;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);

    v3 = v32;
    if (!v9)
    {
      goto LABEL_23;
    }

    if ([v18 alertType] == 1)
    {
      [IDSTemporaryPhoneAlertManager attemptPresentationOfExpirationAlertForUser:v9];
    }

    v30 = *(v31 + 40);
    v15 = [[IDSUserDescription alloc] initWithUser:v9 properties:0];
    [v30 removeObject:v15];
    goto LABEL_20;
  }

  if (!v5)
  {
    v6 = v3;
    v7 = [*(a1 + 32) userStore];
    v8 = [v6 user];
    v9 = [v7 propertiesForUser:v8];

    v10 = [v6 credential];

    if (!v10)
    {
LABEL_21:
      v19 = v9;
      goto LABEL_22;
    }

    v11 = *(a1 + 40);
    v12 = [IDSUserDescription alloc];
    v13 = [v6 user];
    v14 = [(IDSUserDescription *)v12 initWithUser:v13 properties:v9];
    [v11 addObject:v14];

    v15 = [*(a1 + 32) userStore];
    v16 = [v6 credential];
    v17 = [v6 user];
    [(IDSUserDescription *)v15 setCredential:v16 forUser:v17];

LABEL_20:
    goto LABEL_21;
  }

LABEL_24:
}

void sub_1006DD79C(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"Downstream";
    }

    else
    {
      v3 = @"Upstream";
    }

    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start collecting logs due to %@ Magnet corruption", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  if (qword_100CBF5C8 != -1)
  {
    sub_100933598();
  }

  if (off_100CBF5C0)
  {
    if (*(a1 + 32))
    {
      v4 = @"Downstream data corruption";
    }

    else
    {
      v4 = @"Upstream data corruption";
    }

    off_100CBF5C0(@"IDS", v4, 2, 152);
  }
}

void sub_1006E049C(id a1)
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100CBF5D8 = v1 / v2 / 1000000000.0;
}

void sub_1006E0B10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1006E0B2C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138413058;
    v49 = v14;
    v50 = 2112;
    v51 = WeakRetained;
    v52 = 2048;
    v53 = a4;
    v54 = 2112;
    v55 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "GUID %@ Finished MML %@ with result code: %ld error: %@", buf, 0x2Au);
  }

  v15 = [WeakRetained chunkNumber];
  v16 = [v10 description];
  v31 = [v11 description];
  v17 = [v9 messageBodyUsingCache];
  v32 = v9;
  v18 = [v9 service];
  v19 = IDSLoggableDescriptionForObjectOnService();

  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_1006E0E70;
  v40 = &unk_100BD8E10;
  v41 = *(a1 + 32);
  v30 = v15;
  v42 = v30;
  v46 = a4;
  v29 = v16;
  v43 = v29;
  v28 = v31;
  v44 = v28;
  v27 = v19;
  v45 = v27;
  cut_dispatch_log_queue();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = [WeakRetained aggregateMessages];
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        v26 = [v25 completionBlock];
        (v26)[2](v26, v25, v10, a4, v11);
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v22);
  }
}

void sub_1006E0E70(void *a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v8 = a1[8];
    v7 = a1[9];
    v9 = 138413570;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Full response info for GUID %@ Finished MML %@ with result code: %ld error: %@ result dictionary: %@ message body: %@", &v9, 0x3Eu);
  }
}

void sub_1006E1098(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1006E10B4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v13 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = [WeakRetained chunkNumber];
    *buf = 138413058;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    v56 = 2048;
    v57 = a4;
    v58 = 2112;
    v59 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "GUID %@ Finished Fanout %@ with result code: %ld error: %@", buf, 0x2Au);
  }

  v47 = WeakRetained;
  v16 = [WeakRetained chunkNumber];
  v17 = [v9 description];
  v18 = [v10 description];
  v19 = [v11 messageBodyUsingCache];
  v20 = [v11 service];

  v21 = IDSLoggableDescriptionForObjectOnService();

  v48 = *(a1 + 32);
  v46 = v16;
  v22 = v17;
  v49 = v22;
  v23 = v18;
  v50 = v23;
  v24 = v21;
  v51 = v24;
  cut_dispatch_log_queue();
  v25 = 2;
  if ((a4 - 1002) < 2)
  {
    v25 = 0;
  }

  if (a4 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v9)
  {
    v27 = [NSDictionary dictionaryWithObjectsAndKeys:v9, NSUnderlyingErrorKey, 0];
    v28 = [NSError errorWithDomain:IDSSendErrorDomain code:v26 userInfo:v27];
  }

  else
  {
    v28 = 0;
  }

  v29 = [[IDSDeliveryContext alloc] initWithResponseCode:v26 error:v28 lastCall:1];
  [v29 setDisplayURIs:*(a1 + 40)];
  v30 = [v10 _numberForKey:@"e"];

  if (v30)
  {
    v31 = [v10 _numberForKey:@"e"];
    [v29 setResponseTimeStamp:v31];
  }

  if ([v29 idsResponseCode])
  {
    v32 = [*(a1 + 48) delegate];
    [v32 receivedErrorWithContext:v29];
  }

  if (*(a1 + 72) != 1 || v28)
  {
    [v47 callAllIndividualCompletionBlocksWithDeliveryContext:v29];
  }

  if (a4 == 7000)
  {
    v33 = [v10 _numberForKey:@"ttr"];

    if (v33)
    {
      v34 = [*(a1 + 48) delegate];
      v35 = [v47 topic];
      [v10 _numberForKey:@"ttr"];
      v45 = v28;
      v36 = v10;
      v37 = v9;
      v38 = v24;
      v39 = v23;
      v41 = v40 = v22;
      [v34 receivedRateLimitingResponseForTopic:v35 ttr:v41];

      v22 = v40;
      v23 = v39;
      v24 = v38;
      v9 = v37;
      v10 = v36;
      v28 = v45;
    }
  }

  v42 = [*(a1 + 56) count];
  v43 = +[IMMobileNetworkManager sharedInstance];
  v44 = v43;
  if (v42)
  {
    [v43 addFastDormancyDisableToken:@"IDSDeliveryManager"];
  }

  else
  {
    [v43 removeFastDormancyDisableToken:@"IDSDeliveryManager"];
  }
}

void sub_1006E1554(void *a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v8 = a1[8];
    v7 = a1[9];
    v9 = 138413570;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Full response info for GUID %@ Finished Fanout %@ with result code: %ld error: %@ result dictionary: %@ message body: %@", &v9, 0x3Eu);
  }
}

void sub_1006E1818(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if ([v3 responseCode])
    {
      v7 = @"NO";
    }

    else
    {
      v7 = @"YES";
    }

    v8 = [v3 responseCode];
    v9 = [v3 responseError];
    v23 = 138413314;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2048;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GUID %@ Finished sending to destination %@ { success: %@, code: %ld, error: %@ }", &v23, 0x34u);
  }

  if ([v3 responseCode])
  {
    v10 = [*(a1 + 48) delegate];
    [v10 receivedErrorWithContext:v3];
  }

  v11 = [v3 responseTimeStamp];

  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    if (!v12 || ([v12 doubleValue], v14 = v13, objc_msgSend(v3, "responseTimeStamp"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "doubleValue"), v17 = v16, v15, v14 > v17))
    {
      v18 = [v3 responseTimeStamp];
      v19 = *(a1 + 48);
      v20 = *(v19 + 8);
      *(v19 + 8) = v18;
    }
  }

  [*(a1 + 56) removeObject:*(a1 + 64)];
  if (![*(a1 + 56) count])
  {
    [v3 setResponseTimeStamp:*(*(a1 + 48) + 8)];
    v21 = [*(a1 + 48) delegate];
    [v21 finishedTrackingMadridAcksWithContext:v3 uris:*(a1 + 72) guid:*(a1 + 32)];
  }

  v22 = *(a1 + 80);
  if (v22)
  {
    (*(v22 + 16))(v22, v3);
  }
}

void sub_1006E3C0C(id a1)
{
  v1 = objc_alloc_init(IDSKeyTransparencyVerifier);
  v2 = qword_100CBF5E8;
  qword_100CBF5E8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1006E43BC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_1006E4408(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[NSMutableString string];
    v6 = [WeakRetained isOptedInForServiceIdentifier:@"com.apple.madrid"];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    [v5 appendFormat:@"KT Opt In Status: %@\n", v7];
    v8 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006E454C;
    v10[3] = &unk_100BE11E0;
    v11 = v5;
    v12 = v8;
    v13 = v3;
    v9 = v5;
    [v8 fetchCurrentDeviceKVSKey:v10];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_1006E454C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 allKeys];
  [v3 appendFormat:@"This device's KVS keys: %@\n", v4];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006E4624;
  v6[3] = &unk_100BD94B8;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  [v5 getCurrentRegistrationState:0 withCompletion:v6];
}

void sub_1006E4624(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = a1;
  [*(a1 + 32) appendFormat:@"Found registrations on %lu KT service(s)\n", objc_msgSend(v3, "count")];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v18)
  {
    v17 = *v30;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v4;
        v5 = *(*(&v29 + 1) + 8 * v4);
        v6 = [obj objectForKeyedSubscript:v5];
        [*(v23 + 32) appendFormat:@"  %lu registrations on %@\n", objc_msgSend(v6, "count"), v5];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v21 = v6;
        v24 = [v21 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v24)
        {
          v22 = *v26;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v26 != v22)
              {
                objc_enumerationMutation(v21);
              }

              v8 = *(*(&v25 + 1) + 8 * i);
              v9 = *(v23 + 32);
              v10 = [v8 userID];
              [v8 status];
              v11 = _IDSStringFromIDSRegistrationStatus();
              v12 = [v8 optedIn];
              v13 = [v8 ktAccountKey];
              if (v13)
              {
                v14 = @"YES";
              }

              else
              {
                v14 = @"NO";
              }

              v15 = [v8 deviceSignature];
              if (v15)
              {
                v16 = @"YES";
              }

              else
              {
                v16 = @"NO";
              }

              [v9 appendFormat:@"    Registration user ID: %@, Registration status: %@, KTOptInStatus(at time of registration, may be out of date): %lu, containsAccountKey:%@, containsDeviceSignature: %@", v10, v11, v12, v14, v16];
            }

            v24 = [v21 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v24);
        }

        v4 = v20 + 1;
      }

      while ((v20 + 1) != v18);
      v18 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v18);
  }

  (*(*(v23 + 40) + 16))();
}

uint64_t sub_1006E48E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[IMRGLog sysdiagnose_keyTransparency];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [WeakRetained isOptedInForServiceIdentifier:@"com.apple.madrid"];
      v5 = @"NO";
      if (v4)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "KT Opt In Status: %@", &v7, 0xCu);
    }

    [WeakRetained fetchCurrentDeviceKVSKey:&stru_100BE5B30];
    [*(a1 + 32) getCurrentRegistrationState:0 withCompletion:&stru_100BE5B50];
  }

  return 0;
}

void sub_1006E49FC(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a2;
  v4 = +[IMRGLog sysdiagnose_keyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSDictionary *)v3 allKeys];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "This device's KVS keys: {kvsKeys: %@}", &v6, 0xCu);
  }
}

void sub_1006E4ACC(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = &uuid_unparse_upper_ptr;
  v4 = +[IMRGLog sysdiagnose_keyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = [(NSDictionary *)v2 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found registrations on %lu KT service(s)", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v2;
  v25 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v25)
  {
    v24 = *v36;
    *&v5 = 134218242;
    v23 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v35 + 1) + 8 * v6);
        v8 = [(NSDictionary *)obj objectForKeyedSubscript:v7, v23];
        v9 = [v3[504] sysdiagnose_keyTransparency];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 count];
          *buf = v23;
          v40 = v10;
          v41 = 2112;
          v42 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  %lu registrations on %@", buf, 0x16u);
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = v8;
        v11 = [v29 countByEnumeratingWithState:&v31 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          v28 = *v32;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v29);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              v16 = [v3[504] sysdiagnose_keyTransparency];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [v15 userID];
                [v15 status];
                v17 = _IDSStringFromIDSRegistrationStatus();
                v18 = [v15 optedIn];
                v19 = [v15 ktAccountKey];
                if (v19)
                {
                  v20 = @"YES";
                }

                else
                {
                  v20 = @"NO";
                }

                v21 = [v15 deviceSignature];
                *buf = 138413314;
                if (v21)
                {
                  v22 = @"YES";
                }

                else
                {
                  v22 = @"NO";
                }

                v40 = v30;
                v41 = 2112;
                v42 = v17;
                v43 = 2048;
                v44 = v18;
                v45 = 2112;
                v46 = v20;
                v47 = 2112;
                v48 = v22;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "    Registration user ID: %@, Registration status: %@, KTOptInStatus(at time of registration, may be out of date): %lu, containsAccountKey:%@, containsDeviceSignature: %@", buf, 0x34u);

                v13 = v28;
                v3 = &uuid_unparse_upper_ptr;
              }
            }

            v12 = [v29 countByEnumeratingWithState:&v31 objects:v49 count:16];
          }

          while (v12);
        }

        v6 = v27 + 1;
      }

      while ((v27 + 1) != v25);
      v25 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v25);
  }
}

uint64_t sub_1006E51E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 40))
  {
    v8 = v4;
    if (v4)
    {
      v6 = [*(a1 + 32) _clientErrorWithCode:-1100 debugDescription:@"Failed to determine eligibility for the key transparency trust circle" underlyingError:v4];
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 40) + 16))();

    v5 = v8;
  }

  return _objc_release_x1(v4, v5);
}

void sub_1006E5388(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) registrationDataSource];
    v7 = [v6 currentLocalKeyTransparencyEligibleServiceIdentifiers];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Done fetching local device trust circle eligible service identifiers { eligibleServices: %@, error: %@ }", &v10, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v5);
  }
}

void sub_1006E5C78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog KeyTransparency];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100933854();
    }

    v9 = *(a1 + 56);
    v10 = [*(a1 + 32) _clientErrorWithCode:-9004 debugDescription:@"Failed to get query results." underlyingError:v6];
    (*(v9 + 16))(v9, &__NSArray0__struct, v10);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = @"NO";
      if (*(a1 + 64))
      {
        v13 = @"YES";
      }

      *buf = 138412802;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling into Transparency to validate peers { uris: %@ service: %@ fetchNow: %@ }", buf, 0x20u);
    }

    v14 = +[NSDate now];
    v15 = *(a1 + 32);
    v16 = *(v15 + 128);
    *(v15 + 128) = v14;

    v10 = [*(a1 + 32) _keyTransparencyVerifierForServiceIdentifier:*(a1 + 48)];
    v17 = *(a1 + 64);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006E5E94;
    v18[3] = &unk_100BDB820;
    v19 = *(a1 + 56);
    [v10 validatePeers:v5 fetchNow:v17 completionBlock:v18];
  }
}

BOOL sub_1006E64B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 serviceIdentifier];
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else if ([v3 keyIndex])
  {
    v6 = [v3 keyIndex] < 4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1006E6B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Done nuking KT verification state { error: %@ }", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v3)
    {
      v6 = [*(a1 + 32) _clientErrorWithCode:-6000 debugDescription:@"Failed to nuke key transparency state" underlyingError:v3];
      v5 = *(a1 + 40);
    }

    else
    {
      v6 = 0;
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1006E70E4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(IDSKTVerificationResult);
  v4 = [v2 uri];
  [v3 setUri:v4];

  [v3 setOptedIn:{objc_msgSend(v2, "optedIn")}];
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v2 loggableDatas];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 result];
        v14 = [v12 deviceID];
        if (v13 == 1)
        {
          v15 = v5;
        }

        else
        {
          v15 = v6;
        }

        [v15 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [v3 setVerifiedPushTokens:v5];
  [v3 setUnverifiedPushTokens:v6];
  os_unfair_lock_lock(&stru_100CBF5F0);
  if (v3)
  {
    CFDictionarySetValue(*(a1 + 32), *(a1 + 40), v3);
  }

  os_unfair_lock_unlock(&stru_100CBF5F0);
  dispatch_group_leave(*(a1 + 48));
}

void sub_1006E79F8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = [v5 succeed];
    if (v9 > 3)
    {
      v10 = @"Unrecognized";
    }

    else
    {
      v10 = off_100BE6018[v9];
    }

    v11 = a1[5];
    v12 = [v5 optedIn];
    v19 = 138413314;
    v13 = @"NO";
    v20 = v8;
    v21 = 2112;
    if (v12)
    {
      v13 = @"YES";
    }

    v22 = v10;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished KT validate peer result { KTURI: %@, result: %@, error: %@, ticket: %@, optedIn: %@ }", &v19, 0x34u);
  }

  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v17 = [v5 succeed];
  v18 = [v5 loggableDatas];
  [v14 _fulfillOrFailPromiseSeal:v15 basedOnIndex:v16 KTResult:v17 ktLoggableDatas:v18 optedIn:objc_msgSend(v5 error:{"optedIn"), v6}];
}

void sub_1006E7EA8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    if (a3 > 3)
    {
      v12 = @"Unrecognized";
    }

    else
    {
      v12 = off_100BE6018[a3];
    }

    v13 = @"NO";
    v14 = *(a1 + 40);
    v17 = 138413314;
    if (a4)
    {
      v13 = @"YES";
    }

    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished KT force validate { KTURI: %@, result: %@, error: %@, ticket: %@, optedIn: %@", &v17, 0x34u);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = [*(a1 + 48) _clientErrorForKTResult:a3 underlyingError:v9];
    (*(v15 + 16))(v15, v16);
  }
}

void sub_1006E86B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    if (a3 > 3)
    {
      v14 = @"Unrecognized";
    }

    else
    {
      v14 = off_100BE6018[a3];
    }

    v15 = @"NO";
    v16 = *(a1 + 40);
    v17 = 138413314;
    if (a4)
    {
      v15 = @"YES";
    }

    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Finished KT validate enrollment result { KTURI: %@, result: %@, error: %@, ticket: %@, optedIn: %@ }", &v17, 0x34u);
  }

  [*(a1 + 48) _fulfillOrFailPromiseSeal:*(a1 + 56) basedOnIndex:*(a1 + 64) KTResult:a3 ktLoggableDatas:v11 optedIn:a4 error:v10];
}

id sub_1006E92C0(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:kFZServiceDefaultsSentinelAlias]&& [(NSString *)v2 isEqualToString:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [IDSURI URIWithPrefixedURI:v2];
  }

  return v3;
}

void sub_1006E9678(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 containsObject:*(a1 + 32)] & 1) != 0)
  {
    v7 = [*(a1 + 40) accountController];
    v8 = [*(a1 + 40) serviceController];
    v9 = [v8 serviceWithIdentifier:*(a1 + 32)];
    v10 = [v7 appleIDAccountOnService:v9];

    v11 = [*(a1 + 48) BOOLValue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006E9868;
    v18[3] = &unk_100BE5CF0;
    v17 = *(a1 + 32);
    v12 = v17.i64[0];
    v19 = vextq_s8(v17, v17, 8uLL);
    v20 = *(a1 + 56);
    [v10 updateKTOptInStatus:v11 withCompletion:v18];
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100934034();
    }

    v14 = *(a1 + 56);
    v15 = [IDSKTOptInResult alloc];
    v10 = [*(a1 + 40) _clientErrorWithCode:-8000 debugDescription:0 underlyingError:v6];
    v16 = [v15 initWithSuccess:0 serverProvidedSMT:0 error:v10];
    (*(v14 + 16))(v14, v16);
  }
}

void sub_1006E9868(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([v3 success])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [v3 error];
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received KT opt-in result from server {success: %@, error: %@}", buf, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    if ([v3 success])
    {
      v10 = [v3 error];

      if (!v10)
      {
        v11 = im_primary_base_queue();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1006E9A38;
        v13[3] = &unk_100BD6E40;
        v12 = a1[5];
        v13[4] = a1[4];
        v14 = v12;
        dispatch_async(v11, v13);
      }
    }
  }

  (*(a1[6] + 16))(a1[6], v3, v7, v8, v9);
}

void sub_1006EA040(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 containsObject:*(a1 + 32)] & 1) != 0)
  {
    v7 = [*(a1 + 40) accountController];
    v8 = [*(a1 + 40) serviceController];
    v9 = [v8 serviceWithIdentifier:*(a1 + 32)];
    v10 = [v7 appleIDAccountOnService:v9];

    v11 = *(a1 + 48);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006EA22C;
    v18[3] = &unk_100BE5CF0;
    v17 = *(a1 + 32);
    v12 = v17.i64[0];
    v19 = vextq_s8(v17, v17, 8uLL);
    v20 = *(a1 + 56);
    [v10 updateKTOptInStatusWithRequest:v11 withCompletion:v18];
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100934034();
    }

    v14 = *(a1 + 56);
    v15 = [IDSKTOptInResult alloc];
    v10 = [*(a1 + 40) _clientErrorWithCode:-8000 debugDescription:0 underlyingError:v6];
    v16 = [v15 initWithSuccess:0 optedInOutURIs:0 serverSMTByURI:0 error:v10];
    (*(v14 + 16))(v14, v16);
  }
}

void sub_1006EA22C(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([v3 success])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [v3 error];
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received KT opt in result from server {success: %@, error: %@}", buf, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    if ([v3 success])
    {
      v10 = [v3 error];

      if (!v10)
      {
        v11 = im_primary_base_queue();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1006EA3FC;
        v13[3] = &unk_100BD6E40;
        v12 = a1[5];
        v13[4] = a1[4];
        v14 = v12;
        dispatch_async(v11, v13);
      }
    }
  }

  (*(a1[6] + 16))(a1[6], v3, v7, v8, v9);
}

void sub_1006EA40C(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([v3 success])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [v3 error];
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received KT opt out result from server {success: %@, error: %@}", buf, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    if ([v3 success])
    {
      v10 = [v3 error];

      if (!v10)
      {
        v11 = im_primary_base_queue();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1006EA5DC;
        v13[3] = &unk_100BD6E40;
        v12 = a1[5];
        v13[4] = a1[4];
        v14 = v12;
        dispatch_async(v11, v13);
      }
    }
  }

  (*(a1[6] + 16))(a1[6], v3, v7, v8, v9);
}

void sub_1006EAB58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 state];
    v10 = [v5 smtTimestamp];
    v14 = 138413058;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched opt in state for KT application %@ { state: %ld smtTimestamp: %@ getError: %@", &v14, 0x2Au);
  }

  v11 = [IDSKTOptInState alloc];
  v12 = [v5 smtTimestamp];
  v13 = -[IDSKTOptInState initWithTimeStamp:status:error:](v11, "initWithTimeStamp:status:error:", v12, [v5 state], v6);

  os_unfair_lock_lock(&stru_100CBF5F4);
  if (v13)
  {
    CFDictionarySetValue(*(a1 + 40), *(a1 + 32), v13);
  }

  os_unfair_lock_unlock(&stru_100CBF5F4);
  dispatch_group_leave(*(a1 + 48));
}

id sub_1006EB1C8(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [[IDSURI alloc] initWithPrefixedURI:v2];
  }

  return v3;
}

void sub_1006EBAE8(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) peerIDManager];
  v3 = [v2 endpointsForURIs:*(v1 + 40) service:*(v1 + 48) fromURI:*(v1 + 56)];

  v27 = objc_alloc_init(NSMutableDictionary);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(v1 + 40);
  v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      v7 = 0;
      v25 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [v3 objectForKey:{v8, v25}];
        if ([v9 count])
        {
          v30 = v9;
          v29 = [v9 __imArrayByApplyingBlock:&stru_100BE5D80];
          v10 = [*(v1 + 32) _KTDatasForIDSKeyTransparencyEntries:?];
          v11 = [*(v1 + 32) peerIDManager];
          v12 = [v11 keyTransparencyContextForService:*(v1 + 48) fromURI:*(v1 + 56) toURI:v8];

          v13 = [KTVerificationInfo alloc];
          v14 = [v12 accountKey];
          v28 = v10;
          v15 = [v13 initWithAccountKey:v14 serverLoggableDatas:v10];

          [v15 setOptedIn:{objc_msgSend(v12, "ktOptIn")}];
          v16 = [v12 queryResponseTime];

          if (v16)
          {
            v17 = [v12 queryResponseTime];
            [v15 setIdsResponseTime:v17];
          }

          v18 = [IDSKeyTransparencyVerifier keyTransparencyURIPrefixForServiceIdentifier:*(v1 + 48)];
          v19 = [v8 prefixedURI];
          if (v18)
          {
            v20 = [v8 prefixedURI];
            [v18 stringByAppendingString:v20];
            v21 = v6;
            v22 = v3;
            v24 = v23 = v1;

            v19 = v24;
            v1 = v23;
            v3 = v22;
            v6 = v21;
            v5 = v25;
          }

          [v27 setObject:v15 forKeyedSubscript:v19];

          v9 = v30;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  (*(*(v1 + 64) + 16))();
}

id sub_1006EBDF4(id a1, IDSEndpoint *a2)
{
  v2 = a2;
  v3 = [(IDSEndpoint *)v2 pushToken];

  if (v3)
  {
    v4 = [IDSKeyTransparencyEntry alloc];
    v5 = [(IDSEndpoint *)v2 pushToken];
    v6 = [(IDSEndpoint *)v2 KTLoggableData];
    v7 = [(IDSEndpoint *)v2 KTDeviceSignature];
    v3 = [(IDSKeyTransparencyEntry *)v4 initWithPushToken:v5 loggableData:v6 signedData:v7];

    [(IDSKeyTransparencyEntry *)v3 setKtCapable:[(IDSEndpoint *)v2 ktCapableFlag]];
    v8 = [(IDSEndpoint *)v2 capabilities];
    -[IDSKeyTransparencyEntry setSupportConditionalEnforcement:](v3, "setSupportConditionalEnforcement:", [v8 valueForCapability:IDSRegistrationPropertySupportsConditionalCKVEnforcement] != 0);
  }

  return v3;
}

void sub_1006EBF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8)
{
  v10 = a8;
  if ((a6 & 1) == 0)
  {
    v11 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1009341F8();
    }
  }

  (*(*(a1 + 32) + 16))();
}

id sub_1006EC544(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:kFZServiceDefaultsSentinelAlias]&& [(NSString *)v2 isEqualToString:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [IDSURI URIWithPrefixedURI:v2];
  }

  return v3;
}

void sub_1006EC5CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog KeyTransparency];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1009342D8();
    }

    v9 = *(a1 + 64);
    v10 = [[KTSelfVerificationInfo alloc] initWithSyncedLoggableDatas:&__NSArray0__struct uriToServerLoggableDatas:&__NSDictionary0__struct];
    v11 = [*(a1 + 32) _clientErrorWithCode:-9004 debugDescription:@"Failed to get query results." underlyingError:v6];
    (*(v9 + 16))(v9, v10, v11);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Force syncing KVS for self verification.", buf, 2u);
    }

    v10 = [*(a1 + 32) forceSyncKVS];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1006EC7C0;
    v13[3] = &unk_100BE5E08;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v12;
    v15 = *(a1 + 48);
    v16 = v5;
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    [v10 registerResultBlock:v13];
  }
}

void sub_1006EC7C0(uint64_t a1, void *a2)
{
  v3 = [a2 state];
  v4 = +[IDSFoundationLog KeyTransparency];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Failed to sync KVS.";
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Successfully synced KVS.";
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
LABEL_7:

  v57 = [*(a1 + 32) fetchTrustedDevicesFromKVS];
  v7 = [*(a1 + 32) _KTDatasForIDSProtoKeyTransparencyTrustedDevices:? serviceIdentifier:?];
  v8 = [*(a1 + 32) peerIDManager];
  v9 = [v8 keyTransparencyContextForService:*(a1 + 40) fromURI:*(a1 + 48) toURI:*(a1 + 48)];

  v10 = [IDSKeyTransparencyIndex alloc];
  v11 = *(a1 + 40);
  v55 = v9;
  v12 = [v9 accountKey];
  v13 = [(IDSKeyTransparencyIndex *)v10 initWithServiceIdentifier:v11 accountKey:v12 URI:*(a1 + 48)];

  v63 = objc_alloc_init(NSMutableSet);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v14 = *(a1 + 56);
  v15 = [v14 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v76;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v76 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(a1 + 56) objectForKeyedSubscript:*(*(&v75 + 1) + 8 * i)];
        v20 = [v19 serverLoggableDatas];
        [v63 addObjectsFromArray:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v16);
  }

  v21 = [v63 allObjects];
  v54 = v13;
  [*(a1 + 32) _mutateSuccessfulSyncIndicatorOnKTLoggableDatas:v7 forIndex:v13];
  v22 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 __imArrayByApplyingBlock:&stru_100BE5DC0];
    v24 = [v7 __imArrayByApplyingBlock:&stru_100BE5DE0];
    *buf = 138412546;
    v82 = v23;
    v83 = 2112;
    v84 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Calling in to note KT synced datas on existing UUID for self-validation { serverKTDataPushTokens: %@, syncedKTDataPushTokens: %@ }", buf, 0x16u);
  }

  v53 = v21;
  v56 = v7;

  v58 = a1;
  v25 = [*(a1 + 64) dependentRegistrationsIncludingCurrentDevice];
  v66 = objc_alloc_init(NSMutableDictionary);
  v65 = objc_alloc_init(NSMutableDictionary);
  v64 = objc_alloc_init(NSMutableDictionary);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v25;
  v26 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
  if (v26)
  {
    v27 = v26;
    v62 = *v72;
    v61 = IDSDevicePropertyPushToken;
    v60 = IDSDevicePropertyPrivateDeviceData;
    v28 = IDSPrivateDeviceDataProductBuildVersion;
    v29 = IDSPrivateDeviceDataProductName;
    v30 = IDSPrivateDeviceDataTransparencyVersion;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v72 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v71 + 1) + 8 * j);
        v33 = [v32 objectForKey:{v61, v53}];
        v34 = [v32 objectForKey:v60];
        v35 = [v34 objectForKey:v28];
        v36 = [v34 objectForKey:v29];
        v37 = [v34 objectForKey:v30];
        [v66 setObject:v35 forKeyedSubscript:v33];
        [v65 setObject:v36 forKeyedSubscript:v33];
        [v64 setObject:v37 forKeyedSubscript:v33];
      }

      v27 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    }

    while (v27);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v38 = v53;
  v39 = [v38 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v68;
    do
    {
      for (k = 0; k != v40; k = k + 1)
      {
        if (*v68 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v67 + 1) + 8 * k);
        v44 = [v43 deviceID];
        v45 = [v66 objectForKeyedSubscript:v44];
        [v43 setBuild:v45];

        v46 = [v43 deviceID];
        v47 = [v65 objectForKeyedSubscript:v46];
        [v43 setProduct:v47];

        v48 = [v43 deviceID];
        v49 = [v64 objectForKeyedSubscript:v48];
        [v43 setVersion:v49];
      }

      v40 = [v38 countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v40);
  }

  v50 = [[KTSelfVerificationInfo alloc] initWithSyncedLoggableDatas:v56 uriToServerLoggableDatas:*(v58 + 56)];
  v51 = [*(v58 + 64) primaryRegistration];
  v52 = [v51 pushToken];
  [v50 setSelfDeviceID:v52];

  (*(*(v58 + 72) + 16))();
}

void sub_1006ED50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006ED530(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    v8 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10093437C();
    }

    v9 = 0;
  }

  else
  {
    v9 = [a1[4] _IDSKTAccountStatusForKTAccountStatus:{objc_msgSend(v5, "accountStatus")}];
    v8 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 accountStatus]);
      v11 = [NSNumber numberWithInteger:v9];
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received KTAccountStatus from transparency. { KTAccountStatus: %@, currentKTAccountStatus: %@ }", buf, 0x16u);
    }
  }

  v12 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006ED740;
  block[3] = &unk_100BE5E58;
  block[4] = WeakRetained;
  v15 = v9;
  v14 = a1[5];
  dispatch_async(v12, block);
}

uint64_t sub_1006ED740(uint64_t a1)
{
  [*(a1 + 32) setMostRecentKTCDPAccountStatus:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_1006EECDC(uint64_t a1, void *a2)
{
  [a2 state];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1006EF990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;
  v7 = [v3 state];
  v8 = +[IDSFoundationLog KeyTransparency];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v3 error];
      *buf = 134218242;
      v24 = v6;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to sync KVS. { timeInterval: %f, error: %@ }", buf, 0x16u);
    }

    v11 = +[TransparencyAnalytics logger];
    v12 = [v3 error];
    [v11 logResultForEvent:@"ktKVSSync" hardFailure:1 result:v12];

    v13 = +[TransparencyAnalytics logger];
    v14 = [NSNumber numberWithDouble:v6];
    v15 = [NSString stringWithFormat:@"%@-%@", @"ktKVSSyncTime", @"Failure"];
    [v13 logMetric:v14 withName:v15];

    v16 = *(a1 + 40);
    v17 = [v3 error];
    [v16 failWithError:v17];
  }

  else
  {
    if (v9)
    {
      *buf = 134217984;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully synced KVS. {timeInterval: %f", buf, 0xCu);
    }

    v18 = +[TransparencyAnalytics logger];
    [v18 logSuccessForEventNamed:@"ktKVSSync"];

    v19 = +[TransparencyAnalytics logger];
    v20 = [NSNumber numberWithDouble:v6];
    v21 = [NSString stringWithFormat:@"%@-%@", @"ktKVSSyncTime", @"Success"];
    [v19 logMetric:v20 withName:v21];

    v22 = *(a1 + 40);
    v17 = +[NSNull null];
    [v22 fulfillWithValue:v17];
  }
}

void sub_1006EFF34(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(a1 + 32) isKeyInKVS:*(*(&v10 + 1) + 8 * i)])
        {

          v8 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "This device is missing from KVS. Uploading it.", v9, 2u);
          }

          v3 = [*(a1 + 32) keyManager];
          [v3 updateKVSForKTRegistrationData];
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_1006F0160(uint64_t a1)
{
  v1 = [*(a1 + 32) keyTransparencyStore];
  v2 = [v1 fetchAllEntries];

  theDict = objc_alloc_init(NSMutableDictionary);
  v17 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v19 = IDSKTKVSTrustedDeviceMetadataKey;
    v20 = IDSKTKVSTrustedDeviceKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [IDSProtoKeyTransparencyTrustedDevice alloc];
          v11 = [v9 objectForKey:v20];
          v12 = [(IDSProtoKeyTransparencyTrustedDevice *)v10 initWithData:v11];

          v13 = [IDSProtoKeyTransparencyTrustedDeviceMetadata alloc];
          v14 = [v9 objectForKey:v19];
          v15 = [(IDSProtoKeyTransparencyTrustedDeviceMetadata *)v13 initWithData:v14];

          if (v12)
          {
            CFDictionarySetValue(theDict, v8, v12);
          }

          if (v15)
          {
            CFDictionarySetValue(v17, v8, v15);
          }
        }

        else
        {
          v12 = +[IDSFoundationLog KeyTransparency];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v8;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "KVSEntry not of expected type, skipping. {kvsKey: %@}", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

BOOL sub_1006F16F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 registrationDataSource];
  v6 = [*(a1 + 40) serviceIdentifier];
  v7 = [v4 pushToken];

  v8 = [v5 expectedRemoteKeyTransparencyEligibilityForServiceIdentifier:v6 pushToken:v7];
  return v8 == 1;
}

unint64_t sub_1006F194C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 trustedServices];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1006F1A68;
  v12 = &unk_100BE5F40;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v4 = [v3 __imArrayByFilteringWithBlock:&v9];

  v5 = [*(a1 + 40) pushToken];
  v6 = [v7 pushToken];

  LODWORD(v7) = [v5 isEqual:v6];
  if ([v4 count])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1006F1A68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serviceIdentifier];
  if (v4)
  {
    v5 = [*(a1 + 32) serviceIdentifier];
    v6 = [v3 serviceIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 ktLoggableData];
  v9 = [v8 data];
  if (v9)
  {
    v10 = [*(a1 + 40) loggableData];
    v11 = [v3 ktLoggableData];
    v12 = [v11 data];
    v13 = [v10 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(a1 + 32) URI];
  if (v14)
  {
    v15 = [v3 uris];
    v16 = [v15 __imArrayByApplyingBlock:&stru_100BE5F18];
    v17 = [*(a1 + 32) URI];
    v18 = [v16 containsObject:v17];
  }

  else
  {
    v18 = 0;
  }

  return v7 & v13 & v18;
}

IDSKeyTransparencyEntry *sub_1006F2224(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 trustedServices];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 serviceIdentifier];
        if ([v10 isEqualToString:*(a1 + 32)])
        {

LABEL_13:
          v15 = [v9 ktLoggableData];
          v13 = [v15 data];

          v14 = [v9 deviceSignature];
          goto LABEL_14;
        }

        v11 = [v9 keyIndex];
        v12 = sub_1005F0F88([*(a1 + 40) ktRegistrationDataIndex]);

        if (v11 == v12)
        {
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v13 = 0;
      v14 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_14:

  v16 = [v3 pushToken];
  if (v16 && v13)
  {

    if (v14)
    {
      v17 = [IDSKeyTransparencyEntry alloc];
      v18 = [v3 pushToken];
      v19 = [(IDSKeyTransparencyEntry *)v17 initWithPushToken:v18 loggableData:v13 signedData:v14];

      [(IDSKeyTransparencyEntry *)v19 setKtCapable:1];
      v20 = [v3 productName];
      [(IDSKeyTransparencyEntry *)v19 setProductName:v20];

      v21 = [v3 buildVersion];
      [(IDSKeyTransparencyEntry *)v19 setBuildVersion:v21];

      -[IDSKeyTransparencyEntry setTransparencyVersion:](v19, "setTransparencyVersion:", [v3 transparencyVersion]);
      goto LABEL_20;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_20:

  return v19;
}

int64_t sub_1006F2B6C(id a1, NSData *a2, NSData *a3)
{
  v4 = a3;
  v5 = [(NSData *)a2 __imHexString];
  v6 = [(NSData *)v4 __imHexString];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1006F2FE8(id a1)
{
  v3[0] = IDSiMessageKeyTransparencyService;
  v3[1] = IDSMultiplex1KeyTransparencyService;
  v4[0] = @"im://";
  v4[1] = @"mp1://";
  v3[2] = IDSFaceTimeMultiKeyTransparencyService;
  v4[2] = @"ftm://";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_100CBF5F8;
  qword_100CBF5F8 = v1;
}

void sub_1006F3BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(*(a1 + 32) + 120) allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) remoteObjectProxy];
        [v9 handleRegistrationStateUpdate:v3];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1006F73D4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v25 = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched Stewie enablement status: %@  error: %@", &v25, 0x16u);
  }

  if (!v5 && (a2 & 1) != 0 || ([*(a1 + 32) isStewieEnabled] & 1) != 0)
  {
    v9 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notified of startup, checking stewie components", &v25, 2u);
    }

    v10 = [*(a1 + 32) store];
    [v10 persistStewieEnabled];

    if (CUTIsInternalInstall())
    {
      v11 = [*(a1 + 32) store];
      v12 = [v11 persistedSPSEnvironment];

      v13 = IMGetSPSEnvironmentName();
      if ([v12 length] && (objc_msgSend(v13, "isEqualToIgnoringCase:", v12) & 1) == 0)
      {
        v14 = +[IDSFoundationLog stewieProvisioning];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412546;
          v26 = v12;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SPS Environment changed - was: %@, is now: %@", &v25, 0x16u);
        }

        [*(a1 + 32) clearAllState];
      }
    }

    if (+[IMUserDefaults clearStewieStoreOnLaunch])
    {
      v15 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Detected clear state default", &v25, 2u);
      }

      [*(a1 + 32) clearAllState];
    }

    v16 = [*(a1 + 32) store];
    v8 = [v16 persistedNextHeartbeat];

    v17 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Loaded next heartbeat { nextHeartbeat: %@ }", &v25, 0xCu);
    }

    if (v8)
    {
      sub_100934710(*(a1 + 32), v8);
    }

    v18 = [*(a1 + 32) store];
    v19 = [v18 persistedNextRollKeys];

    v20 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Loaded next roll keys { nextRollKeys: %@ }", &v25, 0xCu);
    }

    if (v19)
    {
      sub_100934844(*(a1 + 32), v19);
    }

    v21 = [*(a1 + 32) store];
    v22 = [v21 persistedNextRollSMSConfig];

    v23 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Loaded next roll sms config { nextRollSMSConfig: %@ }", &v25, 0xCu);
    }

    if (v22)
    {
      sub_100934970(*(a1 + 32), v22);
    }

    sub_100934AA0(*(a1 + 32));
    sub_100934B38(*(a1 + 32));
    v24 = [*(a1 + 32) sessionKeyManager];
    [v24 performInitialKeyInfoCheck];

    sub_1006F7870(*(a1 + 32));
    sub_100934BCC(*(a1 + 32));
  }

  else
  {
    v8 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stewie is not enabled, not checking stewie components", &v25, 2u);
    }
  }
}

void sub_1006F7870(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    if (_os_feature_enabled_impl())
    {
      v2 = +[IDSDiagnosticInfoHandler sharedInstance];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1006F7A1C;
      v7[3] = &unk_100BDAB58;
      v3 = &v8;
      objc_copyWeak(&v8, &location);
      v4 = [val queue];
      [v2 registerDiagnosticInfoBlock:v7 title:@"IDS-Stewie" queue:v4];
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1006F7AF8;
      v5[3] = &unk_100BDAB80;
      v3 = &v6;
      objc_copyWeak(&v6, &location);
      v2 = [val queue];
      sub_1006085C4(v5, @"IDS-Stewie", v2);
    }

    objc_destroyWeak(v3);
    objc_destroyWeak(&location);
  }
}

void sub_1006F79EC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1006F7A1C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSMutableString string];
    v5 = [WeakRetained store];
    v6 = [v5 persistedStewieLoggingGUID];
    [v4 appendFormat:@"Stewie logging GUID: %@", v6];

    v7[2](v7, v4);
  }

  else
  {
    v7[2](v7, 0);
  }
}

uint64_t sub_1006F7AF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained store];
      v4 = [v3 persistedStewieLoggingGUID];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stewie logging GUID: %@", &v6, 0xCu);
    }
  }

  return 0;
}

void sub_1006F8DA8(uint64_t a1)
{
  v2 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100935550(a1, v2);
  }

  v3 = [*(a1 + 40) phoneNumberManager];
  [v3 performInitialPhoneInfoCheck];
}

id sub_1006F9DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = v14;

  return [v15 initWithQueue:v16 interval:a4 repeats:0 handlerBlock:&a10];
}

void sub_1006F9DD4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

BOOL sub_1006F9E14(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1006F9E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006F9ED4;
  v8[3] = &unk_100BE6070;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  v8[8] = a5;
  v8[9] = a6;
  v8[10] = a7;
  sub_1004A9FB8(@"INSERT INTO firewall_record (handle, merge_id, service, category, is_donated, last_seen_date, last_modified_date) VALUES (?, ?, ?, ?, ?, ?, ?);", v8);
  return 1;
}

uint64_t sub_1006F9ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006F9F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006F9FE0;
  v7[3] = &unk_100BE6090;
  v7[4] = a2;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a1;
  v7[8] = a3;
  v7[9] = a4;
  sub_1004A9FB8(@"UPDATE firewall_record SET merge_id = ?, last_seen_date = ?, last_modified_date = ? WHERE handle = ? AND category = ? AND is_donated = ?;", v7);
  return 1;
}

uint64_t sub_1006F9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006FA060(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"DELETE FROM firewall_record WHERE handle ");
  CFArrayGetCount(a1);
  v5 = CSDBGenerateInClauseForCount();
  CFStringAppend(Mutable, v5);
  CFStringAppend(Mutable, @"AND category = ?");
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006FA130;
  v7[3] = &unk_100BE2828;
  v7[4] = a1;
  v7[5] = a2;
  sub_1004A9FB8(Mutable, v7);
  return 1;
}

uint64_t sub_1006FA130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFArrayOfCFStrings();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006FA180(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"DELETE FROM firewall_record WHERE merge_id ");
  CFArrayGetCount(a1);
  v5 = CSDBGenerateInClauseForCount();
  CFStringAppend(Mutable, v5);
  CFStringAppend(Mutable, @"AND category = ?");
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006FA250;
  v7[3] = &unk_100BE2828;
  v7[4] = a1;
  v7[5] = a2;
  sub_1004A9FB8(Mutable, v7);
  return 1;
}

uint64_t sub_1006FA250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFArrayOfCFStrings();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006FA2A0(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"DELETE FROM firewall_record WHERE handle ");
  CFArrayGetCount(a1);
  v7 = CSDBGenerateInClauseForCount();
  CFStringAppend(Mutable, v7);
  CFStringAppend(Mutable, @"AND category = ? AND is_donated = ?;");
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006FA378;
  v9[3] = &unk_100BE60B0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  sub_1004A9FB8(Mutable, v9);
  return 1;
}

uint64_t sub_1006FA378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFArrayOfCFStrings();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006FA3D4(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"DELETE FROM firewall_record WHERE merge_id ");
  CFArrayGetCount(a1);
  v7 = CSDBGenerateInClauseForCount();
  CFStringAppend(Mutable, v7);
  CFStringAppend(Mutable, @"AND category = ? AND is_donated = ?;");
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006FA4AC;
  v9[3] = &unk_100BE60B0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  sub_1004A9FB8(Mutable, v9);
  return 1;
}

uint64_t sub_1006FA4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFArrayOfCFStrings();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006FA508(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006FA580;
  v3[3] = &unk_100BE2828;
  v3[4] = a1;
  v3[5] = a2;
  sub_1004A9FB8(@"DELETE FROM firewall_record WHERE category = ? AND is_donated = ?", v3);
  return 1;
}

uint64_t sub_1006FA580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006FA5D0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006FA648;
  v2[3] = &unk_100BD7E40;
  v2[4] = a1;
  sub_1004A9FB8(@"DELETE FROM firewall_record WHERE category = ?", v2);
  return 1;
}

uint64_t sub_1006FA648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1006FA688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006FA750;
  v5[3] = &unk_100BE60D8;
  v5[6] = a2;
  v5[7] = a3;
  v5[4] = &v6;
  v5[5] = a1;
  sub_1004AA024(@"SELECT COUNT(1) FROM firewall_record WHERE handle = ? AND category = ? AND is_donated = ?LIMIT 1;", v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_1006FA750(uint64_t a1)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  result = CSDBSqliteStep();
  if (result)
  {
    result = CSDBSqliteStatementInteger64ResultColumn();
    *(*(*(a1 + 32) + 8) + 24) = result > 0;
  }

  return result;
}

uint64_t sub_1006FA7C4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006FA88C;
  v4[3] = &unk_100BD7A90;
  v4[5] = a1;
  v4[6] = a2;
  v4[4] = &v5;
  sub_1004AA024(@"SELECT COUNT(1) FROM firewall_record WHERE handle = ? AND category = ?LIMIT 1;", v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_1006FA88C(uint64_t a1)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  result = CSDBSqliteStep();
  if (result)
  {
    result = CSDBSqliteStatementInteger64ResultColumn();
    *(*(*(a1 + 32) + 8) + 24) = result > 0;
  }

  return result;
}

uint64_t sub_1006FA8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006FA9BC;
  v5[3] = &unk_100BE60D8;
  v5[6] = a2;
  v5[7] = a3;
  v5[4] = &v6;
  v5[5] = a1;
  sub_1004AA024(@"SELECT COUNT(1) FROM firewall_record WHERE merge_id = ? AND category = ? AND is_donated = ?LIMIT 1;", v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_1006FA9BC(uint64_t a1)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  result = CSDBSqliteStep();
  if (result)
  {
    result = CSDBSqliteStatementInteger64ResultColumn();
    *(*(*(a1 + 32) + 8) + 24) = result > 0;
  }

  return result;
}

uint64_t sub_1006FAA30(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006FAAF8;
  v4[3] = &unk_100BD7A90;
  v4[5] = a1;
  v4[6] = a2;
  v4[4] = &v5;
  sub_1004AA024(@"SELECT COUNT(1) FROM firewall_record WHERE merge_id = ? AND category = ?LIMIT 1;", v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_1006FAAF8(uint64_t a1)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  result = CSDBSqliteStep();
  if (result)
  {
    result = CSDBSqliteStatementInteger64ResultColumn();
    *(*(*(a1 + 32) + 8) + 24) = result > 0;
  }

  return result;
}

uint64_t sub_1006FAB60(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006FAC24;
  v3[3] = &unk_100BE6100;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1004AA024(@"SELECT DISTINCT handle, last_seen_date, is_donated, merge_id FROM firewall_record WHERE category = ?;", v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1006FAC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FAC24(uint64_t a1)
{
  CSDBSqliteBindInt64();
  result = CSDBSqliteStatementCopyAllRowsStringsForColumnsAtIndices();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1006FAC70(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006FAD34;
  v3[3] = &unk_100BE6100;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1004AA024(@"SELECT DISTINCT handle, last_seen_date, is_donated, merge_id FROM firewall_record WHERE category = ? AND is_donated = 1;", v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1006FAD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FAD34(uint64_t a1)
{
  CSDBSqliteBindInt64();
  result = CSDBSqliteStatementCopyAllRowsStringsForColumnsAtIndices();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1006FAD80(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1006FADF4;
  v1[3] = &unk_100BD7E40;
  v1[4] = a1;
  sub_1004A9FB8(@"DELETE from firewall_record WHERE last_seen_date < ? AND is_donated = 0; ", v1);
}

uint64_t sub_1006FADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_100702B50(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_initially_inactive(v1);
  object = dispatch_queue_create("IDSGroupAgentQueue", v2);

  v3 = IDSRealTimeContext();
  nw_queue_context_target_dispatch_queue();

  dispatch_activate(object);
  v4 = [[IDSGroupAgent alloc] initWithQueue:object isSessionControlEnabled:_os_feature_enabled_impl()];
  v5 = qword_100CBF608;
  qword_100CBF608 = v4;

  [qword_100CBF608 registerAgent];
  [qword_100CBF608 registerEntitledAgent];
  sub_10040AC58();
}

void sub_10070319C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = nw_array_get_object_at_index();
  if (v10)
  {
    v11 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_alias()];
    v12 = [[IDSGroupSessionConnectionParameters alloc] initWithStringRepresentation:v11];
    v13 = +[IDSFoundationLog TransportLevelAgent];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 sessionID];
      *buf = 138412802;
      v29 = v8;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "add_members_handler: request to add members %@, for sessionID %@, client %@", buf, 0x20u);
    }

    v27 = v7;

    v15 = [*(a1 + 32) membersArrayDict];
    v16 = [v12 sessionID];
    v17 = [v15 objectForKey:v16];

    if (v17)
    {
      v18 = +[IDSFoundationLog TransportLevelAgent];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "add_members_handler: current members found %@", buf, 0xCu);
      }

      combined_array = nw_array_create_combined_array();
    }

    else
    {
      combined_array = v8;
    }

    v20 = [*(a1 + 32) membersArrayDict];
    v21 = [v12 sessionID];
    [v20 setObject:combined_array forKey:v21];

    v22 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_name()];
    v23 = nw_array_create();
    v24 = v22;
    v25 = v23;
    nw_array_apply();
    v26 = +[IDSFoundationLog TransportLevelAgent];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "add_members_handler: calling assign with %@", buf, 0xCu);
    }

    v9[2](v9, v25);
    v7 = v27;
  }

  else
  {
    v11 = +[IDSFoundationLog TransportLevelAgent];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "add_members_handler: nw_agent_set_group_handlers called with empty array", buf, 2u);
    }
  }
}

uint64_t sub_100703588(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_name()];
  if ([*(a1 + 32) isEqualToString:v5])
  {
    nw_array_append();
  }

  return 1;
}

void sub_100703610(id a1, OS_nw_agent_client *a2, OS_nw_array *a3, id a4)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to remove members %@, for client %@ ", &v8, 0x16u);
  }
}

void sub_1007036E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nw_agent_client_copy_endpoint();
  v8 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Client starting flow to %@\n", buf, 0xCu);
  }

  if (v7)
  {
    v9 = [NSString stringWithFormat:@"%s", nw_endpoint_get_description()];
    v10 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v9];
    v11 = [IDSTransportLevelAgentClientInfo alloc];
    v12 = [v10 appleID];
    v13 = [(IDSTransportLevelAgentClientInfo *)v11 initWithAgentClient:v5 assign:v6 parameters:v12];

    [(IDSTransportLevelAgentClientInfo *)v13 setLocalEndpoint:v7];
    [(IDSTransportLevelAgentClientInfo *)v13 setEndpoint:v7];
    v14 = sub_100703960();
    v15 = [v10 secondaryPort];
    v16 = [v15 stringValue];

    host = nw_endpoint_create_host([v14 cStringUsingEncoding:134217984], objc_msgSend(v16, "cStringUsingEncoding:", 134217984));
    [(IDSTransportLevelAgentClientInfo *)v13 setLocalEndpoint:host];

    [*(*(a1 + 32) + 96) connectionRequest:v13];
    [*(*(a1 + 32) + 80) setObject:v13 forKey:v9];
  }

  else
  {
    v9 = nw_agent_client_copy_path();
    if ((nw_path_is_listener() & 1) == 0)
    {
      (*(v6 + 2))(v6, 0, 0, 0);
    }
  }
}

id sub_100703960()
{
  v6 = 0;
  v5 = 0;
  v4 = 1;
  arc4random_buf(&v5, 8uLL);
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8[14] = v0;
  *v7 = v0;
  *v8 = v0;
  inet_ntop(30, &v4, v7, 0x2Eu);
  v1 = [NSString stringWithUTF8String:v7, 7708, v4];
  v2 = [v1 stringByAppendingString:@"%"];

  return v2;
}

void sub_100703A40(uint64_t a1)
{
  v2 = nw_agent_client_copy_endpoint();
  v3 = [NSString stringWithFormat:@"%@", v2];

  v4 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client stopped flow to endpoint %@\n", buf, 0xCu);
  }

  v5 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v3];
  v6 = [IDSGroupSessionConnectionParameters alloc];
  v7 = [v5 appleID];
  v8 = [v6 initWithStringRepresentation:v7];

  if (v8 && ![v8 participantID])
  {
    v9 = [*(a1 + 32) membersArrayDict];
    v10 = [v8 sessionID];
    [v9 removeObjectForKey:v10];

    v11 = [*(a1 + 32) portCollisionDetection];
    v12 = [v8 sessionID];
    [v11 removeObjectForKey:v12];

    v13 = [*(a1 + 32) managedSessions];
    v14 = [v8 sessionID];
    v15 = [v13 objectForKey:v14];

    if (v15)
    {
      v16 = +[IDSFoundationLog TransportLevelAgent];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v8 sessionID];
        *buf = 138412290;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Group session %@ ended.", buf, 0xCu);
      }

      v18 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100703DE8;
      block[3] = &unk_100BD6E40;
      v26 = v15;
      v19 = v8;
      v27 = v19;
      dispatch_async(v18, block);

      v20 = [*(a1 + 32) managedSessions];
      v21 = [v19 sessionID];
      [v20 removeObjectForKey:v21];
    }

    v22 = *(*(a1 + 32) + 112);
    v23 = [v8 sessionID];
    [v22 removeObjectForKey:v23];
  }

  [*(*(a1 + 32) + 72) setObject:0 forKeyedSubscript:v3];
  v24 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v3];
  if (v24)
  {
    [*(*(a1 + 32) + 96) connectionCancel:v24];
    [*(*(a1 + 32) + 80) removeObjectForKey:v3];
  }
}

void sub_100703DE8(uint64_t a1)
{
  [*(a1 + 32) endSession];
  v3 = +[IDSDSessionController sharedInstance];
  v2 = [*(a1 + 40) sessionID];
  [v3 cleanupSession:v2 shouldCleanSessionStatus:1];
}

void sub_100703E64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_agent_client_copy_endpoint();
  v6 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "resolve_handler: resolve request for endpoint %@\n", &v9, 0xCu);
  }

  if (v5)
  {
    v7 = nw_array_create();
    if ([*(a1 + 32) isAppleEndpointForExistingSession:v5])
    {
      v8 = [*(a1 + 32) resolveAppleEndpoint:v5];
      if (v8)
      {
        nw_array_append();
      }

      v4[2](v4, v7);
    }
  }
}

void sub_100703F94(id a1, OS_nw_agent_client *a2)
{
  v2 = nw_agent_client_copy_endpoint();
  v3 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resolve_handler: stop_resolve_handler called for endpoint:%@", &v4, 0xCu);
  }
}

void sub_1007043D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resolve_handler: resolve request for client %@\n", buf, 0xCu);
  }

  v8 = nw_agent_client_copy_endpoint();
  if (v8)
  {
    v9 = nw_array_create();
    v10 = nw_agent_client_copy_path();
    v11 = nw_path_copy_parameters();
    v12 = nw_parameters_get_server_mode() ^ 1;
    v13 = +[IDSFoundationLog TransportLevelAgent];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v25) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "resolve_handler: isClient: %d\n", buf, 8u);
    }

    v14 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1007045E4;
    v19[3] = &unk_100BE6290;
    v15 = v6;
    v16 = *(a1 + 32);
    v20 = v9;
    v21 = v16;
    v22 = v11;
    v23 = v15;
    v17 = v11;
    v18 = v9;
    [v14 createNewSessionForClientRequest:v8 isClient:v12 registrationCompletionBlock:v19];
  }
}

void sub_1007045E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:IDSSessionUniqueIDKey];
  if (v5)
  {
    [*(a1 + 40) resolveAirDropProEndpointWithParams:*(a1 + 48) options:v4 agentResolveResponse:*(a1 + 56)];
  }

  else
  {
    v6 = +[IDSFoundationLog TransportLevelAgent];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "resolve_handler: could not create session.", v7, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1007046B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nw_agent_client_copy_endpoint();
  v5 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resolve_handler: stop_resolve_handler called for client:%@", buf, 0xCu);
  }

  if ([*(a1 + 32) isAirDropSession:v4])
  {
    v6 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_alias()];
    v7 = [v6 componentsSeparatedByString:@":"];
    if ([v7 count] <= 4)
    {
      sub_100935698();
    }

    v8 = [v7 objectAtIndexedSubscript:4];
    v9 = [*(*(a1 + 32) + 104) objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      [v9 leaveGroupSession:0 options:0];
      [*(*(a1 + 32) + 104) removeObjectForKey:v8];
      [*(*(a1 + 32) + 112) removeObjectForKey:v8];
      [*(*(a1 + 32) + 120) removeObjectForKey:v8];
    }
  }
}

void sub_1007054C8(uint64_t a1)
{
  v2 = +[IDSDSessionController sharedInstance];
  v3 = [v2 setupNewOutgoingSessionWithOptions:*(a1 + 32)];

  if (v3)
  {
    [v3 setClientID:*(a1 + 56)];
    v4 = +[IDSFoundationLog TransportLevelAgent];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Created new sesssion: %@", buf, 0xCu);
    }

    [*(*(a1 + 40) + 104) setValue:v3 forKey:*(a1 + 48)];
    v5 = +[NSMutableDictionary dictionary];
    memset(buf, 170, 20);
    arc4random_buf(buf, 0x14uLL);
    v6 = [NSData dataWithBytes:buf length:20];
    [v5 setObject:v6 forKeyedSubscript:IDSGroupSessionParticipantDataKey];

    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSGroupSessionIsReliableUnicastSession];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSGroupSessionStartedAsUPlusOneKey];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSGroupSessionNewServerAllocationKey];
    [v3 joinWithOptions:v5];
  }

  else
  {
    v5 = [*(*(a1 + 40) + 104) objectForKey:*(a1 + 48)];
    if (v5)
    {
      v7 = +[IDSFoundationLog TransportLevelAgent];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        *buf = 138412546;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resolve_handler: Found existing session %@ with sessiondID %@, calling registration completion handler!", buf, 0x16u);
      }

      v19 = IDSSessionUniqueIDKey;
      v20 = *(a1 + 48);
      v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v10 = [*(a1 + 40) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100705858;
      block[3] = &unk_100BD7298;
      v11 = *(a1 + 64);
      v17 = v9;
      v18 = v11;
      v12 = v9;
      dispatch_async(v10, block);
    }

    else
    {
      v13 = [*(a1 + 40) queue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100705870;
      v14[3] = &unk_100BD7270;
      v15 = *(a1 + 64);
      dispatch_async(v13, v14);

      v12 = v15;
    }
  }
}

void sub_100705F34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = 0;
  v7 = [*(a1 + 32) entitledAgent];
  nw_agent_get_uuid();

  nw_endpoint_set_agent_identifier();
  v8 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:*(a1 + 40)];
  if (!v8)
  {
    v8 = nw_array_create();
    [*(*(a1 + 32) + 112) setObject:v8 forKey:*(a1 + 40)];
  }

  nw_array_append();
  v9 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "resolve_handler: storing evaluator:%@, responding with endpoints: %@", &v10, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  [*(*(a1 + 32) + 120) setObject:v5 forKey:*(a1 + 40)];
}

uint64_t sub_1007064CC(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  memset(v5, 170, 20);
  CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), v5);
  v2 = [NSData dataWithBytes:v5 length:20];
  v3 = *[v2 bytes];

  return v3;
}

Swift::Int sub_100706A08()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1);
  return sub_1009376C8();
}

Swift::Int sub_100706A7C()
{
  v1 = *v0;
  sub_100937668();
  sub_100937678(v1);
  return sub_1009376C8();
}

uint64_t sub_100706AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB2AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100706B30(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100706B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100706B30(&qword_100CB2AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100706C28@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24[1] = a1;
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706EE8(v4, v15, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100706F50(v15, v12, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
    if (a2)
    {
      v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
      v18 = v12;
      goto LABEL_7;
    }

    sub_100936018();
    v20 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
    v21 = v12;
LABEL_11:
    sub_100706FB8(v21, v20);
    v19 = 0;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100706F50(v15, v9, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    if (a2)
    {
      v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
      v18 = v9;
LABEL_7:
      sub_100706FB8(v18, v17);
      goto LABEL_8;
    }

    sub_100936018();
    v20 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
    v21 = v9;
    goto LABEL_11;
  }

LABEL_8:
  v19 = 1;
LABEL_12:
  v22 = sub_100936038();
  return (*(*(v22 - 8) + 56))(a3, v19, 1, v22);
}

uint64_t sub_100706EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100706F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100706FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100707018@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706EE8(v2, v12, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16 = 1;
      goto LABEL_7;
    }

    sub_100706F50(v12, v6, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    sub_100706EE8(&v6[*(v4 + 20)], a1, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
    v15 = v6;
  }

  else
  {
    sub_100706F50(v12, v9, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
    sub_100706EE8(&v9[*(v7 + 20)], a1, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
    v15 = v9;
  }

  sub_100706FB8(v15, v14);
  v16 = 0;
LABEL_7:
  v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  return (*(*(v17 - 8) + 56))(a1, v16, 1, v17);
}

uint64_t sub_100707280()
{
  v1 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706EE8(v0, v9, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x79656B206F6ELL;
    }

    sub_100706F50(v9, v3, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_100937248(29);
    v17._countAndFlagsBits = 0x7379656B206F7774;
    v17._object = 0xEF20666F20736120;
    sub_100936C08(v17);
    sub_100935FA8();
    sub_100936DF8();
    v18._countAndFlagsBits = 0x73646E6F63657320;
    v18._object = 0xEC0000006F676120;
    sub_100936C08(v18);
    v11 = v15;
    v12 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
    v13 = v3;
  }

  else
  {
    sub_100706F50(v9, v6, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_100937248(28);
    v19._countAndFlagsBits = 0x2079656B20656E6FLL;
    v19._object = 0xEE0020666F207361;
    sub_100936C08(v19);
    sub_100935FA8();
    sub_100936DF8();
    v20._countAndFlagsBits = 0x73646E6F63657320;
    v20._object = 0xEC0000006F676120;
    sub_100936C08(v20);
    v11 = v15;
    v12 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
    v13 = v6;
  }

  sub_100706FB8(v13, v12);
  return v11;
}

uint64_t sub_100707590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100707614@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(a1 + v2[6]) = 0;
  *(a1 + v2[7] + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a1 + v2[8]) = 0;
  v4 = v2[9];
  if (&_swiftEmptyArrayStorage >> 62)
  {
    if (sub_1009373F8())
    {
      sub_100714450(&_swiftEmptyArrayStorage);
    }

    else
    {
      v7 = &_swiftEmptySetSingleton;
    }

    *(a1 + v4) = v7;
    if (sub_1009373F8())
    {
      sub_100714450(&_swiftEmptyArrayStorage);
    }

    else
    {
      v5 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
    *(a1 + v4) = &_swiftEmptySetSingleton;
  }

  *(a1 + v2[10]) = v5;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = &_swiftEmptyArrayStorage;
  result = sub_100935FB8();
  *(a1 + v2[15]) = 1;
  return result;
}

uint64_t sub_10070774C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock((v1 + v2));
  return Strong;
}

void sub_1007077FC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_10071471C(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
}

void (*sub_1007078AC(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  *(v3 + 16) = v5;
  v6 = *v5;
  v7 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  *(v3 + 24) = v7;
  v8 = *(v6 + 48);
  *(v3 + 32) = v8;
  v9 = (v8 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v9));
  v10 = v5 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 28) + v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = *(v10 + 1);
  os_unfair_lock_unlock((v5 + v9));
  *v4 = Strong;
  v4[1] = v12;
  return sub_1007079B4;
}

void sub_1007079B4(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = (*(*a1 + 8) + 3) & 0x1FFFFFFFCLL;
  if (a2)
  {
    v6 = **a1;
    os_unfair_lock_lock(&v4[v5]);
    sub_100715BF0(v3 + v4);
    os_unfair_lock_unlock(&v4[v5]);
  }

  else
  {
    v7 = **a1;
    os_unfair_lock_lock(&v4[v5]);
    sub_100715BF0(v3 + v4);
    os_unfair_lock_unlock(&v4[v5]);
  }

  free(v2);
}

uint64_t sub_100707A90()
{
  v1 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_shortKIEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100707AD4(char a1)
{
  v3 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_shortKIEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100707B88()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v1 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 20) + v2);
  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

void sub_100707C3C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v8 = v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  v10 = v8 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 20);
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3 & 1;
  sub_1007099F0(v8);

  os_unfair_lock_unlock((v7 + v9));
}

void (*sub_100707D10(uint64_t *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  *(v3 + 32) = v5;
  v6 = *v5;
  v7 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  *(v3 + 40) = v7;
  v8 = *(v6 + 48);
  *(v3 + 20) = v8;
  v9 = (v8 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v9));
  v10 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 20);
  *(v4 + 48) = v10;
  v11 = v5 + v10 + v7;
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  os_unfair_lock_unlock((v5 + v9));
  *v4 = v12;
  *(v4 + 8) = v13;
  *(v4 + 16) = v14;
  return sub_100707E24;
}

void sub_100707E24(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v3 = v2 + (*a1)[5];
  v4 = v3 + *(*a1 + 12);
  v5 = (*(*a1 + 5) + 3) & 0x1FFFFFFFCLL;
  v6 = **a1;
  v7 = (*a1)[1];
  v8 = *(*a1 + 16);
  os_unfair_lock_lock((v2 + v5));
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  sub_1007099F0(v3);
  os_unfair_lock_unlock((v2 + v5));

  free(v1);
}

uint64_t sub_100707EC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = v1 + *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 24));
  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

void sub_100707F5C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  *(v4 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 24)) = a1 & 1;
  sub_10070AB28(v4);

  os_unfair_lock_unlock((v3 + v5));
}

void (*sub_100708018(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  *(v3 + 8) = v5;
  v6 = *v5;
  v7 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  *(v3 + 16) = v7;
  v8 = v5 + v7;
  v9 = *(v6 + 48);
  *(v3 + 24) = v9;
  v10 = (v9 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v10));
  v11 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 24);
  *(v4 + 28) = v11;
  LOBYTE(v8) = v8[v11];
  os_unfair_lock_unlock((v5 + v10));
  *(v4 + 32) = v8;
  return sub_100708118;
}

void sub_100708118(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 28);
  v3 = *(*a1 + 8);
  v4 = v3 + *(*a1 + 16);
  v5 = (*(*a1 + 24) + 3) & 0x1FFFFFFFCLL;
  v6 = *(*a1 + 32);
  os_unfair_lock_lock((v3 + v5));
  *(v4 + v2) = v6;
  sub_10070AB28(v4);
  os_unfair_lock_unlock((v3 + v5));

  free(v1);
}

uint64_t sub_1007081A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = v1 + *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 32));
  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

void sub_10070823C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1007082E8(v3 + v4, a1, v1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1007082E8(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = a3;
  v5 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 32);
  v15 = *(a1 + v14);
  if (v15)
  {
    v16 = v15 == a2;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  *(a1 + v14) = a2;
  sub_100706EE8(a1, v13, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      goto LABEL_12;
    }

    sub_100706FB8(a1, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
    sub_100706F50(v13, v7, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    v19 = *(v5 + 20);
    v20 = a1 + v19;
    sub_100706F50(&v7[v19], a1 + v19, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v21 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    v22 = v20 + *(v21 + 52);
    *v22 = a2;
    *(v22 + 8) = 0;
    v23 = *(v5 + 24);
    v24 = a1 + v23;
    sub_100706F50(&v7[v23], a1 + v23, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v25 = v24 + *(v21 + 52);
    *v25 = a2;
    *(v25 + 8) = 0;
    sub_100706B98(v7, a1);
    v26 = (v5 + 28);
    v10 = v7;
  }

  else
  {
    sub_100706FB8(a1, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
    sub_100706F50(v13, v10, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
    v27 = *(v8 + 20);
    v28 = a1 + v27;
    sub_100706F50(&v10[v27], a1 + v27, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v29 = v28 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialContent() + 52);
    *v29 = a2;
    *(v29 + 8) = 0;
    sub_100706B98(v10, a1);
    v26 = (v8 + 24);
  }

  v30 = *v26;
  v31 = sub_100936038();
  (*(*(v31 - 8) + 32))(a1 + v30, &v10[v30], v31);
  result = swift_storeEnumTagMultiPayload();
LABEL_12:
  if (v17)
  {
    return (*((swift_isaMask & *v33) + 0x188))(a1);
  }

  return result;
}

void (*sub_100708660(uint64_t *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  *(v3 + 16) = v5;
  v6 = *v5;
  v7 = *(*v5 + class metadata base offset for ManagedBuffer + 16);
  *(v3 + 24) = v7;
  v8 = v5 + v7;
  v9 = *(v6 + 48);
  *(v3 + 32) = v9;
  v10 = (v9 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v10));
  v11 = *&v8[*(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 32)];
  os_unfair_lock_unlock((v5 + v10));
  *v4 = v11;
  return sub_10070875C;
}

void sub_10070875C(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[2];
  v2 = (*a1)[3];
  v4 = (*(*a1 + 8) + 3) & 0x1FFFFFFFCLL;
  v6 = **a1;
  v5 = (*a1)[1];
  os_unfair_lock_lock((v3 + v4));
  sub_1007082E8(v3 + v2, v6, v5);
  os_unfair_lock_unlock((v3 + v4));

  free(v1);
}

void sub_1007087D4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v13 = *(*v12 + class metadata base offset for ManagedBuffer + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_100706EE8(v12 + v13, v11, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
      (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
      goto LABEL_7;
    }

    sub_100706F50(v11, v5, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    sub_100706AC0(v5, a1);
    v16 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
    v17 = v5;
  }

  else
  {
    sub_100706F50(v11, v8, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
    sub_100706AC0(v8, a1);
    v16 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
    v17 = v8;
  }

  sub_100706FB8(v17, v16);
LABEL_7:
  os_unfair_lock_unlock((v12 + v14));
}

void sub_100708A50(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_100708AF0(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_100708AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100706EE8(a1, v12, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16 = 1;
      goto LABEL_7;
    }

    sub_100706F50(v12, v6, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    sub_100706EE8(&v6[*(v4 + 20)], a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
    v15 = v6;
  }

  else
  {
    sub_100706F50(v12, v9, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
    sub_100706EE8(&v9[*(v7 + 20)], a2, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
    v15 = v9;
  }

  sub_100706FB8(v15, v14);
  v16 = 0;
LABEL_7:
  v17 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

void sub_100708D58(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v10 = *(*v9 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_100706EE8(v9 + v10, v8, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100706F50(v8, v5, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
      sub_100706EE8(&v5[*(v3 + 24)], a1, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100706FB8(v5, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
      v13 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
      (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    }

    else
    {
      v15 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
      (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }
  }

  else
  {
    v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
    (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    sub_100706FB8(v8, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  }

  os_unfair_lock_unlock((v9 + v11));
}

uint64_t sub_100708FF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = v1 + *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 60));
  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

id sub_100709094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v50 = a8;
  v49 = a7;
  v48 = a6;
  v56 = a5;
  v57 = a4;
  v59 = a3;
  v47 = a2;
  v51 = a1;
  v63 = a11;
  v64 = a12;
  v61 = a10;
  v62 = sub_1009364D8();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100936F78();
  v54 = *(v14 - 8);
  v55 = v14;
  __chkstk_darwin(v14);
  v53 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100936F38();
  __chkstk_darwin(v16);
  v17 = sub_100936528();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v12;
  v21 = objc_allocWithZone(v12);
  v22 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state;
  sub_100707614(v20);
  sub_100706B30(&qword_100CB2AA8);
  v23 = swift_allocObject();
  *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100706F50(v20, v23 + *(*v23 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
  *&v21[v22] = v23;
  v52 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_q;
  sub_100714784();
  sub_100936508();
  v66 = &_swiftEmptyArrayStorage;
  sub_100014A48(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520);
  sub_10071499C(&qword_100CB2AC0, &unk_100CB3520);
  v24 = v56;
  sub_1009370B8();
  (*(v54 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v55);
  v25 = v57;
  *&v21[v52] = sub_100936F98();
  v26 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_persistenceManager;
  *&v21[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_persistenceManager] = 0;
  *&v21[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_rollIndex] = 1;
  v27 = &v21[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_groupID];
  *v27 = v59;
  v27[1] = v25;
  sub_100022B2C(v24, &v21[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_cryptoHandler]);

  v28 = v58;
  sub_1007C9A6C(v61);
  (*(v60 + 32))(&v21[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l], v28, v62);
  v29 = v64;
  v21[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_shortKIEnabled] = v63;
  v21[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_isRatchetEnabled] = v29;
  v30 = objc_opt_self();
  v31 = [v30 sharedInstance];
  if (!v31)
  {

    v34 = 0;
    goto LABEL_5;
  }

  result = [v30 sharedInstance];
  if (result)
  {
    v33 = result;

    v34 = [v33 persistenceManager];

LABEL_5:
    swift_beginAccess();
    v35 = *&v21[v26];
    *&v21[v26] = v34;

    v65.receiver = v21;
    v65.super_class = v46;
    v36 = objc_msgSendSuper2(&v65, "init");
    v37 = *&v36[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state];
    v38 = __chkstk_darwin(v36);
    v39 = v51;
    v40 = v47;
    *(&v45 - 6) = v51;
    *(&v45 - 5) = v40;
    v41 = v49;
    *(&v45 - 4) = v48;
    *(&v45 - 3) = v41;
    *(&v45 - 16) = v50 & 1;
    *(&v45 - 15) = a9 & 1;
    v42 = *(*v37 + class metadata base offset for ManagedBuffer + 16);
    v43 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
    v44 = v38;

    os_unfair_lock_lock((v37 + v43));
    sub_100714818(v37 + v42);
    os_unfair_lock_unlock((v37 + v43));

    sub_100012970(v24);

    return v44;
  }

  __break(1u);
  return result;
}

id sub_100709738()
{
  v1 = *&v0[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state];
  v2 = v1 + *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  v4 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 44);
  if (*(v2 + v4))
  {

    sub_100936578();

    *(v2 + v4) = 0;
  }

  os_unfair_lock_unlock((v1 + v3));

  v6.receiver = v0;
  v6.super_class = type metadata accessor for IDSGroupEncryptionKeyMaterialController(0);
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_1007099F0(uint64_t a1)
{
  v56 = sub_1009364E8();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_100936558();
  v53 = *(v55 - 8);
  v3 = __chkstk_darwin(v55);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v47 - v5;
  v6 = sub_1009364F8();
  __chkstk_darwin(v6);
  v7 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_100936038();
  v59 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v47 - v14;
  v15 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v16 = v15[11];
  if (*(a1 + v16))
  {

    sub_100936578();

    *(a1 + v16) = 0;
  }

  v17 = a1 + v15[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v20) = (*(v20 + 8))(ObjectType, v20);

    if (v20)
    {
      sub_100706C28(*(a1 + v15[5] + 8), *(a1 + v15[5] + 16), v9);
      v22 = v59;
      if ((*(v59 + 48))(v9, 1, v10) == 1)
      {
        sub_100013814(v9, &qword_100CB4AC0);
        return;
      }

      v27 = v58;
      (*(v22 + 32))(v58, v9, v10);
      (*(v22 + 16))(v13, v27, v10);
      v28 = sub_1009364B8();
      v29 = sub_100936F18();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        LODWORD(v50) = v29;
        v32 = v31;
        aBlock[0] = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_10001273C(0xD00000000000001ELL, 0x8000000100AFEC90, aBlock);
        *(v30 + 12) = 2048;
        v48 = v28;
        sub_100935FA8();
        v34 = v33;
        v49 = *(v22 + 8);
        v49(v13, v10);
        *(v30 + 14) = v34;
        v35 = v48;
        _os_log_impl(&_mh_execute_header, v48, v50, "%s: scheduling roll task after %f seconds", v30, 0x16u);
        sub_100012970(v32);
      }

      else
      {

        v49 = *(v22 + 8);
        v49(v13, v10);
      }

      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100715B30;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000154AC;
      aBlock[3] = &unk_100BE68A8;
      v50 = _Block_copy(aBlock);
      v61 = &_swiftEmptyArrayStorage;
      sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);

      sub_100706B30(&unk_100CB3550);
      sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
      sub_1009370B8();
      sub_100936588();
      swift_allocObject();
      v37 = sub_100936568();

      *(a1 + v16) = v37;

      v38 = v57;
      sub_100936538();
      sub_100935FA8();
      v40 = v39 * 1000.0;
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v40 > -9.22337204e18)
      {
        if (v40 < 9.22337204e18)
        {
          v41 = v52;
          *v52 = v40;
          v42 = v54;
          v43 = v56;
          (*(v54 + 104))(v41, enum case for DispatchTimeInterval.milliseconds(_:), v56);
          v44 = v51;
          sub_100936548();
          (*(v42 + 8))(v41, v43);
          v45 = *(v53 + 8);
          v46 = v55;
          v45(v38, v55);
          sub_100936F58();

          v45(v44, v46);
          v49(v58, v10);
          return;
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }
  }

  v60 = sub_1009364B8();
  v23 = sub_100936F18();
  if (os_log_type_enabled(v60, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10001273C(0xD00000000000001ELL, 0x8000000100AFEC90, aBlock);
    _os_log_impl(&_mh_execute_header, v60, v23, "%s: not scheduling roll task: session is not active", v24, 0xCu);
    sub_100012970(v25);
  }

  else
  {
    v26 = v60;
  }
}

uint64_t sub_10070A2CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
    v4 = __chkstk_darwin(result);
    v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v1 + v3));
    sub_100715B38(v1 + v2);
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

void sub_10070A3D4()
{
  v1 = v0;

  v2 = sub_1009364B8();
  v3 = sub_100936F18();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10001273C(0xD000000000000017, 0x8000000100AFEAE0, v12);
    *(v4 + 12) = 2080;
    type metadata accessor for IDSGroupEncryptionControllerMember();
    sub_100014A48(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember);
    v5 = sub_100936E28();
    v7 = sub_10001273C(v5, v6, v12);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  __chkstk_darwin(v9);
  v10 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v11));
  sub_1007148D8(v8 + v10);
  os_unfair_lock_unlock((v8 + v11));
}

uint64_t sub_10070A608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v9 = v8;
  if ((*(a1 + *(v8 + 24)) & 1) == 0)
  {

LABEL_41:
    v41 = *(v9 + 40);

    *(a1 + v41) = a2;
    return sub_10070AB28(a1);
  }

  v52 = a1;
  v53 = a3;
  v51 = v8;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v26 = *(a2 + 32);
    v27 = v26 & 0x3F;
    v47 = ((1 << v26) + 63) >> 6;
    v48 = v4;
    v15 = (8 * v47);

    if (v27 <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

  v56 = &_swiftEmptySetSingleton;

  sub_100937118();
  v10 = sub_100937198();
  if (!v10)
  {
    a2 = &_swiftEmptySetSingleton;
LABEL_39:

LABEL_40:
    a1 = v52;
    v9 = v51;
    goto LABEL_41;
  }

  v11 = v10;
  type metadata accessor for IDSGroupEncryptionControllerMember();
  v12 = v11;
  a2 = &_swiftEmptySetSingleton;
  while (1)
  {
    v54 = v12;
    v13 = swift_dynamicCast();
    v14 = v55;
    if (((*((swift_isaMask & *v55) + 0x80))(v13) & 1) == 0)
    {
      break;
    }

LABEL_6:
    v12 = sub_100937198();
    if (!v12)
    {
      goto LABEL_39;
    }
  }

  if (*(a2 + 24) <= *(a2 + 16))
  {
    sub_100713088();
  }

  a2 = v56;
  v15 = v55;
  v16 = sub_100937028(v56[5]);
  v17 = (v56 + 7);
  v18 = -1 << *(v56 + 32);
  v19 = v16 & ~v18;
  v20 = v19 >> 6;
  if (((-1 << v19) & ~v56[(v19 >> 6) + 7]) != 0)
  {
    v21 = __clz(__rbit64((-1 << v19) & ~v56[(v19 >> 6) + 7])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    *(*(a2 + 48) + 8 * v21) = v14;
    ++*(a2 + 16);
    goto LABEL_6;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *&v17[8 * v20];
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_43:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_23:
    v46 = &v46;
    __chkstk_darwin(isStackAllocationSafe);
    v49 = &v46 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v15);
    v50 = 0;
    v29 = 0;
    v30 = 1 << *(a2 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(a2 + 56);
    v33 = (v30 + 63) >> 6;
    while (v32)
    {
      v34 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_33:
      v37 = v34 | (v29 << 6);
      v38 = *(*(a2 + 48) + 8 * v37);
      v39 = *((swift_isaMask & *v38) + 0x80);
      v15 = v38;
      LOBYTE(v39) = v39();

      if ((v39 & 1) == 0)
      {
        *&v49[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_37:
          a2 = sub_1007137E4(v49, v47, v50, a2);
          goto LABEL_40;
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_37;
      }

      v36 = *(a2 + 56 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v32 = (v36 - 1) & v36;
        goto LABEL_33;
      }
    }
  }

  v43 = swift_slowAlloc();
  v44 = v48;
  v45 = sub_100713754(v43, v47, a2, sub_10070AAC4);
  if (!v44)
  {
    a2 = v45;

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_10070AB28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009364F8();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100936528();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1009364B8();
  v11 = sub_100936F18();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10001273C(0xD000000000000012, 0x8000000100AFEC70, aBlock);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_100012970(v13);
  }

  result = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v15 = *(result + 48);
  if ((*(a1 + v15) & 1) == 0)
  {
    *(a1 + v15) = 1;
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    aBlock[4] = sub_100715998;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BE6858;
    v17 = _Block_copy(aBlock);
    v18 = v2;
    sub_100936508();
    v22 = &_swiftEmptyArrayStorage;
    sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v17);
    (*(v21 + 8))(v6, v4);
    (*(v7 + 8))(v9, v20);
  }

  return result;
}

uint64_t sub_10070AED8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1009364F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100936528();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_q];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1007148F4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BE6368;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_100936508();
  v18 = &_swiftEmptyArrayStorage;
  sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100706B30(&unk_100CB3550);
  sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
  sub_1009370B8();
  sub_100936F88();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_10070B1C8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10070B2BC;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10070B2BC()
{

  return _swift_task_switch(sub_10070B3D4, 0, 0);
}

uint64_t sub_10070B3E8(uint64_t a1, void *a2)
{
  v4 = sub_100706B30(&qword_100CB2DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  (*((swift_isaMask & *a2) + 0x150))(sub_1007157EC, v9);
}

void sub_10070B574()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1007149F8();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_10070B614(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  __chkstk_darwin(v4 - 8);
  v109 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v6);
  v110 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v8 - 8);
  v114 = &v101 - v9;
  v10 = sub_100936038();
  v115 = *(v10 - 8);
  v116 = v10;
  v11 = __chkstk_darwin(v10);
  v111 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v112 = &v101 - v14;
  __chkstk_darwin(v13);
  v113 = &v101 - v15;
  v16 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v101 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v101 - v24;
  v26 = &a1[*(v23 + 28)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = *(v26 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v29) = (*(v29 + 16))(ObjectType, v29);

    if (v29)
    {
      sub_100706EE8(a1, v25, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
      v31 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l;
      sub_100706EE8(v25, v22, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
      sub_100706EE8(v25, v19, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
      v108 = v31;
      v32 = sub_1009364B8();
      v33 = sub_100936F18();
      v34 = os_log_type_enabled(v32, v33);
      v107 = v25;
      v103 = v6;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v105 = a1;
        v36 = v35;
        v104 = swift_slowAlloc();
        v117[0] = v104;
        *v36 = 136315650;
        *(v36 + 4) = sub_10001273C(0x5F28657461647075, 0xEA0000000000293ALL, v117);
        *(v36 + 12) = 2080;
        LODWORD(v102) = v33;
        type metadata accessor for IDSGroupEncryptionControllerMember();
        sub_100014A48(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember);
        v106 = v2;
        v37 = sub_100936E28();
        v39 = v38;
        sub_100706FB8(v22, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
        v40 = sub_10001273C(v37, v39, v117);

        *(v36 + 14) = v40;
        *(v36 + 22) = 2080;
        v2 = v106;
        v41 = sub_100936E28();
        v43 = v42;
        sub_100706FB8(v19, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
        v44 = sub_10001273C(v41, v43, v117);

        *(v36 + 24) = v44;
        _os_log_impl(&_mh_execute_header, v32, v102, "%s: previous members: %s; new members: %s", v36, 0x20u);
        swift_arrayDestroy();

        a1 = v105;
      }

      else
      {

        sub_100706FB8(v19, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
        sub_100706FB8(v22, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
      }

      v56 = v16[9];
      v57 = *&a1[v56];
      v58 = *&a1[v16[10]];
      v59 = sub_1007BF944(v57, v58);
      v61 = v60;
      v63 = v62;
      v65 = v64;
      if ((v57 & 0xC000000000000001) != 0)
      {
        v104 = sub_100937158();
      }

      else
      {
        v104 = *(v57 + 16);
      }

      *&a1[v56] = v58;

      v66 = v61;
      v67 = sub_1009364B8();
      v68 = v59;
      v69 = sub_100936F18();

      v70 = os_log_type_enabled(v67, v69);
      v105 = v66;
      v106 = v68;
      if (v70)
      {
        v71 = swift_slowAlloc();
        v102 = v58;
        v72 = v71;
        v101 = swift_slowAlloc();
        v118[0] = v101;
        *v72 = 136315394;
        *(v72 + 4) = sub_10001273C(0x5F28657461647075, 0xEA0000000000293ALL, v118);
        *(v72 + 12) = 2080;
        v117[0] = v68;
        v117[1] = v66;
        v117[2] = v63;
        v117[3] = v65;
        sub_100714A5C();
        v73 = sub_100937548();
        v75 = a1;
        v76 = v2;
        v77 = sub_10001273C(v73, v74, v118);

        *(v72 + 14) = v77;
        v2 = v76;
        a1 = v75;
        _os_log_impl(&_mh_execute_header, v67, v69, "%s: diff: %s", v72, 0x16u);
        swift_arrayDestroy();

        v58 = v102;
      }

      if (v104)
      {
        v79 = v105;
        v78 = v106;
        if (sub_1007BF658(v106, v105, v63, v65))
        {

          (*((swift_isaMask & *v2) + 0x188))(a1);
          v80 = v107;
        }

        else
        {
          v87 = sub_1007BF698(v78, v79, v63);

          if (v87)
          {
            v80 = v107;
            if (*(v2 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_isRatchetEnabled) == 1)
            {
              sub_10070DCA4(a1);
            }

            else
            {
              (*((swift_isaMask & *v2) + 0x188))(a1);
            }
          }

          else
          {
            v88 = v114;
            sub_100706C28(*&a1[v16[5] + 8], a1[v16[5] + 16], v114);
            v90 = v115;
            v89 = v116;
            v91 = (*(v115 + 48))(v88, 1, v116);
            v80 = v107;
            if (v91 == 1)
            {
              sub_100013814(v88, &qword_100CB4AC0);
            }

            else
            {
              v92 = v113;
              (*(v90 + 32))(v113, v88, v89);
              v93 = v111;
              sub_100936028();
              v94 = v112;
              sub_100936018();
              v95 = *(v90 + 8);
              v95(v93, v89);
              v96 = sub_100935F78();
              v95(v94, v89);
              if (v96)
              {
                v97 = v110;
                sub_100706EE8(a1, v110, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload)
                {
                  if (EnumCaseMultiPayload == 1)
                  {
                    sub_10070CA84(a1);
                  }

                  v95(v92, v89);
                  sub_100706FB8(v97, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
                  goto LABEL_21;
                }

                v99 = v97;
                v100 = v109;
                sub_100706F50(v99, v109, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
                sub_10070C4EC(a1, v100);
                sub_100706FB8(v100, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
              }

              v95(v92, v89);
            }
          }
        }

LABEL_21:
        sub_1007099F0(a1);
        v81 = v80;
        return sub_100706FB8(v81, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
      }

      v82 = sub_1009364B8();
      v83 = sub_100936F18();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v117[0] = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_10001273C(0x5F28657461647075, 0xEA0000000000293ALL, v117);
        _os_log_impl(&_mh_execute_header, v82, v83, "%s: This is initially setting members, should not roll/ratchet, but should ensure we have a key", v84, 0xCu);
        sub_100012970(v85);
      }

      v86 = v107;
      if ((v58 & 0xC000000000000001) != 0)
      {
        if (sub_100937158() < 1)
        {
LABEL_27:
          v81 = v86;
          return sub_100706FB8(v81, type metadata accessor for IDSGroupEncryptionKeyMaterialController.State);
        }
      }

      else if (*(v58 + 16) < 1)
      {
        goto LABEL_27;
      }

      (*((swift_isaMask & *v2) + 0x1E8))(a1);
      goto LABEL_27;
    }
  }

  v45 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l;
  v46 = sub_1009364B8();
  v47 = sub_100936F18();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v117[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_10001273C(0x5F28657461647075, 0xEA0000000000293ALL, v117);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s: not updating because session has gone away", v48, 0xCu);
    sub_100012970(v49);
  }

  v50 = sub_1009364B8();
  v51 = sub_100936F18();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v117[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_10001273C(0x5F28657461647075, 0xEA0000000000293ALL, v117);
    _os_log_impl(&_mh_execute_header, v50, v51, "%s: setting state to .noKey", v52, 0xCu);
    sub_100012970(v53);
  }

  sub_100706FB8(a1, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  swift_storeEnumTagMultiPayload();
  v54 = *((swift_isaMask & *v2) + 0x208);

  return v54(v2 + v45, 0, 0xE000000000000000, a1);
}

BOOL sub_10070C444(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = *(v4 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 60)) > a1;
  os_unfair_lock_unlock((v3 + v5));
  return v6;
}

void sub_10070C4EC(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v4 = sub_1009364F8();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100936528();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  sub_10070F6F8(*(a1 + *(v19 + 32)), v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100013814(v14, &qword_100CB2AA0);
  }

  else
  {
    sub_100706F50(v14, v18, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v33 = v9;
    v20 = a1;
    v21 = v34;
    sub_100706AC0(v34, v11);
    v22 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0) + 20);
    v23 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
    sub_100706EE8(v21 + v22, &v11[*(v23 + 20)], type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100706EE8(v18, &v11[*(v23 + 24)], type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100936028();
    sub_100706FB8(v18, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    swift_storeEnumTagMultiPayload();
    sub_100707590(v11, v20);
    a1 = v20;
  }

  v24 = a1 + *(v19 + 28);
  Strong = swift_unknownObjectWeakLoadStrong();
  v26 = *(v24 + 8);
  v27 = swift_allocObject();
  v27[2] = Strong;
  v27[3] = v26;
  v27[4] = v2;
  aBlock[4] = sub_100715C20;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BE6768;
  v28 = _Block_copy(aBlock);
  v29 = Strong;
  v30 = v2;
  sub_100936508();
  v40 = &_swiftEmptyArrayStorage;
  sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100706B30(&unk_100CB3550);
  sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
  v31 = v37;
  v32 = v39;
  sub_1009370B8();
  sub_100936F88();
  _Block_release(v28);
  (*(v38 + 8))(v31, v32);
  (*(v35 + 8))(v8, v36);

  (*((swift_isaMask & *v30) + 0x208))(v30 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l, 0, 0xE000000000000000, a1);
}

void sub_10070CA84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009364F8();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100936528();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v50 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v10 = *(v50 - 1);
  __chkstk_darwin(v50);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  __chkstk_darwin(v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v47 - v19;
  v58 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l;
  v20 = sub_1009364B8();
  v21 = sub_100936F18();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v47 = a1;
    v48 = v2;
    v23 = v22;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_10001273C(0xD000000000000011, 0x8000000100AFEC50, aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: roll to next key", v23, 0xCu);
    sub_100012970(v24);

    a1 = v47;
    v2 = v48;
  }

  v25 = v57;
  sub_100706EE8(a1, v57, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100706F50(v25, v14, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    sub_100706EE8(&v14[*(v12 + 20)], v18, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    (*(v10 + 56))(v18, 0, 1, v50);
    v26 = *(v12 + 24);
    v27 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
    sub_100706EE8(&v14[v26], &v18[*(v27 + 20)], type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100936028();
    sub_100706FB8(v14, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
    swift_storeEnumTagMultiPayload();
    sub_100707590(v18, a1);
  }

  else
  {
    v28 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
    sub_10070F6F8(*(a1 + *(v28 + 32)), v9);
    if ((*(v10 + 48))(v9, 1, v50) == 1)
    {
      sub_100013814(v9, &qword_100CB2AA0);
      v29 = sub_1009364B8();
      v30 = sub_100936F18();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_10001273C(0xD000000000000011, 0x8000000100AFEC50, aBlock);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s: setting state to .noKey", v31, 0xCu);
        sub_100012970(v32);
      }

      sub_100706FB8(a1, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
      swift_storeEnumTagMultiPayload();
      (*((swift_isaMask & *v2) + 0x208))(v2 + v58, 0, 0xE000000000000000, a1);
    }

    else
    {
      v33 = v49;
      sub_100706F50(v9, v49, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100707018(v18);
      v34 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
      sub_100706EE8(v33, &v18[*(v34 + 20)], type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100936028();
      sub_100706FB8(v33, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      swift_storeEnumTagMultiPayload();
      sub_100707590(v18, a1);
    }

    sub_100706FB8(v57, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
  }

  v35 = a1 + *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 28);
  Strong = swift_unknownObjectWeakLoadStrong();
  v37 = *(v35 + 8);
  v57 = *(v2 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_q);
  v38 = swift_allocObject();
  v38[2] = Strong;
  v38[3] = v37;
  v38[4] = v2;
  aBlock[4] = sub_10071578C;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000154AC;
  aBlock[3] = &unk_100BE67B8;
  v39 = _Block_copy(aBlock);
  v50 = Strong;
  v40 = v2;
  v41 = v2;
  v42 = a1;
  v43 = v40;
  v44 = v51;
  sub_100936508();
  v59 = &_swiftEmptyArrayStorage;
  sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100706B30(&unk_100CB3550);
  sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
  v45 = v53;
  v46 = v56;
  sub_1009370B8();
  sub_100936F88();
  _Block_release(v39);
  (*(v55 + 8))(v45, v46);
  (*(v52 + 8))(v44, v54);

  (*((swift_isaMask & *v43) + 0x208))(v41 + v58, 0, 0xE000000000000000, v42);
}

void sub_10070D3F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1009364F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100936528();
  v51 = *(v7 - 8);
  __chkstk_darwin(v7);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  __chkstk_darwin(v49);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v17 = *(v53 + 60);
  v18 = *(a1 + v17);
  v19 = v18 + 1;
  if (v18 == -1)
  {
    __break(1u);
  }

  else
  {
    v47 = v5;
    v48 = v4;
    *(a1 + v17) = v19;
    v54 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l;
    v20 = sub_1009364B8();
    v21 = sub_100936F18();
    v22 = os_log_type_enabled(v20, v21);
    v46 = v7;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v44 = a1;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_10001273C(0x6C6C6F5264726168, 0xEC000000293A5F28, aBlock);
      *(v24 + 12) = 2048;
      *(v24 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: hard rolling; gen count: %llu", v24, 0x16u);
      sub_100012970(v25);

      a1 = v44;
    }

    v26 = v53;
    sub_10070F6F8(*(a1 + *(v53 + 32)), v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_100013814(v13, &qword_100CB2AA0);
      v27 = v54;
      v28 = sub_1009364B8();
      v29 = sub_100936F18();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10001273C(0x6C6C6F5264726168, 0xEC000000293A5F28, aBlock);
        _os_log_impl(&_mh_execute_header, v28, v29, "%s: setting state to .noKey", v30, 0xCu);
        sub_100012970(v31);

        v26 = v53;
      }

      sub_100706FB8(a1, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
      swift_storeEnumTagMultiPayload();
      (*((swift_isaMask & *v2) + 0x208))(&v2[v27], 0, 0xE000000000000000, a1);
    }

    else
    {
      v32 = v45;
      sub_100706F50(v13, v45, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      (*(v15 + 56))(v10, 1, 1, v14);
      v33 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
      sub_100706EE8(v32, &v10[*(v33 + 20)], type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      sub_100936028();
      sub_100706FB8(v32, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
      swift_storeEnumTagMultiPayload();
      sub_100707590(v10, a1);
    }

    v34 = a1 + *(v26 + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    v36 = *(v34 + 8);
    v53 = *&v2[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_q];
    v37 = swift_allocObject();
    v37[2] = Strong;
    v37[3] = v36;
    v37[4] = v2;
    aBlock[4] = sub_100715C20;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BE63B8;
    v38 = _Block_copy(aBlock);
    v49 = Strong;
    v39 = v2;
    v40 = v50;
    sub_100936508();
    v55 = &_swiftEmptyArrayStorage;
    sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    v41 = a1;
    sub_100706B30(&unk_100CB3550);
    sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
    v42 = v52;
    v43 = v48;
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v38);
    (*(v47 + 8))(v42, v43);
    (*(v51 + 8))(v40, v46);

    (*((swift_isaMask & *v39) + 0x208))(&v2[v54], 0, 0xE000000000000000, v41);
  }
}

void sub_10070DC04()
{
  v1 = *(v0 + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_100714AB0();
  os_unfair_lock_unlock((v1 + v2));
}

void sub_10070DCA4(char *a1)
{
  v2 = v1;
  v155 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey(0);
  v4 = __chkstk_darwin(v155);
  v6 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v160 = &v137 - v7;
  v146 = sub_1009364F8();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_100936528();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100706B30(&qword_100CB2AA0);
  v11 = __chkstk_darwin(v10 - 8);
  v150 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v147 = &v137 - v13;
  v14 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v158 = *(v14 - 8);
  v159 = v14;
  v15 = __chkstk_darwin(v14);
  v152 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v154 = &v137 - v18;
  v19 = __chkstk_darwin(v17);
  v151 = &v137 - v20;
  __chkstk_darwin(v19);
  v153 = &v137 - v21;
  v22 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey(0);
  v23 = __chkstk_darwin(v22);
  v140 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v157 = &v137 - v25;
  v161 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState(0);
  v26 = __chkstk_darwin(v161);
  v149 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v137 - v28;
  v30 = sub_100936038();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100935FF8();
  v148 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0);
  v34 = *(v148 + 56);
  sub_100935F38();
  v36 = v35;
  (*(v31 + 8))(v33, v30);
  if (v36 <= 5.0)
  {
    v43 = sub_1009364B8();
    v44 = sub_100936F18();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s: ratchet canceled because we just ratcheted recently", v45, 0xCu);
      sub_100012970(v46);
    }
  }

  else
  {
    v138 = v6;
    v139 = v22;
    sub_100935FF8();
    (*(v31 + 40))(&a1[v34], v33, v30);
    v156 = OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_l;
    v37 = sub_1009364B8();
    v38 = sub_100936F18();
    v39 = a1;
    v40 = v2;
    if (os_log_type_enabled(v37, v38))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s: ratchet (rolling)", v41, 0xCu);
      sub_100012970(v42);
      v39 = a1;

      v40 = v2;
    }

    v47 = v159;
    v48 = v160;
    sub_100706EE8(v39, v29, type metadata accessor for IDSGroupEncryptionKeyMaterialController.KeyState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v67 = v29;
      v68 = v157;
      sub_100706F50(v67, v157, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
      v69 = sub_1009364B8();
      v70 = sub_100936F18();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = v47;
        v73 = swift_slowAlloc();
        aBlock = v73;
        *v71 = 136315138;
        *(v71 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
        _os_log_impl(&_mh_execute_header, v69, v70, "%s: ratcheting current key because we have one key", v71, 0xCu);
        sub_100012970(v73);
        v47 = v72;

        v68 = v157;
      }

      v74 = v151;
      v160 = v39;
      swift_beginAccess();
      v75 = dword_100CD3D70 + 1;
      if (dword_100CD3D70 != -1)
      {
        ++dword_100CD3D70;
        v76 = *(v139 + 20);
        v77 = v147;
        sub_10074A030(v75, v147);
        if ((*(v158 + 48))(v77, 1, v47) != 1)
        {
          v102 = v77;
          v103 = v153;
          sub_100706F50(v102, v153, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          sub_100706EE8(v103, v74, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v104 = sub_1009364B8();
          v105 = sub_100936F18();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v106 = 136315394;
            *(v106 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
            *(v106 + 12) = 2080;
            sub_100014A48(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v107 = sub_100937548();
            v108 = v47;
            v110 = v109;
            sub_100706FB8(v74, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v111 = sub_10001273C(v107, v110, &aBlock);
            v47 = v108;

            *(v106 + 14) = v111;
            _os_log_impl(&_mh_execute_header, v104, v105, "%s: ratcheted to new local key: %s", v106, 0x16u);
            swift_arrayDestroy();

            v68 = v157;
          }

          else
          {

            sub_100706FB8(v74, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          }

          v126 = v149;
          sub_100706EE8(v68 + v76, v149, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          (*(v158 + 56))(v126, 0, 1, v47);
          sub_100706EE8(v153, v126 + *(v139 + 20), type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          sub_100936028();
          swift_storeEnumTagMultiPayload();
          v127 = v160;
          sub_100707590(v126, v160);
          v128 = &v127[*(v148 + 28)];
          Strong = swift_unknownObjectWeakLoadStrong();
          v130 = *(v128 + 1);
          v161 = *&v40[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_q];
          v131 = swift_allocObject();
          v131[2] = Strong;
          v131[3] = v130;
          v131[4] = v40;
          v167 = sub_100715C20;
          v168 = v131;
          aBlock = _NSConcreteStackBlock;
          v164 = 1107296256;
          v165 = sub_1000154AC;
          v166 = &unk_100BE6718;
          v132 = _Block_copy(&aBlock);
          v133 = Strong;
          v40;
          v134 = v141;
          sub_100936508();
          v162 = &_swiftEmptyArrayStorage;
          sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
          sub_100706B30(&unk_100CB3550);
          sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
          v135 = v142;
          v136 = v146;
          sub_1009370B8();
          sub_100936F88();
          _Block_release(v132);
          (*(v145 + 8))(v135, v136);
          (*(v143 + 8))(v134, v144);

          sub_1007099F0(v127);

          sub_100706FB8(v153, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v112 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
          v113 = v157;
          goto LABEL_37;
        }

        sub_100013814(v77, &qword_100CB2AA0);
        v78 = v140;
        sub_100706EE8(v68, v140, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
        v79 = sub_1009364B8();
        v80 = sub_100936F18();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v81 = 136315394;
          *(v81 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
          *(v81 + 12) = 2080;
          sub_100014A48(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v82 = sub_100937548();
          v84 = v83;
          sub_100706FB8(v78, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
          v85 = sub_10001273C(v82, v84, &aBlock);

          *(v81 + 14) = v85;
          _os_log_impl(&_mh_execute_header, v79, v80, "%s: ratcheting failed for local key: %s", v81, 0x16u);
          swift_arrayDestroy();

          v68 = v157;
        }

        else
        {

          sub_100706FB8(v78, type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey);
        }

        sub_10070CA84(v160);
        v125 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.OneKey;
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_100706F50(v29, v48, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
      v50 = sub_1009364B8();
      v51 = sub_100936F18();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = v47;
        v54 = swift_slowAlloc();
        aBlock = v54;
        *v52 = 136315138;
        *(v52 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
        _os_log_impl(&_mh_execute_header, v50, v51, "%s: ratcheting current key because we have two key", v52, 0xCu);
        sub_100012970(v54);
        v47 = v53;
      }

      v55 = v152;
      v56 = v150;
      swift_beginAccess();
      v57 = dword_100CD3D70 + 1;
      if (dword_100CD3D70 != -1)
      {
        ++dword_100CD3D70;
        v58 = *(v155 + 20);
        sub_10074A030(v57, v56);
        if ((*(v158 + 48))(v56, 1, v47) == 1)
        {
          sub_100013814(v56, &qword_100CB2AA0);
          v59 = v138;
          sub_100706EE8(v48, v138, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
          v60 = sub_1009364B8();
          v61 = sub_100936F18();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v62 = 136315394;
            *(v62 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
            *(v62 + 12) = 2080;
            sub_100014A48(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
            v63 = sub_100937548();
            v65 = v64;
            sub_100706FB8(v59, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
            v66 = sub_10001273C(v63, v65, &aBlock);

            *(v62 + 14) = v66;
            _os_log_impl(&_mh_execute_header, v60, v61, "%s: ratcheting failed for local key: %s", v62, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            sub_100706FB8(v59, type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey);
          }

          sub_10070CA84(v39);
          v112 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
          v113 = v48;
          goto LABEL_37;
        }

        v90 = v56;
        v91 = v154;
        sub_100706F50(v90, v154, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100706EE8(v91, v55, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v92 = sub_1009364B8();
        v93 = sub_100936F18();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = v55;
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v157 = v40;
          aBlock = v96;
          *v95 = 136315394;
          *(v95 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
          *(v95 + 12) = 2080;
          sub_100014A48(&qword_100CB2DA0, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v97 = sub_100937548();
          v98 = v47;
          v100 = v99;
          sub_100706FB8(v94, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
          v101 = sub_10001273C(v97, v100, &aBlock);
          v47 = v98;

          *(v95 + 14) = v101;
          _os_log_impl(&_mh_execute_header, v92, v93, "%s: ratcheted to new local key: %s", v95, 0x16u);
          swift_arrayDestroy();
          v40 = v157;
          v48 = v160;
        }

        else
        {

          sub_100706FB8(v55, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        }

        v114 = v149;
        v115 = v148;
        sub_100706EE8(v48 + v58, v149, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        (*(v158 + 56))(v114, 0, 1, v47);
        v116 = v155;
        sub_100706EE8(v154, v114 + *(v155 + 20), type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100706EE8(v48 + *(v116 + 24), v114 + *(v116 + 24), type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        sub_100936028();
        swift_storeEnumTagMultiPayload();
        sub_100707590(v114, v39);
        v117 = &v39[*(v115 + 28)];
        v118 = swift_unknownObjectWeakLoadStrong();
        v119 = *(v117 + 1);
        v161 = *&v40[OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_q];
        v120 = swift_allocObject();
        v120[2] = v118;
        v120[3] = v119;
        v120[4] = v40;
        v167 = sub_100715C20;
        v168 = v120;
        aBlock = _NSConcreteStackBlock;
        v164 = 1107296256;
        v165 = sub_1000154AC;
        v166 = &unk_100BE66C8;
        v121 = _Block_copy(&aBlock);
        v40;
        v160 = v118;
        v122 = v141;
        sub_100936508();
        v162 = &_swiftEmptyArrayStorage;
        sub_100014A48(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100706B30(&unk_100CB3550);
        v68 = v48;
        sub_10071499C(&qword_100CB4AB0, &unk_100CB3550);
        v123 = v142;
        v124 = v146;
        sub_1009370B8();
        sub_100936F88();
        _Block_release(v121);
        (*(v145 + 8))(v123, v124);
        (*(v143 + 8))(v122, v144);

        sub_1007099F0(v39);

        sub_100706FB8(v154, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
        v125 = type metadata accessor for IDSGroupEncryptionKeyMaterialController.TwoKey;
LABEL_34:
        v112 = v125;
        v113 = v68;
LABEL_37:
        sub_100706FB8(v113, v112);
        return;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v86 = sub_1009364B8();
    v87 = sub_100936F18();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      aBlock = v89;
      *v88 = 136315138;
      *(v88 + 4) = sub_10001273C(0x2874656863746172, 0xEB00000000293A5FLL, &aBlock);
      _os_log_impl(&_mh_execute_header, v86, v87, "%s: rolling because we have no key", v88, 0xCu);
      sub_100012970(v89);
    }

    sub_10070CA84(v39);
  }
}