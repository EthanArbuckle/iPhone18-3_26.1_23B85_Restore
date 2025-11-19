uint64_t sub_100002328(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002370(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000023B4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (MapsSuggestionsLoggingIsVerbose())
    {
      if (qword_100085090 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000029EC(v5, qword_100085698);
      v6 = a2;
      v7 = v4;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412546;
        *(v10 + 4) = v6;
        *v11 = v6;
        *(v10 + 12) = 2112;
        v12 = *&v7[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation];
        *(v10 + 14) = v12;
        v11[1] = v12;
        v13 = v6;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "Location updated, Location: %@, lastLocation: %@", v10, 0x16u);
        sub_100042274(&qword_100085378);
        swift_arrayDestroy();
      }
    }

    if (v4[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__active] == 1)
    {
      v15 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation;
      if (*&v4[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation] && ([a2 distanceFromLocation:?], v16 < *&v4[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__distanceThreshold]))
      {
        if (qword_100085090 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000029EC(v17, qword_100085698);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v18, v19))
        {
          goto LABEL_37;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "_distanceThreshold not met";
      }

      else if (sub_100004DE0())
      {
        v26 = *&v4[v15];
        *&v4[v15] = a2;
        v27 = a2;

        v28 = *&v4[OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherConditionsDataProvider];
        if (v28)
        {
          v29 = *&v28[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__observers];
          v30 = v28;
          if ([v29 count] >= 1)
          {
            v31 = *&v30[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__queue];
            v32 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_10004A728;
            aBlock[5] = v32;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100002370;
            aBlock[3] = &unk_100076DB8;
            v33 = _Block_copy(aBlock);
            v34 = v31;

            [v34 asyncBlock:v33];
            _Block_release(v33);

            v30 = v34;
          }
        }

        if (qword_100085090 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_1000029EC(v35, qword_100085698);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v18, v19))
        {
          goto LABEL_37;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "updated location";
      }

      else
      {
        if (qword_100085090 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000029EC(v36, qword_100085698);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v18, v19))
        {
          goto LABEL_37;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = "New location but not allowed to update";
      }
    }

    else
    {
      if (qword_100085090 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000029EC(v25, qword_100085698);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_37;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not reacting to CLLocation update. _active == false";
    }

    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_37:

    goto LABEL_38;
  }

  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000029EC(v22, qword_100085698);
  v18 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v18, v23, "strongSelf could not be initialized", v24, 2u);
  }

LABEL_38:
}

uint64_t sub_1000029EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Void __swiftcall MapsSuggestionsWeatherFeeler.didUpdate(_:)(CLLocation_optional a1)
{
  isa = a1.value.super.isa;
  if (![type metadata accessor for MapsSuggestionsWeatherFeeler(0) isEnabled])
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000029EC(v8, qword_100085698);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "WeatherFeeler is not enabled";
    goto LABEL_12;
  }

  if (isa)
  {
    v3 = *(v1 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = isa;
    aBlock[4] = sub_100002A24;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002370;
    aBlock[3] = &unk_100076A18;
    v6 = _Block_copy(aBlock);
    v7 = isa;

    [v3 asyncBlock:v6];
    _Block_release(v6);

    return;
  }

  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000029EC(v12, qword_100085698);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "We have no valid location";
LABEL_12:
    _os_log_impl(&_mh_execute_header, oslog, v9, v11, v10, 2u);
  }

LABEL_13:
}

uint64_t sub_100002D38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002D70()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100002EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_100002FDC(WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsSignalPipeline.mm";
      v6 = 1026;
      v7 = 157;
      v8 = 2082;
      v9 = "[MapsSuggestionsSignalPipeline start]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

uint64_t sub_100002FDC(uint64_t a1)
{
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 48);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
      do
      {
        v5 = 0;
        do
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v8 + 1) + 8 * v5);
          if ([objc_opt_class() isEnabled])
          {
            [v6 startUpdatingSignals];
          }

          v5 = v5 + 1;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v3);
    }

    sub_100010520(a1, 1);
  }

  return 0;
}

uint64_t sub_10000313C(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000329C;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t sub_10000329C(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1000032D8(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100025FA4;
  v15 = sub_100025FB4;
  v16 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003468;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t sub_100003468(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

id sub_1000034C8(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100025FA4;
  v15 = sub_100025FB4;
  v16 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000035D4;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t sub_1000035D4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

dispatch_queue_t *sub_100003654(dispatch_queue_t *a1, void *a2, void *a3)
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

char *sub_1000036FC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000384C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 6) = 0;
  v4 = __dst;
  if (__dst[23] < 0)
  {
    v4 = *__dst;
  }

  v5 = notify_register_check(v4, __dst + 6);
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = __dst;
      if (__dst[23] < 0)
      {
        v7 = *__dst;
      }

      v9 = 136315394;
      v10 = v7;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not register %s: status %d", &v9, 0x12u);
    }
  }

  notify_set_state(*(__dst + 6), 0);
  return __dst;
}

void sub_100003840(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000C320(a1);
}

void *sub_10000384C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10003EE78();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_1000038F0(uint64_t *a1, uint64_t a2)
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *(a1 + 6);
    v8 = 136315650;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Sending Darwin notification '%s' (token %d, state %llu)", &v8, 0x1Cu);
  }

  notify_set_state(*(a1 + 6), a2);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  return notify_post(a1);
}

void sub_100003A04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000C320(a1);
}

BOOL sub_100003A44(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 32) currentSession];
  v2 = v1 != 0;

  return v2;
}

void sub_100003B18(void *a1)
{
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v7 = "[MapsSuggestionsMapsSyncFeeler _updateFavoriteTransitPOISignal]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, a1);
    v3 = a1[4];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100007C04;
    v4[3] = &unk_100075E78;
    objc_copyWeak(&v5, buf);
    [v3 userHasFavoriteTransitPOIsWithHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void sub_100003C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003C84(void *a1)
{
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v7 = "[MapsSuggestionsMapsSyncFeeler _updateTimeSinceLastTransitRouteSignal]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, a1);
    v3 = a1[4];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100007518;
    v4[3] = &unk_100075EA0;
    objc_copyWeak(&v5, buf);
    [v3 durationSinceLastTransitHistoryRoute:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void sub_100003DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id *sub_100003DF0(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = [result delegate];
    v3 = [v1[3] copy];
    v4 = [v2 feeler:v1 sendsSignalPack:v3];

    return v4;
  }

  return result;
}

void sub_100003E60(void *a1, void *a2)
{
  *a2 = a1[4];
  objc_sync_exit(a1);
}

void sub_10000408C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1000040F0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[15];
  objc_sync_exit(v1);

  return v2;
}

Swift::Bool __swiftcall MapsSuggestionsWeatherFeeler.startUpdatingSignals()()
{
  v1 = [type metadata accessor for MapsSuggestionsWeatherFeeler(0) isEnabled];
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_100004DD8;
    v10[5] = v3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100002370;
    v10[3] = &unk_100076A90;
    v4 = _Block_copy(v10);

    [v2 asyncBlock:v4];
    _Block_release(v4);
  }

  else
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000029EC(v5, qword_100085698);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "MapsSuggestionsWeatherFeeler is not enabled", v8, 2u);
    }
  }

  return v1;
}

void sub_100004330(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] addMapsSyncObserver:WeakRetained forContentType:1];
    [v2[4] addMapsSyncObserver:v2 forContentType:3];
    [v2[4] addMapsSyncObserver:v2 forContentType:2];
    [v2 updateSignals];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMapsSyncFeeler.m";
      v6 = 1026;
      v7 = 153;
      v8 = 2082;
      v9 = "[MapsSuggestionsMapsSyncFeeler startUpdatingSignals]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_1000044FC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 24;
    v3 = *(a1 + 24);
    v4 = *(v2 + 8);
    v5 = *(a1 + 40);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3321888768;
    v27[2] = sub_1000068E8;
    v27[3] = &unk_100075528;
    v6 = v3;
    v28 = v6;
    v7 = v4;
    v29 = v7;
    v27[4] = a1;
    v8 = [v5 hasTransitPassWithHandler:v27];
    v9 = *(a1 + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3321888768;
    v24[2] = sub_1000072DC;
    v24[3] = &unk_100075528;
    v10 = v6;
    v25 = v10;
    v11 = v7;
    v26 = v11;
    v24[4] = a1;
    v12 = [v9 hasExpressPaymentCardWithHandler:v24];
    v13 = *(a1 + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3321888768;
    v21[2] = sub_100007820;
    v21[3] = &unk_100075528;
    v14 = v10;
    v22 = v14;
    v15 = v11;
    v23 = v15;
    v21[4] = a1;
    v16 = [v13 hasPaymentCardWithHandler:v21];
    if (v8)
    {
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "We cannot load Transit Pass from Wallet", v20, 2u);
      }

      if (v12)
      {
LABEL_4:
        if (v16)
        {
LABEL_12:

          return;
        }

LABEL_14:
        v19 = GEOFindOrCreateLog();
        sub_10004CA8C(v19);
        goto LABEL_12;
      }
    }

    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "We cannot load express payment cards from Wallet", v20, 2u);
    }

    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }
}

id sub_100004844(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void sub_100004950(void *a1)
{
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v7 = "[MapsSuggestionsMapsSyncFeeler _updateFavoriteTransitLineSignal]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, a1);
    v3 = a1[4];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100006740;
    v4[3] = &unk_100075E78;
    objc_copyWeak(&v5, buf);
    [v3 userHasFavoriteTransitLinesWithHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void sub_100004A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004ABC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_100004DE0())
    {
      if (qword_100085090 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000029EC(v2, qword_100085698);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "startUpdatingSignals", v5, 2u);
      }

      *(&v1->isa + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__active) = 1;
      v6 = *(&v1->isa + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__locationUpdater);
      if (v6)
      {
        swift_unknownObjectRetain();
        v7 = v1;
        v8 = [v6 startLocationUpdatesForDelegate:v7];
        swift_unknownObjectRelease();
      }

      v9 = *(&v1->isa + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherConditionsDataProvider);
      if (v9)
      {
        v10 = *&v9[OBJC_IVAR____TtC12destinationd40MapsSuggestionsWeatherConditionsProvider__observers];
        v11 = v9;
        [v10 registerObserver:v1 handler:0];
      }
    }

    else
    {
      if (qword_100085090 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000029EC(v15, qword_100085698);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "_isAllowedToUpdate() == false. Not allowed to update", v18, 2u);
      }

      v1 = v16;
    }
  }

  else
  {
    if (qword_100085090 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000029EC(v12, qword_100085698);
    v1 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v1, v13, "strongSelf could not be initialized", v14, 2u);
    }
  }
}

uint64_t sub_100004DE0()
{
  v90 = type metadata accessor for Date();
  v92 = *(v90 - 8);
  (__chkstk_darwin)();
  v1 = v75 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for WeatherMetadata();
  v86 = *(v89 - 8);
  (__chkstk_darwin)();
  v88 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042274(&qword_1000852D8);
  v3 = (__chkstk_darwin)();
  v87 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v85 = v75 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = v75 - v8;
  __chkstk_darwin(v7);
  v91 = v75 - v10;
  v11 = sub_100042274(&qword_100085108);
  __chkstk_darwin(v11 - 8);
  v13 = v75 - v12;
  v14 = sub_100042274(&qword_1000850A0);
  v15 = *(v14 - 1);
  v16 = __chkstk_darwin(v14);
  v18 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v93 = v75 - v19;
  if (qword_100085090 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000029EC(v20, qword_100085698);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Checking if the feeler is allowed to update", v23, 2u);
  }

  v24 = MapsSuggestionsCurrentBestLocation();
  if (!v24)
  {
    goto LABEL_27;
  }

  v25 = v24;
  GEOConfigGetDouble();
  v27 = v26;
  [v25 speed];
  if (v27 < v28)
  {
    v29 = v25;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      [v29 speed];
      *(v32 + 4) = v33;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v30, v31, "speed thresholds crossed:%f. Our limit is: %f. Not requesting new weather update", v32, 0x16u);
    }

    else
    {
    }

    return 0;
  }

  v84 = v1;
  v35 = v94;
  v36 = *(v94 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__lastLocation);
  if (!v36)
  {
    goto LABEL_26;
  }

  v37 = OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__weatherDataModel;
  swift_beginAccess();
  sub_100005DD8(v35 + v37, v13, &qword_100085108);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_100005EA8(v13, &qword_100085108);
LABEL_27:
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Ok to update", v74, 2u);
    }

    return 1;
  }

  v38 = v13;
  v39 = v93;
  sub_100005E40(v38, v93, &qword_1000850A0);
  v40 = v36;
  [v25 distanceFromLocation:v40];
  if (v41 >= *(v35 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__distanceThreshold))
  {
    sub_100005EA8(v39, &qword_1000850A0);

LABEL_26:
    goto LABEL_27;
  }

  v81 = v40;
  sub_100005DD8(v39, v18, &qword_1000850A0);
  v42 = v14[12];
  v82 = v14[16];
  v83 = v42;
  v43 = v14[20];
  v44 = v88;
  CurrentWeather.metadata.getter();
  v45 = type metadata accessor for CurrentWeather();
  v46 = *(v45 - 8);
  v79 = *(v46 + 8);
  v80 = v45;
  v78 = v46 + 8;
  v79(v18);
  v47 = v91;
  WeatherMetadata.expirationDate.getter();
  v77 = *(v86 + 8);
  v77(v44, v89);
  v48 = v92;
  v49 = *(v92 + 56);
  v50 = v90;
  v75[1] = v92 + 56;
  v75[0] = v49;
  v49(v47, 0, 1, v90);
  sub_100005EA8(&v18[v43], &qword_1000852E0);
  v51 = sub_100042274(&qword_100085118);
  v52 = *(v51 - 8);
  v53 = *(v52 + 8);
  v54 = &v18[v82];
  v82 = v51;
  v76 = v53;
  v75[2] = v52 + 8;
  (v53)(v54);
  sub_100005EA8(v83 + v18, &qword_1000852E8);
  sub_100005DD8(v47, v9, &qword_1000852D8);
  v55 = *(v48 + 48);
  v86 = v48 + 48;
  v83 = v55;
  LODWORD(v48) = v55(v9, 1, v50);
  sub_100005EA8(v9, &qword_1000852D8);
  if (v48 == 1)
  {
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "metadata.expirationDate is nil. Checking conditions time to form our own expiration time", v58, 2u);
    }

    sub_100005DD8(v93, v18, &qword_1000850A0);
    v59 = v14[12];
    v60 = v14[16];
    v61 = v14[20];
    v62 = v88;
    CurrentWeather.metadata.getter();
    (v79)(v18, v80);
    v63 = v84;
    WeatherMetadata.date.getter();
    v77(v62, v89);
    sub_100005EA8(&v18[v61], &qword_1000852E0);
    v76(&v18[v60], v82);
    result = sub_100005EA8(&v18[v59], &qword_1000852E8);
    if (*(v94 + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__expireTimeDefault + 8))
    {
      goto LABEL_32;
    }

    v64 = v85;
    Date.addingTimeInterval(_:)();
    v50 = v90;
    (*(v92 + 8))(v63, v90);
    v47 = v91;
    sub_100005EA8(v91, &qword_1000852D8);
    (v75[0])(v64, 0, 1, v50);
    sub_100005E40(v64, v47, &qword_1000852D8);
  }

  v65 = v87;
  sub_100005DD8(v47, v87, &qword_1000852D8);
  result = v83(v65, 1, v50);
  if (result == 1)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v92 + 8))(v65, v50);
  v67 = MapsSuggestionsIsInTheFuture();

  v68 = v93;
  if (!v67)
  {

    sub_100005EA8(v47, &qword_1000852D8);
    sub_100005EA8(v68, &qword_1000850A0);
    goto LABEL_27;
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "No update: we still have valid weather", v71, 2u);
  }

  sub_100005EA8(v47, &qword_1000852D8);
  sub_100005EA8(v68, &qword_1000850A0);
  return 0;
}

