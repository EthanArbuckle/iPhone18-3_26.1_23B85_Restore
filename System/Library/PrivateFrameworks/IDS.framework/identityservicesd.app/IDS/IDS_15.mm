void sub_10046786C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Importing account: %@", &v14, 0xCu);
  }

  v8 = [v6 mutableCopy];
  [v8 addEntriesFromDictionary:v6];
  v9 = kFZServiceDefaultsLoginAsKey;
  v10 = [v6 objectForKey:kFZServiceDefaultsLoginAsKey];
  v11 = [v10 _stripFZIDPrefix];
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Login ID: %@, new login: %@", &v14, 0x16u);
  }

  v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 _FZIDType] == 1);
  [v8 setObject:v13 forKey:kIDSServiceDefaultsAccountTypeKey];

  [v8 removeObjectForKey:@"AuthToken"];
  if (v11)
  {
    [v8 setObject:v11 forKey:v9];
  }

  [*(a1 + 32) setObject:v8 forKey:v5];
}

uint64_t sub_10046829C()
{
  v0 = +[FTDeviceSupport sharedInstance];
  v1 = [v0 supportsEmojiImages];

  if (v1)
  {
    v2 = 1918;
  }

  else
  {
    v2 = 1917;
  }

  v3 = v2 + _os_feature_enabled_impl();
  if ((_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    ++v3;
  }

  return v3 + _os_feature_enabled_impl();
}

void sub_100468D08(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Re-register timer hit", buf, 2u);
  }

  if (![*(a1 + 32) hasForcedReRegistered] || *(a1 + 40) == 1)
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "We still need to re-register, triggering it now...", buf, 2u);
    }

    v4 = [*(a1 + 32) accounts];
    v5 = [v4 _copyForEnumerating];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([v11 isAdHocAccount] & 1) == 0 && objc_msgSend(v11, "isRegistered") && objc_msgSend(v11, "isEnabled"))
          {
            v12 = +[IMRGLog registration];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v18 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We picked %@ to re-register", buf, 0xCu);
            }

            [v11 registerAccount];
            goto LABEL_21;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }
}

void sub_100468F48(uint64_t a1)
{
  if (!+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
  {
    v2 = [*(a1 + 32) userDefaults];
    v3 = [v2 appBoolForKey:@"GDRRequestMadeForRelayRepair"];

    if ((v3 & 1) == 0)
    {
      v39 = a1;
      v4 = +[IDSDServiceController sharedInstance];
      v5 = [v4 serviceWithIdentifier:@"com.apple.madrid"];

      v6 = +[IDSDServiceController sharedInstance];
      v7 = [v6 serviceWithIdentifier:@"com.apple.ess"];

      v38 = v5;
      v8 = [*(a1 + 32) accountsOnService:v5];
      v37 = v7;
      v36 = [*(a1 + 32) accountsOnService:v7];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v53;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v53 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v52 + 1) + 8 * i);
            if ([v14 accountType] == 1)
            {
              v15 = [v14 unprefixedURIStringsFromRegistration];
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v16 = v15;
              v17 = [v16 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v49;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v49 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    if (IMStringIsPhoneNumber())
                    {
                      v21 = +[IMRGLog registration];
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v59 = v14;
                        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "We found a phone number alias on the iMessage account, triggering GDR request for %@", buf, 0xCu);
                      }

                      [*(a1 + 32) issueGetDependentRequestForAccount:v14];
                      goto LABEL_21;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v48 objects:v60 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_21:
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v11);
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v22 = v36;
      v23 = [v22 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v45;
        do
        {
          for (k = 0; k != v24; k = k + 1)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v44 + 1) + 8 * k);
            if ([v27 accountType] == 1)
            {
              v28 = [v27 unprefixedURIStringsFromRegistration];
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v29 = v28;
              v30 = [v29 countByEnumeratingWithState:&v40 objects:v56 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v41;
                while (2)
                {
                  for (m = 0; m != v31; ++m)
                  {
                    if (*v41 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    if (IMStringIsPhoneNumber())
                    {
                      v34 = +[IMRGLog registration];
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v59 = v27;
                        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "We found a phone number alias on the FaceTime account, triggering GDR request for %@", buf, 0xCu);
                      }

                      a1 = v39;
                      [*(v39 + 32) issueGetDependentRequestForAccount:v27];
                      goto LABEL_42;
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v40 objects:v56 count:16];
                  a1 = v39;
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_42:
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v24);
      }
    }
  }

  v35 = [*(a1 + 32) userDefaults];
  [v35 setAppBool:1 forKey:@"GDRRequestMadeForRelayRepair"];
}

void sub_100469660(id a1)
{
  v1 = +[IDSDaemon sharedInstance];
  [v1 _cleanUpOutgoingMessageDatabaseAndClearStatementCache];
}

void sub_10046BF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

void sub_10046BFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, char a9)
{
  *(*(a1[5] + 8) + 24) &= a6;
  *(*(a1[6] + 8) + 24) &= a9;
  v10 = *(a1[7] + 8);
  if (*(v10 + 24))
  {
    v11 = 1;
  }

  else
  {
    v11 = [a7 didFlightToServer];
    v10 = *(a1[7] + 8);
  }

  *(v10 + 24) = v11;
  v12 = a1[4];

  dispatch_group_leave(v12);
}

void sub_10046C030(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = *(*(a1[5] + 8) + 24);
    v4 = [[IDSPeerIDQueryHandlerMetricContext alloc] initWithDidFlightToServer:*(*(a1[6] + 8) + 24) responseCode:0];
    (*(v1 + 16))(v1, 0, 0, 0, 0, v3, v4, 0, *(*(a1[7] + 8) + 24), 0);
  }
}

void sub_10046C80C(uint64_t a1)
{
  if ([*(a1 + 32) isLoading])
  {
    v2 = +[IMRGLog registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v3 = "Waiting on accounts to load, the account controller isn't ready yet";
      v4 = v2;
      v5 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, &v11, v5);
    }
  }

  else
  {
    [*(a1 + 32) _updateDeviceProperties];
    [*(a1 + 32) _kickRemoteCacheWipe];
    if ([*(a1 + 32) hasForcedReRegistered])
    {
      return;
    }

    v6 = [*(a1 + 32) userDefaults];
    v7 = [NSNumber numberWithLongLong:sub_10046829C()];
    [v6 setAppValue:v7 forKey:@"ReRegisteredForDevices"];

    v8 = [*(a1 + 32) userDefaults];
    v9 = _IDSServiceDictionaryRepresentableHash();
    [v8 setAppValue:v9 forKey:@"ReRegisteredForDevicesHash"];

    v10 = [*(a1 + 32) userDefaults];
    [v10 setAppBool:0 forKey:@"ReRegisterForAliasRepair"];

    v2 = +[IMRGLog registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = sub_10046829C();
      v3 = "Re-registered succesfully, setting force re-register version to %llu";
      v4 = v2;
      v5 = 12;
      goto LABEL_7;
    }
  }
}

void sub_10046EBDC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKey:IDSDevicePropertyNSUUID];
  if (v6 && v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void sub_10046EFA0(uint64_t a1)
{
  v2 = +[IMRGLog registrationAuthKit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v7 = 138412802;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating AuthKit for DSID: %@, AKAppleIDServiceType: %ld and inUse: %@", &v7, 0x20u);
  }

  v6 = objc_alloc_init(IMWeakLinkClass());
  [v6 setAppleIDWithDSID:*(a1 + 32) inUse:*(a1 + 48) forService:*(a1 + 40)];
}

void sub_10046F31C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10046FBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10046FBC0(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10046FBE8(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10046FE5C(uint64_t a1, _DWORD **a2)
{
  [*(a1 + 32) packetizationHeadroom];
  IDSLinkPacketBufferAddBufferStart();
  **a2 = 1467207418;
  kdebug_trace();
  v4 = *(*(*(a1 + 32) + 40) + 16);

  return v4();
}

uint64_t sub_100470048(uint64_t a1, _DWORD **a2)
{
  v4 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "listener read callback!", v6, 2u);
  }

  [*(a1 + 32) packetizationHeadroom];
  IDSLinkPacketBufferAddBufferStart();
  **a2 = 1467207418;
  kdebug_trace();
  return (*(*(*(a1 + 32) + 40) + 16))();
}

id sub_100470548(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unsignedIntValue];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_100470748(id a1)
{
  v1 = objc_alloc_init(IDSLocalMultiplexer);
  v2 = qword_100CBD410;
  qword_100CBD410 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100471260(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 tryConsumePacketBuffer:a2];

  v5 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "incoming packet consumed? %@", &v8, 0xCu);
  }

  return v4;
}

BOOL sub_100476950(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 != *(a2 + 1))
  {
    return v2 == 30;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = bswap32(*(a1 + 4));
  v4 = HIWORD(v3) == 49320 || (v3 & 0xFF000000) == 167772160;
  if (v4 || (v3 & 0xFFF00000) == -1408237568)
  {
    return 0;
  }

  v6 = bswap32(*(a2 + 4));
  result = 1;
  if ((v6 & 0xFFFF0000) != 0xC0A80000 && (v6 & 0xFF000000) != 0xA000000 && (v6 & 0xFFF00000) != 0xAC100000)
  {
    return 0;
  }

  return result;
}

void sub_100479F24(id a1)
{
  if (!qword_100CBD418)
  {
    memset(v6, 170, sizeof(v6));
    ids_monotonic_time();
    v2 = v1;
    gettimeofday(&v6[1], 0);
    ids_monotonic_time();
    v4 = v3;
    gettimeofday(v6, 0);
    ids_monotonic_time();
    if (v5 - v4 < v4 - v2)
    {
      v6[1] = v6[0];
      v2 = v4;
    }

    qword_100CBD418 = vcvtd_n_u64_f64(v6[1].tv_sec + v6[1].tv_usec * 0.000001 + 2208988800.0 - v2, 0x20uLL);
  }
}

void sub_10047A92C(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555929];
  if (v2)
  {
    v5 = v2;
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) awdRepresentation];
    [v3 _submitAWDMetric:v4 withContainer:v5];

    v2 = v5;
  }
}

void sub_10047AA84(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555931];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setRegistrationType:*(a1 + 56)];
    [v3 setServiceIdentifier:*(a1 + 40)];
    [v3 setWasSuccessful:*(a1 + 60)];
    [v3 setRegistrationError:*(a1 + 48)];
    [*(a1 + 32) _submitAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_10047AB7C(id a1)
{
  v1 = objc_alloc_init(IDSWPLinkManager);
  v2 = qword_100CBD430;
  qword_100CBD430 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10047B3C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v2 = *(*(a1 + 32) + 72);
  }

  [v2 addObject:*(a1 + 40)];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(*(a1 + 32) + 88);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) manager:*(a1 + 32) cbuuidDidConnect:*(a1 + 40) isAlwaysConnected:{1, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

id sub_10047E0D0(void *a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "removing a link %@ with linkID %@", buf, 0x16u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport();
      result = _IDSShouldLog();
      if (result)
      {
        result = _IDSLogV();
      }
    }
  }

  if (a1[5])
  {
    return [*(a1[6] + 48) removeObjectForKey:?];
  }

  return result;
}

void sub_10047E518(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 88);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) manager:*(a1 + 32) cbuuidDidDisconnect:{v3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_10047E78C(uint64_t a1)
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (v5 > 3)
    {
      v6 = "UnexpectedState";
    }

    else
    {
      v6 = (&off_100BDD100)[v5];
    }

    *buf = 136315138;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "calling continuityDidUpdateStateToState:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = *(a1 + 32);
    v8 = v7 > 3 ? "UnexpectedState" : (&off_100BDD100)[v7];
    v11 = v8;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v9 = *(a1 + 32);
      if (v9 > 3)
      {
        v10 = "UnexpectedState";
      }

      else
      {
        v10 = (&off_100BDD100)[v9];
      }

      v11 = v10;
      _IDSLogV();
    }
  }

  [v3 continuityDidUpdateStateToState:{*(a1 + 32), v11}];
}

id sub_1004815D0(id a1, id a2)
{
  v2 = a2;
  v3 = [[NSUUID alloc] initWithUUIDString:v2];

  return v3;
}

void sub_100482934(void *a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = 138413058;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for encryption failure { context: %@, ECError: %@, legacyError: %@, secondaryError: %@ }", &v7, 0x2Au);
  }
}

void sub_100482A04(void *a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = 138413058;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for encryption failure { context: %@, ECError: %@, legacyError: %@, secondaryError: %@ }", &v7, 0x2Au);
  }
}

void sub_100482AD4(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GUID %@ Encryption information:\n%@", &v5, 0x16u);
  }
}

id sub_100483074()
{
  if (qword_100CBD440 != -1)
  {
    sub_100920964();
  }

  v1 = qword_100CBD438;

  return v1;
}

void sub_1004830B8(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) localObject];
  v5 = [v3 broadcasterForLocalObject:v4 messageContext:*(a1 + 40)];

  if (v5)
  {
    v6 = [v10 state];
    if (v6 == 1)
    {
      v9 = *(a1 + 48);
      v7 = [v10 error];
      [v5 didAuthenticatePhoneWithAuthenticationCertificateData:0 requestUUID:v9 error:v7];
    }

    else
    {
      if (v6)
      {
        goto LABEL_7;
      }

      v7 = [v10 value];
      v8 = [v7 dataRepresentation];
      [v5 didAuthenticatePhoneWithAuthenticationCertificateData:v8 requestUUID:*(a1 + 48) error:0];
    }
  }

LABEL_7:
}

void sub_1004834AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) localObject];
  v6 = [v4 broadcasterForLocalObject:v5 messageContext:*(a1 + 40)];

  if (v6)
  {
    v7 = [v3 state];
    if (v7 == 1)
    {
      v33 = [v3 error];
      v37 = +[IMRGLog sms];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to generate phone authentication signature {error: %@}", buf, 0xCu);
      }

      [v6 didGeneratePhoneAuthenticationSignature:0 nonce:0 certificates:0 labelIDs:0 inputData:0 requestUUID:*(a1 + 56) error:v33];
      goto LABEL_34;
    }

    if (!v7)
    {
      v8 = sub_100483074();
      v9 = [v8 phoneAuthenticationCertificatePublicKey];

      v10 = sub_100483074();
      v11 = [v10 phoneAuthenticationCertificatePrivateKey];

      v12 = 0;
      v42 = v6;
      v13 = 0;
      if (v9 && v11)
      {
        v48 = 0;
        v49 = 0;
        _FTGenerateNonceAndSignatureFromPayload();
        v13 = 0;
        v12 = 0;
      }

      v38 = v9;
      v39 = v12;
      v40 = v13;
      v41 = a1;
      v14 = objc_alloc_init(NSMutableArray);
      v15 = objc_alloc_init(NSMutableArray);
      v43 = v3;
      v16 = [v3 value];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v45;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v45 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v44 + 1) + 8 * i);
            v22 = [v21 authenticationCertificate];
            if (v22)
            {
              v23 = v22;
              v24 = [v21 phoneUser];
              v25 = [v24 uniqueIdentifier];

              if (v25)
              {
                v26 = [v21 authenticationCertificate];
                v27 = [v26 dataRepresentation];
                [v14 addObject:v27];

                v28 = [v21 phoneUser];
                v29 = [v28 uniqueIdentifier];
                [v15 addObject:v29];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v44 objects:v58 count:16];
        }

        while (v18);
      }

      ct_green_tea_logger_create_static();
      v30 = getCTGreenTeaOsLogHandle();
      v31 = v30;
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
      }

      v32 = +[IMRGLog sms];
      v6 = v42;
      v33 = v40;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = @"NO";
        if (v38)
        {
          v35 = @"YES";
        }

        else
        {
          v35 = @"NO";
        }

        *buf = 138413058;
        v51 = v16;
        if (v40)
        {
          v36 = @"YES";
        }

        else
        {
          v36 = @"NO";
        }

        v53 = v35;
        v52 = 2112;
        v54 = 2112;
        if (v39)
        {
          v34 = @"YES";
        }

        v55 = v36;
        v56 = 2112;
        v57 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Generated phone authentication signature {phoneUserAuthCerts: %@, publicKey: %@, nonce: %@, signature: %@}", buf, 0x2Au);
      }

      [v42 didGeneratePhoneAuthenticationSignature:v39 nonce:v40 certificates:v14 labelIDs:v15 inputData:*(v41 + 48) requestUUID:*(v41 + 56) error:0];
      v3 = v43;
LABEL_34:
    }
  }
}

BOOL sub_100484558(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) integerValue];
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    if (v4 != 2)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = 1;
  }

  v6 = [v3 slot] == v5;
LABEL_7:

  return v6;
}

void sub_1004845C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 responseStatus];
  v8 = [v6 responseCarrierToken];
  v9 = [v6 responseMessage];

  v10 = +[IMRGLog sms];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithInteger:a4];
    v12 = @"YES";
    *buf = 138413058;
    v24 = v11;
    if (!v8)
    {
      v12 = @"NO";
    }

    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Carrier token response received {resultCode: %@, serverStatus: %@, serverErrorDetail: %@, carrierToken: %@}", buf, 0x2Au);
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v14 = [NSNumber numberWithInteger:a4];
    v15 = [NSString stringWithFormat:@"Failed to request carrier token from IDS server {resultCode: %@, serverStatus: %@, serverErrorDetail: %@}", v14, v7, v9];

    v16 = IDSRegistrationControlErrorDomain;
    v21 = NSDebugDescriptionErrorKey;
    v22 = v15;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:v16 code:1 userInfo:v17];
  }

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) localObject];
  v20 = [v18 broadcasterForLocalObject:v19 messageContext:*(a1 + 40)];

  [v20 didRequestCarrierTokenString:v8 requestUUID:*(a1 + 48) error:v13];
}

void sub_100484ECC(id a1)
{
  v1 = [IDSPhoneUserRegistry alloc];
  v7 = im_primary_base_queue();
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 registrationConductor];
  v4 = [v3 userStore];
  v5 = [(IDSPhoneUserRegistry *)v1 initWithQueue:v7 userStore:v4];
  v6 = qword_100CBD438;
  qword_100CBD438 = v5;
}

void sub_100484F80(id a1)
{
  v1 = objc_alloc_init(+[FTMessageDelivery HTTPMessageDeliveryClass]);
  v2 = qword_100CBD448;
  qword_100CBD448 = v1;

  [qword_100CBD448 setLogToRegistration:1];
  v3 = qword_100CBD448;
  v4 = +[IDSRegistrationRequestTracker sharedInstance];
  [v3 addRequestObserver:v4];
}

