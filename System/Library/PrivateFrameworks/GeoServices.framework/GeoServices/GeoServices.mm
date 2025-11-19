unint64_t sub_100001334(void *a1)
{
  result = [a1 UTF8String];
  LOBYTE(v2) = *result;
  if (!*result)
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  LODWORD(result) = 0;
  v5 = v3 + 1;
  do
  {
    result = (result + v2);
    if (v4 > 0x30)
    {
      break;
    }

    v2 = *(v5 + v4++);
  }

  while (v2);
  return result;
}

id sub_100001388(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = GEODecodeModernXPCMessage();
  v13 = 0;
  v14 = v13;
  if (!v12 || v13)
  {
    v15 = GEOGetGEODaemonLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to decode request: %@", buf, 0xCu);
    }

    v17 = 0;
  }

  else
  {
    [v12 setService:v8];
    [v12 setMethod:v9];
    [v12 setPeer:v11];
    v15 = xpc_dictionary_get_value(v10, "progress_observer_endpoint");
    if (v15)
    {
      v16 = [NSProgress _geo_mirroredProgressFromReportingXPCEndpoint:v15 totalUnitCount:1];
      [v12 setProgress:v16];
    }

    v17 = v12;
  }

  return v17;
}

id sub_100001548(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 shouldThrottleMessageForServer:v3];
  if (v5)
  {
    if ([v4 wasThrottled])
    {
      v6 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      [v4 setWasThrottled:1];
      v6 = OS_LOG_TYPE_FAULT;
    }

    v7 = GEOGetGEODaemonLog();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [objc_opt_class() throttleCount];
      [objc_opt_class() throttleInterval];
      v11 = 138543874;
      v12 = v4;
      v13 = 1024;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, v6, "Peer %{public}@ has made more than %u requests over %f seconds", &v11, 0x1Cu);
    }
  }

  return v5;
}

id sub_1000018BC()
{
  if (qword_100096140 != -1)
  {
    dispatch_once(&qword_100096140, &stru_100083528);
  }

  v1 = qword_100096138;

  return v1;
}

uint64_t sub_100001910()
{
  if (!qword_1000960A0)
  {
    qword_1000960A0 = _sl_dlopen();
  }

  return qword_1000960A0;
}

uint64_t sub_100001B04(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v3 = *(a1 + 16);
    _geo_isolate_lock_data();
    LOBYTE(v1) = *(v1 + 9);
    _geo_isolate_unlock();
  }

  return v1 & 1;
}

uint64_t sub_100001B78(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = a5;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if ([v11 hasEntitlement:*(*(&v28 + 1) + 8 * v19)])
        {
          v26 = 1;
          reply = v15;
          goto LABEL_13;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  reply = xpc_dictionary_create_reply(v12);
  v21 = [v11 bundleIdentifier];
  v22 = [NSString stringWithFormat:@"%@ is missing required entitlement to call %@.%@", v21, v13, v14];

  v23 = [NSError GEOErrorWithCode:-5 reason:v22];
  v24 = GEOGetGEODaemonLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
  }

  v25 = [[GEOXPCReplyError alloc] initWithReplyObject:reply error:v23 mode:a6];
  [v25 send];

  v26 = 0;
LABEL_13:

  return v26;
}

void *sub_100001E24(void *a1)
{
  v1 = a1;
  v2 = [v1 clientConfig];
  v3 = [v2 configKeyValues];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v1 clientConfig];
  v6 = [v5 configKeyValues];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v21;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      v12 = [v11 abConfigValueType];
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v13 = [v11 abConfigValue];
          v14 = [v13 stringValue];
        }

        else
        {
          if (v12 != 4)
          {
            continue;
          }

          v13 = [v11 abConfigValue];
          v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 BOOLValue]);
        }
      }

      else if (v12 == 1)
      {
        v13 = [v11 abConfigValue];
        v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 intValue]);
      }

      else
      {
        if (v12 != 2)
        {
          continue;
        }

        v13 = [v11 abConfigValue];
        [v13 doubleValue];
        v14 = [NSNumber numberWithDouble:?];
      }

      v15 = v14;

      if (v15)
      {
        v16 = [v11 abConfigKey];
        [v4 setObject:v15 forKeyedSubscript:v16];
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);
LABEL_19:

  if ([v4 count])
  {
    v17 = v4;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

id sub_1000020A0(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.geoservices.map-subscriptions"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v8 = v2;
  }

  else
  {
LABEL_13:
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100002208(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v3 = *(a1 + 16);
    _geo_isolate_lock_data();
    LOBYTE(v1) = *(v1 + 24);
    _geo_isolate_unlock();
  }

  return v1 & 1;
}

id sub_100002284(void *a1, void *a2)
{
  v19 = a1;
  v3 = a2;
  v4 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = v19;
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (!v10)
        {

LABEL_20:
          v9 = GEOGetSubscriptionsLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Peer is not entitled for identifier '%{private}@'", buf, 0xCu);
          }

LABEL_22:

          continue;
        }

        v11 = v10;
        v12 = 0;
        v13 = *v21;
        while (2)
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v20 + 1) + 8 * j);
            if (_GEOMapDataSubscriptionIdentifierIsCompatible())
            {
              [v4 addObject:v8];
              goto LABEL_22;
            }

            if (_GEOMapDataSubscriptionIdentifierIsCompatible())
            {
              [v4 addObject:v15];
              v12 = 1;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v6);
  }

  return v4;
}

char *sub_100002560(void *a1)
{
  string = xpc_dictionary_get_string(a1, "lcl");
  if (string)
  {
    v2 = [NSLocale alloc];
    v3 = [NSString stringWithUTF8String:string];
    string = [v2 initWithLocaleIdentifier:v3];
  }

  return string;
}

void sub_100002BC8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v6 countryCode];
  v7 = [v6 timestamp];
  v8 = [v6 error];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  (*(v4 + 16))(v4, v10, v7, v9);
}

void sub_100002D80(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 error];
  v8 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  (*(v4 + 16))(v4, v7);
}

void sub_100002F00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained serverProxy:*(a1 + 32) countryCodeDidChange:*(a1 + 40)];
}

void sub_100003108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003124(uint64_t a1)
{
  v2 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Received country providers change notification. Informing delegate.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003208;
    block[3] = &unk_1000838C8;
    v7 = WeakRetained;
    dispatch_async(v5, block);
  }
}

void sub_100003208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained serverProxyProvidersDidChange:*(a1 + 32)];
}

void sub_1000034E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v9 = v5;
  if (a2 && !v5)
  {
    v7 = a2;
    v6 = objc_alloc_init(GEOPairedDeviceServiceReply);
    v8 = [v7 data];

    [v6 setResponseData:v8];
  }

  (*(*(a1 + 32) + 16))();
}

id sub_100003730(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFreedBytes:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_1000038CC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFreeableBytes:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

void sub_100003EE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) requestUUID];
  v9 = [*(a1 + 40) peer];
  [v7 _removeRequestUUID:v8 forPeer:v9];

  v10 = [*(a1 + 40) requestUUID];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) requestUUID];
    v13 = [*(a1 + 40) peer];
    [v11 _removeRequestUUID:v12 forPeer:v13];
  }

  [*(a1 + 48) setError:v6];
  [*(a1 + 48) setResponse:v5];
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218242;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Responding with place data response: %p / error: %@", &v15, 0x16u);
  }

  [*(a1 + 48) send];
}

id sub_1000042B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setAllCacheEntries:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

id sub_1000043EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setAllCacheEntries:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

void sub_1000047B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) requestUUID];
  v9 = [*(a1 + 40) peer];
  [v7 _removeRequestUUID:v8 forPeer:v9];

  v12 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  geo_dispatch_async_qos();
}

id sub_1000048CC(uint64_t a1)
{
  [*(a1 + 32) setResponse:*(a1 + 40)];
  [*(a1 + 32) setError:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 send];
}

void sub_100004B30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) requestUUID];
  v9 = [*(a1 + 40) peer];
  [v7 _removeRequestUUID:v8 forPeer:v9];

  v12 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  geo_dispatch_async_qos();
}

id sub_100004C44(uint64_t a1)
{
  [*(a1 + 32) setResponse:*(a1 + 40)];
  [*(a1 + 32) setError:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 send];
}

void sub_100004E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004E90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100004EA8(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 16);

  return [v6 removeObjectForKey:v5];
}

void sub_100004FDC(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (v2)
  {
    v3 = v2;
    [v2 removeObject:a1[6]];
    v2 = v3;
  }
}

void sub_100005110(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (!v2)
  {
    v3 = [NSMutableArray arrayWithCapacity:2];
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];
    v2 = v3;
  }

  v4 = v2;
  [v2 addObject:a1[6]];
}

void sub_10000552C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] && (objc_msgSend(v5, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: counts.count == 0 || [counts.firstObject isKindOfClass:GEORequestCounterCacheResults.class]", v9, 2u);
    }
  }

  else
  {
    [*(a1 + 32) setResults:v5];
    [*(a1 + 32) setError:v6];
    [*(a1 + 32) send];
  }
}

void sub_100005798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GEOExternalRequestCounterCountReply alloc] initWithRequest:*(a1 + 32)];
  [v4 setObjects:v3];

  [v4 send];
}

void sub_100005A7C(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v12 = @"response";
    v13 = v3;
    v6 = &v13;
    v7 = &v12;
  }

  else
  {
    v10 = @"err";
    v11 = v4;
    v6 = &v11;
    v7 = &v10;
  }

  v8 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:1];
  [*(a1 + 32) sendReply:v8];
}

void sub_100005E68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v18 = @"err";
    v19 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    v13 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v13];
    v9 = v13;
    v10 = v9;
    if (v8)
    {
      v16 = @"data";
      v17 = v8;
      v11 = &v17;
      v12 = &v16;
    }

    else
    {
      v14 = @"err";
      v15 = v9;
      v11 = &v15;
      v12 = &v14;
    }

    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1];
  }

  [*(a1 + 32) sendReply:v7];
}

void sub_100006320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v7 = [NSDictionary _geo_replyDictionaryForError:a3 key:@"err"];
    [v4 sendReply:?];
  }

  else
  {
    v5 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
    v8 = @"response";
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [*(a1 + 32) sendReply:v6];
  }
}

void sub_100006694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v7 = [NSDictionary _geo_replyDictionaryForError:a3 key:@"err"];
    [v4 sendReply:?];
  }

  else
  {
    v5 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
    v8 = @"response";
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [*(a1 + 32) sendReply:v6];
  }
}

uint64_t sub_100007384(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000740C(id a1)
{
  qword_100095F70 = objc_alloc_init(_GEOExperimentServiceRequestConfig);

  _objc_release_x1();
}

void sub_10000749C(id a1)
{
  qword_100095F80 = objc_alloc_init(_GEOExperimentServiceRequester);

  _objc_release_x1();
}

id sub_1000076C4()
{
  v0 = GeoServicesConfig_ExperimentsBucketGUIDTimestamp[1];
  GEOConfigGetDouble();
  v2 = v1;
  v3 = GeoServicesConfig_ExperimentsBucketGUID[1];
  v4 = GEOConfigGetString();
  if (!v4 || (v5 = CFAbsoluteTimeGetCurrent() - v2, v6 = GeoServicesConfig_ExperimentBucketGUIDExpireInterval[1], GEOConfigGetDouble(), v5 > v7) || v2 > CFAbsoluteTimeGetCurrent())
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Nonexist or stale experiment GUID. Generating new one.", v12, 2u);
    }

    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];

    GEOConfigSetString();
    CFAbsoluteTimeGetCurrent();
    GEOConfigSetDouble();
    v4 = v10;
  }

  return v4;
}

void sub_10000782C(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = a1[4];
  os_unfair_lock_lock_with_options();
  v7 = a1[4];
  v8 = *(v7 + 40);
  if (a1[5] == v8)
  {
    *(v7 + 40) = 0;

    v7 = a1[4];
  }

  os_unfair_lock_unlock((v7 + 48));
  [v11 setTimestamp:CFAbsoluteTimeGetCurrent()];
  v9 = GEOURLString();
  [v11 setSourceURL:v9];

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v11, v5);
  }
}

void sub_1000079A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000079C4(uint64_t a1)
{
  v2 = +[GEOResourceManifestManager modernManager];
  v3 = *(a1 + 32);
  global_queue = geo_get_global_queue();
  [v2 addTileGroupObserver:v3 queue:global_queue];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeOldExperimentsInfoIfNecessary:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _setupRefreshTask];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 _updateIfNecessary];
}

void sub_100007D48(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(a1 + 32);
  GEOOnce();
}

void sub_100007DD8(uint64_t a1)
{
  global_queue = geo_get_global_queue();
  dispatch_async(global_queue, *(a1 + 32));
}

void sub_100007E28(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v34 = 138543362;
      v35 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error loading experiment configuration from service: %{public}@", &v34, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = GeoServicesConfig_ExperimentServiceFailureRetryInterval[1];
    GEOConfigGetDouble();
    [WeakRetained _submitNonRepeatingRetryTask:?];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v34 = 138477827;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Loaded new experiment configuration: %{private}@", &v34, 0xCu);
    }

    v12 = +[GEOResourceManifestManager modernManager];
    v13 = [v12 activeTileGroup];
    v14 = [v13 dataSet];
    v15 = [v14 identifier];

    v16 = [v6 mapsAbClientMetadata];
    v17 = [v16 clientDatasetMetadata];
    [v17 setDatasetId:v15];

    v18 = [v6 parsecClientMetadata];
    v19 = [v18 clientDatasetMetadata];
    [v19 setDatasetId:v15];

    v20 = [v6 siriClientMetadata];
    v21 = [v20 clientDatasetMetadata];
    [v21 setDatasetId:v15];

    v22 = [v6 rapClientMetadata];
    v23 = [v22 clientDatasetMetadata];
    [v23 setDatasetId:v15];

    [v6 timestamp];
    v25 = v24;
    [*(*(a1 + 32) + 24) timestamp];
    [v6 setTimestamp:?];
    LODWORD(v15) = [*(*(a1 + 32) + 24) isEqual:v6];
    [v6 setTimestamp:v25];
    if (v15)
    {
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "New experiment configuration is the same as the previous experiment configuration", &v34, 2u);
      }

      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) _writeExperimentInfoToDisk:v6];
      [*(*(a1 + 32) + 24) setTimestamp:v25];
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _setupRefreshTask];
    }

    else
    {
      v27 = GEOExperimentConfigurationPath();
      WeakRetained = [v27 stringByDeletingLastPathComponent];

      v28 = +[NSFileManager defaultManager];
      LOBYTE(v34) = 0;
      if (![v28 fileExistsAtPath:WeakRetained isDirectory:&v34] || (v34 & 1) == 0)
      {
        [v28 createDirectoryAtPath:WeakRetained withIntermediateDirectories:1 attributes:0 error:0];
      }

      v29 = *(a1 + 32);
      os_unfair_lock_lock_with_options();
      v30 = *(*(a1 + 32) + 24);
      objc_storeStrong((*(a1 + 32) + 24), a2);
      v31 = *(*(a1 + 32) + 24);
      [*(a1 + 32) _writeExperimentInfoToDisk:v6];
      os_unfair_lock_unlock((*(a1 + 32) + 32));
      (*(*(a1 + 40) + 16))();
      v32 = objc_loadWeakRetained((a1 + 48));
      [v32 _setupRefreshTask];

      v33 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v33 serverProxy:*(a1 + 32) didChangeExperimentsInfo:v6];

      notify_post("com.apple.GeoServices.experimentsChanged");
      if (v30 != v31)
      {
        [*(a1 + 32) _notifyExperimentsInfoChanged:v30 current:v31];
      }
    }
  }
}

void sub_100009814(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 localizedDescription];
      v7 = 138477827;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error updating resource manifest on datasetId change: %{private}@", &v7, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [WeakRetained serverProxy:*(a1 + 32) didChangeExperimentsInfo:*(*(a1 + 32) + 24)];
    notify_post("com.apple.GeoServices.experimentsChanged");
  }
}