id sub_100005974(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100025FA4;
  v15 = sub_100025FB4;
  v16 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005A80;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t sub_100005A80(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

id sub_100005B00(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000115A0;
  v15 = sub_1000115B0;
  v16 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000066EC;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t sub_100005DD8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100042274(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005E40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100042274(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005EA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100042274(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100005F88(uint64_t a1)
{
  if (a1)
  {
    v15 = MapsSuggestionsNow();
    v2 = *(a1 + 24);
    MapsSuggestionsTimeSinceMidnightOfDate();
    v4 = v3;
    [v15 timeIntervalSince1970];
    v6 = 3600.0 - floor((v5 / 3600.0 - floor(v5 / 3600.0)) * 3600.0);
    if (v6 < 1.0)
    {
      v6 = 3600.0;
    }

    v7 = [v15 dateByAddingTimeInterval:v6];
    *&v8 = v4;
    [v2 writeSignalValue:10 forType:v15 gathered:v7 expires:v8];

    v9 = *(a1 + 24);
    v10 = sub_10004CE88(a1, v15);
    [v15 timeIntervalSince1970];
    v12 = 86400.0 - floor((v11 / 24.0 * 3600.0 - floor(v11 / 24.0 * 3600.0)) * 24.0 * 3600.0);
    if (v12 < 1.0)
    {
      v12 = 86400.0;
    }

    v13 = [v15 dateByAddingTimeInterval:v12];
    *&v14 = v10;
    [v9 writeSignalValue:11 forType:v15 gathered:v13 expires:v14];
  }
}

id *sub_1000060E8(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = [result delegate];
    v3 = [v1[3] copy];
    v4 = [v2 feeler:v1 sendsSignalPack:v3];

    return v4;
  }

  return result;
}

uint64_t sub_100006158(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000063C4(result);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = [*(v1 + 64) allValues];
    v3 = 0;
    v4 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v4)
    {
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v14 + 1) + 8 * v6);
          if (v3)
          {
            v8 = [v3 earlierDate:v7];

            v3 = v8;
          }

          else
          {
            v3 = v7;
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v4);
    }

    v9 = MapsSuggestionsNow();
    [v3 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = *(v1 + 56);
    v13 = dispatch_time(0, (v11 * 1000000000.0));
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v18 = 1;

    return v18;
  }

  return result;
}

void sub_1000063C4(uint64_t a1)
{
  if (a1 && !*(a1 + 56))
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Re-initializing the _pollTimer", buf, 2u);
    }

    objc_initWeak(buf, a1);
    v3 = *(a1 + 8);
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    v5 = *(a1 + 56);
    *(a1 + 56) = v4;

    dispatch_source_set_timer(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(a1 + 56);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000107C0;
    handler[3] = &unk_100075178;
    objc_copyWeak(&v8, buf);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(*(a1 + 56));
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

id sub_100006584(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) copy];

  return v1;
}

uint64_t sub_1000066EC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_100006740(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006AA8;
    v8[3] = &unk_100075E50;
    objc_copyWeak(&v9, (a1 + 32));
    v10 = a2;
    [v6 asyncBlock:v8];
    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsMapsSyncFeeler.m";
      v13 = 1026;
      v14 = 55;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSyncFeeler _updateFavoriteTransitLineSignal]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: queueStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000068E8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error loading Transit Pass from Wallet: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = "no";
      if (a2)
      {
        v8 = "yes";
      }

      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Found Transit Pass = %s", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000070F4;
    v10[3] = &unk_100075500;
    v11 = a2;
    sub_100006BD0((a1 + 40), v9, v10);
  }
}

void sub_100006AA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    LOBYTE(v3) = *(a1 + 40);
    *&v3 = LODWORD(v3);
    [WeakRetained[3] writeSignalValue:30 forType:v3];
    sub_100006D78(v4);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsMapsSyncFeeler.m";
      v8 = 1026;
      v9 = 57;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSyncFeeler _updateFavoriteTransitLineSignal]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_100006BD0(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007178;
    v10[3] = &unk_100075560;
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
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = MapsSuggestionsWalletFeeler]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void sub_100006D78(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = *(val + 5);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100006E44;
    v3[3] = &unk_1000753F0;
    objc_copyWeak(&v4, &location);
    [v2 asyncBlock:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void sub_100006E28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100006E44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = WeakRetained[3];
      v6 = v4;
      v7 = [v5 description];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13[0] = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ is streaming signal pack: %@ ", &v10, 0x16u);
    }

    v8 = [WeakRetained delegate];
    if (v8)
    {
      v9 = [WeakRetained[3] copy];
      [v8 feeler:WeakRetained sendsSignalPack:v9];
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 136446722;
        v11 = "MapsSuggestionsMapsSyncFeeler.m";
        v12 = 1026;
        LODWORD(v13[0]) = 198;
        WORD2(v13[0]) = 2082;
        *(v13 + 6) = "[MapsSuggestionsMapsSyncFeeler _informFeelerDelegate]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v10, 0x1Cu);
      }
    }
  }

  else
  {
    v9 = v2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsMapsSyncFeeler.m";
      v12 = 1026;
      LODWORD(v13[0]) = 196;
      WORD2(v13[0]) = 2082;
      *(v13 + 6) = "[MapsSuggestionsMapsSyncFeeler _informFeelerDelegate]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
    }

    v8 = v9;
  }
}

void sub_1000070B8(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_1000070F4(uint64_t a1, void *a2)
{
  v5 = a2;
  LOBYTE(v3) = *(a1 + 32);
  *&v4 = v3;
  [v5[6] writeSignalValue:28 forType:v4];
  sub_100007238(v5);
}

void sub_100007178(uint64_t a1)
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

void sub_100007238(id *a1)
{
  if (a1)
  {
    v3 = [a1 delegate];
    v2 = [a1[6] copy];
    [v3 feeler:a1 sendsSignalPack:v2];
  }
}

void sub_1000072DC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error loading Express Payment Card from Wallet: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = "no";
      if (a2)
      {
        v8 = "yes";
      }

      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Found Express Payment Card = %s", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000749C;
    v10[3] = &unk_100075500;
    v11 = a2;
    sub_100006BD0((a1 + 40), v9, v10);
  }
}

void sub_10000749C(uint64_t a1, void *a2)
{
  v5 = a2;
  LOBYTE(v3) = *(a1 + 32);
  *&v4 = v3;
  [v5[6] writeSignalValue:34 forType:v4];
  sub_100007238(v5);
}

void sub_100007518(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 5);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000076E4;
    v10[3] = &unk_100075468;
    objc_copyWeak(v12, (a1 + 32));
    v11 = v5;
    v12[1] = *&a3;
    [v8 asyncBlock:v10];

    objc_destroyWeak(v12);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsMapsSyncFeeler.m";
      v15 = 1026;
      v16 = 89;
      v17 = 2082;
      v18 = "[MapsSuggestionsMapsSyncFeeler _updateTimeSinceLastTransitRouteSignal]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: queueStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000076E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    if (*(a1 + 32))
    {
      LODWORD(v3) = 2143289344;
    }

    else
    {
      v3 = *(a1 + 48);
      *&v3 = v3;
    }

    [v5 writeSignalValue:32 forType:v3];
    sub_100006D78(v4);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsMapsSyncFeeler.m";
      v9 = 1026;
      v10 = 91;
      v11 = 2082;
      v12 = "[MapsSuggestionsMapsSyncFeeler _updateTimeSinceLastTransitRouteSignal]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100007820(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error loading Payment Card from Wallet: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = "no";
      if (a2)
      {
        v8 = "yes";
      }

      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Found Payment Card = %s", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000079E0;
    v10[3] = &unk_100075500;
    v11 = a2;
    sub_100006BD0((a1 + 40), v9, v10);
  }
}

void sub_1000079E0(uint64_t a1, void *a2)
{
  v5 = a2;
  LOBYTE(v3) = *(a1 + 32);
  *&v4 = v3;
  [v5[6] writeSignalValue:35 forType:v4];
  sub_100007238(v5);
}

void sub_100007A5C(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007ED4;
    v10[3] = &unk_100075560;
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
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = MapsSuggestionsWalletSource]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void sub_100007C04(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007DAC;
    v8[3] = &unk_100075E50;
    objc_copyWeak(&v9, (a1 + 32));
    v10 = a2;
    [v6 asyncBlock:v8];
    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsMapsSyncFeeler.m";
      v13 = 1026;
      v14 = 72;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSyncFeeler _updateFavoriteTransitPOISignal]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: queueStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100007DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    LOBYTE(v3) = *(a1 + 40);
    *&v3 = LODWORD(v3);
    [WeakRetained[3] writeSignalValue:29 forType:v3];
    sub_100006D78(v4);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsMapsSyncFeeler.m";
      v8 = 1026;
      v9 = 74;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSyncFeeler _updateFavoriteTransitPOISignal]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_100007ED4(uint64_t a1)
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

uint64_t sub_100007F94()
{
  v1 = *(sub_100042274(&qword_100085108) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = sub_100042274(&qword_1000850A0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for CurrentWeather();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = v6[12];
    v9 = sub_100042274(&qword_100085110);
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }

    v11 = v6[16];
    v12 = sub_100042274(&qword_100085118);
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
    v13 = v6[20];
    v14 = type metadata accessor for AirQuality();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v5 + v13, 1, v14))
    {
      (*(v15 + 8))(v5 + v13, v14);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008214()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000826C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000082A4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000082E4()
{
  v1 = *(sub_100042274(&qword_100085108) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = sub_100042274(&qword_1000850A0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for CurrentWeather();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = v6[12];
    v9 = sub_100042274(&qword_100085110);
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }

    v11 = v6[16];
    v12 = sub_100042274(&qword_100085118);
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
    v13 = v6[20];
    v14 = type metadata accessor for AirQuality();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v5 + v13, 1, v14))
    {
      (*(v15 + 8))(v5 + v13, v14);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000856C()
{
  v1 = *(sub_100042274(&qword_100085108) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = sub_100042274(&qword_1000850A0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for CurrentWeather();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = v6[12];
    v9 = sub_100042274(&qword_100085110);
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }

    v11 = v6[16];
    v12 = sub_100042274(&qword_100085118);
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
    v13 = v6[20];
    v14 = type metadata accessor for AirQuality();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v5 + v13, 1, v14))
    {
      (*(v15 + 8))(v5 + v13, v14);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008900(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = *(a1 + 8);
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v6)
      {
        v7 = *v24;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = [[MapsSuggestionsDestinationLink alloc] initFromDestination:*(*(&v23 + 1) + 8 * i) toDestination:v4];
            [*(a1 + 16) addObject:v9];
          }

          v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v6);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = *(a1 + 8);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v11)
      {
        v12 = *v20;
        do
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * j);
            v15 = [MapsSuggestionsDestinationLink alloc];
            v16 = [(MapsSuggestionsDestinationLink *)v15 initFromDestination:v4 toDestination:v14, v19];
            [*(a1 + 16) addObject:v16];
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v11);
      }

      [*(a1 + 8) addObject:v4];
      a1 = 1;
    }

    else
    {
      v17 = GEOFindOrCreateLog();
      sub_10004BC34(v17);
      a1 = 0;
    }
  }

  return a1;
}

void sub_100008D34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = WeakRetained[1];
    v5 = [(MapsSuggestionsDestination *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 addContainedEntry:{*(a1 + 32), v13}])
          {
            v11 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = [*(a1 + 32) uniqueIdentifier];
              *buf = 138412546;
              v19 = v12;
              v20 = 2112;
              *v21 = v8;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Added Entry '%@' to %@", buf, 0x16u);
            }

            goto LABEL_19;
          }
        }

        v5 = [(MapsSuggestionsDestination *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 32) uniqueIdentifier];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Creating new Destination for Entry '%@'", buf, 0xCu);
    }

    v4 = [[MapsSuggestionsDestination alloc] initWithEntry:*(a1 + 32)];
    sub_100008900(v3, v4);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsDestinationGraph.mm";
      v20 = 1026;
      *v21 = 78;
      *&v21[4] = 2082;
      *&v21[6] = "[MapsSuggestionsDestinationGraph addEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v4 = v11;
LABEL_19:
  }
}

id sub_10000921C(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10000C4A0;
  v15 = sub_10000C4B0;
  v16 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C4B8;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

id sub_100009328(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        [v6 couldContainEntry:{*(a1 + 40), v10}];
        if (v7 > MapsSuggestionsConfidenceDontKnow())
        {
          v8 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

id sub_1000097B8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        [v6 couldContainLocation:{*(a1 + 40), v10}];
        if (v7 > MapsSuggestionsConfidenceDontKnow())
        {
          v8 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

id sub_100009AA8(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10000C4A0;
  v15 = sub_10000C4B0;
  v16 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C50C;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

id sub_100009BB4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 couldContainTime:{*(a1 + 40), v11}];
        if (v8 > MapsSuggestionsConfidenceDontKnow())
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [v2 copy];

  return v9;
}

id sub_100009ECC(uint64_t a1)
{
  sub_10000A138(*(a1 + 32));
  v2 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v18 + 1) + 8 * i) firstEntryDuringPeriod:{*(a1 + 40), v18}];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 originatingSourceName];
          v10 = [v2 objectForKeyedSubscript:v9];
          v11 = v10 == 0;

          if (v11)
          {
            v12 = objc_alloc_init(NSMutableArray);
            v13 = [v8 originatingSourceName];
            [v2 setObject:v12 forKeyedSubscript:v13];
          }

          v14 = [v8 originatingSourceName];
          v15 = [v2 objectForKeyedSubscript:v14];
          [v15 addObject:v8];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v16 = [v2 copy];

  return v16;
}