void sub_100485A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

id sub_100485B44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1 && [*(a1 + 32) containsObject:v3])
  {
    v4 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "  Found bad vetted alias, it was my phone number: %@ => %@", &v8, 0x16u);
    }

    v6 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_100485C64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:kIDSServiceDefaultsAliasKey];
  v5 = [v3 objectForKey:kIDSServiceDefaultsAliasStatusKey];
  v6 = [v5 intValue];

  v7 = [v4 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];
  v8 = v7;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 24);
  if ((v10 & 1) != 0 || !v7)
  {
    if ((v10 & v7) == 1)
    {
LABEL_13:
      *(*(*(a1 + 72) + 8) + 24) = 1;
      [*(a1 + 32) addObject:v4];
      v15 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    *(v9 + 24) = 1;
  }

  v11 = [*(a1 + 40) service];
  if ([v11 shouldRegisterUsingDSHandle])
  {
    v12 = [v4 _appearsToBeDSID];
  }

  else
  {
    v12 = 0;
  }

  v13 = v8 | v12;
  if (v6 >= 2)
  {
    if ((([*(a1 + 48) containsObject:v4] | v13) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v13 & 1) == 0)
  {
LABEL_10:
    v14 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  Found unvalidated/failed alias: %@", &v21, 0xCu);
    }

    goto LABEL_13;
  }

  v16 = IMStripFormattingFromAddress();
  if ([v16 isEqualToIgnoringCase:v4])
  {
    if (*(a1 + 80) == 1 && [*(a1 + 56) containsObject:v16])
    {
      v17 = +[IMRGLog accountCleanup];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 56);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "  Found bad alias, it was my phone number: %@ => %@", &v21, 0x16u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
      [*(a1 + 32) addObject:v4];
      v15 = 0;
    }

    else
    {
      v15 = v3;
    }
  }

  else
  {
    v19 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v4;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "  Found bad alias: %@ => %@", &v21, 0x16u);
    }

    v15 = 0;
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

LABEL_26:

  return v15;
}

id sub_100485F94(id a1, id a2)
{
  v2 = a2;
  if ([v2 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

id sub_100485FF4(id a1, id a2)
{
  v2 = [a2 objectForKey:kIDSServiceDefaultsAliasKey];
  if ([v2 length] && (objc_msgSend(v2, "isEqualToIgnoringCase:", kIDSServiceDefaultsSentinelAlias) & 1) == 0)
  {
    if (IMStringIsPhoneNumber())
    {
      v4 = IMCanonicalizeFormattedString();
    }

    else
    {
      v4 = v2;
    }

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100486094(id a1, IDSPseudonym *a2)
{
  v2 = [(IDSPseudonym *)a2 properties];
  v3 = [v2 hasBeenExpiredForAtLeast:IDSPseudonymMaxExpiredAgeInSeconds];

  return v3;
}

void sub_10048643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10048648C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v34 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = v17;
    if (!v12 || !v14)
    {
      goto LABEL_22;
    }

    v19 = [v17 service];
    v20 = [v19 queryService];
    if ([v14 isEqualToString:v20])
    {
      v21 = [v18 aliases];
      v22 = [v12 unprefixedURI];
      v23 = [v21 containsObject:v22];

      if (v23)
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v12;
          *&buf[22] = 2112;
          v41 = @"YES";
          v42 = 2112;
          v43 = v15;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received IDQueryCompletedWithFromURI for service %@ fromURI %@ isRelevant? %@  errors %@", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v32 = @"YES";
          v33 = v15;
          v30 = v14;
          v31 = v12;
          _IDSLogV();
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v41) = 0;
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 0;
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10048685C;
        v35[3] = &unk_100BDD3B8;
        v35[4] = v18;
        v35[5] = &v36;
        v35[6] = buf;
        [v15 enumerateKeysAndObjectsUsingBlock:{v35, v30, v31, v32, v33, v34}];
        if (*(*&buf[8] + 24) == 1)
        {
          v25 = +[IDSRegistrationReasonTracker sharedInstance];
          v26 = [v18 userUniqueIdentifier];
          [v25 setPNRReason:11 forUserUniqueIdentifier:v26];

          v27 = [v18 primaryAccount];
          v28 = v27;
          if (v27)
          {
            [v27 reIdentify];
          }

          else
          {
            [v18 reIdentify];
          }
        }

        else
        {
          if (*(v37 + 24) != 1)
          {
LABEL_21:
            _Block_object_dispose(&v36, 8);
            _Block_object_dispose(buf, 8);
            goto LABEL_22;
          }

          v29 = [v18 primaryAccount];
          v28 = v29;
          if (v29)
          {
            [v29 reregister];
          }

          else
          {
            [v18 reregister];
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

LABEL_22:
  }
}

void sub_10048680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10048685C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 domain];
  v8 = [v7 isEqualToString:FTErrorDomain];

  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKey:off_100CB04C0];

  if (!v10 || ![*(a1 + 32) isDeviceRegistered])
  {
    goto LABEL_24;
  }

  v11 = [v6 code];
  if (v11 == 6003)
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = [v6 code];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Query failed with %d  -  Warning", buf, 8u);
    }

    v16 = +[IMLockdownManager sharedInstance];
    if ([v16 isInternalInstall])
    {
      v17 = IMGetCachedDomainBoolForKey();

      v18 = qword_100CBD458;
      if (!qword_100CBD458)
      {
LABEL_22:
        if (v17)
        {
          goto LABEL_24;
        }

LABEL_23:
        v20 = objc_alloc_init(NSDate);
        v21 = qword_100CBD458;
        qword_100CBD458 = v20;

        v22 = [NSBundle bundleForClass:objc_opt_class()];
        v29 = IMLocalizedStringFromTableInBundle();
        v23 = IMLocalizedStringFromTableInBundle();
        v24 = IMLocalizedStringFromTableInBundle();
        v25 = IMLocalizedStringFromTableInBundle();
        v26 = [IMUserNotification userNotificationWithIdentifier:@"ServerAlerts" title:v29 message:v23 defaultButton:v25 alternateButton:v24 otherButton:0];
        [v26 setShowInLockScreen:1];
        v27 = +[IMUserNotificationCenter sharedInstance];
        [v27 addUserNotification:v26 listener:0 completionHandler:&stru_100BDD390];

        goto LABEL_24;
      }
    }

    else
    {

      v18 = qword_100CBD458;
      if (!qword_100CBD458)
      {
        goto LABEL_23;
      }

      v17 = 0;
    }

    [v18 timeIntervalSinceNow];
    if (fabs(v19) <= 3600.0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v11 == 6005)
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = [v6 code];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Query failed; refreshing credentials {error code: %d}", buf, 8u);
    }

    v13 = *(a1 + 48);
    goto LABEL_13;
  }

  if (v11 == 6006)
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = [v6 code];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Query failed; re-registering {error code: %d}", buf, 8u);
    }

    v13 = *(a1 + 40);
LABEL_13:
    *(*(v13 + 8) + 24) = 1;
  }

LABEL_24:

LABEL_25:
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v28 = 1;
  }

  else
  {
    v28 = *(*(*(a1 + 40) + 8) + 24);
  }

  *a4 = v28 & 1;
}

void sub_100486CA4(id a1, IMUserNotification *a2)
{
  if ([(IMUserNotification *)a2 response]== 1)
  {
    v2 = [[NSURL alloc] initWithString:@"prefs:root=General&path=DATE_AND_TIME"];
    if (v2)
    {
      v4 = v2;
      v3 = [IMWeakLinkClass() defaultWorkspace];
      [v3 openSensitiveURL:v4 withOptions:0];

      v2 = v4;
    }
  }
}

id sub_1004870D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:kIDSServiceDefaultsAliasKey];
  if (([*(a1 + 32) shouldRegisterUsingDSHandle] & 1) != 0 || (objc_msgSend(v4, "_appearsToBeDSID") & 1) == 0)
  {
    v6 = [v3 mutableCopy];
    if ([v4 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
    {
      [v6 setObject:&__kCFBooleanFalse forKey:kIDSServiceDefaultsAliasIsUserVisibleKey];
    }

    else
    {
      v7 = [*(a1 + 40) objectForKey:kIDSServiceDefaultsInvisibleAliasesKey];
      if ([v7 count])
      {
        v8 = [v7 containsObject:v4] ^ 1;
      }

      else
      {
        v8 = 1;
      }

      v9 = [NSNumber numberWithBool:v8];
      [v6 setObject:v9 forKey:kIDSServiceDefaultsAliasIsUserVisibleKey];
    }

    if ([v3 isEqual:v6])
    {
      v10 = v3;
    }

    else
    {
      v10 = [v6 copy];
    }

    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10048AA98(uint64_t a1, void *a2)
{
  v3 = [a2 userUniqueIdentifier];
  v4 = [*(a1 + 32) userUniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_10048C3A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 broadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting registration status info changes", v11, 2u);
    }
  }

  v9 = [v3 uniqueID];
  if ([*(a1 + 40) isNull])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  [v7 account:v9 registrationStatusInfoChanged:v10];
}

void sub_10048C4E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 broadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting aliases changes", v11, 2u);
    }
  }

  v9 = [v3 uniqueID];
  if ([*(a1 + 40) isNull])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  [v7 account:v9 aliasesChanged:v10];
}

void sub_10048C618(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 registrationBroadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting vetted aliases changes", v11, 2u);
    }
  }

  v9 = [v3 uniqueID];
  if ([*(a1 + 40) isNull])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  [v7 account:v9 vettedAliasesChanged:v10];
}

void sub_10048C750(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 registrationBroadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting profile changes", v11, 2u);
    }
  }

  v9 = [v3 uniqueID];
  if ([*(a1 + 40) isNull])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  [v7 account:v9 profileChanged:v10];
}

void sub_10048C888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 registrationBroadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting loginAs changes", v11, 2u);
    }
  }

  v9 = [v3 uniqueID];
  if ([*(a1 + 40) isNull])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  [v7 account:v9 loginChanged:v10];
}

void sub_10048C9C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 registrationBroadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting displayName changes", v11, 2u);
    }
  }

  v9 = [v3 uniqueID];
  if ([*(a1 + 40) isNull])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  [v7 account:v9 displayNameChanged:v10];
}

void sub_10048CAF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 broadcasterForTopic:v6 messageContext:*(a1 + 32)];

  if (IMShouldLog() && v7)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting pseudonym changes", v11, 2u);
    }
  }

  v9 = [v3 uniqueID];
  if ([*(a1 + 40) isNull])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40);
  }

  [v7 account:v9 pseudonymsChanged:v10];
}

void sub_10048D314(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  if (!v4 || ([v8 service], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "containsObject:", v6), v6, v5, v7))
  {
    [v8 _writeAccountDefaults:*(a1 + 40) force:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10048D88C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v10, 0xCu);
  }

  v6 = [v3 service];
  v7 = [v6 identifier];

  v8 = [v3 service];
  v9 = [v8 pushTopic];

  if (v7)
  {
    CFDictionarySetValue(*(a1 + 32), kIDSServiceDefaultsServiceNameKey, v7);
  }

  if (v9)
  {
    CFDictionarySetValue(*(a1 + 32), kIDSServiceDefaultsPushTopicKey, v9);
  }

  [v3 _updateAccountWithAccountInfo:*(a1 + 32)];
}

void sub_10048E318(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[NSMutableDictionary alloc] initWithDictionary:*(a1 + 32)];
    v5 = [*(a1 + 40) service];
    v6 = [v5 identifier];

    if (v6)
    {
      CFDictionarySetValue(v4, IDSDevicePropertyService, v6);
    }

    v7 = [*(a1 + 40) uniqueID];
    [v3 account:v7 localDeviceAdded:v4];

    v8 = [*(a1 + 40) service];
    v9 = [v8 identifier];
    if (([v9 isEqualToIgnoringCase:@"com.apple.private.alloy.health.sync.classc"] & 1) == 0)
    {
      v10 = [*(a1 + 40) service];
      v11 = [v10 identifier];
      if (([v11 isEqualToIgnoringCase:@"com.apple.private.alloy.fitnessfriends.icloud"] & 1) == 0)
      {
        v14 = [*(a1 + 40) service];
        v15 = [v14 identifier];
        v16 = [v15 isEqualToIgnoringCase:@"com.apple.private.alloy.fitnessfriends.imessage"];

        if ((v16 & 1) == 0)
        {
LABEL_11:

          goto LABEL_12;
        }

LABEL_8:
        v12 = +[IMRGLog healthDebugging];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 40) smallDescription];
          v17 = 138412546;
          v18 = v3;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcaster for localDeviceAdded %@ on account %@", &v17, 0x16u);
        }

        goto LABEL_11;
      }
    }

    goto LABEL_8;
  }

LABEL_12:
}

void sub_10048E690(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) uniqueID];
  [v3 account:v4 localDeviceRemoved:*(a1 + 40)];

  v5 = [*(a1 + 32) service];
  v6 = [v5 identifier];
  if (([v6 isEqualToIgnoringCase:@"com.apple.private.alloy.health.sync.classc"] & 1) == 0)
  {
    v7 = [*(a1 + 32) service];
    v8 = [v7 identifier];
    if (([v8 isEqualToIgnoringCase:@"com.apple.private.alloy.fitnessfriends.icloud"] & 1) == 0)
    {
      v11 = [*(a1 + 32) service];
      v12 = [v11 identifier];
      v13 = [v12 isEqualToIgnoringCase:@"com.apple.private.alloy.fitnessfriends.imessage"];

      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v9 = +[IMRGLog healthDebugging];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) smallDescription];
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Broadcaster for localDeviceRemoved %@ on account %@", &v14, 0x16u);
  }

LABEL_9:
}

void sub_10048E918(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueID];
  v5 = [*(a1 + 32) dependentRegistrations];
  [v3 account:v4 dependentDevicesUpdated:v5];

  v6 = [*(a1 + 32) service];
  v7 = [v6 identifier];
  if (([v7 isEqualToIgnoringCase:@"com.apple.private.alloy.health.sync.classc"] & 1) == 0)
  {
    v8 = [*(a1 + 32) service];
    v9 = [v8 identifier];
    if (([v9 isEqualToIgnoringCase:@"com.apple.private.alloy.fitnessfriends.icloud"] & 1) == 0)
    {
      v12 = [*(a1 + 32) service];
      v13 = [v12 identifier];
      v14 = [v13 isEqualToIgnoringCase:@"com.apple.private.alloy.fitnessfriends.imessage"];

      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v10 = +[IMRGLog healthDebugging];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) smallDescription];
    v15 = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Broadcaster for didUpdatePairedDevice %@ on account %@", &v15, 0x16u);
  }

LABEL_8:
}

void sub_10048EC30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) service];
    v6 = [v5 pushTopic];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notifying %@ delegate of protocol changes to device", &v9, 0xCu);
  }

  v7 = [*(a1 + 32) uniqueID];
  v8 = [*(a1 + 32) dependentRegistrations];
  [v3 account:v7 dependentDevicesUpdated:v8];
}

void sub_10048F450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048F470(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(a1 + 32) daemonClients];
    [v2 removeObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void sub_100490074(id a1, NSArray *a2, NSError *a3)
{
  v3 = a2;
  v65 = objc_alloc_init(IDSQualifiedContactsMetric);
  v4 = +[IDSPublicIdentityCache sharedInstance];
  v64 = [v4 recentURIsWithinTimeInterval:IDSServiceNameiMessage forService:0 error:2592000.0];

  v5 = [(NSArray *)v3 __imArrayByFilteringWithBlock:&stru_100BDD4F8];
  v66 = v3;
  v6 = [(NSArray *)v3 __imArrayByFilteringWithBlock:&stru_100BDD518];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v87 objects:v99 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v88;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v87 + 1) + 8 * i) uri];
        v14 = [v13 tokenFreeURI];
        v15 = [v14 IDSIDType];

        if (!v15)
        {
          ++v10;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v87 objects:v99 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v83 objects:v98 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v84;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v84 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [*(*(&v83 + 1) + 8 * j) uri];
        v23 = [v22 tokenFreeURI];
        v24 = [v23 IDSIDType];

        if (!v24)
        {
          ++v19;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v83 objects:v98 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v67 = v16;

  v25 = +[IDSDaemon sharedInstance];
  v26 = [v25 persistenceManager];

  v27 = +[IDSDAccountController sharedInstance];
  v28 = [v27 registeredLocalURIsOnService:IDSServiceNameiMessageLite];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v7;
  v29 = [obj countByEnumeratingWithState:&v79 objects:v97 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v80;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v80 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = [*(*(&v79 + 1) + 8 * k) uri];
        v35 = [v26 hasUsableSenderKeyFor:v34 fromAny:v28];

        v31 += v35;
      }

      v30 = [obj countByEnumeratingWithState:&v79 objects:v97 count:16];
    }

    while (v30);
  }

  else
  {
    v31 = 0;
  }

  v70 = v26;

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v68 = v67;
  v36 = [v68 countByEnumeratingWithState:&v75 objects:v96 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v39 = *v76;
    do
    {
      for (m = 0; m != v37; m = m + 1)
      {
        if (*v76 != v39)
        {
          objc_enumerationMutation(v68);
        }

        v41 = [*(*(&v75 + 1) + 8 * m) uri];
        v42 = [v70 hasUsableSenderKeyFor:v41 fromAny:v28];

        v38 += v42;
      }

      v37 = [v68 countByEnumeratingWithState:&v75 objects:v96 count:16];
    }

    while (v37);
  }

  else
  {
    v38 = 0;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v43 = v64;
  v44 = [v43 countByEnumeratingWithState:&v71 objects:v95 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = 0;
    v47 = *v72;
    do
    {
      for (n = 0; n != v45; n = n + 1)
      {
        if (*v72 != v47)
        {
          objc_enumerationMutation(v43);
        }

        v46 += [v70 hasUsableSenderKeyFor:*(*(&v71 + 1) + 8 * n) fromAny:{v28, v64}];
      }

      v45 = [v43 countByEnumeratingWithState:&v71 objects:v95 count:16];
    }

    while (v45);
  }

  else
  {
    v46 = 0;
  }

  v49 = [NSNumber numberWithInteger:v10];
  [v65 setQualifiedEmergencyHandles:v49];

  v50 = [NSNumber numberWithInteger:v31];
  [v65 setQualifiedEmergencyHandlesIML:v50];

  v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj count]);
  [v65 setEmergencyHandlesCount:v51];

  v52 = [NSNumber numberWithInteger:v19 + v10];
  [v65 setQualifiedPrimaryHandles:v52];

  v53 = [NSNumber numberWithInteger:v38 + v31];
  [v65 setQualifiedPrimaryHandlesIML:v53];

  v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj count] + objc_msgSend(v68, "count"));
  [v65 setPrimaryHandlesCount:v54];

  v55 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v68 count]);
  [v65 setFamilyHandlesCount:v55];

  v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v43 count]);
  [v65 setQualifiedHandlesCount:v56];

  v57 = [NSNumber numberWithInteger:v46];
  [v65 setQualifiedHandlesIML:v57];

  v58 = objc_alloc_init(IDSContactsUtilities);
  v59 = [NSNumber numberWithInteger:[(IDSContactsUtilities *)v58 countOfHandles]];
  [v65 setHandlesCount:v59];

  v60 = v70;
  v61 = [v70 lastQualifiedContactsMetric];
  if (([v61 isEqual:v65] & 1) == 0)
  {
    v62 = +[IDSFoundationLog xpc];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v92 = v65;
      v93 = 2112;
      v94 = v61;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Capturing metric - current IDSQualifiedContactsMetric: %@ differs from last metric: %@", buf, 0x16u);
    }

    v63 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v63 logMetric:v65];

    v60 = v70;
    [v70 updateQualifiedContactsCountWithMetric:v65];
  }
}

