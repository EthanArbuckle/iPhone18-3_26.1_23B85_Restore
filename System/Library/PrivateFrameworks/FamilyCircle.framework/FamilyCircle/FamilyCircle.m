uint64_t sub_100002314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000023B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id RateLimiter.init(persistence:identifier:getDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v6 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___FARateLimiter_encoder;
  v14 = type metadata accessor for JSONEncoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v5[v13] = JSONEncoder.init()();
  v17 = OBJC_IVAR___FARateLimiter_decoder;
  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v5[v17] = JSONDecoder.init()();
  v30 = OBJC_IVAR___FARateLimiter_queue;
  sub_100002B10(0, &qword_1000B7F50, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v37 = &_swiftEmptyArrayStorage;
  sub_100002BA0(&unk_1000B8A30, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100022F18(&unk_1000B7F60, &qword_10008BF10);
  sub_1000027EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = v31;
  *&v5[v30] = v21;
  *&v5[OBJC_IVAR___FARateLimiter_persistence] = v22;
  v23 = &v5[OBJC_IVAR___FARateLimiter_identifier];
  v24 = v33;
  *v23 = v32;
  *(v23 + 1) = v24;
  v25 = &v5[OBJC_IVAR___FARateLimiter_getDate];
  v26 = v35;
  *v25 = v34;
  *(v25 + 1) = v26;
  v27 = type metadata accessor for RateLimiter();
  v36.receiver = v5;
  v36.super_class = v27;
  return objc_msgSendSuper2(&v36, "init");
}

unint64_t sub_1000027EC()
{
  result = qword_1000B8A40;
  if (!qword_1000B8A40)
  {
    sub_100022F60(&unk_1000B7F60, &qword_10008BF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8A40);
  }

  return result;
}

uint64_t sub_100002AD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002B10(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100002B58(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002BA0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100002D04(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 ensureAccount];

  return v2;
}

id sub_100002FB8(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 88) load];
  v2 = [v1 catch];
  v3 = (v2)[2](v2, &stru_1000A5FB8);

  return v3;
}

void sub_10000318C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = a2;
  v4 = [v2 loadWithError:&v6];
  v5 = v6;
  v3[2](v3, v4, v5);
}

id sub_10000330C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldFetchFromServer:v3])
  {
    v4 = [*(a1 + 32) fetchCircleFromServerWithCacheResponse:v3];
    v5 = [v4 catch];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100006620;
    v14[3] = &unk_1000A6008;
    v15 = v3;
    v6 = (v5)[2](v5, v14);
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:FAFamilyMarqueeHasEverBeenCalled];

    if ((v8 & 1) == 0)
    {
      v9 = _FALogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requested marquee for first time and setting member count on familycircle cache hit.", v13, 2u);
      }

      [*(*(a1 + 32) + 40) updateMarqueeCache];
    }

    v10 = *(a1 + 32);
    v11 = [v3 familyCircle];
    [v10 updateUserDefaultsWithFamilyCircle:v11];

    v6 = [v3 familyCircle];
  }

  return v6;
}

void *sub_10000361C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000036A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003700()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003748()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003790()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000037C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100003918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100003A44()
{
  v1 = sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100003AEC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100003BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_100003CD8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 response];
  *a2 = result;
  return result;
}

uint64_t sub_100003D28()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003D60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003DC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003E1C()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003E70()
{
  _Block_release(*(v0 + 48));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100003EC8()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003FB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000040C4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004110()
{
  v1 = sub_100022F18(&qword_1000B9350, &qword_10008DD70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000041A8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000041E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004228()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004268()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000042A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000042E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004318()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004350()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004388()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000043D0()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004408()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000044CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004510()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004548()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004594()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000045F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000462C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100004784()
{
  signal(15, 1);
  v0 = objc_autoreleasePoolPush();
  Current = CFRunLoopGetCurrent();
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100004854;
  handler[3] = &unk_1000A5EA8;
  handler[4] = Current;
  dispatch_source_set_event_handler(v2, handler);
  dispatch_resume(v2);
  CFRunLoopRun();

  objc_autoreleasePoolPop(v0);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  _set_user_dir_suffix();
  v1 = objc_alloc_init(FAServiceDelegateQueueProvider);
  v2 = [[FamilyCircleServiceDelegate alloc] initWithQueueProvider:v1];
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.familycircle.agent"];
  [v3 setDelegate:v2];
  [v3 resume];
  v4 = [(FamilyCircleServiceDelegate *)v2 familyRefreshActivityScheduler];
  v5 = +[FAPushHelperService sharedInstance];
  [v5 setFamilyRefreshActivityScheduler:v4];

  v6 = +[FAPushHelperService sharedInstance];
  [v6 start];

  v7 = [FAAgeRangeDaemonListener createAndReturnError:0];

  objc_autoreleasePoolPop(v0);
  sub_100004784();

  return 0;
}

void *sub_100004B80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) networkService];
  [FAFamilyCircleDaemonChangeHandler handleDidRemoveMemberWithNetworkService:v4 completion:0];

  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FARemoveFamilyMemberOperation removeMember complete with: %@", &v7, 0xCu);
  }

  return &__kCFBooleanTrue;
}

id sub_100004D24()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000B98B0;
  v7 = qword_1000B98B0;
  if (!qword_1000B98B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100005B0C;
    v3[3] = &unk_1000A5EF8;
    v3[4] = &v4;
    sub_100005B0C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100004DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100005B0C(uint64_t a1)
{
  sub_100005B64();
  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000B98B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100077D40();
    return sub_100005B64();
  }

  return result;
}

uint64_t sub_100005B64()
{
  v3[0] = 0;
  if (!qword_1000B98B8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100005C64;
    v3[4] = &unk_1000A5EA8;
    v3[5] = v3;
    v4 = off_1000A5F18;
    v5 = 0;
    qword_1000B98B8 = _sl_dlopen();
  }

  v0 = qword_1000B98B8;
  v1 = v3[0];
  if (!qword_1000B98B8)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100005C64(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000B98B8 = result;
  return result;
}

Class sub_100005CD8(uint64_t a1)
{
  sub_100005B64();
  result = objc_getClass("STExpressIntroductionSettingsDefaultsObjC");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000B98C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100077D68();
    return sub_100005D30();
  }

  return result;
}

void *sub_100005D30(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeySTCustomRestrictionWebFilterState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B98C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005D80(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyAllowExplicitContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B98D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005DD0(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyPresetOnlyImageGeneration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B98D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005E20(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyRatingMovies");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B98E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005E70(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyRatingTVShows");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B98E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005EC0(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyAllowBookstoreErotica");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B98F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005F10(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyAllowExternalIntelligenceIntegrations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B98F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005F60(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyForceAssistantProfanityFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B9900 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100005FB0(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyAllowWritingTools");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B9908 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100006000(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyAllowAppRemoval");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B9910 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100006050(uint64_t a1)
{
  v2 = sub_100005B64();
  result = dlsym(v2, "STAgePresetKeyRatingApps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000B9918 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100006620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100077D90(v3, v4);
  }

  v5 = [*(a1 + 32) familyCircle];
  v6 = [FAFailedFetchInfoError errorWithCachedFamilyCircle:v5 underlyingError:v3];

  return v6;
}

id sub_100006C74(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchCircleRequestWithCacheResponse:*(a1 + 40)];
  v3 = [v2 catch];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006DD8;
  v10[3] = &unk_1000A6080;
  v4 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v4;
  v5 = (v3)[2](v3, v10);
  v6 = [v5 then];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006F10;
  v9[3] = &unk_1000A60A8;
  v9[4] = *(a1 + 32);
  v7 = (v6)[2](v6, v9);

  return v7;
}

id sub_100006DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 401 && (objc_msgSend(v3, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", @"com.apple.appleaccount"), v4, v5))
  {
    v6 = [*(a1 + 32) _renewCredentials];
    v7 = [v6 then];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006F04;
    v11[3] = &unk_1000A6058;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v8;
    v9 = (v7)[2](v7, v11);
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

id sub_100006F10(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 32) reschedule];
  +[FAFamilyCFUScheduler scheduleWakeupIfNeeded];

  return v3;
}

void sub_1000070A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FAFamilyDetailsRequest alloc];
  v5 = [*(a1 + 32) networkService];
  v6 = [v5 account];
  v7 = [(FAFamilyDetailsRequest *)v4 initWithAccount:v6];

  v8 = [(FAFamilyDetailsRequest *)v7 urlRequest];
  v9 = [v8 allHTTPHeaderFields];
  v10 = [v9 objectForKey:@"Authorization"];

  if (v10 && [v10 length])
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = [*(a1 + 32) clientProcess];
    v13 = [*(a1 + 32) context];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [*(a1 + 32) clientProcess];
      v16 = [*(a1 + 32) context];
      v17 = [v15 stringByAppendingFormat:@"-%@", v16];

      v12 = v17;
    }

    [v11 setObject:v12 forKeyedSubscript:@"X-Apple-Client-Process"];
    v18 = [*(a1 + 32) cachePolicyString];
    [v11 setObject:v18 forKeyedSubscript:@"X-Apple-Cache-Policy"];

    v19 = [*(a1 + 40) familyCircle];

    if (v19)
    {
      v20 = [*(a1 + 40) cacheDate];
      [v20 timeIntervalSince1970];
      v22 = [NSString stringWithFormat:@"%ld", v21];
      [v11 setObject:v22 forKeyedSubscript:@"X-Apple-Cache-Date"];

      [*(a1 + 40) maxAge];
      v24 = [NSString stringWithFormat:@"%ld", v23];
      [v11 setObject:v24 forKeyedSubscript:@"X-Apple-Cache-MaxAge"];

      v25 = [*(a1 + 40) serverTag];
      [v11 setObject:v25 forKeyedSubscript:@"X-Apple-Cache-ServerTag"];
    }

    v26 = [v11 copy];
    [(FAFamilyDetailsRequest *)v7 setCustomHeaders:v26];

    v27 = _FASignpostLogSystem();
    v28 = _FASignpostCreate();
    v30 = v29;

    v31 = _FASignpostLogSystem();
    v32 = v31;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, v28, "FetchFamilyCircleRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v33 = _FASignpostLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100077E28(v28, v33);
    }

    v34 = _FALogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Perform family details request.", buf, 2u);
    }

    v35 = [*(a1 + 32) networkService];
    v36 = [v35 urlSession];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000753C;
    v38[3] = &unk_1000A60F8;
    v40 = v28;
    v41 = v30;
    v39 = v3;
    [(FAFamilyDetailsRequest *)v7 performRequestWithSession:v36 withHandler:v38];
  }

  else
  {
    v37 = _FALogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100077EA0(v37);
    }

    v11 = [NSError errorWithDomain:FAErrorDomain code:-1007 userInfo:0];
    (*(v3 + 2))(v3, 0, v11);
  }
}

void sub_10000753C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = a1[6];
  Nanoseconds = _FASignpostGetNanoseconds();
  v11 = _FASignpostLogSystem();
  v12 = v11;
  v13 = a1[5];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v19 = 67240448;
    *v20 = [v6 statusCode];
    *&v20[4] = 1026;
    *&v20[6] = [v7 code];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "FetchFamilyCircleRequest", " StatusCode=%{public,signpost.telemetry:number1,name=StatusCode}d  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 0xEu);
  }

  v14 = _FASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[5];
    v17 = [v6 statusCode];
    v18 = [v7 code];
    v19 = 134218752;
    *v20 = v16;
    *&v20[8] = 2048;
    v21 = v15;
    v22 = 1026;
    v23 = v17;
    v24 = 1026;
    v25 = v18;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:FetchFamilyCircleRequest  StatusCode=%{public,signpost.telemetry:number1,name=StatusCode}d  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 0x22u);
  }

  (*(a1[4] + 16))();
}

void sub_1000077EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling server response.", v11, 2u);
  }

  v5 = [*(a1 + 32) responseDictionary];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) responseDictionary];
    v8 = [*(a1 + 32) httpResponse];
    v9 = [v8 allHeaderFields];
    [v6 familyCircleWithServerResponse:v7 responseHeaders:v9 completion:v3];
  }

  else
  {
    v10 = [*(a1 + 32) error];

    if (v10)
    {
      [*(a1 + 32) error];
    }

    else
    {
      [NSError errorWithDomain:FAErrorDomain code:-1002 userInfo:0];
    }
    v7 = ;
    v3[2](v3, 0, v7);
  }
}

void sub_1000079D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Family details request returned 401. We need to re-auth...", buf, 2u);
  }

  v17[0] = kACRenewCredentialsShouldForceKey;
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) promptUserToResolveAuthenticatonFailure]);
  v18[0] = v5;
  v17[1] = kACRenewCredentialsShouldAvoidUIKey;
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) promptUserToResolveAuthenticatonFailure] ^ 1);
  v18[1] = v6;
  v17[2] = kACRenewCredentialsServicesKey;
  v16 = AAGrandSlamAppTokenIDiCloudSettings;
  v7 = [NSArray arrayWithObjects:&v16 count:1];
  v18[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  v9 = [*(a1 + 32) _accountStore];
  v10 = [*(a1 + 32) networkService];
  v11 = [v10 account];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007C0C;
  v13[3] = &unk_1000A6170;
  v14 = v3;
  v12 = v3;
  [v9 renewCredentialsForAccount:v11 options:v8 completion:v13];
}

void sub_100007C0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family details request: %ld. Error: %@", &v10, 0x16u);
  }

  v7 = *(a1 + 32);
  if (a2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSNumber numberWithInteger:a2];
  (*(v7 + 16))(v7, v9, v8);
}

void sub_100008488(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(*(a1 + 32) + 40) updateMarqueeCache];
  v5 = _FALogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = "[FAFetchFamilyCircleOperation familyCircleWithServerResponse:responseHeaders:completion:]_block_invoke";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: failed to update family circle cache. Error: %@", &v8, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 136315138;
      v9 = "[FAFetchFamilyCircleOperation familyCircleWithServerResponse:responseHeaders:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: successfully updated family circle cache.", &v8, 0xCu);
    }

    if ([*(a1 + 32) cachePolicy] != 2)
    {
      +[FABroadcaster broadcastFamilyChangedNotification];
    }
  }

  v7 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_100008764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v3 + 2))(v3, v5, 0);
  }

  else
  {
    v6 = [AMSBag bagForProfile:@"AppStore" profileVersion:@"1"];
    v7 = [v6 stringForKey:@"countryCode"];
    v8 = +[NSLocale currentLocale];
    v9 = [v8 objectForKey:NSLocaleCountryCode];
    v10 = [v9 uppercaseString];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000088C0;
    v12[3] = &unk_1000A6200;
    v13 = v10;
    v14 = v4;
    v11 = v10;
    [v7 valueWithCompletion:v12];
  }
}

void sub_1000088C0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100077EE4(a1, v9);
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
      v8 = FAUnknownStoreFrontCode;
      v10 = _FALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100077F60(v8, v10);
      }
    }
  }

  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100077FD8(v8, v11);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_100008D44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 networkService];
  v6 = [v5 standardRequestWithURL:v4 method:@"POST" body:*(a1 + 40) requestFormat:1 responseFormat:objc_msgSend(*(a1 + 32), "responseFormat")];

  return v6;
}

id sub_100008FCC(id a1, id a2)
{
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FADeleteFamilyOperation deleteFamily complete with: %@", &v5, 0xCu);
  }

  return &__kCFBooleanTrue;
}

void sub_10000937C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dsid];

  v5 = _FALogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching presets from screentime client", buf, 2u);
    }

    v7 = [*(a1 + 40) presetsProvider];
    v8 = [*(a1 + 32) dsid];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100009504;
    v10[3] = &unk_1000A62C8;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v9;
    v12 = v3;
    [v7 currentConfigurationForDSID:v8 completion:v10];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No current presets, dsid == nil", buf, 2u);
    }

    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_100009504(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = [v5 _presetsWithCurrentConfiguration:a2 expectedPreset:v6];
  (*(a1[6] + 16))();
}

id sub_100009C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = +[NSNull null];
  v6 = [v4 isEqual:v5];

  if (v6)
  {

    v4 = 0;
  }

  v7 = [v3 objectAtIndexedSubscript:1];
  v8 = +[NSNull null];
  v9 = [v7 isEqual:v8];

  if (v9)
  {

    v7 = 0;
  }

  v10 = [v4 memberForAltDSID:*(a1 + 32)];
  v11 = [v10 age];
  if (v11 <= 0)
  {
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [NSNumber numberWithInteger:v11];
      v14 = *(a1 + 40);
      *buf = 138412546;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Invalid FAFamilyMember age (%@) falling back to passed in age (%@)", buf, 0x16u);
    }

    v11 = [*(a1 + 40) integerValue];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100009F84;
  v23[3] = &unk_1000A6310;
  v23[4] = v11;
  v15 = [v7 fa_firstObjectMatching:v23];
  if (!v15)
  {
    v16 = _FALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100078050(v16);
    }
  }

  v17 = [[AAFPromise alloc] initWithValue:v10];
  v24[0] = v17;
  v18 = [[AAFPromise alloc] initWithValue:v15];
  v24[1] = v18;
  v19 = [[AAFPromise alloc] initWithValue:v7];
  v24[2] = v19;
  v20 = [NSArray arrayWithObjects:v24 count:3];
  v21 = [AAFPromise all:v20];

  return v21;
}