uint64_t sub_10000A138(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v2 = *(a1 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B278;
    v10[3] = &unk_100075128;
    v10[4] = &v11;
    v3 = [v2 MSg_mutableCopyIf:v10];
    v4 = *(v1 + 8);
    *(v1 + 8) = v3;

    v5 = *(v1 + 16);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000B4C0;
    v9[3] = &unk_100075150;
    v9[4] = v1;
    v9[5] = &v11;
    v6 = [v5 MSg_mutableCopyIf:v9];
    v7 = *(v1 + 16);
    *(v1 + 16) = v6;

    LOBYTE(v1) = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v1 & 1;
}

void sub_10000A504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = WeakRetained[2];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = *(a1 + 32);
          v10 = [v8 to];
          LOBYTE(v9) = [v9 isEqualToDestination:v10];

          if (v9)
          {
            v11 = [*(a1 + 40) location];
            [v8 containsLocation:v11];
            v13 = v12 > MapsSuggestionsConfidenceDontKnow();

            if (v13)
            {
              [v8 addETA:*(a1 + 40)];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "MapsSuggestionsDestinationGraph.mm";
      v21 = 1026;
      v22 = 194;
      v23 = 2082;
      v24 = "[MapsSuggestionsDestinationGraph addETA:to:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10000AACC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = WeakRetained[2];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = *(a1 + 32);
          v10 = [v8 to];
          LOBYTE(v9) = [v9 isEqualToDestination:v10];

          if (v9)
          {
            v11 = *(a1 + 40);
            v12 = [v8 from];
            LOBYTE(v11) = [v11 isEqualToDestination:v12];

            if (v11)
            {
              [v8 addETA:*(a1 + 48)];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsDestinationGraph.mm";
      v20 = 1026;
      v21 = 219;
      v22 = 2082;
      v23 = "[MapsSuggestionsDestinationGraph addETA:from:to:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10000AEC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = WeakRetained[1];
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = *v22;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          if ([v7 addContainedBreadcrumb:*(a1 + 32)])
          {
            v14 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = *(a1 + 32);
              *buf = 138412546;
              v28 = v15;
              v29 = 2112;
              *v30 = v7;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
            }

            goto LABEL_27;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = v16[2];
    v8 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (j = 0; j != v8; j = j + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v17 + 1) + 8 * j);
          if ([v11 addBreadCrumbIfWithin:*(a1 + 32)])
          {
            v12 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v13 = *(a1 + 32);
              *buf = 138412546;
              v28 = v13;
              v29 = 2112;
              *v30 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
            }
          }
        }

        v8 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "MapsSuggestionsDestinationGraph.mm";
      v29 = 1026;
      *v30 = 240;
      *&v30[4] = 2082;
      *&v30[6] = "[MapsSuggestionsDestinationGraph addBreadcrumb:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v14;
LABEL_27:
  }
}

uint64_t sub_10000B278(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 removeExpiredEntries])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ELIMINATE %@ (Contains only expired entries)", &v9, 0xCu);
    }

    goto LABEL_16;
  }

  if ([v3 hasBeenVisited] && (objc_msgSend(v3, "hasEntriesInTheFuture") & 1) == 0)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ELIMINATE %@ (We've been here, and not coming back)", &v9, 0xCu);
    }

LABEL_16:

    v6 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_17;
  }

  v4 = [v3 latestKnownTime];
  if (v4 && MapsSuggestionsIsInThePast())
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ELIMINATE %@ (We should've left by now)", &v9, 0xCu);
    }

    v6 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v6 = 1;
  }

LABEL_17:
  return v6;
}

uint64_t sub_10000B4C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 from];
  v5 = [v3 to];
  if (!v5 || ([*(*(a1 + 32) + 8) containsObject:v5] & 1) == 0)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ELIMINATE %@ (Its Arrival has been eliminated)", &v15, 0xCu);
    }

    goto LABEL_12;
  }

  if ((!v4 || ([*(*(a1 + 32) + 8) containsObject:v4] & 1) == 0) && (objc_msgSend(v3, "hasLinkOptions") & 1) == 0)
  {
    [v3 confidenceOfHavingBeenOnDestinationLink];
    if (v6 < MapsSuggestionsConfidenceDontKnow())
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412290;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ELIMINATE %@ (We've left, but have no evidence of using this Link)", &v15, 0xCu);
      }

LABEL_12:

      v8 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_21;
    }
  }

  v9 = [v4 latestKnownTime];
  v10 = [v5 earliestKnownTime];
  v11 = v10;
  v8 = 1;
  if (v9 && v10)
  {
    v12 = [v9 earlierDate:v10];

    if (v12 == v11)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412290;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "ELIMINATE %@ (We'd need a time machine)", &v15, 0xCu);
      }

      v8 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v8 = 1;
    }
  }

LABEL_21:
  return v8;
}

void sub_10000B870(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = 0;
    do
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        ++v3;
        *buf = 67109120;
        LODWORD(v10) = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Rebalancing pass %d", buf, 8u);
      }
    }

    while ((sub_10000A138(WeakRetained) & 1) != 0);
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v5 = dispatch_get_global_queue(21, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000BABC;
      block[3] = &unk_100075178;
      objc_copyWeak(&v8, (a1 + 32));
      dispatch_async(v5, block);

      objc_destroyWeak(&v8);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "MapsSuggestionsDestinationGraph.mm";
      v11 = 1026;
      v12 = 351;
      v13 = 2082;
      v14 = "[MapsSuggestionsDestinationGraph rebalance]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10000BABC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained jsonWithFormatting:0];
    v4 = dispatch_get_global_queue(21, 0);
    *v7 = _NSConcreteStackBlock;
    *&v7[8] = 3221225472;
    *&v7[16] = sub_10000C334;
    *&v7[24] = &unk_100075230;
    v8 = v3;
    v9 = @"destinationGraph.txt";
    v5 = v3;
    dispatch_async(v4, v7);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 136446722;
      *&v7[4] = "MapsSuggestionsDestinationGraph.mm";
      *&v7[12] = 1026;
      *&v7[14] = 360;
      *&v7[18] = 2082;
      *&v7[20] = "[MapsSuggestionsDestinationGraph rebalance]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: loggingSelf went away in %{public}s", v7, 0x1Cu);
    }
  }
}

id sub_10000BD1C(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10000C4A0;
  v15 = sub_10000C4B0;
  v16 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C560;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

id sub_10000BE28(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = MSg::jsonFor();
        [v2 addObject:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v4);
  }

  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(*(a1 + 32) + 16);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = MSg::jsonFor();
        [v8 addObject:{v13, v16}];
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v10);
  }

  v24[0] = @"destinations";
  v24[1] = @"links";
  v25[0] = v2;
  v25[1] = v8;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

  return v14;
}

id sub_10000C17C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) copy];

  return v1;
}

id sub_10000C230(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) copy];

  return v1;
}

uint64_t MapsSuggestionsIsDestinationGraphEnabled()
{
  if (qword_100085518 != -1)
  {
    sub_10004BD0C();
  }

  return byte_100085510;
}

void sub_10000C334(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MapsSuggestionsDefaultCacheDirectory();
  v4 = [v3 stringByAppendingPathComponent:*(a1 + 40)];
  v10 = 0;
  v5 = [v2 writeToFile:v4 atomically:1 encoding:4 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if ((v7 & 1) == 0)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error writing to temp file '%@': %@", buf, 0x16u);
    }
  }
}

uint64_t sub_10000C4A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000C4B8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

uint64_t sub_10000C50C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

uint64_t sub_10000C560(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_10000CB18(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10000D4F0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000D558(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000E200(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MITransportModePredictionManager);
    v3 = WeakRetained[10];
    WeakRetained[10] = v2;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsSignalPipeline.mm";
      v7 = 1026;
      v8 = 105;
      v9 = 2082;
      v10 = "[MapsSuggestionsSignalPipeline initWithNetworkRequester:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10000E37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MapsSuggestionsSignalPipeline;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_10000E3AC(uint64_t a1)
{
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 48);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
      do
      {
        v5 = 0;
        do
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v8 + 1) + 8 * v5);
          if ([objc_opt_class() isEnabled])
          {
            [v6 stopUpdatingSignals];
          }

          v5 = v5 + 1;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v3);
    }

    sub_10004BD20(a1);
  }

  return 0;
}

uint64_t sub_10000E670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3 disposition];
      if (!v5)
      {
LABEL_12:
        a1 = 0;
        goto LABEL_13;
      }

      if (v5 == 1)
      {
        v6 = 40;
        goto LABEL_8;
      }

      if (v5 == 2)
      {
        v6 = 48;
LABEL_8:
        [*(a1 + v6) addObject:v4];
        a1 = 1;
        goto LABEL_13;
      }

      v8 = GEOFindOrCreateLog();
      sub_10004BEA0(v8, &v10);
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      sub_10004BF54(v7, &v10);
    }

    goto LABEL_12;
  }

LABEL_13:

  return a1;
}

uint64_t sub_10000E8E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      [*(a1 + 40) removeObject:v3];
      [*(a1 + 48) removeObject:v4];
      a1 = 1;
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      sub_10004C008(v6);
      a1 = 0;
    }
  }

  return a1;
}

void sub_10000EBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_10000E3AC(WeakRetained);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsSignalPipeline.mm";
      v6 = 1026;
      v7 = 168;
      v8 = 2082;
      v9 = "[MapsSuggestionsSignalPipeline stop]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_10000ED7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeAll];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsSignalPipeline.mm";
      v6 = 1026;
      v7 = 179;
      v8 = 2082;
      v9 = "[MapsSuggestionsSignalPipeline resetData]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

id *sub_10000F054(id *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = [MapsSuggestionsSignalPack extractFromDestinationEntry:v7 originCoordinate:a3, a4];
    [a1[3] mergeIntoSignalPack:v8];
    a1 = [v8 copy];
  }

  return a1;
}

id *sub_10000F2BC(id *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  if (a1)
  {
    v8 = [MapsSuggestionsSignalPack extractFromDestinationMapItem:v7 originCoordinate:a3, a4];
    [a1[3] mergeIntoSignalPack:v8];
    a1 = [v8 copy];
  }

  return a1;
}

uint64_t sub_10000F69C(NSObject **a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000115B8;
  v8[3] = &unk_100075258;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t sub_10000F778(id *a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    if (a1[4])
    {
      if (v10)
      {
        if (v9)
        {
          v11 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = [a1[4] uniqueName];
            *buf = 138412290;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "GUESS TransportMode using %@", buf, 0xCu);
          }

          v13 = [MapsSuggestionsSignalPack extractFromDestinationMapItem:v9 originCoordinate:a4, a5];
          [a1[3] mergeIntoSignalPack:v13];
          if (MapsFeature_IsEnabled_TransportModePrediction())
          {
            [v9 coordinate];
            LOBYTE(a1) = sub_10004BD78(a1, v13, v10, a4, a5, v16, v17);
          }

          else
          {
            objc_initWeak(buf, a1);
            a1 = a1[4];
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_1000110F4;
            v18[3] = &unk_100075320;
            objc_copyWeak(&v21, buf);
            v20 = v10;
            v14 = v13;
            v19 = v14;
            LOBYTE(a1) = [a1 transportModesForSignalPack:v14 handler:v18];

            objc_destroyWeak(&v21);
            objc_destroyWeak(buf);
            v13 = v14;
          }

          goto LABEL_13;
        }

        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        sub_10004C0CC();
      }

      else
      {
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        sub_10004C178();
      }
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      sub_10004C224();
    }

    v13 = *buf;
    LOBYTE(a1) = v22;
LABEL_13:
  }

  return a1;
}

uint64_t sub_10000FDD0(id *a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    if (a1[4])
    {
      if (v10)
      {
        if (v9)
        {
          v11 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = [a1[4] uniqueName];
            *buf = 138412290;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "GUESS TransportMode using %@", buf, 0xCu);
          }

          v13 = [MapsSuggestionsSignalPack extractFromDestinationEntry:v9 originCoordinate:a4, a5];
          [a1[3] mergeIntoSignalPack:v13];
          if (MapsFeature_IsEnabled_TransportModePrediction())
          {
            v16 = [v9 geoMapItem];
            [v16 coordinate];
            v18 = v17;
            v20 = v19;

            LOBYTE(a1) = sub_10004BD78(a1, v13, v10, a4, a5, v18, v20);
          }

          else
          {
            objc_initWeak(buf, a1);
            a1 = a1[4];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100010ACC;
            v21[3] = &unk_100075320;
            objc_copyWeak(&v24, buf);
            v23 = v10;
            v14 = v13;
            v22 = v14;
            LOBYTE(a1) = [a1 transportModesForSignalPack:v14 handler:v21];

            objc_destroyWeak(&v24);
            objc_destroyWeak(buf);
            v13 = v14;
          }

          goto LABEL_13;
        }

        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        sub_10004C2D0();
      }

      else
      {
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        sub_10004C37C();
      }
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      sub_10004C428();
    }

    v13 = *buf;
    LOBYTE(a1) = v25;
LABEL_13:
  }

  return a1;
}

void sub_1000102E8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] mergeIntoSignalPack:WeakRetained[3]];
    v3 = [a1[5] updaterDelegate];
    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [WeakRetained[3] copy];
        [v3 signalPipelineUpdated:v4];
      }
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136446722;
        v7 = "MapsSuggestionsSignalPipeline.mm";
        v8 = 1026;
        v9 = 269;
        v10 = 2082;
        v11 = "[MapsSuggestionsSignalPipeline feeler:sendsSignalPack:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongUpdaterDelegate went away in %{public}s", &v6, 0x1Cu);
      }
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsSignalPipeline.mm";
      v8 = 1026;
      v9 = 266;
      v10 = 2082;
      v11 = "[MapsSuggestionsSignalPipeline feeler:sendsSignalPack:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_1000104E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_100010520(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    v4 = MapsSuggestionsLoggingSubsystem;
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Polling Feelers...", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(v3 + 40);
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([objc_opt_class() isEnabled] & 1) != 0 && ((a2 & 1) != 0 || sub_1000108E8(v3, v10)))
          {
            v11 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = [v10 uniqueName];
              *buf = 138412290;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "POLLING FEELER{%@}.", buf, 0xCu);
            }

            [v10 updateSignals];
            v13 = MapsSuggestionsNowWithOffset();
            v14 = *(v3 + 64);
            v15 = [v10 uniqueName];
            [v14 setObject:v13 forKeyedSubscript:v15];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }

    return sub_10004C4D4(v6, v4, v3);
  }

  return result;
}

