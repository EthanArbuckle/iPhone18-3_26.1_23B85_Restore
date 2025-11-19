void sub_100001C08(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for EnvironmentalStateDescription();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static EnvironmentalStateDescription.appRunning(bundleIdentifier:)();

  v14 = EnvironmentalStateDescription.matches(_:)(a1);
  (*(v10 + 8))(v13, v9);
  v15 = v2[14];

  os_unfair_lock_lock((v15 + 56));
  if (*(v15 + 16) == 1)
  {
    if (v14)
    {
      if (*(v15 + 17))
      {
        *(v15 + 17) = 256;
        v16 = v2[6];
        *(v15 + 24) = OrchestrationWorkQueueStatusObserver.finishedWorkPlans.getter();
        *(v15 + 32) = CFAbsoluteTimeGetCurrent();
LABEL_7:
        v17 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      *(v15 + 17) = 1;
      if (*(v15 + 18))
      {
        *(v15 + 18) = 0;
        goto LABEL_7;
      }
    }
  }

  v17 = 0;
LABEL_9:
  os_unfair_lock_unlock((v15 + 56));

  v18 = v2[12];
  if (v14)
  {
    *v8 = 1;
    (*(v5 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v4);
    HealthAppForegroundWorkManager.forceStart(within:)();
    (*(v5 + 8))(v8, v4);
    if (v17)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      *(v19 + 24) = 1;

      HealthAppForegroundWorkManager.foregroundWithFireOnceBarrier(_:)();
    }
  }

  else
  {
    HealthAppForegroundWorkManager.endForeground()();
    if (v17)
    {
      v20 = v2[14];

      os_unfair_lock_lock(v20 + 14);
      sub_1000022AC(&v20[4], v25);
      os_unfair_lock_unlock(v20 + 14);
      v21 = *v25;
      v22 = v25[1];

      v23 = v2[6];
      OrchestrationWorkQueueStatusObserver.didEndForegroundSession(planCount:duration:)(v22, v21);
    }
  }
}

uint64_t sub_100001F18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100001F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = *v5;
  v12 = *a5;
  v13 = type metadata accessor for PriorityRuleSet.Priority();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();
  return sub_100002114(v10);
}

void sub_1000020B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100002114(uint64_t a1)
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000021AC(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v5 = *(a2 + 112);

    os_unfair_lock_lock(v5 + 14);
    sub_1000022C8(&v5[4], v9);
    os_unfair_lock_unlock(v5 + 14);
    v6 = *v9;
    v7 = v9[1];

    if (a3)
    {
      v8 = *(a2 + 48);
      OrchestrationWorkQueueStatusObserver.didStartForegroundSession(planCount:duration:)(v7, v6);
    }
  }
}

uint64_t sub_10000223C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = CFAbsoluteTimeGetCurrent() - *(a1 + 16);
  v6 = *(a2 + 48);
  result = OrchestrationWorkQueueStatusObserver.finishedWorkPlans.getter();
  v8 = *(a1 + 8);
  v9 = __OFSUB__(result, v8);
  v10 = result - v8;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 8) = v10;
  }

  return result;
}

uint64_t sub_1000022E0()
{
  sub_10000493C((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100002338()
{
  v1 = v0[2];

  sub_10000493C(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100002390()
{
  sub_10000493C((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000023E8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002430()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002468()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000024A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000024D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002548()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002590(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000025B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000025EC()
{
  v1 = type metadata accessor for GenerationWorkRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000026B0()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v15 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v15 | 7);
}

uint64_t sub_100002844()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000288C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000028C4()
{
  sub_10000493C((v0 + 32));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  sub_10000493C((v0 + 88));
  v3 = *(v0 + 128);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100002954()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000298C()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v6 = *(v0 + 32);
  }

  v7 = (v3 + 48) & ~v3;
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v7, v1);
  v13 = *(v0 + v8);

  v14 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100002AE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002AF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002B30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002B74()
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);

  v6 = v2[11];
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v4 + v6, v7);
  v8(v0 + v4 + v2[12], v7);
  v9 = v2[13];
  v10 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v4 + v9, v10);
  }

  return _swift_deallocObject(v0, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100002D24()
{
  sub_10000493C((v0 + 24));
  sub_10000493C((v0 + 64));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100002D7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002DB4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002E2C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002E84()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002ED0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002F08()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002FA8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002FE0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003020()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003058()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000030A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_1000030B8()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);

  return empty;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  __chkstk_darwin(v3);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  __chkstk_darwin(v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v104 = *(v16 - 8);
  v17 = *(v104 + 64);
  v18 = __chkstk_darwin(v16);
  v102 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v101 = &v94 - v21;
  v22 = __chkstk_darwin(v20);
  v99 = &v94 - v23;
  __chkstk_darwin(v22);
  v25 = &v94 - v24;
  v26 = String._bridgeToObjectiveC()();
  HKSetTemporaryDirectorySuffix();

  static Logger.daemon.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "healthappd: Starting", v29, 2u);
  }

  v30 = *(v104 + 8);
  v103 = v16;
  v104 += 8;
  v100 = v30;
  v30(v25, v16);
  v31 = SIG_IGN.getter();
  signal(15, v31);
  sub_100004210(0, &qword_100041AC8, OS_dispatch_source_ptr);
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v32 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v33 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_100042858 = v33;
  swift_getObjectType();
  v110 = sub_100003DDC;
  v111 = 0;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_100003F14;
  v109 = &unk_10003DA30;
  v34 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100003F70();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v34);
  (*(v97 + 8))(v6, v98);
  (*(v95 + 8))(v10, v96);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  v110 = sub_10000404C;
  v111 = 0;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_100004180;
  v109 = &unk_10003DA58;
  v35 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, v35);
  _Block_release(v35);
  type metadata accessor for HealthAppPluginSource();
  qword_100042860 = static HealthAppPluginSource.shared.getter();
  HealthAppPluginSource.loadPluginsFromDisk()();
  if (v36)
  {
    aBlock = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v93._countAndFlagsBits = 0xD000000000000022;
    v93._object = 0x80000001000324E0;
    String.append(_:)(v93);
    v105 = v36;
    sub_100004308(0, &qword_100041AD8);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    swift_errorInMain();
    __break(1u);
    goto LABEL_13;
  }

  qword_100042868 = 0x403E000000000000;
  qword_100042870 = 9;
  sub_100004308(0, &qword_100041AE0);
  v37 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  v98 = 0;
  qword_100042878 = v37;
  v38 = type metadata accessor for DirectDispatchTarget();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  v41 = DirectDispatchTarget.init(providers:)();
  v109 = v38;
  v110 = &protocol witness table for DirectDispatchTarget;
  aBlock = v41;
  v42 = type metadata accessor for TimeoutDispatchTarget();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  qword_100042880 = TimeoutDispatchTarget.init(timeout:target:)();
  v109 = v42;
  v110 = &protocol witness table for TimeoutDispatchTarget;
  aBlock = qword_100042880;
  v45 = type metadata accessor for DatabaseAccessibilityDispatchTarget();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  v48 = DatabaseAccessibilityDispatchTarget.init(target:)();
  qword_100042888 = v48;
  v109 = v45;
  v110 = sub_100004258(&qword_100041AE8, &type metadata accessor for DatabaseAccessibilityDispatchTarget);
  aBlock = v48;
  v49 = type metadata accessor for MultiDispatcher();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();

  qword_100042890 = MultiDispatcher.init(target:width:filter:)();
  type metadata accessor for DaemonHealthExperienceStoreOracle();
  qword_100042898 = static DaemonHealthExperienceStoreOracle.shared.getter();
  v52 = [objc_allocWithZone(HKHealthStore) init];
  qword_100041AB0 = v52;
  v53 = type metadata accessor for PinnedContentManagerProvider();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = v52;
  qword_100041AB8 = PinnedContentManagerProvider.init(healthStore:)();
  type metadata accessor for HealthAppNotificationManager();
  qword_1000428A0 = HealthAppNotificationManager.__allocating_init()();
  type metadata accessor for OpenTransactionBuilderManager();
  qword_1000428A8 = static OpenTransactionBuilderManager.shared.getter();
  v57 = [objc_allocWithZone(HKProfileStore) initWithHealthStore:qword_100041AB0];
  v109 = sub_100004210(0, &qword_100041AF0, HKProfileStore_ptr);
  v110 = &protocol witness table for HKProfileStore;
  aBlock = v57;
  v58 = qword_100042898;

  static Logger.orchestration.getter();
  [objc_allocWithZone(HKHealthStore) init];
  v59 = type metadata accessor for HealthPlatformContextProvider();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  qword_1000428B0 = HealthPlatformContextProvider.init(profileStore:experienceStoreOracle:pinnedContentManagerProvider:notificationManager:transactionBuilderManager:healthStore:logger:)();
  v62 = objc_autoreleasePoolPush();
  nullsub_1();
  [objc_opt_self() setFlushTimerEnabled:0];
  objc_autoreleasePoolPop(v62);
  v63 = qword_100042860;
  v64 = qword_1000428B0;
  v65 = sub_100004258(&qword_100041AF8, &type metadata accessor for HealthPlatformContextProvider);
  sub_1000042A0();
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100031A60;
  v67 = qword_100042890;
  *(v66 + 56) = v49;
  *(v66 + 64) = &protocol witness table for MultiDispatcher;
  *(v66 + 32) = v67;
  v68 = qword_100042898;
  v69 = qword_100041AB8;
  v70 = qword_1000428A8;
  type metadata accessor for HealthAppOrchestrationClient();

  v71 = v68;

  static HealthAppOrchestrationClient.serviceName.getter();
  v72 = objc_allocWithZone(NSXPCListener);
  v73 = String._bridgeToObjectiveC()();

  v74 = [v72 initWithMachServiceName:v73];

  type metadata accessor for HealthAppDaemonCoordinator();
  swift_allocObject();
  v75 = v65;
  v76 = v98;
  sub_10000B060(v63, v64, v75, v66, v71, v69, v70, v74);
  if (v76)
  {
LABEL_13:
    result = swift_errorInMain();
    __break(1u);
    return result;
  }

  qword_1000428B8 = v77;
  v78 = v101;
  static Logger.daemon.getter();
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    aBlock = v82;
    *v81 = 136315138;
    v105 = qword_1000428B8;

    v83 = String.init<A>(reflecting:)();
    v85 = sub_100004364(v83, v84, &aBlock);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v79, v80, "healthappd: Starting daemon: %s", v81, 0xCu);
    sub_10000493C(v82);
  }

  v86 = v103;
  v87 = v100;
  v100(v78, v103);
  v88 = v102;
  sub_10000AB88();
  static Logger.daemon.getter();
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "healthappd: Shutdown", v91, 2u);
  }

  v87(v88, v86);
  return 0;
}

uint64_t sub_100003DDC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "healthappd: sigterm Shutdown", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return xpc_transaction_exit_clean();
}

uint64_t sub_100003F14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100003F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003F70()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100004258(&qword_100041B18, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000049E8();
  sub_100004258(&qword_100041B28, sub_1000049E8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000404C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "healthappd: Received com.apple.distnoted.matching", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100004180(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_1000041F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004210(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100004258(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000042A0()
{
  if (!qword_100041B00)
  {
    sub_100004308(255, &qword_100041B08);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100041B00);
    }
  }
}

uint64_t sub_100004308(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004430(v11, 0, 0, 1, a1, a2);
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
    sub_100004988(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000493C(v11);
  return v7;
}

unint64_t sub_100004430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000453C(a5, a6);
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

char *sub_10000453C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004588(a1, a2);
  sub_1000046B8(&off_10003D950);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004588(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000047A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000047A4(v10, 0);
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

uint64_t sub_1000046B8(uint64_t result)
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

  result = sub_100004830(result, v12, 1, v3);
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

void *sub_1000047A4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100004B10(0, &qword_100041B10, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004830(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004B10(0, &qword_100041B10, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10000493C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000049E8()
{
  if (!qword_100041B20)
  {
    type metadata accessor for DispatchWorkItemFlags();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100041B20);
    }
  }
}

uint64_t sub_100004A78(uint64_t a1, int a2)
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

uint64_t sub_100004A98(uint64_t result, int a2, int a3)
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

void sub_100004B10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100004B68()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isHealthDataAvailable])
  {
    return 1;
  }

  v7 = v0[4];
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v19)
  {
    sub_1000030A0(&v18, v20);
    sub_100004E2C(v20);
    sub_10000493C(v20);
    return 1;
  }

  sub_100007B00(&v18, sub_100007B60);
  static Logger.daemon.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v18 = v17;
    *v11 = 136315394;
    v20[0] = v1;
    swift_getMetatypeMetadata();
    v13 = String.init<A>(describing:)();
    v15 = sub_100004364(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    *v12 = v7;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s] oracle doesn't have a store, deferring: %@", v11, 0x16u);
    sub_100007B00(v12, sub_100007B94);

    sub_10000493C(v17);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_100004E2C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for GenerationQueue.EnqueueResult();
  v67 = *(v5 - 8);
  v68 = v5;
  isa = v67[8].isa;
  v7 = __chkstk_darwin(v5);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v58 - v9;
  v66 = type metadata accessor for GenerationWorkRequest();
  v72 = *(v66 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v66);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v58 - v17;
  static Logger.daemon.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v69 = v13;
  v70 = v12;
  v60 = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v74 = v23;
    *v22 = 136315138;
    *&v73[0] = v4;
    swift_getMetatypeMetadata();
    v24 = String.init<A>(describing:)();
    v26 = a1;
    v27 = v2;
    v28 = sub_100004364(v24, v25, &v74);

    *(v22 + 4) = v28;
    v2 = v27;
    a1 = v26;
    v29 = v20;
    v30 = v60;
    _os_log_impl(&_mh_execute_header, v19, v29, "[%s]: DAS background generation starting", v22, 0xCu);
    sub_10000493C(v23);

    v59 = *(v69 + 8);
    v59(v18, v70);
  }

  else
  {

    v59 = *(v13 + 8);
    v59(v18, v12);
    v30 = v4;
  }

  v31 = [objc_allocWithZone(HKHealthStore) init];
  type metadata accessor for PinnedContentManager();
  v32 = v31;
  v33 = PinnedContentManager.__allocating_init(healthStore:domain:)();
  v34 = v2[8];
  sub_100007A94(a1, v73);
  v35 = swift_allocObject();
  v35[2] = v32;
  sub_1000030A0(v73, (v35 + 3));
  v35[8] = v33;
  v35[9] = v2;
  v35[10] = v34;
  sub_100007A94(a1, v73);
  v36 = swift_allocObject();
  v36[2] = v2;
  sub_1000030A0(v73, (v36 + 3));
  v36[8] = v34;
  v36[9] = v30;
  v37 = swift_allocObject();
  *(v37 + 16) = v30;
  swift_retain_n();
  swift_retain_n();
  v38 = v32;
  v62 = v33;
  v63 = v38;

  v39 = static GenerationPhase.allCases.getter();
  sub_100029E2C(v39);

  v40 = v71;
  GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)();
  v41 = *(v2[6] + 40);
  v42 = v64;
  dispatch thunk of GenerationQueue.enqueue(_:)();
  v44 = v67;
  v43 = v68;
  v45 = v65;
  (v67[4].isa)(v65, v42, v68);
  LODWORD(v42) = (v44[11].isa)(v45, v43);
  LODWORD(v41) = enum case for GenerationQueue.EnqueueResult.dropped(_:);
  (v44[1].isa)(v45, v43);
  if (v42 == v41)
  {
  }

  else
  {
    v68 = v37;
    v46 = v61;
    static Logger.daemon.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v67 = v47;
      v50 = v49;
      v51 = swift_slowAlloc();
      v74 = v51;
      *v50 = 136446210;
      *&v73[0] = v60;
      swift_getMetatypeMetadata();
      v52 = String.init<A>(describing:)();
      v54 = sub_100004364(v52, v53, &v74);

      *(v50 + 4) = v54;
      v55 = v67;
      _os_log_impl(&_mh_execute_header, v67, v48, "[%{public}s]: DAS background generation request dropped", v50, 0xCu);
      sub_10000493C(v51);

      v56 = v61;
    }

    else
    {

      v56 = v46;
    }

    v59(v56, v70);
  }

  return (*(v72 + 8))(v40, v66);
}

uint64_t sub_100005570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = a6;
  v94 = a3;
  v97 = a2;
  sub_1000073D4(0, &qword_100041C78, sub_100007538, &type metadata accessor for GeneratorPipelineProviderWrapper);
  v101 = v9;
  v81 = *(v9 - 1);
  v10 = *(v81 + 64);
  __chkstk_darwin(v9);
  v82 = &v79 - v11;
  v105 = type metadata accessor for PipelineProviderWrappers();
  v12 = *(v105 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v105);
  v104 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000073D4(0, &qword_100041CB0, sub_100007720, &type metadata accessor for GeneratorPipelineProviderWrapper);
  v16 = *(v15 - 8);
  v102 = v15;
  v103 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v83 = &v79 - v18;
  v87 = type metadata accessor for DispatchTimeInterval();
  v85 = *(v87 - 8);
  v19 = *(v85 + 64);
  __chkstk_darwin(v87);
  v86 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000078E0();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v92 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C();
  v99 = v29;
  v100 = *(v29 - 8);
  v30 = *(v100 + 64);
  __chkstk_darwin(v29);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a5 + 48);
  v91 = *(a5 + 56);
  v34 = *(v33 + 24);
  v108[3] = type metadata accessor for PinnedContentManager();
  v108[4] = &protocol witness table for PinnedContentManager;
  v108[0] = a4;

  v35 = v94;

  v96 = a1;
  v36 = GenerationWorkRequest.pluginIdentifierSetToRun.getter();
  sub_1000213EC(v36);

  v37 = type metadata accessor for BundleFeedItemGenerationPluginInfo();
  v38 = sub_1000076D8(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo);
  v90 = v37;
  v88 = v38;
  v39 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  v40 = objc_allocWithZone(HKProfileStore);
  v41 = [v40 initWithHealthStore:v97];
  HKProfileStore.profileIdentifiersPublisher.getter();
  sub_1000076D8(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher);
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v25 + 8))(v28, v24);
  sub_1000076D8(&qword_100041D18, sub_10000798C);
  v42 = v99;
  v84 = Publisher.eraseToAnyPublisher()();

  (*(v100 + 8))(v32, v42);
  sub_100007A94(v35, &v107);
  v43 = *(v39 + 16);
  v93 = v34;
  v89 = v39;
  if (v43)
  {
    v106[0] = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v43, 0);
    v44 = v106[0];
    v80 = v12;
    v100 = *(v12 + 16);
    v45 = v39 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v99 = *(v12 + 72);
    v46 = (v12 + 8);
    v47 = v81;
    v98 = (v81 + 32);
    v48 = v82;
    do
    {
      v50 = v104;
      v49 = v105;
      (v100)(v104, v45, v105);
      PipelineProviderWrappers.feedItem.getter();
      (*v46)(v50, v49);
      v106[0] = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_10001F1D8(v51 > 1, v52 + 1, 1);
        v44 = v106[0];
      }

      *(v44 + 16) = v52 + 1;
      (*(v47 + 32))(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v52, v48, v101);
      v45 += v99;
      --v43;
    }

    while (v43);
    v12 = v80;
    v35 = v94;
  }

  type metadata accessor for FeedItemGeneratorPipelineManager();
  sub_100007A94(v108, v106);

  v53 = v97;
  v99 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v54 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_10001192C(v54);

  v55 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  if ((GenerationWorkRequest.commitUrgentTransaction.getter() & 1) == 0)
  {
    v55 = v89;
  }

  sub_100007A94(v35, &v107);
  v56 = v55[2];
  if (v56)
  {
    v98 = v53;
    v106[0] = _swiftEmptyArrayStorage;
    sub_10001F188(0, v56, 0);
    v57 = v106[0];
    v59 = *(v12 + 16);
    v58 = v12 + 16;
    v101 = v59;
    v60 = (*(v58 + 64) + 32) & ~*(v58 + 64);
    v97 = v55;
    v61 = v55 + v60;
    v100 = *(v58 + 56);
    v62 = (v58 - 8);
    v63 = v83;
    do
    {
      v64 = v104;
      v65 = v105;
      v66 = v58;
      v101(v104, v61, v105);
      PipelineProviderWrappers.sharableModel.getter();
      (*v62)(v64, v65);
      v106[0] = v57;
      v68 = *(v57 + 16);
      v67 = *(v57 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_10001F188(v67 > 1, v68 + 1, 1);
        v57 = v106[0];
      }

      *(v57 + 16) = v68 + 1;
      (*(v103 + 32))(v57 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v68, v63, v102);
      v61 += v100;
      --v56;
      v58 = v66;
    }

    while (v56);

    v53 = v98;
  }

  else
  {
  }

  type metadata accessor for SharableModelGeneratorPipelineManager();
  sub_100007A94(v108, v106);

  v69 = v53;
  GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  dispatch thunk of CountryOracle.currentCountry()();
  v70 = GenerationWorkRequest.generationPhases.getter();
  v71 = v70;
  v72 = *(v70 + 16);
  if (!v72)
  {
    goto LABEL_19;
  }

  v73 = sub_1000259FC(*(v70 + 16), 0);
  v74 = *(type metadata accessor for GenerationPhase() - 8);
  v75 = sub_1000297CC(&v107, &v73[(*(v74 + 80) + 32) & ~*(v74 + 80)], v72, v71);
  sub_100007AF8();
  if (v75 != v72)
  {
    __break(1u);
LABEL_19:
  }

  type metadata accessor for GeneratorPipelineGenerationOperation();
  GenerationWorkRequest.commitUrgentTransaction.getter();
  v76 = v86;
  *v86 = 150;
  (*(v85 + 104))(v76, enum case for DispatchTimeInterval.seconds(_:), v87);
  v77 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();

  sub_1000076D8(&qword_100041D20, &type metadata accessor for GeneratorPipelineGenerationOperation);
  sub_10000493C(v108);
  return v77;
}

