uint64_t variable initialization expression of BrandServiceImplementation.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_100001D78();
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_1000024E0(&qword_10002DCE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001DC4(&qword_10002DCE8, &qword_100020520);
  sub_100001E0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100001D78()
{
  result = qword_10002DCD8;
  if (!qword_10002DCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DCD8);
  }

  return result;
}

uint64_t sub_100001DC4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001E0C()
{
  result = qword_10002DCF0;
  if (!qword_10002DCF0)
  {
    sub_100001E70(&qword_10002DCE8, &qword_100020520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DCF0);
  }

  return result;
}

uint64_t sub_100001E70(uint64_t *a1, uint64_t *a2)
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

void *sub_100001F18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001F4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001F78(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001FF0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002070@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000020B4(uint64_t a1)
{
  v2 = sub_1000024E0(&qword_10002DDA8, type metadata accessor for BSBrandServiceType);
  v3 = sub_1000024E0(&qword_10002DDB0, type metadata accessor for BSBrandServiceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000021B8(uint64_t a1)
{
  v2 = sub_1000024E0(&qword_10002DDB8, type metadata accessor for FileAttributeKey);
  v3 = sub_1000024E0(&unk_10002DDC0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002278()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000022B8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002310()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100002388(uint64_t *a1, uint64_t *a2)
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

void sub_10000244C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000024E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000026B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(sub_100001DC4(&qword_10002E120, &qword_100020FC0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___rcsChatbotAssetDataSource;
  swift_beginAccess();
  sub_10000364C(v2 + v10, v9, &qword_10002E120, &qword_100020FC0);
  v11 = type metadata accessor for BrandAssetNetworkFetcher();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000035A0(v9, &qword_10002E120, &qword_100020FC0);
  v13 = type metadata accessor for RCSChatBotNetworkProvider();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = RCSChatBotNetworkProvider.init(customURLCache:waitsForConnectivity:)();
  v18[3] = v13;
  v18[4] = &protocol witness table for RCSChatBotNetworkProvider;
  v18[0] = v16;
  BrandAssetNetworkFetcher.init(networkProvider:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000036B4(v7, v2 + v10);
  return swift_endAccess();
}

id sub_1000028E4()
{
  v1 = type metadata accessor for BrandAssetNetworkFetcher();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20[-1] - v7;
  v9 = OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService;
  v10 = *(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService);
LABEL_5:
    v18 = v10;
    return v11;
  }

  sub_100017CC8(&v20[-1] - v7);
  v20[3] = v1;
  v20[4] = &protocol witness table for BrandAssetNetworkFetcher;
  v12 = sub_10000306C(v20);
  sub_1000026B8(v12);
  v13 = sub_100017EE4();
  result = sub_100017A3C();
  if (result)
  {
    v15 = result;
    (*(v2 + 16))(v6, v8, v1);
    v16 = sub_1000030D0(v6, v20, v13, v15);

    (*(v2 + 8))(v8, v1);
    v17 = *(v0 + v9);
    *(v0 + v9) = v16;
    v11 = v16;

    v10 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_100002A88()
{
  v1 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon_bundleId);
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon_bundleId + 8);
  String.utf8CString.getter();
  v3 = _set_user_dir_suffix();

  if (v3)
  {
    v4 = NSTemporaryDirectory();
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003034(v5, qword_10002F838);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to set private sandox for com.apple.businessservicesd", v8, 2u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100002C00()
{
  v1 = v0;
  sub_100017964();
  sub_10001CD04();

  sub_100017974();
  sub_10001CD04();

  sub_100017984();
  sub_10001CD04();

  sub_100017994();
  sub_10001CD04();

  sub_100001DC4(&qword_10002E650, &unk_100020900);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000208B0;
  v3 = sub_100017A3C();
  if (v3)
  {
    v4 = v3;
    *(v2 + 56) = sub_10000349C(0, &qword_10002E128, BCSBusinessQueryController_ptr);
    *(v2 + 32) = v4;
    v5 = sub_1000028E4();
    *(v2 + 88) = type metadata accessor for BrandServiceImplementation();
    *(v2 + 64) = v5;
    v6 = objc_allocWithZone(BSXPCDaemonServer);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v6 initWithServices:isa];

    v9 = *(v1 + OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer);
    *(v1 + OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer) = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_100002E0C()
{
  sub_1000035A0(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___rcsChatbotAssetDataSource, &qword_10002E120, &qword_100020FC0);
  v1 = *(v0 + OBJC_IVAR____TtC17businessservicesd9iOSDaemon____lazy_storage___brandService);
}

id sub_100002E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iOSDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for iOSDaemon()
{
  result = qword_10002E108;
  if (!qword_10002E108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002F44()
{
  sub_100002FDC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100002FDC()
{
  if (!qword_10002E118)
  {
    type metadata accessor for BrandAssetNetworkFetcher();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10002E118);
    }
  }
}

uint64_t sub_100003034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000306C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_1000030D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for BrandAssetNetworkFetcher();
  v33[3] = v13;
  v33[4] = &protocol witness table for BrandAssetNetworkFetcher;
  v14 = sub_10000306C(v33);
  (*(*(v13 - 8) + 32))(v14, a1, v13);
  v27 = type metadata accessor for BrandServiceImplementation();
  v15 = objc_allocWithZone(v27);
  v25 = OBJC_IVAR___BSBrandServiceImplementation_queue;
  sub_10000349C(0, &qword_10002DCD8, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_1000034E4();
  sub_100001DC4(&qword_10002DCE8, &qword_100020520);
  sub_100001E0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&v15[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v15[OBJC_IVAR___BSBrandServiceImplementation_kBlastDoorDefaultMaxPixelDimension] = 1141309440;
  *&v15[OBJC_IVAR___BSBrandServiceImplementation_kBlastDoorDefaultScale] = 1065353216;
  v16 = &v15[OBJC_IVAR___BSBrandServiceImplementation_OnDeviceNetworkSimulationDelayUserDefaultsKey];
  *v16 = 0xD00000000000001ELL;
  *(v16 + 1) = 0x800000010001EF90;
  v17 = &v15[OBJC_IVAR___BSBrandServiceImplementation_ProxyClientBundleID];
  *v17 = 0xD000000000000035;
  *(v17 + 1) = 0x800000010001EFB0;
  sub_10000353C(v33, &v15[OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource]);
  v18 = v28;
  sub_10000364C(v28, &v15[OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource], &qword_10002E140, &qword_100020910);
  v19 = v30;
  *&v15[OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource] = v29;
  *&v15[OBJC_IVAR___BSBrandServiceImplementation_queryController] = v19;
  v20 = objc_allocWithZone(BCSEntitlementVerifier);
  v21 = v19;

  v22 = [v20 init];
  *&v15[OBJC_IVAR___BSBrandServiceImplementation_entitlementVerifier] = v22;
  v31.receiver = v15;
  v31.super_class = v27;
  v23 = objc_msgSendSuper2(&v31, "init");
  sub_1000035A0(v18, &qword_10002E140, &qword_100020910);
  sub_100003600(v33);
  return v23;
}

uint64_t sub_10000349C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1000034E4()
{
  result = qword_10002DCE0;
  if (!qword_10002DCE0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DCE0);
  }

  return result;
}

uint64_t sub_10000353C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000035A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003600(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000364C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DC4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000036B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DC4(&qword_10002E120, &qword_100020FC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100003738()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000037AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t BrandServiceImplementation.assetData(for:url:type:usingSim:cachingEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 272) = a6;
  *(v8 + 280) = v7;
  *(v8 + 457) = a7;
  *(v8 + 256) = a4;
  *(v8 + 264) = a5;
  *(v8 + 240) = a2;
  *(v8 + 248) = a3;
  *(v8 + 232) = a1;
  v9 = type metadata accessor for StyleSheet();
  *(v8 + 288) = v9;
  v10 = *(v9 - 8);
  *(v8 + 296) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v8 + 312) = v12;
  v13 = *(v12 - 8);
  *(v8 + 320) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_100003944, 0, 0);
}

uint64_t sub_100003944()
{
  v86 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = type metadata accessor for Logger();
  *(v0 + 352) = sub_100003034(v6, qword_10002F838);
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 344);
  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  if (v10)
  {
    v82 = *(v0 + 256);
    v83 = v7;
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = swift_slowAlloc();
    *&v84 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_10000E3FC(v15, v14, &v84);
    *(v16 + 12) = 2080;
    v17 = URL.absoluteString.getter();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v21 = sub_10000E3FC(v17, v19, &v84);
    v7 = v83;

    *(v16 + 14) = v21;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v82;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetching assetData for brandURI %s with URL %s of type %ld", v16, 0x20u);
    swift_arrayDestroy();

    v22 = v20;
  }

  else
  {

    v22 = *(v12 + 8);
    v22(v11, v13);
  }

  *(v0 + 360) = v22;
  if (*(v0 + 256) == 3 && _BSIsInternalInstall())
  {
    v23 = [objc_opt_self() sharedDefaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 valueForKey:v24];

    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
    }

    v26 = v85;
    *(v0 + 176) = v84;
    *(v0 + 192) = v26;
    if (*(v0 + 200))
    {
      if (swift_dynamicCast())
      {
        v27 = *(v0 + 304);
        v28 = *(v0 + 208);
        v29 = *(v0 + 216);
        StyleSheet.init(css:)();
        v30 = *(v0 + 304);
        v31 = *(v0 + 288);
        v32 = type metadata accessor for JSONEncoder();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        sub_10001345C(&qword_10002E170, &type metadata accessor for StyleSheet);
        v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v37 = v36;
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

LABEL_31:
        v77 = *(v0 + 336);
        v76 = *(v0 + 344);
        v78 = *(v0 + 328);
        v79 = *(v0 + 304);

        v80 = *(v0 + 8);

        return v80(v35, v37);
      }
    }

    else
    {
      sub_1000035A0(v0 + 176, &qword_10002E168, &qword_1000209A8);
    }
  }

  v38 = *(v0 + 248);
  if (URL.hasSecureScheme.getter())
  {
    v39 = *(v0 + 457);
    v40 = *(v0 + 248);
    *(v0 + 368) = sub_100010288();
    *(v0 + 376) = v41;
    if (v39 == 1)
    {
      v42 = *(v0 + 232);
      v43 = *(v0 + 240);
      *(v0 + 384) = *(*(v0 + 280) + OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource);
      v44 = sub_100019B00(v42, v43);
      v37 = v75;
      v35 = v44;

      goto LABEL_31;
    }

    v59 = *(v0 + 232);
    v60 = *(v0 + 240);

    v61 = String._bridgeToObjectiveC()();
    LODWORD(v59) = IMStringIsBusinessID();

    v62 = *(v0 + 280);
    if (v59)
    {
      sub_10000353C(v62 + OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource, v0 + 56);
LABEL_28:
      sub_100013584((v0 + 56), v0 + 16);
      v70 = *(v0 + 40);
      v71 = *(v0 + 48);
      sub_10001335C((v0 + 16), v70);
      v72 = async function pointer to dispatch thunk of BrandAssetDataSource.assetData(for:)[1];
      v73 = swift_task_alloc();
      *(v0 + 392) = v73;
      *v73 = v0;
      v73[1] = sub_1000043AC;
      v74 = *(v0 + 248);

      return dispatch thunk of BrandAssetDataSource.assetData(for:)(v74, v70, v71);
    }

    sub_10000364C(v62 + OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource, v0 + 56, &qword_10002E140, &qword_100020910);
    if (*(v0 + 80))
    {
      goto LABEL_28;
    }

    sub_1000035A0(v0 + 56, &qword_10002E140, &qword_100020910);
    sub_10000E3A8();
    swift_allocError();
    *v81 = 0;
  }

  else
  {
    v45 = *(v0 + 240);
    v7(*(v0 + 336), *(v0 + 248), *(v0 + 312));

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 336);
    v50 = *(v0 + 312);
    v51 = *(v0 + 320);
    if (v48)
    {
      v53 = *(v0 + 232);
      v52 = *(v0 + 240);
      v54 = swift_slowAlloc();
      *&v84 = swift_slowAlloc();
      *v54 = 136315394;
      *(v54 + 4) = sub_10000E3FC(v53, v52, &v84);
      *(v54 + 12) = 2080;
      v55 = URL.absoluteString.getter();
      v57 = v56;
      v22(v49, v50);
      v58 = sub_10000E3FC(v55, v57, &v84);

      *(v54 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "assetData() The brand %s is using the URL scheme which is not supported. URL: %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v22(v49, v50);
    }

    sub_10000E3A8();
    swift_allocError();
    *v63 = 4;
  }

  swift_willThrow();
  v65 = *(v0 + 336);
  v64 = *(v0 + 344);
  v66 = *(v0 + 328);
  v67 = *(v0 + 304);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1000043AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 392);
  v8 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v9 = sub_100004B30;
  }

  else
  {
    *(v6 + 408) = a2;
    *(v6 + 416) = a1;
    v9 = sub_1000044E0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000044E0()
{
  sub_100003600(v0 + 2);
  v1 = v0[51];
  v2 = v0[52];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[38];

  v7 = v0[1];

  return v7(v2, v1);
}

uint64_t sub_100004588(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 424);
  v9 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {
    v6 = v4[47];

    v7 = sub_100004A94;
  }

  else
  {
    v7 = sub_1000046A8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000046A8()
{
  v63 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 272);
  sub_1000106A4(*(v0 + 432), *(v0 + 440));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 440);
  if (!v5)
  {
    sub_1000106F8(*(v0 + 432), *(v0 + 440));
    goto LABEL_20;
  }

  v7 = *(v0 + 256);
  v8 = swift_slowAlloc();
  result = swift_slowAlloc();
  v10 = result;
  v62 = result;
  *v8 = 134218498;
  *(v8 + 4) = v7;
  *(v8 + 12) = 2048;
  v11 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v13 = *(*(v0 + 432) + 16);
    v14 = *(*(v0 + 432) + 24);
    v15 = __OFSUB__(v14, v13);
    v12 = v14 - v13;
    if (!v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    v16 = *(v0 + 432);
    v17 = *(v0 + 436);
    v15 = __OFSUB__(v17, v16);
    LODWORD(v12) = v17 - v16;
    if (v15)
    {
      __break(1u);
      return result;
    }

    v12 = v12;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = *(v0 + 446);
LABEL_13:
  v18 = *(v0 + 432);
  v19 = *(v0 + 440);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);
  *(v8 + 14) = v12;
  sub_1000106F8(v18, v19);
  *(v8 + 22) = 2080;
  v22 = v20 == 0;
  if (v20)
  {
    v23 = v21;
  }

  else
  {
    v23 = 7104878;
  }

  if (v22)
  {
    v24 = 0xE300000000000000;
  }

  else
  {
    v24 = v2;
  }

  v25 = sub_10000E3FC(v23, v24, &v62);

  *(v8 + 24) = v25;
  _os_log_impl(&_mh_execute_header, v3, v4, "Successfully fetched asset of type %ld from remote source of size %ld using SIM %s", v8, 0x20u);
  sub_100003600(v10);

LABEL_20:

  v26 = *(v0 + 256);
  if (v26 >= 3)
  {
    if (v26 == 3)
    {
      v33 = *(v0 + 440);
      v34 = *(v0 + 448);
      v35 = *(v0 + 432);
      v30 = sub_1000109F0();
      if (!v34)
      {
        goto LABEL_27;
      }

      v36 = *(v0 + 432);
      v44 = *(v0 + 440);
      v37 = *(v0 + 376);

      v48 = v36;
    }

    else
    {
      v45 = *(v0 + 432);
      v44 = *(v0 + 440);
      v46 = *(v0 + 376);

      sub_10001074C();
      swift_allocError();
      *v47 = 1;
      swift_willThrow();
      v48 = v45;
    }

    sub_1000106F8(v48, v44);
    goto LABEL_29;
  }

  v27 = *(v0 + 440);
  v28 = *(v0 + 448);
  v29 = *(v0 + 432);
  v30 = sub_1000108C8();
  if (v28)
  {
    v32 = *(v0 + 376);
    sub_1000106F8(*(v0 + 432), *(v0 + 440));

LABEL_29:
    sub_100003600((v0 + 96));
    v49 = *(v0 + 224);

    v51 = *(v0 + 336);
    v50 = *(v0 + 344);
    v52 = *(v0 + 328);
    v53 = *(v0 + 304);

    v54 = *(v0 + 8);

    return v54();
  }

LABEL_27:
  v38 = v30;
  v39 = v31;
  v40 = *(v0 + 384);
  sub_10001A08C(*(v0 + 232), *(v0 + 240), v30, v31, *(v0 + 368), *(v0 + 376), *(v0 + 328));
  v42 = *(v0 + 432);
  v41 = *(v0 + 440);
  v43 = *(v0 + 376);
  v55 = *(v0 + 320) + 8;
  (*(v0 + 360))(*(v0 + 328), *(v0 + 312));
  sub_1000106F8(v42, v41);

  sub_100003600((v0 + 96));
  v56 = *(v0 + 224);

  v58 = *(v0 + 336);
  v57 = *(v0 + 344);
  v59 = *(v0 + 328);
  v60 = *(v0 + 304);

  v61 = *(v0 + 8);

  return v61(v38, v39);
}

uint64_t sub_100004A94()
{
  sub_100003600(v0 + 12);
  v1 = v0[28];

  v2 = v0[56];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[38];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100004B30()
{
  sub_100003600(v0 + 2);
  v1 = v0[50];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[38];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100004D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, const void *a6, void *a7)
{
  v7[2] = a7;
  v13 = type metadata accessor for URL();
  v7[3] = v13;
  v14 = *(v13 - 8);
  v7[4] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v7[5] = v16;
  v7[6] = _Block_copy(a6);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v7[7] = v18;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v7[8] = v21;
  a7;
  v22 = swift_task_alloc();
  v7[9] = v22;
  *v22 = v7;
  v22[1] = sub_100004F20;

  return BrandServiceImplementation.assetData(for:url:type:usingSim:cachingEnabled:)(v17, v19, v16, a3, a4, v21, a5 & 1);
}

uint64_t sub_100004F20(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 72);
  v10 = *v3;

  v11 = v7[8];
  v12 = v7[7];
  v13 = v7[2];
  (*(v7[4] + 8))(v7[5], v7[3]);

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v15 = isa;
    v16 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000106F8(a1, a2);
    v16 = isa;
    v15 = 0;
  }

  v17 = isa;
  v18 = v8[6];
  v18[2](v18, v16, v15);

  _Block_release(v18);

  v19 = *(v10 + 8);

  return v19();
}

id BrandServiceImplementation.logoFileURL(for:remoteUrl:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v112 = a5;
  v113 = a4;
  v111 = a1;
  v7 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v101 = &v95 - v9;
  v10 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v100 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v95 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v102 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v99 = &v95 - v21;
  v22 = __chkstk_darwin(v20);
  v98 = &v95 - v23;
  v24 = __chkstk_darwin(v22);
  *&v104 = &v95 - v25;
  __chkstk_darwin(v24);
  v27 = &v95 - v26;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100003034(v28, qword_10002F838);
  v30 = *(v17 + 16);
  v108 = v17 + 16;
  v107 = v30;
  v30(v27, a3, v16);

  v106 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v110 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v97 = v15;
    v35 = v34;
    v36 = swift_slowAlloc();
    *&v103 = a3;
    *&v120[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_10000E3FC(v111, a2, v120);
    *(v35 + 12) = 2080;
    v37 = URL.absoluteString.getter();
    v39 = v38;
    v109 = *(v17 + 8);
    v109(v27, v16);
    v40 = sub_10000E3FC(v37, v39, v120);

    *(v35 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Fetching logoData for brandURI %s with URL %s", v35, 0x16u);
    swift_arrayDestroy();
    a3 = v103;

    v15 = v97;
  }

  else
  {

    v109 = *(v17 + 8);
    v109(v27, v16);
  }

  if ((URL.hasSecureScheme.getter() & 1) == 0)
  {
    v61 = v104;
    v107(v104, a3, v16);
    v62 = v110;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = v61;
      v66 = swift_slowAlloc();
      *&v120[0] = swift_slowAlloc();
      *v66 = 136315394;
      *(v66 + 4) = sub_10000E3FC(v111, v62, v120);
      *(v66 + 12) = 2080;
      v67 = URL.absoluteString.getter();
      v69 = v68;
      v109(v65, v16);
      v70 = sub_10000E3FC(v67, v69, v120);

      *(v66 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, "logoFileURL() The brand %s is using the URL scheme which is not supported. URL: %s", v66, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v109(v61, v16);
    }

    (*(v17 + 56))(v15, 1, 1, v16);
    sub_10000E3A8();
    v71 = swift_allocError();
    *v72 = 4;
    v113(v15, 0, 0, v71);
    goto LABEL_16;
  }

  result = [objc_opt_self() currentConnection];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v42 = result;
  [result auditToken];
  v104 = v114;
  v103 = v115;

  v120[0] = v104;
  v120[1] = v103;
  v121 = 0;
  v43 = v105;
  v44 = [*&v105[OBJC_IVAR___BSBrandServiceImplementation_entitlementVerifier] auditToken:v120 hasEntitlement:BSBrandLogoEntitlement];
  v45 = v113;
  if (!v44)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    sub_10001074C();
    v73 = swift_allocError();
    *v74 = 3;
    v45(v15, 0, 0, v73);
LABEL_16:

    return sub_1000035A0(v15, &qword_10002E180, &unk_100020D20);
  }

  *&v103 = a3;
  v46 = sub_100010288();
  v48 = v47;
  v49 = swift_allocObject();
  v50 = v112;
  *&v104 = v49;
  *(v49 + 16) = v45;
  *(v49 + 24) = v50;
  v51 = v16;
  v52 = *&v43[OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource];
  *&v114 = v111;
  *(&v114 + 1) = v110;
  v118 = 0x3A7A69623A6E7275;
  v119 = 0xE800000000000000;
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_100010B4C();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v53 = v102;
  URL.appendingPathComponent(_:isDirectory:)();

  v54 = v99;
  v96 = v46;
  v97 = v48;
  URL.appendingPathComponent(_:)();
  v55 = v53;
  v56 = v109;
  v109(v55, v51);
  v57 = *(v52 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  URL.path.getter();
  v58 = String._bridgeToObjectiveC()();

  LODWORD(v57) = [v57 fileExistsAtPath:v58];

  if (v57)
  {
    v59 = v100;
    (*(v17 + 32))(v100, v54, v51);
    v60 = 0;
  }

  else
  {
    v56(v54, v51);
    v60 = 1;
    v59 = v100;
  }

  (*(v17 + 56))(v59, v60, 1, v51);
  if ((*(v17 + 48))(v59, 1, v51) == 1)
  {
    sub_1000035A0(v59, &qword_10002E180, &unk_100020D20);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Brand logo not found in cache. Will attempt to fetch from server.", v77, 2u);
    }

    v78 = type metadata accessor for TaskPriority();
    (*(*(v78 - 8) + 56))(v101, 1, 1, v78);
    v79 = v102;
    v107(v102, v103, v51);
    v80 = (*(v17 + 80) + 56) & ~*(v17 + 80);
    v81 = (v18 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    *(v83 + 2) = 0;
    *(v83 + 3) = 0;
    v84 = v105;
    v86 = v110;
    v85 = v111;
    *(v83 + 4) = v105;
    *(v83 + 5) = v85;
    *(v83 + 6) = v86;
    (*(v17 + 32))(&v83[v80], v79, v51);
    v87 = &v83[v81];
    v88 = v97;
    *v87 = v96;
    v87[1] = v88;
    v89 = &v83[v82];
    v90 = v104;
    *v89 = sub_100010B44;
    v89[1] = v90;
    v91 = &v83[(v82 + 23) & 0xFFFFFFFFFFFFFFF8];
    v92 = v112;
    *v91 = v113;
    *(v91 + 1) = v92;

    v93 = v84;
    sub_100006C08(0, 0, v101, &unk_1000209C8, v83);
  }

  else
  {

    v94 = v98;
    (*(v17 + 32))(v98, v59, v51);
    sub_100005D64(v94, v113);

    return (v56)(v94, v51);
  }
}

uint64_t sub_100005D64(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v31 - v6;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = URL.path.getter();
  v31[1] = v13;
  static String.Encoding.utf8.getter();
  sub_100010B4C();
  StringProtocol.cString(using:)();
  (*(v9 + 8))(v12, v8);

  v14 = sandbox_extension_issue_file();

  if (v14)
  {
    v15 = String.init(utf8String:)();
    v17 = v16;
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    v20 = v19;
    if (v17)
    {
      (*(v19 + 16))(v7, a1, v18);
      (*(v20 + 56))(v7, 0, 1, v18);
      a2(v7, v15, v17, 0);
    }

    else
    {
      (*(v19 + 56))(v7, 1, 1, v18);
      sub_10001074C();
      v29 = swift_allocError();
      *v30 = 2;
      a2(v7, v15, 0, v29);
    }

    sub_1000035A0(v7, &qword_10002E180, &unk_100020D20);
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003034(v21, qword_10002F838);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not obtain sandbox access token. Error: %d", v24, 8u);
    }

    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    sub_10001074C();
    v26 = swift_allocError();
    *v27 = 2;
    a2(v7, 0, 0, v26);

    return sub_1000035A0(v7, &qword_10002E180, &unk_100020D20);
  }
}

uint64_t sub_1000061B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v17;
  *(v8 + 152) = v16;
  *(v8 + 136) = v15;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = *(*(sub_100001DC4(&qword_10002E180, &unk_100020D20) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 184) = v10;
  v11 = *(v10 - 8);
  *(v8 + 192) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1000062D0, 0, 0);
}

uint64_t sub_1000062D0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = String._bridgeToObjectiveC()();
  IsBusinessID = IMStringIsBusinessID();

  v5 = *(v0 + 96);
  if (IsBusinessID)
  {
    sub_10000353C(v5 + OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource, v0 + 56);
LABEL_4:
    sub_100013584((v0 + 56), v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_10001335C((v0 + 16), v6);
    v8 = async function pointer to dispatch thunk of BrandAssetDataSource.assetData(for:)[1];
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_100006630;
    v10 = *(v0 + 120);

    return dispatch thunk of BrandAssetDataSource.assetData(for:)(v10, v6, v7);
  }

  sub_10000364C(v5 + OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource, v0 + 56, &qword_10002E140, &qword_100020910);
  if (*(v0 + 80))
  {
    goto LABEL_4;
  }

  sub_1000035A0(v0 + 56, &qword_10002E140, &qword_100020910);
  sub_10000E3A8();
  v11 = swift_allocError();
  *v12 = 0;
  swift_willThrow();
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003034(v13, qword_10002F838);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching of brand logo failed with error %@", v16, 0xCu);
    sub_1000035A0(v17, &qword_10002E240, &qword_100020FB0);
  }

  v19 = *(v0 + 184);
  v20 = *(v0 + 192);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  v23 = *(v0 + 160);

  (*(v20 + 56))(v22, 1, 1, v19);
  swift_errorRetain();
  v23(v22, 0, 0, v11);

  sub_1000035A0(v22, &qword_10002E180, &unk_100020D20);
  v24 = *(v0 + 200);
  v25 = *(v0 + 176);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100006630(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v8 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = sub_1000069E8;
  }

  else
  {
    v6 = sub_100006748;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100006748()
{
  v1 = *(v0 + 232);
  v2 = *(*(v0 + 96) + OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource);
  sub_10001A08C(*(v0 + 104), *(v0 + 112), *(v0 + 216), *(v0 + 224), *(v0 + 128), *(v0 + 136), *(v0 + 200));
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  if (v1)
  {
    sub_1000106F8(*(v0 + 216), *(v0 + 224));
    sub_100003600((v0 + 16));
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003034(v5, qword_10002F838);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Fetching of brand logo failed with error %@", v8, 0xCu);
      sub_1000035A0(v9, &qword_10002E240, &qword_100020FB0);
    }

    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);

    (*(v12 + 56))(v14, 1, 1, v11);
    swift_errorRetain();
    v15(v14, 0, 0, v1);

    sub_1000035A0(v14, &qword_10002E180, &unk_100020D20);
  }

  else
  {
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v18 = *(v0 + 184);
    v19 = *(v0 + 152);
    (*(v0 + 144))(v16);
    sub_1000106F8(v4, v3);
    (*(v17 + 8))(v16, v18);
    sub_100003600((v0 + 16));
  }

  v20 = *(v0 + 200);
  v21 = *(v0 + 176);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1000069E8()
{
  sub_100003600(v0 + 2);
  v1 = v0[29];
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching of brand logo failed with error %@", v5, 0xCu);
    sub_1000035A0(v6, &qword_10002E240, &qword_100020FB0);
  }

  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[20];

  (*(v9 + 56))(v11, 1, 1, v8);
  swift_errorRetain();
  v12(v11, 0, 0, v1);

  sub_1000035A0(v11, &qword_10002E180, &unk_100020D20);
  v13 = v0[25];
  v14 = v0[22];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100006C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000364C(a3, v27 - v11, &qword_10002E178, &unk_1000209B0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000035A0(v12, &qword_10002E178, &unk_1000209B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_10000704C(uint64_t a1, uint64_t a2, NSString a3, void *a4, uint64_t a5)
{
  v9 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  sub_10000364C(a1, &v18 - v11, &qword_10002E180, &unk_100020D20);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v16 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v14 + 8))(v12, v13);
  }

  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (a4)
  {
    a4 = _convertErrorToNSError(_:)();
  }

  (*(a5 + 16))(a5, v16, a3, a4);
}

uint64_t BrandServiceImplementation.fetchAsset(withURL:assetType:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for URL();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000072A0, 0, 0);
}

uint64_t sub_1000072A0()
{
  v48 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for Logger();
  sub_100003034(v5, qword_10002F838);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47[0] = v14;
    *v13 = 136315138;
    v45 = v6;
    v15 = URL.absoluteString.getter();
    v17 = v16;
    v46 = *(v11 + 8);
    v46(v10, v12);
    v18 = v15;
    v6 = v45;
    v19 = sub_10000E3FC(v18, v17, v47);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchAsset for URL %s", v13, 0xCu);
    sub_100003600(v14);
  }

  else
  {

    v46 = *(v11 + 8);
    v46(v10, v12);
  }

  v20 = *(v0 + 96);
  if ((URL.hasSecureScheme.getter() & 1) == 0)
  {
    v6(*(v0 + 136), *(v0 + 96), *(v0 + 120));
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47[0] = v30;
      *v29 = 136315138;
      v31 = URL.absoluteString.getter();
      v33 = v32;
      v46(v26, v28);
      v34 = sub_10000E3FC(v31, v33, v47);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "fetchAsset() URL scheme is not supported. URL: %s", v29, 0xCu);
      sub_100003600(v30);
    }

    else
    {

      v46(v26, v28);
    }

    v22 = 4;
    goto LABEL_18;
  }

  v21 = *(v0 + 112);
  if ((*(v0 + 104) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    sub_10000364C(v21 + OBJC_IVAR___BSBrandServiceImplementation_rcsChatbotAssetDataSource, v0 + 56, &qword_10002E140, &qword_100020910);
    if (!*(v0 + 80))
    {
      sub_1000035A0(v0 + 56, &qword_10002E140, &qword_100020910);
      v22 = 0;
LABEL_18:
      sub_10000E3A8();
      swift_allocError();
      *v40 = v22;
      swift_willThrow();
      v42 = *(v0 + 136);
      v41 = *(v0 + 144);

      v43 = *(v0 + 8);

      return v43();
    }
  }

  else
  {
    sub_10000353C(v21 + OBJC_IVAR___BSBrandServiceImplementation_businessConnectAssetDataSource, v0 + 56);
  }

  sub_100013584((v0 + 56), v0 + 16);
  v35 = *(v0 + 40);
  v36 = *(v0 + 48);
  sub_10001335C((v0 + 16), v35);
  v37 = async function pointer to dispatch thunk of BrandAssetDataSource.assetData(for:)[1];
  v38 = swift_task_alloc();
  *(v0 + 152) = v38;
  *v38 = v0;
  v38[1] = sub_10000774C;
  v39 = *(v0 + 96);

  return dispatch thunk of BrandAssetDataSource.assetData(for:)(v39, v35, v36);
}