void sub_1000107C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    sub_100010520(WeakRetained, 0);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsSignalPipeline.mm";
      v6 = 1026;
      v7 = 373;
      v8 = 2082;
      v9 = "[MapsSuggestionsSignalPipeline _initPollTimerIfNecessary]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

uint64_t sub_1000108E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 64);
      v6 = [v3 uniqueName];
      v7 = [v5 objectForKeyedSubscript:v6];

      if (v7 && !MapsSuggestionsIsInThePast())
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v4 uniqueName];
          sub_10004C55C(v11, buf, v8);
        }

        v10 = 0;
      }

      else
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v4 uniqueName];
          sub_10004C5B4(v9, buf, v8);
        }

        v10 = 1;
      }
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      sub_10004C60C();
      v7 = *buf;
      v10 = v13;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100010ACC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [WeakRetained[4] uniqueName];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      *v15 = v6;
      *&v15[8] = 2112;
      *&v15[10] = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Algorithm %@ error=%@ responded: %@", &v12, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) copy];
    (*(v10 + 16))(v10, v5, v11, 0, v6);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "MapsSuggestionsSignalPipeline.mm";
      v14 = 1026;
      *v15 = 516;
      *&v15[4] = 2082;
      *&v15[6] = "[MapsSuggestionsSignalPipeline _guessTransportModesForDestinationEntry:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v12, 0x1Cu);
    }
  }
}

void sub_100010CF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (([v3 hasType:21]& 1) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 mutableCopy];
      [v4 writeSignalValue:21 forType:0.0];
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MSg Transport Mode Prediction With MapsIntelligence.", buf, 2u);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = qword_100085520;
    v24 = qword_100085520;
    if (!qword_100085520)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000113E8;
      *&buf[24] = &unk_100075370;
      v27 = &v21;
      sub_1000113E8(buf);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    v5 = [v7 coordinatesToGeoHashWithLength:4 latitude:*(a1 + 56) longitude:*(a1 + 64)];
    v9 = WeakRetained[10];
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    v14 = [v4 rawSignalDictionary];
    v15 = [v9 transportModeWithOrigin:v14 destination:v5 features:v10 userHash4:{v11, v12, v13}];

    v16 = *(a1 + 40);
    v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 transportType]);
    v25 = v17;
    v18 = [NSArray arrayWithObjects:&v25 count:1];
    v19 = [v4 copy];
    v20 = [v15 metadata];
    (*(v16 + 16))(v16, v18, v19, v20, 0);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsSignalPipeline.mm";
      *&buf[12] = 1026;
      *&buf[14] = 530;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsSignalPipeline _predictTransportModeWithMapsIntelligenceFrom:to:signalPack:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v4 = v5;
  }
}

void sub_100011048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1000110F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [WeakRetained[4] uniqueName];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      *v15 = v6;
      *&v15[8] = 2112;
      *&v15[10] = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Algorithm %@ error=%@ responded: %@", &v12, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) copy];
    (*(v10 + 16))(v10, v5, v11, 0, v6);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "MapsSuggestionsSignalPipeline.mm";
      v14 = 1026;
      *v15 = 575;
      *&v15[4] = 2082;
      *&v15[6] = "[MapsSuggestionsSignalPipeline _guessTransportModesForDestinationMapItem:originCoordinate:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v12, 0x1Cu);
    }
  }
}

Class sub_1000113E8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100085528)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10001152C;
    v4[4] = &unk_1000753A8;
    v4[5] = v4;
    v5 = off_100075390;
    v6 = 0;
    qword_100085528 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100085528)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PPUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10004C6B8();
  }

  qword_100085520 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001152C()
{
  result = _sl_dlopen();
  qword_100085528 = result;
  return result;
}

uint64_t sub_1000115A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000115B8(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100011634(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

BOOL sub_100011660(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_100011678(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

double MapsSuggestionsDistanceToRouteConfidenceFactor()
{
  if (qword_100085568 != -1)
  {
    sub_10004C6E0();
  }

  return *&qword_100085530;
}

double MapsSuggestionsConfidenceDefinitelyTrue()
{
  if (qword_100085568 != -1)
  {
    sub_10004C6E0();
  }

  return *&qword_100085538;
}

double MapsSuggestionsConfidenceDefinitelyFalse()
{
  if (qword_100085568 != -1)
  {
    sub_10004C6E0();
  }

  return *&qword_100085540;
}

double MapsSuggestionsConfidenceDontKnow()
{
  if (qword_100085568 != -1)
  {
    sub_10004C6E0();
  }

  return *&qword_100085558;
}

double MapsSuggestionsBestConfidence(double a1, double a2)
{
  if (qword_100085568 != -1)
  {
    sub_10004C6E0();
  }

  if (*&qword_100085558 != a1)
  {
    if (*&qword_100085558 == a2)
    {
      return a1;
    }

    else if (a1 > a2)
    {
      return a1;
    }
  }

  return a2;
}

void MapsSuggestionsConfidenceLevelFromPrecent(double a1)
{
  if (a1 <= 0.0)
  {
    if (qword_100085568 == -1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (qword_100085568 != -1)
  {
LABEL_5:
    sub_10004C6E0();
  }
}

void sub_100011E74(id a1)
{
  GEOConfigGetDouble();
  qword_100085538 = v1;
  GEOConfigGetDouble();
  qword_100085540 = v2;
  GEOConfigGetDouble();
  qword_100085548 = v3;
  GEOConfigGetDouble();
  qword_100085550 = v4;
  GEOConfigGetDouble();
  qword_100085558 = v5;
  GEOConfigGetDouble();
  qword_100085560 = v6;
  GEOConfigGetDouble();
  qword_100085530 = v7;
}

void sub_100012074(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    if (a2 >= 2)
    {
      sub_10004C928();
    }

    else if ((+[MapsSuggestionsSiri isEnabled]& 1) != 0)
    {
      v6 = GEOFindOrCreateLog();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (a2)
      {
        if (v7)
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "fetchLocationsOfInterestOfType:Work", buf, 2u);
        }

        v8 = 17;
      }

      else
      {
        if (v7)
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "fetchLocationsOfInterestOfType:Home", buf, 2u);
        }

        v8 = 16;
      }

      objc_initWeak(buf, a1);
      dispatch_group_enter(v5);
      v9 = +[RTRoutineManager defaultManager];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100012720;
      v10[3] = &unk_100075440;
      objc_copyWeak(v12, buf);
      v11 = v5;
      v12[1] = v8;
      [v9 fetchLocationsOfInterestOfType:a2 withHandler:v10];

      objc_destroyWeak(v12);
      objc_destroyWeak(buf);
    }

    else
    {
      sub_10004C8AC();
    }
  }
}

void sub_10001222C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012250(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "updateTouristInfo", buf, 2u);
    }

    if ((+[MapsSuggestionsSiri isEnabled]& 1) != 0)
    {
      v5 = MapsSuggestionsCurrentBestLocation();
      if (v5)
      {
        dispatch_group_enter(v3);
        objc_initWeak(buf, a1);
        v6 = +[RTRoutineManager defaultManager];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100012DB8;
        v7[3] = &unk_100075490;
        objc_copyWeak(&v9, buf);
        v8 = v3;
        [v6 fetchRoutineModeFromLocation:v5 withHandler:v7];

        objc_destroyWeak(&v9);
        objc_destroyWeak(buf);
      }

      else
      {
        sub_10004CA1C();
      }
    }

    else
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for maps. Not fetching tourist mode", buf, 2u);
      }
    }
  }
}

void sub_100012418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001243C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "updateParkedCar", buf, 2u);
    }

    objc_initWeak(buf, a1);
    dispatch_group_enter(v3);
    v5 = +[RTRoutineManager defaultManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100013200;
    v6[3] = &unk_1000754E0;
    objc_copyWeak(&v8, buf);
    v7 = v3;
    [v5 fetchLastVehicleEventsWithHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void sub_10001257C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000125A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_sendCurrentSignalPack", &v6, 2u);
    }

    v4 = [WeakRetained delegate];
    v5 = [WeakRetained[3] copy];
    [v4 feeler:WeakRetained sendsSignalPack:v5];
  }

  else
  {
    v5 = v2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsRoutineFeeler.m";
      v8 = 1026;
      v9 = 141;
      v10 = 2082;
      v11 = "[MapsSuggestionsRoutineFeeler _sendCurrentSignalPackWithGroup:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    v4 = v5;
  }
}

void sub_100012720(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        dispatch_group_leave(*(a1 + 32));
        goto LABEL_14;
      }

      *buf = 138412290;
      v24 = v6;
      v9 = "Could not get PLOIs from CoreRoutine: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
LABEL_5:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
      goto LABEL_6;
    }

    v14 = [v5 count];
    v8 = GEOFindOrCreateLog();
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_6;
      }

      *buf = 0;
      v9 = "CoreRoutine returned no entries";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 2;
      goto LABEL_5;
    }

    if (v15)
    {
      *buf = 134217984;
      v24 = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "CoreRoutine returned %lu entries", buf, 0xCu);
    }

    v16 = WeakRetained[5];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100012A08;
    v19[3] = &unk_100075418;
    objc_copyWeak(v22, (a1 + 40));
    v17 = v5;
    v18 = *(a1 + 48);
    v20 = v17;
    v22[1] = v18;
    v21 = *(a1 + 32);
    dispatch_async(v16, v19);

    objc_destroyWeak(v22);
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "MapsSuggestionsRoutineFeeler.m";
      v25 = 1026;
      v26 = 171;
      v27 = 2082;
      v28 = "[MapsSuggestionsRoutineFeeler _fetchLocationsOfInterestOfType:group:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }

LABEL_14:
}

void sub_100012A08(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = *(v1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v21 = v1;
      v6 = *v23;
      v7 = NAN;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v28 = *&v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Locations of Interest %@", buf, 0xCu);
          }

          v11 = [v9 location];
          [v11 latitude];
          v13 = v12;
          v14 = [v9 location];
          [v14 longitude];
          v16 = sub_10004C7C0(WeakRetained, v13, v15);

          if (v7 >= v16)
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v28 = v7;
              v29 = 2048;
              *v30 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Found a closer LOI. PrevDistance is %f . Distance is %f", buf, 0x16u);
            }

            v7 = v16;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);

      v1 = v21;
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v28 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Writing Signal Value %f", buf, 0xCu);
      }

      *&v19 = v7;
      [WeakRetained[3] writeSignalValue:*(v21 + 56) forType:v19];
    }

    else
    {
    }

    dispatch_group_leave(*(v1 + 40));
  }

  else
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = COERCE_DOUBLE("MapsSuggestionsRoutineFeeler.m");
      v29 = 1026;
      *v30 = 184;
      *&v30[4] = 2082;
      *&v30[6] = "[MapsSuggestionsRoutineFeeler _fetchLocationsOfInterestOfType:group:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100012DB8(uint64_t a1, char *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = GEOFindOrCreateLog();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not fetch Routine Mode for Tourist Info from CR %{public}@", buf, 0xCu);
      }

      dispatch_group_leave(*(a1 + 32));
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v15 = a2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "CoreRoutine's tourist mode is: %ld", buf, 0xCu);
      }

      v10 = WeakRetained[5];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100013014;
      block[3] = &unk_100075468;
      objc_copyWeak(v13, (a1 + 40));
      v13[1] = a2;
      v12 = *(a1 + 32);
      dispatch_async(v10, block);

      objc_destroyWeak(v13);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "MapsSuggestionsRoutineFeeler.m";
      v16 = 1026;
      v17 = 243;
      v18 = 2082;
      v19 = "[MapsSuggestionsRoutineFeeler _updateTouristInfoWithGroup:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100013014(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    if (v4 >= 3)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = 136446978;
        v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineFeeler.m";
        v9 = 1024;
        v10 = 223;
        v11 = 2082;
        v12 = "MapsSuggestionsSignalValue _signalValueFromRoutineMode(RTRoutineMode)";
        v13 = 2082;
        v14 = "YES";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported RTRoutineMode!", &v7, 0x26u);
      }

      LODWORD(v3) = 2143289344;
    }

    else
    {
      LODWORD(v3) = dword_100056C18[v4];
    }

    [WeakRetained[3] writeSignalValue:12 forType:v3];
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRoutineFeeler.m";
      v9 = 1026;
      v10 = 251;
      v11 = 2082;
      v12 = "[MapsSuggestionsRoutineFeeler _updateTouristInfoWithGroup:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100013200(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        dispatch_group_leave(*(a1 + 32));
        goto LABEL_12;
      }

      *buf = 138412290;
      v20 = v6;
      v9 = "Could not get ParkedCar from CoreRoutine: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
    }

    else
    {
      if ([v5 count])
      {
        v14 = WeakRetained[5];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100013498;
        block[3] = &unk_1000754B8;
        objc_copyWeak(&v18, (a1 + 40));
        v16 = v5;
        v17 = *(a1 + 32);
        dispatch_async(v14, block);

        objc_destroyWeak(&v18);
        goto LABEL_12;
      }

      v8 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      *buf = 0;
      v9 = "Routine returned no parked car entries";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 2;
    }

    _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
    goto LABEL_6;
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v20 = "MapsSuggestionsRoutineFeeler.m";
    v21 = 1026;
    v22 = 266;
    v23 = 2082;
    v24 = "[MapsSuggestionsRoutineFeeler _updateParkedCarWithGroup:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
  }

LABEL_12:
}

void sub_100013498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      v7 = NAN;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v9 location];
          [v10 latitude];
          v12 = v11;
          v13 = [v9 location];
          [v13 longitude];
          v15 = sub_10004C7C0(WeakRetained, v12, v14);

          if (v7 >= v15)
          {
            v7 = v15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);

      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Writing Signal Value for Parked Car %f", buf, 0xCu);
      }

      *&v17 = v7;
      [WeakRetained[3] writeSignalValue:18 forType:v17];
    }

    else
    {
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = COERCE_DOUBLE("MapsSuggestionsRoutineFeeler.m");
      v26 = 1026;
      v27 = 279;
      v28 = 2082;
      v29 = "[MapsSuggestionsRoutineFeeler _updateParkedCarWithGroup:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000139B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100014260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v6 = NSStringFromMapsSuggestionsCurrentBestLocation();
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      *v18 = @"ALL";
      *&v18[8] = 2112;
      *&v18[10] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
    }

    v7 = WeakRetained[1];
    v8 = *(a1 + 32);
    v9 = WeakRetained[2];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000144EC;
    v12[3] = &unk_100075588;
    objc_copyWeak(&v14, (a1 + 56));
    v10 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v10;
    [v7 fetchLocationEntriesForTray:1 currentLocation:v8 queue:v9 handler:v12];

    objc_destroyWeak(&v14);
  }

  else
  {
    v11 = v3;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "MapsSuggestionsPortraitSource.m";
      v17 = 1026;
      *v18 = 97;
      *&v18[4] = 2082;
      *&v18[6] = "[MapsSuggestionsPortraitSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_1000144EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 localizedDescription];
        v19 = 138412290;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received an error inside _fetchEntries: %@", &v19, 0xCu);
      }

      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [*(a1 + 32) uniqueName];
        v19 = 138412546;
        v20 = v11;
        v21 = 2080;
        v22[0] = "updateSuggestionEntriesWithHandler";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v19, 0x16u);
      }

      v12 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v12))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v19, 2u);
      }
    }

    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    [WeakRetained addOrUpdateMySuggestionEntries:v13];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [WeakRetained uniqueName];
      v19 = 138412546;
      v20 = v15;
      v21 = 2080;
      v22[0] = "updateSuggestionEntriesWithHandler";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v19, 0x16u);
    }

    v16 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v16))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v19, 2u);
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446722;
      v20 = "MapsSuggestionsPortraitSource.m";
      v21 = 1026;
      LODWORD(v22[0]) = 104;
      WORD2(v22[0]) = 2082;
      *(v22 + 6) = "[MapsSuggestionsPortraitSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v19, 0x1Cu);
    }
  }
}