uint64_t sub_100006138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007100(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_100007134(v16);
  static Logger.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = a3;
    v21 = v20;
    v32 = swift_slowAlloc();
    v35 = v32;
    *&v36[0] = a4;
    *v21 = 136446210;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    v33 = v8;
    v24 = a4;
    v25 = a2;
    v26 = sub_100004364(v22, v23, &v35);

    *(v21 + 4) = v26;
    a2 = v25;
    a4 = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s]: DAS background generation completed, populating feed", v21, 0xCu);
    sub_10000493C(v32);

    a3 = v34;

    (*(v9 + 8))(v12, v33);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v27 = *(a1 + 40);
  v28 = static Feed.Kind.relevanceRankedFeeds.getter();
  sub_100007A94(a2, v36);
  v29 = swift_allocObject();
  sub_1000030A0(v36, v29 + 16);
  *(v29 + 56) = a3;
  *(v29 + 64) = a4;

  sub_1000238C4(v28, sub_100007364, v29);
}

uint64_t sub_10000643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20[1] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21 = v15;
    v22[0] = a3;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_100004364(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s]: DAS feed population completed", v14, 0xCu);
    sub_10000493C(v15);
  }

  (*(v7 + 8))(v10, v6);
  sub_100007A94(a1, v22);
  sub_100007370();
  type metadata accessor for DaemonHealthExperienceStore();
  if (swift_dynamicCast())
  {
    dispatch thunk of DaemonHealthExperienceStore.cleanUpManagedObjectContext()();
  }

  return dispatch thunk of OpenTransactionBuilderManager.clearAllCachedTransactionBuilders()();
}

uint64_t sub_100006650(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    v15[1] = a1;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_100004364(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s]: DAS background generation cancelled before starting", v9, 0xCu);
    sub_10000493C(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100006800()
{
  type metadata accessor for DaemonBackgroundGenerationActivity();
  DebuggingResponder.deregisterForDebuggingRequests()();
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10000688C()
{
  sub_100007100(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000073D4(0, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  v5 = v4;
  sub_1000074D4(v4, qword_100041B48);
  sub_100007438(v5, qword_100041B48);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100004210(0, &qword_100041C70, NSUserDefaults_ptr);
  static NSUserDefaults.healthAppShared.getter();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  return UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
}

uint64_t sub_100006A00()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    v15[1] = v1;
    *v9 = 136315138;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_100004364(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s]: debuggingInfoRequested()", v9, 0xCu);
    sub_10000493C(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100006CBC()
{
  _StringGuts.grow(_:)(39);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2 = *v0;
  sub_100006E48();
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x80000001000325F0;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v5);
  v6 = v0[4];
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

unint64_t sub_100006E48()
{
  result = qword_100041C50;
  if (!qword_100041C50)
  {
    type metadata accessor for DaemonBackgroundGenerationActivity();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100041C50);
  }

  return result;
}

void *sub_100006EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[2] = 0xD00000000000002ALL;
  v6[3] = 0x8000000100032610;
  v6[4] = a1;
  v6[5] = a3;
  v6[6] = a2;
  v6[7] = a4;
  v6[8] = a5;

  v18 = a1;

  static Logger.daemon.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27[0] = v22;
    v27[1] = v12;
    *v21 = 136315138;
    swift_getMetatypeMetadata();
    v23 = String.init<A>(describing:)();
    v25 = sub_100004364(v23, v24, v27);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%s]: init()", v21, 0xCu);
    sub_10000493C(v22);
  }

  (*(v14 + 8))(v17, v13);
  type metadata accessor for DaemonBackgroundGenerationActivity();
  DebuggingResponder.registerForDebuggingRequests()();
  return v6;
}

uint64_t sub_100007134(uint64_t a1)
{
  sub_1000073D4(0, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v14 - v6;
  sub_100007100(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100041AC0 != -1)
  {
    swift_once();
  }

  v12 = sub_100007438(v3, qword_100041B48);
  sub_100007470(a1, v11);
  swift_beginAccess();
  UserDefault.wrappedValue.setter();
  swift_endAccess();
  type metadata accessor for AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider();
  static AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.shared.getter();
  (*(v4 + 16))(v7, v12, v3);
  UserDefault.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  dispatch thunk of AppSessionAnalyticsManager.DefaultsPredictiveGenerationAnalyticsDateProvider.dateLastPredictiveGenerationRanForAnalytics.setter();

  return sub_100007B00(a1, sub_100007100);
}

unint64_t sub_100007370()
{
  result = qword_100041C60;
  if (!qword_100041C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100041C60);
  }

  return result;
}

void sub_1000073D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100007438(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007470(uint64_t a1, uint64_t a2)
{
  sub_100007100(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000074D4(uint64_t a1, uint64_t *a2)
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

void sub_100007538()
{
  if (!qword_100041C80)
  {
    sub_1000075CC();
    sub_1000076D8(&qword_100041CA8, sub_1000075CC);
    v0 = type metadata accessor for AnyPipelineProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_100041C80);
    }
  }
}

void sub_1000075CC()
{
  if (!qword_100041C88)
  {
    sub_100007660();
    sub_1000076D8(&qword_100041CA0, sub_100007660);
    v0 = type metadata accessor for AnyPipeline();
    if (!v1)
    {
      atomic_store(v0, &qword_100041C88);
    }
  }
}

void sub_100007660()
{
  if (!qword_100041C90)
  {
    sub_100007A48(255, &qword_100041C98);
    v0 = type metadata accessor for AnyGenerator();
    if (!v1)
    {
      atomic_store(v0, &qword_100041C90);
    }
  }
}

uint64_t sub_1000076D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100007720()
{
  if (!qword_100041CB8)
  {
    sub_1000077B4();
    sub_1000076D8(&qword_100041CE0, sub_1000077B4);
    v0 = type metadata accessor for AnyPipelineProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_100041CB8);
    }
  }
}

void sub_1000077B4()
{
  if (!qword_100041CC0)
  {
    sub_100007848();
    sub_1000076D8(&qword_100041CD8, sub_100007848);
    v0 = type metadata accessor for AnyPipeline();
    if (!v1)
    {
      atomic_store(v0, &qword_100041CC0);
    }
  }
}

void sub_100007848()
{
  if (!qword_100041CC8)
  {
    sub_1000073D4(255, &qword_100041CD0, &type metadata accessor for PluginSharableModelChange, &type metadata accessor for Array);
    v0 = type metadata accessor for AnyGenerator();
    if (!v1)
    {
      atomic_store(v0, &qword_100041CC8);
    }
  }
}

void sub_1000078E0()
{
  if (!qword_100041CE8)
  {
    type metadata accessor for CountryRetrievalRecord();
    type metadata accessor for CountryRetrievalError();
    sub_1000076D8(&qword_100041CF0, &type metadata accessor for CountryRetrievalError);
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_100041CE8);
    }
  }
}

void sub_10000798C()
{
  if (!qword_100041CF8)
  {
    type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
    sub_100007A48(255, &qword_100041D00);
    sub_1000076D8(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher);
    v0 = type metadata accessor for Publishers.Map();
    if (!v1)
    {
      atomic_store(v0, &qword_100041CF8);
    }
  }
}

void sub_100007A48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100007A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100007B94()
{
  if (!qword_100041D30)
  {
    sub_100004210(255, &qword_100041D38, NSObject_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100041D30);
    }
  }
}

char *sub_100007BFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v111 = a2;
  v104 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v106 = *(v4 - 8);
  v107 = v4;
  v5 = *(v106 + 64);
  __chkstk_darwin(v4);
  v105 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v8 = *(v7 - 8);
  v100 = v7;
  v101 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v98 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C();
  v12 = *(v11 - 8);
  v102 = v11;
  v103 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v99 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v96 = *(v97 - 8);
  v15 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95[0] = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_signalDebuggingResponderListener;
  v22 = type metadata accessor for USR1SignalDebuggingResponderListener();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v2[v21] = USR1SignalDebuggingResponderListener.init()();
  v25 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_longRunningProcessOracle;
  v110 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_longRunningProcessOracle;
  type metadata accessor for DaemonLongRunningProcessOracle();
  v26 = swift_allocObject();
  v26[2] = [objc_allocWithZone(HKHealthStore) init];
  v95[1] = type metadata accessor for HealthAppNotificationManager();
  v26[3] = HealthAppNotificationManager.__allocating_init()();
  sub_10000A9A8(0, &qword_100041E70, &qword_100041E78, &protocol descriptor for PinnedContentManaging, &type metadata accessor for TransactionManagedCache);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v26[4] = TransactionManagedCache.init()();
  v30 = type metadata accessor for GenerationQueue();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v26[5] = GenerationQueue.init()();
  DebuggingResponder.registerForDebuggingRequests()();
  *&v2[v25] = v26;
  v33 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_countryOracle;
  v109 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_countryOracle;
  v34 = type metadata accessor for CountryOracle();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *&v2[v33] = CountryOracle.init(mobileCountryCodeManagerProvider:)();
  v37 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthStore;
  *&v2[v37] = [objc_allocWithZone(HKHealthStore) init];
  v38 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_targetQueue;
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000AB20(&qword_100041E80, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A8BC(0, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_10000AA98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v96 + 104))(v95[0], enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v97);
  *&v2[v38] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener;
  v40 = objc_allocWithZone(NSXPCListener);
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 initWithMachServiceName:v41];

  *&v3[v39] = v42;
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_localeChangeObserver] = 0;
  v43 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_notificationManager;
  *&v3[v43] = HealthAppNotificationManager.__allocating_init()();
  v44 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle;
  v45 = v104;
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle] = v104;
  v46 = *&v3[v37];
  v47 = objc_allocWithZone(HKProfileStore);
  v104 = v45;
  v48 = [v47 initWithHealthStore:v46];
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_profileStore] = v48;
  v49 = v48;
  v50 = v98;
  HKProfileStore.profileIdentifiersPublisher.getter();

  sub_10000AB20(&qword_100041D08, 255, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher);
  v51 = v99;
  v52 = v100;
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v101 + 8))(v50, v52);
  sub_10000AB20(&qword_100041D18, 255, sub_10000798C);
  v53 = v102;
  v54 = Publisher.eraseToAnyPublisher()();
  (*(v103 + 8))(v51, v53);
  v55 = *&v3[v44];
  v56 = *&v3[v37];
  v57 = *&v3[v38];
  type metadata accessor for FeedPopulationManagerOracle();
  swift_allocObject();
  v58 = v55;
  v59 = v56;

  v60 = v57;
  v61 = sub_100029B6C(v58, v59, v54, v60);

  v103 = v54;

  v62 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_feedPopulationManagerOracle;
  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_feedPopulationManagerOracle] = v61;
  v63 = *&v3[v44];
  v64 = *&v3[v110];
  v65 = *&v3[v109];
  objc_allocWithZone(type metadata accessor for DaemonListenerDelegate());

  v66 = v63;

  v67 = v111;

  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener] = sub_10002C824(v66, v61, v64, v65, v67);
  v68 = v105;
  static Logger.daemon.getter();
  v69 = v68;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v112 = v73;
    *v72 = 136315138;
    aBlock[0] = ObjectType;
    swift_getMetatypeMetadata();
    v74 = String.init<A>(describing:)();
    v76 = sub_100004364(v74, v75, &v112);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v70, v71, "[%s]: init()", v72, 0xCu);
    sub_10000493C(v73);
  }

  (*(v106 + 8))(v69, v107);
  v77 = *&v3[v44];
  v78 = *&v3[v110];
  v79 = *&v3[v62];
  v80 = *&v3[v109];
  type metadata accessor for DaemonBackgroundGenerationActivity();
  swift_allocObject();
  v81 = v111;

  v82 = v77;

  v83 = sub_100006EB8(v82, v78, v79, v80, v81);

  *&v3[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_backgroundGenerationActivity] = v83;
  v84 = type metadata accessor for DaemonLifecycleManager();
  v114.receiver = v3;
  v114.super_class = v84;
  v85 = objc_msgSendSuper2(&v114, "init");
  DebuggingResponder.registerForDebuggingRequests()();
  v86 = [objc_opt_self() defaultCenter];
  v87 = swift_allocObject();
  *(v87 + 16) = ObjectType;
  aBlock[4] = sub_10000AB68;
  aBlock[5] = v87;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000088FC;
  aBlock[3] = &unk_10003DC58;
  v88 = _Block_copy(aBlock);

  v89 = [v86 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v88];
  _Block_release(v88);

  v90 = *&v85[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_localeChangeObserver];
  *&v85[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_localeChangeObserver] = v89;
  swift_unknownObjectRelease();
  v91 = *&v85[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle];
  v92 = v85;
  v93 = v91;
  dispatch thunk of HealthExperienceStoreOracle.register(observer:)();

  return v92;
}

void sub_100008764(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    v15[1] = a2;
    *v10 = 136315138;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_100004364(v12, v13, v15);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s]: shutting down due to a locale change notification", v10, 0xCu);
    sub_10000493C(v11);
  }

  (*(v4 + 8))(v7, v3);
  exit(0);
}

uint64_t sub_1000088FC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_1000089F0()
{
  v1 = *&v0[OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_localeChangeObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain_n();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease_n();
  }

  v4 = type metadata accessor for DaemonLifecycleManager();
  DebuggingResponder.deregisterForDebuggingRequests()();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v6 = result;
    [result removeObserver:v0];

    v7.receiver = v0;
    v7.super_class = v4;
    return objc_msgSendSuper2(&v7, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008C6C()
{
  _StringGuts.grow(_:)(110);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getObjectType();
  sub_10000AA54();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v26 = v0;
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x656E657473696C20;
  v4._object = 0xEB00000000203A72;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener);
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0x80000001000327C0;
  String.append(_:)(v11);
  v12 = *(v26 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v13 = [v12 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._object = 0x80000001000327E0;
  v18._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v18);
  v19 = *(v26 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_feedPopulationManagerOracle);
  v20._countAndFlagsBits = sub_10002541C();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD000000000000020;
  v21._object = 0x8000000100032800;
  String.append(_:)(v21);
  v22 = *(v26 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_backgroundGenerationActivity);
  v23._countAndFlagsBits = sub_100006CBC();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return 0;
}

uint64_t sub_100008ED0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v32 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v3;
    v16 = v4;
    v17 = v15;
    v33 = v15;
    v34 = ObjectType;
    *v14 = 136315138;
    swift_getMetatypeMetadata();
    v18 = String.init<A>(describing:)();
    v20 = sub_100004364(v18, v19, &v33);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] startXPCListener() Starting", v14, 0xCu);
    sub_10000493C(v17);
    v4 = v16;
    v3 = v31;
  }

  v21 = *(v4 + 8);
  v21(v10, v3);
  v22 = OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener;
  [*(v1 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_listener) setDelegate:*(v1 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener)];
  [*(v1 + v22) resume];
  static Logger.daemon.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v34 = v32;
    swift_getMetatypeMetadata();
    v27 = String.init<A>(describing:)();
    v29 = sub_100004364(v27, v28, &v33);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%s] startXPCListener() Waiting for incoming connections", v25, 0xCu);
    sub_10000493C(v26);
  }

  return (v21)(v8, v3);
}

uint64_t sub_1000091F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v8;
    v35 = v3;
    v15 = v4;
    v16 = v14;
    *&v36 = v14;
    *v13 = 136315138;
    v38[0] = ObjectType;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = ObjectType;
    v20 = sub_100004364(v17, v18, &v36);

    *(v13 + 4) = v20;
    ObjectType = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] enqueueStartupOperations()", v13, 0xCu);
    sub_10000493C(v16);
    v4 = v15;
    v8 = v34;
    v3 = v35;
  }

  v21 = *(v4 + 8);
  v21(v10, v3);
  v22 = *(v1 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle);
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v37)
  {
    sub_1000030A0(&v36, v38);
    sub_100004210(0, &qword_100041E60, NSOperationQueue_ptr);
    v23 = static NSOperationQueue.utility.getter();
    sub_10000AA10(v38, v38[3]);
    dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
    v24 = objc_allocWithZone(type metadata accessor for HealthExperienceStoreCleanupOperation());
    v25 = HealthExperienceStoreCleanupOperation.init(context:)();
    [v23 addOperation:v25];

    return sub_10000493C(v38);
  }

  else
  {
    sub_10000A920(&v36);
    static Logger.daemon.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v36 = v30;
      *v29 = 136315138;
      v38[0] = ObjectType;
      swift_getMetatypeMetadata();
      v31 = String.init<A>(describing:)();
      v33 = sub_100004364(v31, v32, &v36);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%s]: enqueueCleanOperations() oracle doesn't have a store, not running", v29, 0xCu);
      sub_10000493C(v30);
    }

    return (v21)(v8, v3);
  }
}

