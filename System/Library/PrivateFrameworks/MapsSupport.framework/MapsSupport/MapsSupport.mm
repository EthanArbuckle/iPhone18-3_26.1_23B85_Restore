void sub_100001C54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[NavdLocationLeecher sharedLeecher];
    v3 = [v2 lastLeechedLocation];
    [WeakRetained _updateLocationIfAllowed:v3];

    v4 = +[NavdLocationLeecher sharedLeecher];
    [v4 addObserver:WeakRetained];

    v5 = GEOConfigMapsSuggestionsLocationManagerSLCEnabled[1];
    BOOL = GEOConfigGetBOOL();
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (BOOL)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] SLC Enabled? %@", &v16, 0xCu);
    }

    if (BOOL)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Starting SLC monitoring", &v16, 2u);
      }

      [WeakRetained[1] startMonitoringSignificantLocationChanges];
    }

    v10 = GEOConfigMapsSuggestionsLocationManagerVMEnabled[1];
    v11 = GEOConfigGetBOOL();
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if (v11)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] VM Enabled? %@", &v16, 0xCu);
    }

    if (v11)
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Starting visit monitoring", &v16, 2u);
      }

      [WeakRetained[1] startMonitoringVisits];
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446722;
      v17 = "MapsSuggestionsNavdLocationManager.m";
      v18 = 1026;
      v19 = 64;
      v20 = 2082;
      v21 = "[MapsSuggestionsNavdLocationManager onStartImplementation]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v16, 0x1Cu);
    }
  }
}

uint64_t sub_100002138(uint64_t a1)
{
  [*(a1 + 32) _pruneLeachedLocations];
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_10000218C(int a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"gasoline"];
    if ((a1 & 0x100) == 0)
    {
LABEL_3:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"diesel"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_4:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"electric"];
  if ((a1 & 0x1000000) != 0)
  {
LABEL_5:
    [v3 addObject:@"cng"];
  }

LABEL_6:

  return v3;
}

id sub_100002230(int a1)
{
  v1 = sub_10000218C(a1);
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

id sub_100002288(void *a1)
{
  v1 = qword_100075858;
  v2 = a1;
  if (v1 != -1)
  {
    sub_10003D8C4();
  }

  v3 = [qword_100075850 objectForKeyedSubscript:v2];

  v4 = [v3 longLongValue];
  return v4;
}

void sub_1000022F4(id a1)
{
  v3[0] = @"gasoline";
  v3[1] = @"diesel";
  v4[0] = &off_10006A600;
  v4[1] = &off_10006A618;
  v3[2] = @"electric";
  v3[3] = @"cng";
  v4[2] = &off_10006A630;
  v4[3] = &off_10006A648;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_100075850;
  qword_100075850 = v1;
}

void sub_1000024C4(id a1)
{
  v7[0] = &off_10006A600;
  v7[1] = &off_10006A618;
  v8[0] = EAVehicleInfoRangeGasolineKey;
  v8[1] = EAVehicleInfoRangeDieselKey;
  v7[2] = &off_10006A630;
  v7[3] = &off_10006A648;
  v8[2] = EAVehicleInfoRangeElectricKey;
  v8[3] = EAVehicleInfoRangeCNGKey;
  v1 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v2 = qword_100075868;
  qword_100075868 = v1;

  v5[0] = &off_10006A600;
  v5[1] = &off_10006A618;
  v6[0] = EAVehicleInfoHasLowDistanceRangeGasolineKey;
  v6[1] = EAVehicleInfoHasLowDistanceRangeDieselKey;
  v5[2] = &off_10006A630;
  v5[3] = &off_10006A648;
  v6[2] = EAVehicleInfoHasLowDistanceRangeElectricKey;
  v6[3] = EAVehicleInfoHasLowDistanceRangeCNGKey;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v4 = qword_100075870;
  qword_100075870 = v3;
}

uint64_t sub_100002618(uint64_t a1)
{
  v2 = 0;
  v5[0] = MapsEAVehicleConfig_RangeGasoline;
  v5[1] = MapsEAVehicleConfig_RangeDiesel;
  v5[2] = MapsEAVehicleConfig_RangeElectric;
  v5[3] = MapsEAVehicleConfig_RangeCNG;
  v5[4] = MapsEAVehicleConfig_HasLowDistanceRangeGasoline;
  v5[5] = MapsEAVehicleConfig_HasLowDistanceRangeDiesel;
  v5[6] = MapsEAVehicleConfig_HasLowDistanceRangeElectric;
  v5[7] = MapsEAVehicleConfig_HasLowDistanceRangeCNG;
  do
  {
    result = (*(a1 + 16))(a1, *&v5[v2], *(&v5[v2] + 1));
    if (!result)
    {
      break;
    }
  }

  while (v2++ != 7);
  return result;
}

void sub_100002DB8(id a1)
{
  v1 = qword_100075878;
  qword_100075878 = &off_10006B130;
}

uint64_t sub_1000030D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  GEOConfigGetPropertiesForKey();

  return 1;
}

void sub_10000316C(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    if (_GEOConfigHasValue())
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = [NSNumber numberWithInteger:GEOConfigGetInteger()];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
    }
  }
}

id sub_10000333C()
{
  if (qword_1000758C8 != -1)
  {
    sub_10003D900();
  }

  v1 = qword_1000758C0;

  return v1;
}

void sub_100003AFC(id a1)
{
  v1 = [MapsExternalAccessory alloc];
  qword_100075888 = [(MapsExternalAccessory *)v1 initWithPrivateQueue:byte_100075898];

  _objc_release_x1();
}

void sub_100004270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak((v41 - 144));
  _Unwind_Resume(a1);
}

void sub_100004318(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidConnect:v3];
}

void sub_100004374(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidUpdateVehicle:v3];
}

void sub_1000043D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidUpdate:v3];
}

void sub_10000442C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidDisconnect:v3];
}

void sub_100004818(id a1)
{
  v1 = objc_opt_new();
  v13 = sub_10000218C(16843009);
  v25[0] = @"com.apple.maps.FakeExternalAccessory.engine.type";
  v25[1] = @"com.apple.maps.FakeExternalAccessory.engine.low";
  v25[2] = @"com.apple.maps.FakeExternalAccessory.engine.full";
  [NSArray arrayWithObjects:v25 count:3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v12 = *v20;
    do
    {
      v2 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * v2);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v4 = v13;
        v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v16;
          do
          {
            v8 = 0;
            do
            {
              if (*v16 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = [NSString stringWithFormat:@"%@.%@", v3, *(*(&v15 + 1) + 8 * v8)];
              [v1 addObject:v9];

              v8 = v8 + 1;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v6);
        }

        v2 = v2 + 1;
      }

      while (v2 != v14);
      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  v10 = qword_1000758A0;
  qword_1000758A0 = v1;
}

void sub_100004E2C(id a1)
{
  qword_1000758B8 = objc_opt_new();

  _objc_release_x1();
}

void sub_100005C5C(id a1)
{
  qword_1000758C0 = os_log_create("com.apple.Maps", "CarExternalAccessory");

  _objc_release_x1();
}

void sub_100005E04(uint64_t a1, uint64_t a2, double a3)
{
  v4 = [[NavdTTLCacheEntry alloc] initWithRowId:a2 refreshTimestamp:0 state:*(*(a1 + 32) + 32) cacheOperationQueue:a3 cache:?];
  [*(*(a1 + 32) + 24) addObject:v4];
}

void sub_10000674C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 clientInfoStates];
  [v2 callHandlers:v5 withHypothesis:v4];
}

void sub_1000071EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000072EC;
  v7[3] = &unk_100064F08;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v5 = v3;
  v6 = [NSBlockOperation blockOperationWithBlock:v7];
  [*(*(a1 + 32) + 32) addOperation:v6];
}

void sub_1000075B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000076B0;
  v7[3] = &unk_100064F08;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v5 = v3;
  v6 = [NSBlockOperation blockOperationWithBlock:v7];
  [*(*(a1 + 32) + 32) addOperation:v6];
}

void sub_100007B28(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007BE0;
  v3[3] = &unk_100064F58;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  [v2 addOperationWithBlock:v3];
  objc_destroyWeak(&v4);
}

void sub_100007BE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138477827;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Timer fired to remove UUID %{private}@ from list of pending stops.", &v4, 0xCu);
  }

  if (WeakRetained)
  {
    [*(*(a1 + 32) + 56) removeObject:WeakRetained];
  }
}

void sub_100007E44(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100007F70;
  v16 = &unk_100064FA8;
  v4 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v3;
  v5 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v19 = v10;
  v20 = v9;
  v11 = v3;
  v12 = [NSBlockOperation blockOperationWithBlock:&v13];
  [*(*(a1 + 32) + 32) addOperation:{v12, v13, v14, v15, v16, v17}];
}

void sub_1000082C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000083B4;
  v7[3] = &unk_100064FF8;
  v7[4] = v4;
  v8 = v3;
  v12 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = v3;
  [v5 addOperationWithBlock:v7];
}

void sub_10000858C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 handler];
  v5[2](v5, *(a1 + 32));

  v6 = [*(a1 + 32) error];

  if (!v6)
  {
    v7 = +[GEONavdAnalyticsManager sharedManager];
    v8 = [v7 analyticsReporter];
    [v8 recordHypothesisCount:1 forClient:v9];
  }
}

void sub_1000089E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    if (v4)
    {
      (*(v4 + 16))(v4, *(a1 + 32), *(a1 + 40), 0, *(a1 + 48), *(a1 + 64));
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsCommuteWindowServer.m";
      v8 = 1026;
      v9 = 71;
      v10 = 2082;
      v11 = "[MapsSuggestionsCommuteWindowXPCPeer commuteWindowIs:forNextDestination:travelTime:commuteRouteSet:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

id sub_100008ECC(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_doomEngineWrapper: %@", &v8, 0xCu);
  }

  result = *(*(a1 + 32) + 16);
  if (result)
  {
    return [result getCurrentCommuteStatus];
  }

  return result;
}

void sub_10000956C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v26 - 144));
  _Unwind_Resume(a1);
}

void sub_1000095CC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 connection];
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPC connection %@ became invalid", buf, 0xCu);
    }

    v6 = WeakRetained[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000097E8;
    block[3] = &unk_1000650E8;
    v10 = a1[4];
    v11 = v3;
    v12 = WeakRetained;
    v7 = v3;
    dispatch_sync(v6, block);
    [WeakRetained _debugPrintOverviewOfConnections];

    v8 = v10;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsCommuteWindowServer.m";
      v15 = 1026;
      v16 = 160;
      v17 = 2082;
      v18 = "[MapsSuggestionsCommuteWindowServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v7 = v8;
  }
}

void sub_1000097E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 48) + 8);

    [v5 removeObject:v4];
  }
}

void sub_100009854(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 connection];
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPC connection %@ was interrupted", buf, 0xCu);
    }

    v6 = WeakRetained[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009A70;
    block[3] = &unk_1000650E8;
    v10 = a1[4];
    v11 = v3;
    v12 = WeakRetained;
    v7 = v3;
    dispatch_sync(v6, block);
    [WeakRetained _debugPrintOverviewOfConnections];

    v8 = v10;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsCommuteWindowServer.m";
      v15 = 1026;
      v16 = 172;
      v17 = 2082;
      v18 = "[MapsSuggestionsCommuteWindowServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v7 = v8;
  }
}

void sub_100009A70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 48) + 8);

    [v5 removeObject:v4];
  }
}

void sub_100009B8C(id a1)
{
  v1 = [NavdLocationManager alloc];
  v4 = +[MNHybridLocationProvider navdInstance];
  v2 = [(NavdLocationManager *)v1 initWithLocationProvider:v4];
  v3 = qword_1000758D0;
  qword_1000758D0 = v2;
}

void sub_100009E74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _q_locationRefreshActivityFired];
  [v3 setTaskCompleted];
}

id sub_10000A314(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = [*(*(a1 + 32) + 48) timestamp];
    [v4 timeIntervalSinceReferenceDate];
    v6 = Current - v5;
    v7 = +[GEONavdDefaults sharedInstance];
    [v7 locationReuseThreshold];
    v9 = v8;

    if (v6 < v9)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(*(a1 + 32) + 48);
        v18 = 138477827;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Already cached location: %{private}@", &v18, 0xCu);
      }

      [*(a1 + 32) _q_stopLocationUpdate];
      v12 = *(*(a1 + 32) + 48);
      return (*(*(a1 + 40) + 16))();
    }

    v2 = *(a1 + 32);
  }

  v14 = *(v2 + 80);
  v15 = [*(a1 + 40) copy];
  v16 = objc_retainBlock(v15);
  [v14 addObject:v16];

  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Could not find a cached location. Running location manager to get some udpates.", &v18, 2u);
  }

  return [*(a1 + 32) _q_startLocationUpdate];
}

void sub_10000ADF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _q_cancelStaleLocationTimer];
  [WeakRetained _q_createActivityToUseStaleLocation:*(a1 + 32) fireAtAbsoluteTime:*(a1 + 48)];
}

void sub_10000BBCC(uint64_t a1, double a2, double a3)
{
  v22 = 0u;
  memset(v23, 0, 28);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 clientLocation];
  }

  *(v16 + 4) = a2;
  *(v16 + 12) = a3;
  v7 = [CLLocation alloc];
  v29 = v21;
  v30 = v22;
  v31[0] = v23[0];
  *(v31 + 12) = *(v23 + 12);
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = v20;
  *buf = v16[0];
  *&buf[16] = v16[1];
  v8 = [v7 initWithClientLocation:buf];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    *buf = 138478083;
    *&buf[4] = v8;
    *&buf[12] = 2113;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Notifying observers with shifted location: %{private}@. Original location was: %{private}@.", buf, 0x16u);
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 88);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000BDAC;
  v14[3] = &unk_1000650C0;
  v14[4] = v11;
  v15 = v8;
  v13 = v8;
  dispatch_async(v12, v14);
}

uint64_t start()
{
  v0 = sub_10000C1E4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "navd started.", buf, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100065248);
  v2 = objc_alloc_init(NavdController);
  v3 = qword_1000758E0;
  qword_1000758E0 = v2;

  [qword_1000758E0 start];
  objc_autoreleasePoolPop(v1);
  v4 = +[GEOPlatform sharedPlatform];
  if (![v4 isInternalInstall])
  {

    goto LABEL_7;
  }

  v5 = GeoServicesConfig_NavdTapewormEnabled[1];
  BOOL = GEOConfigGetBOOL();

  if (!BOOL)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = GeoServicesConfig_NavdTapewormTimerIntervalMs[1];
  GEOConfigGetUint64();
  v8 = GeoServicesConfig_NavdTapewormInstructionCount[1];
  GEOConfigGetUint64();
  GEOGetApproximateTapewormIterations();
  v9 = GEOInsertTapewormOnDispatchTimer();
LABEL_8:
  v10 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000C22C;
  handler[3] = &unk_100065180;
  v15 = v9;
  v11 = v9;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(v10);
  v12 = +[NSRunLoop currentRunLoop];
  [v12 run];

  return 0;
}

id sub_10000C1E4()
{
  if (qword_1000758F0 != -1)
  {
    sub_10003D964();
  }

  v1 = qword_1000758E8;

  return v1;
}

uint64_t sub_10000C22C(uint64_t a1)
{
  v2 = sub_10000C1E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIGTERM received.", v5, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  return xpc_transaction_exit_clean();
}

void sub_10000C2A8(id a1)
{
  qword_1000758E8 = os_log_create(MNLoggingSubsystem, "Navd");

  _objc_release_x1();
}

void sub_10000C428(id a1)
{
  v1 = [MapsSuggestionsNavdMapsAppLocationManager alloc];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("MapsSuggestionsNavdMapsAppLocationManagerQueue", v5);
  v3 = [(MapsSuggestionsNavdMapsAppLocationManager *)v1 initWithName:@"MapsSuggestionsNavdMapsAppLocationManager" queue:v2];
  v4 = qword_1000758F8;
  qword_1000758F8 = v3;
}

BOOL sub_10000CE4C(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsSuggestionsOfflineService);
  v4 = [(MapsSuggestionsOfflineService *)v3 shouldKeepEntryWhenOffline:v2];

  return v4;
}

void sub_10000D250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 hash]);
  [v4 addObject:v5];
}

void sub_10000D9FC(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

id sub_10000DAEC(uint64_t a1)
{
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (qword_100075910 != -1)
  {
    sub_10003D98C();
  }

  v3 = qword_100075908;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) integerValue];
        if ((v8 & a1) != 0)
        {
          v9 = sub_10000DC58(v8);
          [v2 addObjectsFromArray:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

id sub_10000DC58(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v4 = &off_10006A6D8;
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_11;
      }

      v4 = &off_10006A6F0;
    }
  }

  else if (a1 == 1)
  {
    v4 = &off_10006A690;
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    [v2 addObject:&off_10006A6A8];
    v4 = &off_10006A6C0;
  }

  [v3 addObject:v4];
LABEL_11:

  return v3;
}

void sub_10000DD08(id a1)
{
  v1 = qword_100075908;
  qword_100075908 = &off_10006B148;
}

void sub_10000DD20()
{
  if (qword_100075918 != -1)
  {
    sub_10003D9A0();
  }
}

id sub_10000DDB8()
{
  if (qword_100075928 != -1)
  {
    sub_10003D9B4();
  }

  v1 = qword_100075920;

  return v1;
}

void sub_10000DDFC(id a1)
{
  qword_100075920 = os_log_create("com.apple.Maps", "VirtualGarage");

  _objc_release_x1();
}