id sub_10000A048(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setDirectionsResponse:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_10000A088(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setError:a2];
  [*(a1 + 32) setDirectionsError:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

uint64_t sub_10000A13C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100095F88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10000A1D4(uint64_t a1)
{
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = qword_100095F88;
  v11 = qword_100095F88;
  if (!qword_100095F88)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000A13C;
    v5[4] = &unk_1000830A8;
    v6 = &v8;
    v7 = v5;
    v12 = *off_100081828;
    v13 = *off_100081838;
    v14 = 0;
    v9[3] = _sl_dlopen();
    qword_100095F88 = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  v3 = v5[0];
  if (v2)
  {
    if (!v5[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = abort_report_np();
    __break(1u);
  }

  free(v3);
LABEL_5:
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_100095F90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000A364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void start()
{
  v119 = objc_autoreleasePoolPush();
  v0 = _GEOCreateTransaction();
  v1 = GEOGetLaunchLog();
  v2 = os_signpost_id_generate(v1);

  v3 = GEOGetLaunchLog();
  v4 = v3;
  v117 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "geod_main", &unk_100075493, buf, 2u);
  }

  v5 = GEOGetLaunchLog();
  v6 = os_signpost_id_generate(v5);

  v7 = +[NSLocale currentLocale];
  [NSError _setFileNameLocalizationEnabled:0];
  GEODefaultsSetUseServer();
  objc_opt_class();
  _GEOConfigSetProxy();
  [GEOPlatform setIsRunningInGeod:1];
  [GEOUserSession setInitialShareSessionWithMaps:1];
  v8 = nw_context_copy_implicit_context();
  nw_context_set_privacy_level();

  context = objc_autoreleasePoolPush();
  v9 = GEOGetLaunchLog();
  v10 = v9;
  v11 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "geod_main_subtask", "privacy manager", buf, 2u);
  }

  v12 = +[GEOPrivacyManager sharedManager];
  v13 = GEOGetLaunchLog();
  v14 = v13;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v6, "geod_main_subtask", "privacy manager", buf, 2u);
  }

  v15 = GEOGetLaunchLog();
  v16 = v15;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v6, "geod_main_subtask", "defaults migrator", buf, 2u);
  }

  v118 = v0;
  v120 = v6 - 1;
  if ((_GEODefaultsUseServer & 1) == 0)
  {
    v114 = v6;
    v17 = GEODefaultsClearedVersionKey;
    v18 = _GEOFullDefaultsDomain();
    v19 = CFPreferencesCopyAppValue(v17, v18);
    v115 = v2;
    if (!v19)
    {
      v20 = _GEOFullDefaultsDomain();
      v21 = CFPreferencesCopyKeyList(v20, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v22 = v21;
      v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v131 objects:buf count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v132;
        v26 = GEODeviceCountryCodeKey;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v132 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v131 + 1) + 8 * i);
            if (([(__CFString *)v28 hasPrefix:@"LogLevel"]& 1) == 0 && ([(__CFString *)v28 hasPrefix:@"ConsoleLogLevel"]& 1) == 0 && ([(__CFString *)v28 isEqualToString:v26]& 1) == 0 && ([(__CFString *)v28 isEqualToString:@"GEOUseProductionURLs"]& 1) == 0 && ([(__CFString *)v28 isEqualToString:@"GEOLastNetworkDefaultsURL"]& 1) == 0 && ([(__CFString *)v28 isEqualToString:@"HelpImproveMapsAddressCorrectionAuthStatus"]& 1) == 0 && ([(__CFString *)v28 isEqualToString:@"GEOMapLocalizeLabels"]& 1) == 0)
            {
              v29 = _GEOFullDefaultsDomain();
              CFPreferencesSetAppValue(v28, 0, v29);
            }
          }

          v24 = [(__CFArray *)v22 countByEnumeratingWithState:&v131 objects:buf count:16];
        }

        while (v24);
      }

      v19 = 0;
    }

    v30 = _GEOFullDefaultsDomain();
    CFPreferencesAppSynchronize(v30);

    v31 = _GEOConfigStorageUser();
    v32 = _GEOFullDefaultsDomain();
    v33 = CFPreferencesCopyAppValue(v17, v32);
    if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v33 integerValue] != 20190107)
    {
      v34 = [NSSet setWithArray:&off_100089030];
      v35 = _GEOFullDefaultsDomain();
      v36 = v17;
      v37 = CFPreferencesCopyKeyList(v35, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v38 = [NSMutableSet setWithArray:v37];
      [v38 minusSet:v34];
      v39 = [v38 allObjects];
      v40 = _GEOFullDefaultsDomain();
      v41 = CFPreferencesCopyMultiple(v39, v40, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      *buf = _NSConcreteStackBlock;
      v127 = 3221225472;
      v128 = sub_100026DA8;
      v129 = &unk_100082B68;
      v130 = v31;
      [(__CFDictionary *)v41 enumerateKeysAndObjectsUsingBlock:buf];
      v42 = _GEOFullDefaultsDomain();
      CFPreferencesSetMultiple(0, v39, v42, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v43 = _GEOFullDefaultsDomain();
      CFPreferencesSetAppValue(v36, &off_100088630, v43);
      v44 = _GEOFullDefaultsDomain();
      CFPreferencesAppSynchronize(v44);

      v2 = v115;
    }

    v45 = v31;
    v46 = [v45 getConfigValueForKey:@"DeviceCountryCodeSourced" countryCode:0 options:0 source:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v46 count])
    {
      v6 = v114;
    }

    else
    {
      v47 = [v45 getConfigValueForKey:@"DeviceCountryCode" countryCode:0 options:0 source:0];
      objc_opt_class();
      v6 = v114;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v47 length])
      {
        *&v131 = @"cc";
        *(&v131 + 1) = @"source";
        *buf = v47;
        v127 = &off_100088648;
        *&v132 = @"date";
        v49 = +[NSDate distantPast];
        v128 = v49;
        v48 = [NSDictionary dictionaryWithObjects:buf forKeys:&v131 count:3];

        v50 = [[_GEOCountryConfigurationInfo alloc] initWithDictionary:v48];
        if (v50)
        {
          [v45 setConfigValue:v48 forKey:@"DeviceCountryCodeSourced" options:0 synchronous:1];
          [v45 setConfigValue:0 forKey:@"DeviceCountryCode" options:0 synchronous:1];
        }
      }

      else
      {
        v48 = v46;
      }

      v46 = v48;
    }

    sub_100026DBC(sub_1000272EC, v45, 0);
    sub_100026F98(v45);
    v51 = _GEOConfigStorageXPC();
    sub_100026DBC(&GeoServicesConfig_GetConfigStoreStringKeysForXPCMigration, v45, v51);
    v52 = +[GEOPlatform sharedPlatform];
    v53 = [v52 supportsMultiUser];

    if (v53)
    {
      v54 = _GEOConfigStorageSystem();
      sub_100026DBC(&GeoServicesConfig_GetConfigStoreStringKeysForSystemMigration, v45, v54);
      sub_100026F98(v54);
    }

    v11 = v120;
  }

  v55 = GEOGetLaunchLog();
  v56 = v55;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, v6, "geod_main_subtask", "defaults migrator", buf, 2u);
  }

  v57 = v6;

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v58 = [&off_100088A60 countByEnumeratingWithState:&v122 objects:v121 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v123;
    do
    {
      for (j = 0; j != v59; j = j + 1)
      {
        if (*v123 != v60)
        {
          objc_enumerationMutation(&off_100088A60);
        }

        v62 = *(*(&v122 + 1) + 8 * j);
        v63 = +[NSFileManager defaultManager];
        v64 = [v63 fileExistsAtPath:v62];

        if (v64)
        {
          v65 = +[NSFileManager defaultManager];
          [v65 removeItemAtPath:v62 error:0];
        }
      }

      v59 = [&off_100088A60 countByEnumeratingWithState:&v122 objects:v121 count:16];
    }

    while (v59);
  }

  v66 = GEOGetLaunchLog();
  v67 = v66;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_BEGIN, v57, "geod_main_subtask", "tiledb migrator", buf, 2u);
  }

  v68 = [GEOFilePaths pathFor:32778];
  v69 = [GEOFilePaths pathFor:16394];
  v70 = +[NSFileManager defaultManager];
  if ([v70 fileExistsAtPath:v68])
  {
    v71 = +[NSFileManager defaultManager];
    v72 = [v71 fileExistsAtPath:v69];

    if ((v72 & 1) == 0)
    {
      [GEOTileDB migrateDBFrom:v68 to:v69];
    }
  }

  else
  {
  }

  v73 = [GEOFilePaths pathFor:16394];
  v74 = [GEOFilePaths pathFor:32778];
  v75 = +[NSFileManager defaultManager];
  if ([v75 fileExistsAtPath:v73])
  {
    v76 = +[NSFileManager defaultManager];
    v77 = [v76 fileExistsAtPath:v74];

    if ((v77 & 1) == 0)
    {
      [GEOTileDB migrateFilesFrom:v73 to:v74];
    }
  }

  else
  {
  }

  v78 = [GEOFilePaths pathFor:25];
  v79 = +[NSFileManager defaultManager];
  v80 = [v79 fileExistsAtPath:v78];

  if (v80)
  {
    [GEOSQLiteDB deleteAllDBFilesFor:v78];
  }

  v81 = GEOGetLaunchLog();
  v82 = v81;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v82, OS_SIGNPOST_INTERVAL_END, v57, "geod_main_subtask", "tiledb migrator", buf, 2u);
  }

  v83 = GEOGetLaunchLog();
  v84 = v83;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v84, OS_SIGNPOST_INTERVAL_BEGIN, v57, "geod_main_subtask", "configure proxies", buf, 2u);
  }

  +[GEODirectionsRequester useLocalProxy];
  [GEOCountryConfiguration setProxyClass:objc_opt_class()];
  [GEONetworkDefaults setUseLocalProxy:1];
  +[GEORequestCounter useLocalProxy];
  [GEOLocationShifter setProxyClass:objc_opt_class()];
  +[GEOResourceManifestManager useLocalProxy];
  +[GEOTileServerLocalProxy enableCDSObserversIfNecessary];
  [GEOWiFiQualityServiceManager useProxyClass:objc_opt_class()];
  [GEOResourceRequester setProxyClass:objc_opt_class()];
  +[GEOAnalyticsDataService useLocalProxy];
  [GEOTileLoader setMemoryCacheCountLimit:0];
  [GEOTileLoader setMemoryCacheTotalCostLimit:0];
  [GEOExperimentConfiguration useProxy:objc_opt_class()];
  +[GEOTileLoader useLocalLoader];
  [GEOMapDataSubscriptionManager _setSharedManagerUseLocalPersistence:1];
  [GEOOfflineDataAccess _setSharedInstanceUseLocalPersistence:1];
  +[GEOSearchAttributionManifestManager useLocalProxy];
  v85 = GEOGetLaunchLog();
  v86 = v85;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, OS_SIGNPOST_INTERVAL_END, v57, "geod_main_subtask", "configure proxies", buf, 2u);
  }

  v87 = GEOGetLaunchLog();
  v88 = v87;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, OS_SIGNPOST_INTERVAL_BEGIN, v57, "geod_main_subtask", "add servers", buf, 2u);
  }

  v89 = [[GEODaemon alloc] initPrimaryDaemon];
  v90 = qword_100095F98;
  qword_100095F98 = v89;

  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  [qword_100095F98 addServerClass:objc_opt_class()];
  v91 = GEOGetLaunchLog();
  v92 = v91;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v92, OS_SIGNPOST_INTERVAL_END, v57, "geod_main_subtask", "add servers", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
  v93 = +[GEOPlatform sharedPlatform];
  if ([v93 isInternalInstall])
  {
    v94 = GeoServicesConfig_GeodTapewormEnabled[1];
    BOOL = GEOConfigGetBOOL();

    if (!BOOL)
    {
      goto LABEL_92;
    }

    v96 = GeoServicesConfig_GeodTapewormTimerIntervalMs[1];
    GEOConfigGetUint64();
    v97 = GeoServicesConfig_GeodTapewormInstructionCount[1];
    GEOConfigGetUint64();
    GEOGetApproximateTapewormIterations();
    v93 = GEOInsertTapewormOnDispatchTimer();
  }

LABEL_92:
  [qword_100095F98 start];
  objc_opt_self();
  if (sub_10001FD1C())
  {
    v98 = [sub_10001FF30() sharedScheduler];
    [v98 registerForTaskWithIdentifier:@"com.apple.geod.telemetry.daily" usingQueue:0 launchHandler:&stru_100083778];
  }

  [qword_100095F98 initializeAndStartPairedDeviceConnectionIfNecessary];
  if (sub_10001FD1C())
  {
    v99 = [qword_100095F98 submitBGSTQueue];
    dispatch_async(v99, &stru_100081850);
  }

  v100 = GEOGetLaunchLog();
  v101 = v100;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, OS_SIGNPOST_INTERVAL_BEGIN, v57, "geod_main_subtask", "configure cache delete", buf, 2u);
  }

  v102 = objc_autoreleasePoolPush();
  v103 = +[GEODiskSpaceManager sharedManager];
  v104 = objc_alloc_init(GEOImageServiceDiskSpaceProvider);
  [(GEOImageServiceDiskSpaceProvider *)v104 setDaemon:qword_100095F98];
  [v103 addDiskSpaceProvider:v104];
  v105 = objc_alloc_init(GEOMobileAssetResourceDiskSpaceProvider);
  [(GEOMobileAssetResourceDiskSpaceProvider *)v105 setDaemon:qword_100095F98];
  [v103 addDiskSpaceProvider:v105];
  v106 = objc_alloc_init(GEOTileCacheDiskSpaceProvider);
  [v103 addDiskSpaceProvider:v106];

  v107 = objc_alloc_init(GEOPlaceCardDiskSpaceProvider);
  [v103 addDiskSpaceProvider:v107];

  objc_autoreleasePoolPop(v102);
  v108 = GEOGetLaunchLog();
  v109 = v108;
  if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v109, OS_SIGNPOST_INTERVAL_END, v57, "geod_main_subtask", "configure cache delete", buf, 2u);
  }

  +[GEOPairedDeviceFilePaths registerCleanupTasks];
  notify_post(GEODaemonDidStartDarwinNotification);
  global_workloop = geo_get_global_workloop();
  dispatch_async(global_workloop, &stru_100081870);

  v111 = geo_get_global_workloop();
  dispatch_async(v111, &stru_100081890);

  v112 = GEOGetLaunchLog();
  v113 = v112;
  if (v117 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v113, OS_SIGNPOST_INTERVAL_END, v2, "geod_main", &unk_100075493, buf, 2u);
  }

  objc_autoreleasePoolPop(v119);
  dispatch_main();
}

void sub_10000B784(id a1)
{
  v1 = +[GEOReferenceTimeManager sharedManager];
  v2 = +[GEOPlatform sharedPlatform];
  v3 = [v2 osAndBuildVersion];
  v4 = GeoServicesConfig_deviceOSVersion[1];
  GEOConfigSetString();

  v5 = +[GEOPlatform sharedPlatform];
  v6 = [v5 hardwareClass];
  v7 = GeoServicesConfig_deviceHardwareClass[1];
  GEOConfigSetString();

  v10 = +[GEOPlatform sharedPlatform];
  v8 = [v10 hardwareIdentifier];
  v9 = GeoServicesConfig_deviceHardwareIdentifier[1];
  GEOConfigSetString();
}

void sub_10000B880(id a1)
{
  v1 = [GEOFilePaths pathFor:1];
  v49[0] = v1;
  v2 = [GEOFilePaths pathFor:2];
  v49[1] = v2;
  v3 = [NSArray arrayWithObjects:v49 count:2];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v3;
  v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v29)
  {
    v33 = 0;
    v28 = *v44;
    v4 = &NSLog_ptr;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v5;
        v6 = *(*(&v43 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = [v4[286] defaultManager];
        v35 = v6;
        v8 = [v7 enumeratorAtPath:v6];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v32 = v8;
        v9 = [v32 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v9)
        {
          v10 = v9;
          v34 = *v40;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v40 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v12 = *(*(&v39 + 1) + 8 * i);
              v13 = objc_autoreleasePoolPush();
              v14 = [v35 stringByAppendingPathComponent:v12];
              v15 = [v4[286] defaultManager];
              v16 = [v15 attributesOfItemAtPath:v14 error:0];

              if (v16)
              {
                LOBYTE(v37[0]) = 0;
                v17 = v4;
                v18 = [v4[286] defaultManager];
                [v18 fileExistsAtPath:v14 isDirectory:v37];

                v19 = [v14 lastPathComponent];
                v20 = [GEOFilePaths pathFor:36];
                v21 = [v20 lastPathComponent];
                v22 = [v19 isEqual:v21];

                if (v22 & 1) != 0 || ([v16 objectForKeyedSubscript:NSFileProtectionKey], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", NSFileProtectionNone), v23, (v24))
                {
                  v4 = v17;
                }

                else
                {
                  v25 = v33;
                  v4 = v17;
                  if (!v33)
                  {
                    v25 = +[NSMutableArray array];
                  }

                  v33 = v25;
                  [v25 addObject:v14];
                }
              }

              objc_autoreleasePoolPop(v13);
            }

            v10 = [v32 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v5 = v31 + 1;
      }

      while ((v31 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v29);
  }

  else
  {
    v33 = 0;
  }

  if ([v33 count])
  {
    v26 = +[GEOKeyBagNotification sharedObject];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000BCD8;
    v37[3] = &unk_1000838C8;
    v38 = v33;
    [v26 runAfterFirstUnlock:0 block:v37];
  }

  v36 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
  [v36 refresh:0];
}

void sub_10000BCD8(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v14;
    *&v2 = 138478083;
    v10 = v2;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Fixing file protection level of %{public}@", buf, 0xCu);
        }

        v7 = +[NSFileManager defaultManager];
        v21 = NSFileProtectionKey;
        v22 = NSFileProtectionNone;
        v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v12 = 0;
        [v7 setAttributes:v8 ofItemAtPath:v6 error:&v12];
        v9 = v12;

        if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v10;
          v18 = v6;
          v19 = 2113;
          v20 = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't set protection level for file %{private}@: %{private}@", buf, 0x16u);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v13 objects:v23 count:16];
    }

    while (v3);
  }
}