uint64_t sub_1000095A4(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1)
  {
    static Logger.general.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100004364(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2082;
      v18 = v8;
      swift_errorRetain();
      sub_100004308(0, &qword_100041AD8);
      v15 = String.init<A>(describing:)();
      v17 = sub_100004364(v15, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Could not remove plugin feed item notifications. %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_1000097CC(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  static Logger.general.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100004364(v11, v12, &v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    type metadata accessor for PluginFeedItem.NotificationIdentifier();
    v14 = Array.description.getter();
    v16 = sub_100004364(v14, v15, &v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Removed all plugin feed item notification identifiers: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000099D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthExperienceStoreOracle);
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (!v5)
  {
    return sub_10000A920(v4);
  }

  sub_100004308(0, &qword_100041C60);
  type metadata accessor for DiskHealthExperienceStore();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10000AB20(&qword_100041E58, v3, type metadata accessor for DaemonLifecycleManager);
    dispatch thunk of DiskHealthExperienceStore.register(observer:)();
  }

  return result;
}

uint64_t sub_100009B20(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_10000A8BC(0, &qword_100041E48, &type metadata accessor for URL, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v50 - v14;
  if (v13)
  {
    v16 = sub_10000A0B0(v13);
    if (v16)
    {
      v17 = v16;
      v18 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        goto LABEL_34;
      }

      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_29;
      }

      while (1)
      {
        v54 = v15;
        v55 = v18;
        v50 = ObjectType;
        v51 = v8;
        v52 = v7;
        v53 = v6;
        v20 = 0;
        v8 = kHKHealthAppBundleIdentifier;
        v7 = v17 & 0xC000000000000001;
        while (1)
        {
          if (v7)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *(v55 + 16))
            {
              goto LABEL_33;
            }

            v21 = *(v17 + 8 * v20 + 32);
          }

          ObjectType = v21;
          v6 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            break;
          }

          v22 = [v21 bundleIdentifier];
          if (!v22)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_7:

            goto LABEL_8;
          }

          v23 = v22;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v24;

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v18)
          {
            goto LABEL_7;
          }

          if (v15 == v25 && v18 == v26)
          {

LABEL_26:
            v36 = [objc_opt_self() sharedBehavior];
            if (v36)
            {
              v37 = v36;
              v38 = [v36 healthAppHiddenOrNotInstalled];

              if (!v38)
              {

                goto LABEL_29;
              }
            }

            else
            {
              __break(1u);
            }

            static Logger.daemon.getter();
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v57 = v42;
              *v41 = 136315138;
              v43 = sub_10000A1BC();
              v45 = sub_100004364(v43, v44, &v57);

              *(v41 + 4) = v45;
              _os_log_impl(&_mh_execute_header, v39, v40, "[%s]: health app is not installed. wiping and exiting.", v41, 0xCu);
              sub_10000493C(v42);
            }

            (*(v51 + 8))(v54, v52);
            v46 = type metadata accessor for URL();
            (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
            v47 = type metadata accessor for DiskHealthExperienceStore();
            v48 = *(v47 + 48);
            v49 = *(v47 + 52);
            swift_allocObject();
            DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)();
            dispatch thunk of DiskHealthExperienceStore.deleteAllObjects()();

            exit(0);
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
            goto LABEL_26;
          }

LABEL_8:

          ++v20;
          if (v6 == v19)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (!v19)
        {
LABEL_29:
        }
      }
    }
  }

  static Logger.daemon.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56 = v31;
    v57 = ObjectType;
    *v30 = 136315138;
    swift_getMetatypeMetadata();
    v32 = String.init<A>(describing:)();
    v34 = sub_100004364(v32, v33, &v56);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%s]: unable to cast to uninstalled apps to LSApplicationProxy", v30, 0xCu);
    sub_10000493C(v31);
  }

  return (*(v8 + 8))(v12, v7);
}

void *sub_10000A0B0(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100004988(i, v6);
    sub_100004210(0, &qword_100041E50, LSApplicationProxy_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_10000A260()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = ObjectType;
    *v8 = 136315138;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_100004364(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s]: debuggingInfoRequested()", v8, 0xCu);
    sub_10000493C(v9);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10000A430(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a4();

  return (*(v7 + 8))(v10, v6);
}

id sub_10000A51C()
{
  v0 = HKPreferredRegulatoryDomainProvider();

  return v0;
}

uint64_t sub_10000A548()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100004364(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Removing all plugin feed item notifications", v11, 0xCu);
    sub_10000493C(v12);

    v1 = v18;
  }

  (*(v4 + 8))(v7, v3);
  v16 = *(v1 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_notificationManager);
  v19 = dispatch thunk of HealthAppNotificationManager.removeAllPluginFeedItemNotifications()();
  *(swift_allocObject() + 16) = ObjectType;
  *(swift_allocObject() + 16) = ObjectType;
  sub_10000A80C();
  sub_10000AB20(&qword_100041E40, 255, sub_10000A80C);
  Publisher.retainingSink(receiveCompletion:receiveValue:)();
}

void sub_10000A80C()
{
  if (!qword_100041E30)
  {
    sub_10000A8BC(255, &qword_100041E38, &type metadata accessor for PluginFeedItem.NotificationIdentifier, &type metadata accessor for Array);
    sub_100004308(255, &qword_100041AD8);
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_100041E30);
    }
  }
}

void sub_10000A8BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10000A920(uint64_t a1)
{
  sub_10000A9A8(0, &qword_100041D28, &qword_100041C60, &protocol descriptor for HealthExperienceStore, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000A9A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004308(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_10000AA10(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000AA54()
{
  result = qword_100041E68;
  if (!qword_100041E68)
  {
    type metadata accessor for DaemonLifecycleManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100041E68);
  }

  return result;
}

unint64_t sub_10000AA98()
{
  result = qword_100041E90;
  if (!qword_100041E90)
  {
    sub_10000A8BC(255, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041E90);
  }

  return result;
}

uint64_t sub_10000AB20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000AB88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v42 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = v3;
    v16 = v15;
    v43[0] = v15;
    *v14 = 136315138;
    v44 = v2;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004364(v17, v18, v43);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] start() Starting", v14, 0xCu);
    sub_10000493C(v16);
    v3 = v41;
  }

  v20 = *(v4 + 8);
  v20(v10, v3);
  v21 = v1[11];
  v22 = objc_autoreleasePoolPush();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v24 = result;
    [result addObserver:v21];

    sub_100008ED0();
    sub_1000091F0();
    objc_autoreleasePoolPop(v22);
    sub_10000BD98();
    v25 = v1[3];
    v26 = swift_allocObject();
    v27 = v42;
    *(v26 + 16) = v1;
    *(v26 + 24) = v27;

    OrchestrationDirector.start(completion:)();

    OrchestrationDirector.environment.getter();
    sub_10000E6F8(&qword_100041FA8, v28, type metadata accessor for HealthAppDaemonCoordinator);
    EnvironmentalStateManager.register(observer:)();

    OrchestrationDirector.environment.getter();
    v29 = EnvironmentalStateManager.currentState.getter();

    v30._rawValue = v29;
    sub_100001C08(v30);

    v31 = v1[14];

    os_unfair_lock_lock(v31 + 14);
    sub_10000E4D4(&v31[4]);
    os_unfair_lock_unlock(v31 + 14);

    [v1[13] resume];
    v32 = [objc_opt_self() mainRunLoop];
    [v32 run];

    static Logger.daemon.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136315138;
      v44 = v27;
      swift_getMetatypeMetadata();
      v37 = String.init<A>(describing:)();
      v39 = sub_100004364(v37, v38, v43);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%s] start() Shutdown", v35, 0xCu);
      sub_10000493C(v36);
    }

    return (v20)(v8, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000B060(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v129 = a8;
  v9 = v8;
  v135 = a2;
  v136 = a7;
  v134 = a6;
  v131 = a4;
  v122 = a3;
  v127 = *v9;
  v12 = type metadata accessor for DispatchTimeInterval();
  v123 = *(v12 - 8);
  v124 = v12;
  v13 = *(v123 + 64);
  __chkstk_darwin(v12);
  v125 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for UUID();
  v121 = *(v15 - 8);
  v16 = v121[8];
  __chkstk_darwin(v15);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  *&v126 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10000E5DC();
  v23 = swift_allocObject();
  *(v23 + 56) = 0;
  *(v23 + 16) = 256;
  *(v23 + 18) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  *(v23 + 24) = 0;
  *(v23 + 48) = Current;
  v9[14] = v23;
  v9[2] = a1;
  v130 = v9;
  v9[8] = a5;
  v24 = type metadata accessor for BuiltinProvider();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = a5;
  v28 = BuiltinProvider.init()();
  v29 = type metadata accessor for HealthKitProvider();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v132 = HealthKitProvider.init()();
  sub_100004308(0, &qword_100041FC0);
  v133 = a1;
  v32 = v128;
  v33 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  if (v32)
  {

    swift_unknownObjectRelease();

LABEL_6:
    v50 = v130;
    v51 = v130[2];

    v52 = v50[14];

    swift_deallocPartialClassInstance();
    return;
  }

  v113 = v18;
  v114 = v15;
  v119 = v27;
  v34 = v33;
  static Logger.orchestration.getter();
  v35 = type metadata accessor for EnvironmentalStateManager();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v128 = 0;
  v38 = EnvironmentalStateManager.init(logger:)();
  v117 = &type metadata accessor for _ContiguousArrayStorage;
  sub_10000E410(0, &qword_100041FC8, &qword_100041FC0, &protocol descriptor for EnvironmentalStateComponentProvider, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  v118 = xmmword_100031C70;
  *(inited + 16) = xmmword_100031C70;
  *(inited + 56) = v24;
  *(inited + 64) = &protocol witness table for BuiltinProvider;
  v40 = v28;
  *(inited + 32) = v28;
  *(inited + 96) = v29;
  v116 = &type metadata accessor for HealthKitProvider;
  *(inited + 104) = sub_10000E6F8(&qword_100041FD0, 255, &type metadata accessor for HealthKitProvider);
  v41 = v132;
  *(inited + 72) = v132;
  v137._rawValue = v34;

  v115 = v34;

  sub_1000285AC(inited);
  v120 = v38;
  EnvironmentalStateManager.start(providers:)(v137);

  sub_10000E410(0, &qword_100041FD8, &qword_100041FE0, &protocol descriptor for InputSignalProvider, v117);
  v42 = swift_initStackObject();
  *(v42 + 32) = v40;
  v43 = v42 + 32;
  *(v42 + 16) = v118;
  *(v42 + 56) = v24;
  *(v42 + 64) = &protocol witness table for BuiltinProvider;
  *(v42 + 96) = v29;
  v44 = v42;
  *(v42 + 104) = sub_10000E6F8(&qword_100041FE8, 255, v116);
  *(v44 + 72) = v41;
  v45 = sub_100004308(0, &qword_100041FE0);

  v46 = v128;
  v47 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  if (v46)
  {

    swift_unknownObjectRelease();

    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_6;
  }

  v117 = v40;
  *&v118 = v43;
  v137._rawValue = v47;

  sub_100028590(v48);
  rawValue = v137._rawValue;
  sub_100004308(0, &qword_100041AE0);
  v53 = HealthAppPluginSource.conformingPlugins<A>(_:)();
  v112 = v45;
  v116 = v44;
  v128 = 0;

  swift_unknownObjectRetain();

  static Logger.orchestration.getter();
  v54 = v113;
  UUID.init()();
  v55 = UUID.uuidString.getter();
  v57 = v56;
  (v121[1])(v54, v114);
  sub_10000E63C(5, v55, v57);

  static String._fromSubstring(_:)();

  v58 = type metadata accessor for OrchestrationDirector();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v121 = rawValue;
  v114 = v53;
  v61 = OrchestrationDirector.init(environment:inputSignalProviders:executorProviders:contextProvider:dispatchers:logger:debugIdentifier:)();
  v62 = v130;
  v130[3] = v61;
  v63 = type metadata accessor for OrchestrationWorkQueueStatusObserver();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = OrchestrationWorkQueueStatusObserver.init()();
  v62[6] = v66;
  v67 = v62[3];
  v139 = v63;
  v140 = sub_10000E6F8(&qword_100041FF0, 255, &type metadata accessor for OrchestrationWorkQueueStatusObserver);
  v137._rawValue = v66;

  OrchestrationDirector.statusObserver.setter();

  v68 = v129;
  v62[13] = v129;
  v69 = v62[3];
  v70 = type metadata accessor for AutoPauseController();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();

  v122 = v68;

  v62[4] = AutoPauseController.init(target:paused:environment:)();
  sub_1000020B0(0, &qword_100041FF8, &type metadata accessor for EnvironmentalStateDescription, &type metadata accessor for _ContiguousArrayStorage);
  v129 = v73;
  v74 = *(type metadata accessor for EnvironmentalStateDescription() - 8);
  v127 = *(v74 + 72);
  v75 = *(v74 + 80);
  v76 = swift_allocObject();
  v126 = xmmword_100031A60;
  *(v76 + 16) = xmmword_100031A60;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static EnvironmentalStateDescription.appSuspended(bundleIdentifier:)();

  AutoPauseController.pauseIfAnyMatches(descriptions:)(v76);

  v77 = v62[3];
  v78 = type metadata accessor for AutoPriorityThresholdController();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();

  v62[5] = AutoPriorityThresholdController.init(target:environment:)();
  v81 = swift_allocObject();
  *(v81 + 16) = v126;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static EnvironmentalStateDescription.appSuspended(bundleIdentifier:)();

  AutoPriorityThresholdController.autoUpdatePriorityThreshold(pauseIfAnyMatches:)(v81);

  v82 = v62[3];
  v83 = type metadata accessor for OrchestrationRetryManager();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();

  v62[7] = OrchestrationRetryManager.init(director:)();
  v86 = objc_autoreleasePoolPush();
  v87 = objc_allocWithZone(type metadata accessor for DaemonLifecycleManager());
  v88 = v119;
  v89 = v136;

  v90 = sub_100007BFC(v88, v89);
  objc_autoreleasePoolPop(v86);
  v62[11] = v90;
  v91 = v62[3];
  v139 = &type metadata for WorkRunner;
  v140 = sub_10000E740();
  v137._rawValue = v91;
  v138 = v90;
  v92 = v124;
  v93 = v125;
  *v125 = 6;
  (*(v123 + 104))(v93, enum case for DispatchTimeInterval.seconds(_:), v92);
  v94 = type metadata accessor for HealthAppForegroundWorkManager();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  v97 = v90;
  swift_retain_n();
  v98 = v97;
  v62[12] = HealthAppForegroundWorkManager.init(workRunner:urgentWorkTimeoutInterval:)();
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  v99 = type metadata accessor for PinnedContentStateFeedItemCacheObserver();
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  swift_allocObject();
  v102 = v88;
  v62[9] = PinnedContentStateFeedItemCacheObserver.init(pinnedContentManager:storeOracle:)();
  v103 = [objc_opt_self() sharedBehavior];
  if (!v103)
  {
    __break(1u);
    goto LABEL_13;
  }

  v104 = v103;
  v105 = [v103 features];

  if (!v105)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v106 = v116;
  swift_setDeallocating();
  v107 = *(v106 + 2);
  swift_arrayDestroy();
  v108 = [v105 simplifiedLogging];

  if (v108)
  {
    dispatch thunk of PinnedContentManagerProvider.manager(for:)();
    v109 = *(v99 + 48);
    v110 = *(v99 + 52);
    swift_allocObject();
    v111 = PinnedContentStateFeedItemCacheObserver.init(pinnedContentManager:storeOracle:)();

    swift_unknownObjectRelease();

    v62[10] = v111;
  }

  else
  {

    swift_unknownObjectRelease();

    v62[10] = 0;
  }
}

void sub_10000BD98()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedScheduler];
  v3 = String._bridgeToObjectiveC()();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v7[4] = sub_10000E4F0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000D8B8;
  v7[3] = &unk_10003DDE0;
  v6 = _Block_copy(v7);

  [v2 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

void sub_10000BF10(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[14];

  os_unfair_lock_lock((v9 + 56));
  *(v9 + 16) = 1;
  v10 = *(v9 + 48);
  os_unfair_lock_unlock((v9 + 56));

  v11 = CFAbsoluteTimeGetCurrent() - v10;
  static Logger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    v21[1] = a2;
    *v14 = 136315394;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_100004364(v16, v17, v21);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] start() Initial orchestration run complete after %fs", v14, 0x16u);
    sub_10000493C(v15);
  }

  (*(v5 + 8))(v8, v4);
  v19 = a1[6];
  OrchestrationWorkQueueStatusObserver.didFinishStartup(latency:)(v11);
  v20 = a1[12];
  HealthAppForegroundWorkManager.start()();
}

void sub_10000C124(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  sub_10000E6F8(&qword_100041FB0, a2, type metadata accessor for HealthAppDaemonCoordinator);
  v4 = objc_allocWithZone(type metadata accessor for HealthAppOrchestrationListener());
  v5 = v3;

  v6 = HealthAppOrchestrationListener.init(listener:coordinator:)();

  *(a1 + 24) = v6;
}

uint64_t sub_10000C1E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 96);

  v10 = *(v0 + 112);

  return v0;
}

uint64_t sub_10000C260()
{
  sub_10000C1E0();

  return _swift_deallocClassInstance(v0, 120, 7);
}

__n128 sub_10000C2B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C2CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000C328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

Swift::Int sub_10000C394()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000C400()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000C450(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v44 = &v38 - v15;
  v16 = type metadata accessor for Logger();
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = a1;
    v23 = v22;
    v39 = swift_slowAlloc();
    v40 = a4;
    v45 = v39;
    *v23 = 136446210;
    v24 = _typeName(_:qualified:)();
    v38 = v12;
    v26 = a2;
    v27 = a3;
    v28 = v6;
    v29 = a5;
    v30 = sub_100004364(v24, v25, &v45);

    *(v23 + 4) = v30;
    a5 = v29;
    v6 = v28;
    a3 = v27;
    a2 = v26;
    v31 = v21;
    v32 = v38;
    _os_log_impl(&_mh_execute_header, v20, v31, "[%{public}s] Ensuring orchestration is done processing work before starting legacy background generation.", v23, 0xCu);
    sub_10000493C(v39);
    a4 = v40;

    a1 = v41;

    (*(v42 + 8))(v19, v43);
  }

  else
  {

    (*(v42 + 8))(v19, v43);
    v32 = v12;
  }

  v33 = v6[3];
  v34 = v44;
  static PriorityRuleSet.Priority.lowestPriority.getter();
  v35 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = swift_allocObject();
  *(v36 + 16) = v6;
  *(v36 + 24) = a1;
  *(v36 + 32) = a2 & 1;
  *(v36 + 40) = a3;
  *(v36 + 48) = a4;
  *(v36 + 56) = a5;
  *(v36 + 64) = v32;

  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();

  return sub_100002114(v34);
}