BOOL sub_100009F84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 minAge];
  v5 = *(a1 + 32);
  v6 = v4 <= v5 && v5 <= [v3 maxAge];

  return v6;
}

id sub_100009FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = +[NSNull null];
  v6 = [v4 isEqual:v5];

  if (v6)
  {

    v4 = 0;
  }

  v7 = [v3 objectAtIndexedSubscript:1];
  v8 = [v3 objectAtIndexedSubscript:2];

  v9 = +[NSNull null];
  v10 = [v7 isEqual:v9];

  if (v10)
  {

    v7 = 0;
  }

  v11 = [*(a1 + 32) _currentPresets:v4 expectedPreset:v7];
  v12 = [[AAFPromise alloc] initWithValue:{v7, v11}];
  v17[1] = v12;
  v13 = [[AAFPromise alloc] initWithValue:v8];
  v17[2] = v13;
  v14 = [NSArray arrayWithObjects:v17 count:3];
  v15 = [AAFPromise all:v14];

  return v15;
}

FASettingsPresetsResponse *__cdecl sub_10000A1A4(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 objectAtIndexedSubscript:0];
  v4 = +[NSNull null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {

    v3 = 0;
  }

  v6 = [(NSArray *)v2 objectAtIndexedSubscript:1];
  v7 = +[NSNull null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {

    v6 = 0;
  }

  v9 = [(NSArray *)v2 objectAtIndexedSubscript:2];
  v10 = +[NSNull null];
  v11 = [v9 isEqual:v10];

  if (v11)
  {

    v9 = 0;
  }

  v12 = [[FASettingsPresetsResponse alloc] initWithAvailablePresets:v9 expectedPreset:v6 currentPreset:v3];

  return v12;
}

id sub_10000A644(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 networkService];
  v6 = FAURLEndpointAgePresetsDefinition;
  v11[0] = @"X-MMe-Country";
  v11[1] = @"X-Apple-AgePreset-Version";
  v7 = *(a1 + 40);
  v12[0] = v4;
  v12[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = [v5 signedRequestWithEndpoint:v6 method:@"GET" headers:v8 plistBody:0];

  return v9;
}

id sub_10000A750(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 cache];
  v6 = [v4 URL];

  v7 = [v5 loadForURL:v6 storeFront:a1[5] version:a1[6]];

  return v7;
}

AAFPromise *__cdecl sub_10000A7DC(id a1, NSArray *a2)
{
  v2 = [(NSArray *)a2 fa_map:&stru_1000A6470];
  v3 = [[AAFPromise alloc] initWithValue:v2];

  return v3;
}

id sub_10000A840(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[FASettingsPreset alloc] initWithDictionary:v2];

  return v3;
}

void sub_10000AAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000AAEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performHeartbeatCheckinWithCompletion:&stru_1000A64B0];
}

void sub_10000AB34(id a1, int64_t a2)
{
  v2 = _FALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100078094(v2);
  }
}

void sub_10000AF0C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.screenTimeSettingsCacheOperation", v3);
  v2 = qword_1000B9920;
  qword_1000B9920 = v1;
}

id sub_10000B0B4(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 objectAtIndexedSubscript:0];
  v4 = [(NSArray *)v2 objectAtIndexedSubscript:1];

  v9 = 0;
  [v3 writeToURL:v4 options:0x40000000 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000780EC(v4, v5, v6);
    }
  }

  v7 = [NSNumber numberWithInt:v5 == 0];

  return v7;
}

void sub_10000B238(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v4 _fetchData:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078174();
    }

    v3[2](v3, 0, v6);
  }

  else
  {
    if (v5)
    {
      v8 = [FAScreentimeSettingsObjectCache objectWithData:v5];
      if (v8)
      {
        (v3)[2](v3, v8, 0);
      }

      else
      {
        v10 = _FALogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000781E8();
        }

        v11 = [NSError errorWithDomain:FAErrorDomain code:-1012 userInfo:0];
        v3[2](v3, 0, v11);
      }
    }

    else
    {
      v9 = _FALogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100078260();
      }

      v8 = [NSError errorWithDomain:FAErrorDomain code:-1012 userInfo:0];
      v3[2](v3, 0, v8);
    }
  }
}

id sub_10000B4CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B580;
  v8[3] = &unk_1000A65C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _onQueue:v8];

  return v6;
}

id sub_10000B580(uint64_t a1)
{
  if ([*(a1 + 32) checkResourceIsReachableAndReturnError:0])
  {
    v2 = +[NSFileManager defaultManager];
    v3 = *(a1 + 32);
    v6 = 0;
    [v2 removeItemAtURL:v3 error:&v6];
    v4 = v6;
  }

  else
  {
    v2 = _FALogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000782D8();
    }

    v4 = 0;
  }

  return v4;
}

void sub_10000B8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B900(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B918(void *a1)
{
  v2 = a1[4];
  v10 = 0;
  v3 = [v2 _cacheURLWithError:&v10];
  v4 = v10;
  v5 = [v3 path];

  if (v5)
  {
    v6 = [NSData dataWithContentsOfFile:v5 options:0 error:a1[6]];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (v4 && a1[6])
  {
    v9 = v4;
    *a1[6] = v4;
  }
}

void sub_10000BA70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = a2;
  v4 = [v2 _cacheURLWithError:&v6];
  v5 = v6;
  v3[2](v3, v4, v5);
}

id sub_10000BBB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000BC68;
  v8[3] = &unk_1000A65C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _onQueue:v8];

  return v6;
}

void *sub_10000BC68(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  v3 = [v2 stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v6 = objc_claimAutoreleasedReturnValue(), v11 = 0, [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v11], v7 = v11, v6, (v8 = v7) == 0))
  {
    v7 = 0;
    v8 = *(a1 + 32);
  }

  v9 = v8;

  return v8;
}

void sub_10000BE0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cacheQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BED4;
  v7[3] = &unk_1000A6640;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10000BED4(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  objc_opt_class();
  objc_opt_isKindOfClass();
  (*(*(a1 + 40) + 16))();
}

void sub_10000C2E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _FALogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000783CC(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched family followup: %@", &v14, 0xCu);
    }

    v8 = [v5 objectForKeyedSubscript:@"adsid"];
    v9 = [v5 objectForKeyedSubscript:AKFollowUpPushPayloadKey];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = *(a1 + 32);
      v12 = [v9 mutableCopy];
      v13 = [v11 removeFamilyInvites:v12];

      [FAFollowupManager synchronizeFollowupWithPayload:v13 altDSID:v8];
    }
  }
}

void sub_10000C45C(uint64_t a1)
{
  v2 = [FANetworkService alloc];
  v3 = [*(a1 + 32) appleAccount];
  v4 = objc_alloc_init(FADeviceInfo);
  v5 = objc_alloc_init(FAURLConfiguration);
  v6 = +[AAURLSession sharedSession];
  v9 = [(FANetworkService *)v2 initWithAccount:v3 deviceInfo:v4 urlProvider:v5 urlSession:v6];

  v7 = [(FANetworkClient *)[FAFetchFollowupOperation alloc] initWithNetworkService:v9];
  v8 = [(FAFetchFollowupOperation *)v7 fetchFollowUps];
  [v8 onComplete:*(a1 + 40)];
}

void sub_10000C8EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _FALogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100078464(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Family heartbeat activity registration has been completed!", v5, 2u);
  }
}

void sub_10000CC20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![*(a1 + 32) _checkAndDeferActivityIfNeeded:*(a1 + 40)])
  {
    v7 = [v5 objectForKeyedSubscript:@"callbackInterval"];

    v8 = _FALogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Family heartbeat operation completed successfully", &v15, 2u);
      }

      v10 = [v5 objectForKeyedSubscript:@"callbackInterval"];
      [v10 longLongValue];

      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = *(v11 + 16);
LABEL_12:
        v12();
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (v9)
    {
      v13 = [v6 description];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to receive heartbeat callback interval with error: %@", &v15, 0xCu);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v12 = *(v14 + 16);
    goto LABEL_12;
  }

LABEL_13:
}

void sub_10000D200(id *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  v4 = [v3 account];
  [v6 aa_addBasicAuthorizationHeaderWithAccount:v4 preferUsingPassword:0];

  v5 = [a1[4] account];
  [v6 aa_addLoggedInAppleIDHeaderWithAccount:v5];

  [a1[5] signURLRequest:v6];
  [a1[6] signURLRequest:v6];
}

id sub_10000D640(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 ensureAccount];

  return v2;
}

id sub_10000D690(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 signedRequestWithEndpoint:@"updateMemberFlag"];

  return v2;
}

id sub_10000D6E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = *(a1 + 32);
  v6 = [v3 URL];

  v7 = [v5 urlByAddingParamsToURL:v6];
  [v4 setURL:v7];

  [v4 setHTTPMethod:@"POST"];
  [*(a1 + 32) _addHeadersToRequest:v4];
  [*(a1 + 32) _addBodyToRequest:v4];
  v8 = [v4 copy];

  return v8;
}

id sub_10000D7B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 networkService];
  v5 = [v4 plistWithRequest:v3];

  return v5;
}

void sub_10000E248(id a1)
{
  qword_1000B9930 = objc_alloc_init(FAPushHelperService);

  _objc_release_x1();
}

void sub_10000E5AC(uint64_t a1)
{
  v2 = objc_alloc_init(FAURLConfiguration);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000E63C;
  v3[3] = &unk_1000A6830;
  v3[4] = *(a1 + 32);
  [v2 fetchAAURLConfigurationWithCompletion:v3];
}

void sub_10000E63C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 apsEnvironment];
  if (![v7 length] || (objc_msgSend(v5, "apsEnvironment"), v8 = objc_claimAutoreleasedReturnValue(), v9 = +[APSConnection isValidEnvironment:](APSConnection, "isValidEnvironment:", v8), v8, v10 = v7, (v9 & 1) == 0))
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000785F4(v7, v6, v11);
    }

    v10 = APSEnvironmentProduction;
  }

  objc_storeStrong((*(a1 + 32) + 24), v10);
  v12 = [v5 apsProdEnvironment];

  v13 = +[PDSRegistrarService sharedInstance];
  v14 = [v5 usePDS];
  [v13 registerToPDS:v12 == 0 usePDS:v14 != 0];

  v15 = [[APSConnection alloc] initWithEnvironmentName:*(*(a1 + 32) + 24) namedDelegatePort:@"com.apple.aps.family" queue:&_dispatch_main_q];
  v16 = *(a1 + 32);
  v17 = *(v16 + 8);
  *(v16 + 8) = v15;

  [*(*(a1 + 32) + 8) setDelegate:?];
  v18 = [*(*(a1 + 32) + 16) allObjects];
  [*(*(a1 + 32) + 8) _setEnabledTopics:v18];
}

void sub_10000EE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000F1A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 networkService];
  v6 = FAURLEndpointAgePresetsDefinition;
  v11[0] = @"X-MMe-Country";
  v11[1] = @"X-Apple-AgePreset-Version";
  v7 = *(a1 + 40);
  v12[0] = v4;
  v12[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = [v5 signedRequestWithEndpoint:v6 method:@"GET" headers:v8 plistBody:0];

  return v9;
}

id sub_10000F2B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URL];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) networkService];
  v8 = [v7 serverRequest:v3 toFormat:2];

  return v8;
}

id sub_10000F340(uint64_t a1, void *a2)
{
  v3 = [a2 body];
  v4 = [v3 objectForKeyedSubscript:@"SettingsPresets"];

  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000786EC(v4, v5);
  }

  v6 = [*(a1 + 32) updateWithPresets:v4 requestURL:*(*(*(a1 + 56) + 8) + 40) storeFront:*(a1 + 40) version:*(a1 + 48)];
  v7 = [v4 fa_map:&stru_1000A68A0];

  return v7;
}

id sub_10000F40C(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[FASettingsPreset alloc] initWithDictionary:v2];

  return v3;
}

void sub_10000F634(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = a3;
    v6 = [[FAPresetsConfiguration alloc] initWithSTPresetsConfiguration:v9];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v6 = a3;
    v8(v7, 0, v6);
  }
}

void sub_10000F790(uint64_t a1)
{
  sub_10000F7E8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STPresetsClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000B9940 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100078764();
    sub_10000F7E8();
  }
}

void sub_10000F7E8()
{
  v1[0] = 0;
  if (!qword_1000B9948)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10000F8E4;
    v1[4] = &unk_1000A5EA8;
    v1[5] = v1;
    v2 = off_1000A6910;
    v3 = 0;
    qword_1000B9948 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000B9948)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10000F8E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000B9948 = result;
  return result;
}

FAPushMessage *sub_10000F958(uint64_t a1)
{
  sub_10000F7E8();
  result = objc_getClass("STUserID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000B9950 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10007878C();
    return [(FAPushMessage *)v3 initWithMessage:v4 accountStore:v5, v6];
  }

  return result;
}

void sub_10000FEA0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_1000102E0(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 ensureAccount];

  return v2;
}

id sub_100010338(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v46 = objc_opt_class();
    v47 = 2112;
    v48 = v3;
    v6 = v46;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Fetching photo for family member %@", buf, 0x16u);
  }

  v7 = [v3 contact];
  v8 = [v7 thumbnailImageData];

  if (v8)
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000788D8(v9);
    }

    v10 = [v7 thumbnailImageData];
    v11 = *(a1 + 32);
    v12 = v11[6];
    [v11 screenScale];
    v14 = [v10 _faCircularImageDataWithDiameter:v12 * v13];
    goto LABEL_17;
  }

  v15 = *(a1 + 32);
  if (v3)
  {
    v10 = [v15 fetchCachedPhotoForFamilyMember:v3];
    v16 = [v10 catch];
    v39 = (v16)[2](v16, &stru_1000A6930);
    v17 = [v39 then];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100010884;
    v43[3] = &unk_1000A6958;
    v43[4] = *(a1 + 32);
    v18 = v3;
    v44 = v18;
    v19 = (v17)[2](v17, v43);
    v20 = [v19 catchOnQueue];
    v21 = dispatch_get_global_queue(-32768, 0);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000108E0;
    v40[3] = &unk_1000A6980;
    v40[4] = *(a1 + 32);
    v41 = v7;
    v42 = v18;
    v14 = (v20)[2](v20, v21, v40);

LABEL_9:
    goto LABEL_17;
  }

  v22 = [v15 fullname];
  if (v22)
  {
    v23 = v22;
    v24 = [*(a1 + 32) useMonogramAsLastResort];

    if (v24)
    {
      v25 = [*(a1 + 32) fullname];
      v10 = [v25 componentsSeparatedByString:@" "];

      v16 = [v10 firstObject];
      if ([v10 count]< 2)
      {
        v26 = 0;
      }

      else
      {
        v26 = [v10 lastObject];
      }

      v14 = [*(a1 + 32) _monogramWithFirstName:v16 lastName:v26];
      v33 = _FALogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 32);
        v35 = objc_opt_class();
        v36 = *(a1 + 32);
        v37 = v35;
        v38 = [v36 fullname];
        *buf = 138412802;
        v46 = v35;
        v47 = 2048;
        v48 = v14;
        v49 = 2112;
        v50 = v38;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@: Monogram of caller-supplied full name returned %p for %@", buf, 0x20u);
      }

      goto LABEL_9;
    }
  }

  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 32);
    v28 = objc_opt_class();
    v29 = *(a1 + 32);
    v30 = v28;
    v31 = [v29 dsid];
    *buf = 138412546;
    v46 = v28;
    v47 = 2112;
    v48 = v31;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: DSID %@ not found in family, and no full name was supplied. No image will be generated", buf, 0x16u);
  }

  v14 = 0;
LABEL_17:

  return v14;
}

id sub_100010828(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007891C(v2, v3);
    }
  }

  return 0;
}

id sub_100010884(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) fetchRemotePhotoForFamilyMember:*(a1 + 40)];
  }

  v6 = v5;

  return v6;
}