void sub_100014FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015024(void *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[MapsSuggestionsCarPlayFeeler _updateAndSendSignalPackWithValue:]";
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s: %d", &v8, 0x12u);
    }

    *&v5 = a2;
    [v3[3] writeSignalValue:20 forType:v5];
    v6 = [v3 delegate];
    v7 = [v3[3] copy];
    [v6 feeler:v3 sendsSignalPack:v7];

    objc_sync_exit(v3);
  }
}

Class sub_100015370(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100085578)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000154B4;
    v4[4] = &unk_1000753A8;
    v4[5] = v4;
    v5 = off_1000755F8;
    v6 = 0;
    qword_100085578 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100085578)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10004CAEC();
  }

  qword_100085570 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000154B4()
{
  result = _sl_dlopen();
  qword_100085578 = result;
  return result;
}

void sub_10001556C(id a1)
{
  v3 = [[NSMutableSet alloc] initWithCapacity:30];
  MapsSuggestionsSignalTypeEnumerate();
  v1 = [v3 copy];
  v2 = qword_100085580;
  qword_100085580 = v1;
}

uint64_t sub_10001563C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSStringFromMapsSuggestionsSignalType();
  [v1 addObject:v2];

  return 1;
}

void *sub_1000158A4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[3];
    if (!v2)
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [v1 uniqueName];
        *buf = 138412546;
        v14 = v4;
        v15 = 2080;
        v16 = "Loading ML model";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
      }

      v5 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Loading ML model", "", buf, 2u);
      }

      v6 = objc_alloc_init(MapsSuggestionsTransportModePrediction);
      v7 = v1[3];
      v1[3] = v6;

      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v1 uniqueName];
        sub_10004CB28(v9, buf, v8);
      }

      v10 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v10))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Loading ML model", "", v12, 2u);
      }

      v2 = v1[3];
    }

    a1 = v2;
  }

  return a1;
}

void sub_100015E74(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000167C4;
    v10[3] = &unk_100075560;
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
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = MapsSuggestionsMLSignalAlgorithm]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void sub_10001601C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000158A4(v3);
  v32 = v4;
  v5 = [*(a1 + 32) encodedFeatureDictionary];
  v33 = 0;
  v6 = [[_FeatureProvider alloc] initWithDictionary:v5 error:&v33];
  v7 = v33;
  if (v6)
  {
    v31 = v6;
    v8 = [v4 predictionFromFeatures:? error:?];
    v9 = v7;

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v8 actualTransportMode];
      v12 = [v8 actualTransportModeProbability];
      *buf = 138412802;
      v36 = v11;
      v37 = 2112;
      *v38 = v12;
      *&v38[8] = 2112;
      *&v38[10] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Result: %@, %@, error: %@", buf, 0x20u);
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v3 uniqueName];
      *buf = 138412546;
      v36 = v14;
      v37 = 2080;
      *v38 = "transportModesForSignalPack_ML";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v15 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transportModesForSignalPack_ML", "", buf, 2u);
    }

    v16 = *(a1 + 40);
    if (!v16)
    {
      goto LABEL_34;
    }

    v17 = [v8 actualTransportMode];
    v18 = v17;
    if (v17)
    {
      if ([v17 isEqualToString:@"DRIVING_MODE"])
      {
        v19 = 0;
LABEL_33:

        v29 = [NSNumber numberWithInt:v19];
        v34 = v29;
        v30 = [NSArray arrayWithObjects:&v34 count:1];
        (*(v16 + 16))(v16, v30, 0);

LABEL_34:
        goto LABEL_35;
      }

      if ([v18 isEqualToString:@"TRANSIT_MODE"])
      {
        v19 = 1;
        goto LABEL_33;
      }

      if ([v18 isEqualToString:@"CYCLING_MODE"])
      {
        v19 = 3;
        goto LABEL_33;
      }

      if ([v18 isEqualToString:@"WALKING_MODE"])
      {
        v19 = 2;
        goto LABEL_33;
      }

      if ([v18 isEqualToString:@"RIDESHARE_MODE"])
      {
        v19 = 6;
        goto LABEL_33;
      }

      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v36 = v18;
        v26 = "Unknown Transport Type String: %@";
        v27 = v25;
        v28 = 12;
        goto LABEL_23;
      }
    }

    else
    {
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMLSignalAlgorithm.mm";
        v37 = 1024;
        *v38 = 91;
        *&v38[4] = 2082;
        *&v38[6] = "GEOTransportType _convert(NSString *__strong)";
        *&v38[14] = 2082;
        *&v38[16] = "nil == (transportTypeString)";
        v26 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a transport type string";
        v27 = v25;
        v28 = 38;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, v26, buf, v28);
      }
    }

    v19 = 4;
    goto LABEL_33;
  }

  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v36 = v7;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Could not create featureProvider: %@", buf, 0xCu);
  }

  v21 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v3 uniqueName];
    *buf = 138412546;
    v36 = v22;
    v37 = 2080;
    *v38 = "transportModesForSignalPack_ML";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
  }

  v23 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transportModesForSignalPack_ML", "", buf, 2u);
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, 0, v7);
  }

  v9 = v7;
LABEL_35:
}

void sub_1000167C4(uint64_t a1)
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

void sub_100016BFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = *(a1 + 24);
    objc_sync_enter(v4);
    v5 = [v7 mutableCopy];
    v6 = *(a1 + 24);
    *(a1 + 24) = v5;

    objc_sync_exit(v4);
    v3 = v7;
  }
}

void sub_100016C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100016C94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    v5 = [v7 mutableCopy];
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;

    objc_sync_exit(v4);
    v3 = v7;
  }
}

void sub_100016D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100017054(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    [*(a1 + 32) addObject:v5];
    objc_sync_exit(v4);

    v3 = v5;
  }
}

void sub_1000170C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

id *sub_100017140(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[3];
    objc_sync_enter(v2);
    v1 = [v1[3] count];
    objc_sync_exit(v2);
  }

  return v1;
}

void sub_100017190(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id *sub_100017204(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[4];
    objc_sync_enter(v2);
    v1 = [v1[4] count];
    objc_sync_exit(v2);
  }

  return v1;
}

void sub_100017254(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100017914(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_100019B80(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_10001A43C(id a1)
{
  GEOConfigGetDouble();
  qword_100085598 = v1;
  GEOConfigGetDouble();
  qword_100085590 = v2;
}

void sub_10001A5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10001A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MapsSuggestionsPredictionsXPCPeer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001AA7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(WeakRetained + 2);
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PredictionsXPCPeer{%@} received predictedTransportModeForDestinationEntryData:originCoordinateData:handler", buf, 0xCu);
    }

    v5 = [MapsSuggestionsEntry entryWithData:*(a1 + 32)];
    CLLocationCoordinateFromNSData();
    v8 = v6;
    v9 = v7;
    if (v5 && CLLocationCoordinate2DIsValid(*&v6))
    {
      v10 = objc_loadWeakRetained(WeakRetained + 3);
      v11 = v10;
      if (v10)
      {
        v12 = [v10 signalPipeline];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10001AEE4;
        v17[3] = &unk_1000756A8;
        v18 = *(a1 + 48);
        [v12 guessTransportModesForDestinationEntry:v5 originCoordinate:v17 handler:{v8, v9}];

        v13 = v18;
      }

      else
      {
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v21 = "MapsSuggestionsPredictionsServer.mm";
          v22 = 1026;
          *v23 = 90;
          *&v23[4] = 2082;
          *&v23[6] = "[MapsSuggestionsPredictionsXPCPeer predictedTransportModeForDestinationEntryData:originCoordinateData:handler:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v19 = 0;
      v13 = MapsSuggestionsTransportModesToNSData();
      v11 = 0;
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v21 = *&v8;
        v22 = 2048;
        *v23 = v9;
        *&v23[8] = 2112;
        *&v23[10] = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Either Coordinate is not valid or the Entry is nil. Coordinate: %g, %g, MSgEntry: %@", buf, 0x20u);
      }

      v15 = *(a1 + 48);
      if (v11)
      {
        (*(v15 + 16))(v15, 0, 0, 0, v11);
      }

      else
      {
        v16 = [NSError GEOErrorWithCode:-12 reason:@"Could not decode the MapsSuggestionsEntry and/or Location data!"];
        (*(v15 + 16))(v15, v13, 0, 0, v16);
      }
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "MapsSuggestionsPredictionsServer.mm";
      v22 = 1026;
      *v23 = 69;
      *&v23[4] = 2082;
      *&v23[6] = "[MapsSuggestionsPredictionsXPCPeer predictedTransportModeForDestinationEntryData:originCoordinateData:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v5 = v11;
  }
}

void sub_10001AEE4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = v12;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v19[1] = 0;
    v14 = MapsSuggestionsTransportModesToNSData();
    v15 = 0;
    if (v15)
    {
      (*(*(a1 + 32) + 16))();
      v13 = 0;
    }

    else
    {
      v19[0] = 0;
      v16 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:v19];
      v13 = v19[0];
      v17 = *(a1 + 32);
      v18 = [v10 data];
      (*(v17 + 16))(v17, v14, v18, v16, 0);
    }
  }
}

void sub_10001B058(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_10001B2B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(WeakRetained + 2);
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PredictionsXPCPeer{%@} received predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:", buf, 0xCu);
    }

    v5 = [[GEOMapItemStorage alloc] initWithData:*(a1 + 32)];
    CLLocationCoordinateFromNSData();
    v7 = v6;
    v9 = v8;
    v10 = [[CLLocation alloc] initWithLatitude:v6 longitude:v8];
    v11 = v10;
    if (v5 && v10)
    {
      v12 = objc_loadWeakRetained(WeakRetained + 3);
      v13 = v12;
      if (v12)
      {
        v14 = [v12 signalPipeline];
        v22 = _NSConcreteStackBlock;
        v23 = 3221225472;
        v24 = sub_10001B800;
        v25 = &unk_1000756A8;
        v26 = *(a1 + 48);
        v15 = [v14 guessTransportModesForDestinationMapItem:v5 originCoordinate:&v22 handler:{v7, v9}];

        if (!v15)
        {
          v16 = [NSError GEOErrorWithCode:-301 reason:@"SignalPipeline refused to call back.", v22, v23, v24, v25];
          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SignalPipeline refused to call back", buf, 2u);
          }

          (*(*(a1 + 48) + 16))();
        }

        v18 = v26;
      }

      else
      {
        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v29 = "MapsSuggestionsPredictionsServer.mm";
          v30 = 1026;
          *v31 = 143;
          *&v31[4] = 2082;
          *&v31[6] = "[MapsSuggestionsPredictionsXPCPeer predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v27 = 0;
      v18 = MapsSuggestionsTransportModesToNSData();
      v13 = 0;
      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v29 = *&v7;
        v30 = 2048;
        *v31 = v9;
        *&v31[8] = 2112;
        *&v31[10] = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Either Coordinate is not valid or the MapItem is nil. Coordinate: %g, %g, MapItemData: %@", buf, 0x20u);
      }

      v20 = *(a1 + 48);
      if (v13)
      {
        (*(v20 + 16))(v20, 0, 0, 0, v13);
      }

      else
      {
        v21 = [NSError GEOErrorWithCode:-12 reason:@"Could not decode the MapItem and/or Location data!"];
        (*(v20 + 16))(v20, v18, 0, 0, v21);
      }
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "MapsSuggestionsPredictionsServer.mm";
      v30 = 1026;
      *v31 = 120;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsPredictionsXPCPeer predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v5 = v11;
  }
}

void sub_10001B800(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = v12;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v19[1] = 0;
    v14 = MapsSuggestionsTransportModesToNSData();
    v15 = 0;
    v19[0] = 0;
    v16 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:v19];
    v13 = v19[0];
    v17 = *(a1 + 32);
    if (v15)
    {
      (*(v17 + 16))(v17, 0, 0, 0, v15);
    }

    else
    {
      v18 = [v10 data];
      (*(v17 + 16))(v17, v14, v18, v16, 0);
    }
  }
}

void sub_10001C4D0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    if (v3)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [v3 connection];
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPC connection %@ became invalid", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C7CC;
      block[3] = &unk_1000756F8;
      v9 = a1[4];
      v6 = v3;
      v10 = v6;
      v11 = WeakRetained;
      dispatch_sync(WeakRetained[3], block);
      [(dispatch_queue_t *)WeakRetained _debugPrintOverviewOfConnections];

      v7 = v9;
      v3 = v6;
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v13 = "MapsSuggestionsPredictionsServer.mm";
        v14 = 1026;
        v15 = 232;
        v16 = 2082;
        v17 = "[MapsSuggestionsPredictionsServer listener:shouldAcceptNewConnection:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongPeer went away in %{public}s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsPredictionsServer.mm";
      v14 = 1026;
      v15 = 231;
      v16 = 2082;
      v17 = "[MapsSuggestionsPredictionsServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v7;
  }
}

void sub_10001C7CC(uint64_t a1)
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

void sub_10001C838(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    if (v3)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [v3 connection];
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPC connection %@ was interrupted", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001CB34;
      block[3] = &unk_1000756F8;
      v9 = a1[4];
      v6 = v3;
      v10 = v6;
      v11 = WeakRetained;
      dispatch_sync(WeakRetained[3], block);
      [(dispatch_queue_t *)WeakRetained _debugPrintOverviewOfConnections];

      v7 = v9;
      v3 = v6;
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v13 = "MapsSuggestionsPredictionsServer.mm";
        v14 = 1026;
        v15 = 244;
        v16 = 2082;
        v17 = "[MapsSuggestionsPredictionsServer listener:shouldAcceptNewConnection:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongPeer went away in %{public}s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsPredictionsServer.mm";
      v14 = 1026;
      v15 = 243;
      v16 = 2082;
      v17 = "[MapsSuggestionsPredictionsServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v7;
  }
}