uint64_t sub_10000C7C4(uint64_t a1, void *a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v40 = a3;
  v39 = a2;
  v7 = type metadata accessor for DateInterval();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136446210;
    v21 = _typeName(_:qualified:)();
    v23 = a1;
    v24 = sub_100004364(v21, v22, &v46);

    *(v19 + 4) = v24;
    a1 = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Orchestration done processing work, starting legacy background generation.", v19, 0xCu);
    sub_10000493C(v20);

    (*(v12 + 8))(v15, v38);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v25 = *(*(a1 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v26 = *(v25 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v27 = *(v25 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v28 = *(v25 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v29 = *(v25 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v30 = *(v25 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v31 = *(v25 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v32 = v26;

  v33 = sub_10000F204(v32, v27, v28, v29, v30, v31);
  static DateInterval.allTimeInterval.getter();
  if (v39)
  {
    v34 = v39;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v35 = sub_1000108AC(v10, v34, v40 & 1, v41, v42, v43);

  return (*(v44 + 8))(v10, v45);
}

void sub_10000CB50(uint64_t a1)
{
  v3 = *(*(v1 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v4 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v5 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v6 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v7 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v8 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v9 = *(v3 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  v10 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v11 = v4;

  v12 = sub_10000F204(v11, v5, v6, v7, v8, v9);
  sub_10001C3A8(a1);
}

void sub_10000CC88(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(*(v2 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v6 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v7 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v8 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v9 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v10 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v11 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  v12 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v13 = v6;

  v14 = sub_10000F204(v13, v7, v8, v9, v10, v11);
  sub_100019E74(a1, a2);
}

uint64_t sub_10000CDD0(void (*a1)(void))
{
  v3 = *(v1 + 64);
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v7)
  {
    sub_100004308(0, &qword_100041C60);
    type metadata accessor for DiskHealthExperienceStore();
    if (swift_dynamicCast())
    {
      dispatch thunk of DiskHealthExperienceStore.deleteAllObjects()();
      (a1)(0);
      exit(0);
    }
  }

  else
  {
    sub_10000A920(v6);
  }

  sub_10000E478();
  swift_allocError();
  v4 = _convertErrorToNSError(_:)();
  a1();
}

uint64_t sub_10000CEC8()
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = *(v0 + 24);
  v6 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();
  return sub_100002114(v4);
}

uint64_t sub_10000CFC4()
{
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = *(v0 + 24);
  v6 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  OrchestrationDirector.recheckFailedTriggers(priorityThresholdOverride:barrier:)();
  return sub_100002114(v4);
}

uint64_t sub_10000D0C0()
{
  v1 = *(v0 + 24);
  OrchestrationDirector.debugSnapshot.getter();
  v2 = DebugSnapshot.description.getter();

  return v2;
}

void sub_10000D134()
{
  v1 = v0;
  v2 = *(*(*(v0 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_longRunningProcessOracle) + 40);

  dispatch thunk of GenerationQueue.cancelAllOperations()();

  v3 = *(v1 + 96);
  HealthAppForegroundWorkManager.cancelLegacyGeneration()();
}

uint64_t sub_10000D190()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 96);
  *v5 = 1;
  (*(v2 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v1);
  HealthAppForegroundWorkManager.forceStart(within:)();
  (*(v2 + 8))(v5, v1);
  return HealthAppForegroundWorkManager.foregroundWithLegacyGeneration(completion:)();
}

uint64_t sub_10000D2E0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Logger.daemon.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v20[4] = a3;
      swift_getMetatypeMetadata();
      v16 = String.init<A>(describing:)();
      v18 = sub_100004364(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Background generation fired.", v14, 0xCu);
      sub_10000493C(v15);

      a1 = v19;
    }

    (*(v6 + 8))(v9, v5);
    sub_10000D4DC(a1);
  }

  return result;
}

uint64_t sub_10000D4DC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1000020B0(0, &qword_100041F98, &type metadata accessor for PriorityRuleSet.Priority, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v4;
  aBlock[4] = sub_10000E510;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F14;
  aBlock[3] = &unk_10003DE30;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  [v16 setExpirationHandler:v15];
  _Block_release(v15);
  static Logger.daemon.getter();
  v37 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v10;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136446210;
    v22 = _typeName(_:qualified:)();
    v35 = v9;
    v24 = v16;
    v25 = v2;
    v26 = v8;
    v27 = v4;
    v28 = sub_100004364(v22, v23, aBlock);

    *(v19 + 4) = v28;
    v4 = v27;
    v8 = v26;
    v2 = v25;
    v16 = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] Ensuring orchestration is done processing work before starting legacy background generation.", v19, 0xCu);
    sub_10000493C(v21);

    (*(v36 + 8))(v37, v35);
  }

  else
  {

    (*(v10 + 8))(v37, v9);
  }

  v29 = v2[3];
  v30 = type metadata accessor for PriorityRuleSet.Priority();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = v2;
  v31[3] = v16;
  v31[4] = v4;
  v32 = v16;

  OrchestrationDirector.fireOnce(priorityThresholdOverride:barrier:)();

  return sub_100002114(v8);
}

void sub_10000D8B8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000D920(void *a1, uint64_t a2)
{
  v40 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v35 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v34[0] - 8) + 64);
  __chkstk_darwin(v34[0]);
  v34[1] = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v41);
  v38 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446210;
    v22 = _typeName(_:qualified:)();
    v24 = sub_100004364(v22, v23, aBlock);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] Background generation expired.", v20, 0xCu);
    sub_10000493C(v21);
  }

  (*(v14 + 8))(v17, v13);
  sub_10000E524();
  _typeName(_:qualified:)();
  v25 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E6F8(&qword_100041E80, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000020B0(0, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_10000E578(&qword_100041E90, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v36 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = swift_allocObject();
  v28 = v40;
  *(v27 + 16) = v40;
  *(v27 + 24) = a2;
  aBlock[4] = sub_10000E570;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F14;
  aBlock[3] = &unk_10003DEA8;
  v29 = _Block_copy(aBlock);
  v30 = v28;
  static DispatchQoS.unspecified.getter();
  v45 = &_swiftEmptyArrayStorage;
  sub_10000E6F8(&qword_100041B18, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000020B0(0, &qword_100041B20, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_10000E578(&qword_100041B28, &qword_100041B20, &type metadata accessor for DispatchWorkItemFlags);
  v31 = v42;
  v32 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v43 + 8))(v31, v32);
  (*(v39 + 8))(v25, v41);
}

uint64_t sub_10000DF6C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  if ([a1 setTaskExpiredWithRetryAfter:&v19 error:60.0])
  {

    return _objc_retain_x1();
  }

  else
  {
    v18 = v19;
    v7 = v19;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.daemon.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = v8;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = _typeName(_:qualified:)();
      v16 = sub_100004364(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Failed to retry after background generation expired. Setting task as completed.", v12, 0xCu);
      sub_10000493C(v13);
    }

    (*(v3 + 8))(v6, v2);
    [a1 setTaskCompleted];
  }
}

id sub_10000E1FC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = a1;
    v12 = a2;
    v13 = v11;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100004364(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Orchestration done processing work, starting legacy background generation.", v13, 0xCu);
    sub_10000493C(v14);

    a2 = v12;
    a1 = v20;
  }

  (*(v5 + 8))(v8, v4);
  v18 = *(*(a1 + 88) + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_backgroundGenerationActivity);

  sub_100004B68();

  return [a2 setTaskCompleted];
}

void sub_10000E410(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004308(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10000E478()
{
  result = qword_100041FA0;
  if (!qword_100041FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041FA0);
  }

  return result;
}

uint64_t sub_10000E4F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E524()
{
  result = qword_100041AD0;
  if (!qword_100041AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041AD0);
  }

  return result;
}

uint64_t sub_10000E578(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000020B0(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000E5DC()
{
  if (!qword_100041FB8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = type metadata accessor for ManagedBuffer();
    if (!v1)
    {
      atomic_store(v0, &qword_100041FB8);
    }
  }
}

uint64_t sub_10000E63C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_10000E6F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000E740()
{
  result = qword_100042000;
  if (!qword_100042000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042000);
  }

  return result;
}

__n128 sub_10000E794(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000E7A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthAppDaemonCoordinator.CacheError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HealthAppDaemonCoordinator.CacheError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000E920()
{
  result = qword_100042008;
  if (!qword_100042008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042008);
  }

  return result;
}

id sub_10000E974(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC10healthappd22DaemonLifecycleManager_healthPluginHostListener);
  v6 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle);
  v7 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v8 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle);
  v9 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle);
  v10 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager);
  v11 = *(v5 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities);
  v12 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
  v13 = v6;

  v14 = sub_10000F204(v13, v7, v8, v9, v10, v11);
  v15 = sub_1000125C8(a1, a2);

  return v15;
}

uint64_t sub_10000EAB0()
{
  type metadata accessor for DaemonLongRunningProcessOracle();
  DebuggingResponder.deregisterForDebuggingRequests()();

  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10000EB2C()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    v15[1] = v1;
    *v9 = 136315138;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_100004364(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s]: debuggingInfoRequested()", v9, 0xCu);
    sub_10000493C(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000EDE8()
{
  v1._countAndFlagsBits = 15420;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v2 = *v0;
  sub_10000EF30();
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 8224;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

unint64_t sub_10000EF30()
{
  result = qword_1000420D8;
  if (!qword_1000420D8)
  {
    type metadata accessor for DaemonLongRunningProcessOracle();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000420D8);
  }

  return result;
}

uint64_t sub_10000EF74()
{
  v1 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager;
  if (*(v0 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager);
  }

  else
  {
    v2 = sub_10000EFDC(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10000EFDC(uint64_t a1)
{
  v2 = type metadata accessor for PluginAdvertisableFeatureSourceContext.DeviceSource();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(a1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 16);
  v8 = *(a1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle);
  v24 = type metadata accessor for CountryOracle();
  v25 = sub_100020860(&qword_1000423A0, &type metadata accessor for CountryOracle);
  v23 = v8;
  (*(v3 + 104))(v6, enum case for PluginAdvertisableFeatureSourceContext.DeviceSource.activePairedDevice(_:), v2);
  v9 = type metadata accessor for HealthPluginAdvertisableFeatureManagerFactory();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v7;

  v13 = HealthPluginAdvertisableFeatureManagerFactory.init(healthStore:countryProvider:activeDeviceSource:queue:)();
  v24 = v9;
  v25 = &protocol witness table for HealthPluginAdvertisableFeatureManagerFactory;
  v23 = v13;
  v14 = type metadata accessor for HealthWelcomeFlowSignalProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  HealthWelcomeFlowSignalProvider.init()();
  v22[3] = type metadata accessor for CurrentOSUpdateDateProvider();
  v22[4] = &protocol witness table for CurrentOSUpdateDateProvider;
  sub_100020768(v22);
  CurrentOSUpdateDateProvider.init()();
  v17 = type metadata accessor for HealthWelcomeFlowSignalManager();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = HealthWelcomeFlowSignalManager.init(advertisableFeatureManagerFactory:healthWelcomeFlowSignalProvider:currentOSUpdateDateProvider:currentDateGenerator:)();

  return v20;
}

id sub_10000F204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v57 = a1;
  v58 = a6;
  v56 = a5;
  v62 = a4;
  v63 = a2;
  v64 = a3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v59 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007100(0);
  v55 = v11;
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v54 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v53);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService____lazy_storage___healthWelcomeFlowSignalManager] = 0;
  v52 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_schedulerDispatchQueue;
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_100020860(&qword_100041E80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10001DA6C(0, &qword_100041E88, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_10000AA98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v53);
  *&v6[v52] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_lock;
  v23 = type metadata accessor for UnfairLock();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v6[v22] = UnfairLock.init()();
  v26 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork;
  v27 = type metadata accessor for CancellableProgressList();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&v6[v26] = CancellableProgressList.init()();
  static UserDefaultsKeys.appFirstLaunchDateKey.getter();
  sub_100004210(0, &qword_100041C70, NSUserDefaults_ptr);
  static NSUserDefaults.healthAppShared.getter();
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v32 = v54;
  v31(v54, 1, 1, v30);
  UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
  static UserDefaultsKeys.appLastOpenedDateKey.getter();
  static NSUserDefaults.healthAppShared.getter();
  v31(v32, 1, 1, v30);
  v33 = v56;
  UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
  v35 = v57;
  v34 = v58;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle] = v57;
  v36 = v64;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle] = v63;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle] = v36;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle] = v62;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager] = v33;
  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_backgroundGenerationActivities] = v34;
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  v37 = v35;

  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v38 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_availablePlugins] = v38;
  v39 = v59;
  static Logger.daemon.getter();
  v40 = v39;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v65 = v44;
    *v43 = 136315138;
    v67 = ObjectType;
    swift_getMetatypeMetadata();
    v45 = String.init<A>(describing:)();
    v47 = sub_100004364(v45, v46, &v65);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "[%s] init()", v43, 0xCu);
    sub_10000493C(v44);
  }

  (*(v60 + 8))(v40, v61);
  v48 = type metadata accessor for HealthPluginHostService(0);
  v66.receiver = v7;
  v66.super_class = v48;
  v49 = objc_msgSendSuper2(&v66, "init");
  DebuggingResponder.registerForDebuggingRequests()();

  return v49;
}

void sub_10000F8C8(void *a1)
{
  ObjectType = swift_getObjectType();
  v45 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___HealthPluginHostProtocol];
  v44 = "handleJournaledSharingEntries:completion:";
  v1 = [v45 classesForSelector:? argumentIndex:? ofReply:?];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = v2;
  sub_10001F0C8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100031C70;
  *(inited + 32) = sub_100004210(0, &qword_100042360, NSArray_ptr);
  *(inited + 40) = sub_100004210(0, &qword_100042368, HKSummarySharingEntry_ptr);
  *&aBlock = _swiftEmptyArrayStorage;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    swift_getObjCClassFromMetadata();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = aBlock;
    v5 = aBlock >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_50;
      }

LABEL_14:
      *&aBlock = v9;
      if (swift_dynamicCast())
      {
        if (*(&v52 + 1))
        {
          aBlock = v51;
          v47 = v52;
          v48 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1000258D8(0, *(v6 + 2) + 1, 1, v6);
          }

          v12 = *(v6 + 2);
          v11 = *(v6 + 3);
          if (v12 >= v11 >> 1)
          {
            v6 = sub_1000258D8((v11 > 1), v12 + 1, 1, v6);
          }

          *(v6 + 2) = v12 + 1;
          v13 = &v6[40 * v12];
          v14 = aBlock;
          v15 = v47;
          *(v13 + 8) = v48;
          *(v13 + 2) = v14;
          *(v13 + 3) = v15;
          goto LABEL_10;
        }
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
      }

      sub_100020F24(&v51, &qword_100042370, &type metadata for AnyHashable);
LABEL_10:
      ++v7;
      if (v10 == v5)
      {
        goto LABEL_24;
      }
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v8 = *(v4 + 8 * v7 + 32);
    v9 = swift_unknownObjectRetain();
    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_24:

  v16 = sub_10002A2D4(v6);

  sub_1000101D4(v16);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v45 setClasses:isa forSelector:v44 argumentIndex:0 ofReply:0];

  v44 = "postNotificationWith:userInfo:";
  v18 = [v45 classesForSelector:? argumentIndex:? ofReply:?];
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = v19;
  sub_10001F0C8();
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100031C70;
  *(v20 + 32) = sub_100004210(0, &qword_100042378, NSString_ptr);
  *(v20 + 40) = sub_100004210(0, &qword_100042380, HKProfileIdentifier_ptr);
  *&aBlock = _swiftEmptyArrayStorage;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  swift_getObjCClassFromMetadata();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  swift_getObjCClassFromMetadata();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v21 = aBlock;
  if (aBlock >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v23 = 0;
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v25 = *(v21 + 8 * v23 + 32);
        v26 = swift_unknownObjectRetain();
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_52;
        }
      }

      *&aBlock = v26;
      if (swift_dynamicCast())
      {
        if (*(&v52 + 1))
        {
          aBlock = v51;
          v47 = v52;
          v48 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1000258D8(0, *(v24 + 2) + 1, 1, v24);
          }

          v29 = *(v24 + 2);
          v28 = *(v24 + 3);
          if (v29 >= v28 >> 1)
          {
            v24 = sub_1000258D8((v28 > 1), v29 + 1, 1, v24);
          }

          *(v24 + 2) = v29 + 1;
          v30 = &v24[40 * v29];
          v31 = aBlock;
          v32 = v47;
          *(v30 + 8) = v48;
          *(v30 + 2) = v31;
          *(v30 + 3) = v32;
          goto LABEL_34;
        }
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
      }

      sub_100020F24(&v51, &qword_100042370, &type metadata for AnyHashable);
LABEL_34:
      ++v23;
      if (v27 == v22)
      {
        goto LABEL_49;
      }
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_49:

  v33 = sub_10002A2D4(v24);

  sub_1000101D4(v33);
  v34 = Set._bridgeToObjectiveC()().super.isa;

  [v45 setClasses:v34 forSelector:"postNotificationWith:userInfo:" argumentIndex:1 ofReply:0];

  [a1 setExportedInterface:v45];
  [a1 setExportedObject:v41];
  LODWORD(v34) = [a1 processIdentifier];
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v41;
  *(v35 + 32) = ObjectType;
  v48 = sub_1000236CC;
  v49 = v35;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v47 = sub_100003F14;
  *(&v47 + 1) = &unk_10003E580;
  v36 = _Block_copy(&aBlock);
  v37 = v41;

  [a1 setInvalidationHandler:v36];
  _Block_release(v36);
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  *(v38 + 24) = v37;
  *(v38 + 32) = ObjectType;
  v48 = sub_1000236F4;
  v49 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v47 = sub_100003F14;
  *(&v47 + 1) = &unk_10003E5D0;
  v39 = _Block_copy(&aBlock);
  v40 = v37;

  [a1 setInterruptionHandler:v39];
  _Block_release(v39);
  [a1 resume];
}

uint64_t sub_1000101D4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_100020F94(v12))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_100020FE8(*(v1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    sub_100026244(v12, v10);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000102D8(int a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24[0] = v16;
    v24[1] = a3;
    *v15 = 136315394;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004364(v17, v18, v24);
    v22 = v7;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 1024;
    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, a4, v15, 0x12u);
    sub_10000493C(v16);

    (*(v8 + 8))(v11, v22);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  return sub_1000104D0();
}

uint64_t sub_1000104D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    v17[1] = ObjectType;
    *v10 = 136315138;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_100004364(v12, v13, v17);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] cancel()", v10, 0xCu);
    sub_10000493C(v11);
  }

  (*(v4 + 8))(v7, v3);
  v15 = *(v1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork);

  dispatch thunk of CancellableProgressList.cancelAll()();
}

void sub_1000106AC()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000104D0();
  static Logger.generation.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    v12[1] = ObjectType;
    *v8 = 136315394;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_100004364(v9, v10, v12);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100004364(0xD000000000000016, 0x8000000100033180, v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] %s, shutting down!", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v5, v1);
  exit(0);
}

id sub_1000108AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v148 = a5;
  v135 = a4;
  v136 = a3;
  ObjectType = swift_getObjectType();
  v145 = type metadata accessor for Logger();
  v144 = *(v145 - 1);
  v10 = *(v144 + 64);
  v11 = __chkstk_darwin(v145);
  v13 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v123 - v15;
  __chkstk_darwin(v14);
  v18 = &v123 - v17;
  v139 = type metadata accessor for GenerationWorkRequest();
  v138 = *(v139 - 8);
  v19 = *(v138 + 64);
  __chkstk_darwin(v139);
  v137 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for TransactionRecord();
  v140 = *(v141 - 8);
  v21 = *(v140 + 64);
  v22 = __chkstk_darwin(v141);
  v23 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v143 = &v123 - v24;
  v25 = *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_lock];
  dispatch thunk of UnfairLock.lock()();
  v26 = *&v6[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle];
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v152)
  {
    v146 = a6;
    v142 = v25;
    sub_1000030A0(&v151, &v153);
    v27 = [objc_opt_self() standardUserDefaults];
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 BOOLForKey:v28];

    if (v29)
    {
      static Logger.daemon.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *&v150 = swift_slowAlloc();
        *v32 = 136315650;
        *&v151 = ObjectType;
        swift_getMetatypeMetadata();
        v33 = String.init<A>(describing:)();
        v35 = sub_100004364(v33, v34, &v150);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_100004364(0xD000000000000061, 0x8000000100033110, &v150);
        *(v32 + 22) = 2080;
        *(v32 + 24) = sub_100004364(0xD000000000000032, 0x8000000100032F90, &v150);
        _os_log_impl(&_mh_execute_header, v30, v31, "[%s] %s %s default is set - skipping work", v32, 0x20u);
        swift_arrayDestroy();
      }

      (*(v144 + 8))(v16, v145);
      v148(0);
      v36 = [objc_opt_self() progressWithTotalUnitCount:0];