id sub_1000108E0(id *a1)
{
  if (![a1[4] useMonogramAsLastResort])
  {
    v3 = 0;
    goto LABEL_10;
  }

  v2 = [a1[5] givenName];
  if ([v2 length])
  {
  }

  else
  {
    v4 = [a1[5] familyName];
    v5 = [v4 length];

    if (!v5)
    {
      v12 = a1[4];
      v13 = [a1[6] firstName];
      v14 = [a1[6] lastName];
      v3 = [v12 _monogramWithFirstName:v13 lastName:v14];

      goto LABEL_7;
    }
  }

  v3 = [a1[4] _monogramForContact:a1[5]];
LABEL_7:
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = objc_opt_class();
    v9 = a1[6];
    v15 = 138412802;
    v16 = v8;
    v17 = 2048;
    v18 = v3;
    v19 = 2112;
    v20 = v9;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Monogram of members first and last name returned %p for member %@", &v15, 0x20u);
  }

LABEL_10:

  return v3;
}

void sub_100010B14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[3] || v4[4])
  {
    v5 = [v4 fetchFamilyFactory];
    v6 = v5[2]();

    v7 = [*(a1 + 32) clientProcess];
    [v6 setClientProcess:v7];

    v8 = [*(a1 + 32) context];
    v9 = [v8 runFetchFamilyCircleOperation:v6];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010C98;
    v11[3] = &unk_1000A69D0;
    v11[4] = *(a1 + 32);
    v12 = v3;
    [v9 onComplete:v11];
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100078994(v10);
    }

    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_100010C98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = v7;
    if (!v5)
    {
      v5 = [v7 cachedFamilyCircle];
    }

    v6 = [v8 underlyingError];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v5 members];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v19 = v6;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = *(a1 + 32);
        if (*(v14 + 24))
        {
          v15 = [*(*(&v20 + 1) + 8 * i) dsid];
          v16 = [v15 isEqualToNumber:*(*(a1 + 32) + 24)];

          if (v16)
          {
            goto LABEL_18;
          }

          v14 = *(a1 + 32);
        }

        if (*(v14 + 32))
        {
          v17 = [v13 hashedDSID];
          v18 = [v17 isEqualToString:*(*(a1 + 32) + 32)];

          if (v18)
          {
LABEL_18:
            v10 = v13;
            goto LABEL_19;
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_19:
    v6 = v19;
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1000111B4(uint64_t a1)
{
  v2 = [AAFPromise alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001126C;
  v6[3] = &unk_1000A6120;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = [v2 initWithBlock:v6];

  return v4;
}

void sub_10001126C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ACAccountStore defaultStore];
  v5 = [v4 aa_primaryAppleAccount];
  v6 = +[FAServerBagFlag memberPhotoRequest404CacheDurationHours];
  v7 = 1;
  v8 = [v6 getCacheDurationforMemberPhoto404Response:1];

  if (v8)
  {
    v9 = *(*(a1 + 32) + 128);
    v10 = [*(a1 + 40) altDSID];
    v7 = [v9 shouldAllowRequestFor:v10 cacheDuration:v8];
  }

  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v8 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fetchRemotePhotoForFamilyMember: shouldCache404Responses: %d", buf, 8u);
  }

  if (v7)
  {
    v12 = v8 != 0;
    v13 = [[FAFamilyMemberPhotoRequest alloc] initWithAppleAccount:v5 grandSlamAccount:0 accountStore:v4];
    v14 = [*(a1 + 40) dsid];
    [v13 setFamilyMemberDSID:v14];

    v15 = [*(a1 + 32) context];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100011508;
    v18[3] = &unk_1000A6A48;
    v21 = v12;
    v16 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v16;
    v20 = v3;
    [v15 runAAFamilyMemberPhotoRequest:v13 withCompletionHandler:v18];
  }

  else
  {
    v17 = _FALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000789D8(a1, v17);
    }

    v13 = [NSError fa_familyErrorWithCode:-1009];
    (*(v3 + 2))(v3, 0, v13);
  }
}

void sub_100011508(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v6 statusCode] == 404 && *(a1 + 56) == 1)
  {
    v8 = *(*(a1 + 32) + 128);
    v9 = [*(a1 + 40) altDSID];
    [v8 save404ResponseFor:v9];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 photoData], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000116DC;
    block[3] = &unk_1000A6A20;
    v11 = v6;
    v12 = *(a1 + 32);
    v17 = v11;
    v18 = v12;
    v19 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100078A74(a1, v7, v13);
    }

    v14 = *(a1 + 48);
    if (v7)
    {
      (*(v14 + 16))(v14, 0, v7);
    }

    else
    {
      v15 = [NSError fa_familyErrorWithCode:-1009];
      (*(v14 + 16))(v14, 0, v15);
    }
  }
}

void sub_1000116DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v19 = size;
  v4 = v2;
  v5 = [v4 cropRect];
  [v5 getValue:&origin size:32];

  v6 = [v4 photoData];
  v7 = *(a1 + 40);
  v8 = v7[6];
  [v7 screenScale];
  v10 = [AAFImage circularImageData:v6 withDiameter:v8 * v9 crop:origin, v19];

  v11 = [*(a1 + 40) cache];
  v12 = [v11 updateWithData:v10];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011848;
  v15[3] = &unk_1000A69F8;
  v13 = *(a1 + 48);
  v16 = v10;
  v17 = v13;
  v14 = v10;
  [v12 onComplete:v15];
}

void sub_100011A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100011D70(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000B9960)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100011EB4;
    v4[4] = &unk_1000A5EA8;
    v4[5] = v4;
    v5 = off_1000A6A68;
    v6 = 0;
    qword_1000B9960 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000B9960)
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
  result = objc_getClass("UIScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100078B28();
  }

  qword_1000B9958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100011EB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000B9960 = result;
  return result;
}

void sub_100012088(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("FAFetchFamilyCircleOperation Cache Queue", v3);
  v2 = qword_1000B9968;
  qword_1000B9968 = v1;
}

void sub_100012200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012230(void *a1)
{
  v2 = a1[4];
  v10 = 0;
  v3 = [v2 _cacheURLWithError:&v10];
  v4 = v10;
  v5 = [v3 path];

  if (v5)
  {
    v6 = [NSData dataWithContentsOfFile:v5 options:0 error:a1[6]];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (v4 && a1[6])
  {
    v9 = v4;
    *a1[6] = v4;
  }
}

void sub_100012C78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSDate date];
  [v4 setObject:v5 forKeyedSubscript:@"timestamp"];

  v6 = [*(a1 + 32) _username];
  [v4 setObject:v6 forKeyedSubscript:@"username"];

  v7 = [*(a1 + 40) _serverResponse];
  [v4 setObject:v7 forKeyedSubscript:@"circle"];

  [v4 setObject:*(a1 + 48) forKeyedSubscript:@"serverTag"];
  v9 = 0;
  v8 = [NSPropertyListSerialization dataWithPropertyList:v4 format:100 options:0 error:&v9];
  v3[2](v3, v8, v9);
}

void sub_100012E38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = a2;
  v4 = [v2 _cacheURLWithError:&v6];
  v5 = v6;
  v3[2](v3, v4, v5);
}

id sub_100012F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013030;
  v8[3] = &unk_1000A65C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _onQueue:v8];

  return v6;
}

void *sub_100013030(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  v3 = [v2 stringByDeletingLastPathComponent];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v6 = objc_claimAutoreleasedReturnValue(), v11 = 0, [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v11], v7 = v11, v6, (v8 = v7) == 0))
  {
    v7 = 0;
    v8 = *(a1 + 32);
  }

  v9 = v8;

  return v8;
}

void sub_1000131F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cacheQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000132D8;
  v8[3] = &unk_1000A6AC8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  v11 = v3;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_1000132D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _cacheDataWithFamilyCircle:*(a1 + 40) serverTag:*(a1 + 48)];
  v3 = [*(a1 + 32) _createCacheFile];
  v8[0] = v2;
  v8[1] = v3;
  v4 = [NSArray arrayWithObjects:v8 count:2];
  v5 = [AAFPromise all:v4];
  v6 = [v5 then];
  v7 = (v6)[2](v6, &stru_1000A6AA0);
  [v7 onComplete:*(a1 + 56)];
}

id sub_1000133EC(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 objectAtIndexedSubscript:0];
  v4 = [(NSArray *)v2 objectAtIndexedSubscript:1];

  v8 = 0;
  [v3 writeToURL:v4 options:1073741825 error:&v8];
  v5 = v8;
  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[FAFamilyCircleCache updateWithFamilyCircle:serverTag:]_block_invoke_3";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: writeToURL completed error:%@", buf, 0x16u);
  }

  return v5;
}

void sub_1000135E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cacheQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000136AC;
  v7[3] = &unk_1000A6640;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1000136AC(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  objc_opt_class();
  objc_opt_isKindOfClass();
  (*(*(a1 + 40) + 16))();
}

id sub_100013808(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000138BC;
  v8[3] = &unk_1000A65C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _onQueue:v8];

  return v6;
}

id sub_1000138BC(uint64_t a1)
{
  v2 = 0;
  if ([*(a1 + 32) checkResourceIsReachableAndReturnError:0])
  {
    v3 = +[NSFileManager defaultManager];
    v4 = *(a1 + 32);
    v6 = 0;
    [v3 removeItemAtURL:v4 error:&v6];
    v2 = v6;
  }

  return v2;
}

void sub_100013960(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10001397C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100013D58(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 ensureAccount];

  return v2;
}

id sub_100013DA8(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 signedRequestWithEndpoint:@"updateFamilyMemberFlags"];

  return v2;
}

id sub_100013E00(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setHTTPMethod:@"POST"];
  [*(a1 + 32) _addHeadersToRequest:v3];
  [*(a1 + 32) _addBodyToRequest:v3];
  v4 = [v3 copy];

  return v4;
}

id sub_100013E74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 networkService];
  v5 = [v4 plistWithRequest:v3];

  return v5;
}

void *sub_100013EE0(uint64_t a1, void *a2)
{
  if (([a2 familyRefreshTriggered] & 1) == 0)
  {
    v3 = [*(a1 + 32) networkService];
    [FAFamilyCircleDaemonChangeHandler handleDidUpdateMemberFlagWithNetworkService:v3 completion:0];
  }

  return &__kCFBooleanTrue;
}

id sub_1000144F0(id a1, id a2)
{
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got value %@", &v5, 0xCu);
  }

  return v2;
}

id sub_100014B1C(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 ensureAccount];

  return v2;
}

id sub_100014B6C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:@"application/x-plist" forKey:@"Content-Type"];
  if ([*(a1 + 32) shouldForcePush])
  {
    [v2 setObject:@"true" forKey:@"X-Force-Push"];
  }

  v3 = [*(a1 + 32) networkService];
  v4 = [v3 signedRequestWithEndpoint:@"familyHeartbeat" method:@"POST" headers:v2 plistBody:*(a1 + 40)];

  return v4;
}

id sub_100014C2C(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [*(*(a1 + 32) + 16) signURLRequest:v3];
  [*(*(a1 + 32) + 24) signURLRequest:v3];
  v4 = [v3 copy];

  return v4;
}

id sub_100014CAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 networkService];
  v5 = [v3 copy];

  v6 = [v4 plistWithRequest:v5];

  return v6;
}

void sub_100014E20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

void sub_1000150F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001511C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[NSProcessInfo processInfo];
  v6 = [v5 processName];
  v7 = [WeakRetained _fetchFamilyCircleWithCachePolicy:1000 signedInAccountShouldBeApprover:0 clientProcess:v6 context:@"refresh_xpc_activity" promptUserToResolveAuthenticatonFailure:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015228;
  v9[3] = &unk_1000A6BD0;
  v10 = v3;
  v8 = v3;
  [v7 onComplete:v9];
}

void sub_10001523C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FAFamilyCircleCache alloc];
  v5 = [*(a1 + 32) _primaryAccount];
  v6 = [(FAFamilyCircleCache *)v4 initWithAccount:v5];

  v7 = [(FAFamilyCircleCache *)v6 load];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015328;
  v9[3] = &unk_1000A6C20;
  v10 = v3;
  v8 = v3;
  [v7 onComplete:v9];
}

void sub_1000156E4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"ClientProcess"];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) objectForKeyedSubscript:@"promptUserToResolveAuthenticatonFailure"];
  v8 = [v4 _fetchFamilyCircleWithCachePolicy:v2 signedInAccountShouldBeApprover:v3 clientProcess:v5 context:v6 promptUserToResolveAuthenticatonFailure:{objc_msgSend(v7, "BOOLValue")}];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000157F8;
  v9[3] = &unk_1000A6C70;
  v10 = *(a1 + 56);
  [v8 onComplete:v9];
}

void sub_1000157F8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v10;
    if (!v10)
    {
      v7 = [v6 cachedFamilyCircle];
    }

    v10 = v7;
    v5 = [v6 underlyingError];
  }

  v8 = *(a1 + 32);
  v9 = [v10 _serverResponse];
  (*(v8 + 16))(v8, v9, v10, v5);
}

void sub_1000159E0(id *a1)
{
  v2 = [FARemoveFamilyMemberOperation alloc];
  v3 = [a1[4] _networkService];
  v4 = [(FARemoveFamilyMemberOperation *)v2 initWithNetworkService:v3 dsidOfMemberToRemove:a1[5]];

  v5 = [(FARemoveFamilyMemberOperation *)v4 removeMember];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015AD8;
  v6[3] = &unk_1000A6CC0;
  v8 = a1[6];
  v7 = a1[5];
  [v5 onComplete:v6];
}

void sub_100015AD8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  (*(v5 + 16))(v5, [a2 BOOLValue], *(a1 + 32), v6);
}

void sub_100015C18(uint64_t a1)
{
  v2 = [FADeleteFamilyOperation alloc];
  v3 = [*(a1 + 32) _networkService];
  v4 = [(FADeleteFamilyOperation *)v2 initWithNetworkService:v3];

  v5 = [(FADeleteFamilyOperation *)v4 deleteFamily];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015CF8;
  v6[3] = &unk_1000A6CE8;
  v7 = *(a1 + 40);
  [v5 onComplete:v6];
}

void sub_100015CF8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