void sub_10049120C(uint64_t a1)
{
  v2 = [*(a1 + 32) accountRepair];
  [v2 repairAccounts];

  v3 = [*(a1 + 32) deviceCertificationRepair];
  [v3 recertifyDeviceIfNeeded];

  v4 = [*(a1 + 32) stewieCoordinator];
  [v4 checkComponentsAtStartup];
}

void sub_100491F30(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceCertificationRepair];
  [v2 recertifyDeviceIfNeeded];

  v3 = [*(a1 + 32) accountRepair];
  [v3 repairAccounts];

  v4 = [*(a1 + 32) accountRepair];
  [v4 setupPhoneNumberRepairTimer];

  v5 = [*(a1 + 32) SIMPhoneUserSynchronizer];
  [v5 verifyState];

  v6 = [*(a1 + 32) stewieCoordinator];
  [v6 checkComponentsAtStartup];
}

void sub_100492050(uint64_t a1)
{
  v1 = [*(a1 + 32) accountSync];
  [v1 noteShouldSynchronizePreferredAccount];
}

void sub_100492214(uint64_t a1)
{
  v2 = [*(a1 + 32) SIMResponder];
  [v2 handleRegistrationStateChanged:*(a1 + 40)];

  v3 = [*(a1 + 32) heartbeatCenter];
  [v3 noteRegistrationStateChanged];

  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) userAccountSynchronizer];
    [v4 synchronize];
  }
}

void sub_10049233C(uint64_t a1)
{
  v2 = [*(a1 + 32) accountRepair];
  [v2 setupPhoneNumberRepairTimer];

  v3 = [*(a1 + 32) userAccountSynchronizer];
  [v3 synchronize];
}

void sub_10049247C(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationController];
  [v2 SIM:*(a1 + 40) didDeactivateWithInfo:*(a1 + 48)];
}

void sub_10049261C(id a1)
{
  v1 = objc_alloc_init(IDSSMSRegistrationCenter);
  v2 = qword_100CBD468;
  qword_100CBD468 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004931AC(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished capturing AutoBugCapture diagnostics for high registration attempt rate { context: %@, sessionID: %@, error: %@ }", &v9, 0x20u);
  }
}

uint64_t sub_100494338(uint64_t a1, void *a2)
{
  v3 = [a2 response];
  v4 = +[IMRGLog sms];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "User notification denied Phone Number Validation delivery, not sending";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "User notification allowed Phone Number Validation delivery, sending";
    v7 = buf;
    goto LABEL_6;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100495348(id a1)
{
  v1 = objc_alloc_init(IDSRestrictions);
  v2 = qword_100CBD488;
  qword_100CBD488 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100495384(id a1)
{
  [qword_100CBD488 setShouldPostNotifications:0];
  [qword_100CBD488 _updateParentalSettings];
  v1 = qword_100CBD488;

  [v1 setShouldPostNotifications:1];
}

void sub_100495898(uint64_t a1)
{
  *(*(a1 + 32) + 26) = [*(*(a1 + 32) + 8) applicationIsInstalled:@"com.apple.facetime"];
  *(*(a1 + 32) + 27) = [*(*(a1 + 32) + 8) applicationIsInstalled:@"com.apple.MobileSMS"];
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(v3 + 26))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    if (*(v3 + 27))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initial FT App Install State %@, Initial Messages App Install State %@", buf, 0x16u);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = *(*(a1 + 32) + 26);
  v8 = [NSString stringWithFormat:@"%@-cachedInstall", @"com.apple.facetime"];
  [v6 setBool:v7 forKey:v8];

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = *(*(a1 + 32) + 27);
  v11 = [NSString stringWithFormat:@"%@-cachedInstall", @"com.apple.MobileSMS"];
  [v9 setBool:v10 forKey:v11];
}

id sub_100495A74(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _updateParentalSettings];
}

void sub_100495BE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) applicationIsInstalled:@"com.apple.facetime"];
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking FT App Install State %@", buf, 0xCu);
  }

  if (*(*(a1 + 32) + 26) != v2)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (*(*(a1 + 32) + 26))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v2)
      {
        v6 = @"YES";
      }

      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received FaceTime App Install State change {old: %@, new: %@}", buf, 0x16u);
    }

    *(*(a1 + 32) + 26) = v2;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = *(*(a1 + 32) + 26);
    v10 = [NSString stringWithFormat:@"%@-cachedInstall", @"com.apple.facetime"];
    [v8 setBool:v9 forKey:v10];

    [*(a1 + 32) _updateParentalSettings];
  }
}

void sub_100495F14(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) applicationIsInstalled:@"com.apple.MobileSMS"];
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking Messages App Install State %@", buf, 0xCu);
  }

  if (*(*(a1 + 32) + 27) != v2)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (*(*(a1 + 32) + 27))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v2)
      {
        v6 = @"YES";
      }

      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received Messages App Install State change {old: %@, new: %@}", buf, 0x16u);
    }

    *(*(a1 + 32) + 27) = v2;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = *(*(a1 + 32) + 27);
    v10 = [NSString stringWithFormat:@"%@-cachedInstall", @"com.apple.MobileSMS"];
    [v8 setBool:v9 forKey:v10];

    [*(a1 + 32) _updateParentalSettings];
  }
}

void sub_100496960(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 134218242;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting restriction change for service {restrictionReason: %lu, service: %@", buf, 0x16u);
  }

  v7 = +[IDSDaemon sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100496AEC;
  v12[3] = &unk_100BDD6D0;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v12[5] = v8;
  v9 = kIDSRegistrationEntitlement;
  v10 = kIDSListenerCapConsumesLaunchOnDemandRestrictionUpdates;
  v11 = objc_alloc_init(IMMessageContext);
  [v7 enqueueBroadcast:v12 forTopic:v3 entitlement:v9 command:0 capabilities:v10 messageContext:v11];
}

id sub_100497148(uint64_t a1)
{
  [*(a1 + 32) _updateParentalSettingsIfFTInstallChanged];
  v2 = *(a1 + 32);

  return [v2 _updateParentalSettingsIfMessagesInstallChanged];
}

id sub_10049720C(uint64_t a1)
{
  [*(a1 + 32) _updateParentalSettingsIfFTInstallChanged];
  v2 = *(a1 + 32);

  return [v2 _updateParentalSettingsIfMessagesInstallChanged];
}

void sub_1004973D4(uint64_t a1)
{
  [*(a1 + 32) doubleValue];
  v3 = v2;
  [*(a1 + 40) doubleValue];
  v5 = llround((v3 - v4) * 1000.0);
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *buf = 134218754;
    v17 = v7;
    v18 = 2048;
    v19 = v5;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AWDIDSGenericConnectionSetupDurationEvent linkType:%lu, setupDuration:%llums connectionType:%@ errorCode:%@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v12 = *(a1 + 72);
      v13 = v5;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        v12 = *(a1 + 72);
        v13 = v5;
        _IDSLogV();
      }
    }
  }

  v10 = [*(a1 + 64) _metricContainerForMetricType:{2555934, v12, v13, v14, v15}];
  if (v10)
  {
    v11 = objc_alloc_init(IMWeakLinkClass());
    [v11 setLinkType:*(a1 + 72)];
    [v11 setConnectionSetupDuration:v5];
    [v11 setConnectionType:{objc_msgSend(*(a1 + 48), "integerValue")}];
    [v11 setSuccess:*(a1 + 80)];
    [v11 setErrorCode:{objc_msgSend(*(a1 + 56), "integerValue")}];
    [*(a1 + 64) _submitAWDMetric:v11 withContainer:v10];
  }
}

void sub_100497610(id a1)
{
  v1 = objc_alloc_init(IDSPairingManager);
  v2 = qword_100CBD498;
  qword_100CBD498 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100497954(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didAddPairedDevice:*(a1 + 32)];
  }
}

void sub_100497B44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didRemovePairedDevice:*(a1 + 32)];
  }
}

id sub_100497C10(uint64_t a1)
{
  v2 = [*(a1 + 32) pairedDeviceRepository];
  v3 = [v2 activePairedDevice];

  v4 = [*(a1 + 32) isPaired];
  result = [*(a1 + 32) _hasAllEncryptionKeys];
  if (v3 && (v4 & result & 1) == 0)
  {
    [*(a1 + 32) _requestPairedDeviceInfo];
    v6 = *(a1 + 32);

    return [v6 _requestPairedDeviceInfoAfterDelay:15.5];
  }

  return result;
}

void sub_100497F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100497FA8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1004984A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdatePairedDevice:*(a1 + 32)];
  }
}

void sub_10049A6DC(uint64_t a1)
{
  v2 = +[IDSDevicePropertiesStateNotifier sharedInstance];
  [v2 updateStateForDeviceWithUniqueID:*(a1 + 32)];
}

void sub_10049CB18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdatePairedDevice:*(a1 + 32)];
  }
}

void sub_10049D394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog NRPairing];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1009216EC();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v15 = 138478083;
      v16 = v6;
      v17 = 2113;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did register device with NRDeviceManager {nrDeviceIdentifier: %{private}@, cbuuid: %{private}@}", &v15, 0x16u);
    }

    if (*(a1 + 56) == 1)
    {
      v8 = +[IMRGLog NRPairing];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v15 = 138477827;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting UTunPeer and NRDevice bridge for device with cbuuid: %{private}@}", &v15, 0xCu);
      }

      v10 = +[IDSUTunDeliveryController sharedInstance];
      [v10 addConnectivityDelegate:*(a1 + 48)];

      v11 = +[IDSUTunDeliveryController sharedInstance];
      v12 = IDSDeviceDefaultPairedDeviceUniqueID;
      v13 = [*(a1 + 32) UUIDString];
      [v11 addUTunPeerWithDeviceUniqueID:v12 btuuid:v13];

      v14 = +[IDSUTunDeliveryController sharedInstance];
      [v14 startIdsNRDeviceBridgeAndPreferenceHandlerWithIdentifier:*(a1 + 32)];

      [*(a1 + 48) _requestPairedDeviceInfoAfterDelay:10.0];
    }
  }
}

void sub_10049E1FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdatePairedDevice:*(a1 + 32)];
  }
}

void sub_10049E25C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateProtocolForPairedDevice:*(a1 + 32)];
  }
}

void sub_10049E4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdatePairedDevice:*(a1 + 32)];
  }
}

id sub_10049EB7C(uint64_t a1)
{
  v2 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished resetting communication -- Done {uniqueID: %{private}@}", &v5, 0xCu);
  }

  return [*(a1 + 40) _callPairedDeviceDidConnectBlocksForUniqueID:*(a1 + 48) withError:0];
}

void sub_10049EDC4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10049EDE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_10049EE48(id a1)
{
  v1 = objc_alloc_init(IDSUserNotificationsCenter);
  v2 = qword_100CBD4B0;
  qword_100CBD4B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10049F2D4(id a1)
{
  qword_100CBD4B8 = IMWeakLinkClass();
  qword_100CBD4C0 = IMWeakLinkClass();
  qword_100CBD4C8 = IMWeakLinkClass();
}

void sub_10049F340(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Added ids notification request {error: %@}", &v4, 0xCu);
  }
}

void sub_1004A1884(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v15 = v8;
  v11 = [v15 responseEntries];
  if (v11)
  {
    v12 = [*(a1 + 32) arrayByAddingObjectsFromArray:v11];
    v13 = [v11 lastObject];
    v14 = [v13 objectForKeyedSubscript:@"next-key"];
    if (v14)
    {
      [*(a1 + 40) _queryGroupServerENID:v14 withPreviousEntries:v12 completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1004A1A78(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v8;
  v12 = [v11 responseEntries];
  if (v12)
  {
    v13 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004A1BAC;
    v15[3] = &unk_100BDD8D0;
    v16 = v11;
    v17 = *(a1 + 40);
    v14 = [v13 _getMessageCompletionCurrentEntries:v12 withCompletion:v15];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1004A1BAC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v13 = a3;
  v12 = [a2 responseEntries];
  [*(a1 + 32) setResponseEntries:v12];

  (*(*(a1 + 40) + 16))();
}

id sub_1004A3480(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"decrypt";
      if (a1)
      {
        v8 = @"encrypt";
      }

      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "asked to %@, but key is NULL!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v9 = @"decrypt";
      if (a1)
      {
        v9 = @"encrypt";
      }

      v20 = v9;
      _IDSLogV();
    }
  }

  if (!v5)
  {
    v12 = 0;
    goto LABEL_23;
  }

  *buf = 0;
  v10 = v6;
  if (CCCryptorCreate(a1 ^ 1, 0, 1u, [v6 bytes], objc_msgSend(v6, "length"), 0, buf))
  {
    v11 = 0;
  }

  else
  {
    v13 = [v5 length];
    OutputLength = CCCryptorGetOutputLength(*buf, v13, 1);
    v21 = 0;
    dataOutMoved = 0;
    v11 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
    v15 = *buf;
    v16 = v5;
    if (!CCCryptorUpdate(v15, [v5 bytes], v13, v11, OutputLength, &dataOutMoved) && !CCCryptorFinal(*buf, &v11[dataOutMoved], OutputLength - dataOutMoved, &v21))
    {
      v18 = [NSData alloc];
      if (a1)
      {
        v19 = OutputLength;
      }

      else
      {
        v19 = v21 + dataOutMoved;
      }

      v12 = [v18 initWithBytesNoCopy:v11 length:v19 freeWhenDone:{1, v20}];
      goto LABEL_18;
    }
  }

  v12 = 0;
LABEL_18:
  if (*buf)
  {
    CCCryptorRelease(*buf);
  }

  if (!v12 && v11)
  {
    free(v11);
  }

LABEL_23:

  return v12;
}

void sub_1004A4488(uint64_t a1)
{
  memset_s(*(a1 + 32), 0x10uLL, 0, 0x10uLL);
  v2 = *(a1 + 32);

  free(v2);
}

id sub_1004A52E4()
{
  if (qword_100CBD540 != -1)
  {
    sub_100921B68();
  }

  v1 = qword_100CBD538;

  return v1;
}

void sub_1004A5328(id a1)
{
  v1 = objc_alloc_init(+[FTMessageDelivery APNSMessageDeliveryClass]);
  v2 = qword_100CBD538;
  qword_100CBD538 = v1;

  v3 = qword_100CBD538;
  v4 = IMGetDomainIntForKey();
  if (v4 <= 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  [v3 setMaxConcurrentMessages:v5];
}

uint64_t sub_1004A539C(void *a1, _BYTE *a2)
{
  v3 = a1;
  if (qword_100CBD548 != -1)
  {
    sub_100921B7C();
  }

  v4 = [v3 domain];
  v5 = [v4 isEqualToString:IMRemoteURLConnectionErrorDomain];

  if (v5)
  {
    v6 = [v3 code] == -1;
  }

  else
  {
    v6 = 0;
  }

  if ([v3 code] == -1009)
  {
    v7 = 1;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v8 = [v3 domain];
  if ([v8 isEqualToString:FTErrorDomain])
  {
    v7 = [v3 code] == 10000;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
LABEL_13:
    if (v7)
    {
      *a2 = 1;
    }
  }

LABEL_15:
  v9 = [v3 domain];
  if ([v9 isEqualToString:NSURLErrorDomain])
  {
  }

  else
  {
    v10 = [v3 domain];
    v11 = [v10 isEqualToString:kCFErrorDomainCFNetwork];

    if (!v11)
    {
      if (qword_100CBD550 && ([v3 domain], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", qword_100CBD550), v13, v14))
      {
        LOBYTE(v15) = [v3 code] - 4 < 3;
      }

      else
      {
        v16 = [v3 domain];
        v17 = [v16 isEqualToString:IDSRemoteURLConnectionErrorDomain];

        if (v17)
        {
          v12 = [v3 code];
          if (v12 == 2)
          {
            goto LABEL_55;
          }

LABEL_54:
          if (v12 != 1)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        v18 = [v3 domain];
        v19 = [v18 isEqualToString:NSPOSIXErrorDomain];

        if (!v19)
        {
          goto LABEL_56;
        }

        v20 = [v3 code];
        if ((v20 - 50) > 0xF)
        {
          goto LABEL_56;
        }

        v15 = 0xCC9Fu >> (v20 - 50);
      }

      v6 |= v15;
      goto LABEL_56;
    }
  }

  v12 = [v3 code];
  if (v12 <= -1004)
  {
    if (v12 <= -1010)
    {
      if (v12 > -1020)
      {
        if (v12 == -1019 || v12 == -1011)
        {
          goto LABEL_55;
        }
      }

      else if (v12 == -2000 || v12 == -1200)
      {
        goto LABEL_55;
      }
    }

    else if (v12 > -1007 || v12 == -1009 || v12 == -1008)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  if (v12 <= -2)
  {
    if (v12 >= -1000 && v12 != -999 && v12 != -998)
    {
      goto LABEL_56;
    }

LABEL_55:
    v6 = 1;
    goto LABEL_56;
  }

  if (v12 <= 1)
  {
    if (v12 == -1)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v12 == 311 || v12 == 310 || v12 == 2)
  {
    goto LABEL_55;
  }

LABEL_56:

  return v6 & 1;
}

void sub_1004A56D0(id a1)
{
  v1 = IMWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_100CBD550, v2);
}

uint64_t sub_1004A5720(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:NSURLErrorDomain])
  {
  }

  else
  {
    v3 = [v1 domain];
    v4 = [v3 isEqualToString:kCFErrorDomainCFNetwork];

    if (!v4)
    {
      v7 = [v1 domain];
      v8 = [v7 isEqualToString:NSPOSIXErrorDomain];

      if (v8)
      {
        v9 = [v1 code];
        if ((v9 - 52) <= 0xD)
        {
          v6 = 0x3327u >> (v9 - 52);
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_31;
    }
  }

  v5 = [v1 code];
  v6 = 0;
  if (v5 <= -1002)
  {
    if (v5 > -1009)
    {
      if (v5 == -1008 || v5 == -1004 || v5 == -1002)
      {
        goto LABEL_30;
      }
    }

    else if (v5 == -2000 || v5 == -1200 || v5 == -1011)
    {
      goto LABEL_30;
    }
  }

  else if (v5 <= -2)
  {
    if (v5 == -1001 || v5 == -999 || v5 == -998)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v5 <= 309)
    {
      if (v5 != -1 && v5 != 2)
      {
        goto LABEL_31;
      }

LABEL_30:
      v6 = 1;
      goto LABEL_31;
    }

    if (v5 == 310 || v5 == 311)
    {
      goto LABEL_30;
    }
  }

LABEL_31:

  return v6 & 1;
}

void sub_1004A5F8C(id a1)
{
  v1 = objc_alloc_init(IDSAppleIDNotificationCenter);
  v2 = qword_100CBD570;
  qword_100CBD570 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1004A6900(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (IDSIsiMessageRegistrationServiceType() || (v6 = v5, IDSIsFaceTimeRegistrationServiceType()))
  {
    v6 = IMLocalizedStringFromTableInBundle();
  }

  return v6;
}

void sub_1004A69BC(id *a1, void *a2)
{
  v3 = [a2 response];
  v17 = v3 == 0;
  v4 = +[IMRGLog registration];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => User hit no, ignoring", buf, 2u);
    }

    v6 = (a1 + 4);
    if ([a1[4] length])
    {
      v7 = 0;
LABEL_10:
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = a1[5];
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [a1[6] objectForKey:*(*(&v23 + 1) + 8 * i)];
            if (v13)
            {
              v14 = im_primary_queue();
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1004A6C3C;
              block[3] = &unk_100BD9738;
              v21 = v13;
              v22 = v17;
              v15 = v7;
              v16 = *v6;
              v19 = v15;
              v20 = v16;
              dispatch_async(v14, block);
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " => User hit yes, adding and validating", buf, 2u);
    }

    v6 = (a1 + 4);
    if ([a1[4] length])
    {
      v7 = IMSingleObjectArray();
      goto LABEL_10;
    }
  }
}

void sub_1004A747C(id a1, NSError *a2)
{
  v3 = +[IMRGLog registration];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      v8 = 0;
      v5 = "Error posting new device notification.";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v7 = 0;
    v5 = "Posted new device notification.";
    v6 = &v7;
    goto LABEL_6;
  }
}

id sub_1004A85F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004A86D4;
  v10[3] = &unk_100BDDB28;
  v11 = v3;
  v5 = objc_alloc_init(NSMutableSet);
  v12 = v5;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v5;
}

void sub_1004A86D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 prefixedURI];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
  }
}

uint64_t sub_1004A8764(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = sub_1004A85F4(a1, a2);
  v10 = sub_1004A85F4(v8, v7);

  LODWORD(v8) = [v9 isEqualToSet:v10];
  return v8 ^ 1;
}

uint64_t sub_1004A9F64()
{
  qword_100CBD578 = CSDBCreateThreadedRecordStoreWithQOSClassAndLookAsideBufferConfig();

  return _objc_release_x1();
}

void sub_1004A9FB8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_assert_owner(&unk_100CBD588);
  v3 = sub_10001599C();
  CSDBPerformUnlockedSectionForQueryForWriting();
}