uint64_t sub_10000774C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 152);
  v8 = *v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = v2;

  if (v2)
  {
    v6 = sub_1000079D0;
  }

  else
  {
    v6 = sub_100007864;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100007864()
{
  v1 = v0[13];
  if (v1 >= 3)
  {
    if (v1 != 3)
    {
      v19 = v0[20];
      v18 = v0[21];
      sub_10000E3A8();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
      v7 = v19;
      v8 = v18;
      goto LABEL_10;
    }

    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[20];
    v5 = sub_1000109F0();
    if (v10)
    {
LABEL_3:
      v7 = v0[20];
      v8 = v0[21];
LABEL_10:
      sub_1000106F8(v7, v8);
      sub_100003600(v0 + 2);
      v22 = v0[17];
      v21 = v0[18];

      v23 = v0[1];

      return v23();
    }
  }

  else
  {
    v2 = v0[21];
    v3 = v0[22];
    v4 = v0[20];
    v5 = sub_1000108C8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = v6;
  v13 = v5;
  v15 = v0[17];
  v14 = v0[18];
  sub_1000106F8(v0[20], v0[21]);
  sub_100003600(v0 + 2);

  v16 = v0[1];

  return v16(v13, v12);
}

uint64_t sub_1000079D0()
{
  sub_100003600(v0 + 2);
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100007BD0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for URL();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v4[6] = _Block_copy(a3);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  a4;
  v12 = swift_task_alloc();
  v4[7] = v12;
  *v12 = v4;
  v12[1] = sub_100007D10;

  return BrandServiceImplementation.fetchAsset(withURL:assetType:)(v11, a2);
}

uint64_t sub_100007D10(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 56);
  v10 = *v3;

  v11 = v7[2];
  (*(v7[4] + 8))(v7[5], v7[3]);

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v13 = isa;
    v14 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000106F8(a1, a2);
    v14 = isa;
    v13 = 0;
  }

  v15 = isa;
  v16 = v8[6];
  v16[2](v16, v14, v13);

  _Block_release(v16);

  v17 = *(v10 + 8);

  return v17();
}