unint64_t NavdScoreInTimeWindow(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 >= 0.01 && ([v3 containsKey:@"MapsSuggestionsScheduledTimeKey"] & 1) != 0)
  {
    v5 = [v4 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
    v6 = v5;
    if (!v5)
    {
      goto LABEL_8;
    }

    v7 = MapsSuggestionsSecondsTo(v5);
    GEOConfigGetDouble();
    v8 = v7 - a2;
    if (v7 - a2 <= v9)
    {
      GEOConfigGetDouble();
      v15 = v14;
      GEOConfigGetDouble();
      v17 = v16;
      v18 = [v4 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
      v19 = v18;
      if (v18 && (v20 = MapsSuggestionsSecondsTo(v18), v21 = MapsSuggestionsSecondsTo(v6), GEOConfigGetDouble(), v22 = v20 - v21, v22 < v23))
      {
        v24 = v22 * 0.5;
        if (v17 >= v22 * 0.5)
        {
          v24 = v17;
        }
      }

      else
      {
        v24 = v17;
        v22 = v15;
      }

      if (v24 <= -v8)
      {
        if (v22 >= -v8)
        {
          v10 = &GEOConfigNavdRouteGeniusScore_MinScore;
          GEOConfigGetDouble();
          v38 = v37;
          GEOConfigGetDouble();
          v40 = v39;
          GEOConfigGetDouble();
          LODWORD(v10) = llround(v41 + (v40 - v38) * (v22 + v8) / (v22 - v24));
        }

        else
        {
          v10 = 0x80000000;
        }
      }

      else
      {
        GEOConfigGetDouble();
        v10 = v25;
      }

      goto LABEL_21;
    }

    v10 = &GEOConfigNavdRouteGeniusScore_MaxTimeUntilStart;
    GEOConfigGetDouble();
    if (v8 <= v11)
    {
      GEOConfigGetDouble();
      v27 = v26;
      GEOConfigGetDouble();
      v29 = v28;
      GEOConfigGetDouble();
      v31 = v30;
      GEOConfigGetDouble();
      v33 = v32;
      GEOConfigGetDouble();
      v35 = v34;
      GEOConfigGetDouble();
      LODWORD(v10) = llround((v8 - v36) * (v27 - v29) / (v31 - v33) + v35);
    }

    else
    {
LABEL_8:
      GEOConfigGetDouble();
      v10 = v13;
    }

LABEL_21:

    goto LABEL_22;
  }

  GEOConfigGetDouble();
  v10 = v12;
LABEL_22:

  return v10;
}

uint64_t NavdScoreLocationHistory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v6)
  {
    v57 = 0;
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        [v9 coordinate];
        [v9 coordinate];
        GEOCalculateDistance();
        v11 = v10;
        v12 = [v9 timestamp];
        [v4 timeIntervalSinceDate:v12];
        v14 = v13;

        GEOConfigGetDouble();
        if (v14 <= v15)
        {
          GEOConfigGetDouble();
          v16 = round(v11 * 100.0) * 0.01;
          if (v16 <= v17)
          {
            GEOConfigGetDouble();
            if (v16 >= v18)
            {
              GEOConfigGetDouble();
              v56 = v19;
              GEOConfigGetDouble();
              v55 = v20;
              GEOConfigGetDouble();
              v54 = v21;
              GEOConfigGetDouble();
              v53 = v22;
              GEOConfigGetDouble();
              v52 = v23;
              GEOConfigGetDouble();
              v51 = v24;
              GEOConfigGetDouble();
              v50 = v25;
              GEOConfigGetDouble();
              v49 = v26;
              GEOConfigGetDouble();
              v48 = v27;
              GEOConfigGetDouble();
              v47 = v28;
              GEOConfigGetDouble();
              v46 = v29;
              GEOConfigGetDouble();
              v31 = v30;
              GEOConfigGetDouble();
              v33 = v32;
              GEOConfigGetDouble();
              v35 = v34;
              GEOConfigGetDouble();
              v37 = v36;
              GEOConfigGetDouble();
              v39 = v38;
              GEOConfigGetDouble();
              v41 = v40;
              GEOConfigGetDouble();
              v43 = fmin(fmax(round(fmin(v37, fmax(v39, (v50 - v49) * (v14 - v31) / (v48 - v47) + v46)) + fmin(v33, fmax(v35, (v56 - v55) * (v16 - v51) / (v54 - v53) + v52))), v41), v42);
              v44 = v57;
              if (v57 >= v43)
              {
                v44 = v43;
              }

              v57 = v44;
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v6);
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

uint64_t NavdScoreMapsSuggestionsEntry(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 weight];
  v6 = v5;
  GEOConfigGetDouble();
  v8 = v7;
  v9 = v4;
  v10 = MapsSuggestionsNow();
  [v10 timeIntervalSinceDate:v9];
  v12 = v11;
  GEOConfigGetDouble();
  v13 = 0.0;
  if (v12 <= v14)
  {
    v13 = 1.0;
    if (v9)
    {
      if (v12 >= 0.0)
      {
        GEOConfigGetDouble();
        v13 = 1.0 - v12 / v15;
      }
    }
  }

  return (v8 * v6 * v13);
}

uint64_t NavdScoreGeodisicDistance(void *a1, double a2, double a3)
{
  v32 = a2;
  v33 = a3;
  v3 = a1;
  v4 = [v3 count];
  if (v4 >= GEOConfigGetInteger())
  {
    v6 = [v3 firstObject];
    [v6 timeInterval];
    v8 = v7;

    v9 = [v3 firstObject];
    [v9 distanceTo:{v32, v33}];
    v11 = v10;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = *v35;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          [v21 timeInterval];
          v23 = v22;
          [v21 distanceTo:{v32, v33}];
          v25 = v24 - v11;
          v19 = v19 + v25 * (v23 - v8);
          v18 = v23 - v8 + v18;
          v17 = v25 + v17;
          v16 = v16 + (v23 - v8) * (v23 - v8);
          v15 = v23 - v8 + v15;
        }

        v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
    }

    GEOConfigGetDouble();
    v27 = v26;
    GEOConfigGetDouble();
    v29 = v28;
    GEOConfigGetDouble();
    v5 = fmin(fmax(-(v18 * v17 - v19 * v4) / (v27 * -(v15 * v15 - v16 * v4)), v29), v30);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t NavdScoreOffRoute(void *a1)
{
  v1 = a1;
  v2 = [v1 valueForKeyPath:@"@sum.penalty"];
  [v2 doubleValue];
  v4 = v3;

  GEOConfigGetDouble();
  if (v4 <= v5)
  {
    GEOConfigGetDouble();
    v8 = v7;
    GEOConfigGetDouble();
    v10 = v9;
    GEOConfigGetDouble();
    v12 = v11;
    GEOConfigGetDouble();
    v14 = v13;
    GEOConfigGetDouble();
    v6 = (v12 - trunc((v14 - v15) * fmin(fmax(v4, v8), v10)));
  }

  else
  {
    v6 = 0x80000000;
  }

  return v6;
}

void sub_10000EA44(id a1)
{
  qword_100075930 = objc_alloc_init(NavdLocationAuthorizationMonitor);

  _objc_release_x1();
}

void sub_10000EB48()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Authorization status changed", v2, 2u);
  }

  v1 = +[NavdLocationAuthorizationMonitor sharedMonitor];
  [v1 _reset];
}

void sub_10000F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

id sub_10000F1F8(uint64_t a1)
{
  result = [*(a1 + 32) _q_getAuthorizationForLocationWithBundleIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10000F230(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CLLocationManager navdLocationBundleSource];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _q_getAuthorizationForLocationWithBundleIdentifier:v3];
}

void sub_10000F5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v20 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] stopLocationUpdatesForDelegate:WeakRetained];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdRouteGenius.mm";
      v6 = 1026;
      v7 = 346;
      v8 = 2082;
      v9 = "[NavdRouteGenius initWithDelegate:resourceDepot:locationUpdater:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_10000F7D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_10000F8F8(WeakRetained, WeakRetained[13]);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdRouteGenius.mm";
      v6 = 1026;
      v7 = 357;
      v8 = 2082;
      v9 = "[NavdRouteGenius forceReroute]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_10000F8F8(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 && ([v3 entry], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = MapsSuggestionsMostRecentLocation();
      if (qword_100075940 != -1)
      {
        sub_10003DC60();
      }

      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", buf, 0xCu);
      }

      if (v6)
      {
        v8 = MapsSuggestionsNow();
        v9 = [v6 timestamp];
        [v8 timeIntervalSinceDate:v9];
        v11 = v10 > *&qword_100075948;

        if (!v11)
        {
          v12 = [[GEOLocation alloc] initWithCLLocation:v6];
          if (v12)
          {
            [v4 setRoute:0];
            [v4 loadRoute];
            v13 = [v4 destinationWaypoint];
            v14 = v13 == 0;

            if (v14)
            {
              v19 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v20 = [v4 entry];
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Getting waypoint for entry : %@", buf, 0xCu);
              }

              objc_initWeak(buf, a1);
              v21 = a1[3];
              v22 = [v4 entry];
              v23[0] = _NSConcreteStackBlock;
              v23[1] = 3221225472;
              v23[2] = sub_1000133D8;
              v23[3] = &unk_100065620;
              objc_copyWeak(&v25, buf);
              v24 = v4;
              [v21 requestWaypointForEntry:v22 completion:v23];

              objc_destroyWeak(&v25);
              objc_destroyWeak(buf);
            }

            else
            {
              v15 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v16 = [v4 entry];
                v17 = [v16 title];
                *buf = 138412290;
                *&buf[4] = v17;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Ready to request Route : %@", buf, 0xCu);
              }

              sub_100013968(a1, v4);
            }
          }

          else
          {
            v18 = GEOFindOrCreateLog();
            sub_10003DC74(v18);
          }

          goto LABEL_13;
        }
      }

      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      sub_10003DCC4();
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      sub_10003DD14();
    }

    v6 = *buf;
LABEL_13:
  }
}

void sub_10000FE6C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000FE8C(void *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (v3[208] != a2)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5[0] = 67109120;
        v5[1] = a2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Setting skipScoring to :%d", v5, 8u);
      }

      v3[208] = a2;
    }

    objc_sync_exit(v3);
  }
}

void sub_10000FF78(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100010098(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1000100B4(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001A8C4;
    v10[3] = &unk_100065950;
    v11 = v7;
    v12 = v6;
    dispatch_async(v8, v10);

    v9 = v11;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsQueue.hpp";
      v15 = 1024;
      v16 = 177;
      v17 = 2082;
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = NavdRouteGenius]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void sub_10001025C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(v3 + 152) == 1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "RouteGenius already started", buf, 2u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 80) cancel];
    v5 = [*(*(a1 + 32) + 48) startLocationUpdatesForDelegate:?];
    *(v3 + 152) = 1;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100010B14;
    v50[3] = &unk_100065570;
    objc_copyWeak(&v51, (a1 + 40));
    v44 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:v50 name:@"routeGeniusTooCloseToTriggerLocationFilter"];
    v42 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_100065590 name:@"routeGeniusLockedOrHiddenFilter"];
    v46 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000655B0 name:@"routeGeniusAllowedTypesFilter"];
    v45 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000655D0];
    v6 = objc_alloc_init(NSMutableSet);
    v7 = objc_alloc_init(MapsSuggestionsShortcutFilter);
    [v6 addObject:v7];

    if (GEOConfigGetBOOL() && MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Added RoutineSourceFilter", buf, 2u);
      }

      v9 = objc_alloc_init(MapsSuggestionsRoutineSourceFilter);
      [v6 addObject:v9];
    }

    v10 = +[MapsSuggestionsEngineBuilder forDevice];
    v11 = [v10 withResourceDepot:*(*(a1 + 32) + 72)];

    v12 = [v11 withoutTracker];

    v13 = +[MapsSuggestionsNavdMapsAppLocationManager sharedLocationManager];
    v14 = [v12 withLocationUpdater:v13];

    v15 = [v14 withPreFilters:v6];

    if (GEOConfigGetBOOL() && MapsFeature_IsEnabled_LocationIntelligenceMaps())
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Adding PLCRoutineSource to builder", buf, 2u);
      }

      v52 = objc_opt_class();
      v17 = [NSArray arrayWithObjects:&v52 count:1];
      v18 = [v15 withSourceClasses:v17];
    }

    else
    {
      v18 = v15;
    }

    v19 = [v18 build];
    v20 = *(v3 + 2);
    *(v3 + 2) = v19;

    v21 = *(v3 + 2);
    v22 = objc_alloc_init(MapsSuggestionsZeroWeightFilter);
    [v21 addAdditionalFilter:v22 forSink:*(a1 + 32)];

    [*(v3 + 2) addAdditionalFilter:v46 forSink:*(a1 + 32)];
    [*(v3 + 2) addAdditionalFilter:v45 forSink:*(a1 + 32)];
    [*(v3 + 2) addAdditionalFilter:v44 forSink:*(a1 + 32)];
    [*(v3 + 2) addAdditionalFilter:v43 forSink:*(a1 + 32)];
    v23 = *(a1 + 32);
    objc_sync_enter(v23);
    if ((*(*(a1 + 32) + 200) & 1) == 0)
    {
      v24 = MapsSuggestionsMostRecentLocation();
      if (qword_100075940 != -1)
      {
        sub_10003DD64();
      }

      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", buf, 0xCu);
      }

      if (!v24)
      {
        goto LABEL_23;
      }

      v26 = MapsSuggestionsNow();
      v27 = [v24 timestamp];
      [v26 timeIntervalSinceDate:v27];
      v29 = v28 > *&qword_100075948;

      if (!v29)
      {
        v30 = v24;
      }

      else
      {
LABEL_23:
        v30 = 0;
      }

      v31 = *(a1 + 32);
      v32 = *(v31 + 192);
      *(v31 + 192) = v30;

      *(*(a1 + 32) + 200) = 1;
    }

    objc_sync_exit(v23);

    v33 = MapsSuggestionsMostRecentLocation();
    if (qword_100075940 != -1)
    {
      sub_10003DD64();
    }

    v34 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v54 = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", buf, 0xCu);
    }

    if (!v33)
    {
      goto LABEL_32;
    }

    v35 = MapsSuggestionsNow();
    v36 = [v33 timestamp];
    [v35 timeIntervalSinceDate:v36];
    v38 = v37 > *&qword_100075948;

    if (!v38)
    {
      v39 = v33;
    }

    else
    {
LABEL_32:
      v39 = 0;
    }

    v40 = *(v3 + 3);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100011044;
    v47[3] = &unk_100065620;
    objc_copyWeak(&v49, (a1 + 40));
    v41 = v39;
    v48 = v41;
    if (![v40 requestWaypointForCurrentLocation:v41 completion:v47])
    {
      sub_10003DA24(*(a1 + 32));
    }

    objc_destroyWeak(&v49);
    objc_destroyWeak(&v51);
  }
}

void sub_1000109A8(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

BOOL sub_100010B14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    if (LOBYTE(v6[25].isa) == 1)
    {
      v7 = v6[24].isa;
      if (v7)
      {
        goto LABEL_9;
      }

      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "TriggerLocation is nil. It should not be.", &v18, 2u);
      }

      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TriggerLocation is nil. Trying with the CurrentBestLocation now.", &v18, 2u);
      }

      v7 = MapsSuggestionsCurrentBestLocation();
      if (v7)
      {
LABEL_9:
        v10 = [v3 geoMapItem];
        [v10 coordinate];
        v11 = CLLocationFromGEOLocationCoordinate2D();

        [v7 distanceFromLocation:v11];
        v13 = v12;
        GEOConfigGetDouble();
        v15 = v13 > v14;
      }

      else
      {
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "TriggerLocation with currentBestLocation is also nil. It should not be.", &v18, 2u);
        }

        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "TriggerLocation is still nil, even with CurrentBestLocation().", &v18, 2u);
        }

        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446722;
      v19 = "NavdRouteGenius.mm";
      v20 = 1026;
      v21 = 405;
      v22 = 2082;
      v23 = "[NavdRouteGenius start]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: locationFilterSelf went away in %{public}s", &v18, 0x1Cu);
    }

    v15 = 0;
  }

  return v15;
}