void sub_1004AA024(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_assert_owner(&unk_100CBD588);
  v3 = sub_10001599C();
  CSDBPerformUnlockedSectionForQueryForReading();
}

void sub_1004AA090()
{
  os_unfair_lock_assert_owner(&unk_100CBD588);
  v0 = sub_10001599C();
  CSDBPerformLockedSectionForRecordStoreWithoutInitialize();
}

uint64_t sub_1004AA0EC()
{
  os_unfair_lock_assert_owner(&unk_100CBD588);

  return CSDBSqliteSetDefaultPageCacheSize();
}

id sub_1004AA22C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = CSDBGetMobileUserDirectory();
  if (v3)
  {
    v4 = v3;
    v5 = +[NSProcessInfo processInfo];
    v6 = [v5 processName];

    v7 = [NSString stringWithFormat:@"ids-firewall-%@.db", v6];

    if ([v1 length])
    {
      v13[0] = v1;
      v13[1] = v7;
      v8 = [NSArray arrayWithObjects:v13 count:2];
      v9 = [NSString pathWithComponents:v8];
    }

    else
    {
      v10 = [NSString stringWithUTF8String:v4];
      v11 = [NSArray arrayWithObjects:v10, @"/Library/IdentityServices/", v7, 0];
      v9 = [NSString pathWithComponents:v11];
    }

    [v9 fileSystemRepresentation];
    CSDBGetMobileUserUID();
    CSDBGetMobileUserGID();
    CSDBCreateDirectoriesToPath();
    v1 = [v9 stringByResolvingAndStandardizingPath];
  }

  objc_autoreleasePoolPop(v2);
  return v1;
}

uint64_t sub_1004AA3FC()
{
  CSDBRecordStoreCreateTablesForClass();
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Creating indexes as needed for faster lookup", v2, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteConnectionPerformSQL();
  return CSDBSqliteConnectionPerformSQL();
}

uint64_t sub_1004AA4F4()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Enabling auto vacuum.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteConnectionPerformSQL();
  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Enabling WAL journal mode.", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  CSDBSqliteConnectionPerformSQL();
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Enabling Foreign Key support.", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  return CSDBSqliteConnectionPerformSQL();
}

void sub_1004AA74C(void *a1, void *a2, void *a3, void *a4)
{
  v12 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 length])
  {
    v10 = +[FTPasswordManager sharedInstance];
    v11 = [v7 lowercaseString];
    [v10 setPasswordForProfileID:v8 username:v11 service:v9 password:v12 outRequestID:0 completionBlock:&stru_100BDDDE8];
  }
}

void sub_1004AA828(id a1, NSString *a2, NSString *a3, NSString *a4, BOOL a5)
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    if (v5)
    {
      v10 = @"YES";
    }

    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated password for account (%@:%@): %@", &v11, 0x20u);
  }
}

void sub_1004AA924(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v9 length])
  {
    v13 = +[FTPasswordManager sharedInstance];
    v14 = [v9 lowercaseString];
    [v13 setAuthTokenForProfileID:v10 username:v14 service:v12 authToken:v15 selfHandle:v11 accountStatus:&off_100C3C7C0 outRequestID:0 completionBlock:&stru_100BDDE08];
  }
}

void sub_1004AAA1C(id a1, NSString *a2, NSString *a3, NSString *a4, BOOL a5)
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    if (v5)
    {
      v10 = @"YES";
    }

    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully updated auth token for account (%@:%@): %@", &v11, 0x20u);
  }
}

void sub_1004AB8CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Transaction ID %@  messageContext %@", buf, 0x16u);
  }

  if ([*(a1 + 32) length])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 138412546;
      v34 = v8;
      v35 = 2112;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying listener %@ that account %@  is setup", buf, 0x16u);
    }

    v9 = *(a1 + 56);
    if (!v9)
    {
      v10 = [v3 accountInfo];
      v11 = [v10 objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
      v12 = kIDSServiceDefaultsRegistrationInfoErrorCodeKey;
      v13 = [v11 objectForKey:kIDSServiceDefaultsRegistrationInfoErrorCodeKey];
      v14 = [v13 intValue];

      if (v14 == -1)
      {
        v9 = 0;
      }

      else
      {
        v15 = [v11 objectForKey:kIDSServiceDefaultsRegistrationInfoAlertInfoKey];
        v16 = [v11 objectForKey:v12];
        v17 = [v16 integerValue];

        v18 = [NSError alloc];
        v9 = [v18 initWithDomain:IDSAccountRegistrationErrorDomain code:v17 userInfo:v15];
        v19 = +[IMRGLog warning];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_100921EB8();
        }
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = [v3 accountAndAdHocAccounts];
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v28 + 1) + 8 * v24);
          v26 = [*(a1 + 64) listenerRemoteObjectForLocalObject:*(a1 + 48)];
          v27 = [v25 uniqueID];
          [v26 setupCompleteForAccount:v27 transactionID:*(a1 + 32) setupError:v9];

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    if (*(a1 + 56) != v9)
    {

      v9 = 0;
    }
  }
}

void sub_1004ABC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004ABDB4;
  v12[3] = &unk_100BDDE30;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 64);
  [v3 setupAccountWithCompletionBlock:v12];
}

void sub_1004ABDB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Linked account Transaction ID %@  messageContext %@", buf, 0x16u);
  }

  if ([*(a1 + 32) length])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 138412546;
      v34 = v8;
      v35 = 2112;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifying listener %@ that linked account %@  is setup", buf, 0x16u);
    }

    v9 = *(a1 + 56);
    if (!v9)
    {
      v10 = [v3 accountInfo];
      v11 = [v10 objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
      v12 = kIDSServiceDefaultsRegistrationInfoErrorCodeKey;
      v13 = [v11 objectForKey:kIDSServiceDefaultsRegistrationInfoErrorCodeKey];
      v14 = [v13 intValue];

      if (v14 == -1)
      {
        v9 = 0;
      }

      else
      {
        v15 = [v11 objectForKey:kIDSServiceDefaultsRegistrationInfoAlertInfoKey];
        v16 = [v11 objectForKey:v12];
        v17 = [v16 integerValue];

        v18 = [NSError alloc];
        v9 = [v18 initWithDomain:IDSAccountRegistrationErrorDomain code:v17 userInfo:v15];
        v19 = +[IMRGLog warning];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_100921F28();
        }
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = [v3 accountAndAdHocAccounts];
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v28 + 1) + 8 * v24);
          v26 = [*(a1 + 64) listenerRemoteObjectForLocalObject:*(a1 + 48)];
          v27 = [v25 uniqueID];
          [v26 setupCompleteForAccount:v27 transactionID:0 setupError:v9];

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    if (*(a1 + 56) != v9)
    {

      v9 = 0;
    }
  }
}

void sub_1004AC9C0(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 uniqueID];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing linked account: %@", &v6, 0xCu);
  }

  v5 = +[IDSDAccountController sharedInstance];
  [v5 removeAccount:v2];
}

void sub_1004ACC60(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 uniqueID];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling and removing linked account: %@", &v7, 0xCu);
  }

  [v2 unregisterAccount];
  v5 = +[IDSDAccountController sharedInstance];
  [v5 disableAccountWithUniqueID:v3];

  v6 = +[IDSDAccountController sharedInstance];
  [v6 removeAccount:v2];
}

void sub_1004AD224(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling linked account: %@", &v7, 0xCu);
  }

  v5 = +[IDSDAccountController sharedInstance];
  v6 = [v2 uniqueID];
  [v5 enableAccountWithUniqueID:v6];

  [v2 registerAccount];
}

void sub_1004AD494(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disabling linked account: %@", &v7, 0xCu);
  }

  v5 = +[IDSDAccountController sharedInstance];
  v6 = [v2 uniqueID];
  [v5 disableAccountWithUniqueID:v6];
}

void sub_1004AD6FC(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disabling linked account: %@", &v7, 0xCu);
  }

  v5 = +[IDSDAccountController sharedInstance];
  v6 = [v2 uniqueID];
  [v5 disableAccountWithUniqueID:v6];
}

void sub_1004ADA0C(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 authenticationChanged];
}

void sub_1004ADD04(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 authenticationChanged];
}

void sub_1004ADF14(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 authenticateAccount];
}

void sub_1004AE124(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 passwordUpdated];
}

void sub_1004AE3D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v6, 0xCu);
  }

  [v3 updateAuthorizationCredentials:*(a1 + 32) token:*(a1 + 40)];
}

void sub_1004AE5F0(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 validateProfile];
}

void sub_1004AE878(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v6, 0xCu);
  }

  [v3 addAliases:*(a1 + 32)];
}

void sub_1004AEB08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v6, 0xCu);
  }

  [v3 removeAliases:*(a1 + 32)];
}

void sub_1004AED98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v6, 0xCu);
  }

  [v3 validateAliases:*(a1 + 32)];
}

void sub_1004AF028(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v6, 0xCu);
  }

  [v3 unvalidateAliases:*(a1 + 32)];
}

void sub_1004AF230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004AF248(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v19 = kIDSStatusKitPublishingForStatusTypeEntitlement;
    v18 = kIDSStatusKitPublishingForAllStatusTypeEntitlement;
    v17 = kIDSStatusKitSubscriptionForStatusTypeEntitlement;
    v16 = kIDSStatusKitSubscriptionForAllStatusTypeEntitlement;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 isEqualToIgnoringCase:{@"com.apple.private.alloy.status.keysharing", v16, v17, v18, v19, v20}];
        v11 = *(*(a1 + 56) + 8);
        if (v10)
        {
          if (*(v11 + 24))
          {
            v12 = *(a1 + 40);
            v26[0] = v19;
            v26[1] = v18;
            v26[2] = v17;
            v26[3] = v16;
            v13 = [NSArray arrayWithObjects:v26 count:4];
            *(*(*(a1 + 56) + 8) + 24) = [v12 client:v3 isEntitledToAccessService:0 forAnyOfEntitlements:v13 shouldWarn:1];
          }

          else
          {
            *(v11 + 24) = 0;
          }
        }

        else
        {
          if (*(v11 + 24))
          {
            v14 = [*(a1 + 40) client:v3 isEntitledToAccessService:v9 forEntitlement:*(a1 + 48) shouldWarn:1];
            v11 = *(*(a1 + 56) + 8);
          }

          else
          {
            v14 = 0;
          }

          *(v11 + 24) = v14;
        }

        if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
        {
          v15 = +[IMRGLog registration];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v9;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Pseudonym request failed entitlement check for service %@", buf, 0xCu);
          }

          goto LABEL_21;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

void sub_1004AF67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004AF6A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v17 = kIDSStatusKitPublishingForAllStatusTypeEntitlement;
    v18 = kIDSStatusKitPublishingForStatusTypeEntitlement;
    v16 = kIDSStatusKitSubscriptionForStatusTypeEntitlement;
    v8 = kIDSStatusKitSubscriptionForAllStatusTypeEntitlement;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [v10 isEqualToIgnoringCase:@"com.apple.private.alloy.status.keysharing"];
      v12 = *(*(a1 + 56) + 8);
      if (v11)
      {
        if (*(v12 + 24))
        {
          *(v12 + 24) = 1;
        }

        else
        {
          v14 = *(a1 + 40);
          v23[0] = v18;
          v23[1] = v17;
          v23[2] = v16;
          v23[3] = v8;
          v15 = [NSArray arrayWithObjects:v23 count:4];
          *(*(*(a1 + 56) + 8) + 24) = [v14 client:v3 isEntitledToAccessService:0 forAnyOfEntitlements:v15 shouldWarn:1];
        }
      }

      else
      {
        if (*(v12 + 24))
        {
          v13 = 1;
        }

        else
        {
          v13 = [*(a1 + 40) client:v3 isEntitledToAccessService:v10 forEntitlement:*(a1 + 48) shouldWarn:1];
          v12 = *(*(a1 + 56) + 8);
        }

        *(v12 + 24) = v13;
      }

      if (*(*(*(a1 + 56) + 8) + 24))
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_1004AFDCC()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"enable-pseudonym-aliases"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_1004AFE5C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a4;
  v10 = a2;
  v11 = [v7 listenerRemoteObjectForLocalObject:v8];
  [v11 finishedProvisioningPseudonym:v10 success:a3 error:v9 forRequestUUID:a1[6]];
}

void sub_1004B0398(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a4;
  v10 = a2;
  v11 = [v7 listenerRemoteObjectForLocalObject:v8];
  [v11 finishedRenewingPseudonym:v10 success:a3 error:v9 requestUUID:a1[6]];
}

void sub_1004B08B0(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = [v5 listenerRemoteObjectForLocalObject:v6];
  [v8 finishedRevokingPseudonymWithSuccess:a2 error:v7 requestUUID:a1[6]];
}

void sub_1004B0CA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = IDSServiceReportingErrorDomain;
    v9 = NSUnderlyingErrorKey;
    v10 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:v5 code:200 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) listenerRemoteObjectForLocalObject:*(a1 + 40)];
  [v8 finishedReportingRequestUUID:*(a1 + 48) withError:v7];
}

void sub_1004B0EE0(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 registerAccount];
}

void sub_1004B10F0(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 unregisterAccount];
}

void sub_1004B15AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uniqueID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v6, 0xCu);
  }

  [v3 _reregisterAndReidentify:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
}

void sub_1004B17CC(id a1, id a2)
{
  v2 = a2;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 uniqueID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling out to linked account: %@", &v5, 0xCu);
  }

  [v2 deactivateAndPurgeIdentify];
}

void sub_1004B1F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 32));
  _Unwind_Resume(a1);
}

void sub_1004B1FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"YES";
      if (!v3)
      {
        v12 = @"NO";
      }

      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got called to checkpoint Registration Account Status Metric run state with non null activity %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = @"YES";
      if (!v3)
      {
        v13 = @"NO";
      }

      v14 = v13;
      _IDSLogV();
    }

    [WeakRetained _submitRegistrationAccountStatusMetric];
  }

  else if (!state)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"YES";
      if (!v3)
      {
        v7 = @"NO";
      }

      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to Check In for Registration Account Status Metric with activity %@ ", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, 43200);
    v9 = xpc_activity_copy_criteria(v3);
    v10 = v9;
    if (!v9 || !xpc_equal(v9, v8))
    {
      xpc_activity_set_criteria(v3, v8);
    }
  }
}