LABEL_27:
      v43 = v36;
      sub_10000493C(&v153);
      goto LABEL_28;
    }

    if (*(a2 + 16))
    {

      v45 = sub_10002A1EC(v44);
    }

    else
    {
      v45 = 0;
    }

    v46 = sub_1000213EC(v45);
    if (v46 >> 62)
    {
      v105 = _CocoaArrayWrapper.endIndex.getter();

      if (v105)
      {
LABEL_14:
        v134 = v45;
        v48 = *&v7[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle];
        v49 = *(v48 + 16);
        v50 = v143;
        v51 = TransactionRecord.init(name:)();
        v52 = *(v48 + 32);
        __chkstk_darwin(v51);

        TransactionManagedCache.fetchCachedOrCreate(for:using:)();

        sub_100007A94(&v153, &v150);
        sub_100007A94(&v151, v149);
        v53 = swift_allocObject();
        v145 = v49;
        v53[2] = v49;
        sub_1000030A0(&v150, (v53 + 3));
        sub_1000030A0(v149, (v53 + 8));
        v133 = v53;
        v54 = ObjectType;
        v53[13] = v7;
        v53[14] = v54;
        v55 = v140;
        v56 = v140 + 16;
        v144 = *(v140 + 16);
        v57 = v141;
        (v144)(v23, v50, v141);
        v58 = *(v55 + 80);
        v59 = v7;
        v124 = v7;
        v60 = (v58 + 24) & ~v58;
        v61 = (v21 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
        v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
        v63 = swift_allocObject();
        *(v63 + 16) = v59;
        v64 = *(v55 + 32);
        v64(v63 + v60, v23, v57);
        v65 = (v63 + v61);
        v66 = v146;
        *v65 = v148;
        v65[1] = v66;
        v132 = v63;
        *(v63 + v62) = ObjectType;
        v130 = v56;
        (v144)(v23, v143, v57);
        v127 = v58;
        v67 = swift_allocObject();
        v68 = v124;
        *(v67 + 16) = v124;
        v129 = v60;
        v128 = v23;
        v126 = v55 + 32;
        v125 = v64;
        v64(v67 + v60, v23, v57);
        v131 = v61;
        v69 = (v67 + v61);
        v70 = v146;
        *v69 = v148;
        v69[1] = v70;
        *(v67 + v62) = ObjectType;
        if (v135 == 2)
        {
          v73 = v68;
          v89 = v68;
          swift_retain_n();
          v90 = v145;
          v91 = v89;
          v78 = static GenerationPhase.allCases.getter();
        }

        else
        {
          if (v135 != 1)
          {
            v71 = v145;
            v72 = v128;
            v73 = v68;
            if (v135)
            {
              v92 = v68;
              swift_retain_n();
              v93 = v71;
              v94 = v92;
              v78 = static GenerationPhase.allCases.getter();
            }

            else
            {
              sub_10001DA6C(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
              v74 = type metadata accessor for GenerationPhase();
              v75 = *(v74 - 8);
              v76 = *(v75 + 72);
              v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_100031A60;
              (*(v75 + 104))(v78 + v77, enum case for GenerationPhase.feedItems(_:), v74);
              v79 = v73;
              swift_retain_n();
              v80 = v71;
              v81 = v79;
            }

            goto LABEL_22;
          }

          sub_10001DA6C(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
          v82 = type metadata accessor for GenerationPhase();
          v83 = *(v82 - 8);
          v84 = *(v83 + 72);
          v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_100031A60;
          (*(v83 + 104))(v78 + v85, enum case for GenerationPhase.sharableModels(_:), v82);
          v73 = v68;
          v86 = v68;
          swift_retain_n();
          v87 = v145;
          v88 = v86;
        }

        v72 = v128;
LABEL_22:
        sub_100029E2C(v78);

        v95 = v137;
        GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)();
        v96 = v143;
        v97 = v141;
        (v144)(v72, v143, v141);
        v98 = v131;
        v99 = swift_allocObject();
        v100 = v72;
        v101 = v99;
        *(v99 + 16) = v73;
        v125(v99 + v129, v100, v97);
        v102 = (v101 + v98);
        v103 = v146;
        *v102 = v148;
        v102[1] = v103;
        v104 = v73;

        v43 = sub_10001B460(v95, sub_1000235E4, v101);

        (*(v138 + 8))(v95, v139);
        sub_10000493C(&v151);
        (*(v140 + 8))(v96, v97);
        sub_10000493C(&v153);
        goto LABEL_28;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v47)
      {
        goto LABEL_14;
      }
    }

    static Logger.daemon.getter();

    v106 = v7;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *&v150 = swift_slowAlloc();
      *v109 = 136315650;
      *&v151 = ObjectType;
      swift_getMetatypeMetadata();
      v110 = String.init<A>(describing:)();
      v112 = sub_100004364(v110, v111, &v150);

      *(v109 + 4) = v112;
      *(v109 + 12) = 2080;
      v113 = Array.description.getter();
      v115 = sub_100004364(v113, v114, &v150);

      *(v109 + 14) = v115;
      *(v109 + 22) = 2080;
      v116 = *&v106[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_availablePlugins];

      sub_100011B78(v117);

      v118 = Array.description.getter();
      v120 = v119;

      v121 = sub_100004364(v118, v120, &v150);

      *(v109 + 24) = v121;
      _os_log_impl(&_mh_execute_header, v107, v108, "[%s] failed to find plugin with identifiers %s, available plugins: %s", v109, 0x20u);
      swift_arrayDestroy();
    }

    (*(v144 + 8))(v18, v145);
    v148(0);
    v36 = [objc_allocWithZone(NSProgress) init];
    goto LABEL_27;
  }

  sub_10000A920(&v151);
  static Logger.daemon.getter();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *&v151 = swift_slowAlloc();
    *v39 = 136315394;
    v153 = ObjectType;
    swift_getMetatypeMetadata();
    v40 = String.init<A>(describing:)();
    v42 = sub_100004364(v40, v41, &v151);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_100004364(0xD000000000000061, 0x8000000100033110, &v151);
    _os_log_impl(&_mh_execute_header, v37, v38, "[%s] %s no readyHealthExperienceStore - cannot start", v39, 0x16u);
    swift_arrayDestroy();
  }

  (*(v144 + 8))(v13, v145);
  v148(0);
  v43 = [objc_allocWithZone(NSProgress) init];
LABEL_28:
  dispatch thunk of UnfairLock.unlock()();
  return v43;
}

void *sub_100011944(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v22 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v22 + 64;
    v5 = -1 << *(v22 + 32);
    result = _HashTable.startBucket.getter();
    v6 = v22;
    v7 = result;
    v8 = 0;
    v9 = *(v22 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v23 = v8;
      v12 = v4;
      v13 = *(*(v6 + 56) + 8 * v7);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = *(&_swiftEmptyArrayStorage + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v6 = v22;
      v10 = 1 << *(v22 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v15 = *(v12 + 8 * v11);
      if ((v15 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v16 = v15 & (-2 << (v7 & 0x3F));
      if (v16)
      {
        v10 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v11 << 6;
        v18 = v11 + 1;
        v19 = (v22 + 72 + 8 * v11);
        while (v18 < (v10 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_100021254(v7, v9, 0);
            v6 = v22;
            v10 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_100021254(v7, v9, 0);
        v6 = v22;
      }

LABEL_4:
      v8 = v23 + 1;
      v7 = v10;
      if (v23 + 1 == v2)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_100011B78(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10001F168(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = *(v1 + 36);
      v11 = *(*(v1 + 56) + 8 * v7);

      v30 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v13 = v12;

      v14 = v4;
      v31 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_10001F168((v16 > 1), v17 + 1, 1);
        v14 = v31;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v30;
      v18[5] = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_100021254(v7, v29, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_100021254(v7, v29, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100011DBC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a5 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 24);
  v11 = *(a5 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager);
  v12 = *(a5 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle);
  v13 = a4[3];
  v14 = a4[4];
  v15 = sub_10000AA10(a4, v13);

  v16 = sub_10001FA10(a1, a2, a3, v15, v10, v11, v12, a6, v13, v14);

  return v16;
}

uint64_t sub_100011E94(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v10;
    v17 = v16;
    v29 = swift_slowAlloc();
    v32[0] = v29;
    v32[1] = a5;
    *v17 = 136446210;
    swift_getMetatypeMetadata();
    v18 = String.init<A>(describing:)();
    v31 = a1;
    v20 = sub_100004364(v18, v19, v32);
    v28 = v9;
    v21 = v20;
    a1 = v31;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s]: Background generation completed/cancelled, populating feed", v17, 0xCu);
    sub_10000493C(v29);

    (*(v30 + 8))(v13, v28);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v22 = *(*&a1[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle] + 32);

  TransactionManagedCache.finishUse(for:)();

  sub_10000EF74();
  dispatch thunk of HealthWelcomeFlowSignalManager.determineIfHealthWelcomeFlowShouldShowOnNextAppOpen(completion:)();

  v23 = *&a1[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle];

  v24 = static Feed.Kind.relevanceRankedFeeds.getter();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a3;
  v25[4] = a4;
  v25[5] = a5;
  v26 = a1;

  sub_1000238C4(v24, sub_1000236C0, v25);
}

uint64_t sub_100012174(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24[0] = v15;
    v24[1] = a4;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_100004364(v16, v17, v24);
    v22 = v6;
    v19 = a2;
    v20 = v18;

    *(v14 + 4) = v20;
    a2 = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s]: Background generation feed population finished", v14, 0xCu);
    sub_10000493C(v15);

    (*(v23 + 8))(v10, v22);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_10001C2D0();
  return a2(1);
}

uint64_t sub_100012388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a3;
    v29[0] = v17;
    v18 = v17;
    *v16 = 136446210;
    v29[1] = a5;
    swift_getMetatypeMetadata();
    v19 = String.init<A>(describing:)();
    v21 = sub_100004364(v19, v20, v29);
    v26 = v8;
    v22 = v21;

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s]: Background generation cancelled before it started.", v16, 0xCu);
    sub_10000493C(v18);
    a3 = v28;

    (*(v27 + 8))(v12, v26);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v23 = *(*(a1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 32);

  TransactionManagedCache.finishUse(for:)();

  return a3(0);
}

id sub_1000125C8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v175 = a1;
  ObjectType = swift_getObjectType();
  v177 = type metadata accessor for Logger();
  v176 = *(v177 - 1);
  v5 = *(v176 + 8);
  v6 = __chkstk_darwin(v177);
  v8 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v171 = &v147 - v9;
  v180 = type metadata accessor for PipelineProviderWrappers();
  v162 = *(v180 - 8);
  v10 = *(v162 + 64);
  __chkstk_darwin(v180);
  v179 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000211C8(0);
  v178 = v12;
  v181 = *(v12 - 1);
  v13 = *(v181 + 64);
  __chkstk_darwin(v12);
  v161 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GenerationWorkRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v170 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021260(0, &qword_100042270, &type metadata accessor for FeedPopulationListenerSchedulerConfiguration);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v165 = &v147 - v21;
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v163 = v22;
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v164 = (&v147 - v24);
  v173 = type metadata accessor for TransactionRecord();
  v169 = *(v173 - 8);
  v25 = *(v169 + 64);
  v26 = __chkstk_darwin(v173);
  v167 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v168 = &v147 - v29;
  v166 = v30;
  __chkstk_darwin(v28);
  v172 = &v147 - v31;
  v32 = *&v2[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_lock];
  dispatch thunk of UnfairLock.lock()();
  sub_100013C40();
  v33 = [objc_opt_self() standardUserDefaults];
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 BOOLForKey:v34];

  if (v35)
  {
    static Logger.daemon.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = ObjectType;
      v191 = v39;
      *v38 = 136315650;
      *&aBlock = v40;
      swift_getMetatypeMetadata();
      v41 = String.init<A>(describing:)();
      v43 = sub_100004364(v41, v42, &v191);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_100004364(0xD00000000000002FLL, 0x8000000100033040, &v191);
      *(v38 + 22) = 2080;
      *(v38 + 24) = sub_100004364(0xD000000000000032, 0x8000000100032F90, &v191);
      _os_log_impl(&_mh_execute_header, v36, v37, "[%s] %s %s default is set - skipping work", v38, 0x20u);
      swift_arrayDestroy();
      v44 = v175;

      (*(v176 + 1))(v8, v177);
    }

    else
    {

      (*(v176 + 1))(v8, v177);
      v44 = v175;
    }

    v44(0);
    v71 = [objc_opt_self() progressWithTotalUnitCount:0];
LABEL_21:
    v79 = v71;
    goto LABEL_22;
  }

  v45 = *&v3[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle];
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (!v184)
  {
    sub_10000A920(&aBlock);
LABEL_18:
    v72 = v171;
    static Logger.daemon.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *v75 = 136315394;
      *&aBlock = ObjectType;
      swift_getMetatypeMetadata();
      v76 = String.init<A>(describing:)();
      v78 = sub_100004364(v76, v77, &v191);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_100004364(0xD00000000000002FLL, 0x8000000100033040, &v191);
      _os_log_impl(&_mh_execute_header, v73, v74, "[%s] %s no readyHealthExperienceStore or feedPopulationManager - cannot start", v75, 0x16u);
      swift_arrayDestroy();
    }

    (*(v176 + 1))(v72, v177);
    v175(0);
    v71 = [objc_opt_self() progressWithTotalUnitCount:0];
    goto LABEL_21;
  }

  v160 = v16;
  sub_1000030A0(&aBlock, &v191);
  v46 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle;
  v47 = *&v3[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle];
  v48 = *(v47 + 64);

  dispatch thunk of UnfairLock.lock()();
  v49 = sub_100024BF0();
  v50 = *(v47 + 64);
  dispatch thunk of UnfairLock.unlock()();

  if (!v49)
  {
    sub_10000493C(&v191);
    goto LABEL_18;
  }

  v51 = *(*&v3[v46] + 16);
  if (!v51)
  {
    sub_10000493C(&v191);

    goto LABEL_18;
  }

  v154 = v32;
  v52 = *&v3[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle];
  v53 = v52[2];
  v158 = v51;

  v54 = v53;
  v55 = TransactionRecord.init(name:)();
  v56 = v52[4];
  __chkstk_darwin(v55);
  v152 = v54;

  TransactionManagedCache.fetchCachedOrCreate(for:using:)();

  v157 = v3;
  v156 = *&v3[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager];
  v57 = v52[3];
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  v171 = v57;

  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v58 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_100011944(v58);

  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo);
  v59 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  sub_100007A94(&v191, &aBlock);
  v60 = *(v59 + 16);
  v159 = a2;
  v153 = v15;
  v155 = v49;
  if (v60)
  {
    *&v187 = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v60, 0);
    v61 = v187;
    v62 = v162 + 16;
    v177 = *(v162 + 16);
    v63 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v162 = v59;
    v64 = v59 + v63;
    v176 = *(v62 + 56);
    v65 = (v62 - 8);
    v66 = v161;
    do
    {
      v67 = v179;
      v68 = v180;
      v177(v179, v64, v180);
      PipelineProviderWrappers.feedItem.getter();
      (*v65)(v67, v68);
      *&v187 = v61;
      v70 = *(v61 + 16);
      v69 = *(v61 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_10001F1D8(v69 > 1, v70 + 1, 1);
        v61 = v187;
      }

      *(v61 + 16) = v70 + 1;
      (*(v181 + 32))(v61 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v70, v66, v178);
      v64 += v176;
      --v60;
    }

    while (v60);

    v49 = v155;
  }

  else
  {
  }

  type metadata accessor for FeedItemGeneratorPipelineManager();
  sub_100007A94(&v190, &v187);
  v178 = v152;
  v81 = v171;

  v82 = v156;

  v83 = v81;
  v84 = v82;
  v85 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();

  v86 = v85;
  v181 = v85;
  *&aBlock = GeneratorPipelineManager.generationState.getter();
  sub_100022144(0, &qword_100042288, &type metadata accessor for CurrentValueSubject);
  sub_100021378();
  v87 = Publisher.eraseToAnyPublisher()();

  v88 = *&v157[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_schedulerDispatchQueue];
  v89 = v157;
  v90 = v163;
  v91 = v164;
  v92 = v164 + *(v163 + 36);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v93 = v91 + *(v90 + 40);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v94 = *(v90 + 44);
  v95 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v95 - 8) + 56))(v91 + v94, 1, 1, v95);
  *v91 = v88;
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  sub_1000212DC();
  v96 = v88;
  v97 = v165;
  static FeedPopulationListenerSchedulerConfiguration.realtime(queue:)();
  v98 = objc_allocWithZone(type metadata accessor for SummaryTabForegroundFeedPopulationOperation());
  v99 = sub_100021968(v49, v87, v91, v97);
  v164 = v99;

  sub_100007A94(&v191, &aBlock);
  v188 = type metadata accessor for ProfileDashboardsFeedPopulationListener();
  v189 = &protocol witness table for ProfileDashboardsFeedPopulationListener;
  *&v187 = v158;
  v100 = objc_allocWithZone(type metadata accessor for ForegroundFeedPopulationListeningOperation());

  v101 = ForegroundFeedPopulationListeningOperation.init(healthExperienceStore:listener:)();
  v165 = v101;
  v102 = v178;
  v103 = v84;
  v104 = sub_1000165B0(v178, &v191, v83, &v190, v84);
  sub_100007A94(&v191, &aBlock);
  sub_100007A94(&v190, &v187);
  v105 = swift_allocObject();
  v105[2] = v89;
  v105[3] = v102;
  sub_1000030A0(&aBlock, (v105 + 4));
  v105[9] = v83;
  v105[10] = v86;
  sub_1000030A0(&v187, (v105 + 11));
  v105[16] = v103;
  v105[17] = v104;
  v105[18] = v99;
  v105[19] = v101;
  v180 = swift_allocObject();
  *(v180 + 16) = ObjectType;
  v106 = v169;
  v176 = *(v169 + 16);
  v149 = v169 + 16;
  v107 = v168;
  v108 = v173;
  v176(v168, v172, v173);
  v109 = *(v106 + 80);
  v151 = ~v109;
  v110 = ((v109 + 24) & ~v109);
  v150 = v166 + 7;
  v177 = v110;
  v166 = (v110 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = v166;
  v112 = swift_allocObject();
  v113 = v157;
  *(v112 + 16) = v157;
  v179 = *(v106 + 32);
  (v179)(v110 + v112, v107, v108);
  v114 = (v112 + v111);
  v115 = v159;
  *v114 = v175;
  v114[1] = v115;
  v162 = v104;
  v152 = v104;
  v116 = v113;
  v161 = v178;

  v117 = v116;

  v178 = v164;
  v156 = v165;

  v118 = static GenerationPhase.allCases.getter();
  sub_100029E2C(v118);

  v163 = v112;
  v119 = v170;
  v164 = v105;
  GenerationWorkRequest.init(environment:pluginIdentifierSetToRun:generationPhases:commitUrgentTransaction:makeGenerationWorkBlock:completionBlock:notStartedCancellationBlock:)();
  v120 = v168;
  v121 = v173;
  v176(v168, v172, v173);
  v122 = v166;
  v123 = swift_allocObject();
  *(v123 + 16) = v117;
  v157 = (v106 + 32);
  (v179)(v177 + v123, v120, v121);
  v124 = (v123 + v122);
  *v124 = v175;
  v124[1] = v115;
  v125 = v117;

  v177 = v125;
  v79 = sub_10001B460(v119, sub_1000238C0, v123);

  v126 = [v79 cancellationHandler];
  if (v126)
  {
    v127 = swift_allocObject();
    *(v127 + 16) = v126;
    v126 = sub_10002389C;
  }

  else
  {
    v127 = 0;
  }

  v166 = v126;
  v168 = v127;
  sub_100002590(v126);
  sub_100002AE8(v126);
  v148 = *&v178[qword_100042598];
  v165 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = v167;
  v176(v167, v172, v173);
  v129 = (v109 + 48) & v151;
  v130 = (v150 + v129) & 0xFFFFFFFFFFFFFFF8;
  v131 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
  v132 = (v131 + 23) & 0xFFFFFFFFFFFFFFF8;
  v133 = (v132 + 15) & 0xFFFFFFFFFFFFFFF8;
  v134 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
  v135 = swift_allocObject();
  v136 = v166;
  *(v135 + 2) = v165;
  *(v135 + 3) = v136;
  v137 = v177;
  *(v135 + 4) = v168;
  *(v135 + 5) = v137;
  (v179)(v135 + v129, v128, v173);
  *(v135 + v130) = v148;
  v138 = (v135 + v131);
  v139 = v159;
  *v138 = v175;
  v138[1] = v139;
  *(v135 + v132) = v162;
  v140 = v178;
  *(v135 + v133) = v178;
  v141 = v156;
  *(v135 + v134) = v156;
  *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v185 = sub_100021F5C;
  v186 = v135;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v183 = sub_100003F14;
  v184 = &unk_10003E3C8;
  v142 = _Block_copy(&aBlock);
  v176 = v186;

  v143 = v177;
  v144 = v140;
  v179 = v141;

  v145 = v152;
  v146 = v166;
  sub_100002590(v166);

  sub_100002590(sub_100021F5C);

  [v79 setCancellationHandler:v142];
  _Block_release(v142);

  sub_100002AE8(v146);

  (*(v160 + 8))(v170, v153);
  sub_10000493C(&v190);
  (*(v169 + 8))(v172, v173);
  sub_10000493C(&v191);

LABEL_22:
  dispatch thunk of UnfairLock.unlock()();
  return v79;
}