void sub_100010E30(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

BOOL sub_100010EC0(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = [(MapsSuggestionsEntry *)v2 type];
  LOBYTE(v4) = 1;
  if (v3 <= 8)
  {
    if (v3 < 6 || (v3 - 6) >= 2 && v3 == 8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v3 > 0x19)
  {
    goto LABEL_14;
  }

  if (((1 << v3) & 0x189F000) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << v3) & 0x2760400) != 0)
  {
LABEL_10:
    LOBYTE(v4) = 0;
    goto LABEL_11;
  }

  if (v3 != 11)
  {
LABEL_14:
    if (v3 == 9)
    {
      v6 = [(MapsSuggestionsEntry *)v2 numberForKey:@"MapsSuggestionsIsNotADestinationKey"];
      v4 = [v6 BOOLValue] ^ 1;

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([(MapsSuggestionsEntry *)v2 isMultiPointRoute])
  {
    LOBYTE(v4) = GEOConfigGetBOOL();
  }

LABEL_11:

  return v4;
}

BOOL sub_100010FD4(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsSuggestionsOfflineService);
  v4 = [(MapsSuggestionsOfflineService *)v3 shouldKeepEntryWhenOffline:v2];

  return v4;
}

void sub_100011044(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        *buf = 138412546;
        v15 = v10;
        v16 = 2112;
        v17[0] = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "unable to start Route genius at location <%@> with error : %@", buf, 0x16u);
      }

      [(dispatch_queue_t *)WeakRetained stop];
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100011298;
      v11[3] = &unk_1000655F8;
      objc_copyWeak(&v13, (a1 + 40));
      v12 = v5;
      dispatch_async(WeakRetained[11], v11);

      objc_destroyWeak(&v13);
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "NavdRouteGenius.mm";
      v16 = 1026;
      LODWORD(v17[0]) = 514;
      WORD2(v17[0]) = 2082;
      *(v17 + 6) = "[NavdRouteGenius start]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100011298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 15, *(a1 + 32));
    sub_1000113CC(v3);
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "NavdRouteGenius.mm";
      v7 = 1026;
      v8 = 522;
      v9 = 2082;
      v10 = "[NavdRouteGenius start]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_1000113CC(uint64_t a1)
{
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Ready to run oneshot Engine", buf, 2u);
    }

    objc_initWeak(buf, a1);
    notify_post([@"RouteGeniusStarted" UTF8String]);
    v3 = MapsSuggestionsNow();
    v4 = *(a1 + 144);
    *(a1 + 144) = v3;

    v5 = objc_alloc_init(NavdBucketizedLocations);
    v6 = *(a1 + 128);
    *(a1 + 128) = v5;

    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(a1 + 136);
    *(a1 + 136) = v7;

    [*(a1 + 64) registerAppTracker:a1];
    v9 = *(a1 + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011EB0;
    v12[3] = &unk_1000656C0;
    objc_copyWeak(&v13, buf);
    if (![v9 oneShotTopSuggestionsForSink:a1 count:5 transportType:0 callback:v12 onQueue:*(a1 + 88)])
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Oneshot engine will not callback, stopping RouteGenius!", v11, 2u);
      }

      [a1 stop];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void sub_1000115A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000115D0(id *a1, void *a2)
{
  v3 = a2;
  if (a1 && (GEOConfigGetBOOL() & 1) != 0)
  {
    v4 = dispatch_group_create();
    objc_initWeak(&location, a1);
    dispatch_group_enter(v4);
    v5 = [a1[2] oneFavorites];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100011744;
    v7[3] = &unk_100065670;
    objc_copyWeak(&v10, &location);
    v6 = v4;
    v8 = v6;
    v9 = v3;
    [v5 loadAllShortcutsWithHandler:v7];

    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_1000116FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011744(uint64_t a1, void *a2, void *a3)
{
  v45 = a2;
  v5 = a3;
  v39 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v41 = v5;
  if (WeakRetained)
  {
    if (v5)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v68 = v41;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to load shortcuts:%@", buf, 0xCu);
      }
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = *(a1 + 40);
      v44 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v44)
      {
        v43 = *v60;
        do
        {
          v46 = 0;
          do
          {
            if (*v60 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v59 + 1) + 8 * v46);
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v9 = v45;
            v10 = [v9 countByEnumeratingWithState:&v55 objects:v65 count:16];
            if (v10)
            {
              v11 = *v56;
              while (2)
              {
                for (i = 0; i != v10; i = i + 1)
                {
                  if (*v56 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v13 = *(*(&v55 + 1) + 8 * i);
                  v14 = [v13 contacts];
                  if (v14)
                  {
                    v15 = [v13 contacts];
                    v16 = [v15 count] == 0;

                    if (!v16)
                    {
                      if ([v8 type] == 1 || objc_msgSend(v8, "type") == 2)
                      {
                        if ([v8 type] == 1 && objc_msgSend(v13, "type") == 2 || objc_msgSend(v8, "type") == 2 && objc_msgSend(v13, "type") == 3)
                        {
                          v17 = [v8 geoMapItem];
                          v18 = [v13 geoMapItem];
                          GEOConfigGetDouble();
                          IsEqualToMapItemForPurposeWithinDistance = GEOMapItemIsEqualToMapItemForPurposeWithinDistance();

                          if (IsEqualToMapItemForPurposeWithinDistance)
                          {
                            v23 = [NSMutableArray alloc];
                            v24 = [v13 contacts];
                            v25 = [v23 initWithCapacity:{objc_msgSend(v24, "count")}];

                            v53 = 0u;
                            v54 = 0u;
                            v51 = 0u;
                            v52 = 0u;
                            v26 = [v13 contacts];
                            v27 = [v26 countByEnumeratingWithState:&v51 objects:v64 count:16];
                            v28 = v27;
                            if (v27)
                            {
                              v29 = *v52;
                              do
                              {
                                v30 = 0;
                                do
                                {
                                  if (*v52 != v29)
                                  {
                                    objc_enumerationMutation(v26);
                                  }

                                  v31 = [*(*(&v51 + 1) + 8 * v30) handleValue];
                                  [v25 addObject:v31];

                                  v30 = v30 + 1;
                                }

                                while (v28 != v30);
                                v28 = [v26 countByEnumeratingWithState:&v51 objects:v64 count:16];
                              }

                              while (v28);
                            }

LABEL_42:

                            [v8 setShareETAHandles:v25];
                            goto LABEL_43;
                          }
                        }
                      }

                      else if ([v13 type] != 2 && objc_msgSend(v13, "type") != 3)
                      {
                        v20 = [v8 geoMapItem];
                        v21 = [v13 geoMapItem];
                        GEOConfigGetDouble();
                        v22 = GEOMapItemIsEqualToMapItemForPurposeWithinDistance();

                        if (v22)
                        {
                          v32 = [NSMutableArray alloc];
                          v33 = [v13 contacts];
                          v25 = [v32 initWithCapacity:{objc_msgSend(v33, "count")}];

                          v49 = 0u;
                          v50 = 0u;
                          v47 = 0u;
                          v48 = 0u;
                          v26 = [v13 contacts];
                          v34 = [v26 countByEnumeratingWithState:&v47 objects:v63 count:16];
                          if (v34)
                          {
                            v35 = *v48;
                            do
                            {
                              for (j = 0; j != v34; j = j + 1)
                              {
                                if (*v48 != v35)
                                {
                                  objc_enumerationMutation(v26);
                                }

                                v37 = [*(*(&v47 + 1) + 8 * j) handleValue];
                                [v25 addObject:v37];
                              }

                              v34 = [v26 countByEnumeratingWithState:&v47 objects:v63 count:16];
                            }

                            while (v34);
                          }

                          goto LABEL_42;
                        }
                      }
                    }
                  }
                }

                v10 = [v9 countByEnumeratingWithState:&v55 objects:v65 count:16];
                if (v10)
                {
                  continue;
                }

                break;
              }
            }

LABEL_43:

            v46 = v46 + 1;
          }

          while (v46 != v44);
          v38 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
          v44 = v38;
        }

        while (v38);
      }
    }

    dispatch_group_leave(*(v39 + 32));
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v68 = "NavdRouteGenius.mm";
      v69 = 1026;
      v70 = 542;
      v71 = 2082;
      v72 = "[NavdRouteGenius _updateEntriesWithShareETAData:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: shortcutStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100011EB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Done running oneshot Engine", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 11);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000120E8;
    block[3] = &unk_100065698;
    v11 = v10;
    objc_copyWeak(&v16, (a1 + 32));
    v14 = v6;
    v15 = v5;
    dispatch_async(v11, block);

    objc_destroyWeak(&v16);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "NavdRouteGenius.mm";
      v19 = 1026;
      v20 = 607;
      v21 = 2082;
      v22 = "[NavdRouteGenius _q_start]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000120E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 32);
        v14 = 138412290;
        v15 = v4;
        v5 = "Error occured while running oneshot Engine :%@";
        v6 = v3;
        v7 = 12;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v5, &v14, v7);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 40) count];
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "number of destinations = %lu", &v14, 0xCu);
    }

    v11 = *(a1 + 40);
    if (!v11 || ![v11 count])
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        v5 = "no destinations";
        v6 = v3;
        v7 = 2;
        goto LABEL_17;
      }

LABEL_18:

      [WeakRetained stop];
      goto LABEL_19;
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 40) count];
      v14 = 134217984;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "received %ld entries", &v14, 0xCu);
    }

    sub_1000115D0(WeakRetained, *(a1 + 40));
    sub_100012404(WeakRetained, *(a1 + 40));
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "NavdRouteGenius.mm";
      v16 = 1026;
      v17 = 609;
      v18 = 2082;
      v19 = "[NavdRouteGenius _q_start]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v14, 0x1Cu);
    }
  }

LABEL_19:
}

void sub_100012404(uint64_t a1, void *a2)
{
  v3 = a2;
  v43 = v3;
  if (a1)
  {
    if (*(a1 + 152))
    {
      v42 = a1;
      if (!v3 || ![v3 count])
      {
        v4 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "No entries found, stopping RouteGenius!", buf, 2u);
        }

        [v42 stop];
      }

      v5 = MapsSuggestionsMostRecentLocation();
      if (qword_100075940 != -1)
      {
        sub_10003DD64();
      }

      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v61 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", buf, 0xCu);
      }

      v7 = v5;
      if (!v5)
      {
        goto LABEL_14;
      }

      v8 = MapsSuggestionsNow();
      v9 = [v5 timestamp];
      [v8 timeIntervalSinceDate:v9];
      v11 = v10 > *&qword_100075948;

      v7 = v5;
      if (!v11)
      {
        v13 = v42;
      }

      else
      {
LABEL_14:

        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "We don't know where we are, stopping RouteGenius!", buf, 2u);
        }

        v13 = v42;
        [v42 stop];
        v7 = 0;
      }

      v15 = [*(v13 + 112) mutableCopy];
      v16 = v15;
      v40 = v7;
      if (v15)
      {
        v41 = v15;
      }

      else
      {
        v41 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v43, "count")}];
      }

      if (GEOConfigGetBOOL())
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v17 = v43;
        v18 = [v17 countByEnumeratingWithState:&v52 objects:v59 count:16];
        v19 = v17;
        if (v18)
        {
          v20 = *v53;
          while (2)
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v53 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v52 + 1) + 8 * i);
              if ([v22 isMultiPointRoute])
              {
                v58 = v22;
                v19 = [NSArray arrayWithObjects:&v58 count:1];

                goto LABEL_35;
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v52 objects:v59 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }

          v19 = v17;
        }

LABEL_35:
      }

      else
      {
        v19 = v43;
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = v19;
      v43 = v23;
      v24 = [v23 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v24)
      {
        v25 = *v49;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v49 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v48 + 1) + 8 * j);
            [v27 setBoolean:1 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v28 = *(v42 + 112);
            v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v29)
            {
              v30 = *v45;
              while (2)
              {
                for (k = 0; k != v29; k = k + 1)
                {
                  if (*v45 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v32 = [*(*(&v44 + 1) + 8 * k) entry];
                  v33 = v32 == v27;

                  if (v33)
                  {

                    v34 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(&v34->super, OS_LOG_TYPE_DEBUG))
                    {
                      v35 = [v27 title];
                      *buf = 138412290;
                      v61 = v35;
                      _os_log_impl(&_mh_execute_header, &v34->super, OS_LOG_TYPE_DEBUG, "RouteGenius already has Entry: %@", buf, 0xCu);
                    }

                    goto LABEL_53;
                  }
                }

                v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

            v34 = [[NavdRouteGeniusRoute alloc] initWithEntry:v27];
            [v41 addObject:v34];
LABEL_53:

            v23 = v43;
          }

          v24 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v24);
      }

      v36 = [v41 copy];
      v37 = *(v42 + 112);
      *(v42 + 112) = v36;

      v38 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = [*(v42 + 112) count];
        *buf = 134217984;
        v61 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Done processing entries : _state.Routes count: %ld", buf, 0xCu);
      }

      sub_1000100B4((v42 + 88), v42, &stru_1000658B8);
      v14 = v40;
    }

    else
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "RouteGenius is not active, not doing anything!", buf, 2u);
      }
    }
  }
}

void sub_100012A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_100012C84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_10003DA24(WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdRouteGenius.mm";
      v6 = 1026;
      v7 = 642;
      v8 = 2082;
      v9 = "[NavdRouteGenius stop]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100012DA8(NSObject **a1)
{
  if (a1)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_100012E24;
    v1[3] = &unk_1000656E8;
    v1[4] = a1;
    sub_1000100B4(a1 + 11, a1, v1);
  }
}

void sub_100012E24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3[13] entry];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Updating delegate with entry: %@", &v14, 0xCu);
  }

  v6 = [v3[13] route];
  v7 = v6 == 0;

  if (v7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(*(a1 + 32) + 104) isLoadingRoute];
      v13 = @"NO";
      if (v12)
      {
        v13 = @"YES";
      }

      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Not Updating delegate as we have no route for entry: %@ routeIsLoading:%@", &v14, 0x16u);
    }
  }

  else
  {
    v8 = [MapsSuggestionsRouteGeniusEntry alloc];
    v9 = [v3[13] route];
    v10 = [v8 initWithEntry:v4 route:v9];
    v11 = [v10 data];

    [v3[4] didUpdateRouteGenius:v11];
  }
}

void sub_100013128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100013144(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013214;
  v5[3] = &unk_1000656C0;
  v4 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  [v3 topSuggestionsForSink:v4 count:20 transportType:0 callback:v5 onQueue:*(*(a1 + 32) + 88)];

  objc_destroyWeak(&v6);
}

void sub_100013214(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v6)
    {
      sub_100012404(WeakRetained, v5);
      goto LABEL_10;
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "invalidateForMapsSuggestionsManager called with error: %@", &v10, 0xCu);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "NavdRouteGenius.mm";
      v12 = 1026;
      v13 = 740;
      v14 = 2082;
      v15 = "[NavdRouteGenius invalidateForMapsSuggestionsManager:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }

LABEL_10:
}

void sub_1000133D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000135BC;
    v9[3] = &unk_100065738;
    objc_copyWeak(&v13, (a1 + 40));
    v10 = v6;
    v11 = v5;
    v12 = *(a1 + 32);
    dispatch_async(WeakRetained[11], v9);

    objc_destroyWeak(&v13);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "NavdRouteGenius.mm";
      v16 = 1026;
      v17 = 775;
      v18 = 2082;
      v19 = "[NavdRouteGenius _q_loadRoute:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000135BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32) || !*(a1 + 40))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [*(a1 + 48) entry];
        v5 = *(a1 + 32);
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13[0] = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Failed to get Waypoint for Entry %@ with error :%@", &v10, 0x16u);
      }

      sub_100013868(WeakRetained, *(a1 + 48));
    }

    else
    {
      [*(a1 + 48) setDestinationWaypoint:?];
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [*(a1 + 48) entry];
        v9 = [v8 title];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received Waypoint, ready to request Route : %@", &v10, 0xCu);
      }

      sub_100013968(WeakRetained, *(a1 + 48));
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "NavdRouteGenius.mm";
      v12 = 1026;
      LODWORD(v13[0]) = 777;
      WORD2(v13[0]) = 2082;
      *(v13 + 6) = "[NavdRouteGenius _q_loadRoute:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void sub_100013868(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "dropping Route: %@", &v5, 0xCu);
    }

    sub_10001473C(a1, v3);
    sub_100015918(a1);
  }
}

void sub_100013968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 120))
    {
      v5 = [v3 destinationWaypoint];

      if (v5)
      {
        v6 = MapsSuggestionsMostRecentLocation();
        if (qword_100075940 != -1)
        {
          sub_10003DC60();
        }

        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", buf, 0xCu);
        }

        if (v6)
        {
          v8 = MapsSuggestionsNow();
          v9 = [v6 timestamp];
          [v8 timeIntervalSinceDate:v9];
          v11 = v10 > *&qword_100075948;

          if (!v11)
          {
            v12 = [[GEOLocation alloc] initWithCLLocation:v6];
            if (v12)
            {
              v13 = *(a1 + 120);
              v14 = v4;
              v42 = v13;
              v15 = [NSMutableArray alloc];
              *buf = v13;
              v16 = [NSArray arrayWithObjects:buf count:1];
              v17 = [v15 initWithArray:v16];

              v18 = [v14 entry];
              LODWORD(v16) = [v18 isMultiPointRoute];

              if (v16)
              {
                v19 = [v14 entry];
                v20 = [v19 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];

                v21 = [v20 waypoints];
                v22 = [v14 entry];
                v23 = [v22 uint64ForKey:@"MapsSuggestionsResumeRouteWaypointIndex"];

                if ([v21 count] > v23 + 1)
                {
                  v24 = [v21 subarrayWithRange:{v23, objc_msgSend(v21, "count") + ~v23}];
                  [v17 addObjectsFromArray:v24];
                }
              }

              v25 = [v14 entry];
              v26 = [v25 containsKey:@"MapsSuggestionsContactLikelyAppleIDKey"];

              if (v26)
              {
                v27 = [v14 entry];
                v28 = [v27 stringForKey:@"MapsSuggestionsContactLikelyAppleIDKey"];
                v29 = [v14 destinationWaypoint];
                [v29 setFindMyHandleID:v28];

                v30 = [v14 entry];
                v31 = [v30 dateForKey:@"MapsSuggestionsContactLocationTimestampKey"];
                [v31 timeIntervalSinceReferenceDate];
                v33 = v32;
                v34 = [v14 destinationWaypoint];
                v35 = [v34 location];
                [v35 setTimestamp:v33];

                v36 = [v14 destinationWaypoint];
                [v36 recomputeGeoWaypointTyped];
              }

              v37 = [v14 destinationWaypoint];
              [v17 addObject:v37];

              v38 = [v17 copy];
              sub_100014088(a1);
              v39 = [[MNRouteAttributes alloc] initWithAttributes:*(a1 + 40) waypoints:v38];
              objc_initWeak(buf, a1);
              v40 = *(a1 + 88);
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 3221225472;
              v43[2] = sub_100014870;
              v43[3] = &unk_1000657B0;
              objc_copyWeak(&v47, buf);
              v44 = v14;
              v41 = v38;
              v45 = v41;
              v46 = v12;
              [v39 buildRouteAttributes:v40 result:v43];

              objc_destroyWeak(&v47);
              objc_destroyWeak(buf);
            }

            else
            {
              GEOFindOrCreateLog();
              objc_claimAutoreleasedReturnValue();
              sub_10003DD8C();
              v41 = *buf;
            }

            goto LABEL_14;
          }
        }

        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        sub_10003DCC4();
      }

      else
      {
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        sub_10003DDE8();
      }
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      sub_10003DEA8();
    }

    v6 = *buf;
LABEL_14:
  }
}

void sub_100014088(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (!v2)
    {
      v3 = [GEORouteAttributes defaultRouteAttributesForTransportType:0];
      v4 = *(a1 + 40);
      *(a1 + 40) = v3;

      v2 = *(a1 + 40);
    }

    v5 = [v2 automobileOptions];

    if (!v5)
    {
      v6 = objc_alloc_init(GEOAutomobileOptions);
      [*(a1 + 40) setAutomobileOptions:v6];
    }

    v7 = [*(a1 + 40) automobileOptions];
    v8 = [v7 hasUserPreferences];

    if ((v8 & 1) == 0)
    {
      v9 = objc_alloc_init(GEOUserPreferences);
      v10 = [*(a1 + 40) automobileOptions];
      [v10 setUserPreferences:v9];
    }

    v11 = +[NSFileManager defaultManager];
    v12 = [v11 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
    v13 = [v12 path];
    AppBooleanValueWithContainer = _CFPreferencesGetAppBooleanValueWithContainer();

    if (AppBooleanValueWithContainer)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    v16 = [*(a1 + 40) automobileOptions];
    [v16 setTrafficType:v15];

    v17 = [*(a1 + 40) automobileOptions];
    v18 = [v17 userPreferences];
    [v18 setAvoidTolls:0];

    v19 = [*(a1 + 40) automobileOptions];
    v20 = [v19 userPreferences];
    [v20 setAvoidHighways:0];

    v21 = +[NSFileManager defaultManager];
    v22 = [v21 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
    v23 = [v22 path];
    v24 = _CFPreferencesGetAppBooleanValueWithContainer();

    if (v24)
    {
      v25 = [*(a1 + 40) automobileOptions];
      v26 = [v25 userPreferences];
      [v26 setAvoidTolls:1];
    }

    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [*(a1 + 40) automobileOptions];
      v29 = [v28 userPreferences];
      v30 = [v29 avoidTolls];
      v31 = @"NO";
      if (v30)
      {
        v31 = @"YES";
      }

      v43 = 138412290;
      v44 = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Avoid Tolls:%@", &v43, 0xCu);
    }

    v32 = +[NSFileManager defaultManager];
    v33 = [v32 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
    v34 = [v33 path];
    v35 = _CFPreferencesGetAppBooleanValueWithContainer() == 0;

    if (!v35)
    {
      v36 = [*(a1 + 40) automobileOptions];
      v37 = [v36 userPreferences];
      [v37 setAvoidHighways:1];
    }

    v38 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = [*(a1 + 40) automobileOptions];
      v40 = [v39 userPreferences];
      v41 = [v40 avoidHighways];
      v42 = @"NO";
      if (v41)
      {
        v42 = @"YES";
      }

      v43 = 138412290;
      v44 = v42;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Avoid Highways:%@", &v43, 0xCu);
    }
  }
}

void sub_1000145E4(uint64_t a1)
{
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(a1 + 112) copy];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = *v10;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v9 + 1) + 8 * i);
          v7 = [v6 entry];
          v8 = [v7 isLockedOrHidden];

          if (v8)
          {
            sub_10001473C(a1, v6);
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v3);
    }
  }
}