uint64_t sub_10000BF18()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_100095FA0;
  v5 = qword_100095FA0;
  if (!qword_100095FA0)
  {
    v6 = *off_1000818B0;
    v7 = *off_1000818C0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_100095FA0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_10000C02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C044(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100095FA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000C0DC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100095FA8;
  v7 = qword_100095FA8;
  if (!qword_100095FA8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000C1BC;
    v3[3] = &unk_1000830D0;
    v3[4] = &v4;
    sub_10000C1BC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000C1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C1BC(uint64_t a1)
{
  if (!sub_10000BF18())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NRPairedDeviceRegistry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100095FA8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    [(GEOPDPlaceCache *)v3 .cxx_destruct];
  }
}

void sub_10000C554(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

void sub_10000C6A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000C8FC;
  v16 = &unk_100081AE0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v17 = v3;
  v18 = v4;
  v5 = v2;
  v6 = &v13;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000C9A8;
  v23 = sub_10000C9B8;
  v24 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v26 = sub_10000C9C0;
  v27 = &unk_100081B30;
  v7 = v5;
  v28 = v7;
  v8 = v6;
  v29 = v8;
  v30 = &v19;
  [v7 statementForKey:@"GetAllMapsURLs" statementBlock:{&buf, v13, v14, v15, v16}];
  v9 = v20[5];
  if (v9)
  {
    v10 = v9;
  }

  _Block_object_dispose(&v19, 8);
  v11 = v9;
  (*(*(a1 + 48) + 16))();
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error iterating Maps URLs: %@", &buf, 0xCu);
  }
}

void sub_10000C8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C8FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = a4;
  v10 = [NSURL URLWithString:a3];
  v11 = [NSURL URLWithString:v9];

  (*(v8 + 16))(v8, v10, v11, a5 - *(a1 + 40));
  return 1;
}

uint64_t sub_10000C9A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000C9C0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  while (v4 == 100)
  {
    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v5 = [*(a1 + 32) stringForColumn:1 inStatment:a2];
    v6 = [*(a1 + 32) stringForColumn:2 inStatment:a2];
    [*(a1 + 32) int64ForColumn:3 inStatment:a2];
    if (((*(*(a1 + 40) + 16))() & 1) == 0)
    {

      return 1;
    }

    v4 = sqlite3_step(a2);
  }

  if (v4 != 101)
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    [v7 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v8 + 40), obj);
    return 0;
  }

  return 1;
}

void sub_10000CE64(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000CF24;
  v5[3] = &unk_100081A90;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 statementForKey:@"lookupAllKeysKey" statementBlock:v5];
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_10000CF24(void *a1, sqlite3_stmt *a2)
{
  while (sqlite3_step(a2) == 100)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1[4] + 8) stringForColumn:0 inStatment:a2];
    v6 = a1[5];
    if (v6 && ![v6 evaluateWithObject:v5])
    {

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      v7 = [*(a1[4] + 8) stringForColumn:1 inStatment:a2];
      [*(a1[4] + 8) int64ForColumn:2 inStatment:a2];
      v8 = (*(a1[6] + 16))();

      objc_autoreleasePoolPop(v4);
      if ((v8 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 1;
}

void sub_10000D390(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D450;
  v5[3] = &unk_100081A90;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 statementForKey:@"lookupAllPlacesKey" statementBlock:v5];
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_10000D450(void *a1, sqlite3_stmt *a2)
{
  while (sqlite3_step(a2) == 100)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1[4] + 8) stringForColumn:0 inStatment:a2];
    v6 = a1[5];
    if (v6 && ![v6 evaluateWithObject:v5])
    {

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      v7 = [*(a1[4] + 8) stringForColumn:1 inStatment:a2];
      v8 = [*(a1[4] + 8) noCopyBlobForColumn:2 inStatment:a2];
      v9 = [[GEOPDPlace alloc] initWithData:v8];
      [*(a1[4] + 8) int64ForColumn:3 inStatment:a2];
      v10 = (*(a1[6] + 16))();

      objc_autoreleasePoolPop(v4);
      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 1;
}

id sub_10000D76C(uint64_t a1)
{
  if (![*(*(a1 + 32) + 8) prepareStatement:"DELETE FROM pdplaces WHERE pdplacehash = @pdplacehash;" forKey:@"placeRemovePlaceKey"])
  {
    return 0;
  }

  v2 = [*(*(a1 + 32) + 8) statementForKey:@"placeRemovePlaceKey"];
  if (![*(*(a1 + 32) + 8) bindTextParameter:"@pdplacehash" toValue:*(a1 + 40) inStatement:v2 error:0])
  {
    return 0;
  }

  if (![*(*(a1 + 32) + 8) executeStatement:v2 error:0])
  {
    return 0;
  }

  if (![*(*(a1 + 32) + 8) prepareStatement:"DELETE FROM pdplacelookup WHERE pdplacehash = @pdplacehash;" forKey:@"placeLookupRemovePlaceKey"])
  {
    return 0;
  }

  v3 = [*(*(a1 + 32) + 8) statementForKey:@"placeLookupRemovePlaceKey"];
  if (![*(*(a1 + 32) + 8) bindTextParameter:"@pdplacehash" toValue:*(a1 + 40) inStatement:v3 error:0])
  {
    return 0;
  }

  v4 = *(*(a1 + 32) + 8);

  return [v4 executeStatement:v3 error:0];
}

void sub_10000DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DED0(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindInt64Parameter:"@expire_time" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

id sub_10000E1BC(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E248;
  v5[3] = &unk_100081A40;
  v5[4] = v2;
  return [v3 executeInTransaction:v5];
}

id sub_10000E248(uint64_t a1)
{
  if (sqlite3_exec([*(*(a1 + 32) + 8) sqliteDB], "DELETE FROM pdplaces;", 0, 0, 0) || sqlite3_exec(objc_msgSend(*(*(a1 + 32) + 8), "sqliteDB"), "DELETE FROM pdplacelookup WHERE requestkey NOT LIKE phNo-% AND pdplacehash NOT IN         (SELECT pdplacehash FROM pdplaces);", 0, 0, 0))
  {
    return 0;
  }

  v2 = *(*(a1 + 32) + 8);

  return [v2 executeStatement:@"DeleteMapsURLs" statementBlock:&stru_100081BE8];
}

id sub_10000E40C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E480;
  v4[3] = &unk_100081A40;
  v4[4] = v1;
  return [v2 executeInTransaction:v4];
}

id sub_10000E610(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) prepareStatement:"DELETE FROM pdplaces ORDER BY expiretime ASC LIMIT @limit;" forKey:@"pdPlaceDelWithLimit"];
  if (result)
  {
    v3 = [*(*(a1 + 32) + 8) statementForKey:@"pdPlaceDelWithLimit"];
    result = [*(*(a1 + 32) + 8) bindIntParameter:"@limit" toValue:*(a1 + 40) inStatement:v3 error:0];
    if (result)
    {
      result = [*(*(a1 + 32) + 8) executeStatement:v3 error:0];
      if (result)
      {
        return (sqlite3_exec([*(*(a1 + 32) + 8) sqliteDB], "DELETE FROM pdplacelookup WHERE requestkey NOT LIKE phNo-% AND pdplacehash NOT IN         (SELECT pdplacehash FROM pdplaces);", 0, 0, 0) == 0);
      }
    }
  }

  return result;
}

void sub_10000E824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000E844(uint64_t a1)
{
  result = [*(a1 + 32) _shrinkBySize:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000E9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EA08(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _shrinkBySize:*(a1 + 56)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  geo_dispatch_async_qos();
}

uint64_t sub_10000EBD4(const char **a1, int a2, const char **a3)
{
  if (a2)
  {
    v4 = *a3;
    if (*a3)
    {
      v4 = strtoll(v4, 0, 10);
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return 0;
}

void sub_10000ED60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000ED80(uint64_t a1)
{
  result = [*(a1 + 32) _calculateFreeableSpace];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000EEF4(uint64_t a1)
{
  [*(a1 + 32) _calculateFreeableSpace];
  v2 = *(a1 + 40);
  geo_dispatch_async_qos();
}

id sub_10000F258(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = [v5 bindInt64Parameter:"@rowid" toValue:v4 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a1[4];
  v10 = *(a1[5] + 8);
  v13 = *(v10 + 40);
  v11 = [v9 bindInt64Parameter:"@expire_time" toValue:v8 inStatement:a2 error:&v13];
  objc_storeStrong((v10 + 40), v13);
  return v11;
}

void sub_10000F3D4(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000C9A8;
  v28 = sub_10000C9B8;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) absoluteString];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000F770;
  v15[3] = &unk_1000819C8;
  v15[4] = &v24;
  v15[5] = &v20;
  v15[6] = &v16;
  v4 = v2;
  v5 = v3;
  v6 = v15;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000C9A8;
  v34 = sub_10000C9B8;
  v35 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v37 = sub_10000F7E0;
  v38 = &unk_100081BA8;
  v7 = v4;
  v39 = v7;
  v8 = v5;
  v40 = v8;
  v42 = &v30;
  v9 = v6;
  v41 = v9;
  [v7 statementForKey:@"GetLongMapsURL" statementBlock:&buf];
  v10 = v31[5];
  if (v10)
  {
    v11 = v10;
  }

  _Block_object_dispose(&v30, 8);
  v12 = v10;

  if (v10)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error trying to lookup long maps url: %@", &buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  if (v25[5])
  {
    [*(a1 + 32) _updateMapsURLExpiry:v21[3] expireTime:v17[3]];
    v14 = v25[5];
  }

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_10000F720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [NSURL URLWithString:?];
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a4;
  return 0;
}

uint64_t sub_10000F7E0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindTextParameter:"@short_url" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = sqlite3_step(a2);
  while (v8 == 100)
  {
    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v9 = 1;
    v10 = [*(a1 + 32) stringForColumn:1 inStatment:a2];
    [*(a1 + 32) int64ForColumn:2 inStatment:a2];
    if (!(*(*(a1 + 48) + 16))())
    {
      goto LABEL_9;
    }

    v8 = sqlite3_step(a2);
  }

  if (v8 == 101)
  {
    return 1;
  }

  v11 = *(a1 + 32);
  v12 = *(*(a1 + 56) + 8);
  v15 = *(v12 + 40);
  [v11 reportSQLiteErrorCode:v8 method:@"step" error:&v15];
  v13 = v15;
  v9 = 0;
  v10 = *(v12 + 40);
  *(v12 + 40) = v13;
LABEL_9:

  return v9;
}

void sub_10000FA04(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000C9A8;
  v28 = sub_10000C9B8;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) absoluteString];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000FDA0;
  v15[3] = &unk_1000819C8;
  v15[4] = &v24;
  v15[5] = &v20;
  v15[6] = &v16;
  v4 = v2;
  v5 = v3;
  v6 = v15;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000C9A8;
  v34 = sub_10000C9B8;
  v35 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v37 = sub_10000FE10;
  v38 = &unk_100081BA8;
  v7 = v4;
  v39 = v7;
  v8 = v5;
  v40 = v8;
  v42 = &v30;
  v9 = v6;
  v41 = v9;
  [v7 statementForKey:@"GetShortMapsURL" statementBlock:&buf];
  v10 = v31[5];
  if (v10)
  {
    v11 = v10;
  }

  _Block_object_dispose(&v30, 8);
  v12 = v10;

  if (v10)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error trying to lookup short maps url: %@", &buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  if (v25[5])
  {
    [*(a1 + 32) _updateMapsURLExpiry:v21[3] expireTime:v17[3]];
    v14 = v25[5];
  }

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_10000FD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FDA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [NSURL URLWithString:?];
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a4;
  return 0;
}

uint64_t sub_10000FE10(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindTextParameter:"@long_url" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = sqlite3_step(a2);
  while (v8 == 100)
  {
    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v9 = 1;
    v10 = [*(a1 + 32) stringForColumn:1 inStatment:a2];
    [*(a1 + 32) int64ForColumn:2 inStatment:a2];
    if (!(*(*(a1 + 48) + 16))())
    {
      goto LABEL_9;
    }

    v8 = sqlite3_step(a2);
  }

  if (v8 == 101)
  {
    return 1;
  }

  v11 = *(a1 + 32);
  v12 = *(*(a1 + 56) + 8);
  v15 = *(v12 + 40);
  [v11 reportSQLiteErrorCode:v8 method:@"step" error:&v15];
  v13 = v15;
  v9 = 0;
  v10 = *(v12 + 40);
  *(v12 + 40) = v13;
LABEL_9:

  return v9;
}

void sub_10001027C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000102B4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) prepareStatement:"SELECT pdplacehash FROM pdplacelookup WHERE requestkey = @requestkey;" forKey:@"lookupMUIDByPhoneKey"])
  {
    v2 = [*(*(a1 + 32) + 8) statementForKey:@"lookupMUIDByPhoneKey"];
    v3 = [NSString stringWithFormat:@"%@%@", @"phNo-", *(a1 + 40)];
    v4 = *(*(a1 + 32) + 8);
    v11 = 0;
    v5 = [v4 bindTextParameter:"@requestkey" toValue:v3 inStatement:v2 error:&v11];
    v6 = v11;
    if (v5)
    {
      v7 = @"muid-";
      v8 = 48;
      while (sqlite3_step(v2) == 100)
      {
        v9 = [*(*(a1 + 32) + 8) stringForColumn:0 inStatment:v2];
        if ([v9 hasPrefix:@"muid-"])
        {
          goto LABEL_9;
        }

        if ([v9 hasPrefix:@"bmid-"])
        {
          v7 = @"bmid-";
          v8 = 56;
LABEL_9:
          v10 = [v9 substringFromIndex:{-[__CFString length](v7, "length")}];
          *(*(*(a1 + v8) + 8) + 24) = strtouq([v10 UTF8String], 0, 10);

          break;
        }
      }

      sqlite3_reset(v2);
    }
  }
}

void sub_100010714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id sub_100010750(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000107D4;
  v5[3] = &unk_1000839B8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  return [v2 _lookupPlaceByRequestKey:v1 allowExpiredPlace:v3 resultBlock:v5];
}

void sub_1000107D4(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_100010CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_100010D04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010D88;
  v5[3] = &unk_1000839B8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  return [v2 _lookupPlaceByRequestKey:v1 allowExpiredPlace:v3 resultBlock:v5];
}

void sub_100010D88(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_1000110D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_10001110C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011190;
  v5[3] = &unk_1000839B8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  return [v2 _lookupPlaceByRequestKey:v1 allowExpiredPlace:v3 resultBlock:v5];
}

void sub_100011190(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_100011518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id sub_100011554(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000115D8;
  v5[3] = &unk_1000839B8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  return [v2 _lookupPlaceByRequestKey:v1 allowExpiredPlace:v3 resultBlock:v5];
}

void sub_1000115D8(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_100011C24(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) absoluteString];
  v4 = [*(a1 + 48) absoluteString];
  v5 = *(a1 + 56);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000C9A8;
  v21 = sub_10000C9B8;
  v22 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v24 = sub_100011E74;
  v25 = &unk_100081B80;
  v9 = v6;
  v26 = v9;
  v10 = v7;
  v27 = v10;
  v29 = &v17;
  v11 = v8;
  v28 = v11;
  v30 = v5;
  v12 = [v9 executeStatement:@"SetMapsURL" statementBlock:&buf];
  v13 = v18[5];
  if (v13)
  {
    v14 = v13;
  }

  _Block_object_dispose(&v17, 8);
  v15 = v13;

  if ((v12 & 1) == 0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to store maps urls: %@", &buf, 0xCu);
    }
  }
}

id sub_100011E74(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindTextParameter:"@short_url" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a1[6];
  v10 = *(a1[7] + 8);
  v18 = *(v10 + 40);
  v11 = [v8 bindTextParameter:"@long_url" toValue:v9 inStatement:a2 error:&v18];
  objc_storeStrong((v10 + 40), v18);
  if (!v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a1[8];
  v14 = *(a1[7] + 8);
  v17 = *(v14 + 40);
  v15 = [v12 bindInt64Parameter:"@expire_time" toValue:v13 inStatement:a2 error:&v17];
  objc_storeStrong((v14 + 40), v17);
  return v15;
}

void sub_100012338(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) copy];
  [v2 _storePlace:v3 withHash:v4 forRequestKeys:v5];

  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      global_queue = *(a1 + 64);
    }

    else
    {
      global_queue = geo_get_global_queue();
      v6 = *(a1 + 72);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012438;
    block[3] = &unk_1000833E0;
    v10 = v6;
    dispatch_async(global_queue, block);
    if (!v7)
    {
    }
  }
}

void sub_100012828(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 pdPlaceCacheKeyForRequest:0];
  v5 = [*(a1 + 48) copy];
  [v2 _storePlace:v3 withHash:v4 forRequestKeys:v5];

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      global_queue = *(a1 + 56);
    }

    else
    {
      global_queue = geo_get_global_queue();
      v6 = *(a1 + 64);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012940;
    block[3] = &unk_1000833E0;
    v10 = v6;
    dispatch_async(global_queue, block);
    if (!v7)
    {
    }
  }
}