uint64_t BrandServiceImplementation.clearCachedAssets(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100007F1C, 0, 0);
}

uint64_t sub_100007F1C()
{
  v13 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000E3FC(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "clearCachedAssets for brand %s", v7, 0xCu);
    sub_100003600(v8);
  }

  v9 = *(*(v0 + 32) + OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource);
  sub_10001A910(*(v0 + 16), *(v0 + 24));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100008254(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100008328;

  return BrandServiceImplementation.clearCachedAssets(for:)(v5, v7);
}

uint64_t sub_100008328()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000084E8()
{
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003034(v1, qword_10002F838);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "clearUnusedCachedLogos", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource);
  sub_10001AC40();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000879C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100008844;

  return BrandServiceImplementation.clearUnusedCachedLogos()();
}

uint64_t sub_100008844()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000089C8(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100001DC4(&qword_10002E270, &qword_100020CC0);
  if (swift_dynamicCast())
  {
    sub_100013584(__src, &v41);
    sub_10001335C(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100003600(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1000035A0(__src, &qword_10002E278, qword_100020CC8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10000E9A4(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000100E8(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_10000EA6C(sub_100013508);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10000FC08(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10000FC08(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100013570(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100013570(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000106A4(*&__src[0], *(&__src[0] + 1));

  sub_1000106F8(v32, *(&v32 + 1));
  return v32;
}

uint64_t BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100008F7C;

  return sub_10000D3B4();
}

uint64_t sub_100008F7C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_1000090B0, 0, 0);
  }
}

uint64_t sub_1000090B0()
{
  v26 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 normalizedPhoneNumberForPhoneNumber:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000146A0(v6, v8);

  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = type metadata accessor for Logger();
  sub_100003034(v12, qword_10002F838);

  v13 = v10;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[3];
    v16 = v0[4];
    v18 = v0[2];
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_10000E3FC(v18, v17, &v25);
    *(v19 + 12) = 2080;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = sub_10000E3FC(v20, v21, &v25);

    *(v19 + 14) = v22;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v9 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "isBrandRegistered(withIdentifier: %s forService: %s) returned %{BOOL}d", v19, 0x1Cu);
    swift_arrayDestroy();
  }

  v23 = v0[1];

  return v23(v9 & 1);
}

uint64_t sub_1000094DC(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100013630;

  return BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:)(v7, v9, v10);
}

uint64_t BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 40) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = *(*(sub_100001DC4(&qword_10002E178, &unk_1000209B0) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100009670, 0, 0);
}

uint64_t sub_100009670()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v4;
  v9 = v2;

  v10 = sub_10000A120(0, 0, v1, &unk_100020A08, v8);
  v0[8] = v10;
  v7(v1, 1, 1, v6);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = v10;

  v0[9] = sub_10000A120(0, 0, v1, &unk_100020A18, v11);
  v12 = async function pointer to Task.value.getter[1];
  v13 = swift_task_alloc();
  v0[10] = v13;
  v14 = sub_100001DC4(&qword_10002E158, &qword_1000209A0);
  v0[11] = v14;
  *v13 = v0;
  v13[1] = sub_100009890;

  return Task.value.getter(v0 + 13, v10, &type metadata for Bool, v14, &protocol self-conformance witness table for Error);
}

uint64_t sub_100009890()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100009BF0;
  }

  else
  {
    v3 = sub_1000099A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000099A4()
{
  v26 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 104);
  Task.cancel()();
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = type metadata accessor for Logger();
  sub_100003034(v6, qword_10002F838);

  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  if (v10)
  {
    v13 = *(v0 + 40);
    v24 = v3;
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);
    v16 = *(v0 + 16);
    v17 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v17 = 136315906;
    *(v17 + 4) = sub_10000E3FC(v16, v15, &v25);
    *(v17 + 12) = 2080;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = sub_10000E3FC(v18, v19, &v25);

    *(v17 + 14) = v20;
    v3 = v24;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v13;
    *(v17 + 32) = 1024;
    *(v17 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "isBrandRegistered(withIdentifier: %s forService: %s timeout: %f) returned %{BOOL}d", v17, 0x26u);
    swift_arrayDestroy();
  }

  v21 = *(v0 + 56);

  v22 = *(v0 + 8);

  return v22(v3);
}