void sub_100015EB4(uint64_t a1)
{
  v2 = [FAFetchFamilyPhotoOperation alloc];
  v3 = [*(a1 + 32) _networkService];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = objc_alloc_init(FAFetchFamilyPhotoOperationContext);
  v9 = +[FARequestCoalescer sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001616C;
  v21[3] = &unk_1000A6D10;
  v21[4] = *(a1 + 32);
  v10 = [(FAFetchFamilyPhotoOperation *)v2 initWithNetworkService:v3 memberDSID:v4 memberHashedDSID:v5 size:v6 localFallback:v7 context:v8 requestCoalescer:v9 fetchFamilyFactory:v21];

  v11 = [*(a1 + 56) objectForKeyedSubscript:@"backgroundType"];
  -[FAFetchFamilyPhotoOperation setBackgroundType:](v10, "setBackgroundType:", [v11 integerValue]);

  v12 = [*(a1 + 56) objectForKeyedSubscript:@"monogramDiameter"];
  [v12 doubleValue];
  [(FAFetchFamilyPhotoOperation *)v10 setMonogramDiameter:?];

  v13 = [*(a1 + 56) objectForKeyedSubscript:@"emailAddress"];
  [(FAFetchFamilyPhotoOperation *)v10 setEmailAddress:v13];

  v14 = [*(a1 + 56) objectForKeyedSubscript:@"fullname"];
  [(FAFetchFamilyPhotoOperation *)v10 setFullname:v14];

  v15 = [*(a1 + 56) objectForKeyedSubscript:@"phoneNumber"];
  [(FAFetchFamilyPhotoOperation *)v10 setPhoneNumber:v15];

  v16 = [*(a1 + 56) objectForKeyedSubscript:@"ClientProcess"];
  [(FAFetchFamilyPhotoOperation *)v10 setClientProcess:v16];

  v17 = [*(a1 + 56) objectForKeyedSubscript:@"useMonogramAsLastResort"];
  -[FAFetchFamilyPhotoOperation setUseMonogramAsLastResort:](v10, "setUseMonogramAsLastResort:", [v17 BOOLValue]);

  v18 = [(FAFetchFamilyPhotoOperation *)v10 fetchPhoto];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001626C;
  v19[3] = &unk_1000A6D38;
  v20 = *(a1 + 64);
  [v18 onComplete:v19];
}

FAFetchFamilyCircleOperation *sub_10001616C(uint64_t a1)
{
  v2 = [FAFamilyCircleCache alloc];
  v3 = [*(a1 + 32) _primaryAccount];
  v4 = [(FAFamilyCircleCache *)v2 initWithAccount:v3];

  v5 = objc_alloc_init(FAMarqueeUpdateHandler);
  v6 = [FAFetchFamilyCircleOperation alloc];
  v7 = [*(a1 + 32) _networkService];
  v8 = +[FARequestCoalescer sharedInstance];
  v9 = [*(a1 + 32) familyRefreshActivityScheduler];
  v10 = [(FAFetchFamilyCircleOperation *)v6 initWithNetworkService:v7 cache:v4 marqueeCacheHanlder:v5 requestCoalescer:v8 familyRefreshActivityScheduler:v9];

  return v10;
}

void sub_100016388(uint64_t a1)
{
  v2 = [FARegisterPushTokenOperation alloc];
  v3 = [*(a1 + 32) _networkService];
  v4 = [(FARegisterPushTokenOperation *)v2 initWithNetworkService:v3 pushToken:*(a1 + 40)];

  v5 = [(FARegisterPushTokenOperation *)v4 registerToken];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001646C;
  v6[3] = &unk_1000A6CE8;
  v7 = *(a1 + 48);
  [v5 onComplete:v6];
}

uint64_t sub_10001646C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_100016550(uint64_t a1)
{
  v2 = [FAFamilyCircleCache alloc];
  v3 = [*(a1 + 32) _primaryAccount];
  v4 = [(FAFamilyCircleCache *)v2 initWithAccount:v3];

  v5 = [(FAFamilyCircleCache *)v4 invalidate];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016630;
  v6[3] = &unk_1000A6BD0;
  v7 = *(a1 + 40);
  [v5 onComplete:v6];
}

void sub_100016630(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[FamilyCircleServiceDelegate clearFamilyCircleCacheWithReplyBlock:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: delete cached family count", &v8, 0xCu);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:FAFamilySettingRowFamilyCountKey];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:FAFamilySettingRowPendingInvitesKey];

  (*(*(a1 + 32) + 16))();
}

void sub_100016818(uint64_t a1)
{
  v2 = [[FAFamilyPhotoCache alloc] initWithAltDSID:&stru_1000AA678];
  v3 = [(FAFamilyPhotoCache *)v2 invalidateFamilyPhotos];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000168DC;
  v4[3] = &unk_1000A6BD0;
  v5 = *(a1 + 32);
  [v3 onComplete:v4];
}

void sub_1000168DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[FamilyCircleServiceDelegate clearPhotoCacheWithReplyBlock:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: delete cached family photo.s", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100016BE4(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = *(a1 + 32);
  v4 = _FALogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      sub_100078D78();
    }

    v6 = [FAUpdateFamilyMemberFlagOperation alloc];
    v7 = [*(a1 + 40) _networkService];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100016E04;
    v16[3] = &unk_1000A6DB0;
    v17 = *(a1 + 32);
    v8 = [(FAUpdateFamilyMemberFlagOperation *)v6 initWithNetworkService:v7 accountSigner:v16 memberDSID:*(a1 + 48) flag:*(a1 + 56) enabled:*(a1 + 72)];

    v9 = v17;
  }

  else
  {
    if (v5)
    {
      sub_100078DF8();
    }

    v10 = [FAUpdateFamilyMemberFlagOperation alloc];
    v9 = [*(a1 + 40) _networkService];
    v11 = [*(a1 + 40) _grandSlamSignerWithAccountStore:v2];
    v12 = [*(a1 + 40) _familyGrandSlamSignerWithAccountStore:v2];
    v8 = [(FAUpdateFamilyMemberFlagOperation *)v10 initWithNetworkService:v9 grandSlamSigner:v11 familyGrandSlamSigner:v12 memberDSID:*(a1 + 48) flag:*(a1 + 56) enabled:*(a1 + 72)];
  }

  v13 = [(FAUpdateFamilyMemberFlagOperation *)v8 updateMemberFlag];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100016E78;
  v14[3] = &unk_1000A6CE8;
  v15 = *(a1 + 64);
  [v13 onComplete:v14];
}

void sub_100016E04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FARequestEphemeralSigner alloc] initWithEphemeralAuthResults:*(a1 + 32)];
  [v4 signURLRequest:v3];
}

void sub_100016FA0(uint64_t a1)
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [FAUpdateFamilyMemberFlagsOperation alloc];
  v4 = [*(a1 + 32) _networkService];
  v5 = [*(a1 + 32) _grandSlamSignerWithAccountStore:v2];
  v6 = [*(a1 + 32) _familyGrandSlamSignerWithAccountStore:v2];
  v7 = [(FAUpdateFamilyMemberFlagsOperation *)v3 initWithNetworkService:v4 grandSlamSigner:v5 familyGrandSlamSigner:v6 memberDSID:*(a1 + 40) flags:*(a1 + 48)];

  v8 = [(FAUpdateFamilyMemberFlagsOperation *)v7 updateMemberFlags];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000170DC;
  v9[3] = &unk_1000A6CE8;
  v10 = *(a1 + 56);
  [v8 onComplete:v9];
}

void sub_1000170DC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

void sub_1000173F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = a3;
  if (a4)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [FAEligibilityEvaluator alloc];
    v7 = [*(a1 + 32) queueProvider];
    v8 = [v7 requestQueueWithOptions:0];
    v9 = [v11 eligibilityRequirements];
    v10 = [(FAEligibilityEvaluator *)v6 initWithQueue:v8 requirements:v9];

    [(FAEligibilityEvaluator *)v10 fetchEligibilityForPropertyName:*(a1 + 40) bundleID:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void sub_1000175BC(uint64_t a1)
{
  v2 = [FAFetchFollowupOperation alloc];
  v3 = [*(a1 + 32) _networkService];
  v5 = [(FANetworkClient *)v2 initWithNetworkService:v3];

  v4 = [(FAFetchFollowupOperation *)v5 fetchFollowUps];
  [v4 onComplete:*(a1 + 40)];
}

void sub_1000176D0(id a1, AAURLConfiguration *a2, NSError *a3)
{
  v3 = a2;
  v4 = [(AAURLConfiguration *)v3 apsProdEnvironment];

  v6 = +[PDSRegistrarService sharedInstance];
  v5 = [(AAURLConfiguration *)v3 usePDS];

  [v6 registerToPDS:v4 == 0 usePDS:v5 != 0];
}

void sub_100017B90(uint64_t a1)
{
  v2 = _FALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100078F84();
  }

  v3 = objc_alloc_init(FADeviceInfo);
  v4 = [FANetworkService alloc];
  v5 = [*(a1 + 32) _primaryAccount];
  v6 = objc_opt_new();
  v7 = +[AAURLSession sharedSession];
  v8 = [(FANetworkService *)v4 initWithAccount:v5 deviceInfo:v3 urlProvider:v6 urlSession:v7];

  v9 = +[ACAccountStore defaultStore];
  v10 = [FAHeartbeatOperation alloc];
  v11 = [*(a1 + 32) _grandSlamSignerWithAccountStore:v9];
  v12 = [*(a1 + 32) _familyGrandSlamSignerWithAccountStore:v9];
  v13 = [(FAHeartbeatOperation *)v10 initWithNetworkService:v8 grandSlamSigner:v11 familyGrandSlamSigner:v12];

  [(FAHeartbeatOperation *)v13 setForcePush:1];
  v14 = [(FAHeartbeatOperation *)v13 fetchHeartbeatData];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100017D74;
  v15[3] = &unk_1000A6BD0;
  v16 = *(a1 + 40);
  [v14 onComplete:v15];
}

void sub_100017D74(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _FALogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v8)
    {
      sub_100078FC0();
    }
  }

  else if (v8)
  {
    sub_100078FFC(v5, v7);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100017F88(uint64_t a1)
{
  v2 = [FAFetchSettingsPresetsOperation alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100018060;
  v9 = &unk_1000A60D0;
  v3 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v3;
  v4 = [(FAFetchSettingsPresetsOperation *)v2 initWithFamilyCircleProvider:&v6 fetchFromCache:*(a1 + 80)];
  v5 = [(FAFetchSettingsPresetsOperation *)v4 presetsForMemberWithAltDSID:*(a1 + 48) age:0 storeFront:*(a1 + 56) version:*(a1 + 64), v6, v7, v8, v9, v10];
  [v5 onComplete:*(a1 + 72)];
}

id sub_100018060(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"ClientProcess"];
  v3 = [v1 _fetchFamilyCircleWithCachePolicy:0 signedInAccountShouldBeApprover:0 clientProcess:v2 context:0 promptUserToResolveAuthenticatonFailure:0];

  return v3;
}

void sub_100018230(uint64_t a1)
{
  v3 = [[FAFetchSettingsPresetsOperation alloc] initWithFamilyCircleProvider:&stru_1000A6ED0 fetchFromCache:*(a1 + 64)];
  v2 = [(FAFetchSettingsPresetsOperation *)v3 presetsForMemberWithAltDSID:0 age:*(a1 + 32) storeFront:*(a1 + 40) version:*(a1 + 48)];
  [v2 onComplete:*(a1 + 56)];
}

AAFPromise *__cdecl sub_1000182B0(id a1)
{
  v1 = [[AAFPromise alloc] initWithValue:0];

  return v1;
}

void sub_100018428(uint64_t a1)
{
  v2 = [FAUpdateFamilyInviteStatusOperation alloc];
  v3 = [*(a1 + 32) _networkService];
  v4 = [(FAUpdateFamilyInviteStatusOperation *)v2 initWithNetworkService:v3 inviteCode:*(a1 + 40) inviteStatus:*(a1 + 64) responseFormat:*(a1 + 72) additionalRequestParameters:*(a1 + 48)];

  v5 = [(FAUpdateFamilyInviteStatusOperation *)v4 updateInviteStatus];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018510;
  v6[3] = &unk_1000A6CE8;
  v7 = *(a1 + 56);
  [v5 onComplete:v6];
}

void sub_100018510(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

void sub_10001868C(uint64_t a1)
{
  v2 = [FACancelInvitationOperation alloc];
  v3 = [*(a1 + 32) _networkService];
  v4 = [(FACancelInvitationOperation *)v2 initWithNetworkService:v3 email:*(a1 + 40) familyID:*(a1 + 48)];

  v5 = [(FACancelInvitationOperation *)v4 cancelInvitation];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018770;
  v6[3] = &unk_1000A6BD0;
  v7 = *(a1 + 56);
  [v5 onComplete:v6];
}

void sub_1000188A4(uint64_t a1)
{
  v2 = [[FAScreenTimeSettingsCacheOperation alloc] initWithDSID:*(a1 + 32)];
  v3 = [(FAScreenTimeSettingsCacheOperation *)v2 cacheScreenTimeSettingsObject:*(a1 + 40)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018968;
  v4[3] = &unk_1000A6CE8;
  v5 = *(a1 + 48);
  [v3 onComplete:v4];
}

void sub_100018968(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

void sub_100018B5C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100018BE4;
  v2[3] = &unk_1000A6BD0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 resendChildTransferWithCompletionHandler:v2];
}

void sub_100018BE4(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a2;
    v8 = [a3 removingNonSecureCodingValues];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a2;
    v7(v6);
  }
}

void sub_100018E18(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100018EA0;
  v2[3] = &unk_1000A6F48;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 cancelChildTransferWithCompletionHandler:v2];
}

void sub_100018EA0(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a2;
    v8 = [a3 removingNonSecureCodingValues];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a2;
    v7(v6);
  }
}

void sub_100019060(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000190F0;
  v3[3] = &unk_1000A6F48;
  v4 = *(a1 + 48);
  [v1 fetchParentalControlBitsForAltDSID:v2 completionHandler:v3];
}

void sub_1000190F0(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a2;
    v8 = [a3 removingNonSecureCodingValues];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a2;
    v7(v6);
  }
}

void sub_1000192B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019358;
  v4[3] = &unk_1000A6F70;
  v5 = *(a1 + 48);
  [v1 setCommLimitsCollaborationSwitchForAltDSID:v2 enableCollaboration:v3 completionHandler:v4];
}

void sub_100019358(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 localizedDescription];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to update icloud Collaboration switch: %@", &v7, 0xCu);
    }
  }

  else if (v5)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully updated icloud Collaboration switch.", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000195A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019640;
  v4[3] = &unk_1000A6F70;
  v5 = *(a1 + 48);
  [v1 setCommLimitsMailAppSwitchForAltDSID:v2 enableMailApp:v3 completionHandler:v4];
}

void sub_100019640(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 localizedDescription];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to update Mail App switch: %@", &v7, 0xCu);
    }
  }

  else if (v5)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully updated Mail App switch.", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100019840(uint64_t a1)
{
  v2 = [_TtC13familycircled39FAFamilyChecklistRankingConfigOperation alloc];
  v3 = [*(a1 + 32) _networkService];
  v4 = [(FAFamilyChecklistRankingConfigOperation *)v2 initWithNetworkService:v3];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019910;
  v6[3] = &unk_1000A6D38;
  v5 = *(a1 + 48);
  v7 = *(a1 + 40);
  [(FAFamilyChecklistRankingConfigOperation *)v4 familyChecklistRankingConfigWith:v5 completionHandler:v6];
}

void sub_100019910(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v6 = [a3 removingNonSecureCodingValues];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

void sub_100019B2C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100019BB4;
  v2[3] = &unk_1000A6F48;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 buildInviteWithCompletionHandler:v2];
}

void sub_100019BB4(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a2;
    v8 = [a3 removingNonSecureCodingValues];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a2;
    v7(v6);
  }
}

void sub_100019D60(int8x16_t *a1)
{
  v2 = [[FAScreenTimeSettingsCacheOperation alloc] initWithDSID:a1[2].i64[0]];
  v3 = [(FAScreenTimeSettingsCacheOperation *)v2 loadScreenTimeSettingsObject];
  v4 = [v3 then];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019E64;
  v8[3] = &unk_1000A7010;
  v7 = a1[2];
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v6 = (v4)[2](v4, v8);
  [v6 onComplete:a1[3].i64[0]];
}

id sub_100019E64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _turnOnScreentimeForDSID:*(a1 + 40)];
  v5 = [v4 then];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019F68;
  v11[3] = &unk_1000A6FE8;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v3;
  v13 = v6;
  v7 = v5[2];
  v8 = v3;
  v9 = v7(v5, v11);

  return v9;
}

void sub_10001A0A4(uint64_t a1)
{
  v2 = [*(a1 + 32) _turnOnScreentimeForDSID:*(a1 + 40)];
  v3 = [v2 then];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001A198;
  v5[3] = &unk_1000A6FE8;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = (v3)[2](v3, v5);
  [v4 onComplete:*(a1 + 56)];
}

void sub_10001A264(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v4 = qword_1000B9978;
  v31 = qword_1000B9978;
  if (!qword_1000B9978)
  {
    *buf = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10001ABD4;
    v26 = &unk_1000A5EF8;
    v27 = &v28;
    sub_10001ABD4(buf);
    v4 = v29[3];
  }

  v5 = v4;
  _Block_object_dispose(&v28, 8);
  v6 = objc_alloc_init(v4);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v7 = qword_1000B9988;
  v31 = qword_1000B9988;
  if (!qword_1000B9988)
  {
    *buf = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10001AD9C;
    v26 = &unk_1000A5EF8;
    v27 = &v28;
    sub_10001AD9C(buf);
    v7 = v29[3];
  }

  v8 = v7;
  _Block_object_dispose(&v28, 8);
  v9 = [[v7 alloc] initWithDSID:*(a1 + 32)];
  v22 = 0;
  v10 = [v6 currentConfigurationForUser:v9 error:&v22];
  v11 = v22;
  if (!v10)
  {
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000791C4();
    }

    v14 = [NSNumber numberWithBool:0];
    v3[2](v3, v14, v11);
    goto LABEL_23;
  }

  if ([v10 screenTimeState] != 1)
  {
    v21 = v11;
    v14 = [v10 configurationWithUpdatedScreenTimeState:1 error:&v21];
    v15 = v21;

    if (v14)
    {
      v20 = v15;
      v16 = [v6 applyUpdatedConfiguration:v14 error:&v20];
      v11 = v20;

      if (v16)
      {
        v15 = 0;
        v17 = 1;
LABEL_22:
        v19 = [NSNumber numberWithBool:v17];
        v3[2](v3, v19, v15);

LABEL_23:
        goto LABEL_24;
      }

      v18 = _FALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100079090();
      }

      v15 = v11;
    }

    else
    {
      v18 = _FALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000790F8(v15, v10, v18);
      }
    }

    v17 = 0;
    v11 = v15;
    goto LABEL_22;
  }

  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "STSetupConfiguration Already enabled", buf, 2u);
  }

  v3[2](v3, &__kCFBooleanTrue, v11);
LABEL_24:
}