uint64_t sub_100013178(uint64_t a1)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000135E8;
  v36[3] = &unk_100081B80;
  v39 = &v41;
  v36[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v37 = v4;
  v40 = v5;
  v38 = *(a1 + 48);
  v6 = [v3 executeStatement:@"placeInsKey" statementBlock:v36];
  *(v42 + 24) = v6;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 64);
      *buf = 138478083;
      v47 = v8;
      v48 = 2048;
      v49 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "wrote place with hash : %{private}@ / expire time : %lld", buf, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = *(a1 + 56);
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v11)
    {
      v12 = *v33;
      while (1)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v16 = *(a1 + 32);
          v15 = *(a1 + 40);
          v17 = *(v16 + 8);
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_1000136CC;
          v28[3] = &unk_100081B80;
          v30 = &v41;
          v28[4] = v16;
          v28[5] = v14;
          v29 = v15;
          v31 = *(a1 + 72);
          v18 = [v17 executeStatement:@"placeLookupInsKey" statementBlock:v28];
          *(v42 + 24) = v18;
          if (v18)
          {
            v19 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_15;
            }

            v20 = *(a1 + 72);
            *buf = 138478083;
            v47 = v14;
            v48 = 2048;
            v49 = v20;
            v21 = v19;
            v22 = OS_LOG_TYPE_DEBUG;
            v23 = "wrote place lookup key : %{private}@ / access time : %lld";
            v24 = 22;
          }

          else
          {
            v19 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            *buf = 138477827;
            v47 = v14;
            v21 = v19;
            v22 = OS_LOG_TYPE_ERROR;
            v23 = "unable to write place lookup key : %{private}@";
            v24 = 12;
          }

          _os_log_impl(&_mh_execute_header, v21, v22, v23, buf, v24);
LABEL_15:

          if (!v18)
          {
            goto LABEL_21;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v32 objects:v45 count:16];
        v25 = 1;
        if (!v11)
        {
          goto LABEL_22;
        }
      }
    }

    v25 = 1;
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      *buf = 138477827;
      v47 = v26;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "unable to write place with hash : %{private}@", buf, 0xCu);
    }

LABEL_21:
    v25 = 0;
  }

LABEL_22:

  _Block_object_dispose(&v41, 8);
  return v25;
}

uint64_t sub_1000135E8(void *a1, uint64_t a2)
{
  *(*(a1[7] + 8) + 24) = [*(a1[4] + 8) bindTextParameter:"@pdplacehash" toValue:a1[5] inStatement:a2 error:0];
  if (*(*(a1[7] + 8) + 24) == 1 && (*(*(a1[7] + 8) + 24) = [*(a1[4] + 8) bindInt64Parameter:"@expiretime" toValue:a1[8] inStatement:a2 error:0], *(*(a1[7] + 8) + 24) == 1))
  {
    *(*(a1[7] + 8) + 24) = [*(a1[4] + 8) bindBlobNoCopyParameter:"@pdplace" toValue:a1[6] inStatement:a2 error:0];
    v4 = *(*(a1[7] + 8) + 24);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000136CC(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 8) bindTextParameter:"@requestkey" toValue:*(a1 + 40) inStatement:a2 error:0];
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && (*(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 8) bindTextParameter:"@pdplacehash" toValue:*(a1 + 48) inStatement:a2 error:0], *(*(*(a1 + 56) + 8) + 24) == 1))
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 8) bindInt64Parameter:"@lastaccesstime" toValue:*(a1 + 64) inStatement:a2 error:0];
    v4 = *(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100013B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100013B98()
{
  v0 = +[NSLocale currentLocale];
  v1 = [v0 _geo_languageAndLocale];

  return v1;
}

id sub_100013BEC(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = "DROP TABLE locale";
  }

  else
  {
    v5 = 0;
  }

  if ([v3 createTable:"CREATE TABLE IF NOT EXISTS locale(   rowid INTEGER PRIMARY KEY NOT NULL withDrop:{locale TEXT NOT NULL   );", v5}] && (!a2 ? (v6 = 0) : (v6 = "DROP TABLE maps_url"), objc_msgSend(v4, "createTable:withDrop:", "CREATE TABLE IF NOT EXISTS maps_url(   rowid INTEGER PRIMARY KEY NOT NULL,    short_url TEXT NOT NULL UNIQUE,    long_url TEXT NOT NULL UNIQUE,    expire_time INT NOT NULL   );", v6) && objc_msgSend(v4, "createIndex:", "CREATE INDEX IF NOT EXISTS maps_url_short_url_idx ON maps_url (short_url);") && objc_msgSend(v4, "createIndex:", "CREATE INDEX IF NOT EXISTS maps_url_long_url_idx ON maps_url (long_url);") && objc_msgSend(v4, "createIndex:", "CREATE INDEX IF NOT EXISTS maps_url_expire_time_idx ON maps_url (expire_time);") && objc_msgSend(v4, "prepareStatement:forKey:", "INSERT INTO locale    (rowid, locale)    VALUES (0, @locale);", @"SetLocale") && objc_msgSend(v4, "prepareStatement:forKey:", "SELECT locale    FROM locale;", @"GetLocale") && objc_msgSend(v4, "prepareStatement:forKey:", "INSERT OR REPLACE INTO maps_url    (short_url, long_url, expire_time)    VALUES (@short_url, @long_url, @expire_time);", @"SetMapsURL") && objc_msgSend(v4, "prepareStatement:forKey:", "UPDATE maps_url    SET expire_time = @expire_time    WHERE rowid = @rowid;", @"UpdateMapsURLExpiry") && objc_msgSend(v4, "prepareStatement:forKey:", "SELECT rowid, long_url, expire_time    FROM maps_url    WHERE short_url = @short_url;", @"GetLongMapsURL") && objc_msgSend(v4, "prepareStatement:forKey:", "SELECT rowid, short_url, expire_time    FROM maps_url    WHERE long_url = @long_url;", @"GetShortMapsURL") && objc_msgSend(v4, "prepareStatement:forKey:", "SELECT rowid, short_url, long_url, expire_time    FROM maps_url;", @"GetAllMapsURLs") && objc_msgSend(v4, "prepareStatement:forKey:", "DELETE FROM maps_url    WHERE expire_time < @expire_time;", @"PruneMapsURLs")))
  {
    v7 = [v4 prepareStatement:"DELETE FROM maps_url;" forKey:@"DeleteMapsURLs"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100013DA0(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindTextParameter:"@locale" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

void sub_1000140F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014158(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  while (v4 == 100)
  {
    v5 = [*(a1 + 32) stringForColumn:0 inStatment:a2];
    if (((*(*(a1 + 40) + 16))() & 1) == 0)
    {

      return 1;
    }

    v4 = sqlite3_step(a2);
  }

  if (v4 != 101)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 8);
    obj = *(v7 + 40);
    [v6 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v7 + 40), obj);
    return 0;
  }

  return 1;
}

void sub_100014324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001433C(uint64_t a1)
{
  [*(a1 + 32) _validateDBLocaleAndResetIfNecessary];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

id sub_1000145C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 user_version] == 2)
  {
    v4 = [v3 log];
    v5 = sub_100013BEC(v3, 0);

    if (!v5 || ![*(a1 + 32) _validateDBLocaleAndResetIfNecessary])
    {
      goto LABEL_12;
    }
  }

  else if (([*(a1 + 32) _deleteAndResetDB:0] & 1) == 0)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = [v3 log];
  v7 = sub_100013BEC(v3, 0);

  if (!v7 || ![*(*(a1 + 32) + 8) prepareStatement:"INSERT OR REPLACE INTO pdplaces VALUES (@pdplacehash forKey:{@expiretime, @pdplace);", @"placeInsKey"}] || !objc_msgSend(*(*(a1 + 32) + 8), "prepareStatement:forKey:", "INSERT OR REPLACE INTO pdplacelookup VALUES (@requestkey,@pdplacehash,@lastaccesstime);", @"placeLookupInsKey") || !objc_msgSend(*(*(a1 + 32) + 8), "prepareStatement:forKey:", "SELECT a.requestkey, a.pdplacehash, b.pdplace, b.expiretime FROM pdplacelookup a, pdplaces b WHERE a.pdplacehash = b.pdplacehash;", @"lookupAllPlacesKey"))
  {
    goto LABEL_12;
  }

  v8 = [*(*(a1 + 32) + 8) prepareStatement:"SELECT * FROM pdplacelookup;" forKey:@"lookupAllKeysKey"];
LABEL_11:

  return v8;
}

void sub_100014700(id a1)
{
  v4 = [GEOFilePaths pathFor:32792];
  v1 = [GEOFilePaths pathFor:24];
  [GEOSQLiteDB migrateAllDBFilesFrom:v4 to:v1];
  v2 = [[GEOPDPlaceCache alloc] initWithCacheFilePath:v1 schedulingDelegate:0 manifestInfoProvider:0];
  v3 = qword_100095FB0;
  qword_100095FB0 = v2;
}

void sub_1000149DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = objc_alloc_init(GEOPairedDeviceReply);
    [v3 setCheckin:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100016A0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = objc_alloc_init(GEOPairedDeviceReply);
    [v3 setPlaceRequest:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100017A78(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = objc_alloc_init(GEOPairedDeviceReply);
    [v3 setConfigureSubscriptionShouldSync:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001896C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = objc_alloc_init(GEOPairedDeviceReply);
    [v3 setLocationShift:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100019F3C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = objc_alloc_init(GEOPairedDeviceReply);
    [v3 setFetchGeoIpCc:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_10001A314(void *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A3D0;
  block[3] = &unk_1000838C8;
  v7 = a1;
  v1 = qword_100095FC8;
  v2 = v7;
  if (v1 != -1)
  {
    dispatch_once(&qword_100095FC8, block);
  }

  v3 = qword_100095FC0;
  v4 = qword_100095FC0;

  return v3;
}

id sub_10001A3D0(uint64_t a1)
{
  v2 = objc_alloc_init(GEOPairedDeviceClientInfo);
  v3 = qword_100095FC0;
  qword_100095FC0 = v2;

  v4 = [*(a1 + 32) version];
  [qword_100095FC0 setClientVersion:v4];
  [qword_100095FC0 addSupportedMessages:3];
  [qword_100095FC0 addSupportedMessages:5];
  [qword_100095FC0 addSupportedMessages:4];
  [qword_100095FC0 addSupportedMessages:100];
  [qword_100095FC0 addSupportedMessages:103];
  [qword_100095FC0 addSupportedMessages:105];
  v5 = qword_100095FC0;

  return [v5 addSupportedMessages:1];
}

void sub_10001A99C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) _pruneOldResourcesIn:*(a1 + 32)];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_10001A9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100020BFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MA update result for %@: %ld error: %@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001ACB0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100020BFC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v12[0] = 67109890;
    v12[1] = a2;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MA query result: %d error: %@ info; %@ resources: %@", v12, 0x26u);
  }

  v11 = [v7 count];
  if (a2 || !v11)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    [*(a1 + 48) _processResources:v7 group:*(a1 + 40)];
  }
}

void sub_10001B06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020BFC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "MA catalog result: %d", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B174;
  v7[3] = &unk_1000837A0;
  v7[4] = v5;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

id sub_10001B174(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v2 + 8))
  {
    return [v1 _updateComplete];
  }

  else
  {
    return [v1 _fetchAssets];
  }
}

id sub_10001B21C(uint64_t a1)
{
  [*(a1 + 32) _updateOnQueue];
  v2 = *(a1 + 40);

  return [v2 setTaskCompleted];
}

void sub_10001B5F0(id a1)
{
  qword_100095FD0 = [[GEOMobileAssetResourceUpdater alloc] initInternal];

  _objc_release_x1();
}

void sub_10001B748(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        v14 = [v13 dictionaryRepresentation];
        [v6 setObject:v14 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v9);
  }

  v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v16 objectForKey:v21];
        v23 = _geo_NSErrorDictionaryRepresentationCopy();
        [v15 setObject:v23 forKey:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v18);
  }

  v24 = *(a1 + 32);
  v35[0] = @"attributionInfos";
  v35[1] = @"errors";
  v36[0] = v6;
  v36[1] = v15;
  v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v24 sendReply:v25];
}

id sub_10001BCAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(a1 + 32) setBucket:{objc_msgSend(a2, "intValue")}];
  }

  else
  {
    [*(a1 + 32) setError:?];
  }

  v3 = *(a1 + 32);

  return [v3 send];
}

void sub_10001BDB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8)
  {
    v14[0] = @"uuid";
    v14[1] = @"uuidDate";
    v15[0] = v7;
    v15[1] = v8;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = *(a1 + 32);
  }

  else
  {
    if (!v9)
    {
      v10 = [NSError GEOErrorWithCode:-8 reason:@"unexpected"];
    }

    v13 = *(a1 + 32);
    v11 = [NSDictionary _geo_replyDictionaryForError:v10 key:@"err"];
    v12 = v13;
  }

  [v12 sendReply:v11];
}

void sub_10001BF8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8)
  {
    v14[0] = @"uuid";
    v14[1] = @"uuidDate";
    v15[0] = v7;
    v15[1] = v8;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = *(a1 + 32);
  }

  else
  {
    if (!v9)
    {
      v10 = [NSError GEOErrorWithCode:-8 reason:@"unexpected"];
    }

    v13 = *(a1 + 32);
    v11 = [NSDictionary _geo_replyDictionaryForError:v10 key:@"err"];
    v12 = v13;
  }

  [v12 sendReply:v11];
}

void sub_10001C168(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [v10 data];
    [v6 setObject:v7 forKey:@"response"];

    v8 = *(a1 + 32);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v9 = *(a1 + 32);
    v6 = [NSDictionary _geo_replyDictionaryForError:v5 key:@"err"];
    v8 = v9;
  }

  [v8 sendReply:v6];

LABEL_6:
}

void sub_10001C6B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v12 = objc_alloc_init(GEOPairedDeviceFetchGeoIPCCReply);
  [v12 setCountryCode:v9];

  [v8 timeIntervalSinceReferenceDate];
  v11 = v10;

  [v12 setTimestamp:v11];
  (*(*(a1 + 32) + 16))();
}

id sub_10001C888(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  [v7 setCountryCode:a2];
  [*(a1 + 32) setTimestamp:v9];

  [*(a1 + 32) setError:v8];
  v10 = *(a1 + 32);

  return [v10 send];
}

id sub_10001C9FC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

void sub_10001CB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001CBB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001CBCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 && [*(v2 + 16) count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [*(v2 + 16) allValues];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          if ([v9 count])
          {
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_10001D300;
            v18[3] = &unk_100081E60;
            v19 = v3;
            v10 = [v9 indexOfObjectPassingTest:v18];
            if (v10 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = [v9 objectAtIndexedSubscript:v10];

              goto LABEL_16;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v17 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_16:

    if (v17)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = v17[4];
      v14 = sub_10001CEFC(v11, v12, v13);
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      goto LABEL_18;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_18:
}

void sub_10001CE08(uint64_t a1, char a2)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v5 = *(a1 + 16);
      LOBYTE(v7) = a2;
      geo_isolate_sync_data();
      v6 = [WeakRetained connection];
      [v6 initiateBarrierIfNecessary:0 delegate:a1];
    }
  }
}

uint64_t sub_10001CED0(uint64_t result)
{
  *(*(result + 32) + 8) = *(result + 40);
  *(*(result + 32) + 10) = 1;
  if ((*(result + 40) & 1) == 0)
  {
    *(*(result + 32) + 11) = 0;
  }

  return result;
}

id sub_10001CEFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v28 = a3;
  if (!a1)
  {
    v23 = 0;
    goto LABEL_37;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 16);
  v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v29)
  {
    v25 = 0;
    v23 = 0;
    goto LABEL_34;
  }

  v25 = 0;
  v26 = a1;
  v23 = 0;
  v27 = *v31;
  do
  {
    for (i = 0; i != v29; i = i + 1)
    {
      if (*v31 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v30 + 1) + 8 * i);
      v8 = [v28 isEqual:v7];
      v9 = v8;
      if (!v28 || v8)
      {
        v10 = [*(a1 + 16) objectForKeyedSubscript:v7];
        if (v9)
        {
          v11 = sub_10001D1E0(a1, v10);
        }

        else
        {
          v11 = 0;
        }

        if ([v10 count])
        {
          v12 = 0;
          do
          {
            v13 = [v10 objectAtIndexedSubscript:v12];
            v14 = v13;
            if (v13 && (WeakRetained = objc_loadWeakRetained((v13 + 24))) != 0 && (v16 = WeakRetained, v17 = objc_loadWeakRetained(v14 + 3), v17, v16, v17 != v5))
            {
              ++v12;
            }

            else
            {
              [v10 removeObjectAtIndex:v12];
            }
          }

          while (v12 < [v10 count]);
        }

        if ([v10 count])
        {
          if (v9)
          {
            a1 = v26;
            v18 = sub_10001D1E0(v26, v10);
            v19 = v18;
            if (v18 != v11)
            {
              v20 = v18;

              v23 = v20;
            }

            goto LABEL_29;
          }
        }

        else
        {
          v21 = v25;
          if (!v25)
          {
            v21 = [NSMutableArray arrayWithCapacity:3];
          }

          v25 = v21;
          [v21 addObject:v7];
        }

        a1 = v26;
LABEL_29:

        continue;
      }
    }

    v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v29);
LABEL_34:

  if ([v25 count])
  {
    [*(a1 + 16) removeObjectsForKeys:v25];
  }

LABEL_37:

  return v23;
}