void sub_10001473C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "removing Route: %@", &v7, 0xCu);
    }

    v5 = [*(a1 + 112) mutableCopy];
    [v5 removeObject:v3];
    objc_storeStrong((a1 + 112), v5);
    v6 = *(a1 + 104);
    if (v6 == v3)
    {
      *(a1 + 104) = 0;
    }
  }
}

void sub_100014870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(a1 + 32) entry];
        v10 = [v9 title];
        *buf = 138412546;
        v28 = v10;
        v29 = 2112;
        v30[0] = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed getting attributes for %@ : %@", buf, 0x16u);
      }

      if (!v5)
      {
        sub_100013868(WeakRetained, *(a1 + 32));
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014CB8;
    block[3] = &unk_1000655F8;
    objc_copyWeak(&v26, (a1 + 56));
    v11 = v5;
    v25 = v11;
    dispatch_async(*(WeakRetained + 11), block);
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 32) entry];
      v14 = [v13 title];
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Getting route: %@", buf, 0xCu);
    }

    v15 = *(WeakRetained + 3);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014E4C;
    v19[3] = &unk_100065788;
    objc_copyWeak(&v23, (a1 + 56));
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = v11;
    [v15 requestRouteForWaypoints:v16 at:v17 attributes:v22 completion:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "NavdRouteGenius.mm";
      v29 = 1026;
      LODWORD(v30[0]) = 860;
      WORD2(v30[0]) = 2082;
      *(v30 + 6) = "[NavdRouteGenius _q_requestRoute:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100014CB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Updated routeAttributes: %@", &v7, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = WeakRetained[5];
    WeakRetained[5] = v5;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "NavdRouteGenius.mm";
      v9 = 1026;
      v10 = 868;
      v11 = 2082;
      v12 = "[NavdRouteGenius _q_requestRoute:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100014E4C(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (!v10 || v11 || v12 || ![v10 routesCount] && !objc_msgSend(v10, "waypointRoutesCount"))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100015144;
      block[3] = &unk_100065698;
      objc_copyWeak(&v25, a1 + 7);
      v23 = a1[4];
      v24 = v11;
      dispatch_async(WeakRetained[11], block);

      objc_destroyWeak(&v25);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100015324;
    v15[3] = &unk_100065760;
    objc_copyWeak(&v21, a1 + 7);
    v16 = a1[5];
    v17 = a1[6];
    v18 = v10;
    v19 = v9;
    v20 = a1[4];
    dispatch_async(WeakRetained[11], v15);

    objc_destroyWeak(&v21);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "NavdRouteGenius.mm";
      v28 = 1026;
      v29 = 877;
      v30 = 2082;
      v31 = "[NavdRouteGenius _q_requestRoute:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100015144(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = WeakRetained[15];
      v5 = [*(a1 + 32) destinationWaypoint];
      v6 = *(a1 + 40);
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      *v11 = v5;
      *&v11[8] = 2112;
      *&v11[10] = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to requestRoute from %@ to %@ : %@", &v8, 0x20u);
    }

    sub_100013868(WeakRetained, *(a1 + 32));
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "NavdRouteGenius.mm";
      v10 = 1026;
      *v11 = 883;
      *&v11[4] = 2082;
      *&v11[6] = "[NavdRouteGenius _q_requestRoute:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100015324(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [[GEORouteInitializerData alloc] initWithWaypoints:*(a1 + 32) routeAttributes:*(a1 + 40) directionsResponse:*(a1 + 48) directionsRequest:*(a1 + 56)];
    v4 = [v3 mainRouteInfo];
    v5 = [v4 route];

    if (!v5)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = WeakRetained[15];
        v8 = [*(a1 + 64) destinationWaypoint];
        v9 = *(a1 + 48);
        v32 = 138412802;
        v33 = v7;
        v34 = 2112;
        *v35 = v8;
        *&v35[8] = 2112;
        *&v35[10] = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Nil route for %@ to %@ : %@", &v32, 0x20u);
      }

      sub_100013868(WeakRetained, *(a1 + 64));
    }

    v10 = *(a1 + 64);
    v11 = [v4 route];
    [v10 setRoute:v11];

    v12 = [*(a1 + 64) entry];
    [v12 setETA:0 forKey:@"MapsSuggestionsETAKey"];

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 64) entry];
      v15 = [v14 title];
      v32 = 138412290;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "hasLoaded for route: %@", &v32, 0xCu);
    }

    v16 = [*(a1 + 48) sessionState];
    v17 = WeakRetained[23];
    WeakRetained[23] = v16;

    if (WeakRetained[20])
    {
      goto LABEL_21;
    }

    v18 = MapsSuggestionsMostRecentLocation();
    if (qword_100075940 != -1)
    {
      sub_10003DD64();
    }

    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v32 = 138412290;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", &v32, 0xCu);
    }

    if (!v18)
    {
      goto LABEL_15;
    }

    v20 = MapsSuggestionsNow();
    v21 = [v18 timestamp];
    [v20 timeIntervalSinceDate:v21];
    v23 = v22 > *&qword_100075948;

    if (!v23)
    {
      v24 = v18;
    }

    else
    {
LABEL_15:
      v24 = 0;
    }

    v25 = WeakRetained[20];
    WeakRetained[20] = v24;

    if (WeakRetained[20])
    {
LABEL_21:
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v4 route];
        v28 = [v27 expectedTime];
        v32 = 67109120;
        LODWORD(v33) = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "ETA from route : %u", &v32, 8u);
      }

      sub_100015918(WeakRetained);
    }

    else
    {
      v29 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [*(a1 + 64) entry];
        v31 = [v30 title];
        v32 = 138412290;
        v33 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No location, dropping route: %@", &v32, 0xCu);
      }

      [WeakRetained stop];
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v32 = 136446722;
      v33 = "NavdRouteGenius.mm";
      v34 = 1026;
      *v35 = 890;
      *&v35[4] = 2082;
      *&v35[6] = "[NavdRouteGenius _q_requestRoute:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v32, 0x1Cu);
    }

    v3 = v4;
  }
}

void sub_100015918(id *a1)
{
  if (a1)
  {
    sub_1000145E4(a1);
    if ([a1[14] count])
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v2 = a1[14];
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
      if (v3)
      {
        v4 = *v10;
        while (2)
        {
          for (i = 0; i != v3; i = i + 1)
          {
            if (*v10 != v4)
            {
              objc_enumerationMutation(v2);
            }

            v6 = *(*(&v9 + 1) + 8 * i);
            if (([v6 hasRouteLoaded] & 1) == 0)
            {
              v7 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
              {
                v8 = [v6 entry];
                sub_10003E064(v8, buf, v7);
              }

              return;
            }
          }

          v3 = [v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
          if (v3)
          {
            continue;
          }

          break;
        }
      }

      sub_10003DF68(v2, a1);
    }

    else
    {
      sub_10003DFEC(a1);
    }
  }
}

void sub_100015ACC(uint64_t a1, void *a2)
{
  v25 = a2;
  v26 = a1;
  if (a1)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "///// Scoring Dump /////", buf, 2u);
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = v25;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Time : %@", buf, 0xCu);
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "routes : {", buf, 2u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = *(v26 + 112);
    v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v29)
    {
      v28 = *v40;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [*(*(&v39 + 1) + 8 * i) description];
          v7 = [v6 componentsSeparatedByString:@"\n"];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v9)
          {
            v10 = *v36;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v36 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v35 + 1) + 8 * j);
                v13 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v47 = v12;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v9);
          }
        }

        v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v29);
    }

    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "}", buf, 2u);
    }

    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "LocationHistory : {", buf, 2u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [*(v26 + 128) locations];
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        for (k = 0; k != v17; k = k + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v31 + 1) + 8 * k);
          v21 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = [v20 description];
            *buf = 138412290;
            v47 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v17);
    }

    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "}", buf, 2u);
    }

    v24 = GEOFindOrCreateLog();
    sub_10003E0BC(v24);
  }
}

void sub_1000160F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v98 = "NavdRouteGenius.mm";
      *&v98[8] = 1026;
      v99 = 1001;
      v100 = 2082;
      v101 = "[NavdRouteGenius _score]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v6 = v5;
LABEL_9:

    goto LABEL_10;
  }

  if (![WeakRetained[14] count])
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "No routes to score.", buf, 2u);
    }

    [v3 stop];
    goto LABEL_11;
  }

  if (sub_10003D9DC(v3))
  {
    goto LABEL_66;
  }

  if (GEOConfigGetBOOL())
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v6 = *(v3 + 112);
    v7 = [v6 countByEnumeratingWithState:&v91 objects:v96 count:16];
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = *v92;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v92 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v91 + 1) + 8 * i);
        v11 = [v10 entry];
        v12 = [v11 isMultiPointRoute];

        if (v12)
        {
          v69 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "We have a MPR", buf, 2u);
          }

          objc_storeStrong((*(a1 + 32) + 104), v10);
          sub_10003DC04(*(a1 + 32));
          v70 = *(v3 + 176);
          if (!v70)
          {
            v71 = [MapsSuggestionsCanKicker alloc];
            GEOConfigGetDouble();
            v73 = v72;
            v74 = *(v3 + 88);
            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_100016E2C;
            v89[3] = &unk_100065548;
            objc_copyWeak(&v90, (a1 + 40));
            v75 = [v71 initWithName:@"NavdRouteGeniusETACanKicker" time:v74 queue:v89 block:v73];
            v76 = *(v3 + 176);
            *(v3 + 176) = v75;

            objc_destroyWeak(&v90);
            v70 = *(v3 + 176);
          }

          [v70 kickCanBySameTime];
          v77 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "Update Delegate with MPR", buf, 2u);
          }

          sub_100012DA8(v3);
LABEL_10:

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v91 objects:v96 count:16];
      if (!v7)
      {
LABEL_22:

        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "No MPR", buf, 2u);
        }

        break;
      }
    }
  }

  v5 = MapsSuggestionsNow();
  sub_100015ACC(*(a1 + 32), v5);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = *(v3 + 112);
  v14 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
  v6 = 0;
  if (!v14)
  {
    goto LABEL_63;
  }

  v81 = *v86;
  *&v15 = 67109376;
  v78 = v15;
  v82 = 0x80000000;
  do
  {
    v80 = v14;
    for (j = 0; j != v80; j = j + 1)
    {
      if (*v86 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v85 + 1) + 8 * j);
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v17 entry];
        *buf = 138412290;
        *v98 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Scoring entry : %@", buf, 0xCu);
      }

      v20 = [v17 entry];
      v21 = NavdScoreMapsSuggestionsEntry(v20, v5);

      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v98 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Score after NavdScoreMapsSuggestionsEntry : %d", buf, 8u);
      }

      v23 = [v17 offRouteInfos];
      v24 = NavdScoreOffRoute(v23);

      if (v24 == 0x80000000)
      {
        sub_100013868(*(a1 + 32), v17);
LABEL_71:

        goto LABEL_9;
      }

      v25 = GEOFindOrCreateLog();
      v26 = v24 + v21;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v98 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Score after NavdScoreOffRoute : %d", buf, 8u);
      }

      v27 = [*(v3 + 128) locations];
      [*(v3 + 160) coordinate];
      [*(v3 + 160) coordinate];
      v28 = NavdScoreLocationHistory(v27, v5);

      v29 = GEOFindOrCreateLog();
      v30 = v28 + v26;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v98 = v28 + v26;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Score after NavdScoreLocationHistory : %d", buf, 8u);
      }

      v31 = [v17 destinationWaypoint];
      if ([v31 hasMapItemStorage])
      {
        v32 = [v31 mapItemStorage];
        [v32 coordinate];
        v34 = v33;
        v36 = v35;
      }

      else
      {
        v32 = [v31 latLng];
        [v32 lat];
        v34 = v37;
        v38 = [v31 latLng];
        [v38 lng];
        v36 = v39;
      }

      v40 = NavdScoreGeodisicDistance(*(v3 + 136), v34, v36);
      v41 = GEOFindOrCreateLog();
      v42 = v40 + v30;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v98 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "Score after NavdScoreGeodisicDistance : %d", buf, 8u);
      }

      v43 = [v17 route];
      [v43 travelTimeConservativeEstimate];
      v45 = v44;

      v46 = [v17 entry];
      v47 = [v46 ETAForKey:@"MapsSuggestionsETAKey"];

      if (v47)
      {
        GEOConfigGetDouble();
        v49 = v48;
        v50 = [v47 time];
        v51 = v49 < MapsSuggestionsSecondsSince(v50);

        if (v51)
        {
          [v47 seconds];
          v45 = v52;
        }
      }

      v53 = [v17 entry];
      v54 = NavdScoreInTimeWindow(v53, v45);

      if (v54 == 0x80000000)
      {
        sub_100013868(v3, v17);

        goto LABEL_71;
      }

      v55 = GEOFindOrCreateLog();
      v56 = v54 + v42;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v98 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Score after NavdScoreInTimeWindow : %d", buf, 8u);
      }

      if (v56 > v82)
      {
        v57 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = v78;
          *v98 = v56;
          *&v98[4] = 1024;
          *&v98[6] = v82;
          v58 = v57;
          v59 = "This score (%d) is higher then (%d)";
          v60 = 14;
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if (v56 == v82 && v17 == *(v3 + 104))
      {
        v57 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v56 = v82;
          *v98 = v82;
          v58 = v57;
          v59 = "The same score (%d) as the highest score. Sticking with the current one";
          v60 = 8;
LABEL_53:
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, v59, buf, v60);
        }

        else
        {
          v56 = v82;
        }

LABEL_54:

        v61 = v17;
        v6 = v61;
        v82 = v56;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
  }

  while (v14);
LABEL_63:

  if (v6 != *(v3 + 104))
  {
    sub_10001473C(v3, *(*(a1 + 32) + 104));
    objc_storeStrong((v3 + 104), v6);
    sub_10003DC04(*(a1 + 32));
  }

LABEL_66:
  v62 = *(v3 + 176);
  if (!v62)
  {
    v63 = [MapsSuggestionsCanKicker alloc];
    GEOConfigGetDouble();
    v65 = v64;
    v66 = *(v3 + 88);
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10001700C;
    v83[3] = &unk_100065548;
    objc_copyWeak(&v84, (a1 + 40));
    v67 = [v63 initWithName:@"NavdRouteGeniusETACanKicker" time:v66 queue:v83 block:v65];
    v68 = *(v3 + 176);
    *(v3 + 176) = v67;

    objc_destroyWeak(&v84);
    v62 = *(v3 + 176);
  }

  [v62 kickCanBySameTime];
  sub_100012DA8(v3);
LABEL_11:
}

void sub_100016C98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  _Unwind_Resume(a1);
}

void sub_100016E2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_100016F50(WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdRouteGenius.mm";
      v6 = 1026;
      v7 = 1019;
      v8 = 2082;
      v9 = "[NavdRouteGenius _score]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100016F50(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 104) route];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100018A64;
    v3[3] = &unk_100065878;
    v4 = v3[4] = a1;
    v2 = v4;
    sub_1000100B4((a1 + 88), a1, v3);
  }
}

void sub_10001700C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_100016F50(WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdRouteGenius.mm";
      v6 = 1026;
      v7 = 1100;
      v8 = 2082;
      v9 = "[NavdRouteGenius _score]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

id sub_100017130(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(GEOETATrafficUpdateRequest);
    v3 = +[GEOUserSession sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100017328;
    v11[3] = &unk_1000657D8;
    v4 = v2;
    v12 = v4;
    [v3 shortSessionValues:v11];

    v5 = +[GEOPlatform sharedPlatform];
    v6 = [v5 clientCapabilities];
    [v4 setClientCapabilities:v6];

    v7 = objc_alloc_init(GEOCommonOptions);
    [v7 setIncludeTravelTimeAggressive:1];
    [v7 setIncludeTravelTimeConservative:1];
    [v7 setIncludeTravelTimeEstimate:1];
    [v7 setExcludeGuidance:1];
    [v4 setCommonOptions:v7];
    [v4 setRequestingAppId:@"com.apple.MapsSuggestions"];
    v8 = [*(a1 + 120) location];
    [v4 setTripOrigin:v8];

    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_100017328(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  [*(a1 + 32) setSessionID:{a2, a3}];
  [*(a1 + 32) setSessionRelativeTimestamp:a6];
  v10 = *(a1 + 32);

  return [v10 setSessionCreateHour:a7];
}

id sub_10001738C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v35 = a3;
  if (a1)
  {
    v6 = +[NSMutableArray array];
    v33 = v6;
    v34 = [[GEOLocation alloc] initWithCLLocation:*(a1 + 160)];
    v32 = [[GEOComposedWaypoint alloc] initWithLocation:v34 isCurrentLocation:1];
    [v6 addObject:?];
    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
    {
      [v5 clearWaypointTypeds];
      v31 = [v35 waypoints];
      v7 = [v31 count];
      v8 = [v5 waypointRoute];
      v9 = [v8 routeLegs];
      v10 = [v9 count];

      v11 = [v31 count];
      v12 = [v35 waypoints];
      v13 = v7 - v10;
      v14 = &v11[-(v7 - v10)];
      v30 = [v12 subarrayWithRange:{v7 - v10, v14}];

      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [NSIndexSet indexSetWithIndexesInRange:v13, v14, v30];
        *buf = 138412290;
        v42 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Creating ETAU request using waypoints from index set: %@.", buf, 0xCu);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = v30;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v18)
      {
        v19 = *v37;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            v22 = [v21 geoWaypointTyped];
            if (v22)
            {
              [v5 addWaypointTyped:v22];
            }

            else
            {
              v23 = [v21 chargingInfo];
              v24 = v23 == 0;

              if (v24)
              {
                v25 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v42 = v21;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Unable to create GEOWaypointTyped from GEOComposedWaypoint for a non-EV waypoint. %@", buf, 0xCu);
                }
              }
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v18);
      }

      [v6 addObjectsFromArray:v17];
    }

    else
    {
      [v5 clearDestinationWaypointTypeds];
      v26 = [v35 destination];
      v27 = [v26 geoWaypointTyped];

      [v5 addDestinationWaypointTyped:v27];
      v28 = [v35 destination];
      [v6 addObject:v28];
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void sub_100017878(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [*(a1 + 104) route];
    if (v8)
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
      }

LABEL_36:

      goto LABEL_37;
    }

    if (![v7 status])
    {
LABEL_31:
      if ([v9 updateForResponse:v7 route:v10])
      {
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "ETA route: %{private}@", buf, 0xCu);
        }

        v11 = [v10 mutableData];
        [v11 updateForRoute:v10 etaRoute:v9];
      }

      else
      {
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        sub_10003E10C();
        v11 = *buf;
      }

      goto LABEL_36;
    }

    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_30:

      goto LABEL_31;
    }

    v13 = [v7 status];
    if (v13 <= 19)
    {
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v14 = @"STATUS_INCOMPLETE";
          goto LABEL_29;
        }

        if (v13 == 5)
        {
          v14 = @"INVALID_REQUEST";
          goto LABEL_29;
        }
      }

      else
      {
        if (!v13)
        {
          v14 = @"STATUS_SUCCESS";
          goto LABEL_29;
        }

        if (v13 == 1)
        {
          v14 = @"STATUS_FAILED";
          goto LABEL_29;
        }
      }
    }

    else if (v13 <= 39)
    {
      if (v13 == 20)
      {
        v14 = @"FAILED_NO_RESULT";
        goto LABEL_29;
      }

      if (v13 == 30)
      {
        v14 = @"NEEDS_REFINEMENT";
        goto LABEL_29;
      }
    }

    else
    {
      switch(v13)
      {
        case '(':
          v14 = @"FAILED_NOT_AUTHORIZED";
          goto LABEL_29;
        case '2':
          v14 = @"STATUS_DEDUPED";
          goto LABEL_29;
        case '<':
          v14 = @"VERSION_MISMATCH";
LABEL_29:
          *buf = 138412290;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error in ETATrafficUpdate response but attempting to continue: %@", buf, 0xCu);

          goto LABEL_30;
      }
    }

    v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
    goto LABEL_29;
  }