uint64_t sub_100009BF0()
{
  v23 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100003034(v3, qword_10002F838);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_10000E3FC(v10, v9, v22);
    *(v11 + 12) = 2080;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = sub_10000E3FC(v12, v13, v22);

    *(v11 + 14) = v14;
    *(v11 + 22) = 2048;
    *(v11 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Timeout when calling isBrandRegistered(withIdentifier: %s forService: %s timeout: %f", v11, 0x20u);
    swift_arrayDestroy();
  }

  v15 = v0[12];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];
  sub_10000E3A8();
  swift_allocError();
  *v19 = 6;
  swift_willThrow();

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_100009E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_100009ED4;

  return sub_10000D3B4();
}

uint64_t sub_100009ED4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10000A004, 0, 0);
  }
}

uint64_t sub_10000A004()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 normalizedPhoneNumberForPhoneNumber:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v9 = v0[2];
  v10 = sub_1000146A0(v6, v8);

  *v9 = v10 & 1;
  v11 = v0[1];

  return v11();
}

uint64_t sub_10000A120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000364C(a3, v24 - v10, &qword_10002E178, &unk_1000209B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035A0(v11, &qword_10002E178, &unk_1000209B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000A3CC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return _swift_task_switch(sub_10000A3F0, 0, 0);
}

uint64_t sub_10000A3F0(unint64_t a1)
{
  v3 = *(v1 + 16);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0xF4240uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = 1000000 * v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_10000A4E4;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10000A4E4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10000A614, 0, 0);
  }
}