id sub_10001D1E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5 = [v4 lastObject];
    if (sub_100001B04(v5))
    {
      v6 = v5;
    }

    else
    {
      v7 = [v4 indexOfObjectWithOptions:2 passingTest:&stru_100081EA0];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
      }

      else
      {
        v8 = v7;
        v6 = [v4 objectAtIndexedSubscript:v7];
        if (v8 < [v4 count] - 1)
        {
          [v4 removeObjectAtIndex:v8];
          [v4 addObject:v6];
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_10001D2D4(id a1, _GEOOfflinePeerHelper *a2, unint64_t a3, BOOL *a4)
{
  result = sub_100001B04(a2);
  *a4 = result;
  return result;
}

BOOL sub_10001D300(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  *a4 = WeakRetained == *(a1 + 32);

  return *a4;
}

void *sub_10001D448(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_10001CBB4;
    v12 = sub_10001CBC4;
    v13 = 0;
    v5 = a1[1];
    v7 = v3;
    geo_isolate_sync_data();
    a1 = v9[5];

    _Block_object_dispose(&v8, 8);
  }

  return a1;
}

void sub_10001D570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001D598(void *a1)
{
  if ([*(a1[4] + 16) count])
  {
    v2 = a1[4];
    v6 = [*(v2 + 16) objectForKeyedSubscript:a1[5]];
    v3 = sub_10001D1E0(v2, v6);
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

BOOL sub_10001D804(_BOOL8 a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    WeakRetained = sub_10001D448(a1, a3);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    }

    a1 = WeakRetained == v5;
  }

  return a1;
}

void sub_10001DD74(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  if ([v2 count] > 1 || ((objc_msgSend(v2, "lastObject"), v3 = objc_claimAutoreleasedReturnValue(), (v4 = v3) == 0) ? (v5 = 0) : (v5 = objc_loadWeakRetained((v3 + 24))), v6 = a1[6], v5, v4, v5 != v6))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v2;
    v7 = v2;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if (v12)
          {
            WeakRetained = objc_loadWeakRetained((v12 + 24));
            if (WeakRetained)
            {
              v14 = WeakRetained;
              v15 = objc_loadWeakRetained((v12 + 24));
              v16 = a1[6];

              if (v15 != v16)
              {
                v17 = *(*(a1[7] + 8) + 40);
                if (!v17)
                {
                  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
                  v19 = *(a1[7] + 8);
                  v20 = *(v19 + 40);
                  *(v19 + 40) = v18;

                  v17 = *(*(a1[7] + 8) + 40);
                }

                [v17 addObject:v12];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v2 = v21;
  }
}

void sub_10001E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_10001EA8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) setSubscribed:a2];
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

void sub_10001EB30(uint64_t a1)
{
  v10 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) peer];
  v4 = sub_10001EC08(v2, v10, v3);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  sub_10001ED08(*(*(*(a1 + 56) + 8) + 40), 0);
  v7 = sub_10001D1E0(*(a1 + 32), v10);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

id sub_10001EC08(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10001ED74;
      v9[3] = &unk_100081E60;
      v10 = v6;
      v7 = [v5 indexOfObjectPassingTest:v9];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        a1 = 0;
      }

      else
      {
        a1 = [v5 objectAtIndexedSubscript:v7];
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_10001ED08(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    _geo_isolate_lock_data();
    *(a1 + 9) = a2;
    _geo_isolate_unlock();
  }
}

BOOL sub_10001ED74(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  *a4 = WeakRetained == *(a1 + 32);

  return *a4;
}

void sub_10001EDC4(uint64_t a1)
{
  v2 = sub_10001CEFC(*(a1 + 32), 0, *(a1 + 40));
  v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = [v5 count] == 0;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = sub_10001D1E0(*(a1 + 32), v5);
    *(*(*(a1 + 56) + 8) + 24) = v3 == 0;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v4 = sub_10001EC08(*(a1 + 32), v5, *(a1 + 48));
      *(*(*(a1 + 56) + 8) + 24) = v4 == v3;
    }
  }
}

void sub_10001EEC4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v6 = [NSMutableArray arrayWithCapacity:3];
    [*(*(a1 + 32) + 16) setObject:v6 forKeyedSubscript:*(a1 + 40)];
    v2 = v6;
  }

  v7 = v2;
  v3 = sub_10001EC08(*(a1 + 32), v2, *(a1 + 48));
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id *sub_10001EF78(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = _GEOOfflinePeerHelper;
    v7 = objc_msgSendSuper2(&v13, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 3, v5);
      v8 = [v6 copy];
      v9 = a1[4];
      a1[4] = v8;

      v10 = geo_isolater_create_with_format();
      v11 = a1[2];
      a1[2] = v10;

      *(a1 + 12) = 0;
      *(a1 + 5) = 0;
    }
  }

  return a1;
}

void sub_10001F034(uint64_t *a1)
{
  v5 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v2 = sub_10001D1E0(a1[4], v5);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [v5 removeObject:*(*(a1[7] + 8) + 40)];
  [v5 addObject:*(*(a1[7] + 8) + 40)];
}

void sub_10001F0D8(uint64_t *a1)
{
  v5 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v2 = sub_10001D1E0(a1[4], v5);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (([v5 containsObject:*(*(a1[7] + 8) + 40)] & 1) == 0)
  {
    [v5 insertObject:*(*(a1[7] + 8) + 40) atIndex:0];
  }
}

void sub_10001F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void *sub_10001F758(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 8);
  v1 = 10;
  while (*(result[4] + v1) != 1)
  {
LABEL_5:
    if (++v1 == 13)
    {
      return result;
    }
  }

  v2 = *(result[6] + 8);
  if (*(v2 + 24) == 4)
  {
    *(v2 + 24) = v1 - 10;
    *(result[4] + v1) = 0;
    goto LABEL_5;
  }

  *(*(result[7] + 8) + 24) = 1;
  return result;
}

uint64_t sub_10001F7C4(uint64_t a1)
{
  v2 = sub_10001CEFC(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FA18(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 48) peer];
  v5 = sub_10001EC08(v3, v2, v4);

  if (v5)
  {
    v6 = sub_10001D1E0(*(a1 + 32), v2);
    *(*(*(a1 + 56) + 8) + 24) = v6 == v5;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v7 = [_GEOOfflinePeerHelper alloc];
    v8 = [*(a1 + 48) peer];
    v5 = sub_10001EF78(&v7->super.isa, v8, *(a1 + 40));

    sub_10001ED08(v5, 0);
    if (!v2)
    {
      v2 = [NSMutableArray arrayWithCapacity:5];
      [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:*(a1 + 40)];
    }

    [v2 insertObject:v5 atIndex:0];
    v9 = GEOGetOfflineServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "via fetch state: cohort %{public}@ added peer %{public}@", &v11, 0x16u);
    }
  }
}

uint64_t sub_10001FD1C()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_100095FE0;
  v5 = qword_100095FE0;
  if (!qword_100095FE0)
  {
    v6 = *off_100081F10;
    v7 = *off_100081F20;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_100095FE0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_10001FE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FE48(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100095FE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10001FEE0()
{
  if (!sub_10001FD1C())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

id sub_10001FF30()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100095FE8;
  v7 = qword_100095FE8;
  if (!qword_100095FE8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100020010;
    v3[3] = &unk_1000830D0;
    v3[4] = &v4;
    sub_100020010(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10001FFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100020010(uint64_t a1)
{
  sub_10001FEE0();
  result = objc_getClass("BGSystemTaskScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100095FE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_100020080(v3);
  }

  return result;
}

id sub_100020080()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100095FF0;
  v7 = qword_100095FF0;
  if (!qword_100095FF0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100020160;
    v3[3] = &unk_1000830D0;
    v3[4] = &v4;
    sub_100020160(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100020148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100020160(uint64_t a1)
{
  sub_10001FEE0();
  result = objc_getClass("BGNonRepeatingSystemTaskRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100095FF0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_1000201D0(v3);
  }

  return result;
}

id sub_1000201D0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100095FF8;
  v7 = qword_100095FF8;
  if (!qword_100095FF8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000202B0;
    v3[3] = &unk_1000830D0;
    v3[4] = &v4;
    sub_1000202B0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100020298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000202B0(uint64_t a1)
{
  sub_10001FEE0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BGRepeatingSystemTaskRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100095FF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(GEOMAResource *)v2 .cxx_destruct];
  }
}

void sub_100020B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100020CAC;
    v5[3] = &unk_100081FB0;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

id sub_100020BFC()
{
  if (qword_100096008 != -1)
  {
    dispatch_once(&qword_100096008, &stru_100081F38);
  }

  v1 = qword_100096000;

  return v1;
}

void sub_100020C68(id a1)
{
  qword_100096000 = os_log_create("com.apple.GeoServices", "MAResource");

  _objc_release_x1();
}

id sub_100020FD8()
{
  if (qword_100096018 != -1)
  {
    dispatch_once(&qword_100096018, &stru_100082020);
  }

  v1 = qword_100096010;

  return v1;
}

void sub_10002103C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v9 = sub_100020FD8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021188;
    block[3] = &unk_100083738;
    v10 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v16 = v10;
    v17 = *(a1 + 48);
    dispatch_async(v9, block);

    v8 = v16;
    goto LABEL_5;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100021198;
    v11[3] = &unk_100081F60;
    v13 = v6;
    v14 = a2;
    v12 = v5;
    dispatch_async(v7, v11);

    v8 = v13;
LABEL_5:
  }
}

void sub_1000211B0(id a1)
{
  qword_100096010 = geo_dispatch_queue_create();

  _objc_release_x1();
}

uint64_t sub_100021F94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100021FAC(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 _removeResourceAt:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

void sub_1000221A8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 length];
  if (v5 || !v6)
  {
    if (!v5)
    {
      v5 = [NSError GEOErrorWithCode:-8];
    }

    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(GEOPairedDeviceServiceReply);
    [v7 setResponseData:v8];
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100022408(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v9 = a2;
  v10 = objc_alloc_init(GEOLocationShiftingCacheItem);
  [v10 setAddDate:v9];

  [v10 setCoordinate:{a3, a4}];
  [v10 setRadiusMeters:a5];
  [*(a1 + 32) addObject:v10];
}

id sub_1000224B8(uint64_t a1)
{
  [*(a1 + 32) setItems:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 send];
}

id sub_1000228EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  [*(a1 + 32) setFunction:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

id sub_100022A6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  [*(a1 + 32) setFunction:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

id sub_100022D7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setMetadata:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

id sub_100022ED8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setKeys:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

id sub_1000230AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setExists:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

id sub_100023274(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setData:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

uint64_t sub_10002336C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100096020 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100023404()
{
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_100096020;
  v8 = qword_100096020;
  if (!qword_100096020)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_10002336C;
    v2[4] = &unk_1000830A8;
    v3 = &v5;
    v4 = v2;
    v9 = *off_100082138;
    v10 = *off_100082148;
    v11 = 0;
    v6[3] = _sl_dlopen();
    qword_100096020 = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  v1 = v2[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_100023544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100023560(uint64_t a1)
{
  sub_100023404();
  result = objc_getClass("MAAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100096028 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_1000235D0(v3);
  }

  return result;
}

Class sub_1000235D0(uint64_t a1)
{
  sub_100023404();
  result = objc_getClass("MAAssetQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100096030 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return sub_100023640();
  }

  return result;
}

id sub_100023640()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100096038;
  v7 = qword_100096038;
  if (!qword_100096038)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100023720;
    v3[3] = &unk_1000830D0;
    v3[4] = &v4;
    sub_100023720(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100023708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100023720(uint64_t a1)
{
  sub_100023404();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADownloadOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100096038 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(_GEOLocationShifterLocalProxy *)v2 .cxx_destruct];
  }
}

void sub_100023918(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000239F4;
  block[3] = &unk_100083738;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

void sub_100023C14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError GEOErrorWithCode:-10];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100023C80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023D54;
  block[3] = &unk_100083738;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_100023D54(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) toServerResponse];
  v3 = [v4 data];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void sub_1000241A0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12 && (v6 = [GEOLocationShiftFunctionResponse alloc], [*(a1 + 32) coordinate], (v9 = objc_msgSend(v6, "initWithPolyLocationShiftResponse:originalCoordinate:version:", v12, +[GEOLocationShifter locationShiftFunctionVersion](GEOLocationShifter, "locationShiftFunctionVersion"), v7, v8)) != 0))
  {
    v10 = v9;
    if (*(a1 + 64) == 1)
    {
      v11 = [*(a1 + 40) persistentCache];
      [v11 storeShiftResponse:v10];
    }
  }

  else
  {
    if (!v5)
    {
      v5 = [NSError GEOErrorWithCode:-13];
    }

    v10 = 0;
  }

  [*(a1 + 40) _callCompletionHandler:*(a1 + 48) withRequestedCoordinate:*(a1 + 32) reduceRadius:v10 forResponse:v5 error:*(a1 + 56)];
}

id sub_100024484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    return [v5 _callCompletionHandler:*(a1 + 64) withRequestedCoordinate:*(a1 + 40) reduceRadius:a2 forResponse:a4 error:*(a1 + 72)];
  }

  else
  {
    return [v5 _doNetworkRequestForLatLng:*(a1 + 40) reduceRadius:*(a1 + 48) traits:*(a1 + 56) auditToken:*(a1 + 80) shouldCache:*(a1 + 64) completionHandler:*(a1 + 72)];
  }
}

void sub_1000245D0(uint64_t a1)
{
  if ([*(a1 + 32) length] && (v2 = GeoServicesConfig_LocationShiftPersistenceEnabled[1], GEOConfigGetBOOL()))
  {
    v3 = GeoServicesConfig_LocationShiftSkipCLAuthCheckAllowlist[1];
    GEOConfigGetArray();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v4 = v32 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v5)
    {
      v6 = *v32;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v32 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          if ([v8 hasSuffix:@"*"])
          {
            v9 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];
            v10 = [*(a1 + 32) hasPrefix:v9];

            if (v10)
            {
              goto LABEL_21;
            }
          }

          else if ([*(a1 + 32) isEqualToString:v8])
          {
LABEL_21:
            v15 = 1;
            v16 = v4;
            goto LABEL_22;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v11 = qword_100095F90;
    v38 = qword_100095F90;
    if (!qword_100095F90)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000A1D4;
      v41 = &unk_1000830D0;
      v42 = &v35;
      sub_10000A1D4(buf);
      v11 = v36[3];
    }

    v12 = v11;
    _Block_object_dispose(&v35, 8);
    v13 = v12;
    v14 = [*(a1 + 40) bundleId];
    v30 = 0;
    v15 = [v12 _checkAndExerciseAuthorizationForBundleID:v14 error:&v30];
    v16 = v30;

    if (v16)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unexpected error checking CL auth: %@", buf, 0xCu);
      }

      v15 = 0;
LABEL_22:
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = "NO";
    v19 = *(a1 + 32);
    if (v15)
    {
      v18 = "YES";
    }

    *buf = 138412546;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Can use persistent cache for %@? %s", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v25 = *(a1 + 48);
  v20 = *(v25 + 24);
  block[2] = sub_100024A04;
  block[3] = &unk_100082168;
  v21 = *(&v25 + 1);
  v22 = *(a1 + 40);
  v29 = v15;
  v23 = *(a1 + 64);
  *&v24 = v22;
  *(&v24 + 1) = v23;
  v27 = v25;
  v28 = v24;
  dispatch_async(v20, block);
}

void sub_100024F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024F58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained persistentCache];
    [v2 removeAllShiftEntries];

    WeakRetained = v3;
  }
}

uint64_t sub_100025170(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100025204(id a1)
{
  qword_100096048 = objc_alloc_init(_GEOLocationShiftRequestConfig);

  _objc_release_x1();
}

void sub_100025418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100025448(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 8);

  return [v6 removeObjectForKey:v5];
}

void sub_1000259C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(*(a1 + 32) + 16);
  v12 = *(a1 + 40);
  v9 = a4;
  v10 = a3;
  v11 = a2;
  geo_isolate_sync();
  (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48), v10, v11, v9);
}

void sub_100025DBC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v11 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  geo_isolate_sync();
  (*(*(a1 + 48) + 16))(*(a1 + 48), v8, v7, v9, v10);
}

void sub_100026424(id a1)
{
  qword_100096050 = os_log_create("com.apple.GeoServices", "ImageService");

  _objc_release_x1();
}

uint64_t sub_1000264A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100096060 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10002653C()
{
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100096060;
  v9 = qword_100096060;
  if (!qword_100096060)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000264A4;
    v3[4] = &unk_1000830A8;
    v4 = &v6;
    v5 = v3;
    v10 = *off_100082308;
    v11 = *off_100082318;
    v12 = 0;
    v7[3] = _sl_dlopen();
    qword_100096060 = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_100026680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000266A0(uint64_t a1)
{
  v2 = sub_10002653C();
  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100096068 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000268DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000268F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002690C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = [*(a1 + 40) request];
  v3 = [v2 member:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100026B70(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) request];
  [v1 addObject:v2];
}

void sub_100026BD0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  geo_isolate_sync_data();
  [*(a1 + 48) setResponse:{v8, _NSConcreteStackBlock, 3221225472, sub_100026CB4, &unk_100083940, v9}];

  [*(a1 + 48) setError:v7];
  [*(a1 + 48) send];
}

void sub_100026CB4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) request];
  [v1 removeObject:v2];
}