void sub_1004B23D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 32));
  _Unwind_Resume(a1);
}

void sub_1004B240C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"YES";
      if (!v3)
      {
        v12 = @"NO";
      }

      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got called to checkpoint Registration Event Tracker Cleanup run state with non null activity %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = @"YES";
      if (!v3)
      {
        v13 = @"NO";
      }

      v14 = v13;
      _IDSLogV();
    }

    v8 = [WeakRetained persistenceManager];
    [v8 cleanupOldRegistrationEvents];
    goto LABEL_24;
  }

  if (!state)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"YES";
      if (!v3)
      {
        v7 = @"NO";
      }

      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to Check In for Registration Event Tracker Cleanup with activity %@ ", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
    v9 = xpc_activity_copy_criteria(v3);
    v10 = v9;
    if (!v9 || !xpc_equal(v9, v8))
    {
      xpc_activity_set_criteria(v3, v8);
    }

LABEL_24:
  }
}

void sub_1004B2844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 32));
  _Unwind_Resume(a1);
}

void sub_1004B2880(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"YES";
      if (!v3)
      {
        v13 = @"NO";
      }

      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Got called to checkpoint Sender Key Cleanup run state with non null activity %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v14 = @"YES";
      if (!v3)
      {
        v14 = @"NO";
      }

      v15 = v14;
      _IDSLogV();
    }

    v8 = [WeakRetained persistenceManager];
    [v8 cleanupInvalidSenderKeyEntriesWithCompletion:&stru_100BDE068];
    goto LABEL_24;
  }

  if (!state)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"YES";
      if (!v3)
      {
        v7 = @"NO";
      }

      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to Check In for Sender Key Cleanup with activity %@ ", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    +[IDSSenderKeyDistributionManager cleanupKeysTimeInterval];
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, v9);
    v10 = xpc_activity_copy_criteria(v3);
    v11 = v10;
    if (!v10 || !xpc_equal(v10, v8))
    {
      xpc_activity_set_criteria(v3, v8);
    }

LABEL_24:
  }
}

void sub_1004B2C58(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"YES";
      if (!v2)
      {
        v11 = @"NO";
      }

      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Got called to checkpoint Query DB cleanup run state with non null activity %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = @"YES";
      if (!v2)
      {
        v12 = @"NO";
      }

      v13 = v12;
      _IDSLogV();
    }

    v6 = +[IDSPeerIDManager sharedInstance];
    [v6 performCleanupTasks];
    goto LABEL_24;
  }

  if (!state)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"YES";
      if (!v2)
      {
        v5 = @"NO";
      }

      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Told to Check In for Query DB cleanup with activity %@ ", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    +[IDSQuerySDPersistenceManager dbCleanupTimeInterval];
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, v7);
    v8 = xpc_activity_copy_criteria(v2);
    v9 = v8;
    if (!v8 || !xpc_equal(v8, v6))
    {
      xpc_activity_set_criteria(v2, v6);
    }

LABEL_24:
  }
}

void sub_1004B353C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1004B3488);
  }

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(exc_buf);
}

id sub_1004B359C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) client:a2 isEntitledToAccessService:0 forEntitlement:kIDSStateResetEntitlement shouldWarn:1];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1004B39B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) client:? isEntitledToAccessService:? forEntitlement:? shouldWarn:?] && (!objc_msgSend(*(a1 + 40), "count") || objc_msgSend(*(a1 + 32), "client:isEntitledToAccessService:forEntitlement:shouldWarn:", v3, 0, kIDSPreferInfraWiFiEntitlement, 1)))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_1004B3D24(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) client:? isEntitledToAccessService:? forEntitlement:? shouldWarn:?] && (!objc_msgSend(*(a1 + 40), "count") || objc_msgSend(*(a1 + 32), "client:isEntitledToAccessService:forEntitlement:shouldWarn:", v3, 0, kIDSPreferInfraWiFiEntitlement, 1)))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_1004B4F24(id a1, NSString *a2, NSString *a3, NSString *a4, BOOL a5)
{
  v5 = a5;
  v6 = [IMRGLog registration:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished setting password {success: %@}", &v8, 0xCu);
  }
}

id sub_1004B58DC(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) client:a2 isEntitledToAccessService:*(a1 + 40) forEntitlement:kIDSDeviceUUIDEntitlement shouldWarn:1];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

void sub_1004B592C(id a1)
{
  v1 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Sending continuity reset to IDS clients", v3, 2u);
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

  v2 = +[IDSWPLinkManager sharedInstance];
  [v2 sendReset];
}

void sub_1004B5DFC(id a1)
{
  v1 = +[IMRGLog registration];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "   => posting deferred device update", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[IDSDAccountController sharedInstance];
  v3 = [v2 enabledAccounts];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[IDSDAccountController sharedInstance];
        v10 = [v9 accountWithUniqueID:v8];

        if (v10)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_1004B5FEC;
          v11[3] = &unk_100BDB478;
          v12 = v10;
          [v12 _broadcastAccountMessageBlock:v11];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }
}

void sub_1004B5FEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSDaemon sharedInstance];
  v5 = [v3 service];
  v6 = [v5 pushTopic];
  v7 = [v4 broadcasterForTopic:v6 ignoreServiceListener:1 messageContext:0];

  v8 = [v3 dependentRegistrations];
  if (![v8 count])
  {
    v9 = [*(a1 + 32) dependentRegistrations];
    v10 = [v9 count];

    if (v10)
    {
      v11 = +[IMRGLog warning];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100922124();
      }
    }
  }

  v12 = [v3 uniqueID];
  [v7 account:v12 dependentDevicesUpdated:v8];
}

uint64_t sub_1004B67B0(void *a1)
{
  if ([a1 isGuest])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void sub_1004B68D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555915];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [v3 setSessionProtocolVersionNumber:{objc_msgSend(*(a1 + 48), "unsignedIntValue")}];
    [v3 setServiceName:*(a1 + 56)];
    [v3 setClientType:*(a1 + 64)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B6A64(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555916];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [v3 setNumberOfRecipients:{objc_msgSend(*(a1 + 48), "intValue")}];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B6BAC(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555917];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B6D14(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555918];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [v3 setNumberOfRecipients:{objc_msgSend(*(a1 + 48), "intValue")}];
    [v3 setRemoteSessionEndReason:*(a1 + 56)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B6E68(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555919];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B6F9C(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555927];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B70D0(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555928];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B7204(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555920];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B7338(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555921];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B746C(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555922];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B75A0(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555923];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B76D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555924];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B7808(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2555925];
  if (v2)
  {
    v4 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v4];

    v2 = v4;
  }
}

void sub_1004B7AB0(uint64_t a1)
{
  v4 = [*(a1 + 32) _metricContainerForMetricType:2555926];
  if (v4)
  {
    v8 = v4;
    v5 = objc_alloc_init(IMWeakLinkClass());
    [*(a1 + 40) floatValue];
    LODWORD(v1) = vcvtas_u32_f32(v6 * 1000.0);
    [*(a1 + 48) floatValue];
    LODWORD(v2) = vcvtas_u32_f32(v7 * 1000.0);
    [v5 setGuid:*(a1 + 56)];
    [v5 setSessionProtocolVersionNumber:{objc_msgSend(*(a1 + 64), "unsignedIntValue")}];
    [v5 setServiceName:*(a1 + 72)];
    [v5 setClientType:*(a1 + 80)];
    [v5 setIsQREnabled:*(a1 + 120)];
    [v5 setIsUsingQRDirectly:*(a1 + 121)];
    [v5 setIsInitiator:*(a1 + 122)];
    [v5 setIsLegacySessionType:*(a1 + 123)];
    [v5 setIsWithDefaultPairedDevice:*(a1 + 124)];
    [v5 setTransportType:*(a1 + 88)];
    [v5 setLinkType:*(a1 + 96)];
    [v5 setLinkProtocol:*(a1 + 104)];
    [v5 setEndedReason:*(a1 + 112)];
    [v5 setDurationOfSession:v1];
    [v5 setDurationToConnect:v2];
    [v5 setIsNetworkEnabled:*(a1 + 125)];
    [v5 setIsNetworkActive:*(a1 + 126)];
    [v5 setIsNetworkReachable:*(a1 + 127)];
    [v5 setIsWifiInterfaceDisallowed:*(a1 + 128)];
    [v5 setIsCellularInterfaceDisallowed:*(a1 + 129)];
    [v5 setDestinationType:*(a1 + 116)];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v5 withContainer:v8];

    v4 = v8;
  }
}

void sub_1004B7F08(uint64_t a1)
{
  v2 = [*(a1 + 32) _metricContainerForMetricType:2588679];
  if (v2)
  {
    v6 = v2;
    v3 = objc_alloc_init(IMWeakLinkClass());
    [v3 setGuid:*(a1 + 40)];
    [v3 setEndedReason:*(a1 + 120)];
    [v3 setGenericError:*(a1 + 124)];
    [v3 setGameKitError:*(a1 + 128)];
    [v3 setConferenceMiscError:*(a1 + 132)];
    [*(a1 + 48) doubleValue];
    IDSAWDLogFuzzTimeTo10sSecondsForHotShip();
    [v3 setCallDuration:v4];
    [v3 setIsNetworkEnabled:*(a1 + 152)];
    [v3 setIsNetworkActive:*(a1 + 153)];
    [v3 setIsNetworkReachable:*(a1 + 154)];
    [v3 setNetworkCheckResult:*(a1 + 136)];
    [*(a1 + 56) unsignedIntValue];
    IDSAWDLogGenerateDataRate();
    [v3 setDataRate:v5];
    [v3 setGksError:{objc_msgSend(*(a1 + 64), "unsignedIntValue")}];
    [v3 setConnectDuration:{objc_msgSend(*(a1 + 72), "unsignedIntValue")}];
    [v3 setRemoteNetworkConnection:*(a1 + 140)];
    [v3 setLocalNetworkConnection:*(a1 + 144)];
    [v3 setConnectionType:*(a1 + 148)];
    [v3 setUsesRelay:*(a1 + 155)];
    [v3 setCurrentNatType:{objc_msgSend(*(a1 + 80), "unsignedIntValue")}];
    [v3 setRemoteNatType:{objc_msgSend(*(a1 + 88), "unsignedIntValue")}];
    [v3 setRemoteNetworkConnection:{objc_msgSend(*(a1 + 88), "unsignedIntValue")}];
    [v3 setRelayConnectDuration:{objc_msgSend(*(a1 + 96), "unsignedIntValue")}];
    [v3 setIsInitiator:*(a1 + 156)];
    [v3 setLinkQuality:{objc_msgSend(*(a1 + 104), "intValue")}];
    [v3 setGksReturnCode:{objc_msgSend(*(a1 + 112), "intValue")}];
    [*(a1 + 32) _submitIDSSessionAWDMetric:v3 withContainer:v6];

    v2 = v6;
  }
}

void sub_1004B8104(id a1)
{
  v1 = objc_alloc_init(IDSDeliveryController);
  v2 = qword_100CBD598;
  qword_100CBD598 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004B8628(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1004B864C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  v15 = objc_loadWeakRetained((a1 + 32));
  v11 = [v8 pushToken];

  v12 = [v9 prefixedURI];

  v13 = [v15 _tokenURIForToken:v11 uri:v12];

  v14 = [IDSDeliveryController tokenURINegativeCacheItemForTokenURI:v13 service:v10];

  if (v14)
  {
    [v15[4] clearItem:v14];
  }
}

uint64_t sub_1004B89C0(uint64_t a1)
{
  v2 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  v3 = [v2 isConnected];

  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) count];
      *buf = 134217984;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Push is still connected - replaying %lu offline message sends.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v21 = [*(a1 + 32) count];
      _IDSLogV();
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          (*(v12 + 16))(v12);
          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*v6 count];
      *buf = 134217984;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Done replaying %lu offline message sends.", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) count];
      *buf = 134217984;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Push is NOT still connected - readding %lu offline message sends.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v21 = [*(a1 + 32) count];
      _IDSLogV();
    }

    if ([*(*(a1 + 40) + 24) count])
    {
      [*(a1 + 32) addObjectsFromArray:*(*(a1 + 40) + 24)];
    }

    objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(*(a1 + 40) + 24) count];
      *buf = 134217984;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Total offline message sends enqueued: %lu.", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog();
      if (result)
      {
        v6 = (*(a1 + 40) + 24);
LABEL_31:
        [*v6 count];
        return _IDSLogV();
      }
    }
  }

  return result;
}

void sub_1004B8DC4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1004B8BD8);
  }

  _Unwind_Resume(a1);
}

void sub_1004B97E4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1004B93BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1004B9CEC(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "  Finished sending message: %@  to accessory: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = a1[4];
    v14 = a1[5];
    _IDSLogV();
  }

  v7 = [v3 deliveryError];

  if (v7)
  {
    v8 = [v3 deliveryError];
    v9 = [NSDictionary dictionaryWithObjectsAndKeys:v8, NSUnderlyingErrorKey, 0];

    v10 = [NSError alloc];
    v11 = [v10 initWithDomain:IDSSendErrorDomain code:21 userInfo:v9];
    [v3 setIdsResponseCode:21];
    [v3 setResponseError:v11];
    v12 = a1[6];
    if (v12)
    {
      (*(v12 + 16))(v12, v3);
    }
  }

  else if (a1[6])
  {
    [v3 setIdsResponseCode:0];
    (*(a1[6] + 16))();
  }
}

void sub_1004BBD58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1004BBA14);
  }

  _Unwind_Resume(a1);
}

void sub_1004BBD7C(uint64_t a1, void *a2, void *a3, const __CFString *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(__CFString *)v12 targetToken];
      *buf = 138412546;
      v57 = v12;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "    Delivered FTMessage: %@ to token: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [(__CFString *)v12 targetToken];
      v55 = v54 = v12;
      _IDSLogV();
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "    Delivered FTMessage: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v54 = v12;
      _IDSLogV();
    }
  }

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v57 = a4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "                  Result code: %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v54 = a4;
    _IDSLogV();
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    *buf = 138412290;
    v57 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "                        To ID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v54 = *(a1 + 32);
    _IDSLogV();
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    *buf = 138412290;
    v57 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "                      From ID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v54 = *(a1 + 40);
    _IDSLogV();
  }

  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "            Result dictionary: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v54 = v11;
    _IDSLogV();
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "                        Error: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v54 = v10;
    _IDSLogV();
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(__CFString *)v12 wantsDeliveryStatus];
    v25 = [v24 intValue];
    v26 = @"YES";
    if (!v25)
    {
      v26 = @"NO";
    }

    *buf = 138412290;
    v57 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "    Requested Delivery Status: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = [(__CFString *)v12 wantsDeliveryStatus];
    v28 = [v27 intValue];
    v29 = @"YES";
    if (!v28)
    {
      v29 = @"NO";
    }

    v54 = v29;
    _IDSLogV();
  }

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(__CFString *)v12 wantsCertifiedDelivery];
    v32 = @"NO";
    if (v31)
    {
      v32 = @"YES";
    }

    *buf = 138412290;
    v57 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " Requested Certified Delivery: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = [(__CFString *)v12 wantsCertifiedDelivery];
    v34 = @"NO";
    if (v33)
    {
      v34 = @"YES";
    }

    v54 = v34;
    _IDSLogV();
  }

  v35 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [(__CFString *)v12 messageBodyUsingCache];
    v37 = [(__CFString *)v12 service];
    v38 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138412290;
    v57 = v38;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "                 Message Body: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v39 = [(__CFString *)v12 messageBodyUsingCache];
    v40 = [(__CFString *)v12 service];
    v54 = IDSLoggableDescriptionForObjectOnService();
    _IDSLogV();
  }

  v41 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Sending callback for FTMessage send", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v42 = *(a1 + 32);
  if (v42)
  {
    [*(a1 + 48) _processMessageResponse:v12 error:v10 resultCode:a4 toURI:v42 fromURI:*(a1 + 40) service:*(a1 + 56) fromIdentity:*(a1 + 64)];
  }

  v43 = 0;
  if (a4 >= 2 && (a4 - 1002) >= 2)
  {
    v43 = 2;
  }

  if (*(a1 + 80))
  {
    v44 = [(__CFString *)v11 objectForKey:@"D"];

    if (v44)
    {
      v45 = [(__CFString *)v11 objectForKey:@"D"];
      v46 = [v45 BOOLValue];

      v47 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = @"NO";
        if (v46)
        {
          v48 = @"YES";
        }

        *buf = 138412290;
        v57 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Was accessory online?: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v49 = @"NO";
        if (v46)
        {
          v49 = @"YES";
        }

        v54 = v49;
        _IDSLogV();
      }

      if (v46)
      {
        v44 = 0;
      }

      else
      {
        v50 = [NSDictionary dictionaryWithObjectsAndKeys:v10, NSUnderlyingErrorKey, 0];
        v44 = [NSError errorWithDomain:IDSSendErrorDomain code:21 userInfo:v50];
      }
    }

    if (v10)
    {
      v51 = [NSDictionary dictionaryWithObjectsAndKeys:v10, NSUnderlyingErrorKey, 0];
      v52 = [NSError errorWithDomain:IDSSendErrorDomain code:v43 userInfo:v51];

      v44 = v52;
    }

    v53 = [[IDSDeliveryContext alloc] initWithResponseCode:v43 error:v44 lastCall:1];
    [v53 setDisplayURIs:*(a1 + 72)];
    (*(*(a1 + 80) + 16))(*(a1 + 80), v53);
  }

  [*(a1 + 48) _checkFastDormancy];
}

