uint64_t sub_1000179B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for ShardServiceDomain();
    swift_allocObject();
    v7 = v2;
    v5 = sub_10001CE98(a2);
    v8 = *(v2 + v3);
    *(v7 + v3) = v5;
  }

  return v5;
}

id sub_100017A3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryController);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = v0;
    v29 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryController;
    sub_100017964();
    v28 = sub_10001CB14();

    sub_100017974();
    v27 = sub_10001CB14();

    sub_100017984();
    v26 = sub_10001CB14();

    sub_100017994();
    v25 = sub_10001CB14();

    v4 = sub_10001777C();
    v5 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___chatSuggestShardServiceDomain);
    v6 = *(v3 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager);

    v7 = sub_10001C97C();

    v8 = *(v3 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessLinkShardServiceDomain);

    v9 = sub_10001C97C();

    v10 = *(v3 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessCallerShardServiceDomain);

    v20 = sub_10001C97C();

    v11 = *(v3 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessEmailShardServiceDomain);

    v21 = sub_10001C97C();

    sub_1000179A4();
    v22 = sub_10001C97C();

    v23 = sub_1000176AC();
    v24 = sub_100017840();
    v19 = v9;
    v12 = v9;
    v18 = v7;
    v13 = v7;
    v14 = v6;
    v2 = [objc_allocWithZone(BCSBusinessQueryController) initWithChatSuggestMegashardFetcher:v28 businessLinkMegashardFetcher:v27 businessCallerMegashardFetcher:v26 businessEmailMegashardFetcher:v25 shardCache:v4 cacheManager:v6 chatSuggestRemoteFetcher:v18 businessLinkRemoteFetcher:v19 businessCallerRemoteFetcher:v20 businessEmailRemoteFetcher:v21 webPresentmentRemoteFetcher:v22 userDefaults:v23 metricFactory:v24];

    v15 = *(v3 + v29);
    *(v3 + v29) = v2;
    v16 = v2;
    sub_1000194C4(v15);
    v1 = 1;
  }

  sub_100019544(v1);
  return v2;
}

uint64_t sub_100017CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100001DC4(&qword_10002E120, &qword_100020FC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v11 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessConnectAssetDataSource;
  swift_beginAccess();
  sub_1000194D4(v2 + v11, v10);
  v12 = type metadata accessor for BrandAssetNetworkFetcher();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_1000035A0(v10, &qword_10002E120, &qword_100020FC0);
  v14 = type metadata accessor for NetworkProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = NetworkProvider.init(customURLCache:waitsForConnectivity:)();
  v19[3] = v14;
  v19[4] = &protocol witness table for NetworkProvider;
  v19[0] = v17;
  BrandAssetNetworkFetcher.init(networkProvider:)();
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_1000036B4(v8, v2 + v11);
  return swift_endAccess();
}

uint64_t sub_100017EE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource;
  if (*(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource);
  }

  else
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 brandLogoCacheURL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for BrandLogoPersistentStore();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v7 = swift_allocObject();
    v13 = OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager;
    *(v7 + v13) = [objc_opt_self() defaultManager];
    *(v7 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_maxNumberOfUnusedDays) = 0x403E000000000000;
    (*(v2 + 32))(v7 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_cacheURL, v5, v1);
    v14 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

id sub_100018098()
{
  v1 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener);
  }

  else
  {
    v4 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:kBCBusinessChatMachServiceName];
    [v4 setDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100018130()
{
  v1 = v0;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting businessservicesd daemon", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17businessservicesd6Daemon_sandboxInitialized;
  if (*(v1 + OBJC_IVAR____TtC17businessservicesd6Daemon_sandboxInitialized) != 1)
  {
    (*((swift_isaMask & *v1) + 0x358))();
    *(v1 + v6) = 1;
  }

  (*((swift_isaMask & *v1) + 0x330))();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Listening for incoming connections", v9, 2u);
  }

  v10 = sub_100018098();
  [v10 resume];

  v11 = [objc_opt_self() mainRunLoop];
  [v11 run];

  sub_100018EB8();
}