void sub_10001A600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) introductionModel];

  if (v4)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v5 = qword_1000B9990;
    v23 = qword_1000B9990;
    if (!qword_1000B9990)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10001ADF4;
      v19[3] = &unk_1000A5EF8;
      v19[4] = &v20;
      sub_10001ADF4(v19);
      v5 = v21[3];
    }

    v6 = v5;
    _Block_object_dispose(&v20, 8);
    v7 = objc_alloc_init(v5);
    v8 = [*(a1 + 32) introductionModel];
    v9 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001A8F4;
    v17[3] = &unk_1000A6F70;
    v18 = v3;
    [v7 applyIntroductionModel:v8 forDSID:v9 completionHandler:v17];
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007922C(a1, v10, v11, v12, v13, v14, v15, v16);
    }

    v7 = [NSError fa_familyErrorWithCode:-1014];
    (*(v3 + 2))(v3, &__kCFBooleanFalse, v7);
  }
}

void sub_10001A8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A8F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007929C();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Screen Time introduction model completed successfully", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_10001AADC(uint64_t a1)
{
  v3 = objc_alloc_init(FASettingProtoAccountRestrictionsOperation);
  v2 = objc_alloc_init(FAScreenTimeCoreSoftLinking);
  [(FASettingProtoAccountRestrictionsOperation *)v3 applyDefaultRestrictionsForProtoAccountWithScreenTimeCore:v2 completion:*(a1 + 32)];
}

void sub_10001ABD4(uint64_t a1)
{
  sub_10001AC2C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STSetupClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000B9978 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100079304();
    sub_10001AC2C();
  }
}

void sub_10001AC2C()
{
  v1[0] = 0;
  if (!qword_1000B9980)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10001AD28;
    v1[4] = &unk_1000A5EA8;
    v1[5] = v1;
    v2 = off_1000A7030;
    v3 = 0;
    qword_1000B9980 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1000B9980)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10001AD28(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000B9980 = result;
  return result;
}

Class sub_10001AD9C(uint64_t a1)
{
  sub_10001AC2C();
  result = objc_getClass("STUserID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000B9988 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10007878C();
    return sub_10001ADF4(v3);
  }

  return result;
}

void sub_10001ADF4(uint64_t a1)
{
  sub_10001AC2C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STManagementState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000B9990 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100077D40();
    sub_10001AE4C();
  }
}

void sub_10001AE64(id a1)
{
  qword_1000B9998 = objc_alloc_init(FARequestCoalescer);

  _objc_release_x1();
}

void sub_10001B034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) coalesceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B118;
  block[3] = &unk_1000A7098;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v11 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_10001B118(uint64_t a1)
{
  v2 = [*(a1 + 32) inFlightRequests];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3 && (*(a1 + 64) & 1) == 0)
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RequestCoalescer - Returning already in flight promise for key %@ promise: %@", buf, 0x16u);
    }

    v7 = v3;
  }

  else
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      if (*(a1 + 64))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *buf = 138412802;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RequestCoalescer - Executing block for key %@ force: %@ inFlightPromise: %@", buf, 0x20u);
    }

    v7 = (*(*(a1 + 48) + 16))();
    if (v7)
    {
      v8 = [*(a1 + 32) inFlightRequests];
      [v8 setObject:v7 forKey:*(a1 + 40)];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001B364;
      v13[3] = &unk_1000A7070;
      v9 = *(a1 + 40);
      v14 = *(a1 + 32);
      v15 = v9;
      v10 = [*(a1 + 32) coalesceQueue];
      [(__CFString *)v7 onComplete:v13 onQueue:v10];
    }
  }

  [(__CFString *)v7 onComplete:*(a1 + 56)];
}

void sub_10001B364(uint64_t a1)
{
  v2 = [*(a1 + 32) inFlightRequests];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10001B894(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("FAFamilyPhotoCache Queue", v3);
  v2 = qword_1000B99A8;
  qword_1000B99A8 = v1;
}

void sub_10001BA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BA24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001BA3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [v2 _cacheURLWithError:&v16];
  v4 = v16;
  v5 = [v3 path];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 attributesOfItemAtPath:v5 error:0];

    v8 = [v7 objectForKey:NSFileModificationDate];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v7 objectForKey:NSFileCreationDate];
    }

    v12 = v10;

    if (([*(a1 + 32) _isCacheDate:v12 pastDuration:*&qword_1000B7D60] & 1) == 0)
    {
      v13 = [NSData dataWithContentsOfFile:v5 options:0 error:*(a1 + 48)];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  else if (v4 && *(a1 + 48))
  {
    v11 = v4;
    **(a1 + 48) = v4;
  }
}

void sub_10001BC30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = a2;
  v4 = [v2 load:&v6];
  v5 = v6;
  v3[2](v3, v4, v5);
}

void sub_10001C068(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = a2;
  v4 = [v2 _cacheURLWithError:&v6];
  v5 = v6;
  v3[2](v3, v4, v5);
}

id sub_10001C180(id a1, NSURL *a2)
{
  v2 = a2;
  v3 = [(NSURL *)v2 path];
  v4 = [v3 stringByDeletingLastPathComponent];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSFileManager defaultManager];
    v12 = 0;
    [v8 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
    v7 = v12;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  v10 = v9;

  return v9;
}

void sub_10001C328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C3F4;
  block[3] = &unk_1000A6A20;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v6;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void sub_10001C3F4(id *a1)
{
  v2 = [a1[4] _createCacheFile];
  v3 = [v2 then];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C4D4;
  v7[3] = &unk_1000A7148;
  v4 = a1[5];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  v10 = a1[6];
  v6 = (v3)[2](v3, v7);
}

id sub_10001C4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    [v7 removeItemAtURL:v3 error:0];
  }

  v8 = *(a1 + 32);
  v14 = 0;
  [v8 writeToURL:v3 options:0x40000000 error:&v14];
  v9 = v14;
  v10 = _FALogSystem();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000794C8(a1, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) altDSID];
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated photo cache for member %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();

  return v9;
}

id sub_10001C768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v2 = [v1 _cacheDirectoryURLWithError:&v10];
  v3 = v10;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error finding cache photo directory %@", buf, 0xCu);
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
    if ([v2 checkResourceIsReachableAndReturnError:0])
    {
      v6 = _FALogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Photo cache cleared", buf, 2u);
      }

      v7 = +[NSFileManager defaultManager];
      v9 = 0;
      [v7 removeItemAtURL:v2 error:&v9];
      v5 = v9;
    }
  }

  return v5;
}

void sub_10001CB7C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("FASettingPresetsCache Queue", v3);
  v2 = qword_1000B99B8;
  qword_1000B99B8 = v1;
}

void sub_10001CD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001CD5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001CD74(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v12 = 0;
  v5 = [v2 _cacheURLWithStoreFront:v3 version:v4 error:&v12];
  v6 = v12;
  v7 = [v5 path];

  if (v7)
  {
    v8 = [NSData dataWithContentsOfFile:v7 options:0 error:a1[8]];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (v6 && a1[8])
  {
    v11 = v6;
    *a1[8] = v6;
  }
}

void sub_10001CF50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v15 = 0;
  v7 = [v4 loadWithStoreFront:v5 version:v6 error:&v15];
  v8 = v15;
  if (v8)
  {
    v9 = v8;
    v3[2](v3, 0, v8);
  }

  else
  {
    v14 = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v14];
    v9 = v14;
    v11 = [*(a1 + 56) absoluteString];

    if (v11)
    {
      v12 = [*(a1 + 56) absoluteString];
      v13 = [v10 objectForKeyedSubscript:v12];
    }

    else
    {
      v13 = 0;
    }

    (v3)[2](v3, v13, v9);
  }
}

void sub_10001D340(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = a2;
  v6 = [v2 _cacheURLWithStoreFront:v3 version:v4 error:&v8];
  v7 = v8;
  v5[2](v5, v6, v7);
}

id sub_10001D464(id a1, NSURL *a2)
{
  v2 = a2;
  v3 = [(NSURL *)v2 path];
  v4 = [v3 stringByDeletingLastPathComponent];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSFileManager defaultManager];
    v12 = 0;
    [v8 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
    v7 = v12;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  v10 = v9;

  return v9;
}

void sub_10001D67C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D790;
  block[3] = &unk_1000A7200;
  v11 = *(a1 + 32);
  v6 = *(&v11 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  v15 = *(a1 + 64);
  v16 = v3;
  v10 = v3;
  dispatch_async(v5, block);
}

void sub_10001D790(uint64_t a1)
{
  v2 = [*(a1 + 32) _createCacheFileWithStoreFront:*(a1 + 40) version:*(a1 + 48)];
  v3 = [v2 then];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D884;
  v5[3] = &unk_1000A7148;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v4 = (v3)[2](v3, v5);
}

id sub_10001D884(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    [v7 removeItemAtURL:v3 error:0];
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [*(a1 + 32) absoluteString];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) absoluteString];
    [v8 setObject:v10 forKeyedSubscript:v11];
  }

  v21 = 0;
  v12 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v21];
  v13 = v21;
  v20 = 0;
  [v12 writeToURL:v3 options:0x40000000 error:&v20];
  v14 = v20;
  v15 = _FALogSystem();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000795F0((a1 + 32), v16);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138412290;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated presets cache for url %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v18 = v14;

  return v14;
}

id sub_10001DB98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v2 = [v1 _cacheDirectoryURLWithError:&v10];
  v3 = v10;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error finding cache presets directory %@", buf, 0xCu);
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
    if ([v2 checkResourceIsReachableAndReturnError:0])
    {
      v6 = _FALogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "presets cache cleared", buf, 2u);
      }

      v7 = +[NSFileManager defaultManager];
      v9 = 0;
      [v7 removeItemAtURL:v2 error:&v9];
      v5 = v9;
    }
  }

  return v5;
}

void sub_10001DF24(uint64_t a1)
{
  v2 = [FAPushDetailRequest alloc];
  v3 = [*(a1 + 32) appleAccount];
  v4 = [*(a1 + 32) gsAccount];
  v5 = +[ACAccountStore defaultStore];
  v6 = [(FAPushDetailRequest *)v2 initWithAppleAccount:v3 grandSlamAccount:v4 accountStore:v5];

  v7 = [FANetworkService alloc];
  v8 = [*(a1 + 32) appleAccount];
  v9 = objc_alloc_init(FADeviceInfo);
  v10 = objc_alloc_init(FAURLConfiguration);
  v11 = +[AAURLSession sharedSession];
  v12 = [(FANetworkService *)v7 initWithAccount:v8 deviceInfo:v9 urlProvider:v10 urlSession:v11];

  v13 = [*(a1 + 32) payload];
  [(FAPushDetailRequest *)v6 setPushPayload:v13];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001E0F0;
  v15[3] = &unk_1000A72B8;
  v16 = *(a1 + 32);
  v17 = v12;
  v18 = *(a1 + 40);
  v14 = v12;
  [(FAPushDetailRequest *)v6 performRequestWithHandler:v15];
}

void sub_10001E0F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007966C(v9, v10);
    }
  }

  else if (v8)
  {
    v10 = v8;
    v11 = [*(a1 + 32) topic];
    [v10 setPushTopic:v11];

    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CacheUpdate:Push detail response: %@", buf, 0xCu);
    }

    if ([v10 isSuccess])
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) familyRefreshActivityScheduler];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001E3E8;
      v20[3] = &unk_1000A7250;
      v20[4] = *(a1 + 48);
      v21 = v10;
      v22 = *(a1 + 32);
      [FAFamilyCircleDaemonChangeHandler handleDidReceivePushEventWithNetworkService:v13 familyRefreshActivityScheduler:v14 completion:v20];
    }

    else
    {
      v16 = _FALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CacheUpdate: Handling no op operation %@", buf, 0xCu);
      }

      v17 = [v10 httpResponse];
      v18 = *(a1 + 40);
      v19 = [*(a1 + 48) familyRefreshActivityScheduler];
      [FAFamilyCircleDaemonChangeHandler handleURLResponse:v17 networkService:v18 familyRefreshActivityScheduler:v19 completion:&stru_1000A7290];
    }
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 description];
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Family push detail request (%@) retunred no response and no error.", buf, 0xCu);
    }
  }
}

void sub_10001E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _FALogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v6)
    {
      v12 = 0;
      v7 = "FAEventPushHandler received error while refreshing family triggered by push event";
      v8 = &v12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "FAEventPushHandler refreshed family triggered by push event.";
    v8 = buf;
    goto LABEL_6;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) payload];
  [v9 _deliverNotificationWithResponse:v10 payload:v11];
}

void sub_10001E4AC(id a1, FAFamilyCircle *a2, NSError *a3)
{
  v4 = _FALogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v5)
    {
      v8 = 0;
      v6 = "FAEventPushHandler received error while refreshing family triggered by push event";
      v7 = &v8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "FAEventPushHandler refreshed family triggered by push event.";
    v7 = buf;
    goto LABEL_6;
  }
}

void sub_10001EDAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 8);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10001EE64;
  v12 = &unk_1000A7358;
  v13 = v4;
  v14 = v3;
  v7 = v3;
  v8 = [v6 dataTaskWithRequest:v5 completion:&v9];
  [v8 resume];
}

void sub_10001EE64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 familyRefreshActivityScheduler];
  v12 = [FAFamilyCircleDaemonChangeHandler handleURLResponse:v9 networkService:v7 familyRefreshActivityScheduler:v11 completion:0];

  v13 = *(a1 + 40);
  v14 = [[FAHTTPResponse alloc] initWithHTTPResponse:v9 body:v10 familyRefreshTriggered:v12];

  (*(v13 + 16))(v13, v14, v8);
}

id sub_10001F020(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) plistWithResponse:v3];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F114;
  v10[3] = &unk_1000A5ED0;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_10001F114(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FAHTTPResponse alloc];
  v5 = [*(a1 + 32) HTTPResponse];
  v6 = [v4 initWithHTTPResponse:v5 body:v3];

  return v6;
}

id sub_10001F268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _convertServerResponse:v3 toFormat:*(a1 + 40)];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F35C;
  v10[3] = &unk_1000A5ED0;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_10001F35C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FAHTTPResponse alloc];
  v5 = [*(a1 + 32) HTTPResponse];
  v6 = [v4 initWithHTTPResponse:v5 body:v3];

  return v6;
}

id sub_10001F974(uint64_t a1)
{
  v2 = [*(a1 + 32) urlProvider];
  v3 = [v2 URLForEndpoint:*(a1 + 40)];

  return v3;
}

id sub_10001FF94(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [*(a1 + 32) signURLRequest:v3];
  [*(a1 + 40) signURLRequest:v3];
  v4 = [*(a1 + 48) serverRequest:v3 toFormat:*(a1 + 56)];

  return v4;
}

id sub_100020284(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [[FARequestConfigurator alloc] initWithAccount:*(*(a1 + 32) + 16)];
  [v4 addFresnoPayloadToRequest:v3 additionalPayload:0];
  v5 = [*(a1 + 32) plistWithRequest:v3];

  return v5;
}

id sub_1000205B8(id *a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [a1[4] signURLRequest:v3];
  [a1[5] signURLRequest:v3];
  v4 = [a1[6] serverRequest:v3 toFormat:1];

  return v4;
}

void sub_1000217E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000798AC(v6, v7);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

id sub_100021BD8(uint64_t a1)
{
  v1 = [*(a1 + 32) networkService];
  v2 = [v1 ensureAccount];

  return v2;
}

id sub_100021C28(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) pushTokenString];
  [v2 setObject:v3 forKeyedSubscript:@"token"];

  [v2 setObject:&off_1000AB288 forKeyedSubscript:@"topics"];
  v4 = [*(a1 + 32) networkService];
  v5 = [v4 signedRequestWithEndpoint:@"register_token" method:@"POST" headers:&off_1000AB2A0 plistBody:v2];

  return v5;
}

id sub_100021CF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 networkService];
  v5 = [v3 copy];

  v6 = [v4 plistWithRequest:v5];

  return v6;
}

uint64_t variable initialization expression of RateLimiter.queue()
{
  v0 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022ECC();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_100002B58(&unk_1000B8A30, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100022F18(&unk_1000B7F60, &qword_10008BF10);
  sub_1000027EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100022ECC()
{
  result = qword_1000B7F50;
  if (!qword_1000B7F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7F50);
  }

  return result;
}

uint64_t sub_100022F18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100022F60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100022FD0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return a2();
}