void sub_1004BD0D4(uint64_t a1, void *a2, void *a3, const __CFString *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(__CFString *)v12 targetToken];
      *buf = 138412546;
      v51 = v12;
      v52 = 2112;
      v53 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "    Delivered FTMessage: %@ to token: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [(__CFString *)v12 targetToken];
      v49 = v48 = v12;
      _IDSLogV();
    }
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "    Delivered FTMessage: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v48 = v12;
      _IDSLogV();
    }
  }

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v51 = a4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "                  Result code: %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v48 = a4;
    _IDSLogV();
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    *buf = 138412290;
    v51 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "              To Destinations: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v48 = *(a1 + 32);
    _IDSLogV();
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    *buf = 138412290;
    v51 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "                      From ID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v48 = *(a1 + 40);
    _IDSLogV();
  }

  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "            Result dictionary: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v48 = v11;
    _IDSLogV();
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "                        Error: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v48 = v10;
    _IDSLogV();
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(__CFString *)v12 wantsDeliveryStatus];
    v25 = [v24 intValue];
    v26 = @"YES";
    if (!v25)
    {
      v26 = @"NO";
    }

    *buf = 138412290;
    v51 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "    Requested Delivery Status: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = [(__CFString *)v12 wantsDeliveryStatus];
    v28 = [v27 intValue];
    v29 = @"YES";
    if (!v28)
    {
      v29 = @"NO";
    }

    v48 = v29;
    _IDSLogV();
  }

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(__CFString *)v12 wantsCertifiedDelivery];
    v32 = @"NO";
    if (v31)
    {
      v32 = @"YES";
    }

    *buf = 138412290;
    v51 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " Requested Certified Delivery: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = [(__CFString *)v12 wantsCertifiedDelivery];
    v34 = @"NO";
    if (v33)
    {
      v34 = @"YES";
    }

    v48 = v34;
    _IDSLogV();
  }

  v35 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [(__CFString *)v12 messageBodyUsingCache];
    v37 = [(__CFString *)v12 service];
    v38 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138412290;
    v51 = v38;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "                 Message Body: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v39 = [(__CFString *)v12 messageBodyUsingCache];
    v40 = [(__CFString *)v12 service];
    v48 = IDSLoggableDescriptionForObjectOnService();
    _IDSLogV();
  }

  v41 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Sending callback for FTMessage send", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v42 = 0;
  if (a4 >= 2 && (a4 - 1002) >= 2)
  {
    v42 = 2;
  }

  if (*(a1 + 64))
  {
    if (v10)
    {
      v43 = [NSDictionary dictionaryWithObjectsAndKeys:v10, NSUnderlyingErrorKey, 0];
      v44 = [NSError errorWithDomain:IDSSendErrorDomain code:v42 userInfo:v43];
    }

    else
    {
      v44 = 0;
    }

    v45 = [[IDSDeliveryContext alloc] initWithResponseCode:v42 error:v44 lastCall:1];
    [v45 setDisplayURIs:*(a1 + 48)];
    v46 = [(__CFString *)v11 _numberForKey:@"e"];

    if (v46)
    {
      v47 = [(__CFString *)v11 _numberForKey:@"e"];
      [v45 setResponseTimeStamp:v47];
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      [v45 setEndpointState:&off_100C3C7D8];
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), v45);
  }

  [*(a1 + 56) _checkFastDormancy];
}

void sub_1004BDAC0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x1004BD1D4);
  }

  _Unwind_Resume(a1);
}

void sub_1004BE224(id a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v9 = a2;
    v10 = 2048;
    v11 = a3;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Send attachment message progress updated to %lld of %lld (%lld bps)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_1004BE350(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v58 = a2;
  v61 = a4;
  v56 = a5;
  value = a6;
  v59 = a7;
  v62 = a8;
  v57 = a9;
  if (a3)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v58;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Succeeded uploading file transfer: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v46 = v58;
      _IDSLogV();
    }

    theDict = objc_alloc_init(NSMutableDictionary);
    if (value)
    {
      CFDictionarySetValue(theDict, @"mmcs-owner", value);
    }

    if (v62)
    {
      CFDictionarySetValue(theDict, @"mmcs-url", v62);
    }

    v18 = [v59 __imHexString];
    if (v18)
    {
      CFDictionarySetValue(theDict, @"mmcs-signature-hex", v18);
    }

    v19 = objc_alloc_init(NSMutableDictionary);
    v20 = *(a1 + 32);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1004BEB24;
    v72[3] = &unk_100BD95F8;
    v63 = v19;
    v73 = v63;
    [v20 enumerateKeysAndObjectsUsingBlock:v72];
    v21 = [NSNumber numberWithInteger:104];
    if (v21)
    {
      CFDictionarySetValue(v63, IDSCommandKey, v21);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009221AC();
    }

    v36 = *(a1 + 40);
    if (v36)
    {
      CFDictionarySetValue(v63, IDSOriginalCommandKey, v36);
    }

    v37 = [NSNumber numberWithUnsignedInteger:a10];
    if (v37)
    {
      CFDictionarySetValue(v63, IDSDataLengthKey, v37);
    }

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1004BEB30;
    v68[3] = &unk_100BDE2D8;
    v69 = *(a1 + 48);
    v71 = *(a1 + 136);
    v70 = *(a1 + 56);
    v55 = objc_retainBlock(v68);
    v54 = *(a1 + 64);
    v38 = JWEncodeDictionary();
    v52 = *(a1 + 152);
    v39 = *(a1 + 80);
    v53 = *(a1 + 72);
    v40 = *(a1 + 48);
    v42 = *(a1 + 88);
    v41 = *(a1 + 96);
    v43 = *(a1 + 104);
    v44 = [*(a1 + 64) _tokenURIForToken:*(a1 + 112) uri:v43];
    v45 = IMSingleObjectArray();
    LOBYTE(v51) = 0;
    LOWORD(v50) = 0;
    BYTE2(v49) = 0;
    LOWORD(v49) = 0;
    LOBYTE(v48) = v39 != 0;
    LODWORD(v47) = 0x10000;
    [v54 _sendMessageDictionary:v63 lastRetryInterval:v38 dataToEncrypt:0 withEncryptedAttributes:v53 onService:0 wantsResponse:v52 & 1 canUseLargePayload:0.0 sendOnePerToken:v47 allowPartialSendsToSucceed:v39 highPriority:v48 fireAndForget:v40 expirationDate:v42 enforceRemoteTimeouts:0 messageID:v41 fromID:v43 fromShortHandle:v45 fromIdentity:0 toID:*(a1 + 120) toURIs:0 accessToken:v49 topic:0 registrationProperties:0 fakeMessage:v50 alwaysSkipSelf:0 alwaysIncludeSelf:0 forceQuery:v51 pushPriority:*(a1 + 128) ignoreMaxRetryCount:0 disallowRefresh:0 originalTimestamp:0 prioritizedTokenList:0 wantsFirewallDonation:0 destinationObject:0 deliveryMinimumTimeDelay:*(a1 + 144) deliveryMinimumTime:0 sendMode:v55 KTURIVerificationMap:? sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];

    v35 = &v73;
    v33 = v69;
  }

  else
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 56);
      *buf = 138412290;
      v75 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed uploading attachment file transfer: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v46 = *(a1 + 56);
      _IDSLogV();
    }

    theDict = objc_alloc_init(NSMutableDictionary);
    if (v62)
    {
      CFDictionarySetValue(theDict, @"url", v62);
    }

    v24 = [v61 domain];
    if (v24)
    {
      CFDictionarySetValue(theDict, @"eD", v24);
    }

    v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v61 code]);
    if (v25)
    {
      CFDictionarySetValue(theDict, @"eC", v25);
    }

    v26 = [NSNumber numberWithInteger:a10];
    if (v26)
    {
      CFDictionarySetValue(theDict, @"fS", v26);
    }

    v63 = [[IDSServerMessage alloc] initWithPayload:theDict command:&off_100C3C7F0];
    v27 = *(a1 + 64);
    v28 = *(a1 + 120);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1004BED48;
    v66[3] = &unk_100BD9D10;
    v67 = v28;
    [v27 sendIDSMessage:v63 service:0 topic:v67 completionBlock:v66];
    if (*(a1 + 136))
    {
      v29 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Failed uploading attachment file transfer", NSLocalizedDescriptionKey, 0}];
      v30 = [NSError alloc];
      v31 = [v30 initWithDomain:IDSSendErrorDomain code:4 userInfo:v29];
      v32 = [[IDSDeliveryContext alloc] initWithResponseCode:objc_msgSend(v31 error:"code") lastCall:{v31, 1}];
      (*(*(a1 + 136) + 16))();
    }

    v33 = +[NSFileManager defaultManager];
    v34 = *(a1 + 56);
    v65 = 0;
    [v33 removeItemAtPath:v34 error:&v65];
    v35 = &v67;
  }
}

void sub_1004BEB30(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCall];
    v9 = @"NO";
    *buf = 138413058;
    v24 = v5;
    v25 = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished sending attachment message %@. Result code: %ld. Error: %@   lastCall: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = a1[4];
    v11 = [v3 idsResponseCode];
    v12 = [v3 responseError];
    v13 = [v3 lastCall];
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    v20 = v12;
    v21 = v14;
    v18 = v10;
    v19 = v11;
    _IDSLogV();
  }

  v15 = a1[6];
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  v16 = [NSFileManager defaultManager:v18];
  v17 = a1[5];
  v22 = 0;
  [v16 removeItemAtPath:v17 error:&v22];
}

void sub_1004BED48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseCode];
    v8 = [v3 lastCall];
    v9 = @"NO";
    *buf = 138413058;
    v11 = v5;
    v12 = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update for uploadFailure message: topic %@  response %ld  error %ld lastCall %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v3 idsResponseCode];
    [v3 responseCode];
    [v3 lastCall];
    _IDSLogV();
  }
}

void sub_1004C0584(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x1004BFFFCLL);
  }

  os_activity_scope_leave(&STACK[0x2F8]);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1004C0724(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (*(a1 + 56))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = *(a1 + 48);
    v7 = 138413058;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Message: %@ to be sent to people: %@   (have tokens: %@). People to query %@", &v7, 0x2Au);
  }
}

void sub_1004C0810(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7, void *a8, char a9, void *a10)
{
  v95 = a2;
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v101 = a7;
  v100 = a8;
  v99 = a10;
  v102 = *(a1 + 32);
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (a6)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v20 = *(a1 + 192);
    if (a9)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138412802;
    v132 = v19;
    v133 = 2112;
    v134 = v21;
    if (v20)
    {
      v18 = @"YES";
    }

    v135 = 2112;
    v136 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Query completed: success %@  offline %@  allowPartialSendsToSucceed %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v22 = @"NO";
    if (a6)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if (a9)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    if (*(a1 + 192))
    {
      v22 = @"YES";
    }

    v87 = v24;
    v89 = v22;
    v85 = v23;
    _IDSLogV();
  }

  v25 = [*(a1 + 40) expirationDate];
  if (v25)
  {
    v26 = [*(a1 + 40) expirationDate];
    [v26 timeIntervalSinceNow];
    v28 = v27 < -5.0;

    if (v28)
    {
      v29 = *(a1 + 160);
      if (v29)
      {
        (*(v29 + 16))(v29, &__NSArray0__struct);
      }

      [*(a1 + 48) _discardMessage:*(a1 + 40) forURIs:*(a1 + 32) service:*(a1 + 56)];
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        *buf = 138412290;
        v132 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Query completed but message for IDs %@ has already expired. Failing.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v32 = [NSError alloc];
      v33 = [v32 initWithDomain:IDSSendErrorDomain code:2 userInfo:0];
      if (*(a1 + 168))
      {
        v34 = [[IDSDeliveryContext alloc] initWithResponseCode:2 error:v33 lastCall:1];
        [v34 setDisplayURIs:v102];
        (*(*(a1 + 168) + 16))(*(a1 + 168));
      }

LABEL_96:
      v52 = v102;
      goto LABEL_97;
    }
  }

  [*(a1 + 40) timeout];
  v36 = v35 <= 300.0;
  [*(a1 + 64) timeIntervalSinceNow];
  v38 = v37;
  [*(a1 + 40) timeout];
  if (!(a6 & 1 | ((a9 & 1) == 0) | v36) && fabs(v38) <= v39)
  {
    v40 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [*(*(a1 + 48) + 24) count];
      *buf = 134217984;
      v132 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Query failed because the device is offline. Enqueuing for the return of networking since we have timeout time left. Number of offline sends enqueued ahead of us: %lu.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [*(*(a1 + 48) + 24) count];
      _IDSLogV();
    }

    v42 = *(a1 + 48);
    if (!*(v42 + 24))
    {
      v43 = objc_alloc_init(NSMutableArray);
      v44 = *(a1 + 48);
      v45 = *(v44 + 24);
      *(v44 + 24) = v43;

      v42 = *(a1 + 48);
    }

    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_1004C1584;
    v108[3] = &unk_100BDE368;
    v108[4] = v42;
    v109 = *(a1 + 40);
    v110 = *(a1 + 72);
    v111 = *(a1 + 80);
    v112 = *(a1 + 56);
    v113 = *(a1 + 88);
    v114 = *(a1 + 96);
    v115 = *(a1 + 104);
    v116 = *(a1 + 112);
    v117 = *(a1 + 32);
    v126 = *(a1 + 193);
    v127 = *(a1 + 192);
    v46 = *(a1 + 120);
    v128 = *(a1 + 195);
    v47 = *(a1 + 184);
    v118 = v46;
    v125 = v47;
    v119 = *(a1 + 128);
    v129 = *(a1 + 199);
    v120 = *(a1 + 136);
    v123 = *(a1 + 176);
    v124 = *(a1 + 168);
    v121 = *(a1 + 64);
    v122 = *(a1 + 144);
    v48 = objc_retainBlock(v108);
    v49 = [v48 copy];

    v50 = *(*(a1 + 48) + 24);
    v51 = objc_retainBlock(v49);
    [v50 addObject:v51];

    goto LABEL_96;
  }

  if ((a6 & 1) == 0)
  {
    if (*(a1 + 192) == 1)
    {
      v103 = objc_alloc_init(NSMutableSet);
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v53 = *(a1 + 32);
      v54 = [v53 countByEnumeratingWithState:&v104 objects:v130 count:16];
      if (v54)
      {
        v55 = *v105;
        do
        {
          for (i = 0; i != v54; i = i + 1)
          {
            if (*v105 != v55)
            {
              objc_enumerationMutation(v53);
            }

            v57 = *(*(&v104 + 1) + 8 * i);
            v58 = [*(a1 + 48) peerIDManager];
            v59 = [IDSURI URIWithPrefixedURI:*(a1 + 88) withServiceLoggingHint:*(a1 + 56)];
            v60 = [v58 hasPeerTokensForURI:v57 fromURI:v59 service:*(a1 + 56)];

            if (v60)
            {
              [(__CFString *)v103 addObject:v57];
            }
          }

          v54 = [v53 countByEnumeratingWithState:&v104 objects:v130 count:16];
        }

        while (v54);
      }

      v61 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v132 = v103;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Found messagable people: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v86 = v103;
        _IDSLogV();
      }

      if (-[__CFString count](v103, "count", v86) > 1 || -[__CFString count](v103, "count") == 1 && (-[__CFString anyObject](v103, "anyObject"), v69 = objc_claimAutoreleasedReturnValue(), [v69 prefixedURI], v70 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend(v70, "isEqualToString:", *(a1 + 88)), v70, v69, (v71 & 1) == 0))
      {
        [*(a1 + 48) _emptyMessagesForURIs:*(a1 + 32) service:*(a1 + 56)];
        v52 = [(__CFString *)v103 allObjects];

        LOBYTE(v94) = *(a1 + 200);
        LOBYTE(v93) = *(a1 + 199);
        LOBYTE(v92) = *(a1 + 198);
        BYTE2(v91) = *(a1 + 197);
        LOWORD(v91) = *(a1 + 195);
        LOWORD(v90) = *(a1 + 193);
        [*(a1 + 48) _queueMessage:*(a1 + 40) service:*(a1 + 56) dataToEncrypt:*(a1 + 72) withEncryptedAttributes:*(a1 + 80) fromID:*(a1 + 88) fromShortHandle:*(a1 + 96) fromIdentity:*(a1 + 104) toID:*(a1 + 112) toURIs:v52 originallyToURIs:*(a1 + 32) ktURIVerificationMap:*(a1 + 144) canUseLargePayload:v90 sendOnePerToken:*(a1 + 120) registrationProperties:v91 fakeMessage:*(a1 + 184) alwaysSkipSelf:v92 alwaysIncludeSelf:*(a1 + 128) forceQuery:v93 disallowRefresh:*(a1 + 136) prioritizedTokenList:*(a1 + 176) wantsFirewallDonation:*(a1 + 168) destinationObject:v94 willSendBlock:? completionBlock:? fromCoalesceQueue:?];

        goto LABEL_63;
      }
    }

    v72 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = *(a1 + 32);
      *buf = 138412546;
      v132 = v73;
      v133 = 2112;
      v134 = v100;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Peer ID manager failed lookup for IDs: %@   (Errors: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v86 = *(a1 + 32);
      v88 = v100;
      _IDSLogV();
    }

    v74 = *(a1 + 160);
    if (v74)
    {
      (*(v74 + 16))(v74, &__NSArray0__struct);
    }

    [*(a1 + 48) _emptyMessagesForURIs:*(a1 + 32) service:{*(a1 + 56), v86, v88}];
    if ([*(a1 + 32) count])
    {
      v75 = [*(a1 + 32) lastObject];
      v76 = [(__CFString *)v100 objectForKey:v75];

      if (v76)
      {
        v77 = [[NSDictionary alloc] initWithObjectsAndKeys:{v76, NSUnderlyingErrorKey, 0}];
      }

      else
      {
        v77 = 0;
      }
    }

    else
    {
      v77 = 0;
      v76 = 0;
    }

    v78 = [NSError alloc];
    v79 = [v78 initWithDomain:IDSSendErrorDomain code:1 userInfo:v77];
    v80 = [v101 responseCode];
    if (v80)
    {
      v81 = [v101 responseCode];
      v82 = [v81 integerValue] == 0;

      if (v82)
      {
        v83 = 1;
      }

      else
      {
        v83 = 44;
      }
    }

    else
    {
      v83 = 1;
    }

    if (*(a1 + 168))
    {
      v84 = [[IDSDeliveryContext alloc] initWithResponseCode:v83 error:v79 lastCall:1];
      [v84 setDisplayURIs:v102];
      (*(*(a1 + 168) + 16))();
    }

    goto LABEL_96;
  }

  v52 = v102;
LABEL_63:
  v62 = *(a1 + 152);
  v63 = [*(a1 + 48) currentServerTime];
  [v63 currentServerTimeInterval];
  v64 = [NSNumber numberWithDouble:?];
  v65 = +[_TtC17identityservicesd27IDSCloudTelemetryMetricKeys outgoingQueryEndKey];
  [v62 addEntry:v64 forKey:v65];

  v66 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = v52;
    if (!v52)
    {
      v67 = *(a1 + 32);
    }

    *buf = 138412290;
    v132 = v67;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Peer ID manager succeeded lookup for IDs: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v68 = v52;
    if (!v52)
    {
      v68 = *(a1 + 32);
    }

    v86 = v68;
    _IDSLogV();
  }

  [*(a1 + 48) _handleMessagesForURIs:v52 originalURIs:*(a1 + 32) service:*(a1 + 56) fromID:*(a1 + 88) fromCoalesceQueue:*(a1 + 200) withQueryCompletion:{*(a1 + 160), v86}];