id sub_100018388()
{
  result = [objc_allocWithZone(type metadata accessor for iOSDaemon()) init];
  qword_10002F828 = result;
  return result;
}

uint64_t sub_1000183C0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_100001DC4(&unk_10002E6F0, &qword_100020FB8);
  v3 = static _SetStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_10000349C(0, &qword_10002E678, NSObject_ptr);
  sub_100019404();
  result = Set.Iterator.init(_cocoa:)();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_34:
      sub_100016808();

      return v3;
    }

    *&v27 = v16;
    sub_10000349C(0, &qword_10002E678, NSObject_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_10000349C(0, &qword_10002E678, NSObject_ptr);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_10001873C(void *a1)
{
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003034(v2, qword_10002F838);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Connection invalidated: %@", v5, 0xCu);
    sub_1000035A0(v6, &qword_10002E240, &qword_100020FB0);
  }
}

uint64_t sub_100018888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100018988()
{
  v1 = &v0[OBJC_IVAR____TtC17businessservicesd6Daemon_bundleId];
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x800000010001FAE0;
  v0[OBJC_IVAR____TtC17businessservicesd6Daemon_sandboxInitialized] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___shardStore] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___domainShardStore] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___itemCache] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___userDefaults] = 0;
  v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___isInternalInstall] = 2;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryOperationFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cacheManager] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___measurementFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___metricFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___bloomFilterExtractor] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___operationGroupFactory] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___chatSuggestShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessLinkShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessCallerShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessEmailShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___webPresentmentShardServiceDomain] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___queryController] = 1;
  v2 = OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___businessConnectAssetDataSource;
  v3 = type metadata accessor for BrandAssetNetworkFetcher();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___cachedLogoDataSource] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer] = 0;
  *&v0[OBJC_IVAR____TtC17businessservicesd6Daemon____lazy_storage___xpcListener] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for Daemon();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100018B60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Daemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_10002DCC8 != -1)
  {
    swift_once();
  }

  sub_100018130();
  return 0;
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_10002E638;
  if (!qword_10002E638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018DD8()
{
  sub_100002FDC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100018EB8()
{
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003034(v0, qword_10002F838);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Daemon exiting", v2, 2u);
  }
}

uint64_t sub_100018FA0(void *a1)
{
  v2 = v1;
  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003034(v4, qword_10002F838);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Incoming XPC connection: %@", v8, 0xCu);
    sub_1000035A0(v9, &qword_10002E240, &qword_100020FB0);
  }

  sub_100001DC4(&qword_10002E650, &unk_100020900);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000208B0;
  v12 = sub_10000349C(0, &qword_10002E658, NSArray_ptr);
  *(v11 + 56) = sub_100001DC4(&qword_10002E660, &qword_100020FA0);
  *(v11 + 32) = v12;
  v13 = sub_10000349C(0, &qword_10002E668, BCSBusinessEmailIdentifier_ptr);
  *(v11 + 88) = sub_100001DC4(&qword_10002E670, &qword_100020FA8);
  *(v11 + 64) = v13;
  v14 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithArray:isa];

  sub_10000349C(0, &qword_10002E678, NSObject_ptr);
  sub_100019404();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = objc_opt_self();
  v19 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL____TtP17businessservicesd24XPCDaemonServerInterface_];
  [v5 setExportedInterface:v19];

  v20 = [v5 exportedInterface];
  if (v20)
  {
    v21 = v20;
    sub_1000183C0(v17);

    v22 = Set._bridgeToObjectiveC()().super.isa;

    [v21 setClasses:v22 forSelector:"fetchBusinessMetadataForEmails:forClientBundleID:requestId:completion:" argumentIndex:0 ofReply:0];
  }

  else
  {
  }

  [v5 setExportedObject:*(v2 + OBJC_IVAR____TtC17businessservicesd6Daemon_XPCServer)];
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  v28[4] = sub_1000194A4;
  v28[5] = v23;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  v28[2] = sub_100018888;
  v28[3] = &unk_100029650;
  v24 = _Block_copy(v28);
  v25 = v5;

  [v25 setInvalidationHandler:v24];
  _Block_release(v24);
  v26 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL___BCSXPCDaemonBusinessEmailClientInterface];
  [v25 setRemoteObjectInterface:v26];

  [v25 resume];
  return 1;
}