void sub_10001CB34(uint64_t a1)
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

void sub_10001D6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10001D834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MapsSuggestionsFeelerXPCPeer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001DC44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [[GEOMapItemStorage alloc] initWithData:*(a1 + 32)];
    CLLocationCoordinateFromNSData();
    if (v3 && (v6 = v4, v7 = v5, CLLocationCoordinate2DIsValid(*&v4)))
    {
      v8 = objc_loadWeakRetained(WeakRetained + 4);
      v9 = [v8 signalPipeline];
      v10 = [v9 mergedSignalPackForDestinationMapItem:v3 originCoordinate:{v6, v7}];

      v11 = *(a1 + 48);
      v12 = [v10 data];
      (*(v11 + 16))(v11, v12, 0);
    }

    else
    {
      v13 = *(a1 + 48);
      v10 = [NSError GEOErrorWithCode:-12 reason:@"Could not decode the MapItem data and/or coordinates!"];
      (*(v13 + 16))(v13, 0, v10);
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446722;
      v16 = "MapsSuggestionsSignalPipelineServer.mm";
      v17 = 1026;
      v18 = 76;
      v19 = 2082;
      v20 = "[MapsSuggestionsFeelerXPCPeer signalPackForDestinationMapItemData:originCoordinateData:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v15, 0x1Cu);
    }
  }
}

void sub_10001E1A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [MapsSuggestionsEntry entryWithData:*(a1 + 32)];
    CLLocationCoordinateFromNSData();
    if (v3 && (v6 = v4, v7 = v5, CLLocationCoordinate2DIsValid(*&v4)))
    {
      v8 = objc_loadWeakRetained(WeakRetained + 4);
      v9 = [v8 signalPipeline];
      v10 = [v9 mergedSignalPackForDestinationEntry:v3 originCoordinate:{v6, v7}];

      v11 = *(a1 + 48);
      v12 = [v10 data];
      (*(v11 + 16))(v11, v12, 0);
    }

    else
    {
      v13 = *(a1 + 48);
      v10 = [NSError GEOErrorWithCode:-12 reason:@"Could not decode the Entry data and/or coordinates!"];
      (*(v13 + 16))(v13, 0, v10);
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446722;
      v16 = "MapsSuggestionsSignalPipelineServer.mm";
      v17 = 1026;
      v18 = 102;
      v19 = 2082;
      v20 = "[MapsSuggestionsFeelerXPCPeer signalPackForDestinationEntryData:originCoordinateData:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v15, 0x1Cu);
    }
  }
}

void sub_10001E610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 4);
    v5 = [v4 signalPipeline];
    v6 = [v5 mergedCommonSignalPack];

    v7 = *(a1 + 32);
    v8 = [v6 data];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsSignalPipelineServer.mm";
      v12 = 1026;
      v13 = 125;
      v14 = 2082;
      v15 = "[MapsSuggestionsFeelerXPCPeer signalPackForLocation:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

void sub_10001F82C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    if (v3)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [v3 connection];
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPC connection %@ became invalid", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FB28;
      block[3] = &unk_1000756F8;
      v9 = a1[4];
      v6 = v3;
      v10 = v6;
      v11 = WeakRetained;
      dispatch_sync(WeakRetained[4], block);
      [(dispatch_queue_t *)WeakRetained _debugPrintOverviewOfConnections];

      v7 = v9;
      v3 = v6;
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v13 = "MapsSuggestionsSignalPipelineServer.mm";
        v14 = 1026;
        v15 = 261;
        v16 = 2082;
        v17 = "[MapsSuggestionsSignalPipelineServer listener:shouldAcceptNewConnection:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongPeer went away in %{public}s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsSignalPipelineServer.mm";
      v14 = 1026;
      v15 = 260;
      v16 = 2082;
      v17 = "[MapsSuggestionsSignalPipelineServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v7;
  }
}

void sub_10001FB28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];

  if (v2 == v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) connection];
    [v4 _removeConnection:v5];

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);

    [v7 removeObject:v6];
  }
}

void sub_10001FBC4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    if (v3)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [v3 connection];
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPC connection %@ was interrupted", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FEC0;
      block[3] = &unk_1000756F8;
      v9 = a1[4];
      v6 = v3;
      v10 = v6;
      v11 = WeakRetained;
      dispatch_sync(WeakRetained[4], block);
      [(dispatch_queue_t *)WeakRetained _debugPrintOverviewOfConnections];

      v7 = v9;
      v3 = v6;
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v13 = "MapsSuggestionsSignalPipelineServer.mm";
        v14 = 1026;
        v15 = 274;
        v16 = 2082;
        v17 = "[MapsSuggestionsSignalPipelineServer listener:shouldAcceptNewConnection:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongPeer went away in %{public}s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsSignalPipelineServer.mm";
      v14 = 1026;
      v15 = 273;
      v16 = 2082;
      v17 = "[MapsSuggestionsSignalPipelineServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v7;
  }
}

void sub_10001FEC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];

  if (v2 == v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) connection];
    [v4 _removeConnection:v5];

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);

    [v7 removeObject:v6];
  }
}

void sub_10001FF5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _addConnection:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsSignalPipelineServer.mm";
      v7 = 1026;
      v8 = 288;
      v9 = 2082;
      v10 = "[MapsSuggestionsSignalPipelineServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100020108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100020138(id a1, NSError *a2)
{
  v2 = a2;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "XPC Error: %@", &v4, 0xCu);
  }
}

void sub_1000203D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = WeakRetained[2];
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [v3 _sendSignalPack:*(a1 + 32) toConnection:{*(*(&v8 + 1) + 8 * i), v8}];
        }

        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsSignalPipelineServer.mm";
      v15 = 1026;
      v16 = 334;
      v17 = 2082;
      v18 = "[MapsSuggestionsSignalPipelineServer signalPipelineUpdated:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100020BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v28 - 104));
  _Unwind_Resume(a1);
}

void sub_100020C08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateForConnectionState:1];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsVehicleBluetoothFeeler.m";
      v6 = 1026;
      v7 = 63;
      v8 = 2082;
      v9 = "[MapsSuggestionsVehicleBluetoothFeeler initWithDelegate:name:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100020D14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateForConnectionState:2];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsVehicleBluetoothFeeler.m";
      v6 = 1026;
      v7 = 68;
      v8 = 2082;
      v9 = "[MapsSuggestionsVehicleBluetoothFeeler initWithDelegate:name:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100020E20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateForConnectionState:2];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsVehicleBluetoothFeeler.m";
      v6 = 1026;
      v7 = 74;
      v8 = 2082;
      v9 = "[MapsSuggestionsVehicleBluetoothFeeler initWithDelegate:name:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_100020F34(void *a1, unsigned int a2)
{
  if (a1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "[MapsSuggestionsVehicleBluetoothFeeler _updateAndSendSignalPack:]";
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "bluetoothFeeler: %s: %d", &v6, 0x12u);
    }

    v5 = a1;
    objc_sync_enter(v5);
    sub_10004CCF8(v5, a2, [v5[3] mutableCopy]);
  }
}

void sub_10002117C(id a1)
{
  qword_1000855A8 = [[WeatherSettingsManager alloc] initSharedManager];

  _objc_release_x1();
}

void sub_100021934(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = sub_1000225D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 56));
      v7 = *(a1 + 40);
      *buf = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %@, weather location = %@", buf, 0x20u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [WeakRetained[1] copy];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) weatherLocationDataProvider:WeakRetained didChangeLocation:*(a1 + 40)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_100021DD4(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), off_100084C38);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = NSSelectorFromString(*(*(&v10 + 1) + 8 * v7));
        sub_10002607C(v8, v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_setAssociatedObject(*(a1 + 32), off_100084C38, 0, 1);
  objc_setAssociatedObject(*(a1 + 32), off_100084C30, 0, 3);
}

void sub_100022478(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v10[0] = a2;
  v7 = a2;
  v8 = [NSValue valueWithRange:a3, a4];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [v6 addObject:v9];
}

id sub_1000225D8()
{
  if (qword_1000855C0 != -1)
  {
    sub_10004CD88();
  }

  v1 = qword_1000855B8;

  return v1;
}

void sub_10002261C(id a1)
{
  qword_1000855B8 = os_log_create("com.apple.Maps", "Weather");

  _objc_release_x1();
}

void sub_1000231FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(WeakRetained + 2);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "DonationsXPCPeer{%@} to remove an entry.", &v11, 0xCu);
    }

    v6 = [MapsSuggestionsETA ETAWithData:*(a1 + 32)];
    v7 = objc_loadWeakRetained(WeakRetained + 3);
    v8 = v7;
    if (v7)
    {
      [v7 setETA:v6 destinationKey:*(a1 + 40)];
      v9 = *(a1 + 48);
      if (v9)
      {
        (*(v9 + 16))();
      }
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446722;
        v12 = "MapsSuggestionsDonationsServer.m";
        v13 = 1026;
        v14 = 80;
        v15 = 2082;
        v16 = "[MapsSuggestionsDonationsXPCPeer donateETAData:destinationKey:handler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", &v11, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = v3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "MapsSuggestionsDonationsServer.m";
      v13 = 1026;
      v14 = 77;
      v15 = 2082;
      v16 = "[MapsSuggestionsDonationsXPCPeer donateETAData:destinationKey:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v11, 0x1Cu);
    }

    v6 = v8;
  }
}

void sub_100023604(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(WeakRetained + 2);
      v6 = *(a1 + 32);
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "DonationsXPCPeer{%@} Received signalPackData{%@}", &v11, 0x16u);
    }

    v7 = objc_loadWeakRetained(WeakRetained + 3);
    if (v7)
    {
      v8 = [MapsSuggestionsSignalPack signalPackFromData:*(a1 + 32)];
      v9 = [v7 mapsAppFeeler];
      [v9 sendSignalPack:v8];

      v10 = *(a1 + 40);
      if (v10)
      {
        (*(v10 + 16))();
      }
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446722;
        v12 = "MapsSuggestionsDonationsServer.m";
        v13 = 1026;
        LODWORD(v14[0]) = 97;
        WORD2(v14[0]) = 2082;
        *(v14 + 6) = "[MapsSuggestionsDonationsXPCPeer donateSignalPackData:handler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", &v11, 0x1Cu);
      }
    }
  }

  else
  {
    v8 = v3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "MapsSuggestionsDonationsServer.m";
      v13 = 1026;
      LODWORD(v14[0]) = 95;
      WORD2(v14[0]) = 2082;
      *(v14 + 6) = "[MapsSuggestionsDonationsXPCPeer donateSignalPackData:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v11, 0x1Cu);
    }

    v7 = v8;
  }
}

void sub_100023E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v26 - 144));
  _Unwind_Resume(a1);
}

void sub_100023EF8(id *a1)
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
    block[2] = sub_100024114;
    block[3] = &unk_1000759E0;
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
      v14 = "MapsSuggestionsDonationsServer.m";
      v15 = 1026;
      v16 = 165;
      v17 = 2082;
      v18 = "[MapsSuggestionsDonationsServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v7 = v8;
  }
}

void sub_100024114(uint64_t a1)
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

void sub_100024180(id *a1)
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
    block[2] = sub_10002439C;
    block[3] = &unk_1000759E0;
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
      v14 = "MapsSuggestionsDonationsServer.m";
      v15 = 1026;
      v16 = 177;
      v17 = 2082;
      v18 = "[MapsSuggestionsDonationsServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v7 = v8;
  }
}

void sub_10002439C(uint64_t a1)
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

MapsSuggestionsSignalPipeline *sub_100024720(void *a1)
{
  v2 = [MapsSuggestionsSignalPipeline alloc];
  v3 = [*a1 oneNetworkRequester];
  v4 = [(MapsSuggestionsSignalPipeline *)v2 initWithNetworkRequester:v3];

  v5 = a1[2];
  if (!v5)
  {
    v6 = objc_alloc_init(MapsSuggestionsMLSignalAlgorithm);
    v7 = a1[2];
    a1[2] = v6;

    v5 = a1[2];
  }

  [(MapsSuggestionsSignalPipeline *)v4 setAlgorithm:v5];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a1[1];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v10 = *v26;
    *&v9 = 138412290;
    v23 = v9;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if (([v12 conformsToProtocol:{&OBJC_PROTOCOL___MapsSuggestionsFeeler, v23}] & 1) == 0)
        {
          v21 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446978;
            v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipelineBuilder.hpp";
            v31 = 1024;
            v32 = 88;
            v33 = 2082;
            v34 = "MapsSuggestionsSignalPipeline *MSg::SignalPipelineBuilder::build()";
            v35 = 2082;
            v36 = "NO == [feelerClass conformsToProtocol:@protocol(MapsSuggestionsFeeler)]";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. This is not really a Feeler", buf, 0x26u);
          }

          v20 = 0;
          goto LABEL_30;
        }

        if ([v12 isEnabled])
        {
          if (v12 == objc_opt_class())
          {
            v13 = [[_TtC12destinationd28MapsSuggestionsWeatherFeeler alloc] initWithDelegate:v4 locationUpdater:a1[3]];
            [(MapsSuggestionsSignalPipeline *)v4 addFeeler:v13];
          }

          else if (v12 == objc_opt_class())
          {
            v15 = [MapsSuggestionsMapsSyncFeeler alloc];
            v16 = [*a1 oneMapsSync];
            v13 = [(MapsSuggestionsMapsSyncFeeler *)v15 initWithDelegate:v4 mapsSync:v16];

            [(MapsSuggestionsSignalPipeline *)v4 addFeeler:v13];
          }

          else if (v12 == objc_opt_class())
          {
            v17 = [MapsSuggestionsWalletFeeler alloc];
            v18 = [[MapsSuggestionsWallet alloc] initFromResourceDepot:*a1];
            v13 = [(MapsSuggestionsWalletFeeler *)v17 initWithDelegate:v4 wallet:v18];

            [(MapsSuggestionsSignalPipeline *)v4 addFeeler:v13];
          }

          else if (v12 == objc_opt_class())
          {
            v19 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "@@@ bluetoothFeeler: initinalzing the feeler", buf, 2u);
            }

            v13 = [(MapsSuggestionsBaseFeeler *)[MapsSuggestionsVehicleBluetoothFeeler alloc] initWithDelegate:v4];
            [(MapsSuggestionsSignalPipeline *)v4 addFeeler:v13];
          }

          else
          {
            v13 = [[v12 alloc] initWithDelegate:v4];
            [(MapsSuggestionsSignalPipeline *)v4 addFeeler:v13];
          }
        }

        else
        {
          v13 = GEOFindOrCreateLog();
          if (os_log_type_enabled(&v13->super.super.super, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v12 description];
            *buf = v23;
            v30 = v14;
            _os_log_impl(&_mh_execute_header, &v13->super.super.super, OS_LOG_TYPE_DEBUG, "Feeler %@ is disabled", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = v4;
LABEL_30:

  return v20;
}

void *sub_100024D60(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_100025018(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) copy];
  [v2 setObject:v3 forKey:*(a1 + 48)];

  return 1;
}

uint64_t sub_1000252C8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:{*(a1 + 48), v9}];
        [v7 removeObject:v6];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_1000255E0(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(a1 + 32) + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  v3 = 0;
  if (v2)
  {
    v14 = *v21;
    do
    {
      v15 = v2;
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          v8 = *v17;
          do
          {
            for (j = 0; j != v7; j = j + 1)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v16 + 1) + 8 * j);
              v11 = MapsSuggestionsDestinationKey();
              if ([*(a1 + 40) isEqualToString:v11])
              {
                [v10 setETA:*(a1 + 48) forKey:@"MapsSuggestionsETAKey"];
                v3 = 1;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v7);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v2);
  }

  return v3 & 1;
}