uint64_t sub_100023018(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100023090(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100023110@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100023154(uint64_t a1)
{
  v2 = sub_100002B58(&qword_1000B8030, type metadata accessor for AgeRangeError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000231C0(uint64_t a1)
{
  v2 = sub_100002B58(&qword_1000B8030, type metadata accessor for AgeRangeError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100023230(uint64_t a1)
{
  v2 = sub_100002B58(&qword_1000B8068, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000232AC(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100023300(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100023358@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

_DWORD *sub_100023380@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000233C0(uint64_t a1)
{
  v2 = sub_100002B58(&qword_1000B8068, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10002342C(uint64_t a1)
{
  v2 = sub_100002B58(&qword_1000B8068, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100023498(void *a1, uint64_t a2)
{
  v4 = sub_100002B58(&qword_1000B8068, type metadata accessor for AgeRangeError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10002354C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B58(&qword_1000B8068, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000235C8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100023628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100023670@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10002369C()
{
  sub_100002B58(&qword_1000B8070, type metadata accessor for AAURLEndpoint);
  sub_100002B58(&qword_1000B8078, type metadata accessor for AAURLEndpoint);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100023758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B58(&qword_1000B8068, type metadata accessor for AgeRangeError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000237DC()
{
  v2 = *v0;
  sub_100002B58(&qword_1000B8080, type metadata accessor for ValidationLevel);
  sub_100002B58(&qword_1000B8088, type metadata accessor for ValidationLevel);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100023898()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000238D4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100023928()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000239D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void *sub_100023A60(unint64_t a1)
{
  v2 = sub_1000242D4(_swiftEmptyArrayStorage, &qword_1000B8120, &qword_10008E490);
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_30:

    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v34 = v3;
    while (1)
    {
      if (v5)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 bundleID];
      if (!v8)
      {
        goto LABEL_6;
      }

      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (*(v2 + 16))
      {
        sub_100037A08(v10, v12);
        if (v13)
        {
          break;
        }
      }

      v14 = a1;
      a1 = v5;
      v15 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v2;
      v17 = sub_100037A08(v10, v12);
      v19 = *(v2 + 16);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        if (!v3)
        {
          goto LABEL_30;
        }

        goto LABEL_3;
      }

      v23 = v18;
      if (*(v2 + 24) >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v17;
          sub_100076EA0();
          v17 = v32;
        }
      }

      else
      {
        sub_100075A68(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_100037A08(v10, v12);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_32;
        }
      }

      v5 = a1;
      v2 = v35;
      a1 = v14;
      if (v23)
      {
        v25 = v35[7];
        v26 = *(v25 + 8 * v17);
        *(v25 + 8 * v17) = v15;

        v3 = v34;
      }

      else
      {
        v35[(v17 >> 6) + 8] |= 1 << v17;
        v27 = (v35[6] + 16 * v17);
        *v27 = v10;
        v27[1] = v12;
        *(v35[7] + 8 * v17) = v15;
        v28 = v35[2];
        v21 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        v3 = v34;
        if (v21)
        {
          goto LABEL_28;
        }

        v35[2] = v29;
      }

      v30 = v15;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_7:
      if (v3 == ++v4)
      {
        goto LABEL_30;
      }
    }

LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100023D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&qword_1000B8090, &unk_10008C570);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100024C08(v4, &v13, &qword_1000B8098, &unk_10008C6B0);
      v5 = v13;
      v6 = v14;
      result = sub_100037A08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000249A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100023E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&qword_1000B8148, &qword_10008C5D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100024C08(v4, &v16, &qword_1000B8150, &qword_10008C5D8);
      v5 = v16;
      v6 = v17;
      result = sub_100037A08(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100023FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&unk_1000B8650, &unk_10008C5C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100024C08(v4, v13, &qword_1000B8140, &unk_10008CA00);
      result = sub_100037BCC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000249A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000240EC(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B8128, &unk_10008C5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100022F18(&unk_1000B8130, &unk_10008E480);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_100024C08(v11, v7, &qword_1000B8128, &unk_10008C5B0);
      v13 = *v7;
      v14 = v7[1];
      result = sub_100037A08(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for ClientRecord();
      result = sub_100024BA4(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000242D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100022F18(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100037A08(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000243D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&qword_1000B8118, &unk_10008C5A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100037A08(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000248C4()
{
  result = qword_1000B8058;
  if (!qword_1000B8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8058);
  }

  return result;
}

_OWORD *sub_1000249A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000249B8(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B8108, &qword_10008C588);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100022F18(&qword_1000B8110, &unk_10008C590);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_100024C08(v11, v7, &qword_1000B8108, &qword_10008C588);
      v13 = *v7;
      v14 = v7[1];
      result = sub_100037A08(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Date();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100024BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024C08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100022F18(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100024C80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100024CA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_100024CF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100024D60(uint64_t result)
{
  if (result)
  {
    sub_100022F18(&qword_1000B8230, &qword_10008D830);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10008C640;
    swift_getErrorValue();
    swift_errorRetain();
    v2 = Error.localizedDescription.getter();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 64) = sub_100024F28();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    v5 = String.init(format:_:)();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      v12 = sub_1000373D4(v5, v7, &v13);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
      sub_100024F7C(v11);
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_100024F28()
{
  result = qword_1000B8238;
  if (!qword_1000B8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8238);
  }

  return result;
}

uint64_t sub_100024F7C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

NSString sub_100024FC8()
{
  result = String._bridgeToObjectiveC()();
  qword_1000B8240 = result;
  return result;
}

uint64_t sub_1000250A8()
{
  v1[46] = v0;
  v2 = type metadata accessor for Logger();
  v1[47] = v2;
  v3 = *(v2 - 8);
  v1[48] = v3;
  v4 = *(v3 + 64) + 15;
  v1[49] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[50] = v5;
  v6 = *(v5 - 8);
  v1[51] = v6;
  v7 = *(v6 + 64) + 15;
  v1[52] = swift_task_alloc();
  v8 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();

  return _swift_task_switch(sub_100025214, 0, 0);
}

uint64_t sub_100025214()
{
  v1 = [objc_allocWithZone(FAURLConfiguration) init];
  v0[56] = v1;
  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_10002534C;
  v2 = swift_continuation_init();
  v0[35] = sub_100022F18(&qword_1000B8298, &unk_10008C7C0);
  v0[28] = _NSConcreteStackBlock;
  v0[29] = 1107296256;
  v0[30] = sub_1000277BC;
  v0[31] = &unk_1000A78E8;
  v0[32] = v2;
  [v1 fetchAAURLConfigurationWithCompletion:v0 + 28];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002534C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  if (v2)
  {
    v3 = sub_100025AFC;
  }

  else
  {
    v3 = sub_10002545C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002545C()
{
  v1 = v0[56];
  v2 = v0[44];
  v0[58] = v2;

  if (qword_1000B7EF0 != -1)
  {
    swift_once();
  }

  v3 = [v2 urlForEndpoint:qword_1000B8240];
  if (v3)
  {
    v4 = v0[54];
    v5 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[54];
  v8 = v0[55];
  v9 = v0[50];
  v10 = v0[51];
  (*(v10 + 56))(v7, v6, 1, v9);
  sub_1000261DC(v7, v8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    sub_10002624C(v0[55], &qword_1000B8290, &unk_10008C690);
  }

  else
  {
    v13 = v0[50];
    v12 = v0[51];
    v14 = v0[55];
    URL.absoluteString.getter();
    (*(v12 + 8))(v14, v13);
  }

  v15 = v0[53];
  v16 = v0[50];
  v17 = v0[46];
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C640;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100087A60;
  v19 = *(v17 + OBJC_IVAR___FABuildInviteOperation_inviteRecipients);
  *(inited + 72) = sub_100022F18(&qword_1000B82A8, &qword_10008C6A8);
  *(inited + 48) = v19;

  sub_100023D48(inited);
  swift_setDeallocating();
  sub_10002624C(inited + 32, &qword_1000B8098, &unk_10008C6B0);
  v20 = *(v17 + OBJC_IVAR___FABuildInviteOperation_networkService);
  URL.init(string:)();
  if (v11(v15, 1, v16) == 1)
  {
    sub_10002624C(v0[53], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v23 = v0[52];
    v22 = v0[53];
    v24 = v0[50];
    v25 = v0[51];
    v26 = v0[46];

    (*(v25 + 32))(v23, v22, v24);
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    (*(v25 + 8))(v23, v24);
    v30 = *(v26 + OBJC_IVAR___FABuildInviteOperation_aaGrandSlamSigner);
    v31 = *(v26 + OBJC_IVAR___FABuildInviteOperation_familyGrandSlamSigner);
    v32 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = [v20 standardRequestWithURL:v29 grandSlamSigner:v30 familyGrandSlamSigner:v31 method:v32 body:isa requestFormat:2 responseFormat:2];
    v0[59] = v34;

    v0[10] = v0;
    v0[15] = v0 + 45;
    v0[11] = sub_10002593C;
    v35 = swift_continuation_init();
    v0[43] = sub_100022F18(&qword_1000B82B0, &unk_10008C880);
    v0[36] = _NSConcreteStackBlock;
    v0[37] = 1107296256;
    v0[38] = sub_1000277BC;
    v0[39] = &unk_1000A7910;
    v0[40] = v35;
    [v34 onComplete:?];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_10002593C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 480) = v2;
  if (v2)
  {
    v3 = sub_100025BB0;
  }

  else
  {
    v3 = sub_100025A4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100025A4C()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 360);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 392);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_100025AFC()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[54];
  v4 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[49];
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[57];

  return v8();
}

uint64_t sub_100025BB0()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  swift_willThrow();

  static FamilyLogger.common.getter();
  swift_errorRetain();
  sub_100024D60(v1);

  (*(v5 + 8))(v4, v6);
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];
  v11 = v0[49];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_100025E44(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100025EEC;

  return sub_1000250A8();
}

uint64_t sub_100025EEC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

id sub_1000260BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FABuildInviteOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100026180(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000261DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002624C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100022F18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000262AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026358;

  return sub_100025E44(v2, v3);
}

uint64_t sub_100026358()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002644C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100026620;

  return sub_100071E18(v2, v3, v5);
}

uint64_t sub_10002650C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002654C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100026620;

  return sub_100071F00(a1, v4, v5, v7);
}

char *sub_100026624(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___FAAgeRangeDaemonListener_listener;
  *&v2[OBJC_IVAR___FAAgeRangeDaemonListener_listener] = 0;
  v4 = &v2[OBJC_IVAR___FAAgeRangeDaemonListener_coreDataStackFactory];
  *v4 = a1;
  *(v4 + 1) = a2;
  v5 = objc_allocWithZone(NSXPCListener);

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithMachServiceName:v6];

  v8 = *&v2[v3];
  *&v2[v3] = v7;

  v15.receiver = v2;
  v15.super_class = type metadata accessor for AgeRangeDaemonListener();
  v9 = objc_msgSendSuper2(&v15, "init");
  v10 = OBJC_IVAR___FAAgeRangeDaemonListener_listener;
  v11 = *&v9[OBJC_IVAR___FAAgeRangeDaemonListener_listener];
  if (v11)
  {
    [v11 setDelegate:v9];
    v12 = *&v9[v10];
    if (v12)
    {
      v13 = v12;
      [v13 resume];
    }
  }

  return v9;
}

void *sub_100026754@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() sharedInstance];
    result = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for PersonalInformationController();
      result = swift_allocObject();
      result[2] = v3;
      result[3] = v4;
      result[4] = v5;
      a1[3] = v6;
      a1[4] = &off_1000A7ED0;
      *a1 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100026848(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000268AC(uint64_t (*a1)(void), const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v9 = Logger.logObject.getter();
  v10 = a1();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a2, v11, 2u);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100026A9C()
{
  if (qword_1000B7F48 != -1)
  {
    swift_once();
  }

  v1 = off_1000B9370;

  os_unfair_lock_lock(v1 + 6);
  if (*(v1 + 2))
  {
    v2 = *(v1 + 2);
  }

  else
  {
    v2 = type metadata accessor for CoreDataStack();
    v3 = sub_1000634A4(0xD000000000000013, 0x8000000100087CB0, 0xD00000000000001ELL, 0x8000000100087CD0, 1);
    if (v0)
    {
      goto LABEL_7;
    }

    v2 = v3;
    v5 = *(v1 + 2);

    *(v1 + 2) = v2;
  }

LABEL_7:
  os_unfair_lock_unlock(v1 + 6);

  return v2;
}

id FamilySettingsDaemonListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AgeRangeDaemonListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeDaemonListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100026D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PersonalInformationController();
  v24[3] = v10;
  v24[4] = &off_1000A7ED0;
  v24[0] = a2;
  type metadata accessor for AgeRangeDaemonService();
  v11 = swift_allocObject();
  v12 = sub_10002730C(v24, v10);
  v13 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v12, v12);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v23[3] = v10;
  v23[4] = &off_1000A7ED0;
  v23[0] = v17;
  v11[12] = 0x40F5180000000000;
  v11[13] = 0;
  v11[2] = a1;
  sub_10002735C(v23, (v11 + 6));
  v11[4] = a4;
  v11[5] = a5;
  v11[11] = a3;
  v18 = objc_allocWithZone(FAFamilyNotifier);
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 initWithIdentifier:v19 machServiceName:v20];

  sub_100024F7C(v23);
  v11[3] = v21;
  sub_100024F7C(v24);
  return v11;
}

uint64_t sub_100026EFC(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  aBlock = v28;
  v24 = v29;
  if (!*(&v29 + 1))
  {
    sub_1000272A4(&aBlock);
LABEL_9:
    v20 = 0;
    v21 = &selRef_invalidate;
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
    goto LABEL_9;
  }

  v5 = [objc_opt_self() interfaceWithProtocol:{&OBJC_PROTOCOL___FAAgeRangeDaemonProtocol, aBlock, v24}];
  [a1 setExportedInterface:v5];

  v6 = *(v1 + OBJC_IVAR___FAAgeRangeDaemonListener_coreDataStackFactory);
  v7 = *(v1 + OBJC_IVAR___FAAgeRangeDaemonListener_coreDataStackFactory + 8);

  sub_100026754(&aBlock);
  v8 = [objc_allocWithZone(type metadata accessor for FAParentalControlsOperation()) init];
  v9 = *(&v24 + 1);
  v10 = sub_10002730C(&aBlock, *(&v24 + 1));
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v10, v10);
  v13 = (&aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = a1;
  v17 = sub_100026D24(v16, v15, v8, v6, v7);
  sub_100024F7C(&aBlock);
  [v16 setExportedObject:v17];

  v25 = sub_100026828;
  v26 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v24 = sub_100026848;
  *(&v24 + 1) = &unk_1000A79B0;
  v18 = _Block_copy(&aBlock);
  [v16 setInterruptionHandler:v18];
  _Block_release(v18);
  v25 = sub_10002688C;
  v26 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v24 = sub_100026848;
  *(&v24 + 1) = &unk_1000A79D8;
  v19 = _Block_copy(&aBlock);
  [v16 setInvalidationHandler:v19];
  _Block_release(v19);
  v20 = 1;
  v21 = &selRef_resume;
LABEL_10:
  [a1 *v21];
  return v20;
}

uint64_t sub_1000272A4(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B82F8, &qword_10008CEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002730C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10002735C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000273C8()
{
  v0 = type metadata accessor for Logger();
  sub_100027758(v0, qword_1000B8360);
  sub_100027720(v0, qword_1000B8360);
  return Logger.init(subsystem:category:)();
}

id AgeRangeDaemonAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeDaemonAnalytics();
  return objc_msgSendSuper2(&v2, "init");
}

id AgeRangeDaemonAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeDaemonAnalytics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100027590(unsigned __int8 a1, const char *a2)
{
  if (qword_1000B7F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v4 = sub_100023E78(&_swiftEmptyArrayStorage);
  sub_10003B2AC(a1, v4);

  if (qword_1000B7EF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100027720(v5, qword_1000B8360);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
  }
}

uint64_t sub_100027720(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100027758(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000277BC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000297A8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

NSString sub_100027894()
{
  result = String._bridgeToObjectiveC()();
  qword_1000B83A0 = result;
  return result;
}

NSString sub_1000278CC()
{
  result = String._bridgeToObjectiveC()();
  qword_1000B83A8 = result;
  return result;
}

uint64_t sub_1000279BC()
{
  v1[52] = v0;
  v2 = type metadata accessor for Logger();
  v1[53] = v2;
  v3 = *(v2 - 8);
  v1[54] = v3;
  v4 = *(v3 + 64) + 15;
  v1[55] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[56] = v5;
  v6 = *(v5 - 8);
  v1[57] = v6;
  v7 = *(v6 + 64) + 15;
  v1[58] = swift_task_alloc();
  v8 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();

  return _swift_task_switch(sub_100027B28, 0, 0);
}

uint64_t sub_100027B28()
{
  v1 = [objc_allocWithZone(FAURLConfiguration) init];
  v0[62] = v1;
  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_100027C60;
  v2 = swift_continuation_init();
  v0[41] = sub_100022F18(&qword_1000B8298, &unk_10008C7C0);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_1000277BC;
  v0[37] = &unk_1000A7A50;
  v0[38] = v2;
  [v1 fetchAAURLConfigurationWithCompletion:v0 + 34];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100027C60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_100028458;
  }

  else
  {
    v3 = sub_100027D70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027D70()
{
  v1 = v0[62];
  v2 = v0[50];
  v0[64] = v2;

  if (qword_1000B7F00 != -1)
  {
    swift_once();
  }

  v3 = [v2 urlForEndpoint:qword_1000B83A0];
  if (v3)
  {
    v4 = v0[60];
    v5 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[60];
  v8 = v0[61];
  v9 = v0[56];
  v10 = v0[57];
  (*(v10 + 56))(v7, v6, 1, v9);
  sub_1000261DC(v7, v8);
  v11 = *(v10 + 48);
  v12 = v11(v8, 1, v9);
  v13 = v0[61];
  if (v12 == 1)
  {
    sub_10002624C(v0[61], &qword_1000B8290, &unk_10008C690);
  }

  else
  {
    v14 = v0[56];
    v15 = v0[57];
    v16 = v0[61];
    URL.absoluteString.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = v0[59];
  v18 = v0[56];
  v19 = v0[52];
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C760;
  *(inited + 32) = 0x6449656C707061;
  *(inited + 40) = 0xE700000000000000;
  v21 = *(v19 + OBJC_IVAR___FAResendChildTransferRequestOperation_email + 8);
  *(inited + 48) = *(v19 + OBJC_IVAR___FAResendChildTransferRequestOperation_email);
  *(inited + 56) = v21;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x646E657365527369;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;

  sub_100023D48(inited);
  swift_setDeallocating();
  sub_100022F18(&qword_1000B8098, &unk_10008C6B0);
  swift_arrayDestroy();
  v22 = *(v19 + OBJC_IVAR___FAResendChildTransferRequestOperation_networkService);
  URL.init(string:)();
  if (v11(v17, 1, v18) == 1)
  {
    sub_10002624C(v0[59], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v25 = v0[58];
    v24 = v0[59];
    v27 = v0[56];
    v26 = v0[57];
    v28 = v0[52];

    (*(v26 + 32))(v25, v24, v27);
    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    (*(v26 + 8))(v25, v27);
    v32 = *(v28 + OBJC_IVAR___FAResendChildTransferRequestOperation_familyGrandSlamSigner);
    v33 = *(v28 + OBJC_IVAR___FAResendChildTransferRequestOperation_aaGrandSlamSigner);
    v34 = v32;
    v35 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = [v22 standardRequestWithURL:v31 grandSlamSigner:v33 familyGrandSlamSigner:v34 method:v35 body:isa requestFormat:2 responseFormat:2];
    v0[65] = v37;

    v0[10] = v0;
    v0[15] = v0 + 51;
    v0[11] = sub_100028294;
    v38 = swift_continuation_init();
    v0[49] = sub_100022F18(&qword_1000B82B0, &unk_10008C880);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_1000277BC;
    v0[45] = &unk_1000A7A78;
    v0[46] = v38;
    [v37 onComplete:v0 + 42];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_100028294()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = sub_10002850C;
  }

  else
  {
    v3 = sub_1000283A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000283A4()
{
  v1 = *(v0 + 520);

  v2 = *(v0 + 408);
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v7 = *(v0 + 440);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_100028458()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[60];
  v4 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[55];
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[63];

  return v8();
}

uint64_t sub_10002850C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];
  swift_willThrow();

  static FamilyLogger.common.getter();
  swift_errorRetain();
  sub_100024D60(v1);

  (*(v5 + 8))(v4, v6);
  v8 = v0[60];
  v7 = v0[61];
  v10 = v0[58];
  v9 = v0[59];
  v11 = v0[55];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1000287A4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10002999C;

  return sub_1000279BC();
}

uint64_t sub_10002884C()
{
  v1[46] = v0;
  v2 = type metadata accessor for Logger();
  v1[47] = v2;
  v3 = *(v2 - 8);
  v1[48] = v3;
  v4 = *(v3 + 64) + 15;
  v1[49] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[50] = v5;
  v6 = *(v5 - 8);
  v1[51] = v6;
  v7 = *(v6 + 64) + 15;
  v1[52] = swift_task_alloc();
  v8 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();

  return _swift_task_switch(sub_1000289B8, 0, 0);
}

uint64_t sub_1000289B8()
{
  v1 = v0[46];
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C640;
  *(inited + 32) = 0x6449656C707061;
  *(inited + 40) = 0xE700000000000000;
  v4 = *(v1 + OBJC_IVAR___FAResendChildTransferRequestOperation_email);
  v3 = *(v1 + OBJC_IVAR___FAResendChildTransferRequestOperation_email + 8);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v0[56] = sub_100023D48(inited);
  swift_setDeallocating();
  sub_10002624C(inited + 32, &qword_1000B8098, &unk_10008C6B0);
  v5 = [objc_allocWithZone(FAURLConfiguration) init];
  v0[57] = v5;
  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_100028B98;
  v6 = swift_continuation_init();
  v0[35] = sub_100022F18(&qword_1000B8298, &unk_10008C7C0);
  v0[28] = _NSConcreteStackBlock;
  v0[29] = 1107296256;
  v0[30] = sub_1000277BC;
  v0[31] = &unk_1000A7A00;
  v0[32] = v6;
  [v5 fetchAAURLConfigurationWithCompletion:v0 + 28];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100028B98()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 464) = v3;
  if (v3)
  {
    v4 = *(v1 + 448);

    v5 = sub_1000292C0;
  }

  else
  {
    v5 = sub_100028CB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100028CB0()
{
  v1 = v0[57];
  v2 = v0[44];
  v0[59] = v2;

  if (qword_1000B7F08 != -1)
  {
    swift_once();
  }

  v3 = [v2 urlForEndpoint:qword_1000B83A8];
  if (v3)
  {
    v4 = v0[54];
    v5 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[54];
  v8 = v0[55];
  v9 = v0[50];
  v10 = v0[51];
  (*(v10 + 56))(v7, v6, 1, v9);
  sub_1000261DC(v7, v8);
  v11 = *(v10 + 48);
  v12 = v11(v8, 1, v9);
  v13 = v0[55];
  if (v12 == 1)
  {
    sub_10002624C(v0[55], &qword_1000B8290, &unk_10008C690);
  }

  else
  {
    v14 = v0[50];
    v15 = v0[51];
    v16 = v0[55];
    URL.absoluteString.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = v0[53];
  v18 = v0[50];
  v19 = *(v0[46] + OBJC_IVAR___FAResendChildTransferRequestOperation_networkService);
  URL.init(string:)();
  if (v11(v17, 1, v18) == 1)
  {
    sub_10002624C(v0[53], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v21 = v0[56];
    v23 = v0[52];
    v22 = v0[53];
    v24 = v0[50];
    v25 = v0[51];
    v26 = v0[46];

    (*(v25 + 32))(v23, v22, v24);
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    (*(v25 + 8))(v23, v24);
    v30 = *(v26 + OBJC_IVAR___FAResendChildTransferRequestOperation_aaGrandSlamSigner);
    v31 = *(v26 + OBJC_IVAR___FAResendChildTransferRequestOperation_familyGrandSlamSigner);
    v32 = v30;
    v33 = v31;
    v34 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = [v19 standardRequestWithURL:v29 grandSlamSigner:v32 familyGrandSlamSigner:v33 method:v34 body:isa requestFormat:2 responseFormat:2];
    v0[60] = v36;

    v0[10] = v0;
    v0[15] = v0 + 45;
    v0[11] = sub_100029100;
    v37 = swift_continuation_init();
    v0[43] = sub_100022F18(&qword_1000B82B0, &unk_10008C880);
    v0[36] = _NSConcreteStackBlock;
    v0[37] = 1107296256;
    v0[38] = sub_1000277BC;
    v0[39] = &unk_1000A7A28;
    v0[40] = v37;
    [v36 onComplete:?];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_100029100()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 488) = v2;
  if (v2)
  {
    v3 = sub_100029374;
  }

  else
  {
    v3 = sub_100029210;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100029210()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 360);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 392);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1000292C0()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[49];
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[58];

  return v8();
}

uint64_t sub_100029374()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  swift_willThrow();

  static FamilyLogger.common.getter();
  swift_errorRetain();
  sub_100024D60(v1);

  (*(v5 + 8))(v4, v6);
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];
  v11 = v0[49];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_100029608(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100025EEC;

  return sub_10002884C();
}

id sub_1000296E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAResendChildTransferRequestOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000297A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000297EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026358;

  return sub_100029608(v2, v3);
}

uint64_t sub_100029898()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000298D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026620;

  return sub_1000287A4(v2, v3);
}

uint64_t sub_100029A94(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = swift_task_alloc();
  v2[22] = v3;
  *v3 = v2;
  v3[1] = sub_100029B50;

  return sub_10002AF50();
}

uint64_t sub_100029B50(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 160);
  v7 = *v2;
  v7[23] = a1;
  v7[24] = a2;

  if (v6 == 1)
  {
    v8 = swift_task_alloc();
    v7[25] = v8;
    *v8 = v7;
    v8[1] = sub_100029F68;

    return sub_10002B57C();
  }

  else if (v6 == 2)
  {

    return _swift_task_switch(sub_100029D98, 0, 0);
  }

  else
  {
    v9 = v7[1];

    return v9(a1, a2);
  }
}

uint64_t sub_100029D98()
{
  v1 = v0[21];
  v2 = [v1 networkService];
  v3 = *&v1[OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_kFAFamilyChecklistRankingConfigURLEndpoint];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 standardRequestWithEndpoint:v3 method:v4 plistBody:0 requestFormat:2 responseFormat:2];
  v0[28] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10002A47C;
  v6 = swift_continuation_init();
  v0[17] = sub_100022F18(&qword_1000B82B0, &unk_10008C880);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000277BC;
  v0[13] = &unk_1000A7B90;
  v0[14] = v6;
  [v5 onComplete:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100029F68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;
  v3[26] = a1;

  v6 = swift_task_alloc();
  v3[27] = v6;
  *v6 = v5;
  v6[1] = sub_10002A114;
  v7 = v3[24];
  v8 = v3[23];

  return sub_10002BB3C(v8, v7, a1);
}

uint64_t sub_10002A114(char a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10002A240, 0, 0);
}

uint64_t sub_10002A240()
{
  v1 = *(v0 + 280);

  if (v1 == 1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v4 = *(v0 + 8);

    return v4(v2, v3);
  }

  else
  {
    v6 = *(v0 + 168);
    v7 = [v6 networkService];
    v8 = *&v6[OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_kFAFamilyChecklistRankingConfigURLEndpoint];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 standardRequestWithEndpoint:v8 method:v9 plistBody:0 requestFormat:2 responseFormat:2];
    *(v0 + 224) = v10;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10002A47C;
    v11 = swift_continuation_init();
    *(v0 + 136) = sub_100022F18(&qword_1000B82B0, &unk_10008C880);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000277BC;
    *(v0 + 104) = &unk_1000A7B90;
    *(v0 + 112) = v11;
    [v10 onComplete:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10002A47C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_10002A9FC;
  }

  else
  {
    v3 = sub_10002A5B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A5B8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  *(v0 + 240) = v2;

  v3 = objc_opt_self();
  *(v0 + 152) = 0;
  v4 = [v3 dataWithJSONObject:v2 options:0 error:v0 + 152];
  v5 = *(v0 + 152);
  if (v4)
  {
    v6 = *(v0 + 168);
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v0 + 248) = v7;
    *(v0 + 256) = v9;
    v10 = (v6 + OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_cache);
    v11 = *(v6 + OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_cache + 24);
    v12 = *(v6 + OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_cache + 32);
    sub_1000297A8(v10, v11);
    v20 = (*(v12 + 16) + **(v12 + 16));
    v13 = *(*(v12 + 16) + 4);
    v14 = swift_task_alloc();
    *(v0 + 264) = v14;
    *v14 = v0;
    v14[1] = sub_10002A810;

    return v20(v7, v9, v11, v12);
  }

  else
  {
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10002C17C(v17, v16);
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10002A810()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_10002AAB0;
  }

  else
  {
    v3 = sub_10002A950;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A950()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  sub_10002C17C(v1, v2);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_10002A9FC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[23];
  v4 = v0[24];
  swift_willThrow();
  sub_10002C17C(v3, v4);

  v5 = v0[29];
  v6 = v0[1];

  return v6();
}

uint64_t sub_10002AAB0()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[24];
  sub_10002C190(v0[31], v0[32]);

  sub_10002C17C(v2, v3);
  v4 = v0[34];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10002ACE4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10002ADA0;

  return sub_100029A94(a1);
}

uint64_t sub_10002ADA0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002C17C(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_10002AF50()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10002B010, 0, 0);
}

uint64_t sub_10002B010()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC13familycircled39FAFamilyChecklistRankingConfigOperation_cache);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000297A8(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_10002B140;

  return v8(v2, v3);
}

uint64_t sub_10002B140(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10002B2AC, 0, 0);
  }

  else
  {
    v9 = *(v6 + 48);

    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_10002B2AC()
{
  v21 = v0;
  v1 = v0[8];
  v2 = v0[6];
  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = v0[5];
    v19 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1000373D4(0x6D6F724664616F6CLL, 0xEF29286568636143, &v20);
    *(v8 + 12) = 2080;
    v0[2] = v5;
    swift_errorRetain();
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_1000373D4(v9, v10, &v20);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s unable to load data from FAFamilyChecklistRankingConfigCache with error: %s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v12 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[6];

  v17 = v0[1];

  return v17(0, 0xF000000000000000);
}

id sub_10002B4E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAFamilyChecklistRankingConfigOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002B57C()
{
  v1 = type metadata accessor for Logger();
  v0[20] = v1;
  v2 = *(v1 - 8);
  v0[21] = v2;
  v3 = *(v2 + 64) + 15;
  v0[22] = swift_task_alloc();

  return _swift_task_switch(sub_10002B638, 0, 0);
}

uint64_t sub_10002B638()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[23] = v1;
  [v1 setCachePolicy:0];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10002B780;
  v2 = swift_continuation_init();
  v0[17] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10007415C;
  v0[13] = &unk_1000A7BB8;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002B780()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10002B900;
  }

  else
  {
    v3 = sub_10002B890;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002B890()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_10002B900()
{
  v22 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  swift_willThrow();
  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v19 = *(v0 + 160);
    v20 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1000373D4(0xD00000000000001CLL, 0x8000000100088050, v21);
    *(v8 + 12) = 2080;
    *(v0 + 152) = v6;
    swift_errorRetain();
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_1000373D4(v9, v10, v21);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s unable to retrieve familyCircle from cache with error: %s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v20, v19);
  }

  else
  {
    v12 = *(v0 + 192);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 160);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 176);

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_10002BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = type metadata accessor for Logger();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_10002BC38, 0, 0);
}

uint64_t sub_10002BC38()
{
  v58 = v0;
  v1 = v0[16];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    goto LABEL_18;
  }

  v3 = v0[17];
  v4 = v0[15];
  if (!v3)
  {
    sub_10002C1E4(v4, v1);
    goto LABEL_15;
  }

  sub_10002C1E4(v4, v1);
  v5 = [v3 checklistRankingVersion];
  if (!v5)
  {
LABEL_15:
    v20 = v0[21];
    static FamilyLogger.daemon.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[21];
    v25 = v0[18];
    v26 = v0[19];
    v28 = v0[15];
    v27 = v0[16];
    if (v23)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "server has not defined checklist ranking version, considering cache as valid", v29, 2u);
    }

    sub_10002C17C(v28, v27);

    (*(v26 + 8))(v24, v25);
    v2 = 1;
    goto LABEL_18;
  }

  v7 = v0[15];
  v6 = v0[16];
  v8 = v5;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[12] = 0;
  v14 = [v12 JSONObjectWithData:isa options:0 error:v0 + 12];

  v15 = v0[12];
  if (!v14)
  {
    v34 = v0[20];
    v35 = v15;

    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static FamilyLogger.daemon.getter();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v41 = v0[19];
    v40 = v0[20];
    v42 = v0[18];
    v43 = v0[15];
    if (v39)
    {
      v56 = v0[16];
      v44 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1000373D4(0xD000000000000032, 0x8000000100087FE0, &v57);
      *(v44 + 12) = 2080;
      v0[13] = v36;
      swift_errorRetain();
      sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
      v45 = String.init<A>(reflecting:)();
      v55 = v42;
      v47 = sub_1000373D4(v45, v46, &v57);

      *(v44 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s unable to create json object from cachedData with error: %s", v44, 0x16u);
      swift_arrayDestroy();

      sub_10002C17C(v43, v56);

      (*(v41 + 8))(v40, v55);
    }

    else
    {
      sub_10002C17C(v0[15], v0[16]);

      (*(v41 + 8))(v40, v42);
    }

    v2 = 0;
    goto LABEL_18;
  }

  v16 = v15;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100022F18(&unk_1000B94C0, &unk_10008E420);
  if (!swift_dynamicCast())
  {
    goto LABEL_23;
  }

  v17 = v0[14];
  if (!v17)
  {
    goto LABEL_23;
  }

  if (!*(v17 + 16) || (v18 = sub_100037A08(0x6E6F6973726576, 0xE700000000000000), (v19 & 1) == 0))
  {
    v51 = v0[15];
    v50 = v0[16];

    sub_10002C17C(v51, v50);

    v2 = 0;
    goto LABEL_18;
  }

  sub_100026180(*(v17 + 56) + 32 * v18, (v0 + 6));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v49 = v0[15];
    v48 = v0[16];

    sub_10002C17C(v49, v48);
    v2 = 0;
    goto LABEL_18;
  }

  if (v0[10] == v9 && v0[11] == v11)
  {
    v2 = 1;
  }

  else
  {
    v52 = v0[11];
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v54 = v0[15];
  v53 = v0[16];

  sub_10002C17C(v54, v53);
LABEL_18:
  v31 = v0[20];
  v30 = v0[21];

  v32 = v0[1];

  return v32(v2 & 1);
}

uint64_t sub_10002C17C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002C190(a1, a2);
  }

  return a1;
}

uint64_t sub_10002C190(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002C1E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002C238()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026358;

  return sub_10002ACE4(v2, v3, v4);
}

id sub_10002C30C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *a2 = v2;
    return v2;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C394(uint64_t a1)
{
  v36 = a1;
  v1 = type metadata accessor for XPCListener.InitializationOptions();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for XPCPeerRequirement();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(IDSService);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithService:v10];

  if (v11)
  {
    v31 = sub_100022F18(&qword_1000B85A0, &unk_10008C970);
    v12 = objc_allocWithZone(v31);
    *&v12[qword_1000B8480] = 0;
    sub_100022F18(&qword_1000B85A8, &qword_10008D910);
    v30 = MessageDispatcher<>.init()();
    v13 = sub_100022F18(&qword_1000B85B0, &qword_10008C980);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_100022F18(&qword_1000B85B8, &qword_10008C988);
    sub_100022F18(&qword_1000B85C0, &qword_10008C990);
    sub_100031B9C(&qword_1000B85C8, &qword_1000B85B8, &qword_10008C988);
    sub_100031B9C(&qword_1000B85D0, &qword_1000B85C0, &qword_10008C990);
    v16 = MessageDispatcher.init<A, B>(encoder:decoder:)();
    v17 = v31;
    *&v12[qword_1000B8488] = v30;
    *&v12[qword_1000B8498] = v11;
    *&v12[qword_1000B8490] = v16;
    *&v12[qword_1000B84A0] = v36;
    v35.receiver = v12;
    v35.super_class = v17;

    v18 = v11;

    v19 = objc_msgSendSuper2(&v35, "init");
    v20 = *&v19[qword_1000B8488];
    type metadata accessor for SharingCenter.XPC.AcceptShareMessage();
    sub_1000326F4(&qword_1000B85D8, &type metadata accessor for SharingCenter.XPC.AcceptShareMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    type metadata accessor for SharingCenter.XPC.ShareRecordZoneMessage();
    sub_1000326F4(&qword_1000B85E0, &type metadata accessor for SharingCenter.XPC.ShareRecordZoneMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    type metadata accessor for SharingCenter.XPC.RepairSharesMessage();
    sub_1000326F4(&qword_1000B85E8, &type metadata accessor for SharingCenter.XPC.RepairSharesMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    v21 = *&v19[qword_1000B8490];
    type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage();
    sub_1000326F4(&unk_1000B85F0, type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    type metadata accessor for XPCListener();
    swift_retain_n();
    static XPCPeerRequirement.hasEntitlement(_:)();

    static XPCListener.InitializationOptions.none.getter();
    v22 = v34;
    v23 = XPCListener.__allocating_init(service:targetQueue:options:requirement:incomingSessionHandler:)();
    if (v22)
    {
    }

    else
    {
      v24 = v23;

      v25 = *&v19[qword_1000B8480];
      *&v19[qword_1000B8480] = v24;

      sub_100002B10(0, &qword_1000B7F50, OS_dispatch_queue_ptr);
      v26 = v19;
      v27 = static OS_dispatch_queue.main.getter();
      [v18 addDelegate:v26 queue:v27];
    }

    return v19;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id SharingCenterDaemonListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingCenterDaemonListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002CB08()
{

  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

id sub_10002CB7C()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.coreDataSharing.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "SharingCenterDaemonListener deinit", v11, 2u);
  }

  (*(v4 + 8))(v8, v3);
  sub_10002CDC4();
  v12 = *(v2 + 80);
  v13 = *(v2 + 88);
  v14 = type metadata accessor for UnderlyingSharingCenterDaemonListener();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10002CD48(uint64_t a1)
{
  v2 = *(a1 + qword_1000B8480);

  v3 = *(a1 + qword_1000B8488);

  v4 = *(a1 + qword_1000B8490);

  v5 = *(a1 + qword_1000B84A0);
}

uint64_t sub_10002CDC4()
{
  if (*(v0 + qword_1000B8480))
  {

    dispatch thunk of XPCListener.cancel()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002CED4, 0, 0);
}

uint64_t sub_10002CED4()
{
  v1 = *(v0[3] + qword_1000B8490);
  v0[2] = v0[4];
  v2 = *(&async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:) + 1);
  v5 = (&async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:) + async function pointer to dispatch thunk of MessageDispatcher.handleMessage(with:));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10002CF94;

  return v5();
}

uint64_t sub_10002CF94()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10002D108;
  }

  else
  {
    v3 = sub_10002D0A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002D0A8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002D108()
{
  v26 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  static FamilyLogger.coreDataSharing.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v6)
  {
    v11 = v0[4];
    v24 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    v15 = Dictionary.description.getter();
    v23 = v8;
    v17 = sub_1000373D4(v15, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to handle incoming IDS message: %s, error: %@", v12, 0x16u);
    sub_10002624C(v13, &qword_1000B8590, &qword_10008C960);

    sub_100024F7C(v14);

    (*(v9 + 8))(v23, v24);
  }

  else
  {
    v19 = v0[9];

    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10002D344(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a5)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (a6)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a1;
  sub_1000316DC(v12);
}

uint64_t sub_10002D428(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = swift_isaMask & *a1;
  if (a5)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v16 = *(v11 + 80);
  v15 = *(v11 + 88);
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a1;
  sub_1000317F0(v12, v14, a7);
}

void sub_10002D52C(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_100031A60();
}

uint64_t sub_10002D56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002D630, 0, 0);
}

uint64_t sub_10002D630()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *(v0[4] + qword_1000B84A0);
  SharingCenter.XPC.AcceptShareMessage.url.getter();
  v4 = *(&async function pointer to dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:) + 1);
  v8 = (&async function pointer to dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:) + async function pointer to dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10002D6F8;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_10002D6F8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10002D8D8;
  }

  else
  {
    v6 = sub_10002D868;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002D868()
{
  v1 = v0[7];
  v2 = v0[2];
  SharingCenter.XPC.AcceptShareResponse.init()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002D8D8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void *sub_10002D93C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008CA38;
}

uint64_t sub_10002D9A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10002DA60(a1, a2);
}

uint64_t sub_10002DA60(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = *(*(sub_100022F18(&qword_1000B8600, &qword_10008C9D8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = type metadata accessor for SharingCenter.ShareDescriptor();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = *(*(sub_100022F18(&qword_1000B8290, &unk_10008C690) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v15 = type metadata accessor for FamilySharingAudience();
  v3[21] = v15;
  v16 = *(v15 - 8);
  v3[22] = v16;
  v17 = *(v16 + 64) + 15;
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_10002DCCC, 0, 0);
}

uint64_t sub_10002DCCC()
{
  v1 = v0[23];
  v2 = v0[5];
  v3 = *(v0[6] + qword_1000B84A0);
  v4 = SharingCenter.XPC.ShareRecordZoneMessage.recordZone.getter();
  v6 = v5;
  v0[24] = v5;
  SharingCenter.XPC.ShareRecordZoneMessage.audience.getter();
  v7 = *(&async function pointer to dispatch thunk of FamilyCoreDataSharingService.setupShare(zoneID:audience:) + 1);
  v11 = &async function pointer to dispatch thunk of FamilyCoreDataSharingService.setupShare(zoneID:audience:) + async function pointer to dispatch thunk of FamilyCoreDataSharingService.setupShare(zoneID:audience:);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_10002DDC0;
  v9 = v0[23];

  return (v11)(v0 + 2, v4, v6, v9);
}

uint64_t sub_10002DDC0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = v2[24];
  (*(v2[22] + 8))(v2[23], v2[21]);

  if (v0)
  {
    v6 = sub_10002E5B0;
  }

  else
  {
    v6 = sub_10002DF44;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002DF44()
{
  v1 = v0[2];
  v2 = [v1 URL];
  if (v2)
  {
    v3 = v0[15];
    v4 = v2;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  (*(v7 + 56))(v9, v5, 1, v6);
  sub_1000261DC(v9, v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v10 = v0[5];
    sub_10002624C(v0[16], &qword_1000B8290, &unk_10008C690);
    SharingCenter.XPC.ShareRecordZoneMessage.recordZone.getter();
    type metadata accessor for SharingCenter.NoURLForShare();
    sub_1000326F4(&qword_1000B8660, &type metadata accessor for SharingCenter.NoURLForShare);
    swift_allocError();
    SharingCenter.NoURLForShare.init(recordZoneID:)();
    swift_willThrow();

    v11 = v0[23];
    v13 = v0[19];
    v12 = v0[20];
    v15 = v0[15];
    v14 = v0[16];
    v16 = v0[14];
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];

    v20 = v0[1];
  }

  else
  {
    v21 = v0[12];
    v22 = v0[13];
    v23 = v0[11];
    (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
    v0[3] = v1;
    sub_100002B10(0, &qword_1000B8608, CKShare_ptr);
    v24 = v0;
    v69 = v1;
    SharingCenter.ShareDescriptor.init<A>(pendingDescriptorFor:)();
    if ((*(v22 + 48))(v23, 1, v21) == 1)
    {
      sub_10002624C(v0[11], &qword_1000B8600, &qword_10008C9D8);
    }

    else
    {
      v26 = v0[13];
      v25 = v24[14];
      v27 = v24[12];
      v28 = v24[6];
      (*(v24[13] + 32))(v25, v24[11], v27);
      sub_10002F60C(v25);
      (*(v26 + 8))(v25, v27);
    }

    v30 = v24[19];
    v29 = v24[20];
    v32 = v24[17];
    v31 = v24[18];
    v74 = v24;
    v33 = v24[5];
    SharingCenter.XPC.ShareRecordZoneMessage.recordZone.getter();
    (*(v31 + 16))(v30, v29, v32);
    v34 = dispatch thunk of CKShareProtocol.participants.getter();
    v35 = v34;
    if (v34 >> 62)
    {
      goto LABEL_30;
    }

    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v74; v36; i = v74)
    {
      v38 = 0;
      v39 = v35 & 0xC000000000000001;
      v70 = i[8];
      v78 = (v70 + 32);
      v80 = v35 & 0xFFFFFFFFFFFFFF8;
      v40 = &_swiftEmptyArrayStorage;
      v71 = v35;
      v72 = v35 & 0xC000000000000001;
      v73 = v36;
      while (1)
      {
        if (v39)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= *(v80 + 16))
          {
            goto LABEL_29;
          }

          v41 = *(v35 + 8 * v38 + 32);
        }

        v42 = v41;
        v43 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        v44 = CKShareParticipant.lookupInfo.getter();
        if (v44 && (v45 = v44, v46 = [v44 emailAddress], v45, v46))
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v47 = [v42 invitationToken];
          v76 = v40;
          if (v47)
          {
            v48 = v47;
            v49 = [v47 sharingInvitationData];

            static Data._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v50 = i[9];
          v51 = i[10];
          v52 = i[7];

          SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.init(token:emailAddress:)();

          swift_bridgeObjectRelease_n();
          v53 = *v78;
          (*v78)(v51, v50, v52);
          v40 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_1000643AC(0, v76[2] + 1, 1, v76);
          }

          v39 = v72;
          v36 = v73;
          v55 = v40[2];
          v54 = v40[3];
          i = v74;
          if (v55 >= v54 >> 1)
          {
            v40 = sub_1000643AC(v54 > 1, v55 + 1, 1, v40);
          }

          v56 = v74[10];
          v57 = v74[7];
          v40[2] = v55 + 1;
          v53(v40 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55, v56, v57);
          v35 = v71;
        }

        else
        {
        }

        ++v38;
        if (v43 == v36)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_31:
    v58 = i[23];
    v60 = i[19];
    v59 = i[20];
    v61 = i[17];
    v62 = i[18];
    v63 = i;
    v66 = i + 15;
    v64 = i[15];
    v65 = v66[1];
    v75 = v63[14];
    v77 = v63[11];
    v79 = v63[10];
    v81 = v63[9];
    v67 = v63[4];

    SharingCenter.XPC.ShareRecordZoneResponse.init(recordZoneID:shareURL:participants:)();
    (*(v62 + 8))(v59, v61);

    v20 = v63[1];
  }

  return v20();
}

uint64_t sub_10002E5B0()
{
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

void *sub_10002E688(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008CA18;
}

uint64_t sub_10002E6EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100026620;

  return sub_10002E7AC(a1);
}

uint64_t sub_10002E7AC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_100022F18(&qword_1000B8600, &qword_10008C9D8) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for SharingCenter.ShareDescriptor();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002E8B0, 0, 0);
}

uint64_t sub_10002E8B0()
{
  v1 = *(*(v0 + 32) + qword_1000B84A0);
  v2 = *(&async function pointer to dispatch thunk of FamilyCoreDataSharingService.repairShares() + 1);
  v5 = (&async function pointer to dispatch thunk of FamilyCoreDataSharingService.repairShares() + async function pointer to dispatch thunk of FamilyCoreDataSharingService.repairShares());
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_10002E960;

  return v5();
}

uint64_t sub_10002E960(uint64_t a1)
{
  v3 = *(*v2 + 80);
  v4 = *v2;
  v4[11] = a1;

  if (v1)
  {
    v6 = v4[8];
    v5 = v4[9];
    v7 = v4[5];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10002EABC, 0, 0);
  }
}

uint64_t sub_10002EABC()
{
  v1 = v0[11];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[11]; v2; i = v0[11])
  {
    v4 = 0;
    v5 = v0[7];
    v39 = v1 & 0xFFFFFFFFFFFFFF8;
    v40 = v1 & 0xC000000000000001;
    v38 = i + 32;
    v1 = v5 + 48;
    v6 = (v5 + 32);
    v7 = &_swiftEmptyArrayStorage;
    while (v40)
    {
      v20 = v0[11];
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v10 = v0[5];
      v11 = v0[6];
      v0[2] = v8;
      sub_100002B10(0, &qword_1000B8608, CKShare_ptr);
      SharingCenter.ShareDescriptor.init<A>(pendingDescriptorFor:)();
      if ((*v1)(v10, 1, v11) == 1)
      {
        sub_10002624C(v0[5], &qword_1000B8600, &qword_10008C9D8);
      }

      else
      {
        v12 = *v6;
        (*v6)(v0[9], v0[5], v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100064384(0, v7[2] + 1, 1, v7);
        }

        v13 = v7;
        v14 = v7[2];
        v15 = v13;
        v16 = v13[3];
        if (v14 >= v16 >> 1)
        {
          v15 = sub_100064384(v16 > 1, v14 + 1, 1, v15);
        }

        v17 = v0[9];
        v18 = v0[6];
        v15[2] = v14 + 1;
        v19 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14;
        v7 = v15;
        v12(v19, v17, v18);
      }

      ++v4;
      if (v9 == v2)
      {
        v21 = v0[11];
        goto LABEL_23;
      }
    }

    if (v4 >= *(v39 + 16))
    {
      goto LABEL_20;
    }

    v8 = *(v38 + 8 * v4);
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_23:

  v22 = v7[2];
  if (v22)
  {
    v23 = v0[7];
    v26 = *(v23 + 16);
    v24 = v23 + 16;
    v25 = v26;
    v27 = v7 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v28 = *(v24 + 56);
    do
    {
      v29 = v0[8];
      v30 = v0[6];
      v31 = v0[4];
      v25(v29, v27, v30);
      sub_10002F60C(v29);
      (*(v24 - 8))(v29, v30);
      v27 += v28;
      --v22;
    }

    while (v22);
  }

  v33 = v0[8];
  v32 = v0[9];
  v34 = v0[5];
  v35 = v0[3];
  SharingCenter.XPC.RepairSharesResponse.init(pendingShares:)();

  v36 = v0[1];

  return v36();
}