unint64_t sub_100019404()
{
  result = qword_10002E680;
  if (!qword_10002E680)
  {
    sub_10000349C(255, &qword_10002E678, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E680);
  }

  return result;
}

uint64_t sub_10001946C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000194AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000194C4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000194D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DC4(&qword_10002E120, &qword_100020FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100019544(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100019554()
{
  v0 = type metadata accessor for Logger();
  sub_1000195C8(v0, qword_10002F838);
  sub_100003034(v0, qword_10002F838);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000195C8(uint64_t a1, uint64_t *a2)
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

void *sub_10001962C(uint64_t a1)
{
  sub_1000199D4(0, 2, 0);
  if ((a1 - 1) > 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v2 = 0xEB00000000747365;
  v3 = 0x7373656E69737562;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = 0xEE0072656C6C6163;
      goto LABEL_12;
    }

    if (a1 == 4)
    {
      v4 = 0xED00006C69616D65;
      goto LABEL_12;
    }

LABEL_9:
    v5 = 0x7373656E69737562;
    v3 = 0x6573657270626577;
    v4 = 0xEE00746E656D746ELL;
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v5 = 0x7373656E69737562;
    v3 = 0x6767757374616863;
    v4 = 0xEB00000000747365;
    goto LABEL_13;
  }

  if (a1 != 2)
  {
    goto LABEL_9;
  }

  v4 = 0xED0000736B6E696CLL;
LABEL_12:
  v5 = 0x7373656E69737562;
LABEL_13:

  v6._countAndFlagsBits = v3;
  v6._object = v4;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = &off_10001EF10;
  String.append(_:)(v7);

  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  if (v9 >= v8 >> 1)
  {
    sub_1000199D4((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  *(v10 + 4) = 0xD00000000000001CLL;
  *(v10 + 5) = 0x800000010001FB10;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v11 = 0x72656C6C6163;
      goto LABEL_25;
    }

    if (a1 == 4)
    {
      v2 = 0xED00006C69616D65;
      goto LABEL_26;
    }

LABEL_22:
    v5 = 0x6573657270626577;
    v11 = 0x746E656D746ELL;
LABEL_25:
    v2 = (v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
    goto LABEL_26;
  }

  if (a1 == 1)
  {
    v5 = 0x6767757374616863;
    goto LABEL_26;
  }

  if (a1 != 2)
  {
    goto LABEL_22;
  }

  v2 = 0xED0000736B6E696CLL;
LABEL_26:

  v12._countAndFlagsBits = v5;
  v12._object = v2;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = "arOrWifi.megashard";
  String.append(_:)(v13);

  v15 = _swiftEmptyArrayStorage[2];
  v14 = _swiftEmptyArrayStorage[3];
  if (v15 >= v14 >> 1)
  {
    sub_1000199D4((v14 > 1), v15 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v15 + 1;
  v16 = &_swiftEmptyArrayStorage[2 * v15];
  *(v16 + 4) = 0xD00000000000001CLL;
  *(v16 + 5) = 0x800000010001FB10;
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *sub_1000199D4(char *a1, int64_t a2, char a3)
{
  result = sub_1000199F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000199F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DC4(&qword_10002E7C0, &unk_100021110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100019B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v41 - v12;
  v41[0] = a1;
  v42[0] = a1;
  v42[1] = a2;
  v43 = a2;
  v41[4] = 0x3A7A69623A6E7275;
  v41[5] = 0xE800000000000000;
  v41[2] = 0;
  v41[3] = 0xE000000000000000;
  sub_100010B4C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.appendingPathComponent(_:isDirectory:)();

  URL.appendingPathComponent(_:)();
  v14 = *(v7 + 8);
  v14(v11, v6);
  URL.path.getter();
  v14(v13, v6);
  v15 = *(v3 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 fileExistsAtPath:v16];

  if (!v17)
  {

    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003034(v23, qword_10002F838);
    v24 = v43;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42[0] = v17;
      *v27 = 136315138;
      *(v27 + 4) = sub_10000E3FC(v41[0], v24, v42);
      _os_log_impl(&_mh_execute_header, v25, v26, "No cached item found for brand URI: %s", v27, 0xCu);
      sub_100003600(v17);
    }

    goto LABEL_11;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [v15 contentsAtPath:v18];

  if (!v19)
  {

LABEL_11:
    sub_10001074C();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    return v17;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v41[1];
  sub_10001BD54();
  if (v22)
  {
    sub_1000106F8(v17, v21);

    return v17;
  }

  if (qword_10002DCD0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100003034(v30, qword_10002F838);
  sub_1000106A4(v17, v21);
  v31 = v43;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v32, v33))
  {
    sub_1000106F8(v17, v21);
LABEL_28:

    return v17;
  }

  v34 = swift_slowAlloc();
  result = swift_slowAlloc();
  v35 = result;
  v42[0] = result;
  *v34 = 134218242;
  v36 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v36 != 2)
    {
      v37 = 0;
      goto LABEL_27;
    }

    v39 = v17[2];
    v38 = v17[3];
    v40 = __OFSUB__(v38, v39);
    v37 = v38 - v39;
    if (!v40)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v36)
  {
    v37 = BYTE6(v21);
LABEL_27:
    *(v34 + 4) = v37;
    sub_1000106F8(v17, v21);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_10000E3FC(v41[0], v31, v42);
    _os_log_impl(&_mh_execute_header, v32, v33, "Found cached item of size %ld for brand URI: %s", v34, 0x16u);
    sub_100003600(v35);

    goto LABEL_28;
  }

  LODWORD(v37) = HIDWORD(v17) - v17;
  if (!__OFSUB__(HIDWORD(v17), v17))
  {
    v37 = v37;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A08C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a4;
  v8 = v7;
  v59 = a5;
  v60 = a6;
  v55 = a3;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v51 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v51);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  v14 = *(v47 + 64);
  __chkstk_darwin(v49);
  v54 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v58 = *(v53 - 8);
  v16 = *(v58 + 64);
  v17 = __chkstk_darwin(v53);
  v46 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = &v45 - v19;
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v45 = *(v20 - 8);
  v21 = *(v45 + 64);
  __chkstk_darwin(v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a1;
  v62 = a2;
  v69 = 0x3A7A69623A6E7275;
  v70 = 0xE800000000000000;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_100010B4C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.appendingPathComponent(_:)();

  URL.appendingPathComponent(_:)();
  v60 = v8;
  v29 = *(v8 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  v31 = v30;
  aBlock = 0;
  LODWORD(v29) = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (v29)
  {
    v32 = aBlock;
    v33 = v57;
    Data.write(to:options:)();
    if (!v33)
    {
      sub_100001D78();
      v34 = v45;
      (*(v45 + 104))(v23, enum case for DispatchQoS.QoSClass.background(_:), v20);
      v57 = static OS_dispatch_queue.global(qos:)();
      (*(v34 + 8))(v23, v20);
      v35 = v46;
      static DispatchTime.now()();
      + infix(_:_:)();
      v36 = *(v58 + 8);
      v58 += 8;
      v59 = v36;
      v36(v35, v53);
      v65 = sub_10001C638;
      v66 = v60;
      aBlock = _NSConcreteStackBlock;
      v62 = 1107296256;
      v63 = sub_100018888;
      v64 = &unk_100029730;
      v56 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v69 = _swiftEmptyArrayStorage;
      sub_10001C658(&qword_10002E908, &type metadata accessor for DispatchWorkItemFlags);
      sub_100001DC4(&qword_10002E910, &unk_100021100);
      sub_10001C6A0();
      v37 = v48;
      v38 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v52;
      v41 = v56;
      v40 = v57;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v41);

      (*(v50 + 8))(v37, v38);
      (*(v47 + 8))(v54, v49);
      v59(v39, v53);
      (*(v25 + 8))(v28, v24);
    }
  }

  else
  {
    v43 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v44 = *(v25 + 8);
  v44(a7, v24);
  return (v44)(v28, v24);
}

uint64_t sub_10001A910(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a1;
  v27[1] = a2;
  v26[3] = 0x3A7A69623A6E7275;
  v26[4] = 0xE800000000000000;
  v26[1] = 0;
  v26[2] = 0xE000000000000000;
  sub_100010B4C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.appendingPathComponent(_:)();

  v11 = *(v3 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  URL.path.getter();
  v12 = String._bridgeToObjectiveC()();

  LODWORD(a2) = [v11 fileExistsAtPath:v12];

  if (a2)
  {
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v27[0] = 0;
    v16 = [v11 removeItemAtURL:v14 error:v27];

    if (v16)
    {
      v17 = *(v7 + 8);
      v18 = v27[0];
      return v17(v10, v6);
    }

    v25 = v27[0];
    _convertNSErrorToError(_:)();
  }

  else
  {
    if (qword_10002DCD0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003034(v20, qword_10002F838);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Trying to remove an item that does not exist", v23, 2u);
    }

    sub_10001074C();
    swift_allocError();
    *v24 = 1;
  }

  swift_willThrow();
  return (*(v7 + 8))(v10, v6);
}

char *sub_10001AC40()
{
  v2 = sub_100001DC4(&qword_10002E900, &qword_1000210F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v73 = &v56 - v4;
  v75 = type metadata accessor for URL();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v75);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = type metadata accessor for Date();
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  result = sub_10001B834();
  if (!v1)
  {
    v68 = v16;
    v63 = v9;
    v76 = v19;
    v65 = v12;
    v70 = *(result + 2);
    if (!v70)
    {
    }

    v62 = v0;
    v71 = result;
    Date.init()();
    v64 = v21;
    Date.addingTimeInterval(_:)();
    v23 = v71;
    v24 = 0;
    v61 = OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager;
    v74 = v5 + 16;
    v69 = (v72 + 48);
    v66 = (v72 + 32);
    v67 = (v72 + 8);
    v72 = v5 + 8;
    *&v25 = 136315138;
    v56 = v25;
    v26 = v65;
    v27 = v75;
    while (1)
    {
      if (v24 >= *(v23 + 2))
      {
        __break(1u);
      }

      v28 = *(v5 + 16);
      v28(v11, &v23[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24], v27);
      URL.path.getter();
      v29 = v73;
      sub_10001B3D4(v73);

      if ((*v69)(v29, 1, v26) == 1)
      {
        break;
      }

      v31 = v68;
      (*v66)(v68, v29, v26);
      v30 = v76;
      if (static Date.< infix(_:_:)())
      {
        v32 = *(&v62->super.isa + v61);
        URL._bridgeToObjectiveC()(v62);
        v34 = v33;
        v77 = 0;
        v35 = [v32 removeItemAtURL:v33 error:&v77];

        v36 = v64;
        if (!v35)
        {
          v53 = v77;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v54 = *v67;
          v55 = v65;
          (*v67)(v68, v65);
          (*v72)(v11, v75);
          v54(v76, v55);
          return (v54)(v36, v55);
        }

        v37 = qword_10002DCD0;
        v38 = v77;
        if (v37 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100003034(v39, qword_10002F838);
        v40 = v63;
        v27 = v75;
        v28(v63, v11, v75);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v57 = v43;
          v59 = swift_slowAlloc();
          v77 = v59;
          *v43 = v56;
          v58 = v41;
          v44 = URL.lastPathComponent.getter();
          v46 = v45;
          v60 = *v72;
          v60(v40, v27);
          v47 = sub_10000E3FC(v44, v46, &v77);

          v48 = v57;
          *(v57 + 1) = v47;
          v49 = v58;
          _os_log_impl(&_mh_execute_header, v58, v42, "Deleted unused logo: %s", v48, 0xCu);
          sub_100003600(v59);

          v26 = v65;
          (*v67)(v68, v65);
          v60(v11, v27);
        }

        else
        {

          v50 = *v72;
          (*v72)(v40, v27);
          v26 = v65;
          (*v67)(v68, v65);
          v50(v11, v27);
        }

        goto LABEL_9;
      }

      (*v67)(v31, v26);
      v27 = v75;
      (*v72)(v11, v75);
LABEL_5:
      ++v24;
      v23 = v71;
      if (v70 == v24)
      {

        v51 = v30;
        v52 = *v67;
        (*v67)(v51, v26);
        return (v52)(v64, v26);
      }
    }

    v27 = v75;
    (*v72)(v11, v75);
    sub_1000035A0(v29, &qword_10002E900, &qword_1000210F8);
LABEL_9:
    v30 = v76;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10001B3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001DC4(&qword_10002E900, &qword_1000210F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27[-1] - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v11 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v12 = String._bridgeToObjectiveC()();

  v27[0] = 0;
  v13 = [v11 attributesOfItemAtPath:v12 error:v27];

  v14 = v27[0];
  if (v13)
  {
    v26 = a1;
    type metadata accessor for FileAttributeKey(0);
    sub_10001C658(&qword_10002DDB8, type metadata accessor for FileAttributeKey);
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    if (!*(v15 + 16) || (v17 = sub_10000EFC4(NSFileModificationDate), (v18 & 1) == 0))
    {

      (*(v7 + 8))(v10, v6);
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
LABEL_7:
      sub_1000035A0(v5, &qword_10002E900, &qword_1000210F8);
      type metadata accessor for Date();
      return (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
    }

    sub_10001252C(*(v15 + 56) + 32 * v17, v27);
    (*(v7 + 8))(v10, v6);

    v19 = type metadata accessor for Date();
    v20 = swift_dynamicCast();
    v21 = *(v19 - 8);
    v22 = *(v21 + 56);
    v22(v5, v20 ^ 1u, 1, v19);
    if ((*(v21 + 48))(v5, 1, v19) == 1)
    {
      goto LABEL_7;
    }

    v25 = v26;
    (*(v21 + 32))(v26, v5, v19);
    return (v22)(v25, 0, 1, v19);
  }

  else
  {
    v24 = v27[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }
}

void *sub_10001B834()
{
  v1 = type metadata accessor for URL();
  v51 = *(v1 - 8);
  v2 = *(v51 + 64);
  v3 = __chkstk_darwin(v1);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v40 - v5;
  v7 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v53 = 0;
  v11 = [v7 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:4 error:&v53];

  v12 = v53;
  if (v11)
  {
    v50 = v7;
    v41 = v1;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    v49 = *(v13 + 16);
    if (v49)
    {
      v15 = 0;
      v42 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v48 = v13 + v42;
      v52 = v51 + 16;
      v46 = (v51 + 8);
      v40 = (v51 + 32);
      v0 = _swiftEmptyArrayStorage;
      v16 = v41;
      v45 = v6;
      v47 = v13;
      while (1)
      {
        if (v15 >= *(v13 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        v17 = v0;
        v18 = *(v51 + 72);
        v19 = *(v51 + 16);
        v19(v6, v48 + v18 * v15, v16);
        LOBYTE(v53) = 0;
        URL.path.getter();
        v20 = v6;
        v21 = String._bridgeToObjectiveC()();

        v22 = v50;
        v23 = [v50 fileExistsAtPath:v21 isDirectory:&v53];

        if (v23)
        {
          break;
        }

        (*v46)(v20, v16);
        v13 = v47;
        v6 = v20;
        v0 = v17;
LABEL_5:
        if (v49 == ++v15)
        {
          goto LABEL_31;
        }
      }

      if (v53 != 1)
      {
        v6 = v45;
        v19(v43, v45, v16);
        v0 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_10001C460(0, v17[2] + 1, 1, v17);
        }

        v13 = v47;
        v35 = v0[2];
        v34 = v0[3];
        if (v35 >= v34 >> 1)
        {
          v0 = sub_10001C460(v34 > 1, v35 + 1, 1, v0);
        }

        (*v46)(v6, v16);
        v0[2] = v35 + 1;
        (*v40)(v0 + v42 + v35 * v18, v43, v16);
        goto LABEL_5;
      }

      v24 = v44;
      v25 = sub_10001B834(v45);
      v0 = v17;
      v44 = v24;
      if (v24)
      {
        (*v46)(v45, v16);

        return v0;
      }

      v26 = v25;
      v27 = *(v25 + 16);
      v28 = v17[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_35;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v29 <= v17[3] >> 1)
      {
        if (*(v26 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v36 = v28 + v27;
        }

        else
        {
          v36 = v28;
        }

        v0 = sub_10001C460(isUniquelyReferenced_nonNull_native, v36, 1, v17);
        if (*(v26 + 16))
        {
LABEL_14:
          v16 = v41;
          if ((v0[3] >> 1) - v0[2] < v27)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          v13 = v47;
          v6 = v45;
          if (v27)
          {
            v31 = v0[2];
            v32 = __OFADD__(v31, v27);
            v33 = v31 + v27;
            if (v32)
            {
              goto LABEL_38;
            }

            v0[2] = v33;
          }

LABEL_28:
          (*v46)(v6, v16);
          goto LABEL_5;
        }
      }

      v16 = v41;
      v13 = v47;
      v6 = v45;
      if (v27)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    v0 = _swiftEmptyArrayStorage;
LABEL_31:
  }

  else
  {
    v37 = v53;
    v38 = _convertNSErrorToError(_:)();

    v44 = v38;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_10001BD54()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v6 = *(v0 + OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_fileManager);
  sub_100001DC4(&qword_10002E8F0, &unk_1000210E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100020980;
  *(inited + 32) = NSFileModificationDate;
  *(inited + 64) = v1;
  v8 = sub_10000306C((inited + 40));
  (*(v2 + 16))(v8, v5, v1);
  v9 = NSFileModificationDate;
  sub_1000107A0(inited);
  swift_setDeallocating();
  sub_1000035A0(inited + 32, &qword_10002E228, &qword_100020B48);
  type metadata accessor for FileAttributeKey(0);
  sub_10001C658(&qword_10002DDB8, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = String._bridgeToObjectiveC()();
  v18 = 0;
  v12 = [v6 setAttributes:isa ofItemAtPath:v11 error:&v18];

  if (v12)
  {
    v13 = *(v2 + 8);
    v14 = v18;
    return v13(v5, v1);
  }

  else
  {
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_10001C000()
{
  v1 = OBJC_IVAR____TtC17businessservicesd24BrandLogoPersistentStore_cacheURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for BrandLogoPersistentStore()
{
  result = qword_10002E808;
  if (!qword_10002E808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C100()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrandLogoFetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrandLogoFetchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001C300()
{
  result = qword_10002E8E8;
  if (!qword_10002E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E8E8);
  }

  return result;
}

char *sub_10001C354(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DC4(&qword_10002E7C0, &unk_100021110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10001C460(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001DC4(&qword_10002E8F8, &qword_1000210F0);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10001C640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C658(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001C6A0()
{
  result = qword_10002E918;
  if (!qword_10002E918)
  {
    sub_100001E70(&qword_10002E910, &unk_100021100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E918);
  }

  return result;
}

uint64_t sub_10001C704()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_6:
    v11 = v1;
    return v2;
  }

  v3 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1000176AC();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = sub_100017728();

      v9 = [objc_allocWithZone(BCSICloudServerEnvironment) initWithUserDefaults:v6 isInternalInstall:v8 & 1 type:*(v3 + 16)];
      v10 = *(v3 + 32);
      *(v3 + 32) = v9;
      v2 = v9;

      v1 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10001C7CC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = objc_opt_self();
    v4 = sub_10001C704();
    v5 = [v4 containerID];

    v6 = [v3 containerIDForContainerIdentifier:v5 environment:{objc_msgSend(*(v0 + 32), "containerEnvironment")}];
    v7 = *(v0 + 40);
    *(v0 + 40) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id sub_10001C88C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = sub_10001C7CC();
    v4 = [objc_allocWithZone(CKContainer) initWithContainerID:v3];

    v5 = *(v0 + 48);
    *(v0 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_10001C90C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(BCSCoalesceHelper) initWithQOSClass:25];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_10001C97C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
LABEL_8:
    v21 = v1;
    return v2;
  }

  v3 = v0;
  v4 = sub_10001C704();
  v5 = sub_10001C88C();
  v6 = [v5 publicCloudDatabase];

  v7 = *(v3 + 48);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  v10 = v7;
  v11 = sub_100017768();

  v12 = sub_10001C90C();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  v14 = sub_1000178D0();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  v16 = sub_1000178E4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_100017840();

    v19 = [objc_allocWithZone(BCSRemoteFetchCloudKit) initWithEnvironment:v4 database:v6 databaseContainer:v10 queryOperationFactory:v11 coalesceHelper:v12 bloomFilterExtractor:v14 operationGroupFactory:v16 metricFactory:v18];
    v20 = *(v3 + 64);
    *(v3 + 64) = v19;
    v2 = v19;

    v1 = 0;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10001CB14()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
LABEL_10:
    v26 = v1;
    return v2;
  }

  v3 = v0;
  v4 = *(v0 + 16) - 1;
  if (v4 < 5)
  {
    v5 = qword_100021178[v4];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_10001777C();

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = sub_10001777C();

        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          v14 = sub_10001777C();

          v15 = sub_10001C97C();
          v16 = *(v3 + 64);
          v17 = swift_unknownObjectWeakLoadStrong();
          if (v17)
          {
            v18 = v17;
            v19 = v16;
            v20 = sub_1000176AC();

            v21 = swift_unknownObjectWeakLoadStrong();
            if (v21)
            {
              v22 = v21;
              v23 = sub_100017840();

              v24 = [objc_allocWithZone(BCSMegashardFetcher) initWithShardType:v5 configCache:v8 shardCache:v11 shardCacheSkipper:v14 shardInstantiator:v15 megashardRemoteFetcher:v19 userDefaults:v20 metricFactory:v23];
              v25 = *(v3 + 72);
              *(v3 + 72) = v24;
              v2 = v24;

              v1 = 0;
              goto LABEL_10;
            }

            goto LABEL_15;
          }

LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10001CD04()
{
  v1 = sub_10001962C(*(v0 + 16));
  v2 = v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 5;
    while (v4 < v2[2])
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v8 = sub_10001CB14();
      v9 = objc_allocWithZone(BCSXPCLaunchEventPrefetchTrigger);
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 initWithActivityName:v10];

      if (!v11)
      {
        goto LABEL_10;
      }

      ++v4;
      [v8 addFetchTrigger:v11];

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_10001CE0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10001CE98(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = a1;
  swift_unknownObjectWeakAssign();
  return v1;
}

void sub_10001D380(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eligibleToRun];
  v5 = ABSLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) activityName];
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scheduled background task started for %@", buf, 0xCu);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001D590;
    v15[3] = &unk_100029760;
    v15[4] = *(a1 + 32);
    [v3 setExpirationHandler:v15];
    v8 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001D648;
    v12[3] = &unk_100029788;
    v9 = v3;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    (*(v8 + 16))(v8, v9, 6, v12);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) activityName];
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Scheduled background task is not eligible to run for %@", buf, 0xCu);
    }

    [v3 setTaskCompleted];
  }
}

void sub_10001D590(uint64_t a1)
{
  v2 = ABSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) activityName];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Background task %@ expired.", &v4, 0xCu);
  }
}

void sub_10001D648(uint64_t a1)
{
  [*(a1 + 32) setTaskCompleted];
  v2 = ABSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) activityName];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Background task completed for %@", &v4, 0xCu);
  }
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}