void sub_100025A5C(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100025FBC;
    v10[3] = &unk_100075560;
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
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = MapsSuggestionsDaemonMemory]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void sub_100025C80(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100025CFC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100025E50(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v4 = v3;
  *a2 = v4;
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v6 count:8];
  a2[1] = [v5 mutableCopy];
}

void sub_100025F74(_Unwind_Exception *a1)
{
  v4 = v3;

  sub_100024C64(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100025FA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100025FBC(uint64_t a1)
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

void sub_1000265BC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [WeakRetained considerMyAllowanceAsLimited:{objc_msgSend(a1[4], "_limitsPrecision")}];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = a1[5];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if (MapsSuggestionsLoggingIsVerbose())
          {
            v8 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v16 = v7;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Considering new location: %@", buf, 0xCu);
            }
          }

          if (MapsSuggestionsIsValidLocation())
          {
            [WeakRetained considerMyNewLocation:v7];
          }

          else
          {
            v9 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v16 = v7;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Dropping invalid location: %@", buf, 0xCu);
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "MapsSuggestionsLeechingLocationUpdater.mm";
      v17 = 1026;
      v18 = 103;
      v19 = 2082;
      v20 = "[MapsSuggestionsLeechingLocationUpdater locationManager:didUpdateLocations:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_100026AF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_100026B10(uint64_t a1)
{
  if (MapsSuggestionsIsValidVisit())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      -[NSObject considerMyAllowanceAsLimited:](WeakRetained, "considerMyAllowanceAsLimited:", [*(a1 + 40) _limitsPrecision]);
      [WeakRetained considerMyNewVisit:*(a1 + 32)];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsLeechingLocationUpdater.mm";
        v7 = 1026;
        v8 = 146;
        v9 = 2082;
        v10 = "[MapsSuggestionsLeechingLocationUpdater locationManager:didVisit:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }

  else
  {
    WeakRetained = GEOFindOrCreateLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Dropping invalid visit: %@", &v5, 0xCu);
    }
  }
}

void sub_1000270C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_retainBlock(*(a1 + 32));
    v4 = *(WeakRetained + 4);
    *(WeakRetained + 4) = v3;

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(WeakRetained + 5);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} starting...", &v9, 0xCu);
    }

    [*(WeakRetained + 1) addMonitoredXPCConnection:*(WeakRetained + 5)];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(WeakRetained + 5);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} started.", &v9, 0xCu);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "MapsSuggestionsSourcesServer.m";
      v11 = 1026;
      v12 = 133;
      v13 = 2082;
      v14 = "[MapsSuggestionsSourcesXPCPeer startMonitoringWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v9, 0x1Cu);
    }
  }
}

id sub_10002746C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _stopMonitoring];
}

void sub_1000276A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(WeakRetained + 5);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} got forced updated.", &v7, 0xCu);
    }

    [*(WeakRetained + 1) forceEarlyUpdateForType:*(a1 + 48) forXPCConnection:*(WeakRetained + 5) handler:*(a1 + 32)];
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsSourcesServer.m";
      v9 = 1026;
      v10 = 163;
      v11 = 2082;
      v12 = "[MapsSuggestionsSourcesXPCPeer forceEarlyUpdateForType:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100027A2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(WeakRetained + 5);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPCPeer{%@} got removeEntryData.", &v7, 0xCu);
    }

    [*(WeakRetained + 1) removeEntryData:*(a1 + 32) behavior:*(a1 + 56) forXPCConnection:*(WeakRetained + 5) handler:*(a1 + 40)];
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsSourcesServer.m";
      v9 = 1026;
      v10 = 179;
      v11 = 2082;
      v12 = "[MapsSuggestionsSourcesXPCPeer removeEntryData:behavior:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100027D04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(WeakRetained + 5);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPCPeer{%@} got feedbackForEntryData.", &v7, 0xCu);
    }

    [*(WeakRetained + 1) feedbackForEntryData:*(a1 + 32) action:*(a1 + 48) forXPCConnection:*(WeakRetained + 5)];
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsSourcesServer.m";
      v9 = 1026;
      v10 = 195;
      v11 = 2082;
      v12 = "[MapsSuggestionsSourcesXPCPeer feedbackForEntryData:action:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100027FDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(WeakRetained + 5);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPCPeer{%@} got feedbackForMapItem.", &v7, 0xCu);
    }

    [*(WeakRetained + 1) feedbackForMapItem:*(a1 + 32) action:*(a1 + 48) forXPCConnection:*(WeakRetained + 5)];
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsSourcesServer.m";
      v9 = 1026;
      v10 = 210;
      v11 = 2082;
      v12 = "[MapsSuggestionsSourcesXPCPeer feedbackForMapItem:action:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_1000282B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(WeakRetained + 5);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "XPCPeer{%@} got feedbackForContact.", &v7, 0xCu);
    }

    [*(WeakRetained + 1) feedbackForContact:*(a1 + 32) action:*(a1 + 48) forXPCConnection:*(WeakRetained + 5)];
  }

  else
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsSourcesServer.m";
      v9 = 1026;
      v10 = 225;
      v11 = 2082;
      v12 = "[MapsSuggestionsSourcesXPCPeer feedbackForContact:action:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100028780(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(WeakRetained + 5);
      *buf = 138412290;
      v51 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "XPCPeer{%@} got updateGraph.", buf, 0xCu);
    }

    v31 = *(a1 + 32);
    v5 = *(WeakRetained + 2);
    v6 = [*(WeakRetained + 1) source];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    v32 = v7;
    if (v7)
    {
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v9;
          context = objc_autoreleasePoolPush();
          v30 = MapsSuggestionsCurrentBestLocation();
          if (v30)
          {
            v10 = [[MapsSuggestionsDestinationGraphUpdater alloc] initWithDestinationGraph:v7, context];
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v11 = [v29 children];
            v12 = [v11 countByEnumeratingWithState:&v44 objects:buf count:16];
            if (v12)
            {
              v13 = 0;
              v14 = *v45;
              do
              {
                for (i = 0; i != v12; i = i + 1)
                {
                  if (*v45 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v44 + 1) + 8 * i);
                  if ([v16 conformsToProtocol:&OBJC_PROTOCOL___MapsSuggestionsPreloadableSource])
                  {
                    [(MapsSuggestionsDestinationGraphUpdater *)v10 addPreloadableSource:v16];
                    v13 = 1;
                  }
                }

                v12 = [v11 countByEnumeratingWithState:&v44 objects:buf count:16];
              }

              while (v12);

              if (v13)
              {
                v40 = 0;
                v41 = &v40;
                v42 = 0x2020000000;
                v43 = 0;
                v17 = [NSDateInterval alloc];
                v18 = MapsSuggestionsNow();
                GEOConfigGetDouble();
                v19 = [v17 initWithStartDate:v18 duration:?];

                *v34 = _NSConcreteStackBlock;
                v35 = 3221225472;
                v36 = sub_10002A97C;
                v37 = &unk_100075C48;
                v39 = &v40;
                v20 = dispatch_semaphore_create(0);
                v38 = v20;
                if (([(MapsSuggestionsDestinationGraphUpdater *)v10 rebuildForPeriod:v19 location:v30 handler:v34]& 1) != 0)
                {
                  GEOConfigGetDouble();
                  v22 = dispatch_time(0, (v21 * 1000000000.0));
                  if (!dispatch_semaphore_wait(v20, v22))
                  {
                    v26 = *(v41 + 24);
                    goto LABEL_47;
                  }

                  v23 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    *v48 = 136315138;
                    v49 = "_rebuildGraph";
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Timeout on %s", v48, 0xCu);
                  }
                }

                else
                {
                  v23 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    *v48 = 136315138;
                    v49 = "_rebuildGraph";
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "DestinationGraphUpdater did not like our input in %s", v48, 0xCu);
                  }
                }

                v26 = 0;
LABEL_47:

                _Block_object_dispose(&v40, 8);
                goto LABEL_43;
              }
            }

            else
            {
            }

            v27 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *v34 = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Our DestinationGraphUpdater doesn't have any Sources to preload", v34, 2u);
            }
          }

          else
          {
            v10 = GEOFindOrCreateLog();
            if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v51 = "_rebuildGraph";
              _os_log_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_ERROR, "Got no current location to work with in %s", buf, 0xCu);
            }
          }

          v26 = 0;
LABEL_43:

          objc_autoreleasePoolPop(context);
          v24 = v29;
          goto LABEL_34;
        }

        v24 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446978;
          v51 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
          v52 = 1024;
          v53 = 34;
          v54 = 2082;
          v55 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
          v56 = 2082;
          v57 = "! [source isKindOfClass:[MapsSuggestionsCompositeSource class]]";
          v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Only supports CompositeSource at the moment";
          goto LABEL_32;
        }

LABEL_33:
        v26 = 0;
LABEL_34:

        (*(v31 + 16))(v31, v26 & 1);
        goto LABEL_35;
      }

      v24 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      *buf = 136446978;
      v51 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v52 = 1024;
      v53 = 33;
      v54 = 2082;
      v55 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
      v56 = 2082;
      v57 = "nil == (source)";
      v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source";
    }

    else
    {
      v24 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      *buf = 136446978;
      v51 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v52 = 1024;
      v53 = 32;
      v54 = 2082;
      v55 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
      v56 = 2082;
      v57 = "nil == (graph)";
      v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination graph";
    }

LABEL_32:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, v25, buf, 0x26u);
    goto LABEL_33;
  }

  v9 = v2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v51 = "MapsSuggestionsSourcesServer.m";
    v52 = 1026;
    v53 = 263;
    v54 = 2082;
    v55 = "[MapsSuggestionsSourcesXPCPeer updateGraphWithHandler:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
  }

LABEL_35:
}

void sub_100028F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002A138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v28 - 160));
  _Unwind_Resume(a1);
}

void sub_10002A198(id *a1)
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

      v7 = WeakRetained[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002A438;
      block[3] = &unk_1000759E0;
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
        v14 = "MapsSuggestionsSourcesServer.m";
        v15 = 1026;
        v16 = 390;
        v17 = 2082;
        v18 = "[MapsSuggestionsSourcesServer listener:shouldAcceptNewConnection:]_block_invoke";
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
      v14 = "MapsSuggestionsSourcesServer.m";
      v15 = 1026;
      v16 = 389;
      v17 = 2082;
      v18 = "[MapsSuggestionsSourcesServer listener:shouldAcceptNewConnection:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v8;
  }
}

void sub_10002A438(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];

  if (v2 == v3)
  {
    [*(*(a1 + 48) + 16) removeObject:*(a1 + 40)];
    v4 = *(a1 + 40);

    [v4 stopMonitoringWithHandler:&stru_100075C20];
  }
}

void sub_10002A4B4(id a1)
{
  v1 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Force stopMonitoring", v2, 2u);
  }
}

void sub_10002A530(id *a1)
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
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "XPC connection %@ was interrupted", buf, 0xCu);
      }

      v7 = WeakRetained[4];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002A7D0;
      block[3] = &unk_1000759E0;
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
        v14 = "MapsSuggestionsSourcesServer.m";
        v15 = 1026;
        v16 = 405;
        v17 = 2082;
        v18 = "[MapsSuggestionsSourcesServer listener:shouldAcceptNewConnection:]_block_invoke";
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
      v14 = "MapsSuggestionsSourcesServer.m";
      v15 = 1026;
      v16 = 404;
      v17 = 2082;
      v18 = "[MapsSuggestionsSourcesServer listener:shouldAcceptNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v8;
  }
}

void sub_10002A7D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 48) + 16);

    [v5 removeObject:v4];
  }
}

id sub_10002A9B0(int a1)
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

id sub_10002AA54(int a1)
{
  v1 = sub_10002A9B0(a1);
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

id sub_10002AAAC(void *a1)
{
  v1 = qword_1000855D0;
  v2 = a1;
  if (v1 != -1)
  {
    sub_10004CD9C();
  }

  v3 = [qword_1000855C8 objectForKeyedSubscript:v2];

  v4 = [v3 longLongValue];
  return v4;
}

void sub_10002AB18(id a1)
{
  v3[0] = @"gasoline";
  v3[1] = @"diesel";
  v4[0] = &off_100079180;
  v4[1] = &off_100079198;
  v3[2] = @"electric";
  v3[3] = @"cng";
  v4[2] = &off_1000791B0;
  v4[3] = &off_1000791C8;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_1000855C8;
  qword_1000855C8 = v1;
}

void sub_10002AD10(id a1)
{
  v7[0] = &off_100079180;
  v7[1] = &off_100079198;
  v8[0] = EAVehicleInfoRangeGasolineKey;
  v8[1] = EAVehicleInfoRangeDieselKey;
  v7[2] = &off_1000791B0;
  v7[3] = &off_1000791C8;
  v8[2] = EAVehicleInfoRangeElectricKey;
  v8[3] = EAVehicleInfoRangeCNGKey;
  v1 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v2 = qword_1000855E0;
  qword_1000855E0 = v1;

  v5[0] = &off_100079180;
  v5[1] = &off_100079198;
  v6[0] = EAVehicleInfoHasLowDistanceRangeGasolineKey;
  v6[1] = EAVehicleInfoHasLowDistanceRangeDieselKey;
  v5[2] = &off_1000791B0;
  v5[3] = &off_1000791C8;
  v6[2] = EAVehicleInfoHasLowDistanceRangeElectricKey;
  v6[3] = EAVehicleInfoHasLowDistanceRangeCNGKey;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v4 = qword_1000855E8;
  qword_1000855E8 = v3;
}

uint64_t sub_10002AE64(uint64_t a1)
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

void sub_10002B604(id a1)
{
  v1 = qword_1000855F0;
  qword_1000855F0 = &off_1000793B0;
}

uint64_t sub_10002B91C(uint64_t a1)
{
  v2 = *(a1 + 32);
  GEOConfigGetPropertiesForKey();

  return 1;
}

void sub_10002B9B8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3 && _GEOConfigHasValue())
  {
    v4 = [NSNumber numberWithInteger:GEOConfigGetInteger()];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

id sub_10002BB88()
{
  if (qword_100085640 != -1)
  {
    sub_10004CDD8();
  }

  v1 = qword_100085638;

  return v1;
}

void sub_10002C304(id a1)
{
  v1 = [MapsExternalAccessory alloc];
  qword_100085600 = [(MapsExternalAccessory *)v1 initWithPrivateQueue:byte_100085610];

  _objc_release_x1();
}

void sub_10002CA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak((v41 - 144));
  _Unwind_Resume(a1);
}