LABEL_97:
}

id sub_1004C1584(uint64_t a1)
{
  LOBYTE(v6) = 0;
  LOBYTE(v5) = *(a1 + 183);
  LOBYTE(v4) = *(a1 + 182);
  BYTE2(v3) = *(a1 + 181);
  LOWORD(v3) = *(a1 + 179);
  BYTE2(v2) = *(a1 + 178);
  LOWORD(v2) = *(a1 + 176);
  return [*(a1 + 32) _sendMessage:*(a1 + 40) dataToEncrypt:*(a1 + 48) withEncryptedAttributes:*(a1 + 56) onService:*(a1 + 64) fromID:*(a1 + 72) fromShortHandle:*(a1 + 80) fromIdentity:*(a1 + 88) toID:*(a1 + 96) toURIs:*(a1 + 104) canUseLargePayload:v2 sendOnePerToken:*(a1 + 112) allowPartialSendsToSucceed:v3 registrationProperties:*(a1 + 168) fakeMessage:v4 alwaysSkipSelf:*(a1 + 120) alwaysIncludeSelf:v5 forceQuery:*(a1 + 128) disallowRefresh:*(a1 + 152) prioritizedTokenList:*(a1 + 160) wantsFirewallDonation:*(a1 + 136) destinationObject:*(a1 + 144) willSendBlock:v6 completionBlock:&stru_100BDE340 firstAttemptDate:? ktURIVerificationMap:? fromCoalesceQueue:? withQueryCompletion:?];
}

void sub_1004C24A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pushAckTimestamp];
  (*(v2 + 16))(v2, v3);
}

void sub_1004C3014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) setObject:v6 forKey:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  [*(a1 + 40) fulfillWithValue:v11];
}

void sub_1004C313C(void *a1, void *a2)
{
  v3 = [a2 value];
  v4 = +[NSString stringGUID];
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    v8 = v3;
    v9 = 2048;
    v10 = [v3 count];
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pipelines done processing all fanouts %@ count %ld for mmlGUID %@", &v7, 0x20u);
  }

  v6 = [[IDSFanoutSender alloc] initWithGUID:v4 service:a1[4] messageDelivery:*(a1[5] + 8) completionActivity:a1[6] coalesceQueueManager:*(a1[5] + 40)];
  [(IDSFanoutSender *)v6 sendMMLs:a1[7] guidToDeliveryAcknowledgementBlock:a1[8] guidToSendCompletionBlock:a1[9] forService:a1[4] sendMode:a1[10] messageQueue:*(a1[5] + 16)];
}

void sub_1004C334C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v28 = a2;
  v6 = _os_activity_create(&_mh_execute_header, "All sends complete", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v7 = IDSDeliveryMessageKey;
  v8 = [*(a1 + 32) objectForKey:IDSDeliveryMessageKey];
  v9 = [v8 messageID];

  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [*(a1 + 32) objectForKey:v7];
  v13 = [v12 deliveryAcknowledgementBlock];

  v14 = [*(a1 + 32) objectForKey:IDSDeliveryCompletionBlockKey];
  v15 = objc_retainBlock(v13);
  [v10 setObject:v15 forKey:v9];

  v16 = objc_retainBlock(v14);
  [v11 setObject:v16 forKey:v9];

  v29 = v9;
  v30 = v6;
  v17 = [[IDSFanoutSender alloc] initWithGUID:v9 service:*(a1 + 40) messageDelivery:*(*(a1 + 48) + 8) completionActivity:v6 coalesceQueueManager:*(*(a1 + 48) + 40)];
  v31 = v5;
  [(IDSFanoutSender *)v17 sendFanouts:v28 guidToDeliveryAcknowledgementBlock:v10 guidToSendCompletionBlock:v11 forURIs:v5 messageQueue:*(*(a1 + 48) + 16)];

  if (_os_feature_enabled_impl())
  {
    v18 = v13;
    v19 = [*(a1 + 32) objectForKey:v7];
    v20 = objc_opt_class();
    v21 = [v19 messageBody];
    v22 = sub_10001B5D4(v20, v21, IDSCommandKey);

    if ([*(a1 + 40) isEqualToString:IDSServiceNameiMessage] && objc_msgSend(v22, "unsignedIntegerValue") == 100)
    {
      v23 = [IDSURI alloc];
      v24 = [*(a1 + 32) objectForKey:IDSDeliveryFromIDKey];
      v25 = [v23 initWithPrefixedURI:v24];

      v26 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1004C3690;
      block[3] = &unk_100BD6E18;
      block[4] = *(a1 + 48);
      v33 = v31;
      v34 = v25;
      v27 = v25;
      dispatch_async(v26, block);
    }

    v13 = v18;
  }
}

void sub_1004C3690(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 48);
  v4 = a1[6];
  v5 = +[_TtC17identityservicesd23IDSSenderKeySendContext iMessageSend];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004C37F4;
  v12[3] = &unk_100BD9AA8;
  v13 = a1[5];
  v14 = a1[6];
  [v3 generateAndSendKeyIfNeededToURIs:v2 fromURI:v4 context:v5 completion:v12];

  v6 = a1[5];
  v7 = *(a1[4] + 48);
  v8 = a1[6];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004C3954;
  v9[3] = &unk_100BD9AA8;
  v10 = v6;
  v11 = a1[6];
  [v7 sendSelfKeyCheckMessageFor:v10 to:v8 completion:v9];
}

uint64_t sub_1004C37F4(uint64_t a1, int a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did trigger generateAndSendKeyIfNeededToURIs: %@ { toURIs: %@ fromURI: %@ }", buf, 0x20u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      return _IDSLogV();
    }
  }

  return result;
}

uint64_t sub_1004C3954(uint64_t a1, int a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did trigger sendKeyCheckMessageFor: %@ { uris: %@ to: %@ }", buf, 0x20u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      return _IDSLogV();
    }
  }

  return result;
}

void sub_1004C3F80(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Guid %@ full pipeline input: %@", &v5, 0x16u);
  }
}

void sub_1004C403C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl() && IDSCommandIsGroupSessionCommand())
  {
    [*(a1 + 32) integerValue];
    kdebug_trace();
  }

  v4 = &IDSRegistrationControlErrorDomain_ptr;
  if ([v3 state] == 1)
  {
    v5 = [v3 error];
    v6 = [v5 userInfo];
    v7 = [v6 mutableCopy];

    v8 = [v7 objectForKey:@"IDSPipelineParameter"];
    [v7 removeObjectForKey:@"IDSPipelineParameter"];
    v9 = [v8 guid];
    v10 = [v8 endpoints];
    v31 = [v8 usedMMCS];
    v30 = [v5 code];
    v11 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v9;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "GUID %@ Failed with error: %@", buf, 0x16u);
    }

    if ([v5 code] == 4)
    {
      v12 = [v7 objectForKey:@"MMCSUploadErrorKey"];
      if (v12)
      {
        [v7 removeObjectForKey:@"MMCSUploadErrorKey"];
        v13 = [[IDSServerMessage alloc] initWithPayload:v12 command:&off_100C3C7F0];
        v14 = *(a1 + 48);
        v29 = *(a1 + 40);
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1004C44F0;
        v32[3] = &unk_100BD9D10;
        v33 = v9;
        [v29 sendIDSMessage:v13 service:0 topic:v14 completionBlock:v32];
      }
    }

    v15 = [v5 domain];
    v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v15, [v5 code], v7);

    v17 = [[IDSDeliveryContext alloc] initWithResponseCode:objc_msgSend(v16 error:"code") lastCall:{v16, 1}];
    [v17 setDisplayURIs:*(a1 + 56)];
    v18 = *(a1 + 72);
    if (v18)
    {
      (*(v18 + 16))(v18, v17);
    }

    v4 = &IDSRegistrationControlErrorDomain_ptr;
    v19 = v31;
    v20 = v30;
  }

  else
  {
    v21 = [v3 value];
    v22 = *(*(a1 + 88) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v9 = [*(*(*(a1 + 88) + 8) + 40) guid];
    v10 = [*(*(*(a1 + 88) + 8) + 40) endpoints];
    v19 = [*(*(*(a1 + 88) + 8) + 40) usedMMCS];
    v20 = 0;
  }

  v24 = +[NSDate date];
  [*(a1 + 40) sendRTCMetricWithStartDate:*(a1 + 64) endDate:v24 endpointCount:objc_msgSend(v10 usedPipeline:"count") usedMMCS:1 responseCode:{v19, v20}];
  v25 = [v4[240] delivery];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Pipeline done with all fanouts %@", buf, 0xCu);
  }

  v26 = *(a1 + 80);
  v27 = [*(*(*(a1 + 88) + 8) + 40) aggregateMessages];
  v28 = [*(*(*(a1 + 88) + 8) + 40) uris];
  (*(v26 + 16))(v26, v27, v28);
}

void sub_1004C44F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseCode];
    v8 = [v3 lastCall];
    v9 = @"NO";
    v10 = 138413058;
    v11 = v5;
    v12 = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GUID %@ Upload failure metric sent with response: %ld error: %ld lastCall: %@", &v10, 0x2Au);
  }
}

void sub_1004C53DC(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 count])
        {
          [v4 addObjectsFromArray:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) _pipelinesHandleMessagesToCoalesce:v4 forService:*(a1 + 40) sendMode:*(a1 + 48)];
}

void sub_1004C6050(id a1)
{
  v1 = objc_alloc_init(IDSDRegistrationListener);
  v2 = qword_100CBD5A8;
  qword_100CBD5A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004C651C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C6534(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_1004C6E84()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return _IDSIsVirtualMachine();
  }

  return result;
}

void sub_1004C7350(id a1)
{
  v1 = objc_alloc_init(IDSUTunDeliveryController);
  v2 = qword_100CBD5B8;
  qword_100CBD5B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004C7C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = +[NSMutableString string];
  v4 = [*(a1 + 32) _copyPairedDevice];
  v5 = [v4 identifier];
  v6 = [v4 btUUID];
  if ([*(a1 + 32) defaultPeerIsNearby])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([*(a1 + 32) defaultPeerIsConnected])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([*(a1 + 32) isTerminusNearby])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([*(a1 + 32) isTerminusConnected])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v11 appendFormat:@"Device %@ cbuuid %@.  Is IDS nearby? %@ Connected? %@. Is terminus nearby? %@ Connected? %@ ", v5, v6, v7, v8, v9, v10];

  v3[2](v3, v11);
}

uint64_t sub_1004C7D94(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyPairedDevice];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 identifier];
    v5 = [v2 btUUID];
    if ([*(a1 + 32) defaultPeerIsNearby])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if ([*(a1 + 32) defaultPeerIsConnected])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = [*(a1 + 32) isTerminusNearby];
    v9 = [*(a1 + 32) isTerminusConnected];
    if (v8)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *buf = 138413570;
    if (v9)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v26 = v4;
    v27 = 2112;
    v28 = v5;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device %@ cbuuid %@.  Is IDS nearby? %@ Connected? %@. Is terminus nearby? %@ Connected? %@ ", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v12 = [v2 identifier];
    v13 = [v2 btUUID];
    v14 = (a1 + 32);
    if ([*(a1 + 32) defaultPeerIsNearby])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if ([*v14 defaultPeerIsConnected])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    if ([*v14 isTerminusNearby])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if ([*v14 isTerminusConnected])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v24 = v18;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      v19 = [v2 identifier];
      v20 = [v2 btUUID];
      v22 = *(a1 + 32);
      v21 = (a1 + 32);
      [v22 defaultPeerIsNearby];
      [*v21 defaultPeerIsConnected];
      [*v21 isTerminusNearby];
      [*v21 isTerminusConnected];
      _IDSLogV();
    }
  }

  return 0;
}

void sub_1004C9F68(uint64_t a1)
{
  v57 = [*(a1 + 32) hashForString:*(a1 + 40)];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v86 = _os_activity_create(&_mh_execute_header, "UTUN sendData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v86, &state);
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    *buf = 138412546;
    v88 = v3;
    v89 = 2112;
    *v90 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "OUTGOING-UTUN_DELIVERY:%@ SERVICE:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v48 = *(a1 + 48);
    v49 = *(a1 + 40);
    _IDSLogV();
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 192);
    v7 = @"Sync";
    if (v6 == 200)
    {
      v7 = @"Default";
    }

    if (v6 == 300)
    {
      v8 = @"URGENT";
    }

    else
    {
      v8 = v7;
    }

    v54 = v8;
    v52 = [*(a1 + 56) length];
    v9 = [*(a1 + 64) data];
    v10 = [v9 length];
    if (*(a1 + 212))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 88) count]);
    *buf = 138545410;
    v88 = v54;
    v89 = 1024;
    *v90 = v10 + v52;
    *&v90[4] = 2114;
    *&v90[6] = v13;
    v91 = 2112;
    v92 = v14;
    v93 = 2112;
    v94 = v11;
    v95 = 2114;
    v96 = v12;
    v97 = 2114;
    v98 = v57;
    v99 = 2112;
    v100 = v15;
    v101 = 2114;
    v102 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "UTUN request to send %{public}@ priority local message payload of data size: %d  guid: %{public}@  expirationDate %@ enforceRemoteTimeout %@ for topic: %{public}@:%{public}@ and command %@ to deviceIDs (count: %{public}@)", buf, 0x58u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v17 = *(a1 + 192);
    v18 = @"Sync";
    if (v17 == 200)
    {
      v18 = @"Default";
    }

    if (v17 == 300)
    {
      v19 = @"URGENT";
    }

    else
    {
      v19 = v18;
    }

    v55 = v19;
    v20 = [*(a1 + 56) length];
    v21 = [*(a1 + 64) data];
    v22 = [v21 length];
    if (*(a1 + 212))
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v25 = *(a1 + 40);
    v24 = *(a1 + 48);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v50 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 88) count]);
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      [*(a1 + 56) length];
      v28 = [*(a1 + 64) data];
      [v28 length];
      v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 88) count]);
      _IDSLogV();
    }
  }

  v29 = objc_alloc_init(NSMutableSet);
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1004CA88C;
  v60[3] = &unk_100BDE600;
  v60[4] = *(a1 + 32);
  v30 = *(a1 + 88);
  v61 = *(a1 + 96);
  v76 = *(a1 + 168);
  v31 = v29;
  v62 = v31;
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v34 = *(a1 + 104);
  v35 = *(a1 + 112);
  *&v36 = v34;
  *(&v36 + 1) = v35;
  *&v37 = v32;
  *(&v37 + 1) = v33;
  v63 = v37;
  v64 = v36;
  v65 = *(a1 + 48);
  v38 = *(a1 + 72);
  v82 = *(a1 + 212);
  v39 = *(a1 + 192);
  v66 = v38;
  v79 = v39;
  v81 = *(a1 + 208);
  v56 = *(a1 + 213);
  v53 = *(a1 + 217);
  v67 = *(a1 + 120);
  v40 = v57;
  v68 = v40;
  v69 = *(a1 + 80);
  v70 = *(a1 + 40);
  v71 = *(a1 + 128);
  v72 = *(a1 + 136);
  v77 = *(a1 + 176);
  v78 = *(a1 + 184);
  v73 = *(a1 + 144);
  LODWORD(v41) = v56;
  WORD2(v41) = v53;
  HIWORD(v41) = *(a1 + 219);
  v83 = v41;
  v84 = *(a1 + 221);
  v74 = *(a1 + 152);
  v42 = *(a1 + 160);
  v43 = *(a1 + 200);
  v75 = v42;
  v80 = v43;
  [v30 enumerateKeysAndObjectsUsingBlock:v60];
  if (![v31 count])
  {
    v44 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 88);
      v46 = *(*(a1 + 32) + 72);
      *buf = 138412546;
      v88 = v45;
      v89 = 2112;
      *v90 = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Unable to find peer for deviceIDs %@ failing the message.  (Peers: %@)", buf, 0x16u);
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

    v47 = *(a1 + 88);
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1004CAF3C;
    v58[3] = &unk_100BDE628;
    v59 = *(a1 + 168);
    [v47 enumerateKeysAndObjectsUsingBlock:v58];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