uint64_t sub_100013C40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v147 = *(v2 - 8);
  v148 = v2;
  v3 = *(v147 + 64);
  v4 = __chkstk_darwin(v2);
  v143 = &v128[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v135 = &v128[-v7];
  __chkstk_darwin(v6);
  v134 = &v128[-v8];
  sub_10001DA6C(0, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = v11[8];
  __chkstk_darwin(v9);
  v14 = &v128[-v13];
  sub_100007100(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v141 = &v128[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v142 = &v128[-v20];
  __chkstk_darwin(v19);
  v22 = &v128[-v21];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v136 = &v128[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v145 = &v128[-v29];
  v30 = __chkstk_darwin(v28);
  v32 = &v128[-v31];
  v33 = __chkstk_darwin(v30);
  v132 = &v128[-v34];
  v35 = __chkstk_darwin(v33);
  v131 = &v128[-v36];
  __chkstk_darwin(v35);
  v38 = &v128[-v37];
  Date.init()();
  v39 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService__appFirstLaunchDate;
  swift_beginAccess();
  v40 = v11[2];
  v130 = v39;
  v140 = v1;
  v40(v14, &v1[v39], v10);
  UserDefault.wrappedValue.getter();
  v41 = v11[1];
  v144 = v10;
  v42 = v10;
  v43 = v23;
  v44 = v24;
  v41(v14, v42);
  v45 = (*(v24 + 48))(v22, 1, v43);
  v138 = v38;
  v133 = v24;
  if (v45 == 1)
  {
    sub_1000232A4(v22);
    v46 = *(v24 + 16);
    v139 = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v46(v32, v38, v43);
    static Logger.general.getter();
    v134 = v32;
    v46(v145, v32, v43);
    v47 = v140;
    v48 = v140;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v149 = v132;
      *v51 = 136446722;
      v150 = ObjectType;
      swift_getMetatypeMetadata();
      v53 = String.init<A>(describing:)();
      v131 = v49;
      v55 = sub_100004364(v53, v54, &v149);
      v146 = v46;
      v56 = v44;
      v57 = v43;
      v58 = v55;

      *(v51 + 4) = v58;
      *(v51 + 12) = 2112;
      v59 = v145;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v61 = *(v56 + 8);
      v129 = v50;
      v145 = v61;
      (v61)(v59, v57);
      *(v51 + 14) = isa;
      *v52 = isa;
      *(v51 + 22) = 2082;
      v62 = v48;
      v63 = [v62 description];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = sub_100004364(v64, v66, &v149);
      v43 = v57;
      v68 = v56;
      v46 = v146;
      v69 = v140;

      *(v51 + 24) = v67;
      v70 = v131;
      _os_log_impl(&_mh_execute_header, v131, v129, "[%{public}s]: Setting HealthApp first launch date: %@; %{public}s", v51, 0x20u);
      sub_100022788(v52, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

      swift_arrayDestroy();

      v38 = v138;

      v71 = v135;
      v135 = *(v147 + 8);
      (v135)(v71, v148);
    }

    else
    {

      v96 = v145;
      v145 = *(v44 + 8);
      (v145)(v96, v43);
      v97 = v135;
      v135 = *(v147 + 8);
      (v135)(v97, v148);
      v68 = v44;
      v69 = v47;
    }

    v98 = v142;
    v99 = v134;
    v46(v142, v134, v43);
    (*(v68 + 56))(v98, 0, 1, v43);
    sub_100007470(v98, v141);
    swift_beginAccess();
    UserDefault.wrappedValue.setter();
    swift_endAccess();
    sub_1000232A4(v98);
    (v145)(v99, v43);
    v100 = v143;
    v73 = v139;
  }

  else
  {
    v72 = v131;
    (*(v24 + 32))(v131, v22, v43);
    static Logger.general.getter();
    v46 = *(v24 + 16);
    v73 = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74 = v43;
    v46(v132, v72, v43);
    v75 = v140;
    v76 = v140;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v149 = v135;
      *v79 = 136446722;
      v150 = ObjectType;
      swift_getMetatypeMetadata();
      v81 = String.init<A>(describing:)();
      LODWORD(v130) = v78;
      v83 = sub_100004364(v81, v82, &v149);
      v146 = v46;
      v84 = v83;

      *(v79 + 4) = v84;
      *(v79 + 12) = 2112;
      v85 = v132;
      v86 = Date._bridgeToObjectiveC()().super.isa;
      v139 = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v145 = *(v44 + 8);
      v87 = v85;
      v88 = v74;
      (v145)(v87, v74);
      *(v79 + 14) = v86;
      *v80 = v86;
      *(v79 + 22) = 2082;
      v89 = v76;
      v90 = [v89 description];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      v43 = v88;
      v94 = v91;
      v46 = v146;
      v69 = v140;
      v95 = sub_100004364(v94, v93, &v149);

      *(v79 + 24) = v95;
      _os_log_impl(&_mh_execute_header, v77, v130, "[%{public}s]: HealthApp first launch date already set: %@; %{public}s", v79, 0x20u);
      sub_100022788(v80, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

      swift_arrayDestroy();

      v135 = *(v147 + 8);
      (v135)(v134, v148);
      (v145)(v131, v88);
      v73 = v139;
    }

    else
    {

      v101 = *(v44 + 8);
      v43 = v74;
      (v101)(v132, v74);
      v135 = *(v147 + 8);
      (v135)(v134, v148);
      v69 = v75;
      v145 = v101;
      (v101)(v72, v74);
    }

    v100 = v143;
    v38 = v138;
  }

  static Logger.general.getter();
  v102 = v136;
  v146 = v46;
  v46(v136, v38, v43);
  v103 = v69;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v139 = v73;
    v107 = v106;
    v108 = swift_slowAlloc();
    v134 = v108;
    v140 = swift_slowAlloc();
    v149 = v140;
    *v107 = 136446722;
    v150 = ObjectType;
    swift_getMetatypeMetadata();
    v109 = String.init<A>(describing:)();
    v111 = v43;
    v112 = sub_100004364(v109, v110, &v149);

    *(v107 + 4) = v112;
    *(v107 + 12) = 2112;
    v113 = Date._bridgeToObjectiveC()().super.isa;
    v114 = v133;
    LODWORD(ObjectType) = v105;
    v136 = v104;
    v115 = v103;
    v116 = v145;
    (v145)(v102, v111);
    *(v107 + 14) = v113;
    *v108 = v113;
    *(v107 + 22) = 2082;
    v117 = v115;
    v118 = [v117 description];
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    v43 = v111;
    v38 = v138;
    v122 = sub_100004364(v119, v121, &v149);
    v123 = v116;

    *(v107 + 24) = v122;
    v124 = v136;
    _os_log_impl(&_mh_execute_header, v136, ObjectType, "[%{public}s]: Updating HealthApp last opened date: %@; %{public}s", v107, 0x20u);
    sub_100022788(v134, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

    swift_arrayDestroy();

    v125 = v143;
  }

  else
  {

    v114 = v133;
    v123 = v145;
    (v145)(v102, v43);
    v125 = v100;
  }

  (v135)(v125, v148);
  v126 = v142;
  v146(v142, v38, v43);
  (*(v114 + 56))(v126, 0, 1, v43);
  sub_100007470(v126, v141);
  swift_beginAccess();
  UserDefault.wrappedValue.setter();
  swift_endAccess();
  sub_1000232A4(v126);
  return v123(v38, v43);
}

uint64_t sub_100014A8C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    v15[1] = a1;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_100004364(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s]: Interactive generation completed/cancelled", v9, 0xCu);
    sub_10000493C(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100014C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(*(a1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 32);

  TransactionManagedCache.finishUse(for:)();

  return a3(0);
}

uint64_t sub_100014CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(*(a2 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 32);

  TransactionManagedCache.finishUse(for:)();

  return a4(0);
}

id sub_100014D14(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v105 = a7;
  v106 = a8;
  v107 = a6;
  v108 = a2;
  v103 = a5;
  v104 = a4;
  v101 = a3;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v111 = &v101 - v19;
  v20 = __chkstk_darwin(v18);
  v109 = &v101 - v21;
  __chkstk_darwin(v20);
  v23 = &v101 - v22;
  static Logger.daemon.getter();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v113 = v13;
  v114 = v12;
  v112 = v17;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v27 = 136446466;
    v116 = a12;
    v28 = a12;
    swift_getMetatypeMetadata();
    v29 = String.init<A>(describing:)();
    v31 = sub_100004364(v29, v30, v117);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000211FC(0, &qword_1000422A8, &qword_1000422B0, NSProgress_ptr);
    v32 = String.init<A>(describing:)();
    v34 = sub_100004364(v32, v33, v117);

    *(v27 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s]: Interactive generation cancelled: %s", v27, 0x16u);
    swift_arrayDestroy();
    v35 = v113;

    v36 = v35;
  }

  else
  {
    v37 = v13;
    v28 = a12;

    v36 = v37;
  }

  v38 = *(v36 + 8);
  v39 = v38(v23, v114);
  v40 = a10;
  v102 = a9;
  v41 = v109;
  if (v108)
  {
    v108(v39);
  }

  v108 = a11;
  v42 = v104;
  v43 = *(*&v104[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle] + 32);

  TransactionManagedCache.finishUse(for:)();

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v46 = v105;
  v47 = v106;
  v45[2] = v44;
  v45[3] = v46;
  v45[4] = v47;
  v45[5] = v28;

  sub_10001D2C8(v107, sub_100022034, v45);

  static Logger.generation.getter();
  v48 = v42;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v117[0] = v52;
    *v51 = 136446210;
    v53 = v48;
    v54 = [v53 description];
    v107 = a10;
    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = sub_100004364(v56, v58, v117);

    *(v51 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s: cancelling launch generation", v51, 0xCu);
    sub_10000493C(v52);

    v40 = v107;
    v60 = v109;
  }

  else
  {

    v60 = v41;
  }

  v38(v60, v114);
  v61 = v111;
  v62 = &off_100041000;
  [v102 cancel];
  static Logger.personalization.getter();
  v63 = v48;
  v64 = v40;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  v67 = os_log_type_enabled(v65, v66);
  v110 = v38;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v68 = 136446466;
    v69 = v63;
    v70 = [v69 description];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = sub_100004364(v71, v73, v117);

    *(v68 + 4) = v74;
    *(v68 + 12) = 2080;
    v75 = v64;
    v76 = [v75 description];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80 = sub_100004364(v77, v79, v117);
    v62 = &off_100041000;

    *(v68 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s: cancelling summary tab interactive picking operation %s", v68, 0x16u);
    swift_arrayDestroy();

    v110(v111, v114);
  }

  else
  {

    v38(v61, v114);
  }

  [v64 v62[56]];
  v81 = v112;
  static Logger.personalization.getter();
  v82 = v63;
  v83 = v108;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v86 = 136446466;
    v87 = v82;
    v88 = [v87 description];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92 = sub_100004364(v89, v91, v117);

    *(v86 + 4) = v92;
    *(v86 + 12) = 2080;
    v93 = v83;
    v94 = [v93 description];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98 = sub_100004364(v95, v97, v117);

    *(v86 + 14) = v98;
    _os_log_impl(&_mh_execute_header, v84, v85, "[%{public}s: cancelling profile dashboards interactive picking operation %s", v86, 0x16u);
    swift_arrayDestroy();

    v99 = v112;
  }

  else
  {

    v99 = v81;
  }

  v110(v99, v114);
  return [v83 v62[56]];
}

void sub_1000155D0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_10001790C(v8, v8, a2, a3, a4);
  }

  else
  {
    a2();
  }
}

uint64_t sub_100015664(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23[0] = v15;
    v23[1] = a4;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = sub_100004364(v16, v17, v23);
    v21 = v6;
    v19 = v18;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s]: Feed population completed after foreground generation; tearing down", v14, 0xCu);
    sub_10000493C(v15);

    (*(v22 + 8))(v10, v21);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_10001C2D0();
  return sub_1000176F4(a2);
}

void *sub_1000158A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char *a9, void (*a10)(Class, unint64_t, uint64_t))
{
  v116 = a8;
  v113 = a7;
  v111 = a6;
  v114 = a5;
  v112 = a4;
  v119 = a3;
  v120 = a2;
  ObjectType = swift_getObjectType();
  v106 = type metadata accessor for Logger();
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  __chkstk_darwin(v106);
  v115 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for PipelineProviderWrappers();
  v12 = *(v126 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v126);
  isa = (v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100021114(0);
  v124 = v15;
  v103 = *(v15 - 8);
  v16 = *(v103 + 64);
  __chkstk_darwin(v15);
  v104 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchTimeInterval();
  v109 = *(v110 - 8);
  v18 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = (v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000078E0();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v107 = v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  v33 = v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v34 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_100011944(v34);

  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo);
  v35 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  v36 = objc_allocWithZone(HKProfileStore);
  v37 = [v36 initWithHealthStore:v120];
  HKProfileStore.profileIdentifiersPublisher.getter();
  sub_100020860(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher);
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v24 + 8))(v27, v23);
  sub_100020860(&qword_100041D18, sub_10000798C);
  v118 = Publisher.eraseToAnyPublisher()();

  v38 = v35;
  (*(v30 + 8))(v33, v29);
  sub_100007A94(v119, &v129);
  v39 = *(v35 + 16);
  if (v39)
  {
    v128[0] = _swiftEmptyArrayStorage;
    sub_10001F188(0, v39, 0);
    v40 = v128[0];
    v42 = *(v12 + 16);
    v41 = v12 + 16;
    v123 = v42;
    v43 = (*(v41 + 64) + 32) & ~*(v41 + 64);
    v101[1] = v38;
    v44 = v38 + v43;
    v122 = *(v41 + 56);
    v45 = (v41 - 8);
    v46 = v103;
    v121 = v103 + 32;
    v47 = v41;
    v48 = v104;
    do
    {
      v50 = isa;
      v49 = v126;
      v51 = v47;
      v123(isa, v44, v126);
      PipelineProviderWrappers.sharableModel.getter();
      (*v45)(v50, v49);
      v128[0] = v40;
      v53 = v40[2];
      v52 = v40[3];
      if (v53 >= v52 >> 1)
      {
        sub_10001F188(v52 > 1, v53 + 1, 1);
        v40 = v128[0];
      }

      v40[2] = v53 + 1;
      (*(v46 + 32))(v40 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v53, v48, v124);
      v44 += v122;
      --v39;
      v47 = v51;
    }

    while (v39);
  }

  v54 = v117;
  type metadata accessor for SharableModelGeneratorPipelineManager();
  sub_100007A94(v111, v128);

  v55 = v120;
  v56 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  type metadata accessor for GeneratorPipelineGenerationOperation();
  v57 = *&v54[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle];

  dispatch thunk of CountryOracle.currentCountry()();
  static GenerationPhase.allCases.getter();
  v58 = v108;
  *v108 = 150;
  (*(v109 + 104))(v58, enum case for DispatchTimeInterval.seconds(_:), v110);
  v59 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();
  sub_100004210(0, &qword_100041E60, NSOperationQueue_ptr);
  v60._object = 0x8000000100033010;
  v60._countAndFlagsBits = 0xD00000000000002BLL;
  v130.value = 0;
  v130.is_nil = 1;
  isa = NSOperationQueue.init(name:maxConcurrentOperationCount:)(v60, v130).super.isa;
  [(objc_class *)isa setQualityOfService:25];
  v61 = _swiftEmptyArrayStorage;
  v128[0] = _swiftEmptyArrayStorage;
  v62 = v116;
  if (v116)
  {
    v63 = v116;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v100 = *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v61 = v128[0];
  }

  v126 = v56;
  if (v61 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v65 = 0;
    v66 = v61 & 0xC000000000000001;
    v67 = v61 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v66)
      {
        v68 = v61;
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v65 >= *(v67 + 16))
        {
          goto LABEL_28;
        }

        v68 = v61;
        v69 = *(v61 + 8 * v65 + 32);
      }

      v61 = v69;
      v70 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      [v59 addDependency:v69];

      ++v65;
      v61 = v68;
      if (v70 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_21:
  v71 = a9;
  v123 = a10;

  v72 = v115;
  static Logger.daemon.getter();
  v73 = v117;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  v76 = os_log_type_enabled(v74, v75);
  v124 = v61;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127 = v121;
    *v77 = 136446722;
    v129 = ObjectType;
    swift_getMetatypeMetadata();
    v78 = String.init<A>(describing:)();
    v80 = sub_100004364(v78, v79, &v127);
    v122 = a9;
    v81 = v80;

    *(v77 + 4) = v81;
    *(v77 + 12) = 2082;
    sub_100004210(0, &qword_100042268, NSOperation_ptr);

    v82 = Array.description.getter();
    v84 = v83;

    v85 = sub_100004364(v82, v84, &v127);

    *(v77 + 14) = v85;
    *(v77 + 22) = 2082;
    v86 = v73;
    v87 = [v86 description];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v62 = v116;
    v91 = sub_100004364(v88, v90, &v127);

    *(v77 + 24) = v91;
    v71 = v122;
    _os_log_impl(&_mh_execute_header, v74, v75, "[%{public}s]: Enqueuing prerequisite foreground work before interactive generation: %{public}s; %{public}s", v77, 0x20u);
    swift_arrayDestroy();

    (*(v105 + 8))(v115, v106);
  }

  else
  {

    (*(v105 + 8))(v72, v106);
  }

  v92 = v119;
  v93 = v123;
  if (v62)
  {
    [v71 addDependency:v62];
    [v93 addDependency:v62];
  }

  sub_100004210(0, &qword_100042268, NSOperation_ptr);

  v94 = Array._bridgeToObjectiveC()().super.isa;

  v95 = isa;
  [(objc_class *)isa addOperations:v94 waitUntilFinished:0];

  [(objc_class *)v95 addOperation:v71];
  [(objc_class *)v95 addOperation:v93];
  v96 = *&v71[qword_100042598];
  v97 = v92[4];
  sub_10000AA10(v92, v92[3]);
  v98 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithHighlightsFeedPresentationAnalytics(in:)();

  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithDemographicAnalytics()();
  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithImproveHealthActivityAnalytics()();

  sub_100020860(&qword_100041D20, &type metadata accessor for GeneratorPipelineGenerationOperation);
  return v59;
}