void sub_100026DBC(void (*a1)(void), void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  v10 = GEOConfigVersionKey;
  v11 = [v9 getConfigValueForKey:GEOConfigVersionKey countryCode:0 options:0 source:0];
  if (([v11 isEqual:&off_100088618] & 1) == 0)
  {
    v19 = v10;
    v12 = a1();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v5 getConfigValueForKey:v17 countryCode:0 options:0 source:0];
          [v7 setConfigValue:v18 forKey:v17 options:0 synchronous:1];
          [v5 setConfigValue:0 forKey:v17 options:0 synchronous:1];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v9 setConfigValue:&off_100088618 forKey:v19 options:0 synchronous:1];
  }
}

void sub_100026F98(void *a1)
{
  v1 = a1;
  v2 = [v1 getConfigValueForKey:@"DisableSundanceCleanup" countryCode:0 options:0 source:0];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 BOOLValue])
      {
        v3 = GEOGetUserDefaultsLog();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
LABEL_7:

          goto LABEL_33;
        }

        *buf = 0;
        v4 = "Sundance cleanup disabled, not running";
        v5 = v3;
        v6 = 2;
LABEL_6:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v4, buf, v6);
        goto LABEL_7;
      }
    }
  }

  v7 = +[GEOPlatform sharedPlatform];
  if ([v7 isInternalInstall])
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [&off_100089060 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(&off_100089060);
        }

        v14 = [v1 getConfigValueForKey:*(*(&v24 + 1) + 8 * i) countryCode:0 options:0 source:0];

        if (v14)
        {
          ++v11;
        }

        if (v11 >= v8)
        {
          v15 = GEOGetUserDefaultsLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v30 = v11;
            v31 = 1024;
            v32 = v8;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found %d keys (met threshold %d) running Sundance cleanup", buf, 0xEu);
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v16 = [&off_100089060 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v21;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v21 != v18)
                {
                  objc_enumerationMutation(&off_100089060);
                }

                [v1 setConfigValue:0 forKey:*(*(&v20 + 1) + 8 * j) options:0 synchronous:1];
              }

              v17 = [&off_100089060 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v17);
          }

          goto LABEL_33;
        }
      }

      v10 = [&off_100089060 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    if (v11)
    {
      v3 = GEOGetUserDefaultsLog();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      *buf = 67109376;
      v30 = v11;
      v31 = 1024;
      v32 = v8;
      v4 = "Found %d keys (under threshold %d) NOT running Sundance cleanup";
      v5 = v3;
      v6 = 14;
      goto LABEL_6;
    }
  }

LABEL_33:
}

void sub_1000279D4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:GEOTileServerLocalProxyForceExplicitProactiveTileDownloadRunNotification object:*(a1 + 32)];
}

void sub_100027AE4(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"urgency"];

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bytes"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = v5;
    v10 = v3;
    v11 = *(a1 + 32);
    geo_dispatch_async_qos();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [NSError GEOErrorWithCode:-12 reason:@"urgency & space must be a number"];
    v8 = [NSDictionary _geo_replyDictionaryForError:v7 key:@"err"];
    [v6 sendReply:v8];
  }
}

void sub_100027C8C(id *a1)
{
  v2 = +[GEODiskSpaceManager sharedManager];
  v3 = [v2 freePurgableDiskSpace:objc_msgSend(a1[4] urgency:{"unsignedLongLongValue"), objc_msgSend(a1[5], "intValue")}];

  v6 = @"bytes";
  v4 = [NSNumber numberWithUnsignedLongLong:v3];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  [a1[6] sendReply:v5];
}

void sub_100027E30(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"urgency"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[GEODiskSpaceManager sharedManager];
    v5 = [v4 purgableDiskSpaceForUrgency:{objc_msgSend(v3, "intValue")}];

    v10 = @"bytes";
    v6 = [NSNumber numberWithUnsignedLongLong:v5];
    v11 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    [*(a1 + 32) sendReply:v7];
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = [NSError GEOErrorWithCode:-12 reason:@"urgency must be a number"];
    v9 = [NSDictionary _geo_replyDictionaryForError:v7 key:@"err"];
    [v8 sendReply:v9];
  }
}

id sub_100028974(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  [v7 setNames:a2];
  [*(a1 + 32) setPaths:v9];

  [*(a1 + 32) setError:v8];
  v10 = *(a1 + 32);

  return [v10 send];
}

void sub_100028D30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError GEOErrorWithCode:-10];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100028D9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = objc_alloc_init(GEOPairedDeviceConfigureSubscriptionShouldSyncReply);
    (*(*(a1 + 32) + 16))();
  }
}

id sub_1000291AC(void *a1)
{
  result = [*(a1[4] + 24) containsObject:a1[5]];
  *(*(a1[7] + 8) + 24) = result;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v3 = *(a1[4] + 32);
    if (!v3)
    {
      v4 = +[NSMutableDictionary dictionary];
      v5 = a1[4];
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      v3 = *(a1[4] + 32);
    }

    v8 = a1[5];
    v7 = a1[6];

    return [v3 setObject:v7 forKey:v8];
  }

  return result;
}

id sub_10002924C(void *a1)
{
  result = [*(a1[4] + 40) containsObject:a1[5]];
  *(*(a1[7] + 8) + 24) = result;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v3 = *(a1[4] + 48);
    if (!v3)
    {
      v4 = +[NSMutableDictionary dictionary];
      v5 = a1[4];
      v6 = *(v5 + 48);
      *(v5 + 48) = v4;

      v3 = *(a1[4] + 48);
    }

    v8 = a1[5];
    v7 = a1[6];

    return [v3 setObject:v7 forKey:v8];
  }

  return result;
}

void sub_100029410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029428(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100029440(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) objectEnumerator];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000295E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000295FC(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) objectEnumerator];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id *sub_100029990(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v5 = a1[2];
    _geo_isolate_lock_data();
    a1 = [a1[5] containsObject:v3];
    _geo_isolate_unlock();
  }

  return a1;
}

void sub_10002ACB8(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a1[4];
    v3 = a1[5];
    v6 = a1[6];
    v4 = a2;
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [v2 broadcastState:v4 forIdentifier:v3 fromPairedDevice:0 toObservers:{v5, v6}];
  }
}

void sub_10002AD68(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a1[4];
    v3 = a1[5];
    v6 = a1[6];
    v4 = a2;
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [v2 broadcastState:v4 forIdentifier:v3 fromPairedDevice:1 toObservers:{v5, v6}];
  }
}

id sub_10002AF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 setError:?];
  }

  else
  {
    [v4 setAvailableBytes:a2];
  }

  v5 = *(a1 + 32);

  return [v5 send];
}

id sub_10002B034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setSerializedSummary:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

id sub_10002B188(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setError:a2];
  }

  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_10002B2D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setError:a2];
  }

  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_10002B400(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setSerializedReply:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

void sub_10002B56C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_100002284(*(a1 + 40), a2);
    [*(a1 + 32) setIdentifiers:v4];
    [*(a1 + 32) send];
  }

  else
  {
    [*(a1 + 32) setError:?];
    v3 = *(a1 + 32);

    [v3 send];
  }
}

uint64_t sub_10002B7B4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 containsString:@"*"])
  {
    v7 = GEOGetSubscriptionsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 bundleIdentifier];
      *buf = 138543362;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Attempt from peer '%{public}@' to add subscription with wildcard identifier", buf, 0xCu);
    }

    if (a3)
    {
      [NSError GEOErrorWithCode:-12 reason:@"Cannot add a map subscription with an identifier containing wildcards ('*')"];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_28;
  }

  v10 = sub_1000020A0(v6);
  if ([v10 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          if (_GEOMapDataSubscriptionIdentifierIsCompatible())
          {
            v19 = GEOGetSubscriptionsLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = [v6 bundleIdentifier];
              *buf = 138543875;
              v28 = v20;
              v29 = 2113;
              v30 = v5;
              v31 = 2114;
              v32 = v5;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Peer '%{public}@' is entitled for identifier '%{private}@' (entitlement value: %{public}@')", buf, 0x20u);
            }

            v9 = 1;
            goto LABEL_27;
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = GEOGetSubscriptionsLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v6 bundleIdentifier];
      *buf = 138543619;
      v28 = v18;
      v29 = 2113;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Attempt from peer '%{public}@' to add subscription with unentitled identifier: '%{private}@'", buf, 0x16u);
    }

    if (!a3)
    {
      goto LABEL_26;
    }

    [NSString stringWithFormat:@"Identifier mismatch for entitlement '%@'", @"com.apple.geoservices.map-subscriptions"];
  }

  else
  {
    if (!a3)
    {
      goto LABEL_26;
    }

    [NSString stringWithFormat:@"Missing or incorrect entitlement '%@'", @"com.apple.geoservices.map-subscriptions"];
  }
  v21 = ;
  *a3 = [NSError GEOErrorWithCode:-5 reason:v21];

LABEL_26:
  v9 = 0;
LABEL_27:

LABEL_28:
  return v9;
}

id sub_10002BB20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setError:a2];
  }

  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_10002BC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setSubscriptionsInfo:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

id sub_10002BE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 setError:?];
  }

  else
  {
    [v4 setSizeInBytes:a2];
  }

  v5 = *(a1 + 32);

  return [v5 send];
}

void sub_10002C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C0B8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) requestUUID];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 40);
  v9 = [v7 requestUUID];
  [v8 removeObjectForKey:v9];
}

void sub_10002C448(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(*(a1 + 40) + 32);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_10002C5C4;
    v11 = &unk_100083940;
    v12 = *(a1 + 40);
    v13 = v6;
    geo_isolate_sync_data();
  }

  [*(a1 + 48) setSizeInBytes:{a2, v8, v9, v10, v11, v12}];
  [*(a1 + 48) setError:v5];
  [*(a1 + 48) send];
}

void sub_10002C524(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) requestUUID];
  [v2 setObject:v6 forKey:v7];
}

void sub_10002C6E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [a2 timeIntervalSinceReferenceDate];
    [*(a1 + 32) setTimestamp:?];
  }

  [*(a1 + 32) setError:v5];
  [*(a1 + 32) send];
}

void sub_10002CC1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 dataTypes];
          if (([*(a1 + 40) dataTypes] & v12) != 0)
          {
            v13 = [v11 region];
            v14 = [*(a1 + 40) region];
            v15 = [v13 containsRegion:v14];

            if (v15)
            {
              v8 = 1;
              goto LABEL_13;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    [*(a1 + 32) setSufficientlyContained:v8];
  }

  else
  {
    [*(a1 + 32) setError:a3];
  }

  [*(a1 + 32) send];
}

id sub_10002CFA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setState:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

id sub_10002CFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setState:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

id sub_10002D26C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setError:?];
  }

  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_10002D58C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setSubscription:a2];
  }

  else
  {
    [v3 setError:?];
  }

  v4 = *(a1 + 32);

  return [v4 send];
}

void sub_10002D7D8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [[GEOMapSubscriptionsFetchReply alloc] initWithRequest:*(a1 + 32)];
  v7 = v6;
  if (v5)
  {
    [v6 setError:v5];
  }

  else
  {
    [v6 setSubscriptions:v8];
  }

  [v7 send];
}

void sub_10002DEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DF04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002DF1C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 24);
  v9 = [v7 identifier];
  [v8 removeObject:v9];
}

void sub_10002E3E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) identifier];
  [v1 addObject:v2];
}

void sub_10002E440(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_alloc_init(GEOImageServiceImage);
    [v4 setImageId:*(a1 + 32)];
    [v4 setImage:v3];

    v5 = *(*(a1 + 40) + 16);
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = v4;
    v6 = v4;
    geo_isolate_sync_data();
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_10002E550(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10002DF04;
  v21 = sub_10002DF14;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10002DF04;
  v15 = sub_10002DF14;
  v16 = 0;
  v7 = *(a1 + 32);
  v2 = *(v7 + 16);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v8 = *(&v7 + 1);
  v9 = v6;
  v10 = *(a1 + 64);
  geo_isolate_sync();
  if (v18[5])
  {
    [*(a1 + 64) setResponse:?];
LABEL_5:
    [*(a1 + 64) send];
    goto LABEL_6;
  }

  if (v12[5])
  {
    [*(a1 + 64) setError:?];
    goto LABEL_5;
  }

LABEL_6:

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_10002E728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10002E74C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 containsObject:v3];

  v5 = *(*(a1 + 32) + 24);
  v6 = [*(a1 + 40) identifier];
  [v5 removeObject:v6];

  v7 = [*(a1 + 40) request];
  if ((v4 & 1) == 0)
  {
    v18 = sub_10002EC24();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Request was canceled while consulting the disk cache", buf, 2u);
    }

    v19 = [NSError GEOErrorWithCode:-2 reason:0];
    v20 = *(*(a1 + 72) + 8);
    v7 = *(v20 + 40);
    *(v20 + 40) = v19;
    goto LABEL_18;
  }

  if (![*(a1 + 48) count])
  {
    v21 = sub_10002EC24();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "All assets for request were found in the disk cache", buf, 2u);
    }

    v22 = objc_alloc_init(GEOImageServiceResponse);
    v23 = *(*(a1 + 80) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    [*(*(*(a1 + 80) + 8) + 40) setStatus:0];
    v25 = [*(a1 + 40) request];
    [*(*(*(a1 + 80) + 8) + 40) setWidth:{objc_msgSend(v25, "width")}];

    v26 = [*(a1 + 40) request];
    [*(*(*(a1 + 80) + 8) + 40) setHeight:{objc_msgSend(v26, "height")}];

    [*(*(*(a1 + 80) + 8) + 40) setImages:*(a1 + 56)];
    goto LABEL_18;
  }

  v8 = [*(a1 + 56) count];
  v9 = sub_10002EC24();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      v11 = [*(a1 + 56) count];
      v12 = [*(a1 + 40) request];
      v13 = [v12 imageIds];
      v14 = [v13 count];
      v15 = [*(a1 + 48) count];
      *buf = 134218496;
      v44 = v11;
      v45 = 2050;
      v46 = v14;
      v47 = 2050;
      v48 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%lu of %{public}llu assets for request were found in the disk cache. Will issue network request for the remaining %{public}llu.", buf, 0x20u);
    }

    v16 = [*(a1 + 40) request];
    v17 = [v16 copy];

    [v17 setImageIds:*(a1 + 48)];
    v7 = v17;
    if (!v17)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Zero assets for request were found in the disk cache. Will issue original request to network", buf, 2u);
  }

  if (v7)
  {
LABEL_17:
    v27 = *(*(a1 + 32) + 32);
    v28 = [*(a1 + 40) identifier];
    [v27 setObject:v7 forKey:v28];

    v29 = +[GEOImageServiceServerRequester sharedRequester];
    v30 = [*(a1 + 40) preferredAuditToken];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10002EC78;
    v40[3] = &unk_100082770;
    v36 = *(a1 + 32);
    v31 = *(&v36 + 1);
    v32 = *(a1 + 56);
    v33 = *(a1 + 64);
    *&v34 = v32;
    *(&v34 + 1) = v33;
    v41 = v36;
    v42 = v34;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10002EED4;
    v37[3] = &unk_100082798;
    v35 = *(a1 + 40);
    v37[4] = *(a1 + 32);
    v38 = v35;
    v39 = *(a1 + 64);
    [v29 startSimpleImageServiceRequest:v7 auditToken:v30 finished:v40 networkActivity:0 error:v37];

LABEL_18:
  }
}

id sub_10002EC24()
{
  if (qword_100096078 != -1)
  {
    dispatch_once(&qword_100096078, &stru_1000827E0);
  }

  v1 = qword_100096070;

  return v1;
}

void sub_10002EC78(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10002EFFC;
  v29 = &unk_100083940;
  v30 = v5;
  v31 = v4;
  geo_isolate_sync_data();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = v3;
  obj = [v3 images];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = *(*(a1 + 32) + 8);
        v13 = [v11 image];
        v14 = [v11 imageId];
        v15 = [*(a1 + 40) request];
        v16 = [v15 width];
        v17 = [*(a1 + 40) request];
        [v12 addData:v13 forIdentifier:v14 width:v16 height:{objc_msgSend(v17, "height")}];
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }

  v18 = [v20 images];
  v19 = [v18 mutableCopy];

  [v19 addObjectsFromArray:*(a1 + 48)];
  [v20 setImages:v19];
  [*(a1 + 56) setResponse:v20];
  [*(a1 + 56) send];
}

void sub_10002EED4(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = a2;
  geo_isolate_sync_data();
  [*(a1 + 48) setError:{v5, _NSConcreteStackBlock, 3221225472, sub_10002EF9C, &unk_100083940, v6}];

  [*(a1 + 48) send];
}

void sub_10002EF9C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 removeObjectForKey:v2];
}

void sub_10002EFFC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 removeObjectForKey:v2];
}

void sub_10002F05C(id a1)
{
  qword_100096070 = os_log_create("com.apple.GeoServices", "ImageService");

  _objc_release_x1();
}

id sub_10002F0A0(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 addObject:v3];
}