void sub_1004CA88C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKey:IDSDevicePairedDeviceID];
  if (![v7 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID] || (v8 = objc_msgSend(*(a1 + 32), "_copyPairedDevice"), v8, v8))
  {
    v9 = [*(a1 + 32) _createPeerFromDeviceInfo:v6];
    if (v9)
    {
      if (![*(a1 + 48) containsObject:v7])
      {
        v12 = [*(a1 + 32) _nextMessageID];
        v13 = objc_alloc_init(IDSLocalDeliveryMessage);
        [(IDSLocalDeliveryMessage *)v13 setPayload:*(a1 + 56)];
        [(IDSLocalDeliveryMessage *)v13 setProtobuf:*(a1 + 64)];
        [(IDSLocalDeliveryMessage *)v13 setResourcePath:*(a1 + 72)];
        [(IDSLocalDeliveryMessage *)v13 setResourceMetadata:*(a1 + 80)];
        [(IDSLocalDeliveryMessage *)v13 setMessageUUID:*(a1 + 88)];
        [(IDSLocalDeliveryMessage *)v13 setMessageID:v12];
        [(IDSLocalDeliveryMessage *)v13 setExpirationDate:*(a1 + 96)];
        [(IDSLocalDeliveryMessage *)v13 setShouldEnforceRemoteTimeout:*(a1 + 220)];
        [(IDSLocalDeliveryMessage *)v13 setPriority:*(a1 + 200)];
        [(IDSLocalDeliveryMessage *)v13 setDataProtectionClass:*(a1 + 216)];
        [(IDSLocalDeliveryMessage *)v13 setNonWaking:*(a1 + 221)];
        [(IDSLocalDeliveryMessage *)v13 setNonCloudWaking:*(a1 + 222)];
        [(IDSLocalDeliveryMessage *)v13 setExpectsPeerResponse:*(a1 + 223)];
        [(IDSLocalDeliveryMessage *)v13 setWantsAppAck:*(a1 + 224)];
        [(IDSLocalDeliveryMessage *)v13 setCompressPayload:*(a1 + 225)];
        [(IDSLocalDeliveryMessage *)v13 setCompressed:*(a1 + 226)];
        [(IDSLocalDeliveryMessage *)v13 setPeerResponseIdentifier:*(a1 + 104)];
        [(IDSLocalDeliveryMessage *)v13 setDomainHash:*(a1 + 112)];
        [(IDSLocalDeliveryMessage *)v13 setCommand:*(a1 + 120)];
        [(IDSLocalDeliveryMessage *)v13 setTopic:*(a1 + 128)];
        [(IDSLocalDeliveryMessage *)v13 setAwdTopic:*(a1 + 136)];
        [(IDSLocalDeliveryMessage *)v13 setFromID:*(a1 + 144)];
        [(IDSLocalDeliveryMessage *)v13 setToDeviceID:v7];
        [(IDSLocalDeliveryMessage *)v13 setToURI:v5];
        [(IDSLocalDeliveryMessage *)v13 setCompletionBlock:*(a1 + 176)];
        [(IDSLocalDeliveryMessage *)v13 setFallbackBlock:*(a1 + 184)];
        [(IDSLocalDeliveryMessage *)v13 setProgressBlock:*(a1 + 192)];
        [(IDSLocalDeliveryMessage *)v13 setQueueOneIdentifier:*(a1 + 152)];
        [(IDSLocalDeliveryMessage *)v13 setRequireBluetooth:*(a1 + 227)];
        [(IDSLocalDeliveryMessage *)v13 setRequireLocalWiFi:*(a1 + 228)];
        [(IDSLocalDeliveryMessage *)v13 setBypassDuet:*(a1 + 229)];
        [(IDSLocalDeliveryMessage *)v13 setDuetIdentifiersOverride:*(a1 + 160)];
        -[IDSLocalDeliveryMessage setMinCompatibilityVersion:](v13, "setMinCompatibilityVersion:", [*(a1 + 168) minCompatibilityVersion]);
        [(IDSLocalDeliveryMessage *)v13 setMessageType:*(a1 + 208)];
        [v9 sendMessage:v13 priority:*(a1 + 200) messageType:*(a1 + 208)];
        if (v7)
        {
          [*(a1 + 48) addObject:v7];
        }

        goto LABEL_27;
      }

      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping device %@ which we already sent to.", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to create the peer for the device %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_27;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_27;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_27;
      }
    }

    _IDSLogV();
    goto LABEL_27;
  }

  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) pairingManager];
    v17 = [v16 pairedDeviceUniqueID];
    *buf = 138412546;
    v28 = v15;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WARNING: A message for the local default paired device has reached the delivery controller but we do not have a peer already for it, It was likley sent before QWS was completed. Purging message. Destination Device: %@, Current Device:%@ ", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v18 = *(a1 + 40);
      v19 = [*(a1 + 32) pairingManager];
      v22 = [v19 pairedDeviceUniqueID];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v20 = [*(a1 + 32) pairingManager];
        v23 = [v20 pairedDeviceUniqueID];
        _IDSLogV();
      }
    }
  }

  if (*(a1 + 176))
  {
    v21 = +[IDSDaemonPriorityQueueController sharedInstance];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1004CAED0;
    v24[3] = &unk_100BD9A30;
    v25 = v7;
    v26 = *(a1 + 176);
    [v21 performBlockMainQueue:v24];

    v9 = v25;
    goto LABEL_27;
  }

LABEL_28:
}

void sub_1004CAED0(uint64_t a1)
{
  v2 = [[IDSDeliveryContext alloc] initWithResponseCode:24 deviceID:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1004CAF3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKey:IDSDevicePairedDeviceID];
  if (*(a1 + 32))
  {
    v5 = +[IDSDaemonPriorityQueueController sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004CB024;
    v6[3] = &unk_100BD9A30;
    v7 = v4;
    v8 = *(a1 + 32);
    [v5 performBlockMainQueue:v6];
  }
}

void sub_1004CB024(uint64_t a1)
{
  v2 = [[IDSDeliveryContext alloc] initWithResponseCode:2 deviceID:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1004CBED4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[19];
  v4 = a2;
  v5 = [v2 hashForString:v4];
  [v3 setObject:v4 forKey:v5];
}

void sub_1004CC3F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID] & 1) == 0 && objc_msgSend(v5, "isNearby"))
  {
    [v5 setIsNearby:0];
    [*(a1 + 32) peerNearbyStateChanged:v5 forceNotify:1];
  }
}

void sub_1004CCC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004CCC38(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void sub_1004CD63C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 200) allObjects];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) isNearby];
    v7 = @"NO";
    v8 = *(a1 + 48);
    if (v6)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Broadcasting isNearby %@ for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v9 = [*(a1 + 40) isNearby] ? @"YES" : @"NO";
    v15 = v9;
    v16 = *(a1 + 48);
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      [*(a1 + 40) isNearby];
      _IDSLogV();
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 deliveryController:*(a1 + 32) uniqueID:*(a1 + 48) isNearby:{objc_msgSend(*(a1 + 40), "isNearby")}];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

void sub_1004CDD80(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) allObjects];
  v3 = [v2 copy];

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) isConnected];
    v6 = @"NO";
    v7 = *(a1 + 40);
    if (v5)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Broadcasting isConnected %@ for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v8 = [*(a1 + 32) isConnected] ? @"YES" : @"NO";
    v14 = v8;
    v15 = *(a1 + 40);
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      [*(a1 + 32) isConnected];
      _IDSLogV();
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 deliveryController:*(a1 + 32) uniqueID:*(a1 + 40) isConnected:{objc_msgSend(*(a1 + 32), "isConnected")}];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

void sub_1004D3CEC(id a1, IDSStewieProvisionMessage *a2)
{
  v2 = a2;
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding heartbeat to message: %@", &v4, 0xCu);
  }
}

void sub_1004D3DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding device info to message { deviceInfo: %@, message: %@ }", &v6, 0x16u);
  }

  [v3 addDeviceInfo:*(a1 + 32)];
}

void sub_1004D3E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding sms config to message { SMSConfig: %@, message: %@ }", &v6, 0x16u);
  }

  [v3 addSMSConfig:*(a1 + 32)];
}

void sub_1004D3F58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding phone info to message { phoneInfos: %@, message: %@ }", &v6, 0x16u);
  }

  [v3 addPhoneNumberInfos:*(a1 + 32)];
}

void sub_1004D4034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding session key info to message { sessionKeyInfos: %@, message: %@ }", &v6, 0x16u);
  }

  [v3 addSessionKeyInfos:*(a1 + 32)];
}

void sub_1004D4110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding clear info to message { clearInfo: %@, message: %@ }", &v6, 0x16u);
  }

  [v3 addClearInfo:*(a1 + 32)];
}

void sub_1004D41EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding companion phone numbers to message { companionPhoneNumbers: %@, message: %@ }", &v6, 0x16u);
  }

  [v3 addCompanionPhoneNumbers:*(a1 + 32)];
}

void sub_1004D42C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding companion device tokens to message { companionDeviceUDIDs: %@, message: %@ }", &v6, 0x16u);
  }

  [v3 addCompanionDeviceUDIDs:*(a1 + 32)];
}

uint64_t sub_1004D468C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  [v7 setPushNonce:a4];
  [*(a1 + 32) setPushSig:v9];

  if ([v8 count] == 1)
  {
    v10 = [v8 objectAtIndexedSubscript:0];

    [*(a1 + 32) setPushCertificate:v10];
  }

  else
  {
    v10 = IDSPEMFormatCertificatesForPushHeader();

    [*(a1 + 32) setPushCerts:v10];
  }

  v11 = *(*(a1 + 40) + 16);

  return v11();
}

void sub_1004D489C(os_unfair_lock_s *a1)
{
  if (a1)
  {
    if (os_unfair_lock_trylock(a1 + 2))
    {
      sub_100922F54();
    }

    sub_100922F80(a1);
  }
}

void sub_1004D48D8(uint64_t a1, double a2)
{
  if (a1)
  {
    if (os_unfair_lock_trylock((a1 + 8)))
    {
      sub_10092300C();
    }

    sub_100923038(v4, a1, a2);
  }
}

uint64_t sub_1004D4930(os_unfair_lock_s *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (os_unfair_lock_trylock(a1 + 2))
  {
    sub_1009231A4();
  }

  v4 = [(os_unfair_lock_s *)a1 enqueuedMessage];
  [(os_unfair_lock_s *)a1 addDeviceAndPhoneFieldsToMessage:v4];
  v5 = [v4 needsDeviceInfo];
  if (!v5)
  {
    [(os_unfair_lock_s *)a1 setInProgressMessage:v4];
    [(os_unfair_lock_s *)a1 setEnqueuedMessage:0];
    [(os_unfair_lock_s *)a1 setCurrentInfoEditCount:0];
    if (a2)
    {
      v8 = v4;
      *a2 = v4;
    }

    v6 = +[IDSFoundationLog stewieProvisioning];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v11 = 138412290;
    v12 = v4;
    v7 = "Sending message %@";
    goto LABEL_10;
  }

  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Message has no device info. Delaying send until populated %@";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
  }

LABEL_11:

  v9 = v5 ^ 1;
  return v9;
}

void sub_1004D4C50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1004D4C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 pushSig];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [*v3 pushNonce];
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  v9 = [*v3 pushCertificate];
  if (!v9)
  {
    v10 = [*v3 pushCerts];

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_1009231D0(WeakRetained, v11, v3);
    goto LABEL_7;
  }

LABEL_6:
  [(os_unfair_lock_s *)WeakRetained addCompletionBlockToMessage:*v3];
  sub_1004D4D58(WeakRetained, *v3);
LABEL_7:
}

void sub_1004D4D58(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = [a1 validationQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004D4ED0;
    v8[3] = &unk_100BD9EB8;
    objc_copyWeak(&v10, &location);
    v5 = v3;
    v9 = v5;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004D4FFC;
    v6[3] = &unk_100BDE7A8;
    objc_copyWeak(&v7, &location);
    [v4 queueBuildingValidationDataIfNecessaryForMessage:v5 subsystem:2 withQueueCompletion:v8 sendBlock:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_1004D4EA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1004D4ED0(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[IDSFoundationLog stewieProvisioning];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Message queued while building validation data %@", &v9, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Validation data ready, sending message %@", &v9, 0xCu);
    }

    v5 = [WeakRetained messageDelivery];
    [v5 sendMessage:*(a1 + 32)];
  }
}

void sub_1004D4FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished building validation data, sending message %@", &v7, 0xCu);
  }

  v6 = [WeakRetained messageDelivery];
  [v6 sendMessage:v3];
}

void sub_1004D51A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1004D51BC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    v14 = +[IDSFoundationLog stewieProvisioning];
    v15 = v14;
    if (a4)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v71 = a4;
        v72 = 2112;
        v73 = v10;
        v74 = 2112;
        v75 = v13;
        v76 = 2112;
        v77 = v11;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Message failed { responseCode: %ld, error: %@, message: %@, resultDictionary: %@ }", buf, 0x2Au);
      }

      [(os_unfair_lock_s *)WeakRetained debounceTime];
      v17 = v16;
      v18 = [v13 retryCount];
      v19 = v17 * ([v18 integerValue] + 1);

      [(os_unfair_lock_s *)WeakRetained maxRetryTime];
      if (v19 > v20)
      {
        [(os_unfair_lock_s *)WeakRetained maxRetryTime];
        v19 = v21;
      }

      if (a4 > 6002)
      {
        if (a4 > 6011)
        {
          if (a4 == 6012)
          {
            v32 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_1009232DC();
            }

            v23 = [(os_unfair_lock_s *)WeakRetained delegate];
            [v23 requester:*(a1 + 32) receivedReplaceAllSessionKeysForRequest:v13];
            a4 = 6012;
            goto LABEL_60;
          }

          if (a4 == 8000)
          {
            v22 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_100923344();
            }

            v23 = [(os_unfair_lock_s *)WeakRetained validationQueue];
            [v23 cleanupValidationInfoForSubsystemMechanism:2];
            a4 = 8000;
            goto LABEL_60;
          }

          goto LABEL_44;
        }

        if (a4 == 6003)
        {
          goto LABEL_29;
        }

        if (a4 == 6005)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (a4 > 442)
        {
          if (a4 != 443)
          {
            if (a4 != 6002)
            {
              if (a4 == 6001)
              {
                goto LABEL_81;
              }

              goto LABEL_44;
            }

LABEL_54:
            v37 = [v11 objectForKeyedSubscript:@"retry-interval"];
            v23 = v37;
            if (v37)
            {
              [v37 doubleValue];
              v19 = v38;
              [(os_unfair_lock_s *)WeakRetained debounceTime];
              if (v19 < v39)
              {
                [(os_unfair_lock_s *)WeakRetained debounceTime];
                v19 = v40;
              }
            }

            v41 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_100923564();
            }

            a4 = 6002;
            goto LABEL_60;
          }

LABEL_29:
          v23 = [v11 objectForKeyedSubscript:@"current-timestamp-ms"];
          if (!_os_feature_enabled_impl() || v23)
          {
            goto LABEL_39;
          }

          v26 = [v11 objectForKey:@"x-apple-server-time"];
          if (v26)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = objc_alloc_init(NSNumberFormatter);
              v23 = [v27 numberFromString:v26];

              if (v23)
              {
                goto LABEL_38;
              }
            }

            v28 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              sub_100923414();
            }
          }

          v23 = 0;
LABEL_38:

LABEL_39:
          if (v23)
          {
            [v13 setServerTimestamp:v23];
            v29 = +[NSDate date];
            [v29 timeIntervalSince1970];
            v30 = [NSNumber numberWithDouble:?];
            [v13 setServerTimestampReceivedDate:v30];
          }

          v31 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_100923488();
          }

          goto LABEL_60;
        }

        if (a4 == 440)
        {
          v33 = [v13 baaSigningError];
          v34 = [IDSBAASigner shouldRetryError:v33];

          if (!v34)
          {
LABEL_81:
            v67 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_1009234FC();
            }

            [(os_unfair_lock_s *)WeakRetained removeAndReportFailuresFromMessage:v13 differingFromResponseCode:6001];
            sub_100922E90(WeakRetained);
            goto LABEL_63;
          }

          v35 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v13 baaSigningError];
            *buf = 138412290;
            v71 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Received BAA DoNotRetry, but see we should retry due to client error %@", buf, 0xCu);
          }

          goto LABEL_54;
        }

        if (a4 == 441)
        {
LABEL_26:
          v24 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1009233AC();
          }

          v25 = [(os_unfair_lock_s *)WeakRetained validationQueue];
          [v25 purgeCachedCertsForSubsystemMechanism:2];

          v23 = [(os_unfair_lock_s *)WeakRetained validationQueue];
          [v23 cleanupValidationInfoForSubsystemMechanism:2];
          goto LABEL_60;
        }
      }

LABEL_44:
      v23 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1009235D8(v13, a4, v23);
      }

LABEL_60:

      [(os_unfair_lock_s *)WeakRetained removeAndReportFailuresFromMessage:v13 differingFromResponseCode:a4];
      v42 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v71 = v19;
        v72 = 2112;
        v73 = v13;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Scheduling retry { nextRetry: %ld, message: %@ }", buf, 0x16u);
      }

      im_dispatch_after_primary_queue();
      goto LABEL_63;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v71 = 0;
      v72 = 2112;
      v73 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received successful response for stewie provision { responseCode: %ld, message: %@ }", buf, 0x16u);
    }

    v43 = [(os_unfair_lock_s *)WeakRetained delegate];
    [v43 requester:WeakRetained succeededRequest:v13];

    v44 = +[IDSStewieProvisioningEventTracing sharedInstance];
    [v44 trackProvisioningEnd];

    v45 = [v13 successfulResponsesOfType:3];
    if (v45)
    {
      v46 = [(os_unfair_lock_s *)WeakRetained delegate];
      v47 = [v45 lastObject];
      v48 = [v47 request];
      [v46 requester:WeakRetained receivedSuccessForClearInfo:v48];
    }

    v69 = v45;
    v49 = [v13 successfulResponsesOfType:0];
    if (v49)
    {
      v50 = [(os_unfair_lock_s *)WeakRetained delegate];
      v51 = [v49 lastObject];
      v52 = [v51 request];
      [v50 requester:WeakRetained receivedSuccessForDeviceInfo:v52];
    }

    v53 = [v13 successfulResponsesOfType:1];
    v54 = [v13 failuresOfType:1];
    v55 = v54;
    v68 = v53;
    if (v53)
    {
      v57 = [v53 __imArrayByApplyingBlock:{&stru_100BDE810, v53}];
      v58 = [(os_unfair_lock_s *)WeakRetained delegate];
      [v58 requester:WeakRetained receivedSuccessForPhoneNumberInfos:v57];

      if (!v55)
      {
LABEL_76:
        v59 = [v13 successfulResponsesOfType:2];
        v60 = v59;
        if (v59)
        {
          v61 = [v59 __imArrayByApplyingBlock:&stru_100BDE850];
          [(os_unfair_lock_s *)WeakRetained delegate];
          v63 = v62 = v49;
          [v63 requester:WeakRetained receivedSuccessForSessionKeyInfos:v61];

          v49 = v62;
        }

        v64 = [v13 failuresOfType:2];
        if (v64)
        {
          [(os_unfair_lock_s *)WeakRetained delegate];
          v66 = v65 = v49;
          [v66 requester:WeakRetained receivedFailuresForSessionKeyInfos:v64];

          v49 = v65;
        }

        sub_100922E90(WeakRetained);

        goto LABEL_63;
      }
    }

    else if (!v54)
    {
      v56 = [(os_unfair_lock_s *)WeakRetained delegate];
      [v56 requester:WeakRetained receivedSuccessForPhoneNumberInfos:&__NSArray0__struct];
LABEL_75:

      goto LABEL_76;
    }

    v56 = [(os_unfair_lock_s *)WeakRetained delegate];
    [v56 requester:WeakRetained receivedFailuresForPhoneNumberInfos:v55];
    goto LABEL_75;
  }

  v13 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_100923268();
  }

LABEL_63:
}

void sub_1004D5BC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    sub_1004D4D58(WeakRetained, *(a1 + 32));
  }

  else
  {
    v3 = [WeakRetained messageDelivery];
    [v3 sendMessage:*(a1 + 32)];
  }
}