LABEL_37:
}

void *sub_100017C10(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1[13] route];
    objc_initWeak(&location, a1);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100017D58;
    v11[3] = &unk_100065828;
    v12 = v7;
    v13 = v6;
    v8 = v7;
    objc_copyWeak(&v15, &location);
    v14 = v5;
    v9 = objc_retainBlock(v11);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100017D58(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    v11 = [a1[4] uniqueRouteID];
    v12 = [v5 status];
    if (v12 <= 19)
    {
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v13 = @"STATUS_INCOMPLETE";
          goto LABEL_27;
        }

        if (v12 == 5)
        {
          v13 = @"INVALID_REQUEST";
          goto LABEL_27;
        }
      }

      else
      {
        if (!v12)
        {
          v13 = @"STATUS_SUCCESS";
          goto LABEL_27;
        }

        if (v12 == 1)
        {
          v13 = @"STATUS_FAILED";
          goto LABEL_27;
        }
      }
    }

    else if (v12 <= 39)
    {
      if (v12 == 20)
      {
        v13 = @"FAILED_NO_RESULT";
        goto LABEL_27;
      }

      if (v12 == 30)
      {
        v13 = @"NEEDS_REFINEMENT";
        goto LABEL_27;
      }
    }

    else
    {
      switch(v12)
      {
        case '(':
          v13 = @"FAILED_NOT_AUTHORIZED";
          goto LABEL_27;
        case '2':
          v13 = @"STATUS_DEDUPED";
          goto LABEL_27;
        case '<':
          v13 = @"VERSION_MISMATCH";
LABEL_27:
          *buf = 138412546;
          v26 = v11;
          v27 = 2112;
          *v28 = v13;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received ETATrafficUpdate response for route: %@ | Status: %@", buf, 0x16u);

          goto LABEL_28;
      }
    }

    v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
    goto LABEL_27;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [a1[4] uniqueRouteID];
    v9 = [a1[5] data];
    v10 = [v9 base64EncodedStringWithOptions:0];
    *buf = 138412802;
    v26 = v8;
    v27 = 2112;
    *v28 = v6;
    *&v28[8] = 2112;
    *&v28[10] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Received ETATrafficUpdate error for route: %@ | Error: %@\n\nB64 request:\n%@", buf, 0x20u);
  }

LABEL_28:

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    sub_100017878(WeakRetained, v5, v6, a1[6]);
    v16 = [v5 sessionState];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [v5 sessionState];
      v19 = *(v15 + 23);
      *(v15 + 23) = v18;
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100018210;
    v21[3] = &unk_100065800;
    v22 = v6;
    v23 = a1[4];
    v24 = v5;
    sub_1000100B4(v15 + 11, v15, v21);

    v20 = v22;
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "NavdRouteGenius.mm";
      v27 = 1026;
      *v28 = 1227;
      *&v28[4] = 2082;
      *&v28[6] = "[NavdRouteGenius _requesterFinishedHandlerWithPendingETARoute:request:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100018210(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v6 = [*(a1 + 40) mutableData];
    v7 = [v6 routeOverviewDescriptionStrings];

    if ([v7 count])
    {
      v8 = [MapsSuggestionsTrafficAndETAResult alloc];
      v9 = *(a1 + 48);
      v10 = [v7 firstObject];
      v11 = [v10 stringWithDefaultOptions];
      v12 = [v8 initWithGEOETATrafficUpdateResponse:v9 trafficString:v11];

      if (!*(v3 + 20))
      {
        v13 = MapsSuggestionsMostRecentLocation();
        if (qword_100075940 != -1)
        {
          sub_10003DC60();
        }

        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v31 = 138412290;
          v32 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", &v31, 0xCu);
        }

        if (!v13)
        {
          goto LABEL_13;
        }

        v15 = MapsSuggestionsNow();
        v16 = [v13 timestamp];
        [v15 timeIntervalSinceDate:v16];
        v18 = v17 > *&qword_100075948;

        if (!v18)
        {
          v19 = v13;
        }

        else
        {
LABEL_13:
          v19 = 0;
        }

        v20 = *(v3 + 20);
        *(v3 + 20) = v19;

        if (!*(v3 + 20))
        {
          v30 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v31) = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to update ETA without a location", &v31, 2u);
          }

          [*(v3 + 22) kickCanBySameTime];
          goto LABEL_20;
        }
      }

      v21 = [MapsSuggestionsETA alloc];
      v22 = *(v3 + 20);
      v23 = MapsSuggestionsNow();
      v24 = [v21 initWithTrafficAndETAResult:v12 transportType:0 location:v22 time:v23];

      v25 = [*(v3 + 13) entry];
      [v25 setETA:v24 forKey:@"MapsSuggestionsETAKey"];

      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(v3 + 13) entry];
        v28 = [v27 ETAForKey:@"MapsSuggestionsETAKey"];
        [v28 seconds];
        v31 = 134217984;
        v32 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "new eta : %f", &v31, 0xCu);
      }

      sub_100012DA8(v3);
    }

    [*(v3 + 22) kickCanBySameTime];
LABEL_20:

    goto LABEL_21;
  }

  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v31 = 138412290;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error getting ETA: %@", &v31, 0xCu);
  }

  [*(v3 + 22) kickCanBySameTime];
LABEL_21:
}

id sub_1000186E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[GEOLocation alloc] initWithCLLocation:*(a1 + 160)];
    v5 = [[GEORouteMatcher alloc] initWithRoute:v3 auditToken:0];
    v6 = [v5 matchToRouteWithLocation:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 route];

      if (v8 != v3)
      {
        v11 = GEOFindOrCreateLog();
        sub_10003E168(v11);
        v9 = 0;
        goto LABEL_6;
      }

      [v7 routeCoordinate];
    }

    v9 = v7;
LABEL_6:

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

id sub_100018824(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = [[GEOLocation alloc] initWithCLLocation:*(a1 + 20)];
      [v5 setCurrentUserLocation:v8];
      v9 = objc_alloc_init(GEOComposedETARoute);
      v10 = sub_1000186E4(a1, v7);
      v11 = [v9 prepareForRequest:v5 route:v7 routeMatch:v10 targetLegIndex:0 state:2];

      if (v11)
      {
        v12 = [v7 directionsResponseID];
        [v5 setDirectionsResponseID:v12];

        [v5 setEtauResponseID:0];
        v13 = [v5 directionsResponseID];

        if (!v13)
        {
          v14 = [v7 etauResponseID];
          [v5 setEtauResponseID:v14];
        }

        a1 = v9;
      }

      else
      {
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to create ETA route for ETATrafficUpdateRequest.", buf, 2u);
        }

        [*(a1 + 22) kickCanBySameTime];
        a1 = 0;
      }
    }

    else
    {
      v17 = GEOFindOrCreateLog();
      sub_10003E1C8(v17, &v18, buf);
      v8 = v18;
      a1 = *buf;
    }
  }

  return a1;
}

void sub_100018A64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3[13] entry];

  if (v4)
  {
    if (v3[20])
    {
      v5 = *(a1 + 32);
      objc_sync_enter(v5);
      if (!v3[27])
      {
        goto LABEL_5;
      }

      v6 = *(a1 + 32);
      objc_sync_enter(v6);
      v7 = MapsSuggestionsNow();
      [v7 timeIntervalSinceDate:v3[27]];
      v9 = v8;

      objc_sync_exit(v6);
      GEOConfigGetDouble();
      if (v9 < v10)
      {
        sub_100018E44(*(a1 + 32));
        [*(*(a1 + 32) + 176) kickCanBySameTime];
        objc_sync_exit(v5);
      }

      else
      {
LABEL_5:
        v11 = MapsSuggestionsNow();
        v12 = *(a1 + 32);
        v13 = *(v12 + 216);
        *(v12 + 216) = v11;

        objc_sync_exit(v5);
        v14 = sub_100017130(*(a1 + 32));
        [v14 setRouteAttributes:*(*(a1 + 32) + 40)];
        [v14 setPurpose:1];
        [v14 setSessionState:v3[23]];
        *buf = 0;
        v31 = buf;
        v32 = 0x3032000000;
        v33 = sub_100019004;
        v34 = sub_100019014;
        v35 = sub_100018824(*(a1 + 32), v14, *(a1 + 40));
        v15 = sub_10001738C(*(a1 + 32), v14, *(a1 + 40));
        v16 = objc_alloc_init(GEOETATrafficUpdateRequester);
        v17 = [MNRouteAttributes alloc];
        v18 = [*(a1 + 40) routeAttributes];
        v19 = [*(a1 + 40) waypoints];
        v20 = [v17 initWithAttributes:v18 waypoints:v19];

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10001901C;
        v25[3] = &unk_100065850;
        v21 = v14;
        v26 = v21;
        v22 = v16;
        v23 = *(a1 + 32);
        v27 = v22;
        v28 = v23;
        v29 = buf;
        [v20 buildRouteAttributesForETAUpdateRequest:v21 queue:&_dispatch_main_q result:v25];

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "There is no lastKnowLocation", buf, 2u);
      }
    }
  }
}

void sub_100018E44(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 168);
    if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
    {
      v13 = *(a1 + 160);
      v3 = [*(a1 + 104) route];
      v4 = [v3 mutableData];
      v5 = [v4 etaRoute];
      [v3 remainingTimeToEndOfRouteFrom:v2 etaRoute:v5];
      v7 = v6;

      v8 = objc_alloc_init(MapsSuggestionsTrafficAndETAResult);
      [v8 setSeconds:v7];
      v9 = [MapsSuggestionsETA alloc];
      v10 = MapsSuggestionsNow();
      v11 = [v9 initWithTrafficAndETAResult:v8 transportType:0 location:v13 time:v10];

      v12 = [*(a1 + 104) entry];
      [v12 setETA:v11 forKey:@"MapsSuggestionsETAKey"];

      sub_100012DA8(a1);
    }
  }
}

uint64_t sub_100019004(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001901C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error updating route attributes with LPR/Vehicle info: %@. Continuing ETA update anyway", &v12, 0xCu);
    }
  }

  [*(a1 + 32) setRouteAttributes:v5];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = [[GEOApplicationAuditToken alloc] initWithProxiedApplicationBundleId:@"com.apple.Maps"];
  v11 = sub_100017C10(*(a1 + 48), *(*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  [v8 sendETATrafficUpdateRequest:v9 auditToken:v10 throttleToken:0 finishedHandler:v11];
}

void sub_1000191AC(id a1, NavdRouteGenius *a2)
{
  v55 = a2;
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [(NSArray *)v55->_state.routes count];
    *buf = 134217984;
    v66 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Getting new routes if needed for %ld entries", buf, 0xCu);
  }

  v4 = MapsSuggestionsMostRecentLocation();
  if (qword_100075940 != -1)
  {
    sub_10003DD64();
  }

  v53 = v4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v66 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "MapsSuggestionsMostRecentLocation() is %@", buf, 0xCu);
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = MapsSuggestionsNow();
  v7 = [v4 timestamp];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8 > *&qword_100075948;

  if (v9)
  {
    v4 = v53;
LABEL_10:
    v53 = 0;
    goto LABEL_28;
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v55->_state.routes, "count")}];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v55->_state.routes;
  v54 = v10;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v75 count:16];
  if (v11)
  {
    v13 = *v61;
    *&v12 = 138413314;
    v51 = v12;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v60 + 1) + 8 * i);
        if (v15 == v55->_state.route)
        {
          v36 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "This is the active route, we should keep it", buf, 2u);
          }

          [v54 addObject:v15];
        }

        else
        {
          v16 = [*(*(&v60 + 1) + 8 * i) entry];
          v17 = [v16 geoMapItem];
          [v17 coordinate];
          v18 = CLLocationFromGEOLocationCoordinate2D();
          [v53 distanceFromLocation:v18];
          v20 = v19;

          v21 = [(NavdRouteGeniusRoute *)v15 entry];
          v22 = [v21 geoMapItem];
          [v22 coordinate];
          v23 = CLLocationFromGEOLocationCoordinate2D();
          [v53 distanceFromLocation:v23];
          v25 = v24;
          GEOConfigGetDouble();
          v27 = v25 < v26;

          if (v27)
          {
            v28 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = [(NavdRouteGeniusRoute *)v15 entry];
              v30 = [v29 title];
              GEOConfigGetDouble();
              v32 = v31;
              v33 = [(NavdRouteGeniusRoute *)v15 entry];
              v34 = [v33 geoMapItem];
              [v34 coordinate];
              v35 = CLLocationFromGEOLocationCoordinate2D();
              *buf = v51;
              v66 = v30;
              v67 = 2112;
              v68 = v53;
              v69 = 2048;
              v70 = v32;
              v71 = 2112;
              v72 = v35;
              v73 = 2048;
              v74 = v20;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "dropped route %@ because %@ too close(%f) %@:%f", buf, 0x34u);
            }
          }

          else
          {
            [v54 addObject:v15];
          }
        }
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v75 count:16];
    }

    while (v11);
  }

  v37 = [v54 copy];
  routes = v55->_state.routes;
  v55->_state.routes = v37;

  v4 = v54;
LABEL_28:

  if (![(NSArray *)v55->_state.routes count])
  {
    v39 = GEOFindOrCreateLog();
    sub_10003E2A0(v39);

    sub_10003DA24(&v55->super.isa);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = v55->_state.routes;
  v41 = [(NSArray *)v40 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v41)
  {
    v42 = *v57;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v57 != v42)
        {
          objc_enumerationMutation(v40);
        }

        v44 = *(*(&v56 + 1) + 8 * j);
        if ([v44 isLoadingRoute])
        {
          v45 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v46 = [v44 entry];
            v47 = [v46 title];
            *buf = 138412290;
            v66 = v47;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Already loading, skipping route: %@", buf, 0xCu);
          }
        }

        else
        {
          v48 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v49 = [v44 entry];
            v50 = [v49 title];
            *buf = 138412290;
            v66 = v50;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "not yet loading route for entry: %@", buf, 0xCu);
          }

          sub_10000F8F8(v55, v44);
        }
      }

      v41 = [(NSArray *)v40 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v41);
  }
}

void sub_100019B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3[20] || ([*(a1 + 32) distanceFromLocation:?], v5 = v4, GEOConfigGetDouble(), v5 >= v6))
  {
    objc_storeStrong(v3 + 20, *(a1 + 32));
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) coordinate];
      v9 = v8;
      [*(a1 + 32) coordinate];
      *buf = 134218240;
      v59 = v9;
      v60 = 2048;
      v61 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received location update : <%.6f,%.6f>", buf, 0x16u);
    }

    [v3[16] addLocation:*(a1 + 32)];
    v11 = v3[17];
    v12 = [NavdGeodesicLocation alloc];
    [*(a1 + 32) coordinate];
    v14 = v13;
    [*(a1 + 32) coordinate];
    v16 = v15;
    v17 = [*(a1 + 32) timestamp];
    [v17 timeIntervalSinceDate:v3[18]];
    v19 = [(NavdGeodesicLocation *)v12 initWithLocation:v14 timeInterval:v16, v18];
    [v11 addObject:v19];

    if (*(v3 + 153))
    {
      v20 = v3[13];
      if (v20)
      {
        v21 = [v20 entry];
        v22 = v21 == 0;

        if (!v22)
        {
          v23 = [v3[13] entry];
          v24 = MapsSuggestionsLocationForEntry();

          [*(a1 + 32) distanceFromLocation:v24];
          v26 = v25;
          GEOConfigGetDouble();
          if (v26 < v27)
          {
            v28 = [GEORouteMatcher alloc];
            v29 = [v3[13] route];
            v30 = [v28 initWithRoute:v29 auditToken:0];

            [*(a1 + 32) coordinate];
            GEOLocationCoordinate2DFromCLLocationCoordinate2D();
            v31 = [v30 closestRouteCoordinateForLocationCoordinate:?];
            v32 = [*(*(a1 + 40) + 104) route];
            [v32 distanceToEndFromRouteCoordinate:v31];
            v34 = v33;

            v35 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v59 = v34;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Distance to the end along route: %f", buf, 0xCu);
            }

            GEOConfigGetDouble();
            if (v34 < v36)
            {
              v52 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v53 = [v3[13] entry];
                sub_10003E2EC(v53, buf, v52);
              }

              sub_10003DA24(v3);
              goto LABEL_22;
            }
          }

          [*(a1 + 32) distanceFromLocation:v24];
          v38 = v37;
          GEOConfigGetDouble();
          sub_10000FE8C(v3, v38 < v39);
          v40 = [v3[13] route];
          v41 = v40 == 0;

          if (v41)
          {
            goto LABEL_23;
          }

          v42 = [*(*(a1 + 40) + 104) entry];
          v43 = [v42 isMultiPointRoute];

          if (v43)
          {
            goto LABEL_23;
          }

          v30 = [v3[13] matchResultForLocation:*(a1 + 32)];
          v44 = [v30 routeMatch];
          v3[21] = [v44 routeCoordinate];

          if (([v3[13] isOnRoute:v30 location:*(a1 + 32)] & 1) == 0)
          {
            v45 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "We are off route!", buf, 2u);
            }

            v46 = v3[13];
            v47 = *(a1 + 32);
            v48 = MapsSuggestionsNow();
            [v46 updateRerouteInfoForLocation:v47 time:v48];

            v49 = v3[3];
            v51 = *(a1 + 32);
            v50 = (a1 + 32);
            v54[0] = _NSConcreteStackBlock;
            v54[1] = 3221225472;
            v54[2] = sub_10001A1CC;
            v54[3] = &unk_1000658E0;
            objc_copyWeak(&v57, v50 + 2);
            v55 = *v50;
            v56 = v3;
            [v49 requestWaypointForCurrentLocation:v51 completion:v54];

            objc_destroyWeak(&v57);
          }