char *sub_1000165B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v126 = a3;
  v127 = a5;
  v123 = a2;
  v124 = a4;
  v122 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v116 - v10;
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078E0();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v131 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021098();
  v128 = *(v20 - 8);
  v129 = v20;
  v21 = *(v128 + 64);
  __chkstk_darwin(v20);
  v125 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021114(0);
  v138 = v23;
  v140 = *(v23 - 8);
  v24 = *(v140 + 64);
  __chkstk_darwin(v23);
  v121 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for PipelineProviderWrappers();
  v26 = *(v146 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v146);
  v145 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000211C8(0);
  v137 = v29;
  v139 = *(v29 - 8);
  v30 = v139[8];
  __chkstk_darwin(v29);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v33 = dispatch thunk of PluginBundleProvider.availableLaunchGenerationPlugins.getter();

  type metadata accessor for BundleFeedItemGenerationPluginInfo();
  sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo);
  v34 = Array<A>.makeGeneratorPipelineProviderWrappers()();
  if (*(v34 + 16))
  {
    v117 = v16;
    v118 = v13;
    v119 = v12;
    v120 = v11;

    v35 = *(v34 + 16);
    if (v35)
    {
      v158[0] = _swiftEmptyArrayStorage;
      sub_10001F1D8(0, v35, 0);
      v36 = v158[0];
      v38 = *(v26 + 16);
      v37 = v26 + 16;
      v39 = *(v37 + 64);
      v116 = v34;
      v40 = v34 + ((v39 + 32) & ~v39);
      v142 = *(v37 + 56);
      v143 = v38;
      v144 = v37;
      v141 = (v37 - 8);
      v135 = v139 + 4;
      v41 = v40;
      v42 = v35;
      do
      {
        v43 = v145;
        v44 = v146;
        v143(v145, v41, v146);
        PipelineProviderWrappers.feedItem.getter();
        v136 = *v141;
        v136(v43, v44);
        v158[0] = v36;
        v46 = *(v36 + 16);
        v45 = *(v36 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_10001F1D8(v45 > 1, v46 + 1, 1);
          v36 = v158[0];
        }

        *(v36 + 16) = v46 + 1;
        (v139[4])(v36 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + v139[9] * v46, v32, v137);
        v41 += v142;
        --v42;
      }

      while (v42);
      v139 = v36;
      v158[0] = _swiftEmptyArrayStorage;
      sub_10001F188(0, v35, 0);
      v47 = v158[0];
      v48 = v121;
      v49 = v136;
      do
      {
        v50 = v145;
        v51 = v146;
        v143(v145, v40, v146);
        PipelineProviderWrappers.sharableModel.getter();
        v49(v50, v51);
        v158[0] = v47;
        v53 = *(v47 + 16);
        v52 = *(v47 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_10001F188(v52 > 1, v53 + 1, 1);
          v47 = v158[0];
        }

        *(v47 + 16) = v53 + 1;
        (*(v140 + 32))(v47 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v53, v48, v138);
        v40 += v142;
        --v35;
      }

      while (v35);
    }

    else
    {

      v139 = _swiftEmptyArrayStorage;
    }

    v74 = type metadata accessor for DispatchQueueOrchestrationScheduler();
    v75 = DispatchQueueOrchestrationScheduler.__allocating_init(environment:)();
    v76 = v123;
    sub_100007A94(v123, v158);
    v77 = v124;
    sub_100007A94(v124, v157);
    v155 = v74;
    v156 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v154[0] = v75;
    v152 = v74;
    v153 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v151[0] = v75;
    v78 = type metadata accessor for HealthPluginHostService.JustPrimarySnippetsFeedItemGeneratorPipelineManager(0);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    sub_100007A94(v158, &v150);
    sub_100007A94(v157, &v149);
    sub_100007A94(v154, &v148);
    sub_100007A94(v151, &v147);
    swift_retain_n();
    v81 = v122;

    v146 = FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)();
    sub_10000493C(v157);
    sub_10000493C(v158);
    sub_10000493C(v151);
    sub_10000493C(v154);
    sub_100007A94(v76, v158);
    sub_100007A94(v77, v157);
    v155 = v74;
    v156 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v154[0] = v75;
    v152 = v74;
    v153 = &protocol witness table for DispatchQueueOrchestrationScheduler;
    v151[0] = v75;
    v82 = type metadata accessor for SharableModelGeneratorPipelineManager();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v145 = v75;
    swift_retain_n();
    v85 = v81;

    v86 = SharableModelGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)();
    v143 = type metadata accessor for GeneratorPipelineGenerationOperation();
    sub_100023774(0, &qword_100042240, &type metadata for SourceProfile, &type metadata accessor for _ContiguousArrayStorage);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_100031A60;

    *(v87 + 32) = static SourceProfile.primary.getter();
    v158[0] = v87;
    sub_100023774(0, &qword_100041D00, &type metadata for SourceProfile, &type metadata accessor for Array);
    v88 = v125;
    Just.init(_:)();
    sub_100020860(&qword_100042248, sub_100021098);
    v89 = v129;
    Publisher.eraseToAnyPublisher()();
    (*(v128 + 8))(v88, v89);
    v90 = *(v130 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_countryOracle);
    dispatch thunk of CountryOracle.currentCountry()();
    sub_10001DA6C(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
    v91 = type metadata accessor for GenerationPhase();
    v92 = *(v91 - 8);
    v93 = *(v92 + 72);
    v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_100031C70;
    v96 = v95 + v94;
    v97 = *(v92 + 104);
    v97(v96, enum case for GenerationPhase.sharableModels(_:), v91);
    v97(v96 + v93, enum case for GenerationPhase.feedItems(_:), v91);
    v99 = v117;
    v98 = v118;
    *v117 = 3;
    (*(v98 + 104))(v99, enum case for DispatchTimeInterval.seconds(_:), v119);
    v144 = v86;
    v100 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();
    v101 = v120;
    static Logger.daemon.getter();
    v102 = v100;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v157[0] = v107;
      *v105 = 136315394;
      v158[0] = ObjectType;
      swift_getMetatypeMetadata();
      v108 = String.init<A>(describing:)();
      v110 = sub_100004364(v108, v109, v157);

      *(v105 + 4) = v110;
      *(v105 + 12) = 2112;
      *(v105 + 14) = v102;
      *v106 = v102;
      v111 = v102;
      _os_log_impl(&_mh_execute_header, v103, v104, "[%s]: Enqueuing just Summaries background generation: %@", v105, 0x16u);
      sub_100022788(v106, &qword_100041D30, &qword_100041D38, NSObject_ptr, sub_1000211FC);

      sub_10000493C(v107);
    }

    else
    {
    }

    (*(v133 + 8))(v101, v134);
    return v102;
  }

  v54 = ObjectType;

  static Logger.daemon.getter();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v55, v56))
  {

    (*(v133 + 8))(v9, v134);
    return 0;
  }

  LODWORD(v145) = v56;
  v57 = swift_slowAlloc();
  v144 = swift_slowAlloc();
  v157[0] = v144;
  *v57 = 136315394;
  v158[0] = v54;
  swift_getMetatypeMetadata();
  v58 = String.init<A>(describing:)();
  v60 = sub_100004364(v58, v59, v157);

  *(v57 + 4) = v60;
  *(v57 + 12) = 2080;
  v61 = v133;
  v62 = v134;
  if (!(v33 >> 62))
  {
    v63 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63)
    {
      goto LABEL_15;
    }

LABEL_31:

LABEL_32:
    v112 = Array.description.getter();
    v114 = v113;

    v115 = sub_100004364(v112, v114, v157);

    *(v57 + 14) = v115;
    _os_log_impl(&_mh_execute_header, v55, v145, "[%s]: Unable to find launch generation plugins to enqueue launch generation. Expected launch generation plugins: %s", v57, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v9, v62);
    return 0;
  }

  v63 = _CocoaArrayWrapper.endIndex.getter();
  if (!v63)
  {
    goto LABEL_31;
  }

LABEL_15:
  v141 = v57;
  v142 = v55;
  v143 = v9;
  v158[0] = _swiftEmptyArrayStorage;
  result = sub_10001F168(0, v63 & ~(v63 >> 63), 0);
  v146 = v63;
  if ((v63 & 0x8000000000000000) == 0)
  {
    v65 = 0;
    v66 = v158[0];
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v67 = *(v33 + 8 * v65 + 32);
      }

      v68 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v70 = v69;

      v158[0] = v66;
      v72 = *(v66 + 16);
      v71 = *(v66 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_10001F168((v71 > 1), v72 + 1, 1);
        v66 = v158[0];
      }

      ++v65;
      *(v66 + 16) = v72 + 1;
      v73 = v66 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
    }

    while (v146 != v65);

    v61 = v133;
    v62 = v134;
    v55 = v142;
    v9 = v143;
    v57 = v141;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017518(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v28 = a2;
  v29 = a3;
  v13 = a8[3];
  v12 = a8[4];
  v14 = sub_100020718(a8, v13);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = a9[3];
  v20 = a9[4];
  v21 = sub_100020718(a9, v19);
  v22 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = sub_10002059C(a1, v28, v29, a4 & 1, v31, v32, v33, v17, v24, v30, v19, v13, v20, v12);
  sub_10000493C(a9);
  sub_10000493C(a8);
  return v26;
}

uint64_t sub_1000176F4(uint64_t (*a1)(void))
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100004364(v12, v13, &v21);
    v19 = v2;
    v15 = a1;
    v16 = v14;

    *(v10 + 4) = v16;
    a1 = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Foreground generation operation completed", v10, 0xCu);
    sub_10000493C(v11);

    (*(v20 + 8))(v6, v19);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  sub_10001C3A8(0);
  return a1(1);
}

uint64_t sub_10001790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = static Feed.Kind.relevanceRankedFeeds.getter();
  v17 = *(v16 + 16);
  if (v17)
  {
    v29[1] = a1;
    v30 = v10;
    v31 = _swiftEmptyArrayStorage;
    sub_10001F168(0, v17, 0);
    v18 = 32;
    v19 = v31;
    do
    {
      v20 = *(v16 + v18);
      v21 = Feed.Kind.rawValue.getter();
      v31 = v19;
      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v29[0] = v21;
        v26 = v22;
        sub_10001F168((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29[0];
        v19 = v31;
      }

      v19[2] = v24 + 1;
      v25 = &v19[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v18;
      --v17;
    }

    while (v17);

    v10 = v30;
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  static DateInterval.allTimeInterval.getter();
  sub_100017B18(v19, v27, sub_100022040, v15);

  (*(v11 + 8))(v14, v10);
}

uint64_t sub_100017B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v34 = a4;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  if (v15)
  {
    static Logger.generation.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v18 = 136315394;
      v35[0] = ObjectType;
      swift_getMetatypeMetadata();
      v19 = String.init<A>(describing:)();
      v21 = sub_100004364(v19, v20, &v37);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_100004364(0xD000000000000032, 0x8000000100032F90, &v37);
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] %s default is set - skipping work", v18, 0x16u);
      swift_arrayDestroy();
    }

    v22 = (*(v9 + 8))(v12, v8);
    return v33(v22);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v37 = _swiftEmptyArrayStorage;
      sub_10001F228(0, v24, 0);
      v25 = v37;
      v26 = (a1 + 40);
      do
      {
        v27 = *v26;
        v35[0] = *(v26 - 1);
        v35[1] = v27;
        sub_100017E80(v35, ObjectType, &v36);
        v28 = v36;
        v37 = v25;
        v30 = v25[2];
        v29 = v25[3];
        if (v30 >= v29 >> 1)
        {
          sub_10001F228((v29 > 1), v30 + 1, 1);
          v25 = v37;
        }

        v25[2] = v30 + 1;
        *(v25 + v30 + 32) = v28;
        v26 += 2;
        --v24;
      }

      while (v24);
    }

    v31 = *(v5 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle);

    sub_1000238C4(v25, v33, v34);
  }
}

uint64_t sub_100017E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];

  v33 = v12;
  v14 = Feed.Kind.init(rawValue:)();
  if (v14 == 6)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v26._object = 0x8000000100032FD0;
    v26._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v26);
    v27._countAndFlagsBits = v33;
    v27._object = v13;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0xD00000000000001ELL;
    v28._object = 0x8000000100032FF0;
    String.append(_:)(v28);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LODWORD(v15) = v14;
    static Logger.personalization.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v15;
      v15 = v18;
      v19 = swift_slowAlloc();
      v32 = v4;
      v37 = v19;
      *v15 = 136315394;
      v35 = a2;
      swift_getMetatypeMetadata();
      v20 = String.init<A>(describing:)();
      v22 = sub_100004364(v20, v21, &v37);
      v30 = v8;
      v23 = a3;
      v24 = v22;

      *(v15 + 4) = v24;
      a3 = v23;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_100004364(v33, v13, &v37);
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Generating feed of kind %s", v15, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v15) = v31;

      result = (*(v34 + 8))(v11, v30);
    }

    else
    {

      result = (*(v34 + 8))(v11, v8);
    }

    *a3 = v15;
  }

  return result;
}

uint64_t sub_1000182E8(unint64_t a1, void (*a2)(void), unint64_t a3)
{
  v84 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for ModelTrainingEvent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v85 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v73 = v70 - v17;
  __chkstk_darwin(v16);
  v19 = v70 - v18;
  v75 = v3;
  v20 = *&v3[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle];
  v21 = *(v20 + 64);

  dispatch thunk of UnfairLock.lock()();
  v22 = sub_100024BF0();
  v23 = *(v20 + 64);
  dispatch thunk of UnfairLock.unlock()();

  v76 = v22;
  if (v22)
  {
    v72 = ObjectType;
    static Logger.personalization.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v74 = a2;
    if (v26)
    {
      v15 = swift_slowAlloc();
      *&v86 = swift_slowAlloc();
      *v15 = 136315394;
      v88[0] = v72;
      swift_getMetatypeMetadata();
      v27 = String.init<A>(describing:)();
      v29 = a3;
      v30 = sub_100004364(v27, v28, &v86);

      *(v15 + 4) = v30;
      a3 = v29;
      *(v15 + 6) = 2080;
      *(v15 + 14) = sub_100004364(0xD00000000000001FLL, 0x8000000100032F10, &v86);
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] %s Request to submit training received", v15, 0x16u);
      swift_arrayDestroy();
      a2 = v74;
    }

    v71 = *(v77 + 8);
    v71(v19, v78);
    v31 = v84;
    v32 = type metadata accessor for JSONDecoder();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v83 = JSONDecoder.init()();
    if (v31 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      *&v86 = _swiftEmptyArrayStorage;
      v36 = sub_10001F248(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        sub_100021044(v36, v37);
        v88[0] = 0;
        v88[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(42);
        v64 = [v75 description];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68._countAndFlagsBits = v65;
        v68._object = v67;
        String.append(_:)(v68);

        v69._countAndFlagsBits = 0xD000000000000026;
        v69._object = 0x8000000100032F60;
        String.append(_:)(v69);
        v88[5] = v15;
        sub_100020D30(0, &qword_100041AD8);
        _print_unlocked<A, B>(_:_:)();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v70[1] = a3;
      a3 = 0;
      v15 = 0;
      v38 = v86;
      v39 = v31;
      v81 = i;
      v82 = v31 & 0xC000000000000001;
      v79 = v31 & 0xFFFFFFFFFFFFFF8;
      v80 = v8 + 32;
      while (1)
      {
        a2 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v82)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a3 >= *(v79 + 16))
          {
            goto LABEL_27;
          }

          v40 = *(v39 + 8 * a3 + 32);
        }

        v41 = v40;
        v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
        sub_100020860(&qword_100042220, &type metadata accessor for ModelTrainingEvent);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        sub_100021044(v42, v44);

        *&v86 = v38;
        v46 = *(v38 + 16);
        v45 = *(v38 + 24);
        v31 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          sub_10001F248(v45 > 1, v46 + 1, 1);
          v38 = v86;
        }

        *(v38 + 16) = v31;
        (*(v8 + 32))(v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v46, v85, v7);
        ++a3;
        v39 = v84;
        if (a2 == v81)
        {
          a2 = v74;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_18:
    v47 = *&v75[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle];
    dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
    if (v87)
    {
      sub_1000030A0(&v86, v88);
      dispatch thunk of SummaryTabFeedPopulationManager.submitTraining(trainingEvents:store:completion:)();

      return sub_10000493C(v88);
    }

    else
    {

      sub_10000A920(&v86);
      v56 = v73;
      static Logger.generation.getter();
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *&v86 = swift_slowAlloc();
        *v59 = 136315394;
        v88[0] = v72;
        swift_getMetatypeMetadata();
        v60 = String.init<A>(describing:)();
        v62 = sub_100004364(v60, v61, &v86);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_100004364(0xD00000000000001FLL, 0x8000000100032F10, &v86);
        _os_log_impl(&_mh_execute_header, v57, v58, "[%s] %s no readyHealthExperienceStore - cannot start", v59, 0x16u);
        swift_arrayDestroy();
      }

      v63 = (v71)(v56, v78);
      a2(v63);
    }
  }

  else
  {
    static Logger.generation.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *&v86 = swift_slowAlloc();
      *v51 = 136315394;
      v88[0] = ObjectType;
      swift_getMetatypeMetadata();
      v52 = String.init<A>(describing:)();
      v54 = sub_100004364(v52, v53, &v86);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_100004364(0xD00000000000001FLL, 0x8000000100032F10, &v86);
      _os_log_impl(&_mh_execute_header, v49, v50, "[%s] %s feedPopulationManager not set - cannot do work", v51, 0x16u);
      swift_arrayDestroy();
    }

    v55 = (*(v77 + 8))(v15, v78);
    return (a2)(v55);
  }
}

uint64_t sub_100018D14(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Logger();
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v38);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = a2;
    v18 = v17;
    v35 = swift_slowAlloc();
    *&v42 = v35;
    *v18 = 136315395;
    *&v41[0] = ObjectType;
    swift_getMetatypeMetadata();
    v19 = String.init<A>(describing:)();
    v21 = sub_100004364(v19, v20, &v42);
    v36 = v9;
    v22 = v6;
    v23 = v5;
    v24 = v21;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2081;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = sub_100004364(v25, v26, &v42);
    v5 = v23;
    v6 = v22;
    v9 = v36;

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Posting notification named %{private}s", v18, 0x16u);
    swift_arrayDestroy();

    a2 = v37;
  }

  (*(v10 + 8))(v13, v38);
  memset(v41, 0, 32);
  v28 = v14;
  Notification.init(name:object:userInfo:)();

  Notification.userInfo.setter();
  if (!a2)
  {
    goto LABEL_11;
  }

  v39 = HealthPluginHostBufferPostNotificationUserInfoKey.getter();
  v40 = v29;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v30 = sub_10001F780(v41), (v31 & 1) == 0))
  {
    sub_100020F94(v41);
LABEL_11:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_12;
  }

  sub_100004988(*(a2 + 56) + 32 * v30, &v42);
  sub_100020F94(v41);
  if (!*(&v43 + 1))
  {
LABEL_12:
    sub_100020F24(&v42, &qword_100042218, &type metadata for Any + 8);
    goto LABEL_13;
  }

  if (swift_dynamicCast() && (v41[0] & 1) != 0)
  {
    type metadata accessor for HealthPluginHostNotificationBuffer();
    static HealthPluginHostNotificationBuffer.shared.getter();
    dispatch thunk of HealthPluginHostNotificationBuffer.storeNotification(_:)();
  }

LABEL_13:
  v32 = [objc_opt_self() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v32 postNotification:isa];

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000191CC(uint64_t (*a1)(void), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle);
  v15 = *(v14 + 64);

  dispatch thunk of UnfairLock.lock()();
  v16 = sub_100024BF0();
  v17 = *(v14 + 64);
  dispatch thunk of UnfairLock.unlock()();

  if (v16)
  {
    v37 = a1;
    static Logger.personalization.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = a2;
      v22 = v21;
      v38 = v21;
      v39 = ObjectType;
      *v20 = 136315138;
      swift_getMetatypeMetadata();
      v23 = String.init<A>(describing:)();
      v25 = sub_100004364(v23, v24, &v38);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Collecting diagnostic logs for feed population", v20, 0xCu);
      sub_10000493C(v22);
      a2 = v36;
    }

    (*(v7 + 8))(v13, v6);
    v26 = swift_allocObject();
    *(v26 + 16) = v37;
    *(v26 + 24) = a2;

    SummaryTabFeedPopulationManager.collectDiagnosticLogs(_:)();
  }

  else
  {
    static Logger.generation.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = a1;
      v38 = v31;
      v32 = v31;
      *v30 = 136315138;
      v39 = ObjectType;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = sub_100004364(v33, v34, &v38);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] feedPopulationManager not set - cannot do work", v30, 0xCu);
      sub_10000493C(v32);
      a1 = v37;
    }

    (*(v7 + 8))(v11, v6);
    return a1(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100019564(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v29 = type metadata accessor for URL();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v29);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v24[1] = a3;
    v25 = a2;
    v30 = _swiftEmptyArrayStorage;
    sub_10001F168(0, v10, 0);
    v11 = v30;
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v27 = *(v12 + 56);
    v28 = v13;
    v26 = (v12 - 8);
    do
    {
      v15 = v29;
      v16 = v12;
      v28(v9, v14, v29);
      v17 = URL.path.getter();
      v19 = v18;
      (*v26)(v9, v15);
      v30 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_10001F168((v20 > 1), v21 + 1, 1);
        v11 = v30;
      }

      v11[2] = v21 + 1;
      v22 = &v11[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v14 += v27;
      --v10;
      v12 = v16;
    }

    while (v10);
    a2 = v25;
  }

  a2(v11);
}