void sub_10002CB20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidConnect:v3];
}

void sub_10002CB7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidUpdateVehicle:v3];
}

void sub_10002CBD8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidUpdate:v3];
}

void sub_10002CC34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryDidDisconnect:v3];
}

void sub_10002D020(id a1)
{
  v1 = objc_opt_new();
  v13 = sub_10002A9B0(16843009);
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

  v10 = qword_100085618;
  qword_100085618 = v1;
}

void sub_10002D634(id a1)
{
  qword_100085630 = objc_opt_new();

  _objc_release_x1();
}

void sub_10002E324(id a1)
{
  qword_100085638 = os_log_create("com.apple.Maps", "CarExternalAccessory");

  _objc_release_x1();
}

void sub_10002E574(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10002E5E4(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 24;
    v3 = *(a1 + 24);
    v4 = *(v2 + 8);
    v5 = *(a1 + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3321888768;
    v19[2] = sub_10002E828;
    v19[3] = &unk_100075DF0;
    v6 = v3;
    v20 = v6;
    v7 = v4;
    v21 = v7;
    v19[4] = a1;
    v8 = [v5 currentTripsWithHandler:v19];
    v9 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3321888768;
    v16[2] = sub_10002ECE8;
    v16[3] = &unk_100075DF0;
    v10 = v6;
    v17 = v10;
    v11 = v7;
    v18 = v11;
    v16[4] = a1;
    v12 = [v9 futureTripsWithHandler:v16];
    if (!v8)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "For some reason, MapsSuggestionsPortrait does not want to call back with current trips.", v15, 2u);
      }
    }

    if (!v12)
    {
      v14 = GEOFindOrCreateLog();
      sub_10004CE28(v14);
    }
  }
}

void sub_10002E828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error loading current trip from Portrait: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [v5 count];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = "no";
      if (v8)
      {
        v10 = "yes";
      }

      *buf = 136315138;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Did we find a current trip in the PortraitFeeler? %s", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002EBC8;
    v12[3] = &unk_100075DC8;
    v13 = v8 != 0;
    sub_10002EA20((a1 + 40), v11, v12);
  }
}

void sub_10002EA20(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002EFE0;
    v10[3] = &unk_100075560;
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
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = MapsSuggestionsPortraitFeeler]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void sub_10002EBC8(uint64_t a1, void *a2)
{
  v5 = a2;
  LOBYTE(v3) = *(a1 + 32);
  *&v4 = v3;
  [v5[6] writeSignalValue:37 forType:v4];
  sub_10002EC44(v5);
}

void sub_10002EC44(id *a1)
{
  if (a1)
  {
    v3 = [a1 delegate];
    v2 = [a1[6] copy];
    [v3 feeler:a1 sendsSignalPack:v2];
  }
}

void sub_10002ECE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error loading future trip from Portrait: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [v5 count];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = "no";
      if (v8)
      {
        v10 = "yes";
      }

      *buf = 136315138;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Did we find a future trip in the PortraitFeeler? %s", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002EEE0;
    v12[3] = &unk_100075DC8;
    v13 = v8 != 0;
    sub_10002EA20((a1 + 40), v11, v12);
  }
}

void sub_10002EEE0(uint64_t a1, void *a2)
{
  v5 = a2;
  LOBYTE(v3) = *(a1 + 32);
  *&v4 = v3;
  [v5[6] writeSignalValue:36 forType:v4];
  sub_10002EC44(v5);
}

void sub_10002EFE0(uint64_t a1)
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

void sub_10002F624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_10002FDFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10002FE18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsMapsSyncFeeler.m";
      v8 = 1026;
      v9 = 111;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSyncFeeler mapsSync:didChangeForContentType:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 40);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        sub_100003C84(WeakRetained);
      }

      goto LABEL_10;
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncFeeler.m";
      v8 = 1024;
      v9 = 126;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSyncFeeler mapsSync:didChangeForContentType:]_block_invoke";
      v12 = 2082;
      v13 = "YES";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. MapsSuggestionsMapsSyncTypeUnknown does not make sense here", &v6, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v4 == 2)
  {
    sub_100004950(WeakRetained);
  }

  else if (v4 == 3)
  {
    sub_100003B18(WeakRetained);
  }

LABEL_10:
}

void sub_1000300C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000300E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] removeMapsSyncObserver:WeakRetained forContentType:1];
    [v2[4] removeMapsSyncObserver:v2 forContentType:3];
    [v2[4] removeMapsSyncObserver:v2 forContentType:2];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMapsSyncFeeler.m";
      v6 = 1026;
      v7 = 171;
      v8 = 2082;
      v9 = "[MapsSuggestionsMapsSyncFeeler stopUpdatingSignals]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void sub_10003039C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 24));

  _Unwind_Resume(a1);
}

void sub_100030584(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = *(WeakRetained + 4);
    v6 = [v4 uniqueName];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsDestinationGraphUpdater.mm";
      v10 = 1026;
      v11 = 85;
      v12 = 2082;
      v13 = "[MapsSuggestionsDestinationGraphUpdater addPreloadableSource:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_1000306E8(int64x2_t *a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  if (a1)
  {
    v24 = v5;
    if (v5)
    {
      if (v28)
      {
        v23 = a1;
        objc_initWeak(&location, a1);
        v6 = dispatch_group_create();
        dispatch_group_enter(v6);
        v7 = a1;
        if (a1[7].i64[1])
        {
          v8 = *(a1[5].i64[1] + 8 * (a1[7].i64[0] / 0xAAuLL)) + 24 * (a1[7].i64[0] % 0xAAuLL);
          v41 = *v8;
          v9 = *(v8 + 8);
          v10 = *(v8 + 16);
          v42 = v9;
          v43 = v10;
          sub_1000320CC(v7 + 5);
          v27 = v9;
          v11 = [NSDateInterval alloc];
          GEOConfigGetDouble();
          v12 = [v11 initWithStartDate:v41 duration:?];
          sub_1000321B4(&v7[2].i64[1], &v41);
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v26 = v12;
          v13 = [v7[2].i64[0] allValues];
          obj = v13;
          v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v14)
          {
            v15 = *v38;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v37 + 1) + 8 * i);
                dispatch_group_enter(v6);
                v18 = objc_autoreleasePoolPush();
                v33[0] = _NSConcreteStackBlock;
                v33[1] = 3221225472;
                v33[2] = sub_100030B94;
                v33[3] = &unk_100075EF0;
                v33[4] = v17;
                v34 = v6;
                objc_copyWeak(&v36, &location);
                v35 = v28;
                [v17 suggestionsEntriesAtLocation:v27 period:v26 handler:v33];

                objc_destroyWeak(&v36);
                objc_autoreleasePoolPop(v18);
              }

              v13 = obj;
              v14 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v14);
          }

          v7 = v23;
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        dispatch_group_leave(v6);
        v21 = v7[1].i64[0];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100031360;
        block[3] = &unk_100075F18;
        v22 = v21;
        objc_copyWeak(&v32, &location);
        v31 = v24;
        block[4] = v23;
        v30 = v28;
        dispatch_group_notify(v6, v22, block);

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      else
      {
        v20 = GEOFindOrCreateLog();
        sub_10004CF30(v20);
      }
    }

    else
    {
      v19 = GEOFindOrCreateLog();
      sub_10004CFF8(v19);
    }

    v5 = v24;
  }
}

void sub_100030B94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) uniqueName];
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19[0] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error while reading from %@: %@", buf, 0x16u);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100030E2C;
      v11[3] = &unk_100075100;
      objc_copyWeak(&v15, (a1 + 56));
      v12 = v5;
      v13 = *(a1 + 48);
      v14 = *(a1 + 40);
      dispatch_async(WeakRetained[2], v11);

      objc_destroyWeak(&v15);
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "MapsSuggestionsDestinationGraphUpdater.mm";
        v18 = 1026;
        LODWORD(v19[0]) = 151;
        WORD2(v19[0]) = 2082;
        *(v19 + 6) = "[MapsSuggestionsDestinationGraphUpdater _walkAllQueuedMomentsUntil:handler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void sub_100030E2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = a1;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v3)
    {
      goto LABEL_27;
    }

    v4 = *v30;
    while (1)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = objc_loadWeakRetained(WeakRetained + 1);
        [v8 addEntry:v6];

        v9 = v6;
        v10 = [v9 geoMapItem];
        LODWORD(v8) = v10 == 0;

        if (v8)
        {
          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446978;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraphUpdater.mm";
            *&buf[12] = 1024;
            *&buf[14] = 94;
            v35 = 2082;
            v36 = "CLLocation *_locationFromMapsSuggestionsEntry(MapsSuggestionsEntry *__strong)";
            v37 = 2082;
            v38 = "nil == (entry.geoMapItem)";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. All preloadable sources should return entries with mapItems", buf, 0x26u);
          }

          goto LABEL_24;
        }

        v11 = [CLLocation alloc];
        v12 = [v9 geoMapItem];
        [v12 coordinate];
        v14 = v13;
        v15 = [v9 geoMapItem];
        [v15 coordinate];
        v16 = [v11 initWithLatitude:v14 longitude:?];

        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = v9;
        v18 = v17;
        if (v17)
        {
          v19 = [v17 containsKey:@"MapsSuggestionsLatestTimeKey"];
          v20 = @"MapsSuggestionsLatestTimeKey";
          if ((v19 & 1) != 0 || (v21 = [v18 containsKey:@"MapsSuggestionsScheduledEndTimeKey"], v20 = @"MapsSuggestionsScheduledEndTimeKey", v21))
          {
            v22 = [v18 dateForKey:v20];

            if (v22)
            {
              v23 = [v22 laterDate:*(v27 + 40)];
              v24 = v23 == v22;

              if (!v24)
              {
                sub_100031E38(buf, v22, v16);
                if (!sub_100032790(WeakRetained + 5, buf))
                {
                  sub_100032890(WeakRetained + 10, buf);
                }
              }
            }

            goto LABEL_23;
          }
        }

        else
        {
          v25 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446978;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraphUpdater.mm";
            *&buf[12] = 1024;
            *&buf[14] = 102;
            v35 = 2082;
            v36 = "NSDate *_fuzzyEndTimeFromMapsSuggestionsEntry(MapsSuggestionsEntry *__strong)";
            v37 = 2082;
            v38 = "nil == (entry)";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
          }
        }

        v22 = 0;
LABEL_23:
        v9 = v16;
LABEL_24:

LABEL_25:
        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v3)
      {
LABEL_27:

        dispatch_group_leave(*(v27 + 48));
        goto LABEL_31;
      }
    }
  }

  v26 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "MapsSuggestionsDestinationGraphUpdater.mm";
    *&buf[12] = 1026;
    *&buf[14] = 154;
    v35 = 2082;
    v36 = "[MapsSuggestionsDestinationGraphUpdater _walkAllQueuedMomentsUntil:handler:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
  }

LABEL_31:
}

void sub_100031360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[15])
    {
      sub_1000306E8(*(a1 + 32), *(a1 + 40), *(a1 + 48));
    }

    else
    {
      sub_100032FA0((WeakRetained + 5));
      v5 = objc_loadWeakRetained(v3 + 1);
      [v5 rebalance];

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsDestinationGraphUpdater.mm";
      v8 = 1026;
      v9 = 185;
      v10 = 2082;
      v11 = "[MapsSuggestionsDestinationGraphUpdater _walkAllQueuedMomentsUntil:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_1000319A4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[5];
    v5 = WeakRetained[6];
    v6 = WeakRetained[7];
    WeakRetained[5] = 0u;
    WeakRetained[6] = 0u;
    *buf = v4;
    *&buf[16] = v5;
    WeakRetained[7] = 0u;
    v12 = v6;
    sub_100032FA0(&WeakRetained[2].i64[1]);
    sub_100032890(v3[5].i64, (a1 + 7));
    v7 = [a1[4] endDate];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100031BA8;
    v9[3] = &unk_100075F40;
    v9[4] = v3;
    v10 = a1[5];
    sub_1000306E8(v3, v7, v9);

    sub_100031F28(buf);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsDestinationGraphUpdater.mm";
      *&buf[12] = 1026;
      *&buf[14] = 216;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsDestinationGraphUpdater rebuildForPeriod:location:handler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

uint64_t sub_100031BA8(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) uniqueName];
    v6 = 138412546;
    v7 = v3;
    v8 = 2080;
    v9 = "rebuildForPeriod";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v6, 0x16u);
  }

  v4 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v6) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "rebuildForPeriod", "", &v6, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_100031D38(void *a1, uint64_t a2)
{
  a1[7] = *(a2 + 56);
  result = *(a2 + 64);
  v5 = *(a2 + 72);
  a1[8] = result;
  a1[9] = v5;
  return result;
}

void sub_100031D78(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void *sub_100031E38(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  *a1 = v7;
  v8 = v6;
  a1[1] = v8;
  [v7 timeIntervalSince1970];
  v18 = v9;
  [v8 coordinate];
  v17 = v10;
  [v8 coordinate];
  v11.i64[0] = v17;
  v11.i64[1] = v18;
  v12 = vbicq_s8(vshlq_u64(v11, xmmword_100056C70), vceqzq_f64(v11));
  v13 = veorq_s8(v12, vdupq_laneq_s64(v12, 1)).u64[0];
  v15 = v14;
  if (v14 == 0.0)
  {
    v15 = 0.0;
  }

  a1[2] = v13 ^ *&v15;

  return a1;
}

uint64_t sub_100031F28(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {

        v9 = *v7;
        v7 += 24;

        if (v7 - *v6 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10003207C(a1);
}