LABEL_22:

LABEL_23:
        }
      }
    }
  }
}

void sub_10001A0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v18 + 48));

  _Unwind_Resume(a1);
}

void sub_10001A1CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 32);
        *buf = 138412546;
        v16 = v11;
        v17 = 2112;
        v18[0] = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "unable to get waypoint for location <%@> with error : %@", buf, 0x16u);
      }

      [*(a1 + 40) stop];
    }

    else
    {
      v8 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001A424;
      v12[3] = &unk_1000655F8;
      objc_copyWeak(&v14, (a1 + 48));
      v13 = v5;
      dispatch_async(*(v8 + 88), v12);

      objc_destroyWeak(&v14);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "NavdRouteGenius.mm";
      v17 = 1026;
      LODWORD(v18[0]) = 1526;
      WORD2(v18[0]) = 2082;
      *(v18 + 6) = "[NavdRouteGenius didUpdateLocation:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10001A424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 15, *(a1 + 32));
    sub_10000F8F8(v3, v3[13]);
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "NavdRouteGenius.mm";
      v7 = 1026;
      v8 = 1534;
      v9 = 2082;
      v10 = "[NavdRouteGenius didUpdateLocation:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerInnerStrongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10001A61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = NavdRouteGenius;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

dispatch_queue_t *sub_10001A824(dispatch_queue_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *a1 = 0;
  v7 = [v5 copy];
  a1[1] = v7;
  v8 = dispatch_queue_create([v7 UTF8String], v6);
  v9 = *a1;
  *a1 = v8;

  return a1;
}

void sub_10001A8C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "self went away in MSg::Queue::async()", v4, 2u);
    }
  }
}

void sub_10001A984(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10001A9BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10001AF80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_10001B798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    sub_10001B8C4(WeakRetained, *(a1 + 32));
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "NavdVehicleBluetoothConnectAction.mm";
      v7 = 1026;
      v8 = 158;
      v9 = 2082;
      v10 = "[NavdVehicleBluetoothConnectAction actWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10001B8C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (MapsSuggestionsIsTrue())
    {
      sub_10003E3F8(a1, &v6, v3);
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Not all Runconditions YES, skipping looking for Entries", buf, 2u);
      }

      (*(v3 + 2))(v3, 0);
    }
  }
}

uint64_t sub_10001B99C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v23 = MapsSuggestionsNow();
    v5 = [v24 geoMapItem];
    v25 = MapsSuggestionsLocationForMapItem();

    if (a3 && v25)
    {
      v6 = [[_BTNotificationLocationTimestamp alloc] initWithLocation:v25 timestamp:v23];
      v7 = [*(a1 + 80) containsObject:v6];
      v8 = *(a1 + 80);
      if (v7)
      {
        v9 = [v8 mutableCopy];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = *(a1 + 80);
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v11)
        {
          v12 = *v27;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              v15 = [v14 timestamp];
              v16 = MapsSuggestionsSecondsSince(v15);

              if ([v14 isEqual:v6])
              {
                v17 = GEOConfigNavdVehicleBTNotificationLeftLocationTimePerimeter[1];
                GEOConfigGetDouble();
                if (v16 < v18)
                {
                  a1 = 0;
                  goto LABEL_23;
                }

                [v9 removeObject:v6];
                [v9 addObject:v6];
              }

              v19 = GEOConfigNavdVehicleBTNotificationLeftLocationTimePerimeter[1];
              GEOConfigGetDouble();
              if (v16 > v20)
              {
                [v9 removeObject:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v21 = v9;
        v10 = *(a1 + 80);
        *(a1 + 80) = v21;
        a1 = 1;
LABEL_23:
      }

      else
      {
        [v8 addObject:v6];
        a1 = 1;
      }
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_ERROR, "Destination entry or currentLocation is nil", buf, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

void sub_10001BCD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v22 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000659C0 name:@"noMapItemFilter"];
    v3 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000659E0 name:@"notADestinationFilter"];
    v21 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_100065A00 name:@"parkedCarFilter"];
    v4 = +[MapsSuggestionsEngineBuilder forDevice];
    v5 = [v4 withResourceDepot:*(*(a1 + 32) + 32)];

    v6 = [v5 withoutTracker];

    v7 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v8 = [v6 withLocationUpdater:v7];

    v26[0] = v22;
    v26[1] = v3;
    v26[2] = v21;
    v9 = objc_alloc_init(MapsSuggestionsZeroWeightFilter);
    v26[3] = v9;
    v10 = objc_alloc_init(MapsSuggestionsNearbyFilter);
    v26[4] = v10;
    v11 = [NSArray arrayWithObjects:v26 count:5];
    v12 = [NSSet setWithArray:v11];
    v13 = [v8 withPostFilters:v12];

    v14 = [v13 build];
    v15 = WeakRetained[7];
    WeakRetained[7] = v14;

    if (WeakRetained[7])
    {
      v16 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_100065A20];
      [*(*(a1 + 32) + 56) addAdditionalFilter:v16 forSink:?];
      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Ready to run oneshot Engine", buf, 2u);
      }

      v18 = WeakRetained[7];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001C36C;
      v23[3] = &unk_100065A98;
      objc_copyWeak(&v25, (a1 + 48));
      v24 = *(a1 + 40);
      if (![v18 oneShotTopSuggestionsForSink:WeakRetained count:3 transportType:0 callback:v23 onQueue:*(*(a1 + 32) + 8)])
      {
        v19 = WeakRetained[7];
        WeakRetained[7] = 0;

        (*(*(a1 + 40) + 16))();
      }

      objc_destroyWeak(&v25);
    }

    else
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "unable to build Engine", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "NavdVehicleBluetoothConnectAction.mm";
      v29 = 1026;
      v30 = 219;
      v31 = 2082;
      v32 = "[NavdVehicleBluetoothConnectAction _executeConnectAction:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: executeStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v22 = v3;
  }
}

void sub_10001C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  objc_destroyWeak((v17 + 40));

  _Unwind_Resume(a1);
}

BOOL sub_10001C234(id a1, MapsSuggestionsEntry *a2)
{
  v2 = [(MapsSuggestionsEntry *)a2 geoMapItem];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_10001C26C(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  if (([(MapsSuggestionsEntry *)v2 containsKey:@"MapsSuggestionsIsNotADestinationKey"]& 1) != 0)
  {
    v3 = [(MapsSuggestionsEntry *)v2 BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:0];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

BOOL sub_10001C2FC(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsSuggestionsOfflineService);
  v4 = [(MapsSuggestionsOfflineService *)v3 shouldKeepEntryWhenOffline:v2];

  return v4;
}

void sub_10001C36C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Done running oneshot Engine", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 1);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001C5D0;
    v13[3] = &unk_100065A70;
    v11 = v10;
    objc_copyWeak(&v17, (a1 + 40));
    v16 = *(a1 + 32);
    v14 = v6;
    v15 = v5;
    dispatch_async(v11, v13);

    objc_destroyWeak(&v17);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "NavdVehicleBluetoothConnectAction.mm";
      v20 = 1026;
      v21 = 269;
      v22 = 2082;
      v23 = "[NavdVehicleBluetoothConnectAction _executeConnectAction:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001C5D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v37 = "NavdVehicleBluetoothConnectAction.mm";
      v38 = 1026;
      v39 = 272;
      v40 = 2082;
      v41 = "[NavdVehicleBluetoothConnectAction _executeConnectAction:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v4 = WeakRetained[7];
  WeakRetained[7] = 0;

  if (!*(a1 + 32))
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*(a1 + 40) count];
      *buf = 134217984;
      v37 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "number of destinations = %lu", buf, 0xCu);
    }

    if (![*(a1 + 40) count])
    {
      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "no destinations", buf, 2u);
      }

      v9 = 0;
      v8 = *(a1 + 48);
      goto LABEL_10;
    }

    v12 = MapsSuggestionsCurrentBestLocation();
    if (!v12)
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "MapsSuggestionsCurrentBestLocation is nil", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_39;
    }

    v13 = [*(a1 + 40) firstObject];
    if ((sub_10001B99C(v3, v13, v12) & 1) == 0)
    {
      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Not showing destination because we were recently there.", buf, 2u);
      }

      goto LABEL_38;
    }

    [v13 setBoolean:1 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
    if ([v13 containsKey:@"MapsSuggestionsETAKey"])
    {
      v14 = [v13 ETAForKey:@"MapsSuggestionsETAKey"];
      if (![v14 transportType])
      {
        v15 = sub_10003E344(v3);
        v16 = [v14 isValidForLocation:v12 requirements:v15];

        if (v16)
        {
          [v14 seconds];
          v18 = v17;
          v19 = GEOConfigNavdVehicleBTNotificationMinimumETA[1];
          GEOConfigGetDouble();
          if (v18 >= v20)
          {
            sub_10001CC38(v3, v13);
          }

          (*(*(a1 + 48) + 16))();

LABEL_38:
LABEL_39:

          goto LABEL_11;
        }
      }
    }

    v24 = sub_10001D060(v3);
    v35 = v13;
    v25 = [NSArray arrayWithObjects:&v35 count:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10001D210;
    v31[3] = &unk_100065A48;
    objc_copyWeak(&v34, (a1 + 56));
    v33 = *(a1 + 48);
    v26 = v13;
    v32 = v26;
    v27 = [v24 ETAsFromLocation:v12 toEntries:v25 completion:v31];

    if (!v27)
    {
      v28 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not request an ETA for Entry %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v29, v30);
    }

    objc_destroyWeak(&v34);
    goto LABEL_38;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Error occured while running oneshot Engine :%@", buf, 0xCu);
  }

LABEL_9:
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
LABEL_10:
  (*(v8 + 16))(v8, v9);
LABEL_11:
}

void sub_10001CC38(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (([v3 containsKey:@"MapsSuggestionsETAKey"] & 1) == 0)
    {
      v9 = GEOFindOrCreateLog();
      sub_10003E4CC(v9, v26);
      v10 = *v26;
LABEL_15:

      goto LABEL_16;
    }

    v5 = a1[3];
    if (MapsSuggestionsIsTrue())
    {
      v6 = [v4 ETAForKey:@"MapsSuggestionsETAKey"];
      v7 = v4;
      v8 = v6;
      if ([v7 containsKey:@"MapsSuggestionsEntryTitleNameKey"])
      {
        [v7 stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
      }

      else
      {
        [v7 undecoratedTitle];
      }
      v11 = ;
      [v8 seconds];
      v12 = NSStringFromMapsSuggestionsShortETA();
      v13 = v11;
      if (qword_100075958 != -1)
      {
        sub_10003E4B8();
      }

      v14 = (*(qword_100075950 + 16))(qword_100075950, v12, v13);

      [v7 setTitle:v14];
      v15 = [v8 trafficString];
      [v7 setSubtitle:v15];

      v10 = objc_alloc_init(GEOURLOptions);
      [v10 setEnableTraffic:1];
      [v10 setTransportType:0];
      [v10 setReferralIdentifier:@"com.apple.navd.bulletinboard"];
      v16 = [v7 geoMapItem];
      v17 = [GEOMapItemURLExtras urlToPresentDirectionsFromCurrentLocationToMapItem:v16 withOptions:v10];

      v18 = a1[8];
      v19 = [v7 title];
      v20 = [v7 subtitle];
      [v18 showWithTitle:v19 message:v20 actionURL:v17];

      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v7 title];
        v23 = [v7 subtitle];
        v24 = [v17 absoluteString];
        *v26 = 138412802;
        *&v26[4] = v22;
        v27 = 2112;
        v28 = v23;
        v29 = 2112;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Sent Notification with Title: %@ and message : %@ and url: %@", v26, 0x20u);
      }

      v25 = a1[9];
      if (v25)
      {
        (*(v25 + 16))();
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

void *sub_10001D060(void *a1)
{
  v1 = a1;
  if (a1)
  {
    if (!a1[6])
    {
      v2 = [MapsSuggestionsETARequester alloc];
      v3 = [v1[4] oneNetworkRequester];
      v4 = +[MapsSuggestionsPredictor sharedPredictor];
      v5 = sub_10003E344(v1);
      v6 = [v2 initWithNetworkRequester:v3 transportModePredictor:v4 requirements:v5];
      v7 = v1[6];
      v1[6] = v6;

      [v1[6] forceTransportType:0];
    }

    v8 = objc_alloc_init(GEOAutomobileOptions);
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
    v11 = [v10 path];
    AppBooleanValueWithContainer = _CFPreferencesGetAppBooleanValueWithContainer();

    if (AppBooleanValueWithContainer)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    [v8 setTrafficType:v13];
    [v1[6] setAutomobileOptions:v8];
    v1 = v1[6];
  }

  return v1;
}

void sub_10001D210(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error getting ETA: %@", &v12, 0xCu);
      }

      goto LABEL_13;
    }

    if (![*(a1 + 32) containsKey:@"MapsSuggestionsETAKey"])
    {
LABEL_13:
      (*(*(a1 + 40) + 16))();
      goto LABEL_14;
    }

    v7 = [*(a1 + 32) ETAForKey:@"MapsSuggestionsETAKey"];
    [v7 seconds];
    v9 = v8;
    v10 = GEOConfigNavdVehicleBTNotificationMinimumETA[1];
    GEOConfigGetDouble();
    if (v9 >= v11)
    {
      sub_10001CC38(WeakRetained, *(a1 + 32));
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "NavdVehicleBluetoothConnectAction.mm";
      v14 = 1026;
      v15 = 323;
      v16 = 2082;
      v17 = "[NavdVehicleBluetoothConnectAction _executeConnectAction:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v12, 0x1Cu);
    }
  }

LABEL_14:
}

void sub_10001D528(id a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D734;
  block[3] = &unk_100065B28;
  block[4] = "NavdVehicleBluetoothConnectAction";
  if (qword_100075968 != -1)
  {
    dispatch_once(&qword_100075968, block);
  }

  v1 = qword_100075960;
  v2 = [v1 localizedStringForKey:@"MAPS_ETA_TO_CUSTOM" value:@"%@ to %@<unlocalized>" table:0];
  v3 = MapsSuggestionsNonNilString();

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D6A4;
  v7[3] = &unk_100065B08;
  v8 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v7);
  v6 = qword_100075950;
  qword_100075950 = v5;
}

id sub_10001D6A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:*(a1 + 32), v5, v6];

  return v7;
}

void sub_10001D734(uint64_t a1)
{
  if (!qword_100075960)
  {
    v2 = [NSBundle bundleWithIdentifier:@"com.apple.MapsSuggestions"];
    v3 = qword_100075960;
    qword_100075960 = v2;

    if (!qword_100075960)
    {
      v4 = *(a1 + 32);
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 136446978;
        v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefines.h";
        v8 = 1024;
        v9 = 341;
        v10 = 2082;
        v11 = "NSBundle * _Nonnull _MapsSuggestionsBundle(const char * _Nonnull)_block_invoke";
        v12 = 2082;
        v13 = "nil == s_bundleWithMapsSuggestionsIdentifier";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires bundleWithIdentifier:@com.apple.MapsSuggestions", &v6, 0x26u);
      }
    }
  }
}

void sub_10001DDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v17 - 128));

  _Unwind_Resume(a1);
}

uint64_t sub_10001DEE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_10003E5A4(WeakRetained);
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "NavdMapsSuggestionsController.mm";
      v8 = 1026;
      v9 = 185;
      v10 = 2082;
      v11 = "[NavdMapsSuggestionsController initWithResourceDepot:sharedRegister:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v3 = 1;
  }

  return v3;
}

void sub_10001E010(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_10003E5A4(WeakRetained);
    sub_10003E760(v4, &v6, a1 + 10, a1);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "NavdMapsSuggestionsController.mm";
      v9 = 1026;
      v10 = 190;
      v11 = 2082;
      v12 = "[NavdMapsSuggestionsController initWithResourceDepot:sharedRegister:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10001E148(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MapsSuggestionsCircuitBoard);
    v4 = *(WeakRetained + 1);
    *(WeakRetained + 1) = v3;

    v5 = [NavdVehicleBluetoothStatus alloc];
    v6 = *(WeakRetained + 1);
    v66 = *(a1 + 32);
    v7 = [NSArray arrayWithObjects:&v66 count:1];
    v65 = *(a1 + 40);
    v8 = [NSArray arrayWithObjects:&v65 count:1];
    v9 = [(NavdVehicleBluetoothStatus *)v5 initWithCircuitBoard:v6 connectTriggers:v7 disconnectTriggers:v8];
    v10 = *(WeakRetained + 2);
    *(WeakRetained + 2) = v9;

    v11 = [NavdVehicleBluetoothNotificationHandler alloc];
    v12 = *(WeakRetained + 1);
    v58 = [*(WeakRetained + 2) carConnectTrigger];
    v64 = v58;
    v55 = [NSArray arrayWithObjects:&v64 count:1];
    v51 = [*(WeakRetained + 2) carConnectCondition];
    v63[0] = v51;
    v13 = *(a1 + 48);
    v50 = +[MapsSuggestionsNavigationStartedTrigger description];
    v14 = [v13 objectForKeyedSubscript:?];
    v15 = [NSString alloc];
    v16 = [v14 uniqueName];
    v17 = [v16 capitalizedString];
    v52 = v12;
    v53 = v11;
    v18 = [v15 initWithFormat:@"negated%@", v17, v14];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001F5CC;
    *&buf[24] = &unk_100065BC8;
    v56 = v14;
    v68 = v56;
    v19 = v18;
    v20 = buf;
    v57 = [[MapsSuggestionsBlockCondition alloc] initWithName:v19 block:v20];

    v63[1] = v57;
    v21 = *(a1 + 56);
    v22 = [NSString alloc];
    v23 = [v21 uniqueName];
    v24 = [v23 capitalizedString];
    v25 = [v22 initWithFormat:@"negated%@", v24];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10001F5CC;
    v59[3] = &unk_100065BC8;
    v26 = v21;
    v60 = v26;
    v27 = v25;
    v28 = v59;
    v54 = [[MapsSuggestionsBlockCondition alloc] initWithName:v27 block:v28];

    v63[2] = v54;
    v29 = *(a1 + 48);
    v49 = +[MapsSuggestionsSiri isAllowedOnHomeScreenCondition];
    v48 = [v49 uniqueName];
    v47 = [v29 objectForKeyedSubscript:?];
    v63[3] = v47;
    v30 = *(a1 + 48);
    v46 = +[MapsSuggestionsSiri isAllowedOnLockScreenCondition];
    v45 = [v46 uniqueName];
    v31 = [v30 objectForKeyedSubscript:?];
    v32 = *(a1 + 64);
    v63[4] = v31;
    v63[5] = v32;
    v33 = objc_alloc_init(NavdMapsSuggestionsLBALocationAccessAllowedCondition);
    v34 = *(a1 + 72);
    v63[6] = v33;
    v63[7] = v34;
    v35 = [NSArray arrayWithObjects:v63 count:8];
    v36 = [*(WeakRetained + 2) carDisconnectTrigger];
    v62 = v36;
    v37 = [NSArray arrayWithObjects:&v62 count:1];
    v38 = [*(WeakRetained + 2) carDisconnectCondition];
    v61 = v38;
    v39 = [NSArray arrayWithObjects:&v61 count:1];
    v40 = *(WeakRetained + 3);
    v41 = objc_alloc_init(NavdRealVehicleBluetoothNotifier);
    v42 = [(NavdVehicleBluetoothNotificationHandler *)v53 initWithCiruitBoard:v52 connectTriggers:v55 connectConditions:v35 disconnectTriggers:v37 disconnectConditions:v39 resourceDepot:v40 notifier:v41];
    v43 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v42;

    v44 = v55;
  }

  else
  {
    v44 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "NavdMapsSuggestionsController.mm";
      *&buf[12] = 1026;
      *&buf[14] = 194;
      *&buf[18] = 2082;
      *&buf[20] = "[NavdMapsSuggestionsController initWithResourceDepot:sharedRegister:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }

    v58 = v44;
  }
}