uint64_t sub_10001985C(uint64_t a1, char a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  if (a1)
  {
    swift_errorRetain();
    static Logger.daemon.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v40 = v8;
      v19 = v18;
      v20 = swift_slowAlloc();
      v42 = a3;
      v44 = v20;
      *v19 = 136446722;
      v21 = _typeName(_:qualified:)();
      v23 = sub_100004364(v21, v22, &v44);
      v41 = a4;
      v24 = v23;

      *(v19 + 4) = v24;
      *(v19 + 12) = 1024;
      *(v19 + 14) = a2 & 1;
      *(v19 + 18) = 2082;
      v43 = a1;
      swift_errorRetain();
      sub_100020D30(0, &qword_100041AD8);
      v25 = String.init<A>(describing:)();
      v27 = sub_100004364(v25, v26, &v44);

      *(v19 + 20) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s [Transaction] Transaction was not committed asUrgent %{BOOL}d: %{public}s", v19, 0x1Cu);
      swift_arrayDestroy();
      a3 = v42;

      (*(v9 + 8))(v15, v40);
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    swift_errorRetain();
    a3(0, a1);
  }

  else
  {
    static Logger.daemon.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = a3;
      v31 = v30;
      v32 = swift_slowAlloc();
      v41 = a4;
      v33 = v32;
      v44 = v32;
      *v31 = 136446466;
      v34 = _typeName(_:qualified:)();
      v36 = v8;
      v37 = sub_100004364(v34, v35, &v44);

      *(v31 + 4) = v37;
      *(v31 + 12) = 1024;
      *(v31 + 14) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s [Transaction] Successfully committed transaction asUrgent %{BOOL}d", v31, 0x12u);
      sub_10000493C(v33);

      a3 = v42;

      (*(v9 + 8))(v13, v36);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    return (a3)(1, 0);
  }
}

void sub_100019D78(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_100019E74(uint64_t (*a1)(void), uint64_t a2)
{
  swift_getObjectType();
  v5 = type metadata accessor for DateInterval();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle);
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  v17 = v45[3];
  sub_10000A920(v45);
  if (v17)
  {
    v42 = v5;
    static Logger.daemon.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = v9;
      v22 = v21;
      v45[0] = v21;
      *v20 = 136446210;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100004364(v23, v24, v45);
      v40 = v8;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] Running feed item generation because we have a ready store", v20, 0xCu);
      sub_10000493C(v22);

      (*(v41 + 8))(v15, v40);
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    v36 = v43;
    static DateInterval.allTimeInterval.getter();
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = a2;

    return (*(v44 + 8))(v36, v42);
  }

  else
  {
    static Logger.daemon.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v44 = a2;
      v30 = v29;
      v31 = swift_slowAlloc();
      v41 = v9;
      v32 = v31;
      v45[0] = v31;
      *v30 = 136446210;
      v33 = _typeName(_:qualified:)();
      v35 = sub_100004364(v33, v34, v45);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}s] Falling back to requesting generation because we don't have a ready store", v30, 0xCu);
      sub_10000493C(v32);

      (*(v41 + 8))(v13, v8);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    sub_10001C3A8(1);
    return a1();
  }
}

id sub_10001A308(void (*a1)(void), uint64_t a2)
{
  v99 = a1;
  v100 = a2;
  ObjectType = swift_getObjectType();
  v98 = type metadata accessor for Logger();
  v97 = *(v98 - 8);
  v3 = *(v97 + 64);
  v4 = __chkstk_darwin(v98);
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v87 = &v85 - v7;
  __chkstk_darwin(v6);
  v86 = &v85 - v8;
  v94 = type metadata accessor for UUID();
  v91 = *(v94 - 8);
  v9 = *(v91 + 64);
  v10 = __chkstk_darwin(v94);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v85 - v11;
  v96 = type metadata accessor for TransactionRecord();
  v93 = *(v96 - 8);
  v12 = *(v93 + 64);
  v13 = __chkstk_darwin(v96);
  v88 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  v16 = type metadata accessor for GenerationQueue.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v22 = *(v2 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle);
  v23 = *(v22 + 40);

  dispatch thunk of GenerationQueue.state.getter();

  LODWORD(v23) = (*(v17 + 88))(v20, v16);
  v24 = enum case for GenerationQueue.State.idle(_:);
  (*(v17 + 8))(v20, v16);
  if (v23 != v24)
  {
    v60 = v92;
    static Logger.generation.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&aBlock = v64;
      *v63 = 136446210;
      v65 = _typeName(_:qualified:)();
      v67 = sub_100004364(v65, v66, &aBlock);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "[%{public}s] Failed to run launch generation since generation queue is not idle", v63, 0xCu);
      sub_10000493C(v64);
    }

    (*(v97 + 8))(v60, v98);
    goto LABEL_11;
  }

  v25 = *(v21 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle);
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (!v103)
  {
    sub_10000A920(&aBlock);
    v68 = v87;
    static Logger.generation.getter();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&aBlock = v72;
      *v71 = 136446210;
      v73 = _typeName(_:qualified:)();
      v75 = sub_100004364(v73, v74, &aBlock);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "[%{public}s] Failed to run launch generation since HealthExperienceStore cannot be created", v71, 0xCu);
      sub_10000493C(v72);
    }

    (*(v97 + 8))(v68, v98);
LABEL_11:
    v99(0);
    return [objc_allocWithZone(NSProgress) init];
  }

  sub_1000030A0(&aBlock, v107);
  v26 = *(v22 + 16);
  v27 = v15;
  v28 = TransactionRecord.init(name:)();
  v29 = *(v22 + 32);
  __chkstk_darwin(v28);
  *(&v85 - 2) = v21;
  *(&v85 - 1) = v26;

  TransactionManagedCache.fetchCachedOrCreate(for:using:)();

  v30 = *(v22 + 24);
  v31 = *(v21 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_transactionBuilderManager);

  v92 = v26;
  v32 = sub_1000165B0(v26, v107, v30, v106, v31);

  if (v32)
  {
    v33 = v90;
    UUID.init()();
    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = v93;
    v87 = v32;
    (*(v93 + 16))(v88, v27, v96);
    v35 = v91;
    (*(v91 + 16))(v89, v33, v94);
    v36 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v98 = v27;
    v37 = (v12 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = v35;
    v39 = (*(v35 + 80) + v37 + 8) & ~*(v35 + 80);
    v40 = (v9 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = v22;
    (*(v34 + 32))(v41 + v36, v88, v96);
    *(v41 + v37) = v86;
    (*(v38 + 32))(v41 + v39, v89, v94);
    v42 = (v41 + v40);
    v97 = v21;
    v43 = v99;
    v44 = v100;
    *v42 = v99;
    v42[1] = v44;
    *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v104 = sub_100020DB0;
    v105 = v41;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v102 = sub_100003F14;
    v103 = &unk_10003E210;
    v45 = _Block_copy(&aBlock);
    v46 = objc_opt_self();

    v47 = [v46 blockOperationWithBlock:v45];
    _Block_release(v45);

    v48 = v87;
    [v47 addDependency:v87];
    sub_100004210(0, &qword_100041E60, NSOperationQueue_ptr);
    v49 = static NSOperationQueue.userInitiated.getter();
    [v49 addOperation:v48];

    v50 = static NSOperationQueue.userInitiated.getter();
    [v50 addOperation:v47];

    v51 = [objc_allocWithZone(NSProgress) init];
    v52 = swift_allocObject();
    v52[2] = v48;
    v52[3] = v47;
    v52[4] = v43;
    v52[5] = v44;
    v104 = sub_100020ECC;
    v105 = v52;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v102 = sub_100003F14;
    v103 = &unk_10003E260;
    v53 = _Block_copy(&aBlock);

    v54 = v48;
    v55 = v47;
    sub_100002590(sub_100020ECC);

    [v51 setCancellationHandler:v53];
    _Block_release(v53);

    v56 = *(v97 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork);

    v57 = v90;
    v58 = dispatch thunk of CancellableProgressList.add(_:uuid:)();

    (*(v91 + 8))(v57, v94);
    sub_10000493C(v106);
    (*(v93 + 8))(v98, v96);
    sub_10000493C(v107);
    return v58;
  }

  else
  {
    v76 = v86;
    static Logger.generation.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&aBlock = v80;
      *v79 = 136446210;
      v81 = _typeName(_:qualified:)();
      v83 = sub_100004364(v81, v82, &aBlock);

      *(v79 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "[%{public}s] Failed to run launch generation since operation cannot be created", v79, 0xCu);
      sub_10000493C(v80);
    }

    (*(v97 + 8))(v76, v98);
    v99(0);
    v84 = [objc_allocWithZone(NSProgress) init];

    sub_10000493C(v106);
    (*(v93 + 8))(v27, v96);
    sub_10000493C(v107);
    return v84;
  }
}

uint64_t sub_10001AF90(uint64_t a1, void *a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 2u);
  }

  (*(v6 + 8))(v9, v5);
  v13 = type metadata accessor for PinnedContentManagerProvider();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = a2;
  PinnedContentManagerProvider.init(healthStore:)();
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
}

uint64_t sub_10001B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = type metadata accessor for Logger();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.generation.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26[1] = a6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = a5;
    v26[0] = v17;
    v30 = v17;
    *v16 = 136446210;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100004364(v18, v19, &v30);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Launch generation completed", v16, 0xCu);
    sub_10000493C(v26[0]);
    a5 = v27;
  }

  (*(v28 + 8))(v12, v29);
  v21 = *(a1 + 32);
  TransactionManagedCache.finishUse(for:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = *(Strong + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork);
    v24 = Strong;

    dispatch thunk of CancellableProgressList.clearProgress(for:)();
  }

  return a5(1);
}

id sub_10001B3C0(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

id sub_10001B460(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v78 = a3;
  v79 = a2;
  ObjectType = swift_getObjectType();
  v92 = type metadata accessor for GenerationQueue.EnqueueResult();
  v91 = *(v92 - 8);
  v4 = *(v91 + 64);
  v5 = __chkstk_darwin(v92);
  v90 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v89 = &v78 - v7;
  v8 = type metadata accessor for GenerationWorkRequest();
  v9 = *(v8 - 8);
  v97 = *(v9 + 64);
  v10 = __chkstk_darwin(v8);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v78 - v12;
  v102 = &v78 - v12;
  v104 = type metadata accessor for UUID();
  v14 = *(v104 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v104);
  v105 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v78 - v17;
  UUID.init()();
  v18 = type metadata accessor for UnfairLock();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v88 = UnfairLock.init()();
  v21 = swift_allocObject();
  v103 = v21;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v22 = *(v9 + 16);
  v100 = a1;
  v106 = v8;
  v22(v13, a1, v8);
  v23 = v22;
  v99 = v22;
  v101 = v9 + 16;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v81;
  v23(v81, a1, v8);
  v26 = v14;
  v27 = *(v14 + 16);
  v82 = v14 + 16;
  v87 = v27;
  v28 = v104;
  v27(v105, v107, v104);
  v29 = v9;
  v30 = *(v9 + 80);
  v31 = (v30 + 16) & ~v30;
  v98 = v30 | 7;
  v96 = v31;
  v32 = *(v14 + 80);
  v33 = v26;
  v34 = (v97 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = v34;
  v35 = (v32 + v34 + 8) & ~v32;
  v84 = v35;
  v80 = (v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v94 = v29;
  v86 = *(v29 + 32);
  v97 = v29 + 32;
  v37 = v36 + v31;
  v38 = v25;
  v86(v37, v25, v106);
  *(v36 + v34) = v24;
  v93 = v33;
  v83 = *(v33 + 32);
  v39 = v105;
  v40 = v28;
  v83(v36 + v35, v105, v28);
  v41 = ObjectType;
  v42 = v80;
  *(v36 + v80) = ObjectType;
  GenerationWorkRequest.completionBlock.setter();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v38;
  v45 = v38;
  v46 = v106;
  v99(v45, v100, v106);
  v87(v39, v107, v40);
  v47 = swift_allocObject();
  v48 = v44;
  v49 = v44;
  v50 = v46;
  v51 = v46;
  v52 = v86;
  v86(v47 + v96, v48, v51);
  v53 = v85;
  *(v47 + v85) = v43;
  v83(v47 + v84, v105, v40);
  *(v47 + v42) = v41;
  v54 = v50;
  v55 = v88;
  v56 = v102;
  GenerationWorkRequest.notStartedCancellationBlock.setter();
  v99(v49, v100, v54);
  v57 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v52(v58 + v96, v49, v54);
  *(v58 + v53) = v55;
  v59 = v103;
  *(v58 + v57) = v103;

  v60 = v59;

  GenerationWorkRequest.makeGenerationWorkBlock.setter();
  v61 = *(*(v108 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_longRunningProcessOracle) + 40);
  v62 = v89;
  dispatch thunk of GenerationQueue.enqueue(_:)();
  v63 = v91;
  v64 = v90;
  v65 = v62;
  v66 = v92;
  (*(v91 + 32))(v90, v65, v92);
  v67 = v63;
  v68 = v66;
  LODWORD(v63) = (*(v63 + 88))(v64, v66);
  LODWORD(v66) = enum case for GenerationQueue.EnqueueResult.dropped(_:);
  (*(v67 + 8))(v64, v68);
  if (v63 == v66)
  {
    v79(0);
    v69 = objc_allocWithZone(NSProgress);
    v70 = [v69 initWithParent:0 userInfo:{0, v78}];
    v71 = v107;
  }

  else
  {
    v72 = objc_allocWithZone(NSProgress);
    v73 = [v72 initWithParent:0 userInfo:{0, v78}];
    v74 = swift_allocObject();
    v74[2] = v55;
    v74[3] = v60;
    v74[4] = ObjectType;
    aBlock[4] = sub_100020D24;
    aBlock[5] = v74;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003F14;
    aBlock[3] = &unk_10003E1C0;
    v75 = _Block_copy(aBlock);

    sub_100002590(sub_100020D24);

    [v73 setCancellationHandler:v75];
    _Block_release(v75);

    v76 = *(v108 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork);

    v71 = v107;
    v70 = dispatch thunk of CancellableProgressList.add(_:uuid:)();
  }

  (*(v94 + 8))(v56, v106);
  (*(v93 + 8))(v71, v104);

  return v70;
}

uint64_t sub_10001BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(v13);
  v16();

  static Logger.daemon.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[1] = a3;
    v31[0] = v20;
    v21 = v20;
    *v19 = 136315138;
    v31[1] = a4;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    v24 = sub_100004364(v22, v23, v31);
    v30[0] = v10;
    v25 = a6;
    v26 = v24;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, v25, v19, 0xCu);
    sub_10000493C(v21);

    (*(v11 + 8))(v15, v30[0]);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(result + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork);
    v29 = result;

    dispatch thunk of CancellableProgressList.clearProgress(for:)();
  }

  return result;
}

void *sub_10001BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = GenerationWorkRequest.makeGenerationWorkBlock.getter();
  v7 = v6(a1);
  v9 = v8;

  dispatch thunk of UnfairLock.lock()();
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = v7;
  *(a4 + 24) = v9;
  v11 = v7;

  dispatch thunk of UnfairLock.unlock()();
  return v7;
}

uint64_t sub_10001C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UnfairLock.lock()();
  static Logger.generation.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26[1] = a1;
    v14 = v13;
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    *&v28 = a3;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_100004364(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    swift_beginAccess();
    v28 = *(a2 + 16);
    v18 = v28;
    sub_100020910(0, &qword_100042200, &qword_100042208);
    v19 = v18;
    v20 = String.init<A>(describing:)();
    v22 = sub_100004364(v20, v21, v27);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] Cancelling work: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v23 = *(a2 + 16);
  if (v23)
  {
    [v23 cancel];
  }

  swift_beginAccess();
  v24 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;

  return dispatch thunk of UnfairLock.unlock()();
}

id sub_10001C2D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle);
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v4)
  {
    sub_1000030A0(&v3, v5);
    sub_100007A94(v5, &v3);
    sub_100020D30(0, &qword_100041C60);
    type metadata accessor for DaemonHealthExperienceStore();
    if (swift_dynamicCast())
    {
      dispatch thunk of DaemonHealthExperienceStore.cleanUpManagedObjectContext()();
    }

    sub_10000493C(v5);
  }

  else
  {
    sub_10000A920(&v3);
  }

  return [objc_opt_self() resetSharedInstances];
}

void sub_10001C3A8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  static Logger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v53 = v6;
    v54 = v5;
    v14 = 0xD000000000000014;
    v15 = a1;
    a1 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *a1 = 136446466;
    v51 = ObjectType;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100004364(v16, v17, aBlock);

    *(a1 + 4) = v18;
    *(a1 + 12) = 2082;
    v52 = v15;
    if (v15)
    {
      if (v15 == 1)
      {
        v14 = 0xD00000000000001ALL;
      }

      else
      {
        v14 = 0xD000000000000016;
      }

      if (v15 == 1)
      {
        v19 = "foregroundCompletion";
      }

      else
      {
        v19 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      v19 = &unk_1000323F0;
    }

    v21 = sub_100004364(v14, v19 | 0x8000000000000000, aBlock);

    *(a1 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] Scheduling background generation %{public}s", a1, 0x16u);
    swift_arrayDestroy();

    v6 = v53;
    v5 = v54;
    v20 = *(v53 + 8);
    v20(v11, v54);
    LOBYTE(a1) = v52;
  }

  else
  {

    v20 = *(v6 + 8);
    v20(v11, v5);
  }

  v22 = OBJC_IVAR____TtC10healthappd23HealthPluginHostService_backgroundGenerationActivities;
  v23 = *&v2[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_backgroundGenerationActivities];
  v24 = v55;
  if (*(v23 + 16))
  {
    v25 = *&v2[OBJC_IVAR____TtC10healthappd23HealthPluginHostService_backgroundGenerationActivities];

    v26 = sub_10001F6BC(a1);
    if (v27)
    {
      v28 = *(*(v23 + 56) + 8 * v26);

      v29 = dbl_100032038[a1];
      v30 = swift_allocObject();
      *(v30 + 16) = a1;
      aBlock[4] = sub_100020908;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001CFF8;
      aBlock[3] = &unk_10003E0A8;
      v31 = _Block_copy(aBlock);

      [v28 requestRunWithMaximumDelay:v31 completion:v29];
      _Block_release(v31);

      return;
    }
  }

  static Logger.daemon.getter();
  v51 = v2;
  v32 = v2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  LODWORD(v52) = v34;
  if (os_log_type_enabled(v33, v34))
  {
    v53 = v6;
    v54 = v5;
    v35 = 0xD000000000000014;
    v36 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v36 = 136446722;
    v37 = _typeName(_:qualified:)();
    v39 = sub_100004364(v37, v38, aBlock);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v35 = 0xD00000000000001ALL;
      }

      else
      {
        v35 = 0xD000000000000016;
      }

      if (a1 == 1)
      {
        v40 = "foregroundCompletion";
      }

      else
      {
        v40 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      v40 = &unk_1000323F0;
    }

    v43 = v51;
    v44 = sub_100004364(v35, v40 | 0x8000000000000000, aBlock);

    *(v36 + 14) = v44;
    *(v36 + 22) = 2082;
    v45 = *&v43[v22];
    sub_100004210(0, &qword_1000421F0, HDXPCGatedActivity_ptr);
    sub_1000208B4();

    v46 = Dictionary.description.getter();
    v48 = v47;

    v49 = sub_100004364(v46, v48, aBlock);

    *(v36 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v33, v52, "[%{public}s] Could not find generationType %{public}s in background generation activities %{public}s", v36, 0x20u);
    swift_arrayDestroy();

    v42 = v54;
    v41 = v55;
  }

  else
  {

    v41 = v24;
    v42 = v5;
  }

  v20(v41, v42);
}