uint64_t sub_10000A614()
{
  v1 = *(v0 + 24);
  sub_100001DC4(&qword_10002E158, &qword_1000209A0);
  Task.cancel()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000A844(int a1, void *a2, void *aBlock, double a4, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[5] = v10;
  v12 = a2;
  a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_10000A938;

  return BrandServiceImplementation.isBrandRegistered(withIdentifier:forService:timeout:)(v9, v11, v12, a4);
}

uint64_t sub_10000A938(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 32);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t BrandServiceImplementation.brandData(withIdentifier:forService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v5 = type metadata accessor for OnDeviceSupportBrandDetails();
  v4[51] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v7 = *(*(sub_100001DC4(&qword_10002E180, &unk_100020D20) - 8) + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v8 = type metadata accessor for BrandType();
  v4[57] = v8;
  v9 = *(v8 - 8);
  v4[58] = v9;
  v10 = *(v9 + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v11 = type metadata accessor for GenericBrand();
  v4[61] = v11;
  v12 = *(v11 - 8);
  v4[62] = v12;
  v13 = *(v12 + 64) + 15;
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();

  return _swift_task_switch(sub_10000ACC8, 0, 0);
}

uint64_t sub_10000ACC8()
{
  v45 = v0;
  v1 = v0[49];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v8 = swift_task_alloc();
      v0[69] = v8;
      *v8 = v0;
      v8[1] = sub_10000B988;
      v9 = v0[50];

      return sub_10000D3B4();
    }
  }

  v11 = v0[50];
  v12 = *(v11 + OBJC_IVAR___BSBrandServiceImplementation_queryController);
  v0[65] = v12;
  if (v12)
  {
    v14 = v0[47];
    v13 = v0[48];
    v15 = v12;
    v16 = String._bridgeToObjectiveC()();
    v0[66] = v16;
    v17 = *(v11 + OBJC_IVAR___BSBrandServiceImplementation_ProxyClientBundleID);
    v18 = *(v11 + OBJC_IVAR___BSBrandServiceImplementation_ProxyClientBundleID + 8);
    v19 = String._bridgeToObjectiveC()();
    v0[67] = v19;
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = sub_10000B168;
    v20 = swift_continuation_init();
    v0[45] = sub_100001DC4(&qword_10002E1C0, &qword_100020A38);
    v0[38] = _NSConcreteStackBlock;
    v0[39] = 1107296256;
    v0[40] = sub_10000C33C;
    v0[41] = &unk_100028FE0;
    v0[42] = v20;
    [v15 fetchBrandWithIdentifier:v16 forClientBundleID:v19 serviceType:5 completion:v0 + 38];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v22 = v0[48];
    v21 = v0[49];
    v23 = type metadata accessor for Logger();
    sub_100003034(v23, qword_10002F838);

    v24 = v21;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[47];
      v27 = v0[48];
      v29 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = sub_10000E3FC(v30, v31, v44);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10000E3FC(v28, v27, v44);
      _os_log_impl(&_mh_execute_header, v25, v26, "Error fetching brand data for Service %s Key %s Error: No query controller available", v29, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000E3A8();
    swift_allocError();
    *v33 = 9;
    swift_willThrow();
    v35 = v0[63];
    v34 = v0[64];
    v37 = v0[59];
    v36 = v0[60];
    v39 = v0[55];
    v38 = v0[56];
    v41 = v0[53];
    v40 = v0[54];
    v42 = v0[52];

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_10000B168()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  if (v2)
  {
    v3 = sub_10000C248;
  }

  else
  {
    v3 = sub_10000B278;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B278()
{
  v89 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 368);

  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = type metadata accessor for Logger();
  sub_100003034(v5, qword_10002F838);

  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 384);
    v9 = *(v0 + 392);
    v11 = *(v0 + 376);
    v12 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10000E3FC(v11, v10, v88);
    *(v12 + 12) = 2080;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = sub_10000E3FC(v13, v14, v88);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Found Brand for identifier %s for service %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v16 = [v2 localizedNames];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000C414(v17);
  v19 = v18;

  if (v19)
  {
    v20 = *(v0 + 480);
    v22 = *(v0 + 456);
    v21 = *(v0 + 464);

    sub_100001DC4(&qword_10002E198, &qword_100020A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000208B0;
    *(inited + 32) = static WebPresentmentBrandDetailsKeys.companyID.getter();
    *(inited + 40) = v24;
    v25 = [v2 companyId];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(inited + 48) = v26;
    *(inited + 56) = v28;
    *(inited + 64) = static WebPresentmentBrandDetailsKeys.businessID.getter();
    *(inited + 72) = v29;
    v30 = [v2 businessId];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(inited + 80) = v31;
    *(inited + 88) = v33;
    sub_1000123AC(inited);
    swift_setDeallocating();
    sub_100001DC4(&qword_10002E1A0, &qword_100020A30);
    swift_arrayDestroy();
    (*(v21 + 104))(v20, enum case for BrandType.webPresentment(_:), v22);
    v34 = [v2 logoURL];
    if (v34)
    {
      v35 = *(v0 + 448);
      v36 = v34;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v52 = *(v0 + 512);
    v53 = *(v0 + 480);
    v54 = *(v0 + 488);
    v55 = *(v0 + 448);
    v56 = *(v0 + 376);
    v57 = *(v0 + 384);
    v58 = type metadata accessor for URL();
    (*(*(v58 - 8) + 56))(v55, v37, 1, v58);

    GenericBrand.init(brandURI:type:name:isVerified:logoURL:brandInfo:)();
    v59 = type metadata accessor for JSONEncoder();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_10001345C(&qword_10002E1A8, &type metadata accessor for GenericBrand);
    v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v64 = v63;
    v65 = *(v0 + 520);
    (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));

    v78 = *(v0 + 504);
    v77 = *(v0 + 512);
    v80 = *(v0 + 472);
    v79 = *(v0 + 480);
    v82 = *(v0 + 440);
    v81 = *(v0 + 448);
    v84 = *(v0 + 424);
    v83 = *(v0 + 432);
    v87 = v62;
    v85 = *(v0 + 416);

    v86 = *(v0 + 8);

    return v86(v87, v64);
  }

  else
  {
    v39 = *(v0 + 384);
    v38 = *(v0 + 392);

    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = *(v0 + 384);
      v43 = *(v0 + 392);
      v45 = *(v0 + 376);
      v46 = swift_slowAlloc();
      v88[0] = swift_slowAlloc();
      *v46 = 136315394;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = sub_10000E3FC(v47, v48, v88);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_10000E3FC(v45, v44, v88);
      _os_log_impl(&_mh_execute_header, v41, v42, "Error fetching brand data for Service %s Key %s Error: Malformed data: No name found", v46, 0x16u);
      swift_arrayDestroy();
    }

    v50 = *(v0 + 520);
    sub_10000E3A8();
    swift_allocError();
    *v51 = 7;
    swift_willThrow();

    v67 = *(v0 + 504);
    v66 = *(v0 + 512);
    v69 = *(v0 + 472);
    v68 = *(v0 + 480);
    v71 = *(v0 + 440);
    v70 = *(v0 + 448);
    v73 = *(v0 + 424);
    v72 = *(v0 + 432);
    v74 = *(v0 + 416);

    v75 = *(v0 + 8);

    return v75();
  }
}

uint64_t sub_10000B988()
{
  v2 = *(*v1 + 552);
  v3 = *v1;
  v3[70] = v0;

  if (v0)
  {
    v5 = v3[63];
    v4 = v3[64];
    v7 = v3[59];
    v6 = v3[60];
    v9 = v3[55];
    v8 = v3[56];
    v11 = v3[53];
    v10 = v3[54];
    v12 = v3[52];

    v13 = v3[1];

    return v13();
  }

  else
  {

    return _swift_task_switch(sub_10000BB44, 0, 0);
  }
}

uint64_t sub_10000BB44()
{
  v93 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 normalizedPhoneNumberForPhoneNumber:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v9 = v0[70];
  sub_100014844(v6, v8, v0[52]);

  if (v9)
  {
    v68 = v0[63];
    v67 = v0[64];
    v70 = v0[59];
    v69 = v0[60];
    v72 = v0[55];
    v71 = v0[56];
    v74 = v0[53];
    v73 = v0[54];
    v75 = v0[52];

    v76 = v0[1];

    return v76();
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v11 = v0[48];
    v10 = v0[49];
    v12 = type metadata accessor for Logger();
    sub_100003034(v12, qword_10002F838);

    v13 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[48];
      v16 = v0[49];
      v18 = v0[47];
      v19 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_10000E3FC(v18, v17, v92);
      *(v19 + 12) = 2080;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = sub_10000E3FC(v20, v21, v92);

      *(v19 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Found Brand for identifier %s for service %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    v23 = v0[55];
    v25 = v0[51];
    v24 = v0[52];
    sub_100001DC4(&qword_10002E198, &qword_100020A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100020960;
    *(inited + 32) = static OnDeviceSupportBrandDetailsKeys.appBundleID.getter();
    *(inited + 40) = v27;
    v28 = (v24 + *(v25 + 32));
    v29 = v28[1];
    *(inited + 48) = *v28;
    *(inited + 56) = v29;

    *(inited + 64) = static OnDeviceSupportBrandDetailsKeys.deepLinkURL.getter();
    *(inited + 72) = v30;
    sub_10000364C(v24 + *(v25 + 36), v23, &qword_10002E180, &unk_100020D20);
    v31 = type metadata accessor for URL();
    v32 = *(v31 - 8);
    v89 = *(v32 + 48);
    v33 = v89(v23, 1, v31);
    v34 = v0[55];
    if (v33 == 1)
    {
      sub_1000035A0(v0[55], &qword_10002E180, &unk_100020D20);
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v37 = v0[55];
      v35 = URL.absoluteString.getter();
      v36 = v38;
      (*(v32 + 8))(v34, v31);
    }

    v39 = v0[54];
    v40 = v0[51];
    v41 = v0[52];
    *(inited + 80) = v35;
    *(inited + 88) = v36;
    *(inited + 96) = static OnDeviceSupportBrandDetailsKeys.fallBackURL.getter();
    *(inited + 104) = v42;
    sub_10000364C(v41 + *(v40 + 40), v39, &qword_10002E180, &unk_100020D20);
    v43 = v89(v39, 1, v31);
    v44 = v0[54];
    if (v43 == 1)
    {
      sub_1000035A0(v0[54], &qword_10002E180, &unk_100020D20);
      v45 = 0;
      v46 = 0xE000000000000000;
    }

    else
    {
      v47 = v0[54];
      v45 = URL.absoluteString.getter();
      v46 = v48;
      (*(v32 + 8))(v44, v31);
    }

    v88 = v0[63];
    v90 = v0[61];
    v49 = v0[58];
    v50 = v0[59];
    v51 = v0[57];
    v52 = v0[52];
    v53 = v0[53];
    v87 = v0[51];
    *(inited + 112) = v45;
    *(inited + 120) = v46;
    sub_1000123AC(inited);
    swift_setDeallocating();
    sub_100001DC4(&qword_10002E1A0, &qword_100020A30);
    swift_arrayDestroy();
    v54 = *v52;
    v55 = v52[1];
    (*(v49 + 104))(v50, enum case for BrandType.onDeviceSupport(_:), v51);

    sub_100013638();
    v56 = *(v52 + 32);
    sub_10000364C(v52 + *(v87 + 28), v53, &qword_10002E180, &unk_100020D20);
    GenericBrand.init(brandURI:type:name:isVerified:logoURL:brandInfo:)();
    v57 = type metadata accessor for JSONEncoder();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_10001345C(&qword_10002E1A8, &type metadata accessor for GenericBrand);
    v60 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v62 = v61;
    v64 = v0[62];
    v63 = v0[63];
    v65 = v0[61];
    v66 = v0[52];

    (*(v64 + 8))(v63, v65);
    sub_1000124C0(v66);
    v79 = v0[63];
    v78 = v0[64];
    v81 = v0[59];
    v80 = v0[60];
    v83 = v0[55];
    v82 = v0[56];
    v85 = v0[53];
    v84 = v0[54];
    v91 = v0[52];

    v86 = v0[1];

    return v86(v60, v62);
  }
}

uint64_t sub_10000C248()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  swift_willThrow();

  v5 = v0[68];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[59];
  v8 = v0[60];
  v11 = v0[55];
  v10 = v0[56];
  v13 = v0[53];
  v12 = v0[54];
  v14 = v0[52];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000C33C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10001335C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100001DC4(&qword_10002E158, &qword_1000209A0);
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

void *sub_10000C414(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10000FF94(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10000C628(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1000135C0;

  return BrandServiceImplementation.brandData(withIdentifier:forService:)(v7, v9, v10);
}

uint64_t BrandServiceImplementation.brandAsset(withIdentifier:forService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  return _swift_task_switch(sub_10000C738, 0, 0);
}

uint64_t sub_10000C738()
{
  v47 = v0;
  v1 = v0[22];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      if (qword_10002DCD0 != -1)
      {
        swift_once();
      }

      v9 = v0[21];
      v8 = v0[22];
      v10 = type metadata accessor for Logger();
      sub_100003034(v10, qword_10002F838);
      v11 = v8;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v0[20];
        v14 = v0[21];
        v16 = swift_slowAlloc();
        v46[0] = swift_slowAlloc();
        *v16 = 136315394;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = sub_10000E3FC(v17, v18, v46);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_10000E3FC(v15, v14, v46);
        _os_log_impl(&_mh_execute_header, v12, v13, "Error fetching brand asset for Service %s Key %s Error: unsupported service type", v16, 0x16u);
        swift_arrayDestroy();
      }

      v20 = 8;
LABEL_21:
      sub_10000E3A8();
      swift_allocError();
      *v43 = v20;
      swift_willThrow();
      v44 = v0[1];

      return v44();
    }
  }

  v21 = v0[23];
  v22 = *(v21 + OBJC_IVAR___BSBrandServiceImplementation_queryController);
  v0[24] = v22;
  if (!v22)
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v32 = v0[21];
    v31 = v0[22];
    v33 = type metadata accessor for Logger();
    sub_100003034(v33, qword_10002F838);
    v34 = v31;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v38 = v0[20];
      v37 = v0[21];
      v39 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v39 = 136315394;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = sub_10000E3FC(v40, v41, v46);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_10000E3FC(v38, v37, v46);
      _os_log_impl(&_mh_execute_header, v35, v36, "Error fetching brand data for Service %s Key %s Error: No query controller available", v39, 0x16u);
      swift_arrayDestroy();
    }

    v20 = 9;
    goto LABEL_21;
  }

  v24 = v0[20];
  v23 = v0[21];
  v25 = v22;
  v26 = String._bridgeToObjectiveC()();
  v0[25] = v26;
  v27 = *(v21 + OBJC_IVAR___BSBrandServiceImplementation_ProxyClientBundleID);
  v28 = *(v21 + OBJC_IVAR___BSBrandServiceImplementation_ProxyClientBundleID + 8);
  v29 = String._bridgeToObjectiveC()();
  v0[26] = v29;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000CC68;
  v30 = swift_continuation_init();
  v0[17] = sub_100001DC4(&qword_10002E1C8, &qword_100020A48);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000CE80;
  v0[13] = &unk_100029008;
  v0[14] = v30;
  [v25 fetchWebPresentmentPermissionsWithIdentifier:v26 forClientBundleID:v29 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000CC68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_10000CDFC;
  }

  else
  {
    v3 = sub_10000CD78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000CD78()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  v4 = *(v0 + 144);
  v3 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_10000CDFC()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  swift_willThrow();

  v5 = v0[27];
  v6 = v0[1];

  return v6();
}

uint64_t sub_10000CE80(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10001335C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001DC4(&qword_10002E158, &qword_1000209A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000D0F8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10000D1E4;

  return BrandServiceImplementation.brandAsset(withIdentifier:forService:)(v7, v9, v10);
}

uint64_t sub_10000D1E4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (v4)
  {
    v13 = _convertErrorToNSError(_:)();

    v14 = v13;
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000106F8(a1, a2);
    v15 = isa;
    v14 = 0;
    v13 = isa;
  }

  v17 = *(v7 + 32);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t sub_10000D3D4()
{
  v40 = v0;
  if (!_BSIsInternalInstall())
  {
    goto LABEL_28;
  }

  v1 = *(v0 + 64);
  v2 = [objc_allocWithZone(NSUserDefaults) init];
  v3 = *(v1 + OBJC_IVAR___BSBrandServiceImplementation_OnDeviceNetworkSimulationDelayUserDefaultsKey);
  v4 = *(v1 + OBJC_IVAR___BSBrandServiceImplementation_OnDeviceNetworkSimulationDelayUserDefaultsKey + 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v7 = v38;
  *(v0 + 16) = v37;
  *(v0 + 32) = v7;
  if (!*(v0 + 40))
  {
    sub_1000035A0(v0 + 16, &qword_10002E168, &qword_1000209A8);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v19 = *(v0 + 8);

    return v19();
  }

  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = HIBYTE(v8) & 0xF;
  v11 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    __break(1u);
LABEL_80:
    v35 = v8;

    v15 = sub_10000F28C(v9, v35, 10);
    v34 = v33;

    v8 = v35;
    if (v34)
    {
      goto LABEL_81;
    }

    goto LABEL_75;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_83;
    }

    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      v13 = *v10;
      if (v13 == 43)
      {
        if (v11 < 1)
        {
          goto LABEL_86;
        }

        v23 = v11 - 1;
        if (v11 != 1)
        {
          v15 = 0;
          if (!v10)
          {
            goto LABEL_74;
          }

          v24 = (v10 + 1);
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v15, 0xAuLL))
            {
              break;
            }

            v18 = __CFADD__(10 * v15, v25);
            v15 = 10 * v15 + v25;
            if (v18)
            {
              break;
            }

            ++v24;
            if (!--v23)
            {
LABEL_65:
              LOBYTE(v10) = 0;
              goto LABEL_74;
            }
          }
        }
      }

      else if (v13 == 45)
      {
        if (v11 < 1)
        {
          __break(1u);
          goto LABEL_85;
        }

        v14 = v11 - 1;
        if (v11 != 1)
        {
          v15 = 0;
          if (!v10)
          {
            goto LABEL_74;
          }

          v16 = (v10 + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            if (!is_mul_ok(v15, 0xAuLL))
            {
              break;
            }

            v18 = 10 * v15 >= v17;
            v15 = 10 * v15 - v17;
            if (!v18)
            {
              break;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v11)
      {
        v15 = 0;
        if (!v10)
        {
          goto LABEL_74;
        }

        while (1)
        {
          v28 = *v10 - 48;
          if (v28 > 9)
          {
            break;
          }

          if (!is_mul_ok(v15, 0xAuLL))
          {
            break;
          }

          v18 = __CFADD__(10 * v15, v28);
          v15 = 10 * v15 + v28;
          if (v18)
          {
            break;
          }

          ++v10;
          if (!--v11)
          {
            goto LABEL_65;
          }
        }
      }

LABEL_73:
      v15 = 0;
      LOBYTE(v10) = 1;
LABEL_74:
      v39 = v10;
      if (v10)
      {
LABEL_81:
        __break(1u);
      }

      else
      {
LABEL_75:

        if (is_mul_ok(v15, 0xF4240uLL))
        {
          v31 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
          v32 = swift_task_alloc();
          *(v0 + 72) = v32;
          *v32 = v0;
          v32[1] = sub_10000D880;
          v8 = 1000000 * v15;

          return static Task<>.sleep(nanoseconds:)(v8);
        }
      }

      __break(1u);
LABEL_83:
      v36 = v8;
      v10 = _StringObject.sharedUTF8.getter();
      v8 = v36;
    }
  }

  *&v37 = *(v0 + 48);
  *(&v37 + 1) = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v9 == 43)
  {
    if (v10)
    {
      if (--v10)
      {
        v15 = 0;
        v26 = &v37 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          if (!is_mul_ok(v15, 0xAuLL))
          {
            break;
          }

          v18 = __CFADD__(10 * v15, v27);
          v15 = 10 * v15 + v27;
          if (v18)
          {
            break;
          }

          ++v26;
          if (!--v10)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (v9 != 45)
    {
      if (v10)
      {
        v15 = 0;
        v29 = &v37;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          if (!is_mul_ok(v15, 0xAuLL))
          {
            break;
          }

          v18 = __CFADD__(10 * v15, v30);
          v15 = 10 * v15 + v30;
          if (v18)
          {
            break;
          }

          ++v29;
          if (!--v10)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v10)
    {
      if (--v10)
      {
        v15 = 0;
        v21 = &v37 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (!is_mul_ok(v15, 0xAuLL))
          {
            break;
          }

          v18 = 10 * v15 >= v22;
          v15 = 10 * v15 - v22;
          if (!v18)
          {
            break;
          }

          ++v21;
          if (!--v10)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  __break(1u);
  return static Task<>.sleep(nanoseconds:)(v8);
}

uint64_t sub_10000D880()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id BrandServiceImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandServiceImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandServiceImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DB00(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100013628;

  return v7();
}

uint64_t sub_10000DBE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000DCD0;

  return v8();
}

uint64_t sub_10000DCD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000364C(a3, v25 - v11, &qword_10002E178, &unk_1000209B0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000035A0(v12, &qword_10002E178, &unk_1000209B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);

    return v23;
  }

LABEL_8:
  sub_1000035A0(a3, &qword_10002E178, &unk_1000209B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000E0C0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001362C;

  return v7(a1);
}

uint64_t sub_10000E1B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E2B0;

  return v7(a1);
}

uint64_t sub_10000E2B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10000E3A8()
{
  result = qword_10002E130;
  if (!qword_10002E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E130);
  }

  return result;
}

uint64_t sub_10000E3FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000E4C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001252C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003600(v11);
  return v7;
}

unint64_t sub_10000E4C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000E5D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10000E5D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000E620(a1, a2);
  sub_10000E750(&off_100028E88);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10000E620(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000E83C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000E83C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000E750(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000E8B0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000E83C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001DC4(&qword_10002E238, &qword_100020C88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E8B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DC4(&qword_10002E238, &qword_100020C88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000E9A4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100010030(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_10000EA6C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000106F8(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000106F8(v6, v5);
    *v3 = xmmword_100020970;
    sub_1000106F8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_10000EF10(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000106F8(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100020970;
    sub_1000106F8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10000EF10(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_10000EE10@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100010030(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100010188(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100010204(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10000EEA4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000EF10(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_10000EFC4(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000F0D0(a1, v4);
}

unint64_t sub_10000F058(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000F1D4(a1, a2, v6);
}

unint64_t sub_10000F0D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000F1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_10000F28C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000F810();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10000F810()
{
  v0 = String.subscript.getter();
  v4 = sub_10000F890(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000F890(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000E83C(v9, 0);
  v12 = sub_10000F9E8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10000F9E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000FC08(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000FC08(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000FC08(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000FC84(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10000FE64(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10000FE64(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10000FE64(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FF44@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

void *sub_10000FF94(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 16 * a2);
    v9 = v8[1];
    *result = *v8;
    result[1] = v9;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100010030(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000100E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100010188(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100010204(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100010288()
{
  v0 = type metadata accessor for SHA256();
  *&v38 = *(v0 - 8);
  v1 = *(v38 + 64);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = URL.absoluteString.getter();
  v13 = sub_1000089C8(v11, v12);
  v15 = v14;
  sub_10001345C(&qword_10002E248, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_1000106A4(v13, v15);
  sub_10000FC84(v13, v15);
  v33 = v15;
  v34 = v13;
  sub_1000106F8(v13, v15);
  dispatch thunk of HashFunction.finalize()();
  (*(v38 + 8))(v3, v0);
  v16 = *(v37 + 16);
  v35 = v10;
  v16(v8, v10, v4);
  sub_10001345C(&qword_10002E250, &type metadata accessor for SHA256Digest);
  v36 = v4;
  result = dispatch thunk of Sequence.makeIterator()();
  v18 = v39;
  v19 = v40;
  v20 = *(v39 + 2);
  v21 = _swiftEmptyArrayStorage;
  if (v40 == v20)
  {
LABEL_2:

    v39 = v21;
    sub_100001DC4(&qword_10002E260, &qword_100020CB8);
    sub_1000134A4();
    v22 = BidirectionalCollection<>.joined(separator:)();
    sub_1000106F8(v34, v33);

    (*(v37 + 8))(v35, v36);
    return v22;
  }

  else
  {
    v38 = xmmword_100020980;
    v23 = v40;
    while ((v19 & 0x8000000000000000) == 0)
    {
      if (v23 >= *(v18 + 2))
      {
        goto LABEL_13;
      }

      v24 = v18[v23 + 32];
      sub_100001DC4(&qword_10002E258, &qword_100020CB0);
      v25 = swift_allocObject();
      *(v25 + 16) = v38;
      *(v25 + 56) = &type metadata for UInt8;
      *(v25 + 64) = &protocol witness table for UInt8;
      *(v25 + 32) = v24;
      v26 = String.init(format:_:)();
      v28 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10001C354(0, *(v21 + 2) + 1, 1, v21);
        v21 = result;
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      if (v30 >= v29 >> 1)
      {
        result = sub_10001C354((v29 > 1), v30 + 1, 1, v21);
        v21 = result;
      }

      ++v23;
      *(v21 + 2) = v30 + 1;
      v31 = &v21[16 * v30];
      *(v31 + 4) = v26;
      *(v31 + 5) = v28;
      if (v20 == v23)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000106A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000106F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10001074C()
{
  result = qword_10002E160;
  if (!qword_10002E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E160);
  }

  return result;
}

unint64_t sub_1000107A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DC4(&qword_10002E220, &qword_100020B40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000364C(v4, &v11, &qword_10002E228, &qword_100020B48);
      v5 = v11;
      result = sub_10000EFC4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100012794(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *sub_1000108C8()
{
  v0 = [objc_opt_self() defaultHelper];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = 0;
  LODWORD(v2) = 1141309440;
  LODWORD(v3) = 1.0;
  v4 = [v0 safeImageFromImage:isa maxPixelDimension:&v8 scale:v2 error:v3];

  v5 = v8;
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void *sub_1000109F0()
{
  v0 = [objc_opt_self() defaultHelper];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 safeCSSFromData:isa error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100010B0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100010B4C()
{
  result = qword_10002E190;
  if (!qword_10002E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E190);
  }

  return result;
}

uint64_t sub_100010BA0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[2];
  v21 = v1[3];
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[4];
  v9 = v1[6];
  v19 = v1[5];
  v10 = (v1 + v6);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100013628;

  return sub_1000061B8(a1, v22, v21, v20, v19, v9, v1 + v5, v12);
}

uint64_t sub_100010D28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100010D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000DCD0;

  return sub_100009E3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100010E38(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013628;

  return sub_10000A3CC(v6, a1, v4, v5, v7);
}

uint64_t sub_100010EFC(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v56 - v12;
  v14 = __chkstk_darwin(v11);
  v57 = &v56 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = type metadata accessor for String.Encoding();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v60 = URL.path.getter();
  v61 = v26;
  static String.Encoding.utf8.getter();
  sub_100010B4C();
  StringProtocol.cString(using:)();
  (*(v22 + 8))(v25, v21);

  v27 = sandbox_extension_issue_file();

  if (v27)
  {
    String.init(utf8String:)();
    v29 = v28;
    v30 = type metadata accessor for URL();
    v31 = *(v30 - 8);
    v32 = v31;
    if (v29)
    {
      (*(v31 + 16))(v20, v58, v30);
      (*(v32 + 56))(v20, 0, 1, v30);
      sub_10000364C(v20, v18, &qword_10002E180, &unk_100020D20);
      if ((*(v32 + 48))(v18, 1, v30) == 1)
      {
        v34 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v33);
        v34 = v54;
        (*(v32 + 8))(v18, v30);
      }

      v55 = String._bridgeToObjectiveC()();
      (*(v59 + 16))(v59, v34, v55, 0);

      v53 = v20;
    }

    else
    {
      v47 = v57;
      (*(v31 + 56))(v57, 1, 1, v30);
      sub_10001074C();
      swift_allocError();
      *v48 = 2;
      sub_10000364C(v47, v13, &qword_10002E180, &unk_100020D20);
      v50 = 0;
      if ((*(v32 + 48))(v13, 1, v30) != 1)
      {
        URL._bridgeToObjectiveC()(v49);
        v50 = v51;
        (*(v32 + 8))(v13, v30);
      }

      v52 = _convertErrorToNSError(_:)();
      (*(v59 + 16))(v59, v50, 0, v52);

      v53 = v47;
    }

    sub_1000035A0(v53, &qword_10002E180, &unk_100020D20);
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003034(v35, qword_10002F838);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v36, v37, "Could not obtain sandbox access token. Error: %d", v38, 8u);
    }

    v39 = type metadata accessor for URL();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v10, 1, 1, v39);
    sub_10001074C();
    swift_allocError();
    *v41 = 2;
    sub_10000364C(v10, v7, &qword_10002E180, &unk_100020D20);
    v43 = 0;
    if ((*(v40 + 48))(v7, 1, v39) != 1)
    {
      URL._bridgeToObjectiveC()(v42);
      v43 = v44;
      (*(v40 + 8))(v7, v39);
    }

    v45 = _convertErrorToNSError(_:)();
    (*(v59 + 16))(v59, v43, 0, v45);

    return sub_1000035A0(v10, &qword_10002E180, &unk_100020D20);
  }
}

void sub_1000115CC(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, const void *a5)
{
  v131 = a1;
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v117 = &v112 - v11;
  v12 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  *&v120 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  *&v121 = &v112 - v17;
  v18 = __chkstk_darwin(v16);
  v114 = &v112 - v19;
  v20 = __chkstk_darwin(v18);
  v115 = &v112 - v21;
  __chkstk_darwin(v20);
  v116 = &v112 - v22;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v118 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v128 = &v112 - v28;
  v29 = __chkstk_darwin(v27);
  v113 = &v112 - v30;
  v31 = __chkstk_darwin(v29);
  v119 = &v112 - v32;
  __chkstk_darwin(v31);
  v34 = &v112 - v33;
  v35 = swift_allocObject();
  *(v35 + 16) = a5;
  _Block_copy(a5);
  v129 = a5;
  _Block_copy(a5);
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_100003034(v36, qword_10002F838);
  v38 = v24[2];
  v132 = a3;
  v124 = v24 + 2;
  v123 = v38;
  v38(v34, a3, v23);

  v122 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v127 = v35;
  v126 = v24;
  v125 = a2;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v130 = a4;
    v43 = v42;
    *&v139[0] = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_10000E3FC(v131, a2, v139);
    *(v43 + 12) = 2080;
    v44 = URL.absoluteString.getter();
    v46 = v45;
    v47 = v24[1];
    v47(v34, v23);
    v48 = sub_10000E3FC(v44, v46, v139);

    *(v43 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "Fetching logoData for brandURI %s with URL %s", v43, 0x16u);
    swift_arrayDestroy();
    v35 = v127;

    a4 = v130;
  }

  else
  {

    v47 = v24[1];
    v47(v34, v23);
  }

  v130 = v47;
  v49 = v132;
  v50 = URL.hasSecureScheme.getter();
  v51 = v128;
  if ((v50 & 1) == 0)
  {
    v69 = v119;
    v123(v119, v49, v23);
    v70 = v125;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *&v139[0] = swift_slowAlloc();
      *v73 = 136315394;
      *(v73 + 4) = sub_10000E3FC(v131, v70, v139);
      *(v73 + 12) = 2080;
      v74 = URL.absoluteString.getter();
      v76 = v75;
      v77 = v126;
      (v130)(v69, v23);
      v78 = sub_10000E3FC(v74, v76, v139);

      *(v73 + 14) = v78;
      v79 = v77;
      _os_log_impl(&_mh_execute_header, v71, v72, "logoFileURL() The brand %s is using the URL scheme which is not supported. URL: %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v79 = v126;
      (v130)(v69, v23);
    }

    v80 = v120;
    v81 = v121;
    (v79[7])(v121, 1, 1, v23);
    sub_10000E3A8();
    swift_allocError();
    *v82 = 4;
    v83 = v81;
    goto LABEL_16;
  }

  v52 = [objc_opt_self() currentConnection];
  if (v52)
  {
    v53 = v52;
    [v52 auditToken];
    v121 = v133;
    v120 = v134;

    v139[0] = v121;
    v139[1] = v120;
    v140 = 0;
    if ([*&a4[OBJC_IVAR___BSBrandServiceImplementation_entitlementVerifier] auditToken:v139 hasEntitlement:BSBrandLogoEntitlement])
    {
      v54 = sub_100010288();
      v56 = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_1000130C0;
      *(v57 + 24) = v35;
      *&v121 = v57;
      v58 = a4;
      v59 = *&a4[OBJC_IVAR___BSBrandServiceImplementation_cachedLogoDataSource];
      *&v133 = v131;
      *(&v133 + 1) = v125;
      v137 = 0x3A7A69623A6E7275;
      v138 = 0xE800000000000000;
      v135 = 0;
      v136 = 0xE000000000000000;
      sub_100010B4C();

      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v60 = v118;
      URL.appendingPathComponent(_:isDirectory:)();

      v119 = v54;
      *&v120 = v56;
      URL.appendingPathComponent(_:)();
      v61 = v126;
      v62 = v60;
      v63 = v130;
      (v130)(v62, v23);
      v64 = *(v59 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
      URL.path.getter();
      v65 = String._bridgeToObjectiveC()();

      v66 = [v64 fileExistsAtPath:v65];

      if (v66)
      {
        v67 = v116;
        (v61[4])(v116, v51, v23);
        v68 = 0;
      }

      else
      {
        (v63)(v51, v23);
        v68 = 1;
        v67 = v116;
      }

      (v61[7])(v67, v68, 1, v23);
      if ((v61[6])(v67, 1, v23) == 1)
      {
        sub_1000035A0(v67, &qword_10002E180, &unk_100020D20);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "Brand logo not found in cache. Will attempt to fetch from server.", v93, 2u);
        }

        v94 = type metadata accessor for TaskPriority();
        (*(*(v94 - 8) + 56))(v117, 1, 1, v94);
        v95 = v118;
        v123(v118, v132, v23);
        v96 = (*(v61 + 80) + 56) & ~*(v61 + 80);
        v97 = (v25 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
        v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
        v99 = swift_allocObject();
        *(v99 + 2) = 0;
        *(v99 + 3) = 0;
        v100 = v131;
        *(v99 + 4) = v58;
        *(v99 + 5) = v100;
        *(v99 + 6) = v125;
        (v61[4])(&v99[v96], v95, v23);
        v101 = &v99[v97];
        v102 = v120;
        *v101 = v119;
        *(v101 + 1) = v102;
        v103 = &v99[v98];
        v104 = v121;
        *v103 = sub_100013634;
        v103[1] = v104;
        v105 = &v99[(v98 + 23) & 0xFFFFFFFFFFFFFFF8];
        v106 = v127;
        *v105 = sub_1000130C0;
        v105[1] = v106;

        v107 = v58;
        sub_100006C08(0, 0, v117, &unk_100020C58, v99);

        v108 = v129;
      }

      else
      {

        v109 = v113;
        (v61[4])(v113, v67, v23);
        v110 = v63;
        v108 = v129;
        _Block_copy(v129);
        sub_100010EFC(v109, v108);
        _Block_release(v108);

        (v110)(v109, v23);
      }

      v90 = v108;
LABEL_26:
      _Block_release(v90);
      return;
    }

    v79 = v126;
    v81 = v115;
    (v126[7])(v115, 1, 1, v23);
    sub_10001074C();
    swift_allocError();
    *v84 = 3;
    v83 = v81;
    v80 = v114;
LABEL_16:
    sub_10000364C(v83, v80, &qword_10002E180, &unk_100020D20);
    v86 = 0;
    if ((v79[6])(v80, 1, v23) != 1)
    {
      URL._bridgeToObjectiveC()(v85);
      v86 = v87;
      (v130)(v80, v23);
    }

    v88 = _convertErrorToNSError(_:)();
    v89 = v129;
    (*(v129 + 2))(v129, v86, 0, v88);

    sub_1000035A0(v81, &qword_10002E180, &unk_100020D20);

    v90 = v89;
    goto LABEL_26;
  }

  v111 = v129;
  _Block_release(v129);
  _Block_release(v111);
  __break(1u);
}

unint64_t sub_1000123AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DC4(&qword_10002E230, &qword_100020C80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000F058(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1000124C0(uint64_t a1)
{
  v2 = type metadata accessor for OnDeviceSupportBrandDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001252C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for BrandServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrandServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100012740()
{
  result = qword_10002E218;
  if (!qword_10002E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E218);
  }

  return result;
}

_OWORD *sub_100012794(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000127A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_10000D0F8(v2, v3, v5, v4);
}

uint64_t sub_100012868()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_10000DB00(v2, v3, v5);
}

uint64_t sub_100012928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013628;

  return sub_10000DBE8(a1, v4, v5, v7);
}

uint64_t sub_1000129F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013628;

  return sub_10000E0C0(a1, v5);
}

uint64_t sub_100012AAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_10000C628(v2, v3, v5, v4);
}

uint64_t sub_100012B6C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100012BBC()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000DCD0;

  return sub_10000A844(v2, v3, v6, v4, v5);
}

uint64_t sub_100012C84()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012CD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_1000094DC(v2, v3, v5, v4);
}

uint64_t sub_100012D98()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012DD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100013628;

  return sub_10000879C(v2, v3);
}

uint64_t sub_100012E84()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012ECC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100013628;

  return sub_100008254(v2, v3, v4);
}

uint64_t sub_100012F80()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012FC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100013628;

  return sub_100007BD0(v2, v3, v5, v4);
}

uint64_t sub_100013088()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000130CC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  v9 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6 + 8);

  v12 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_1000131E8()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100013240()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100013628;

  return sub_100004D7C(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_10001331C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10001335C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000133A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013628;

  return sub_10000E1B8(a1, v5);
}

uint64_t sub_10001345C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000134A4()
{
  result = qword_10002E268;
  if (!qword_10002E268)
  {
    sub_100001E70(&qword_10002E260, &qword_100020CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E268);
  }

  return result;
}

void *sub_100013508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10000EEA4(sub_10001359C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100013570(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000106F8(a1, a2);
  }

  return a1;
}

uint64_t sub_100013584(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013638()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002DCC0 != -1)
  {
    swift_once();
  }

  v7 = sub_100014314();
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  if (!*(v8 + 16))
  {

    goto LABEL_8;
  }

  v12 = sub_10000F058(v9, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v17 = *(v1 + 16);
    v18 = *(v1 + 24);

    return v17;
  }

  v15 = (*(v8 + 56) + 16 * v12);
  v17 = *v15;
  v16 = v15[1];

  return v17;
}

uint64_t sub_1000137D8()
{
  v1 = *v0;
  v2 = 0x495255646E617262;
  v3 = 0x6B6E694C70656564;
  if (v1 != 5)
  {
    v3 = 0x6B6361426C6C6166;
  }

  v4 = 0x4C52556F676F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6C646E7542707061;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D614E646E617262;
  if (v1 != 1)
  {
    v5 = 0x6966697265567369;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000138D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100017408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100013914(uint64_t a1)
{
  v2 = sub_100014C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013950(uint64_t a1)
{
  v2 = sub_100014C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001398C(void *a1)
{
  v3 = v1;
  v5 = sub_100001DC4(&qword_10002E478, &qword_100020DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_10001335C(a1, a1[3]);
  sub_100014C50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v31 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v30 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 32);
    v29 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = type metadata accessor for OnDeviceSupportBrandDetails();
    v17 = v16[7];
    v28 = 3;
    type metadata accessor for URL();
    sub_1000169FC(&qword_10002E480, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v3 + v16[8]);
    v19 = *v18;
    v20 = v18[1];
    v27 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v16[9];
    v26 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v16[10];
    v25 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100013C54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v40 - v8;
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v45 = sub_100001DC4(&qword_10002E460, &qword_100020DA0);
  v43 = *(v45 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v45);
  v14 = v40 - v13;
  v15 = type metadata accessor for OnDeviceSupportBrandDetails();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v47 = a1;
  sub_10001335C(a1, v19);
  sub_100014C50();
  v21 = v14;
  v22 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_100003600(v47);
  }

  v23 = v11;
  v25 = v43;
  v24 = v44;
  v54 = 0;
  *v18 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v18 + 1) = v27;
  v41 = v27;
  v53 = 1;
  *(v18 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v18 + 3) = v28;
  v52 = 2;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = 0;
  v18[32] = v29 & 1;
  v30 = type metadata accessor for URL();
  v51 = 3;
  v40[2] = sub_1000169FC(&qword_10002E470, &type metadata accessor for URL);
  v41 = v23;
  v32 = v45;
  v31 = v46;
  v40[1] = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v31)
  {
    (*(v25 + 8))(v21, v32);
    sub_100003600(v47);
    v38 = *(v18 + 1);

    v39 = *(v18 + 3);
  }

  else
  {
    v33 = v15;
    sub_1000168D8(v41, &v18[v15[7]], &qword_10002E180, &unk_100020D20);
    v50 = 4;
    v46 = 0;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = &v18[v15[8]];
    *v35 = v34;
    v35[1] = v36;
    v49 = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000168D8(v9, &v18[v15[9]], &qword_10002E180, &unk_100020D20);
    v48 = 6;
    v37 = v42;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v25 + 8))(v21, v45);
    sub_1000168D8(v37, &v18[v33[10]], &qword_10002E180, &unk_100020D20);
    sub_100014CA4(v18, v24);
    sub_100003600(v47);
    return sub_1000124C0(v18);
  }
}

id sub_100014260()
{
  type metadata accessor for OnDeviceSupportBrandManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = [objc_allocWithZone(NSLock) init];
  *(v0 + 32) = result;
  *(v0 + 40) = 1;
  qword_10002F820 = v0;
  return result;
}

uint64_t sub_100014314()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_100016F44();
    v3 = *(v0 + 40);
    *(v0 + 40) = v2;

    sub_100017114(v3);
  }

  sub_100017124(v1);
  return v2;
}

uint64_t sub_100014370()
{
  v1 = *(v0 + 32);
  [v1 lock];
  if ((*(v0 + 24) & 1) == 0)
  {
    v3 = sub_100016A44(0xD000000000000015, 0x800000010001F570, &qword_10002E4B0, &qword_100020DE0, sub_100016940);
    swift_beginAccess();
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;

    v5 = sub_1000158AC();
    if (v5)
    {
      v7 = v5;
      v9 = sub_1000142C0();
      if (*v8)
      {
        v10 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v10;
        *v10 = 0x8000000000000000;
        sub_1000164E4(v7, sub_100014D08, 0, isUniquelyReferenced_nonNull_native, &v13);

        v12 = *v10;
        *v10 = v13;

        (v9)(v14, 0);
      }

      else
      {

        (v9)(v14, 0);
      }
    }

    *(v0 + 24) = 1;
  }

  swift_beginAccess();
  v2 = *(v0 + 16);

  [v1 unlock];
  return v2;
}

uint64_t sub_1000146A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DC4(&qword_10002E4D8, &qword_100020DF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_100014370();
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (!*(v8 + 16) || (v10 = sub_10000F058(a1, a2), (v11 & 1) == 0))
  {

LABEL_6:
    v17 = type metadata accessor for OnDeviceSupportBrandDetails();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v16 = 0;
    goto LABEL_7;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for OnDeviceSupportBrandDetails();
  v15 = *(v14 - 8);
  sub_100014CA4(v13 + *(v15 + 72) * v12, v7);

  v16 = 1;
  (*(v15 + 56))(v7, 0, 1, v14);
LABEL_7:
  sub_1000035A0(v7, &qword_10002E4D8, &qword_100020DF0);
  return v16;
}

uint64_t sub_100014844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014370();
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16))
    {
      v8 = sub_10000F058(a1, a2);
      if (v9)
      {
        v10 = v8;
        v11 = *(v7 + 56);
        v12 = type metadata accessor for OnDeviceSupportBrandDetails();
        sub_100014CA4(v11 + *(*(v12 - 8) + 72) * v10, a3);
      }
    }
  }

  sub_10000E3A8();
  swift_allocError();
  *v14 = 5;
  return swift_willThrow();
}

uint64_t sub_10001491C()
{
  v1 = *(v0 + 16);

  sub_100017114(*(v0 + 40));

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10001499C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100014A6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OnDeviceSupportBrandDetails()
{
  result = qword_10002E408;
  if (!qword_10002E408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014B68()
{
  sub_100014BF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100014BF8()
{
  if (!qword_10002E418)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10002E418);
    }
  }
}

unint64_t sub_100014C50()
{
  result = qword_10002E468;
  if (!qword_10002E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E468);
  }

  return result;
}

uint64_t sub_100014CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceSupportBrandDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014D08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_100001DC4(&qword_10002E4A0, &qword_100020DC8) + 48);
  v5 = sub_100001DC4(&qword_10002E490, &qword_100020DB8);
  v7 = *a1;
  v6 = a1[1];
  sub_100014CA4(a1 + v4, a2 + *(v5 + 48));
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_100014D94(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for OnDeviceSupportBrandDetails();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100001DC4(&qword_10002E498, &qword_100020DC0);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100016810(v31, v45);
      }

      else
      {
        sub_100014CA4(v31, v45);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100016810(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_1000150D0()
{
  v1 = v0;
  v2 = type metadata accessor for OnDeviceSupportBrandDetails();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001DC4(&qword_10002E498, &qword_100020DC0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_100014CA4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_100016810(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_100015300(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000F058(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000150D0();
      goto LABEL_7;
    }

    sub_100014D94(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_10000F058(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for OnDeviceSupportBrandDetails() - 8) + 72) * v12;

    return sub_100016874(a1, v20);
  }

LABEL_13:
  sub_100015464(v12, a2, a3, a1, v18);
}

uint64_t sub_100015464(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for OnDeviceSupportBrandDetails();
  result = sub_100016810(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000154FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001DC4(&qword_10002E4A0, &qword_100020DC8);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for OnDeviceSupportBrandDetails();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001DC4(&qword_10002E4A8, &unk_100020DD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = (&v44 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v44 = v6;
  v49 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_100014CA4(*(v19 + 56) + *(v46 + 72) * v29, v10);
    v33 = v48;
    v34 = *(v48 + 48);
    *v18 = v32;
    v18[1] = v31;
    v35 = v10;
    v36 = v33;
    sub_100016810(v35, v18 + v34);
    v37 = v47;
    (*(v47 + 56))(v18, 0, 1, v36);

    v27 = v24;
    v38 = v37;
    a1 = v45;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v49;
    v1[3] = v27;
    v1[4] = v28;
    v39 = v1[5];
    v40 = v1[6];
    sub_1000168D8(v18, v15, &qword_10002E4A8, &unk_100020DD0);
    v41 = 1;
    if ((*(v38 + 48))(v15, 1, v36) != 1)
    {
      v42 = v44;
      sub_1000168D8(v15, v44, &qword_10002E4A0, &qword_100020DC8);
      v39(v42);
      sub_1000035A0(v42, &qword_10002E4A0, &qword_100020DC8);
      v41 = 0;
    }

    v43 = sub_100001DC4(&qword_10002E490, &qword_100020DB8);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v38 = v47;
        v36 = v48;
        (*(v47 + 56))(&v44 - v17, 1, 1, v48);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1000158AC()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OnDeviceSupportBrandDetails();
  v8 = *(*(v7 - 1) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v66 - v12;
  if (!_BSIsInternalInstall())
  {
    return 0;
  }

  v86 = v3;
  v14 = [objc_allocWithZone(NSUserDefaults) init];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    if (swift_dynamicCast())
    {
      v77 = v80;
      v78 = v81;
      v79 = v0;
      v18 = [objc_allocWithZone(NSUserDefaults) init];
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 objectForKey:v19];

      if (v20)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v84 = v82;
      v85 = v83;
      if (*(&v83 + 1))
      {
        if (swift_dynamicCast())
        {
          v21 = v81;
          v76 = v80;
          goto LABEL_18;
        }
      }

      else
      {
        sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
      }

      v76 = 0;
      v21 = 0xE000000000000000;
LABEL_18:
      v75 = v21;
      v22 = [objc_allocWithZone(NSUserDefaults) init];
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 objectForKey:v23];

      if (v24)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v84 = v82;
      v85 = v83;
      if (*(&v83 + 1))
      {
        if (swift_dynamicCast())
        {
          v25 = v81;
          v74 = v80;
          goto LABEL_26;
        }
      }

      else
      {
        sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
      }

      v74 = 0;
      v25 = 0xE000000000000000;
LABEL_26:
      v73 = v25;
      v26 = [objc_allocWithZone(NSUserDefaults) init];
      v27 = String._bridgeToObjectiveC()();
      v28 = [v26 objectForKey:v27];

      if (v28)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v84 = v82;
      v85 = v83;
      v72 = v2;
      if (*(&v83 + 1))
      {
        if (swift_dynamicCast())
        {
          v29 = v80;
          v30 = v81;
          goto LABEL_34;
        }
      }

      else
      {
        sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
      }

      v30 = 0xE500000000000000;
      v29 = 0x65736C6166;
LABEL_34:
      v71 = v29;
      v31 = [objc_allocWithZone(NSUserDefaults) init];
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 objectForKey:v32];

      if (v33)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v84 = v82;
      v85 = v83;
      v70 = v6;
      if (*(&v83 + 1))
      {
        if (swift_dynamicCast())
        {
          v69 = v80;
          goto LABEL_42;
        }
      }

      else
      {
        sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
      }

      v69 = 0;
LABEL_42:
      v34 = [objc_allocWithZone(NSUserDefaults) init];
      v35 = String._bridgeToObjectiveC()();
      v36 = [v34 objectForKey:v35];

      if (v36)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v84 = v82;
      v85 = v83;
      if (*(&v83 + 1))
      {
        if (swift_dynamicCast())
        {
          v37 = v81;
          v68 = v80;
          goto LABEL_50;
        }
      }

      else
      {
        sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
      }

      v68 = 0;
      v37 = 0xE000000000000000;
LABEL_50:
      v67 = v37;
      v38 = [objc_allocWithZone(NSUserDefaults) init];
      v39 = String._bridgeToObjectiveC()();
      v40 = [v38 objectForKey:v39];

      if (v40)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v84 = v82;
      v85 = v83;
      if (*(&v83 + 1))
      {
        if (swift_dynamicCast())
        {
          v66 = v80;
LABEL_58:
          v41 = objc_allocWithZone(NSUserDefaults);
          v42 = [v41 init];
          v43 = String._bridgeToObjectiveC()();
          v44 = [v42 objectForKey:v43];

          if (v44)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v82 = 0u;
            v83 = 0u;
          }

          v84 = v82;
          v85 = v83;
          if (*(&v83 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
          }

          if (v71 == 1702195828 && v30 == 0xE400000000000000)
          {

            v45 = 1;
          }

          else
          {
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v2 = v72;
          v46 = &v13[v7[7]];
          URL.init(string:)();

          v47 = &v13[v7[9]];
          URL.init(string:)();

          v48 = &v13[v7[10]];
          URL.init(string:)();

          v49 = v75;
          *v13 = v76;
          *(v13 + 1) = v49;
          v50 = v73;
          *(v13 + 2) = v74;
          *(v13 + 3) = v50;
          v13[32] = v45 & 1;
          v51 = &v13[v7[8]];
          v52 = v67;
          *v51 = v68;
          *(v51 + 1) = v52;
          sub_100014CA4(v13, v11);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v84 = &_swiftEmptyDictionarySingleton;
          sub_100015300(v11, v77, v78, isUniquelyReferenced_nonNull_native);

          sub_1000124C0(v13);
          v17 = v84;
          v1 = v79;
          v6 = v70;
          goto LABEL_69;
        }
      }

      else
      {
        sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
      }

      v66 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
  }

  v17 = &_swiftEmptyDictionarySingleton;
LABEL_69:
  v54 = [objc_allocWithZone(NSUserDefaults) init];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 objectForKey:v55];

  if (v56)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v84 = v82;
  v85 = v83;
  if (*(&v83 + 1))
  {
    if (swift_dynamicCast())
    {
      static String.Encoding.utf8.getter();
      v57 = String.data(using:allowLossyConversion:)();
      v59 = v58;

      (*(v86 + 8))(v6, v2);
      if (v59 >> 60 != 15)
      {
        v60 = type metadata accessor for JSONDecoder();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        sub_100001DC4(&qword_10002E4B0, &qword_100020DE0);
        sub_100016940();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        if (v1)
        {

          sub_100013570(v57, v59);
        }

        else
        {
          v64 = v84;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          *&v84 = v17;
          sub_1000164E4(v64, sub_100014D08, 0, v65, &v84);

          sub_100013570(v57, v59);
          return v84;
        }
      }
    }
  }

  else
  {
    sub_1000035A0(&v84, &qword_10002E168, &qword_1000209A8);
  }

  return v17;
}

uint64_t sub_1000164E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for OnDeviceSupportBrandDetails();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001DC4(&qword_10002E488, &qword_100020DB0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (v42 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v42[3] = a1;
  v42[4] = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v42[5] = v19;
  v42[6] = 0;
  v42[7] = v22 & v20;
  v42[8] = a2;
  v42[9] = a3;

  v42[1] = a3;

  while (1)
  {
    sub_1000154FC(v17);
    v23 = sub_100001DC4(&qword_10002E490, &qword_100020DB8);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      sub_100016808();
    }

    v25 = *v17;
    v24 = v17[1];
    sub_100016810(v17 + *(v23 + 48), v13);
    v26 = *a5;
    v28 = sub_10000F058(v25, v24);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1000150D0();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_100016874(v13, v36[7] + *(v43 + 72) * v28);
      a4 = 1;
    }

    else
    {
      sub_100014D94(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_10000F058(v25, v24);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v25;
      v37[1] = v24;
      sub_100016810(v13, v36[7] + *(v43 + 72) * v28);
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_20;
      }

      v36[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100016810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceSupportBrandDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceSupportBrandDetails();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000168D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DC4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100016940()
{
  result = qword_10002E4B8;
  if (!qword_10002E4B8)
  {
    sub_100001E70(&qword_10002E4B0, &qword_100020DE0);
    sub_1000169FC(&qword_10002E4C0, type metadata accessor for OnDeviceSupportBrandDetails);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4B8);
  }

  return result;
}

uint64_t sub_1000169FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016A44(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v7 = sub_100001DC4(&qword_10002E180, &unk_100020D20);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() bundleWithIdentifier:v19];

  if (v20)
  {
    v45 = a1;
    v46 = a2;
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 URLForResource:v21 withExtension:v22];

    if (v23)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v15 + 56))(v11, 0, 1, v14);
    }

    else
    {
      (*(v15 + 56))(v11, 1, 1, v14);
    }

    v24 = v47;
    sub_1000168D8(v11, v13, &qword_10002E180, &unk_100020D20);
    v25 = (*(v15 + 48))(v13, 1, v14);
    a1 = v45;
    a2 = v46;
    if (v25 != 1)
    {
      (*(v15 + 32))(v18, v13, v14);
      v35 = Data.init(contentsOf:options:)();
      if (v24)
      {
        return (*(v15 + 8))(v18, v14);
      }

      v37 = v35;
      v38 = v36;
      v39 = type metadata accessor for PropertyListDecoder();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100001DC4(v42, v43);
      v44();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      (*(v15 + 8))(v18, v14);

      sub_1000106F8(v37, v38);
      return v48;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_1000035A0(v13, &qword_10002E180, &unk_100020D20);
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003034(v26, qword_10002F838);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = a2;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = a1;
    v33 = v31;
    v48 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10000E3FC(v32, v29, &v48);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to load plist file: %s.plist", v30, 0xCu);
    sub_100003600(v33);
  }

  return 0;
}

uint64_t sub_100017114(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100017124(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_100017134()
{
  result = qword_10002E4D0;
  if (!qword_10002E4D0)
  {
    sub_100001E70(&qword_10002E4C8, &qword_100020DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeviceSupportBrandDetails.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnDeviceSupportBrandDetails.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017304()
{
  result = qword_10002E4E0;
  if (!qword_10002E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4E0);
  }

  return result;
}

unint64_t sub_10001735C()
{
  result = qword_10002E4E8;
  if (!qword_10002E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4E8);
  }

  return result;
}

unint64_t sub_1000173B4()
{
  result = qword_10002E4F0;
  if (!qword_10002E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4F0);
  }

  return result;
}

uint64_t sub_100017408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x495255646E617262 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646E617262 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697265567369 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xEB000000004C5255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B6361426C6C6166 && a2 == 0xEB000000004C5255)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id sub_1000176AC()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults);
  }

  else
  {
    v4 = [objc_opt_self() sharedDefaults];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100017728()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___isInternalInstall;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___isInternalInstall);
  if (v2 == 2)
  {
    LOBYTE(v2) = _BSIsInternalInstall();
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_10001777C()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager);
  }

  else
  {
    v4 = sub_100017670();
    v5 = sub_100017684();
    v6 = sub_100017698();
    v7 = [objc_allocWithZone(BCSCacheManager) initWithBloomFilterShardCache:v4 domainItemCache:v5 itemCache:v6];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100017840()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory);
  }

  else
  {
    v4 = sub_10001782C();
    v5 = [objc_allocWithZone(BCSMetricFactory) initWithMeasurementFactory:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1000178F8(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}