void sub_10001EA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = NavdMapsSuggestionsController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001EC58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136446722;
      *&v10[4] = "NavdMapsSuggestionsController.mm";
      *&v10[12] = 1026;
      *&v10[14] = 280;
      *&v10[18] = 2082;
      *&v10[20] = "[NavdMapsSuggestionsController startDoomIfNotStarted]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", v10, 0x1Cu);
    }

    v6 = v9;
    goto LABEL_9;
  }

  if (NavdDoomCanRun())
  {
    v3 = *(*(a1 + 32) + 24);
    *v10 = _NSConcreteStackBlock;
    *&v10[8] = 3221225472;
    *&v10[16] = sub_10001EF0C;
    *&v10[24] = &unk_100065BA0;
    v11 = v3;
    v4 = qword_100075978;
    v5 = v3;
    if (v4 != -1)
    {
      dispatch_once(&qword_100075978, v10);
    }

    v6 = qword_100075970;

    v7 = [NavdDoomHost alloc];
    v8 = [(NavdDoomHost *)v7 initFromResourceDepot:*(*(a1 + 32) + 24) sharedRegister:v6 engine:*(*(a1 + 32) + 40), *v10, *&v10[8], *&v10[16], *&v10[24]];
    v9 = WeakRetained[6];
    WeakRetained[6] = v8;
LABEL_9:
  }
}

void sub_10001EF0C(uint64_t a1)
{
  v40 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
  v41[0] = v40;
  v38 = [[MapsSuggestionsMapsInstalledTriggeringToggle alloc] initWithName:@"mapsAppInstalled" startState:0];
  v42[0] = v38;
  v39 = +[MapsSuggestionsBluetoothVehicleConnectionTrigger description];
  v41[1] = v39;
  v32 = [[MapsSuggestionsBluetoothVehicleConnectionTrigger alloc] initFireOnConnect:0 disconnect:1 exit:1];
  v42[1] = v32;
  v31 = +[MapsSuggestionsDestinationdTrigger description];
  v41[2] = v31;
  v30 = objc_alloc_init(MapsSuggestionsDestinationdTrigger);
  v42[2] = v30;
  v29 = +[MapsSuggestionsFirstUnlockTrigger description];
  v41[3] = v29;
  v28 = objc_alloc_init(MapsSuggestionsFirstUnlockTrigger);
  v42[3] = v28;
  v27 = +[MapsSuggestionsNetworkReachableTrigger description];
  v41[4] = v27;
  v26 = objc_alloc_init(MapsSuggestionsNetworkReachableTrigger);
  v42[4] = v26;
  v25 = +[MapsSuggestionsNoCellularDataCondition description];
  v41[5] = v25;
  v24 = objc_alloc_init(MapsSuggestionsNoCellularDataCondition);
  v42[5] = v24;
  v23 = +[MapsSuggestionsNavigationStartedTrigger description];
  v41[6] = v23;
  v22 = objc_alloc_init(MapsSuggestionsNavigationStartedTrigger);
  v42[6] = v22;
  v21 = +[MapsSuggestionsSiri isEnabledCondition];
  v20 = [v21 uniqueName];
  v41[7] = v20;
  v19 = +[MapsSuggestionsSiri isEnabledCondition];
  v42[7] = v19;
  v18 = +[MapsSuggestionsSiri isAllowedOnHomeScreenCondition];
  v17 = [v18 uniqueName];
  v41[8] = v17;
  v16 = +[MapsSuggestionsSiri isAllowedOnHomeScreenCondition];
  v42[8] = v16;
  v15 = +[MapsSuggestionsSiri isAllowedOnLockScreenCondition];
  v34 = [v15 uniqueName];
  v41[9] = v34;
  v33 = +[MapsSuggestionsSiri isAllowedOnLockScreenCondition];
  v42[9] = v33;
  v35 = +[MapsSuggestionsCurrentLocationCondition description];
  v41[10] = v35;
  v36 = objc_alloc_init(MapsSuggestionsCurrentLocationCondition);
  v42[10] = v36;
  v37 = +[MapsSuggestionsEventKitChangedTrigger description];
  v41[11] = v37;
  v2 = [MapsSuggestionsEventKitChangedTrigger alloc];
  v3 = [*(a1 + 32) oneEventKit];
  v4 = [v2 initWithEventKit:v3];
  v42[11] = v4;
  v5 = +[MapsSuggestionsPreferredTransportTypeTrigger description];
  v41[12] = v5;
  v6 = objc_alloc_init(MapsSuggestionsPreferredTransportTypeTrigger);
  v42[12] = v6;
  v7 = +[MapsSuggestionsUserDeletedSuggestionTrigger description];
  v41[13] = v7;
  v8 = [[MapsSuggestionsUserDeletedSuggestionTrigger alloc] initWithName:@"userDeleteTrigger"];
  v42[13] = v8;
  v9 = +[NavdMapsSuggestionsLBALocationAccessAllowedCondition description];
  v41[14] = v9;
  v10 = objc_alloc_init(NavdMapsSuggestionsLBALocationAccessAllowedCondition);
  v42[14] = v10;
  v11 = +[MapsSuggestionsTransportTypePreferenceCondition description];
  v41[15] = v11;
  v12 = [[MapsSuggestionsTransportTypePreferenceCondition alloc] initWithName:@"isTransportModeSupported" requiresTransportType:0];
  v42[15] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:16];
  v14 = qword_100075970;
  qword_100075970 = v13;
}

id MapsSuggestionsNow()
{
  v0 = qword_100075980;
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = +[NSDate date];
  }

  v3 = v2;

  return v3;
}

id MapsSuggestionsNowWithOffset(double a1)
{
  v2 = [NSDate alloc];
  v3 = MapsSuggestionsNow();
  v4 = [v2 initWithTimeInterval:v3 sinceDate:a1];

  return v4;
}

double MapsSuggestionsSecondsTo(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MapsSuggestionsNow();
    [v1 timeIntervalSinceDate:v2];
    v4 = v3;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTime.m";
      v9 = 1024;
      v10 = 76;
      v11 = 2082;
      v12 = "NSTimeInterval MapsSuggestionsSecondsTo(NSDate *__strong _Nonnull)";
      v13 = 2082;
      v14 = "nil == (timeInTheFuture)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time", &v7, 0x26u);
    }

    v4 = 1.79769313e308;
  }

  return v4;
}

double MapsSuggestionsSecondsSince(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MapsSuggestionsNow();
    [v2 timeIntervalSinceDate:v1];
    v4 = v3;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTime.m";
      v9 = 1024;
      v10 = 82;
      v11 = 2082;
      v12 = "NSTimeInterval MapsSuggestionsSecondsSince(NSDate *__strong _Nonnull)";
      v13 = 2082;
      v14 = "nil == (timeInThePast)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time", &v7, 0x26u);
    }

    v4 = 1.79769313e308;
  }

  return v4;
}

id sub_100020A58(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 uuid];
  v5 = [v3 containsObject:v4];

  return v5;
}

void sub_100020CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020DAC;
  v8[3] = &unk_1000650E8;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v10 = v3;
  v5 = v3;
  v6 = [NSBlockOperation blockOperationWithBlock:v8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained addOperation:v6];
}

void sub_1000211A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000212A8;
  v16 = &unk_100065C40;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v17 = v6;
  v18 = v7;
  v19 = v5;
  v20 = v8;
  v9 = v5;
  v10 = v6;
  v11 = [NSBlockOperation blockOperationWithBlock:&v13];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained addOperation:{v11, v13, v14, v15, v16}];
}

id sub_1000212A8(void *a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v7 = 138477827;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Got origin waypoint response with error: %{private}@", &v7, 0xCu);
  }

  v5 = a1[4];
  v4 = a1[5];
  if (v5)
  {
    return [v4 _receivedErrorWhileResolvingOriginWaypoint:v5 forKey:a1[7]];
  }

  else
  {
    return [v4 _receivedOriginWaypoint:a1[6] forKey:a1[7]];
  }
}

void sub_100021380(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100021488;
  v16 = &unk_100065C40;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v17 = v6;
  v18 = v7;
  v19 = v5;
  v20 = v8;
  v9 = v5;
  v10 = v6;
  v11 = [NSBlockOperation blockOperationWithBlock:&v13];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained addOperation:{v11, v13, v14, v15, v16}];
}

id sub_100021488(void *a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v7 = 138477827;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Got destination waypoint response with error: %{private}@", &v7, 0xCu);
  }

  v5 = a1[4];
  v4 = a1[5];
  if (v5)
  {
    return [v4 _receivedErrorWhileResolvingDestinationWaypoint:v5 forKey:a1[7]];
  }

  else
  {
    return [v4 _receivedDestinationWaypoint:a1[6] forKey:a1[7]];
  }
}

void sub_10002191C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100021A24;
  v15 = &unk_100065C90;
  v7 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v8 = v6;
  v9 = v5;
  v10 = [NSBlockOperation blockOperationWithBlock:&v12];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained addOperation:{v10, v12, v13, v14, v15, v16}];
}

void sub_100021E14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100021E38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021F74;
    block[3] = &unk_100065E30;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    v11 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v13);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = GEOErrorDomain();
    v9 = [NSError errorWithDomain:v8 code:-8 userInfo:0];
    (*(v7 + 16))(v7, 0, v9);
  }
}

void sub_100021F74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _processUpdatedSyncVehicles:*(a1 + 32)];
    v4 = [v3 copy];
    v5 = v8[2];
    v8[2] = v4;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v3 = GEOErrorDomain();
    v7 = [NSError errorWithDomain:v3 code:-8 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_1000221C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addOrEditVehicle:*(a1 + 32)];
}

void sub_100022384(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v9 = v2;
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"vehicleIdentifier == %@" argumentArray:v3];

  v5 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v4 sortDescriptors:0 range:0];
  v6 = objc_alloc_init(MSVehicleRequest);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022504;
  v7[3] = &unk_100065E80;
  objc_copyWeak(&v8, (a1 + 40));
  [v6 fetchWithOptions:v5 completionHandler:v7];

  objc_destroyWeak(&v8);
}

void sub_100022504(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = GEOFindOrCreateLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to load load sync vehicle: %@", &v9, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [v5 firstObject];
    [WeakRetained _removeSyncVehicle:v8];
  }
}

void sub_10002275C(uint64_t a1)
{
  v2 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v6 = *(a1 + 32);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100022860;
  v4[3] = &unk_100065EA8;
  v5 = *(a1 + 32);
  [v2 deleteWithObjects:v3 completionHandler:v4];
}

void sub_100022860(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) identifier];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v7 = "Failed to delete vehicle: %@ error: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) identifier];
    v11 = 138412290;
    v12 = v6;
    v7 = "Successfully removed vehicle %@.";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_100022B54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addOrEditVehicle:*(a1 + 32)];
}

void sub_100022F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_100022FD8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000230DC;
    v7[3] = &unk_100065F38;
    v8 = v3;
    v9 = a1[4];
    v10 = v5;
    objc_copyWeak(&v11, a1 + 5);
    dispatch_async(v6, v7);
    objc_destroyWeak(&v11);
  }
}

void sub_1000230DC(uint64_t a1)
{
  v65 = [*(a1 + 32) firstObject];
  if (!v65)
  {
    v1 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = *(a1 + 40);
      *buf = 138412290;
      v79 = v2;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Didn't find vehicle: %@ in sync storage. Will create a new one.", buf, 0xCu);
    }

    v65 = objc_alloc_init(MSVehicle);
  }

  v3 = [*(a1 + 48) identifier];
  v4 = [v3 copy];
  [v66 setVehicleIdentifier:v4];

  v5 = [*(a1 + 48) iapIdentifier];
  v6 = [v5 copy];
  [v66 setIapIdentifier:v6];

  v7 = [*(a1 + 48) siriIntentsIdentifier];
  v8 = [v7 copy];
  [v66 setSiriIntentsIdentifier:v8];

  v9 = [*(a1 + 48) creationDate];
  [v66 setDateOfVehicleIngestion:v9];

  v10 = [*(a1 + 48) lastStateUpdateDate];
  [v66 setLastStateUpdateDate:v10];

  v11 = [*(a1 + 48) displayName];
  v12 = [v11 copy];
  [v66 setDisplayName:v12];

  v13 = [*(a1 + 48) year];
  if ([v13 integerValue])
  {
    v14 = [*(a1 + 48) year];
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue]);
    [v66 setYear:v15];
  }

  else
  {
    [v66 setYear:0];
  }

  v16 = [*(a1 + 48) manufacturer];
  v17 = [v16 copy];
  [v66 setManufacturer:v17];

  v18 = [*(a1 + 48) model];
  v19 = [v18 copy];
  [v66 setModel:v19];

  v20 = [*(a1 + 48) colorHex];
  v21 = [v20 copy];
  [v66 setColorHex:v21];

  v22 = [*(a1 + 48) licensePlate];
  v23 = [v22 copy];
  [v66 setLicensePlate:v23];

  v24 = [*(a1 + 48) lprVehicleType];
  v25 = [v24 copy];
  [v66 setLprVehicleType:v25];

  v26 = [*(a1 + 48) lprPowerType];
  v27 = [v26 copy];
  [v66 setLprPowerType:v27];

  v28 = [*(a1 + 48) headUnitBluetoothIdentifier];
  v29 = [v28 copy];
  [v66 setHeadUnitBluetoothIdentifier:v29];

  v30 = [*(a1 + 48) headUnitIdentifier];
  v31 = [v30 copy];
  [v66 setHeadUnitMacAddress:v31];

  v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) supportedConnectors]);
  [v66 setSupportedConnectors:v32];

  v33 = [*(a1 + 48) powerByConnector];

  if (v33)
  {
    v34 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = [*(a1 + 48) powerByConnector];
    v35 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v35)
    {
      v36 = *v74;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v74 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v73 + 1) + 8 * i);
          v39 = [*(a1 + 48) powerByConnector];
          v40 = [v39 objectForKeyedSubscript:v38];

          v41 = +[NSUnitPower watts];
          v42 = [v40 measurementByConvertingToUnit:v41];
          [v42 doubleValue];
          v43 = [NSNumber numberWithDouble:?];
          [v34 setObject:v43 forKeyedSubscript:v38];
        }

        v35 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v35);
    }

    v72 = 0;
    v33 = [NSKeyedArchiver archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v72];
    v44 = v72;
    if (v44 || !v33)
    {
      v45 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = [*(a1 + 48) powerByConnector];
        *buf = 138412546;
        v79 = v46;
        v80 = 2112;
        v81 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to persist poweByConnector dictionary: %@, error: %@.", buf, 0x16u);
      }
    }
  }

  [v66 setPowerByConnector:v33];
  v47 = [*(a1 + 48) preferredChargingNetworks];

  if (v47)
  {
    v48 = objc_alloc_init(VGChargingNetworksStorage);
    v49 = [*(a1 + 48) preferredChargingNetworks];
    v50 = [v49 allObjects];
    v51 = [v50 _geo_map:&stru_100065EE8];

    v52 = [v51 mutableCopy];
    [v48 setNetworks:v52];

    [v48 setUsesPreferredNetworksForRouting:{objc_msgSend(*(a1 + 48), "usesPreferredNetworksForRouting")}];
    v47 = [v48 data];
  }

  [v66 setPreferredChargingNetworks:v47];
  v53 = [*(a1 + 48) currentVehicleState];
  if (v53)
  {
    v54 = [*(a1 + 48) isPureElectricVehicle];

    if (v54)
    {
      v55 = [*(a1 + 48) currentVehicleState];
      v56 = [v55 _storage];

      v57 = [*(a1 + 48) pairedAppInstallDeviceIdentifier];
      v58 = [v57 copy];
      [v56 setPairedAppInstallDeviceIdentifier:v58];

      v59 = [*(a1 + 48) pairedAppInstallSessionIdentifier];
      v60 = [v59 copy];
      [v56 setPairedAppInstallSessionIdentifier:v60];

      v53 = [v56 data];
    }

    else
    {
      v53 = 0;
    }
  }

  [v66 setCurrentVehicleState:v53];
  v61 = [*(a1 + 48) pairedAppIdentifier];
  v62 = [v61 copy];
  [v66 setPairedAppIdentifier:v62];

  v63 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v77 = v66;
  v64 = [NSArray arrayWithObjects:&v77 count:1];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000239C4;
  v69[3] = &unk_100065F10;
  objc_copyWeak(&v71, (a1 + 56));
  v70 = *(a1 + 48);
  [v63 saveWithObjects:v64 completionHandler:v69];

  objc_destroyWeak(&v71);
}

void sub_1000239C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100023A8C;
    v7[3] = &unk_1000650C0;
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

void sub_100023A8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v7 = "Failed to persist vehicle: %@ error: %@";
      v8 = v4;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 40);
    v12 = 138412290;
    v13 = v11;
    v7 = "Successfully saved vehicle %@ as MSVehicle.";
    v8 = v4;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_100023ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023EF0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 3);
    [v5 garagePersister:v4 wantsToUpdateVehicles:v6];
  }
}

void sub_10002450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, id a37, id a38)
{
  objc_destroyWeak((v41 + 32));

  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&a31);

  objc_destroyWeak(&a38);
  objc_destroyWeak((v45 - 128));

  _Unwind_Resume(a1);
}

void sub_100024668(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = v1[8];
      v4 = GEOConfigNavdVehicleBTNotificationLocationBudget[1];
      v6 = 134218240;
      v7 = v3;
      v8 = 2048;
      Integer = GEOConfigGetInteger();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Resetting locationbudget from %ld to %ld", &v6, 0x16u);
    }

    v5 = GEOConfigNavdVehicleBTNotificationLocationBudget[1];
    v1[8] = GEOConfigGetInteger();
    objc_sync_exit(v1);
  }
}