void sub_10002F900(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) peer];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = GEOGetUserDefaultsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 40) peer];
      v7 = [*(a1 + 40) keys];
      *v11 = 138412546;
      *&v11[4] = v6;
      *&v11[12] = 2112;
      *&v11[14] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Peer %@ removing listeners for: %@", v11, 0x16u);
    }

    v8 = [*(a1 + 40) keys];
    v9 = v4[2];
    *v11 = _NSConcreteStackBlock;
    *&v11[8] = 3221225472;
    *&v11[16] = sub_10002FAA4;
    v12 = &unk_100083940;
    v10 = v8;
    v13 = v10;
    v14 = v4;
    geo_isolate_sync_data();
  }
}

void sub_10002FAA4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 24) removeObject:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10002FC3C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) peer];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = GEOGetUserDefaultsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 40) peer];
      v7 = [*(a1 + 40) keysAndSources];
      v8 = [v7 allKeys];
      *v13 = 138412546;
      *&v13[4] = v6;
      *&v13[12] = 2112;
      *&v13[14] = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Peer %@ adding listeners for: %@", v13, 0x16u);
    }

    v9 = [*(a1 + 40) keysAndSources];
    v10 = [v9 allKeys];
    v11 = v4[2];
    *v13 = _NSConcreteStackBlock;
    *&v13[8] = 3221225472;
    *&v13[16] = sub_10002FE00;
    v14 = &unk_100083940;
    v12 = v10;
    v15 = v12;
    v16 = v4;
    geo_isolate_sync_data();
  }
}

void sub_10002FE00(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 24) addObject:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10003004C(uint64_t a1)
{
  v2 = [_GEODefaultsNotificationHelper alloc];
  v3 = *(a1 + 32);
  if (v2 && (v14.receiver = v2, v14.super_class = _GEODefaultsNotificationHelper, (v4 = objc_msgSendSuper2(&v14, "init")) != 0))
  {
    v13 = v4;
    objc_storeWeak(v4 + 1, v3);
    v5 = geo_isolater_create_with_format();
    v6 = v13[2];
    v13[2] = v5;

    v7 = [NSMutableDictionary dictionaryWithCapacity:6, v3];
    v8 = v13[4];
    v13[4] = v7;

    v9 = [NSMutableSet setWithCapacity:2];
    v10 = v13[5];
    v13[5] = v9;

    v11 = objc_alloc_init(NSCountedSet);
    v12 = v13[3];
    v13[3] = v11;
  }

  else
  {
    v13 = 0;
  }

  [*(*(a1 + 40) + 24) setObject:v13 forKey:*(a1 + 32)];
}

void sub_10003045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000304A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000304B8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) count])
  {
    v2 = [*(*(a1 + 32) + 32) allKeys];
    v3 = [v2 firstObject];

    if (v3)
    {
      *(*(*(a1 + 48) + 8) + 24) = [v3 unsignedIntegerValue];
      v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v3];
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:v3];
      *(*(*(a1 + 64) + 8) + 24) = [*(*(a1 + 32) + 40) containsObject:v3];
      [*(*(a1 + 32) + 40) removeObject:v3];
    }
  }

  if ([*(*(a1 + 32) + 32) count])
  {
    v7 = [*(a1 + 40) connection];
    [v7 initiateBarrierIfNecessary:0 delegate:*(a1 + 32)];
  }
}

void sub_1000306C8(uint64_t a1)
{
  v2 = [NSSet setWithArray:*(a1 + 32)];
  v3 = *(a1 + 56);
  if (_GEOConfigOptionsUseClientCache())
  {
    v8 = v2;
  }

  else
  {
    v8 = [v2 mutableCopy];
    [v8 intersectSet:*(*(a1 + 40) + 24)];
    if (![v8 count])
    {
      v4 = v8;
      v8 = v2;
      goto LABEL_10;
    }
  }

  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v5 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [NSMutableSet setWithCapacity:10];
    [*(*(a1 + 40) + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = [v8 allObjects];
  [v5 addObjectsFromArray:v6];

  if ((*(a1 + 57) & 0x10) != 0)
  {
    [*(*(a1 + 40) + 40) addObject:v4];
  }

  v7 = [*(a1 + 48) connection];
  [v7 initiateBarrierIfNecessary:0 delegate:*(a1 + 40)];

LABEL_10:
}

void sub_100030A78(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(a1 + 32);
  GEOOnce();
}

void sub_100030B08(uint64_t a1)
{
  global_queue = geo_get_global_queue();
  dispatch_async(global_queue, *(a1 + 32));
}

void sub_100031298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000312C4(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) objectEnumerator];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100031774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000317A0(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) objectEnumerator];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100031B18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_1000320DC(id a1)
{
  qword_100096080 = [[NSSet alloc] initWithObjects:{@"ShortSessionDataByAppID", 0}];

  _objc_release_x1();
}

void sub_10003229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000322B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v5 <= v6)
  {
    *a4 = 1;
  }

  else
  {
    v8 = [a2 freePurgableDiskSpace:v5 - v6 urgency:*(a1 + 56)];
    obj = *(a1 + 32);
    objc_sync_enter(obj);
    *(*(*(a1 + 40) + 8) + 24) += v8;
    objc_sync_exit(obj);
  }
}

void sub_100032498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000324B0(uint64_t a1, void *a2)
{
  v3 = [a2 purgableDiskSpaceForUrgency:*(a1 + 48)];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(*(a1 + 40) + 8) + 24) += v3;
  objc_sync_exit(obj);
}

void sub_100032B6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

id sub_100032B98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _validVolume:v5];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 purgableDiskSpaceForUrgency:a2];

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283521;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Returning purgeable space: %{private}llu", buf, 0xCu);
    }

    v11 = [NSNumber numberWithUnsignedLongLong:v9, @"CACHE_DELETE_AMOUNT"];
    v15[1] = @"CACHE_DELETE_VOLUME";
    v16[0] = v11;
    v16[1] = v7;
    v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    v13 = v12;
  }

  else
  {
    v13 = &__NSDictionary0__struct;
  }

  return v13;
}

id sub_100032D28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v7 = [v6 unsignedLongLongValue];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _validVolume:v5];

  if (v9)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 freePurgableDiskSpace:v7 urgency:a2];

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283777;
      v20 = v11;
      v21 = 2049;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Freed %{private}llu bytes of %{private}llu requested", buf, 0x16u);
    }

    v13 = [NSNumber numberWithUnsignedLongLong:v11, @"CACHE_DELETE_AMOUNT"];
    v17[1] = @"CACHE_DELETE_VOLUME";
    v18[0] = v13;
    v18[1] = v9;
    v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v15 = v14;
  }

  else
  {
    v15 = &__NSDictionary0__struct;
  }

  return v15;
}

void sub_100033184(id a1)
{
  qword_100096090 = [[GEODiskSpaceManager alloc] initWithCacheDeleteID:@"com.apple.geod.cachedelete"];

  _objc_release_x1();
}

void sub_10003335C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033410;
  v4[3] = &unk_100082B28;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _determineGeoIPCountryCode:v3 completion:v4];
}

void sub_100033410(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) _getCachedCountryInfoForSource:260];
  v9 = v8;
  if (v8 && ([v8 countryCode], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
  {
    v12 = [v9 countryCode];
    v13 = [v9 dateOfLastUpdate];
  }

  else
  {
    v12 = v6;
    v13 = +[NSDate distantPast];
  }

  v14 = v13;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100033584;
  v20[3] = &unk_100083390;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v21 = v12;
  v22 = v14;
  v23 = v7;
  v24 = v16;
  v17 = v7;
  v18 = v14;
  v19 = v12;
  dispatch_async(v15, v20);
}

void sub_100033978(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained serverProxy:*(a1 + 32) countryCodeDidChange:*(a1 + 40)];
}

void sub_1000339CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained serverProxyProvidersDidChange:*(a1 + 32)];
}

void sub_100033E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100033ED4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100033EEC(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = sub_1000340A0(dword_100062AA8[v3]);
      v7 = [v10 objectForKeyedSubscript:v6];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (*(*(*(a1 + 32) + 8) + 40))
      {
        break;
      }

      v4 = 0;
      v3 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

void sub_100033FAC(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  GEOConfigRemoveBlockListener();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = dispatch_time(0, 1000000000);
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(v7 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034088;
  block[3] = &unk_100082AD8;
  block[4] = v7;
  v9 = v6;
  v10 = a1[7];
  v12 = v9;
  v13 = v10;
  dispatch_after(v5, v8, block);
}

id sub_1000340A0(int a1)
{
  if (a1 <= 3u)
  {
    if (a1 < 4u)
    {
LABEL_3:
      v2 = 0;
      goto LABEL_13;
    }

LABEL_9:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v6 = a1;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: Invalid source: %d", buf, 8u);
    }

    goto LABEL_3;
  }

  switch(a1)
  {
    case 4u:
      v3 = @"geoip";
      break;
    case 6u:
      v3 = @"rd";
      break;
    case 5u:
      v3 = @"mcc";
      break;
    default:
      goto LABEL_9;
  }

  v2 = [NSString stringWithFormat:@"%@:%@", @"local", v3];
LABEL_13:

  return v2;
}

void sub_1000343B0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 && !v8 && [v7 length])
  {
    [*(a1 + 32) removeAllObjects];
LABEL_11:
    [*(a1 + 40) _pickNewCountryCode];
    goto LABEL_12;
  }

  v10 = [*(a1 + 32) firstObject];
  if (v10)
  {
    v11 = v10;
    [*(a1 + 32) removeObjectAtIndex:0];
    v12 = *(*(a1 + 40) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034568;
    block[3] = &unk_1000833E0;
    v16 = v11;
    v13 = v11;
    dispatch_async(v12, block);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v14 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not determine current country code: %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) _callCompletionHandler:v9];
  }

LABEL_12:
}

void sub_1000347E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(*(a1 + 32) + 96);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v14 + 1) + 8 * v11) + 16))(*(*(&v14 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 96);
  *(v12 + 96) = 0;
}

void sub_100034924(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [*(a1 + 32) _getCachedCountryInfoForSource:260];
    v5 = [v4 metadata];
    v6 = [v5 objectForKeyedSubscript:@"signature"];

    if ([v6 isEqual:v3])
    {
      [v4 updateTimestamp];
      [*(a1 + 32) _updateCachedCountryInfo:v4];
      v7 = GEOGetCountryConfigurationLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Network signature unchanged, not updating", buf, 2u);
      }

      v8 = *(a1 + 48);
      v9 = [v4 countryCode];
      (*(v8 + 16))(v8, v9, 0);
      goto LABEL_13;
    }
  }

  v10 = *(a1 + 32);
  v31 = 0;
  v11 = [v10 _checkThrottlerOrScheduleUpdate:&v31];
  v4 = v31;
  if (v11)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = +[GEOApplicationAuditToken currentProcessAuditToken];
    }

    v14 = v13;
    v6 = [v13 overrideTokenWithSecondaryIdentifier:@"com.apple.GeoServices.CountryCode"];

    v9 = GEOGetURL();
    v15 = +[GEORequestCounter sharedCounter];
    v16 = [v15 requestCounterTicketForType:1 auditToken:v6 traits:0];

    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = sub_100033ED4;
    v29 = sub_100033EE4;
    v30 = 0;
    v17 = *(a1 + 32);
    v18 = *(v17 + 8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100034C34;
    v21[3] = &unk_100082A38;
    v21[4] = v17;
    v24 = buf;
    v23 = *(a1 + 48);
    v22 = v3;
    v19 = [GEODataURLSession asynchronousGetURL:v9 kind:1 auditToken:v6 requestCounterTicket:v16 queue:v18 completionHandler:v21];
    v20 = *(v26 + 5);
    *(v26 + 5) = v19;

    objc_storeStrong((*(a1 + 32) + 56), *(v26 + 5));
    _Block_object_dispose(buf, 8);

LABEL_13:
    goto LABEL_14;
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

void sub_100034C34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (*(*(*(a1 + 56) + 8) + 40) == v5)
  {
    *(v4 + 56) = 0;
  }

  v6 = [v3 error];

  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = [v3 error];
    (*(v7 + 16))(v7, 0, v8);
    goto LABEL_15;
  }

  v9 = [v3 receivedData];
  if (![v9 length])
  {

    goto LABEL_14;
  }

  v10 = [v3 receivedData];
  v11 = [v10 length];

  if (v11 >= 0xB)
  {
LABEL_14:
    v8 = [NSError GEOErrorWithCode:-11 reason:@"received GeoIP country code of unexpected length"];
    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v8);
    goto LABEL_15;
  }

  v12 = [NSString alloc];
  v13 = [v3 receivedData];
  v8 = [v12 initWithData:v13 encoding:4];

  if (v8)
  {
    v14 = [[_GEOCountryConfigurationInfo alloc] initWithCountryCode:v8 source:260];
    v15 = &stru_100086258;
    if (*(a1 + 40))
    {
      v15 = *(a1 + 40);
    }

    v21 = @"signature";
    v22 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v14 setMetadata:v16];

    [*(a1 + 32) _updateCachedCountryInfo:v14];
    v17 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138477827;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Received country code '%{private}@' from network", &v19, 0xCu);
    }

    v18 = *(*(a1 + 48) + 16);
  }

  else
  {
    v14 = [NSError GEOErrorWithCode:-11 reason:@"unable to convert GeoIP country code to string"];
    v18 = *(*(a1 + 48) + 16);
  }

  v18();

LABEL_15:
}

void sub_1000353CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000353F0(uint64_t a1)
{
  sub_100001910();
  result = objc_getClass("RDEstimate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000960B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100035444(uint64_t a1)
{
  v2 = sub_100035494();
  result = dlsym(v2, "kRDPriorityWiFiAP");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000960B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100035494()
{
  v0 = sub_100001910();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_1000354F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000960A0 = result;
  return result;
}

id sub_1000356F0(uint64_t a1)
{
  v2 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Update timer fired. Updating country code", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3[4])
  {
    dispatch_source_cancel(v3[4]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v3 = *(a1 + 32);
  }

  return [(dispatch_source_t *)v3 _updateCountryCode:*(a1 + 40)];
}

void sub_1000358AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  v5 = +[GEONetworkObserver sharedNetworkObserver];
  v6 = [v5 isNetworkReachable];

  if (v6)
  {
    v7 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Became reachable. Scheduling country code update", v10, 2u);
    }

    v8 = *(a1 + 32);
    v9 = GeoServicesConfig_CountryConfigurationUpdateTimerInterval[1];
    GEOConfigGetDouble();
    [v8 _scheduleUpdate:4 source:?];
  }
}

void sub_100035AE8(uint64_t a1, void *a2)
{
  [a2 setObject:0 forKeyedSubscript:*(a1 + 32)];
  v3 = GeoServicesConfig_CountryConfigCache[1];
  v4 = GEOConfigGetDictionary();
  v5 = [v4 mutableCopy];

  [v5 setObject:0 forKeyedSubscript:*(a1 + 32)];
  GEOConfigSetDictionary();
}

void sub_100035C9C(uint64_t a1, void *a2)
{
  [a2 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
  v3 = GeoServicesConfig_CountryConfigCache[1];
  v4 = GEOConfigGetDictionary();
  v6 = [v4 mutableCopy];

  v5 = [*(a1 + 40) encodeAsDictionary];
  [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];

  GEOConfigSetDictionary();
}

void sub_100035EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100035ECC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_100035FB4(uint64_t a1)
{
  if (!*(*(a1 + 32) + 72))
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;

    v5 = GeoServicesConfig_CountryConfigCache[1];
    v6 = GEOConfigGetDictionary();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100036090;
    v9[3] = &unk_100082B68;
    v9[4] = *(a1 + 32);
    [v6 enumerateKeysAndObjectsUsingBlock:v9];

    v7 = *(*(a1 + 32) + 72);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100036090(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_GEOCountryConfigurationInfo alloc] initWithDictionary:v5];

  [*(*(a1 + 32) + 72) setObject:v7 forKeyedSubscript:v6];
}

void sub_10003657C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  _Block_object_dispose((v21 - 112), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_1000365B4(uint64_t a1)
{
  v2 = sub_100035494();
  result = dlsym(v2, "kRegulatoryDomainUpdateNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000960A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100036604(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _regulatoryDomainUpdated];
}

void sub_100036644(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  [v3 initializeIfNecessary];

  objc_autoreleasePoolPop(v2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036748;
  block[3] = &unk_1000838C8;
  v10 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  global_queue = geo_get_global_queue();
  v5 = GeoServicesConfig_OverrideCountryCode[1];
  v6 = _GEOConfigAddBlockListenerForKey();
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100036748(uint64_t a1)
{
  v2 = +[GEONetworkObserver sharedNetworkObserver];
  [v2 addNetworkReachableObserver:*(a1 + 32) selector:"_reachabilityChanged:"];
}

void sub_1000367A8(id a1, $464B15F94E0D705FD6D497CD7841E26A a2)
{
  v2 = +[GEOCountryConfiguration sharedConfiguration];
  [v2 updateCountryConfiguration:0];
}

void sub_100036EE8(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 appendString:@" "];
  [*(a1 + 32) appendString:v6];

  [*(a1 + 32) appendString:@": "];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = v15;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = *(a1 + 32);
    if (isKindOfClass)
    {
      [v10 appendString:@"["];
      v11 = *(a1 + 32);
      v12 = [(__CFString *)v15 componentsJoinedByString:@", "];
      [v11 appendString:v12];

      v7 = *(a1 + 32);
      v8 = @"]";
    }

    else
    {
      [v10 appendString:@"{invalid: "];
      v13 = *(a1 + 32);
      v14 = [(__CFString *)v15 description];
      [v13 appendString:v14];

      v7 = *(a1 + 32);
      v8 = @"}";
    }
  }

  [v7 appendString:v8];
}

void sub_100037240(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100020BFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) results];
    *buf = 67109891;
    v19 = a2;
    v20 = 2112;
    v21 = v5;
    v22 = 2113;
    v23 = v7;
    v24 = 2113;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MA query result: %d error: %@ info; %{private}@ resources: %{private}@", buf, 0x26u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000373EC;
  v11[3] = &unk_100082C00;
  v9 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  v16 = *(a1 + 72);
  v17 = a2;
  v14 = v5;
  v15 = *(a1 + 64);
  v10 = v5;
  dispatch_async(v9, v11);
}

void sub_1000373EC(uint64_t a1)
{
  if ([*(a1 + 32) count] || (objc_msgSend(*(a1 + 40), "results"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
  {
    v4 = [*(a1 + 40) results];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000375BC;
    v12[3] = &unk_100082BD8;
    v13 = *(a1 + 56);
    v5 = [v4 _geo_map:v12];

    v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count] + objc_msgSend(v5, "count"));
    if ([*(a1 + 32) count])
    {
      [v6 addObjectsFromArray:*(a1 + 32)];
    }

    if ([v5 count])
    {
      [v6 addObjectsFromArray:v5];
    }

    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"compare:"];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 64) + 16);

    v11();
  }
}