void sub_100024774(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000247A8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = GEOConfigNavdVehicleBTNotificationDisconnectDelay[1];
    GEOConfigGetDouble();
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8 = WeakRetained[1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000249C4;
    v11[3] = &unk_100065A70;
    v9 = v8;
    objc_copyWeak(&v15, a1 + 6);
    v14 = v3;
    v12 = a1[4];
    v13 = a1[5];
    dispatch_after(v7, v9, v11);

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "NavdVehicleBluetoothNotificationHandler.mm";
      v18 = 1026;
      v19 = 113;
      v20 = 2082;
      v21 = "[NavdVehicleBluetoothNotificationHandler initWithCiruitBoard:connectTriggers:connectConditions:disconnectTriggers:disconnectConditions:resourceDepot:notifier:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000249C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (MapsSuggestionsIsTrue())
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Car disconnected, clearing notification", v6, 2u);
      }

      [*(a1 + 40) clear];
      sub_100024AFC(WeakRetained);
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Not All RunConditions are YES, so not clearing notification", buf, 2u);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100024AFC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    [v1[4] stop];
    [v1[3] removeTrigger:v1[4]];
    [v1[3] removeTrigger:v1[5]];
    sub_10003E888(v1 + 5, v1 + 4, v1);
  }
}

void sub_100024B64(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100024B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Travelled to large distance, clearing notification", &v7, 2u);
    }

    [*(a1 + 32) clear];
    sub_100024AFC(WeakRetained);
    v3[2](v3, 0);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "NavdVehicleBluetoothNotificationHandler.mm";
      v9 = 1026;
      v10 = 137;
      v11 = 2082;
      v12 = "[NavdVehicleBluetoothNotificationHandler initWithCiruitBoard:connectTriggers:connectConditions:disconnectTriggers:disconnectConditions:resourceDepot:notifier:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

BOOL sub_100024D28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_100024E58(WeakRetained);
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "NavdVehicleBluetoothNotificationHandler.mm";
      v8 = 1026;
      v9 = 149;
      v10 = 2082;
      v11 = "[NavdVehicleBluetoothNotificationHandler initWithCiruitBoard:connectTriggers:connectConditions:disconnectTriggers:disconnectConditions:resourceDepot:notifier:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v3 = 0;
  }

  return v3;
}

BOOL sub_100024E58(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MapsSuggestionsCurrentBestLocation();
  if (v2)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [v2 distanceFromLocation:a1[7]];
      v13 = 134217984;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "distance to current location: %.2f", &v13, 0xCu);
    }

    v5 = a1;
    objc_sync_enter(v5);
    if (!v5[7] || ([v2 distanceFromLocation:?], v7 = v6, v8 = GEOConfigNavdVehicleBTNotificationLeftLocationPerimeter[1], GEOConfigGetDouble(), v7 > v9))
    {
      objc_storeStrong(v5 + 7, v2);
      sub_100024668(v5);
    }

    v10 = v5[8] != 0;
    objc_sync_exit(v5);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    sub_10003E8E8(v11);
    v10 = 0;
  }

  return v10;
}

void sub_10002501C(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Connect Action Complete", &v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_1000251A8(WeakRetained);
    sub_100025258(v4);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "NavdVehicleBluetoothNotificationHandler.mm";
      v8 = 1026;
      v9 = 162;
      v10 = 2082;
      v11 = "[NavdVehicleBluetoothNotificationHandler initWithCiruitBoard:connectTriggers:connectConditions:disconnectTriggers:disconnectConditions:resourceDepot:notifier:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_1000251A8(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    v1 = obj;
    if (obj[8] >= 1)
    {
      v2 = MapsSuggestionsCurrentBestLocation();
      v3 = obj[7];
      obj[7] = v2;

      v1 = obj;
      --obj[8];
    }

    objc_sync_exit(v1);
  }
}

void sub_10002523C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100025258(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    [obj[4] stop];
    [obj[3] removeTrigger:obj[4]];
    v1 = [MapsSuggestionsLocationChangedTrigger alloc];
    v2 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v3 = [v1 initWithLocationUpdater:v2];
    v4 = obj[4];
    obj[4] = v3;

    v5 = obj[4];
    v6 = GEOConfigNavdVehicleBTNotificationDeparturePerimeter[1];
    GEOConfigGetDouble();
    [v5 startWithMinimumDistance:?];
    [obj[3] addTrigger:obj[4]];
    v7 = objc_alloc_init(MapsSuggestionsNavigationStartedTrigger);
    v8 = obj[5];
    obj[5] = v7;

    [obj[3] addTrigger:obj[5]];
    objc_sync_exit(obj);
  }
}

void sub_10002536C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1000255A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    if (!v4)
    {
      v5 = [v3 _dummyVehicles];
      v6 = v3[2];
      v3[2] = v5;

      v4 = v3[2];
    }

    v7 = [v4 copy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000256E4;
    v13[3] = &unk_100065FD8;
    v8 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v9 = v7;
    dispatch_async(&_dispatch_main_q, v13);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = GEOErrorDomain();
    v12 = [NSError errorWithDomain:v11 code:-8 userInfo:0];
    (*(v10 + 16))(v10, 0, v12);
  }
}

void sub_100025AF4(void *a1, void *a2, uint64_t a3)
{
  v29 = a2;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v5 = &off_10006B598;
    v6 = 75000.0;
  }

  else
  {
    v5 = &off_10006B588;
    v6 = 250000.0;
  }

  v7 = [VGVehicleState alloc];
  v26 = [v29 identifier];
  v27 = a1[4];
  v8 = [NSMeasurement alloc];
  v28 = +[NSUnitLength meters];
  v24 = [v8 initWithDoubleValue:v28 unit:v6];
  v9 = [NSMeasurement alloc];
  v25 = +[NSUnitLength meters];
  v10 = [v9 initWithDoubleValue:v25 unit:500000.0];
  v11 = [NSMeasurement alloc];
  v12 = +[NSUnitEnergy kilowattHours];
  v13 = [v11 initWithDoubleValue:v12 unit:0.0];
  v14 = [NSMeasurement alloc];
  [v5 doubleValue];
  v16 = v15 * 100.0;
  v17 = +[NSUnitEnergy kilowattHours];
  v18 = [v14 initWithDoubleValue:v17 unit:v16];
  v19 = [NSMeasurement alloc];
  v20 = +[NSUnitEnergy kilowattHours];
  v21 = [v19 initWithDoubleValue:v20 unit:66.0];
  LOBYTE(v23) = 0;
  v22 = [v7 initWithIdentifier:v26 dateOfUpdate:v27 origin:0 batteryPercentage:v5 currentEVRange:v24 maxEVRange:v10 minBatteryCapacity:v13 currentBatteryCapacity:v18 maxBatteryCapacity:v21 consumptionArguments:a1[5] chargingArguments:a1[6] isCharging:v23 activeConnector:2];

  [v29 _setVehicleState:v22];
LABEL_6:
}

void sub_100025E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025EA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100025EBC(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 16);
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
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
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

LABEL_11:
}

void sub_100026484(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 nextRefreshActivityFired];
  [v3 setTaskCompleted];
}

void sub_10002661C(void *a1)
{
  v2 = a1[6];
  v7[0] = GEONavdStatusStartTimeKey;
  v3 = a1[4];
  v8[0] = *(v3 + 8);
  v7[1] = GEONavdStatusCacheContentsKey;
  v4 = [*(v3 + 16) descriptionOfAllEntries];
  v7[2] = GEONavdStatusNextRefreshTime;
  v5 = a1[5];
  v8[1] = v4;
  v8[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  (*(v2 + 16))(v2, v6);
}

uint64_t sub_1000267D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100026928(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(*(a1 + 32) + 40);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100026BA8;
  v22 = &unk_100065C18;
  v23 = *(a1 + 40);
  v4 = v2;
  v24 = v4;
  [v3 getCurrentLocationWithHandler:&v19];
  v5 = [GEONavdDefaults sharedInstance:v19];
  [v5 staleLocationUseTimerInterval];
  v7 = v6;
  [v5 extraLocationWaitTimeInterval];
  v9 = dispatch_time(0, ((v8 + v7) * 1000000000.0));
  if (dispatch_group_wait(v4, v9))
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Timed out while waiting for location.", buf, 2u);
    }

    [*(a1 + 40) fulfillAsFailure];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) location];
    [v11 _setLastLocationSafely:v12];

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 40) location];
      [v14 coordinate];
      v16 = v15;
      v17 = [*(a1 + 40) location];
      [v17 coordinate];
      *buf = 134283777;
      v26 = v16;
      v27 = 2049;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received location %{private}f, %{private}f", buf, 0x16u);
    }
  }
}

void sub_100026BA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) fulfillWithLocation:a2];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Received nil for location.", v4, 2u);
    }

    [*(a1 + 32) fulfillAsFailure];
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_100028CEC(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = +[CLLocationManager navdLocationBundleSource];
    v13 = 138478083;
    v14 = v5;
    v15 = 2113;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "initializing a %{private}@ with bundle source: %{private}@", &v13, 0x16u);
  }

  v7 = [MNHybridLocationProvider alloc];
  v8 = +[CLLocationManager navdLocationBundleSource];
  v9 = [NSBundle bundleWithPath:v8];
  v10 = [v7 initWithEffectiveBundle:v9];
  v11 = qword_100075988;
  qword_100075988 = v10;

  return [qword_100075988 setMode:1];
}

void sub_100028E54(uint64_t a1)
{
  if (qword_100075990 != -1)
  {
    dispatch_once(&qword_100075990, *(a1 + 32));
  }
}

void sub_10002936C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000293A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained connected];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "NavdVehicleBluetoothStatus.m";
      v8 = 1026;
      v9 = 48;
      v10 = 2082;
      v11 = "[NavdVehicleBluetoothStatus initWithCircuitBoard:connectTriggers:disconnectTriggers:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t sub_1000294BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained connected] ^ 1;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "NavdVehicleBluetoothStatus.m";
      v8 = 1026;
      v9 = 53;
      v10 = 2082;
      v11 = "[NavdVehicleBluetoothStatus initWithCircuitBoard:connectTriggers:disconnectTriggers:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v3 = 0;
  }

  return v3;
}

id sub_1000295D0(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = [MapsSuggestionsActionCircuit alloc];
    v5 = [MapsSuggestionsBlockAction alloc];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100029838;
    v11 = &unk_100067278;
    objc_copyWeak(&v12, &location);
    v6 = [v5 initWithName:@"onConnecAction" block:&v8];
    a1 = [v4 initWithTriggers:v3 action:{v6, v8, v9, v10, v11}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return a1;
}

void sub_1000296E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100029704(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = [MapsSuggestionsActionCircuit alloc];
    v5 = [MapsSuggestionsBlockAction alloc];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100029A50;
    v11 = &unk_100067278;
    objc_copyWeak(&v12, &location);
    v6 = [v5 initWithName:@"onConnecAction" block:&v8];
    a1 = [v4 initWithTriggers:v3 action:{v6, v8, v9, v10, v11}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return a1;
}

void sub_100029814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029838(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    sub_100029960(WeakRetained, 1, v3);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "NavdVehicleBluetoothStatus.m";
      v9 = 1026;
      v10 = 67;
      v11 = 2082;
      v12 = "[NavdVehicleBluetoothStatus _onConnectCircuit:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100029960(void *a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v6 = a1[6];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100029B78;
    v7[3] = &unk_1000672A0;
    objc_copyWeak(&v9, &location);
    v10 = a2;
    v8 = v5;
    [v6 asyncBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void sub_100029A34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100029A50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    sub_100029960(WeakRetained, 0, v3);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "NavdVehicleBluetoothStatus.m";
      v9 = 1026;
      v10 = 77;
      v11 = 2082;
      v12 = "[NavdVehicleBluetoothStatus _onDisconnectCircuit:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100029B78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = *(v4 + 8);
    *(v4 + 8) = *(a1 + 48);
    objc_sync_exit(v4);

    v6 = [v4 connected];
    if (v5)
    {
      if ((v6 & 1) == 0)
      {
        v7 = *(v4 + 3);
LABEL_10:
        [v7 fire];
      }
    }

    else if (v6)
    {
      v7 = *(v4 + 2);
      goto LABEL_10;
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_12;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 136446722;
    v10 = "NavdVehicleBluetoothStatus.m";
    v11 = 1026;
    v12 = 86;
    v13 = 2082;
    v14 = "[NavdVehicleBluetoothStatus connected:withComplition:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v9, 0x1Cu);
  }

LABEL_12:
}

void sub_10002A1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) endServicingConnection:WeakRetained];
  }

  return _objc_release_x1();
}

void sub_10002A9CC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10002AC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10002B864(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_retainBlock(*(a1 + 32));
    v4 = WeakRetained[2];
    WeakRetained[2] = v3;

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = WeakRetained[5];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} starting...", &v9, 0xCu);
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = WeakRetained[5];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} started.", &v9, 0xCu);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "NavdRouteGeniusServer.m";
      v11 = 1026;
      v12 = 68;
      v13 = 2082;
      v14 = "[NavdRouteGeniusXPCPeer startWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v9, 0x1Cu);
    }
  }
}

id sub_10002BC0C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _stopMonitoring];
}

void sub_10002BD98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] forceReroute];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "NavdRouteGeniusServer.m";
      v6 = 1026;
      v7 = 95;
      v8 = 2082;
      v9 = "[NavdRouteGeniusXPCPeer forceReroute]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_10002C818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, id a27)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_10002C868(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = GEOFindOrCreateLog();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = [v3 connection];
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "XPC connection %@ became invalid", buf, 0xCu);
      }

      v7 = WeakRetained[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002CB08;
      block[3] = &unk_1000650E8;
      v10 = a1[4];
      v3 = v3;
      v11 = v3;
      v12 = WeakRetained;
      dispatch_sync(v7, block);
      [WeakRetained _debugPrintOverviewOfConnections];

      v8 = v10;
    }

    else
    {
      v8 = v4;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "NavdRouteGeniusServer.m";
        v15 = 1026;
        v16 = 202;
        v17 = 2082;
        v18 = "[NavdRouteGeniusServer listener:shouldAcceptNewConnection:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongPeer went away in %{public}s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "NavdRouteGeniusServer.m";
      v15 = 1026;
      v16 = 201;
      v17 = 2082;
      v18 = "[NavdRouteGeniusServer listener:shouldAcceptNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v8;
  }
}

void sub_10002CB08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];

  if (v2 == v3)
  {
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 48) + 8) count])
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Last RouteGeniusXPCPeer disappeared. Stopping RouteGenius", v5, 2u);
      }

      [*(a1 + 48) _q_stop];
    }
  }
}

void sub_10002CBD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] addObject:*(a1 + 32)];
    [v3 _q_start];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "NavdRouteGeniusServer.m";
      v7 = 1026;
      v8 = 217;
      v9 = 2082;
      v10 = "[NavdRouteGeniusServer listener:shouldAcceptNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10002CDB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = WeakRetained[1];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) connection];
          v10 = [v9 remoteObjectProxy];
          [v10 didUpdateRouteGenius:*(a1 + 32)];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "NavdRouteGeniusServer.m";
      v18 = 1026;
      v19 = 253;
      v20 = 2082;
      v21 = "[NavdRouteGeniusServer didUpdateRouteGenius:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10002D5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002D604(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error fetching subscriptions", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if (([v13 dataTypes] & 0x400) != 0)
          {
            v15 = [v13 region];
            v16 = [v15 containsCoordinate:{*(a1 + 48), *(a1 + 56)}];

            if (v16)
            {
              *(*(*(a1 + 40) + 8) + 24) = 1;
              dispatch_group_leave(*(a1 + 32));

              goto LABEL_19;
            }
          }

          else
          {
            v14 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Subscription is not of type offline, skipping.", buf, 2u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    dispatch_group_leave(*(a1 + 32));
LABEL_19:
    v6 = v17;
  }
}

void sub_10002DB24(id a1)
{
  qword_100075998 = objc_alloc_init(NavdLocationLeecher);

  _objc_release_x1();
}

id sub_10002DD24(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Starting to leech locations.", v4, 2u);
  }

  *(*(a1 + 32) + 24) = 1;
  return [*(*(a1 + 32) + 8) startUpdatingLocation];
}

void sub_10002DE34(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 25) & 1) == 0)
  {
    *(v1 + 25) = 1;
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Pausing location leeching.", v3, 2u);
    }
  }
}

void sub_10002DF40(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 25) == 1)
  {
    v6 = v1;
    v7 = v2;
    *(v3 + 25) = 0;
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Unpausing location leeching.", v5, 2u);
    }
  }
}

id sub_10002E04C(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Stopping leeching locations.", v4, 2u);
  }

  result = [*(*(a1 + 32) + 8) stopUpdatingLocation];
  *(*(a1 + 32) + 24) = 0;
  return result;
}

void sub_10002E1B8(uint64_t a1)
{
  [*(a1 + 32) coordinate];
  v3 = v2;
  v5 = v4;
  v12 = *(*(a1 + 40) + 56);
  v6 = [v12 firstObject];
  [v6 coordinate];
  v8 = v7;
  v10 = v9;

  if (v8 != v3 && v10 != v5)
  {
    [v12 insertObject:*(a1 + 32) atIndex:0];
  }

  [*(a1 + 40) _pruneLeachedLocations];
}

uint64_t sub_10002E264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002E8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002E8F0(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = *(a1 + 152);
  v11[6] = *(a1 + 136);
  v11[7] = v7;
  v12[0] = *(a1 + 168);
  *(v12 + 12) = *(a1 + 180);
  v8 = *(a1 + 88);
  v11[2] = *(a1 + 72);
  v11[3] = v8;
  v9 = *(a1 + 120);
  v11[4] = *(a1 + 104);
  v11[5] = v9;
  v10 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v10;
  [WeakRetained _handleShiftedCoordinate:v11 fromClientLocation:{a2, a3}];
}

void sub_10002E988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138478339;
    v8 = v3;
    v9 = 2049;
    v10 = v5;
    v11 = 2049;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NavdLocationLeecher failed while shifting location: %{private}@. Original location was: %{private}f, %{private}f.", &v7, 0x20u);
  }
}

void sub_10002EE1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleLeechedLocation:*(a1 + 32)];
}

void sub_10002F008(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyObserversAboutError:*(a1 + 32)];
}

void sub_10002F1F4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _clearLeachedLocations];
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _notifyObserversAboutPrecision];
}

void sub_10002FCF4(id a1)
{
  v1 = MNGetProcessHandlingLog();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SystemMemoryPressureWarning", " enableTelemetry=YES ", v2, 2u);
  }
}

void sub_10002FD6C(id a1)
{
  v1 = MNGetProcessHandlingLog();
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SystemMemoryPressureCritical", " enableTelemetry=YES ", v2, 2u);
  }
}