GEOMAResource *sub_1000375BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GEOMAResource alloc] initWithMobileAsset:v3 info:*(a1 + 32)];

  return v4;
}

void sub_1000378A4(uint64_t a1)
{
  v2 = [*(a1 + 32) baseURL];
  v3 = +[NSFileManager defaultManager];
  v26 = 0;
  v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v26];
  v5 = v26;

  if (v5)
  {
    v6 = [v5 domain];
    if ([v6 isEqualToString:NSCocoaErrorDomain])
    {
      v7 = [v5 code];

      if (v7 == 260)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v16 = sub_100020BFC();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_20:

      goto LABEL_21;
    }

    *buf = 138478083;
    v29 = v2;
    v30 = 2112;
    v31 = v5;
    v18 = "Unable to list contents of asset folder %{private}@: %@";
    v19 = v16;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 22;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
    goto LABEL_20;
  }

LABEL_4:
  if ([v4 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [GEOMAResource alloc];
          v15 = [(GEOMAResource *)v14 initWithResourceFolder:v13 info:*(a1 + 40), v22];
          if (v15)
          {
            [*(a1 + 48) addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    v16 = sub_100020BFC();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v17 = *(a1 + 48);
    *buf = 138477827;
    v29 = v17;
    v18 = "Found installed resources: %{private}@";
    v19 = v16;
    v20 = OS_LOG_TYPE_INFO;
    v21 = 12;
    goto LABEL_19;
  }

LABEL_21:
}

void sub_100037CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addKeyValuePair:v5 with:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a1 + 32);
      v8 = [v6 mutableCopy];
      [v7 addKeyValueArray:v5 with:v8];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138543362;
      v12 = v10;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unreachable reached: query parameter value is unexpected type: %{public}@", &v11, 0xCu);
    }
  }
}

void sub_100038268(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  v6 = +[NSNull null];

  if (v6 == v8)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

void sub_1000383C0(id a1)
{
  qword_1000960C0 = [GEOFilePaths urlFor:17];

  _objc_release_x1();
}

void sub_1000385C4(uint64_t a1)
{
  v2 = [*(a1 + 40) baseURLForType:0];
  v3 = +[NSFileManager defaultManager];
  v26 = 0;
  v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v26];
  v5 = v26;

  if (v5)
  {
    v6 = [v5 domain];
    if ([v6 isEqualToString:NSCocoaErrorDomain])
    {
      v7 = [v5 code];

      if (v7 == 260)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = sub_100020BFC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to list contents of metro asset folder: %@", buf, 0xCu);
    }
  }

LABEL_9:
  if ([v4 count])
  {
    v19 = v5;
    v20 = v4;
    v21 = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      v13 = GEOMetroRegionCountryCodeKey;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v22 + 1) + 8 * v14) lastPathComponent];
          if ([v15 length] >= 2 && objc_msgSend(v15, "length") < 4 || objc_msgSend(v15, "isEqualToString:", @"_UNK_"))
          {
            v16 = objc_alloc(*(a1 + 40));
            v27 = v13;
            v28 = v15;
            v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
            v18 = [v16 initWithOverrides:v17];

            if (v18)
            {
              [*(a1 + 32) addObject:v18];
            }
          }

          v14 = v14 + 1;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v11);
    }

    v4 = v20;
    v2 = v21;
    v5 = v19;
  }
}

void sub_100038B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100038B94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100038BAC(uint64_t a1)
{
  v2 = [*(a1 + 40) baseURLForType:1];
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = objc_alloc_init(*(a1 + 40));
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

id sub_100038C98()
{
  v0 = +[NSMutableSet set];
  v1 = 0;
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = sub_100038D68(v1, 0);
    if (v4)
    {
      [v0 addObject:v4];
    }

    if (v3)
    {
      v5 = off_100080890;
    }

    else
    {
      v5 = &off_100080898;
    }

    v6 = [(__objc2_class *)*v5 allExisitngInfos];
    if ([v6 count])
    {
      [v0 addObjectsFromArray:v6];
    }

    v2 = 0;
    v1 = 1;
  }

  while ((v3 & 1) != 0);

  return v0;
}

GEOMAResourceInfo_TerritoryRegulatoryInfo *sub_100038D68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 1)
  {
    v4 = objc_alloc_init(GEOMAResourceInfo_TerritoryRegulatoryInfo);
    goto LABEL_5;
  }

  if (!a1)
  {
    v4 = [[GEOMAResourceInfo_MetroRegion alloc] initWithOverrides:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

void sub_100038FFC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    goto LABEL_9;
  }

  if (!(v9 | v10))
  {
    v11 = [NSError GEOErrorWithCode:-8 reason:@"SPI contract violated"];
LABEL_9:
    v13 = v11;
    v14 = [NSDictionary _geo_replyDictionaryForError:v11 key:@"err"];
    goto LABEL_10;
  }

  v12 = [NSMutableDictionary dictionaryWithCapacity:2];
  v13 = v12;
  if (v10)
  {
    [v12 setObject:v10 forKeyedSubscript:@"wifitd"];
  }

  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:@"wifiet"];
  }

  v14 = [v13 copy];
LABEL_10:
  v15 = v14;

  [*(a1 + 32) sendReply:v15];
}

void sub_10003929C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      v10 = @"wifiresp";
      v7 = [v5 data];
      v11 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      goto LABEL_5;
    }

    v6 = [NSError GEOErrorWithCode:-8 reason:@"SPI contract violated"];
  }

  v7 = v6;
  v8 = [NSDictionary _geo_replyDictionaryForError:v6 key:@"err"];
LABEL_5:
  v9 = v8;

  [*(a1 + 32) sendReply:v9];
}

void sub_100039FF8(id *a1, unint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100020BFC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109635;
    v54 = a2;
    v55 = 2112;
    v56 = v8;
    v57 = 2113;
    v58 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Found resources: %d error: %@ resources: %{private}@", buf, 0x1Cu);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10003A540;
  v49[3] = &unk_100082CA0;
  v50 = a1[4];
  v51 = a1[5];
  v10 = objc_retainBlock(v49);
  if ([v7 count])
  {
    v11 = [v7 lastObject];
    if ([v11 isAvailableForUse])
    {
      (v10[2])(v10, v11, 0);
    }

    else
    {
      v13 = [v11 isOnDisk];
      v14 = [a1[6] options];
      v15 = [a1[6] options];
      v16 = [a1[6] options];
      if ((v14 & 1) != 0 && (v15 & 2) != 0 && (v13 & 1) == 0)
      {
        (v10[2])(v10, 0, 0);
      }

      else if (v14)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v23 = [v7 reverseObjectEnumerator];
        v24 = [v23 countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v46;
          while (2)
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v46 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v45 + 1) + 8 * i);
              if ([v28 isAvailableForUse])
              {
                (v10[2])(v10, v28, 0);
                goto LABEL_35;
              }

              if ([v28 isOnDisk])
              {
                v30 = a1[7];
                v42[0] = _NSConcreteStackBlock;
                v42[1] = 3221225472;
                v42[2] = sub_10003A6C8;
                v42[3] = &unk_100082CC8;
                v44 = v10;
                v43 = v11;
                [v43 downloadWithOptions:0 queue:v30 completion:v42];

                goto LABEL_35;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v45 objects:v52 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

LABEL_35:
      }

      else
      {
        v17 = (v16 >> 8) & 1;
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10003A6DC;
        v35[3] = &unk_100082CF0;
        v36 = a1[5];
        v41 = v17;
        v37 = v7;
        v18 = v11;
        v38 = v18;
        v19 = v10;
        v40 = v19;
        v39 = a1[7];
        v20 = objc_retainBlock(v35);
        v21 = v20;
        if (v13)
        {
          v22 = a1[7];
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_10003AAB8;
          v31[3] = &unk_100082D18;
          v33 = v19;
          v32 = v18;
          v34 = v21;
          [v32 downloadWithOptions:0 queue:v22 completion:v31];
        }

        else
        {
          (v20[2])(v20);
        }
      }
    }
  }

  else
  {
    if (!v8)
    {
      if (a2 >= 0xF)
      {
        v12 = [NSString stringWithFormat:@"Unknown(%d)", a2];
      }

      else
      {
        v12 = off_100082D60[a2];
      }

      v29 = [NSString stringWithFormat:@"Received no results or error from MA Query, only code: %d: %@", a2, v12];
      v8 = [NSError GEOErrorWithCode:-8 reason:v29];
    }

    (v10[2])(v10, 0, v8);
  }
}

void sub_10003A540(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isAvailableForUse])
  {
    v7 = [v5 getLocalFileUrl];
    [v7 fileSystemRepresentation];
    v8 = sandbox_extension_issue_file();
    if (v8)
    {
      v9 = [NSData dataWithBytesNoCopy:v8 length:strlen(v8) + 1 freeWhenDone:1];
      [*(a1 + 32) setSandBoxToken:v9];
    }

    else
    {
      v9 = sub_100020BFC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Failed to issue sandbox extension for file: %@", &v10, 0xCu);
      }
    }

    [*(a1 + 40) updateLastAccessedTime];
    [*(a1 + 32) setUrl:v7];
  }

  else
  {
    [*(a1 + 32) setError:v6];
  }

  [*(a1 + 32) send];
}

void sub_10003A6DC(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadOptions];
  v3 = v2;
  if (*(a1 + 72) == 1)
  {
    [v2 setAllowsCellularAccess:1];
    [v3 setAllowsExpensiveAccess:1];
    [v3 setRequiresPowerPluggedIn:0];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [*(a1 + 40) reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v29 + 1) + 8 * v8);
      if ([v9 isAvailableForUse])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v10 = v9;
    v11 = sub_100020BFC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Found older copy already in place.", buf, 2u);
    }

    if (v10)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_11:
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [*(a1 + 40) reverseObjectEnumerator];
  v10 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 isOnDisk])
        {
          v10 = v15;
          v16 = sub_100020BFC();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Found older copy in MobileAssets storage.", buf, 2u);
          }

          goto LABEL_27;
        }
      }

      v10 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

LABEL_28:
  if (([*(a1 + 48) isEqual:v10] & 1) == 0)
  {
    v17 = sub_100020BFC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Enqueued download of newer copy.", buf, 2u);
    }

    [*(a1 + 48) downloadWithOptions:v3];
  }

  if ([v10 isAvailableForUse])
  {
    (*(*(a1 + 64) + 16))();
  }

  else if ([v10 isOnDisk])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10003AB64;
    v21[3] = &unk_100082CC8;
    v18 = *(a1 + 56);
    v23 = *(a1 + 64);
    v22 = v10;
    [v22 downloadWithOptions:0 queue:v18 completion:v21];
  }

  else
  {
    v19 = *(a1 + 64);
    v20 = [NSError GEOErrorWithCode:-20 reason:@"Waiting on at least one version to be downloaded"];
    (*(v19 + 16))(v19, 0, v20);
  }
}

uint64_t sub_10003AAB8(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100020BFC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Latest resource wasn't available, will queue it up", v8, 2u);
    }

    return (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(a1[5] + 16);

    return v7();
  }
}

void sub_10003AB64(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100020BFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Relocated older copy with result %d: %@.", v8, 0x12u);
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_10003AE0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AEE0;
  block[3] = &unk_100083738;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_10003B0B8(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003B448;
  v21 = sub_10003B458;
  v22 = 0;
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003B460;
  v16[3] = &unk_100082F70;
  v16[4] = &v23;
  v16[5] = &v17;
  v5 = *(a1 + 64);
  v6 = v4;
  v7 = v3;
  v8 = v16;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_10003B448;
  v33[4] = sub_10003B458;
  v34 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003B498;
  v27[3] = &unk_100083058;
  v9 = v6;
  v28 = v9;
  v10 = v7;
  v29 = v10;
  v31 = v33;
  v32 = v5;
  v11 = v8;
  v30 = v11;
  [v9 statementForKey:@"FindAsset" statementBlock:v27];

  _Block_object_dispose(v33, 8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003B664;
  v13[3] = &unk_1000836E8;
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = &v17;
  dispatch_async(v12, v13);
  if (v18[5])
  {
    sub_10003B680(*(*(a1 + 32) + 16), v24[3], (Current + kCFAbsoluteTimeIntervalSince1970));
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void sub_10003B374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10003B3AC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B434;
  block[3] = &unk_1000833E0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t sub_10003B448(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003B460(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  return 0;
}

uint64_t sub_10003B498(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindBlobParameter:"@identifier" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v10 = *(*(a1 + 56) + 8);
  v25 = *(v10 + 40);
  v11 = [v8 bindIntParameter:"@width" toValue:v9 inStatement:a2 error:&v25];
  objc_storeStrong((v10 + 40), v25);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 68);
  v14 = *(*(a1 + 56) + 8);
  v24 = *(v14 + 40);
  v15 = [v12 bindIntParameter:"@height" toValue:v13 inStatement:a2 error:&v24];
  objc_storeStrong((v14 + 40), v24);
  if (!v15)
  {
    return 0;
  }

  v16 = sqlite3_step(a2);
  while (v16 == 100)
  {
    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v17 = 1;
    v18 = [*(a1 + 32) blobForColumn:1 inStatment:a2];
    if (!(*(*(a1 + 48) + 16))())
    {
      goto LABEL_11;
    }

    v16 = sqlite3_step(a2);
  }

  if (v16 == 101)
  {
    return 1;
  }

  v19 = *(a1 + 32);
  v20 = *(*(a1 + 56) + 8);
  v23 = *(v20 + 40);
  [v19 reportSQLiteErrorCode:v16 method:@"step" error:&v23];
  v21 = v23;
  v17 = 0;
  v18 = *(v20 + 40);
  *(v20 + 40) = v21;
LABEL_11:

  return v17;
}

id sub_10003B680(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_10003B448;
  v13[4] = sub_10003B458;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003B798;
  v8[3] = &unk_100083030;
  v5 = a1;
  v9 = v5;
  v10 = v13;
  v11 = a2;
  v12 = a3;
  v6 = [v5 executeStatement:@"SetAccessTime" statementBlock:v8];

  _Block_object_dispose(v13, 8);
  return v6;
}

void sub_10003B780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003B798(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = [v5 bindInt64Parameter:"@asset_rowid" toValue:v4 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a1[4];
  v10 = *(a1[5] + 8);
  v13 = *(v10 + 40);
  v11 = [v9 bindInt64Parameter:"@timestamp" toValue:v8 inStatement:a2 error:&v13];
  objc_storeStrong((v10 + 40), v13);
  return v11;
}

void sub_10003B92C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10003B9E4;
  v8 = &unk_100082F20;
  v9 = v3;
  v10 = v2;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v4 executeInTransaction:&v5];
  [*(a1 + 32) _evictIfNecessary];
}

uint64_t sub_10003B9E4(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 48) length];
  v7 = *(a1 + 48);
  v8 = v4;
  v9 = v3;
  v10 = v7;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_10003B448;
  v26[4] = sub_10003B458;
  v27 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10003BBE8;
  v19 = &unk_100083008;
  v11 = v8;
  v20 = v11;
  v12 = v9;
  v21 = v12;
  v23 = v26;
  v24 = v6;
  v25 = v5;
  v13 = v10;
  v22 = v13;
  LODWORD(v10) = [v11 executeStatement:@"AddAsset" statementBlock:&v16];

  _Block_object_dispose(v26, 8);
  if (!v10)
  {
    return 0;
  }

  insert_rowid = sqlite3_last_insert_rowid([*(*(a1 + 32) + 16) sqliteDB]);
  result = sub_10003B680(*(*(a1 + 32) + 16), insert_rowid, (Current + kCFAbsoluteTimeIntervalSince1970));
  if (result)
  {
    *(*(a1 + 32) + 40) += [*(a1 + 48) length];
    return 1;
  }

  return result;
}