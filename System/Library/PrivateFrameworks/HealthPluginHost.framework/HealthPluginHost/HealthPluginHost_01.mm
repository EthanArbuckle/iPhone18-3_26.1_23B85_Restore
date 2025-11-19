uint64_t sub_10001C97C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v54 - v16;
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  switch(a1)
  {
    case 2:
      static Logger.daemon.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = 0xD000000000000014;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v57 = v36;
        *v35 = 136446210;
        if (a3)
        {
          if (a3 == 1)
          {
            v34 = 0xD00000000000001ALL;
          }

          else
          {
            v34 = 0xD000000000000016;
          }

          if (a3 == 1)
          {
            v37 = "foregroundCompletion";
          }

          else
          {
            v37 = "initialUnlockFeedItemsOnly";
          }
        }

        else
        {
          v37 = &unk_1000323F0;
        }

        v50 = sub_100004364(v34, v37 | 0x8000000000000000, &v57);

        *(v35 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v32, v33, "Completed background generation %{public}s with deferral", v35, 0xCu);
        sub_10000493C(v36);
      }

      v44 = *(v7 + 8);
      v45 = v14;
      return v44(v45, v6);
    case 1:
      static Logger.daemon.getter();
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = 0xD000000000000014;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v57 = v30;
        *v29 = 136446466;
        v55 = v30;
        if (a3)
        {
          if (a3 == 1)
          {
            v28 = 0xD00000000000001ALL;
          }

          else
          {
            v28 = 0xD000000000000016;
          }

          if (a3 == 1)
          {
            v31 = "foregroundCompletion";
          }

          else
          {
            v31 = "initialUnlockFeedItemsOnly";
          }
        }

        else
        {
          v31 = &unk_1000323F0;
        }

        v46 = sub_100004364(v28, v31 | 0x8000000000000000, &v57);

        *(v29 + 4) = v46;
        *(v29 + 12) = 2082;
        v56 = a2;
        swift_errorRetain();
        sub_100020910(0, &qword_1000421F8, &qword_100041AD8);
        v47 = String.init<A>(reflecting:)();
        v49 = sub_100004364(v47, v48, &v57);

        *(v29 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v26, v27, "Completed background generation %{public}s with error %{public}s", v29, 0x16u);
        swift_arrayDestroy();
      }

      v44 = *(v7 + 8);
      v45 = v17;
      return v44(v45, v6);
    case 0:
      static Logger.daemon.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = 0xD000000000000014;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v57 = v24;
        *v23 = 136446210;
        if (a3)
        {
          if (a3 == 1)
          {
            v22 = 0xD00000000000001ALL;
          }

          else
          {
            v22 = 0xD000000000000016;
          }

          if (a3 == 1)
          {
            v25 = "foregroundCompletion";
          }

          else
          {
            v25 = "initialUnlockFeedItemsOnly";
          }
        }

        else
        {
          v25 = &unk_1000323F0;
        }

        v51 = sub_100004364(v22, v25 | 0x8000000000000000, &v57);

        *(v23 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v20, v21, "Completed background generation %{public}s successfully", v23, 0xCu);
        sub_10000493C(v24);
      }

      v44 = *(v7 + 8);
      v45 = v19;
      return v44(v45, v6);
  }

  static Logger.daemon.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v38, v39))
  {

    v44 = *(v7 + 8);
    v45 = v11;
    return v44(v45, v6);
  }

  v55 = v6;
  v40 = 0xD000000000000014;
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v57 = v42;
  *v41 = 136446466;
  if (a3)
  {
    if (a3 == 1)
    {
      v40 = 0xD00000000000001ALL;
    }

    else
    {
      v40 = 0xD000000000000016;
    }

    if (a3 == 1)
    {
      v43 = "foregroundCompletion";
    }

    else
    {
      v43 = "initialUnlockFeedItemsOnly";
    }
  }

  else
  {
    v43 = &unk_1000323F0;
  }

  v53 = sub_100004364(v40, v43 | 0x8000000000000000, &v57);

  *(v41 + 4) = v53;
  *(v41 + 12) = 2050;
  *(v41 + 14) = a1;
  _os_log_impl(&_mh_execute_header, v38, v39, "Completed background generation %{public}s with unexpected state %{public}ld", v41, 0x16u);
  sub_10000493C(v42);

  return (*(v7 + 8))(v11, v55);
}

void sub_10001CFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_10001D070()
{
  v1 = type metadata accessor for HealthPluginHostService(0);
  DebuggingResponder.deregisterForDebuggingRequests()();
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001D2C8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_lock);
  dispatch thunk of UnfairLock.lock()();
  static Logger.analytics.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v49 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v46 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47 = v8;
    v45 = v21;
    v52 = v21;
    *v20 = 136446210;
    v51[0] = ObjectType;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    v24 = sub_100004364(v22, v23, &v52);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s]: Submitting personalization analytics…", v20, 0xCu);
    sub_10000493C(v45);
    v8 = v47;

    v4 = v46;
  }

  v25 = *(v9 + 8);
  v25(v14, v8);
  v26 = *(v4 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle);
  v27 = *(v26 + 64);

  dispatch thunk of UnfairLock.lock()();
  v28 = sub_100024BF0();
  v29 = *(v26 + 64);
  dispatch thunk of UnfairLock.unlock()();

  v30 = v50;
  if (!v28)
  {
    static Logger.personalization.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v8;
      v38 = v37;
      v52 = v37;
      *v36 = 136446210;
      v51[0] = v49;
      swift_getMetatypeMetadata();
      v39 = String.init<A>(describing:)();
      v41 = sub_100004364(v39, v40, &v52);
      v49 = v9;
      v42 = v41;

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s]: Unable to resolve FeedPopulationManager for personalization analytics", v36, 0xCu);
      sub_10000493C(v38);

      v43 = (v25)(v50, v47);
      if (!a2)
      {
        return dispatch thunk of UnfairLock.unlock()();
      }
    }

    else
    {

      v43 = (v25)(v30, v8);
      if (!a2)
      {
        return dispatch thunk of UnfairLock.unlock()();
      }
    }

    a2(v43);
    return dispatch thunk of UnfairLock.unlock()();
  }

  BaseFeedPopulationManager.healthExperienceStore.getter();

  sub_10000AA10(v51, v51[3]);
  v31 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  sub_10000493C(v51);
  v32 = swift_allocObject();
  v33 = v49;
  v32[2] = v48;
  v32[3] = a2;
  v32[4] = a3;
  v32[5] = v33;

  sub_100002590(a2);
  dispatch thunk of AppSessionAnalyticsManager.updateCurrentEventWithEndOfSessionAnalytics(from:in:completion:)();

  return dispatch thunk of UnfairLock.unlock()();
}

uint64_t sub_10001D75C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of AppSessionAnalyticsManager.submitCurrentEvent(resetAfterSubmitted:)();
  static Logger.personalization.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21[1] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22[0] = v16;
    v22[1] = a4;
    *v15 = 136446210;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004364(v17, v18, v22);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s]: Analytics complete!", v15, 0xCu);
    sub_10000493C(v16);
  }

  result = (*(v8 + 8))(v11, v7);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_10001D96C()
{
  sub_10001DA6C(319, &qword_100041C68, sub_100007100, &type metadata accessor for UserDefault);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10001DA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10001DB38()
{
  v1 = v0;
  _StringGuts.grow(_:)(62);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  sub_100020818();
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x8000000100032EA0;
  v5._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_healthExperienceStoreOracle);
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6E696F676E6F202CLL;
  v12._object = 0xEF203A6B726F5767;
  String.append(_:)(v12);
  v16 = *(v1 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_ongoingWork);
  type metadata accessor for CancellableProgressList();
  sub_100020860(&qword_1000421E8, &type metadata accessor for CancellableProgressList);

  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

uint64_t sub_10001DD44()
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

uint64_t sub_10001E000(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E078(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  GeneratorPipelineManager.store.getter();
  sub_10000AA10(v11, v11[3]);
  v5 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000207CC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1000207D8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E580;
  aBlock[3] = &unk_10003E030;
  v8 = _Block_copy(aBlock);

  [v5 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_10000493C(v11);
  }

  return result;
}

uint64_t sub_10001E248(uint64_t a1, Swift::OpaquePointer a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeneratorPipelineManager.store.getter();
  sub_10000AA10(v27, v28);
  v10 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  NSManagedObjectContext.queue_createProfiles(for:)(a2);

  sub_10000493C(v27);
  GeneratorPipelineManager.store.getter();
  sub_10000AA10(v27, v28);
  v11 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  v26 = 0;
  v12 = [v11 save:&v26];

  v13 = v26;
  result = sub_10000493C(v27);
  if (!v12)
  {
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.generation.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = a3;
      *v18 = 136446466;
      swift_getMetatypeMetadata();
      v19 = String.init<A>(describing:)();
      v21 = sub_100004364(v19, v20, &v26);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v27[0] = v15;
      swift_errorRetain();
      sub_100020D30(0, &qword_100041AD8);
      v22 = String.init<A>(describing:)();
      v24 = sub_100004364(v22, v23, &v26);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s]: Unable to update stored profiles: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_10001E5A8()
{
  v0 = FeedItemGeneratorPipelineManager.deinit();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_10001E5E0(uint64_t a1, void **a2)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v103 = *(v4 - 8);
  v102 = *(v103 + 64);
  v5 = v4 - 8;
  v79 = v4 - 8;
  __chkstk_darwin(v4 - 8);
  v100 = &type metadata accessor for OS_dispatch_queue.SchedulerOptions;
  v101 = &v73 - v6;
  v106 = &type metadata accessor for Optional;
  sub_10001DA6C(0, &qword_1000422C8, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v105 = &v73 - v9;
  sub_100021260(0, &qword_1000422D0, &type metadata accessor for Publishers.TimeGroupingStrategy);
  v82 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v73 - v13);
  sub_1000223B4(0, &qword_1000422D8, sub_100022124, sub_1000221F8);
  v84 = v15;
  v90 = *(v15 - 8);
  v16 = *(v90 + 64);
  __chkstk_darwin(v15);
  v74 = &v73 - v17;
  sub_10002222C();
  v88 = v18;
  v91 = *(v18 - 8);
  v19 = *(v91 + 64);
  __chkstk_darwin(v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022380(0);
  v87 = v22;
  v89 = *(v22 - 8);
  v23 = *(v89 + 64);
  __chkstk_darwin(v22);
  v80 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022460(0);
  v92 = v25;
  v97 = *(v25 - 8);
  v26 = *(v97 + 64);
  __chkstk_darwin(v25);
  v81 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000224DC(0);
  v29 = *(v28 - 8);
  v94 = v28;
  v95 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v86 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021148(0, &qword_100042330, sub_1000224DC, sub_100022558, &type metadata accessor for Publishers.IgnoreOutput);
  v93 = v32;
  v96 = *(v32 - 8);
  v33 = *(v96 + 64);
  __chkstk_darwin(v32);
  v83 = &v73 - v34;
  sub_10002258C();
  v36 = *(v35 - 8);
  v98 = v35;
  v99 = v36;
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v85 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  sub_100022124(0);
  sub_1000221F8();
  Publisher.map<A>(_:)();
  sub_100022708();
  v40 = *(v39 + 48);
  v41 = a2;
  v75 = a2;
  v42 = *a2;
  *v14 = *a2;
  v43 = *(v5 + 44);
  v44 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v44 - 8) + 16))(v14 + v40, v41 + v43, v44);
  v45 = v82;
  (*(v11 + 104))(v14, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v82);
  v76 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v46 = *(v76 - 8);
  v77 = *(v46 + 56);
  v78 = v46 + 56;
  v47 = v105;
  v77(v105, 1, 1, v76);
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  sub_1000222F8();
  sub_1000212DC();
  v48 = v42;
  v49 = v21;
  v50 = v84;
  v51 = v74;
  Publisher.collect<A>(_:options:)();
  v52 = v47;
  v53 = v100;
  sub_100022788(v52, &qword_1000422C8, v100, v106, sub_10001DA6C);
  (*(v11 + 8))(v14, v45);
  (*(v90 + 8))(v51, v50);
  sub_10002242C();
  v54 = v80;
  v55 = v88;
  Publisher.map<A>(_:)();
  (*(v91 + 8))(v49, v55);
  sub_1000224A8();
  v56 = v81;
  v57 = v87;
  Publisher.first(where:)();
  (*(v89 + 8))(v54, v57);
  v58 = v101;
  sub_1000227E8(v75, v101);
  v59 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v60 = (v102 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_100022868(v58, v61 + v59);
  *(v61 + v60) = v104;
  sub_100022524();
  v62 = v92;
  v63 = v86;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v97 + 8))(v56, v62);
  sub_100022558();
  v64 = v83;
  v65 = v94;
  Publisher.ignoreOutput()();
  (*(v95 + 8))(v63, v65);
  v66 = *(v79 + 48);
  v67 = v105;
  v77(v105, 1, 1, v76);
  sub_10002266C();
  v68 = v85;
  v69 = v93;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_100022788(v67, &qword_1000422C8, v53, v106, sub_10001DA6C);
  (*(v96 + 8))(v64, v69);
  sub_100020860(&qword_100042358, sub_10002258C);
  v70 = v98;
  v71 = Publisher.eraseToAnyPublisher()();
  (*(v99 + 8))(v68, v70);
  return v71;
}

void sub_10001F0C8()
{
  v0 = sub_10002371C();
  if (swift_isClassType() && v0)
  {
    sub_100023774(0, &qword_100042398, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  }

  else
  {
    sub_10001DA6C(0, &qword_100042390, sub_10002371C, &type metadata accessor for _ContiguousArrayStorage);
  }
}

char *sub_10001F168(char *a1, int64_t a2, char a3)
{
  result = sub_10001F298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001F188(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F4C8(a1, a2, a3, *v3, &qword_100042258, sub_100021114, sub_100021114);
  *v3 = result;
  return result;
}

size_t sub_10001F1D8(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F4C8(a1, a2, a3, *v3, &qword_100042260, sub_1000211C8, sub_1000211C8);
  *v3 = result;
  return result;
}

char *sub_10001F228(char *a1, int64_t a2, char a3)
{
  result = sub_10001F3BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001F248(size_t a1, int64_t a2, char a3)
{
  result = sub_10001F4C8(a1, a2, a3, *v3, &qword_100042228, &type metadata accessor for ModelTrainingEvent, &type metadata accessor for ModelTrainingEvent);
  *v3 = result;
  return result;
}

char *sub_10001F298(char *result, int64_t a2, char a3, char *a4)
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
    sub_100023774(0, &qword_100042210, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
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

char *sub_10001F3BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100023774(0, &qword_100042230, &type metadata for Feed.Kind, &type metadata accessor for _ContiguousArrayStorage);
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

size_t sub_10001F4C8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001DA6C(0, a5, a6, &type metadata accessor for _ContiguousArrayStorage);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_10001F6BC(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10001F7C4(a1, v4);
}

unint64_t sub_10001F780(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001F948(a1, v4);
}

unint64_t sub_10001F7C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ALL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "foregroundCompletion";
      }

      else
      {
        v5 = 0xD000000000000016;
        v6 = "initialUnlockFeedItemsOnly";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000014;
      v8 = *(*(v2 + 48) + v4) ? v6 : &unk_1000323F0;
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ALL : 0xD000000000000016;
        v10 = a1 == 1 ? "foregroundCompletion" : "initialUnlockFeedItemsOnly";
      }

      else
      {
        v9 = 0xD000000000000014;
        v10 = &unk_1000323F0;
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

unint64_t sub_10001F948(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100020FE8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100020F94(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001FA10(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, unint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v92 = a7;
  v95 = a6;
  v101 = a4;
  v97 = a3;
  v100 = a10;
  sub_1000211C8(0);
  v81 = v13;
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  __chkstk_darwin(v13);
  v80 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PipelineProviderWrappers();
  v93 = *(v105 - 8);
  v16 = *(v93 + 64);
  __chkstk_darwin(v105);
  v104 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021114(0);
  v19 = *(v18 - 8);
  v102 = v18;
  v103 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v82 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchTimeInterval();
  v84 = *(v86 - 8);
  v22 = *(v84 + 64);
  __chkstk_darwin(v86);
  v85 = (&v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000078E0();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v91 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000798C();
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  v37 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108[3] = a9;
  v108[4] = v100;
  v38 = sub_100020768(v108);
  (*(*(a9 - 8) + 16))(v38, v101, a9);
  v96 = a1;
  v39 = GenerationWorkRequest.pluginIdentifierSetToRun.getter();
  sub_1000213EC(v39);

  v40 = type metadata accessor for BundleFeedItemGenerationPluginInfo();
  v41 = sub_100020860(&qword_100041D10, &type metadata accessor for BundleFeedItemGenerationPluginInfo);
  v89 = v40;
  v87 = v41;
  v42 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  v43 = objc_allocWithZone(HKProfileStore);
  v90 = a2;
  v44 = [v43 initWithHealthStore:a2];
  HKProfileStore.profileIdentifiersPublisher.getter();
  sub_100020860(&qword_100041D08, &type metadata accessor for HKProfileStore.ProfileIdentifiersPublisher);
  Publisher<>.mapToSourceProfiles(includeAgnostic:)();
  (*(v28 + 8))(v31, v27);
  sub_100020860(&qword_100041D18, sub_10000798C);
  v83 = Publisher.eraseToAnyPublisher()();

  (*(v34 + 8))(v37, v33);
  sub_100007A94(v97, &v107);
  v45 = *(v42 + 16);
  v94 = a5;
  v88 = v42;
  if (v45)
  {
    v106[0] = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v45, 0);
    v46 = v106[0];
    v100 = *(v93 + 16);
    v47 = v42 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v99 = *(v93 + 72);
    v101 = (v93 + 16);
    v48 = (v93 + 8);
    v49 = v79;
    v98 = (v79 + 32);
    v50 = v81;
    v51 = v80;
    do
    {
      v53 = v104;
      v52 = v105;
      (v100)(v104, v47, v105);
      PipelineProviderWrappers.feedItem.getter();
      (*v48)(v53, v52);
      v106[0] = v46;
      v55 = *(v46 + 16);
      v54 = *(v46 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_10001F1D8(v54 > 1, v55 + 1, 1);
        v46 = v106[0];
      }

      *(v46 + 16) = v55 + 1;
      (*(v49 + 32))(v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v55, v51, v50);
      v47 += v99;
      --v45;
    }

    while (v45);
  }

  type metadata accessor for FeedItemGeneratorPipelineManager();
  sub_100007A94(v108, v106);

  v56 = v90;
  v99 = GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v57 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  sub_100011944(v57);

  v58 = Array<A>.makeGeneratorPipelineProviderWrappers()();

  if ((GenerationWorkRequest.commitUrgentTransaction.getter() & 1) == 0)
  {
    v58 = v88;
  }

  sub_100007A94(v97, &v107);
  v59 = *(v58 + 16);
  if (v59)
  {
    v98 = v56;
    v106[0] = _swiftEmptyArrayStorage;
    sub_10001F188(0, v59, 0);
    v60 = v106[0];
    v101 = *(v93 + 16);
    v61 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v97 = v58;
    v62 = v58 + v61;
    v100 = *(v93 + 72);
    v63 = (v93 + 8);
    v64 = v82;
    do
    {
      v66 = v104;
      v65 = v105;
      v101(v104, v62, v105);
      PipelineProviderWrappers.sharableModel.getter();
      (*v63)(v66, v65);
      v106[0] = v60;
      v68 = *(v60 + 16);
      v67 = *(v60 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_10001F188(v67 > 1, v68 + 1, 1);
        v60 = v106[0];
      }

      *(v60 + 16) = v68 + 1;
      (*(v103 + 32))(v60 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v68, v64, v102);
      v62 += v100;
      --v59;
    }

    while (v59);

    v56 = v98;
  }

  else
  {
  }

  type metadata accessor for SharableModelGeneratorPipelineManager();
  sub_100007A94(v108, v106);

  v69 = v56;
  GeneratorPipelineManager.__allocating_init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:)();
  dispatch thunk of CountryOracle.currentCountry()();
  v70 = GenerationWorkRequest.generationPhases.getter();
  v71 = v70;
  v72 = *(v70 + 16);
  if (!v72)
  {
    goto LABEL_18;
  }

  v73 = sub_1000259FC(*(v70 + 16), 0);
  v74 = *(type metadata accessor for GenerationPhase() - 8);
  v75 = sub_1000297CC(&v107, &v73[(*(v74 + 80) + 32) & ~*(v74 + 80)], v72, v71);
  sub_100007AF8();
  if (v75 != v72)
  {
    __break(1u);
LABEL_18:
  }

  type metadata accessor for GeneratorPipelineGenerationOperation();
  GenerationWorkRequest.commitUrgentTransaction.getter();
  v76 = v85;
  *v85 = 150;
  (*(v84 + 104))(v76, enum case for DispatchTimeInterval.seconds(_:), v86);
  v77 = GeneratorPipelineGenerationOperation.__allocating_init(feedItemManager:sharableModelManager:sourceProfiles:country:generationPhases:commitAsUrgent:isLaunchGeneration:timeoutInterval:)();
  sub_100020860(&qword_100041D20, &type metadata accessor for GeneratorPipelineGenerationOperation);
  sub_10000493C(v108);
  return v77;
}

uint64_t sub_10002059C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29[3] = a12;
  v29[4] = a14;
  v17 = sub_100020768(v29);
  (*(*(a12 - 8) + 32))(v17, a8, a12);
  v28[3] = a11;
  v28[4] = a13;
  v18 = sub_100020768(v28);
  (*(*(a11 - 8) + 32))(v18, a9, a11);
  v19 = type metadata accessor for HealthPluginHostService.JustPrimarySnippetsFeedItemGeneratorPipelineManager(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_100007A94(a1, v27);
  sub_100007A94(a5, v26);
  sub_100007A94(v29, v25);
  sub_100007A94(v28, v24);
  v22 = FeedItemGeneratorPipelineManager.init(store:healthStore:delegates:environment:pinnedContentManager:notificationManager:transactionBuilderManager:scheduler:queueProvider:)();
  sub_10000493C(a5);
  sub_10000493C(a1);
  sub_10000493C(v28);
  sub_10000493C(v29);
  return v22;
}

uint64_t sub_100020718(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_100020768(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000207D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100020800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100020818()
{
  result = qword_1000421E0;
  if (!qword_1000421E0)
  {
    type metadata accessor for HealthPluginHostService(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000421E0);
  }

  return result;
}

uint64_t sub_100020860(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000208B4()
{
  result = qword_1000427D0;
  if (!qword_1000427D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427D0);
  }

  return result;
}

void sub_100020910(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100020D30(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100020990()
{
  v1 = type metadata accessor for GenerationWorkRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100020B18(uint64_t (*a1)(uint64_t), const char *a2)
{
  v5 = *(type metadata accessor for GenerationWorkRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  return sub_10001BD14(v2 + v6, *(v2 + v7), v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

void *sub_100020C2C(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerationWorkRequest() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001BF6C(a1, v1 + v4, v6, v7);
}

uint64_t sub_100020CD4(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100020D30(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100020DB0()
{
  v1 = *(type metadata accessor for TransactionRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v3);
  v10 = v0 + v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v0 + v7);

  return sub_10001B134(v8, v0 + v2, v9, v0 + v5, v11, v12);
}

uint64_t sub_100020ECC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  [v1 cancel];
  [v2 cancel];
  return v4(0);
}

uint64_t sub_100020F24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_100023774(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100021044(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100021098()
{
  if (!qword_100042238)
  {
    sub_100023774(255, &qword_100041D00, &type metadata for SourceProfile, &type metadata accessor for Array);
    v0 = type metadata accessor for Just();
    if (!v1)
    {
      atomic_store(v0, &qword_100042238);
    }
  }
}

void sub_100021148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1000211FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100004210(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100021254(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100021260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    v7 = sub_1000212DC();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000212DC()
{
  result = qword_100042278;
  if (!qword_100042278)
  {
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042278);
  }

  return result;
}

unint64_t sub_100021378()
{
  result = qword_1000422A0;
  if (!qword_1000422A0)
  {
    sub_100022144(255, &qword_100042288, &type metadata accessor for CurrentValueSubject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000422A0);
  }

  return result;
}

char *sub_1000213EC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BundleFeedItemPluginBundleProvider();
  static BundleFeedItemPluginBundleProvider.sharedInstance.getter();
  v8 = dispatch thunk of PluginBundleProvider.availablePluginsMap.getter();

  if (!a1 || !*(a1 + 16))
  {
    v1 = sub_100011944(v8);
LABEL_30:

    return v1;
  }

  v56 = v3;
  v57 = v7;
  v55 = v4;
  v10 = v8 + 64;
  v9 = *(v8 + 64);
  v61 = _swiftEmptyArrayStorage;
  v11 = 1 << *(v8 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v59 = a1 + 56;

  v15 = 0;
  for (i = v8; v13; v8 = i)
  {
LABEL_13:
    while (1)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v1 = *(*(v8 + 56) + ((v15 << 9) | (8 * v17)));

      v18 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v20 = v19;
      if (*(a1 + 16))
      {
        v21 = v18;
        v22 = *(a1 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v23 = Hasher._finalize()();
        v24 = -1 << *(a1 + 32);
        v25 = v23 & ~v24;
        if ((*(v59 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          break;
        }
      }

LABEL_8:

      v8 = i;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(a1 + 48) + 16 * v25);
      v28 = *v27 == v21 && v27[1] == v20;
      if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v59 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v29 = *(v61 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (1)
  {
LABEL_9:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_13;
    }
  }

  v1 = v61;
  if ((v61 & 0x8000000000000000) == 0 && (v61 & 0x4000000000000000) == 0)
  {
    v30 = *(v61 + 16);
    goto LABEL_29;
  }

LABEL_46:
  v30 = _CocoaArrayWrapper.endIndex.getter();
LABEL_29:
  if (v30 == *(a1 + 16))
  {
    goto LABEL_30;
  }

  v32 = v57;
  static Logger.daemon.getter();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v33, v34))
  {

    (*(v55 + 8))(v32, v56);
    return v1;
  }

  v35 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v60[0] = v59;
  *v35 = 136315394;
  v36 = Set.description.getter();
  v38 = sub_100004364(v36, v37, v60);

  *(v35 + 4) = v38;
  *(v35 + 12) = 2080;
  if (!v30)
  {
LABEL_44:
    v48 = Array.description.getter();
    v50 = v49;

    v51 = sub_100004364(v48, v50, v60);

    *(v35 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v33, v34, "Not all plugins found with identifiers %s, but found %s", v35, 0x16u);
    swift_arrayDestroy();

    (*(v55 + 8))(v57, v56);
    return v1;
  }

  v52 = v35;
  v53 = v34;
  v54 = v33;
  v61 = _swiftEmptyArrayStorage;
  result = sub_10001F168(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v40 = v61;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v1 + 8 * v39 + 32);
      }

      v42 = dispatch thunk of BundleFeedItemGenerationPluginInfo.bundleIdentifier.getter();
      v44 = v43;

      v61 = v40;
      v46 = v40[2];
      v45 = v40[3];
      if (v46 >= v45 >> 1)
      {
        sub_10001F168((v45 > 1), v46 + 1, 1);
        v40 = v61;
      }

      ++v39;
      v40[2] = v46 + 1;
      v47 = &v40[2 * v46];
      v47[4] = v42;
      v47[5] = v44;
    }

    while (v30 != v39);
    v33 = v54;
    LOBYTE(v34) = v53;
    v35 = v52;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

id sub_100021968(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = v4;
  v46 = a4;
  v47 = a3;
  v44 = a1;
  v45 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = qword_1000425B0;
  sub_10002204C();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *&v5[v15] = v16;
  static Logger.personalization.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v19 = 136446466;
    v20 = sub_10002C4F0(ObjectType);
    v43 = v5;
    v22 = ObjectType;
    v23 = sub_100004364(v20, v21, &v48);
    v5 = v43;

    *(v19 + 4) = v23;
    ObjectType = v22;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_100004364(0xD000000000000078, 0x8000000100033090, &v48);
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s]: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v24 = *(v8 + 8);
  v24(v14, v7);
  *&v5[qword_100042590] = v44;

  *&v5[qword_1000425A8] = sub_10001E5E0(v45, v47);
  sub_100004210(0, &qword_100041AD0, OS_dispatch_queue_ptr);
  sub_100020860(&qword_1000422C0, type metadata accessor for SummaryTabForegroundFeedPopulationOperation);
  sub_1000212DC();
  *&v5[qword_1000425A0] = static FeedPopulationListenerSupport.makeThrottledFeedItemSubmissionPublisher<A>(config:)();
  static Logger.analytics.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = sub_10002C4F0(ObjectType);
    v45 = v7;
    v30 = v12;
    v31 = sub_100004364(v28, v29, &v48);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_100004364(0xD00000000000001ALL, 0x8000000100033070, &v48);
    _os_log_impl(&_mh_execute_header, v25, v26, "[%s]: Initialized %s", v27, 0x16u);
    swift_arrayDestroy();

    v32 = v30;
    v33 = v45;
  }

  else
  {

    v32 = v12;
    v33 = v7;
  }

  v24(v32, v33);
  v34 = type metadata accessor for AppSessionAnalyticsManager();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *&v5[qword_100042598] = AppSessionAnalyticsManager.init()();
  v37 = type metadata accessor for SummaryTabForegroundFeedPopulationOperation();
  v49.receiver = v5;
  v49.super_class = v37;
  v38 = objc_msgSendSuper2(&v49, "init");
  sub_100021260(0, &qword_100042270, &type metadata accessor for FeedPopulationListenerSchedulerConfiguration);
  (*(*(v39 - 8) + 8))(v46, v39);
  sub_1000220AC(v47);
  return v38;
}

void *sub_100021E78(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[16];
  v6 = v1[17];
  v11 = v1[18];
  v12 = v1[19];
  v7 = (v1 + 4);
  v8 = (v1 + 11);
  v9 = v1[2];
  return sub_1000158A8(a1, v2, v7, v3, v4, v8, v5, v6, v11, v12);
}

uint64_t sub_100021EC8()
{
  v1 = *(type metadata accessor for TransactionRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100014C3C(v3, v0 + v2, v5);
}

id sub_100021F5C()
{
  v1 = *(type metadata accessor for TransactionRecord() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_100014D14(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_10002204C()
{
  if (!qword_1000422B8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = type metadata accessor for ManagedBuffer();
    if (!v1)
    {
      atomic_store(v0, &qword_1000422B8);
    }
  }
}

uint64_t sub_1000220AC(uint64_t a1)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100022144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *, void *))
{
  if (!*a2)
  {
    sub_100021148(255, &qword_100042290, sub_100007538, sub_100021344, &type metadata accessor for GeneratorPipelineManager.GenerationState);
    v7 = a3(a1, v6, &type metadata for Never, &protocol witness table for Never);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10002222C()
{
  if (!qword_1000422F0)
  {
    sub_1000223B4(255, &qword_1000422D8, sub_100022124, sub_1000221F8);
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    sub_1000222F8();
    sub_1000212DC();
    v0 = type metadata accessor for Publishers.CollectByTime();
    if (!v1)
    {
      atomic_store(v0, &qword_1000422F0);
    }
  }
}

unint64_t sub_1000222F8()
{
  result = qword_1000422F8;
  if (!qword_1000422F8)
  {
    sub_1000223B4(255, &qword_1000422D8, sub_100022124, sub_1000221F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000422F8);
  }

  return result;
}

void sub_1000223B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for Publishers.Map();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10002258C()
{
  if (!qword_100042340)
  {
    sub_100021148(255, &qword_100042330, sub_1000224DC, sub_100022558, &type metadata accessor for Publishers.IgnoreOutput);
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    sub_10002266C();
    sub_1000212DC();
    v0 = type metadata accessor for Publishers.Timeout();
    if (!v1)
    {
      atomic_store(v0, &qword_100042340);
    }
  }
}

unint64_t sub_10002266C()
{
  result = qword_100042348;
  if (!qword_100042348)
  {
    sub_100021148(255, &qword_100042330, sub_1000224DC, sub_100022558, &type metadata accessor for Publishers.IgnoreOutput);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042348);
  }

  return result;
}

void sub_100022708()
{
  if (!qword_100042350)
  {
    sub_100004210(255, &qword_100041AD0, OS_dispatch_queue_ptr);
    type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100042350);
    }
  }
}

uint64_t sub_100022788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1000227E8(uint64_t a1, uint64_t a2)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022868(uint64_t a1, uint64_t a2)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000228E8(unsigned __int8 *a1)
{
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *a1;

  return sub_10001F0BC(v7, v1 + v5, v6);
}

uint64_t sub_1000229A0(uint64_t a1, uint64_t a2, void (**a3)(void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = a3;
  v11 = *(a2 + OBJC_IVAR____TtC10healthappd23HealthPluginHostService_feedPopulationManagerOracle);
  v12 = *(v11 + 64);
  _Block_copy(a3);

  dispatch thunk of UnfairLock.lock()();
  v13 = sub_100024BF0();
  v14 = *(v11 + 64);
  dispatch thunk of UnfairLock.unlock()();

  if (v13)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v32 = _swiftEmptyArrayStorage;
      sub_10001F228(0, v15, 0);
      v16 = v32;
      v17 = (a1 + 40);
      while (1)
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        swift_bridgeObjectRetain_n();
        v20 = Feed.Kind.init(rawValue:)();
        if (v20 == 6)
        {
          break;
        }

        v21 = v20;

        v32 = v16;
        v23 = v16[2];
        v22 = v16[3];
        if (v23 >= v22 >> 1)
        {
          sub_10001F228((v22 > 1), v23 + 1, 1);
          v16 = v32;
        }

        v16[2] = v23 + 1;
        *(v16 + v23 + 32) = v21;
        v17 += 2;
        if (!--v15)
        {
          goto LABEL_8;
        }
      }

      v31[1] = 0;
      v31[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v28._object = 0x8000000100032FD0;
      v28._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v28);
      v29._countAndFlagsBits = v19;
      v29._object = v18;
      String.append(_:)(v29);
      v30._countAndFlagsBits = 0xD00000000000001ELL;
      v30._object = 0x8000000100032FF0;
      String.append(_:)(v30);

      _Block_release(a3);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      dispatch thunk of BaseFeedPopulationManager.deleteFeed(feedKinds:completion:)();
    }
  }

  else
  {
    static Logger.personalization.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to resolve FeedPopulationManager for personalization analytics", v27, 2u);
    }

    (*(v7 + 8))(v10, v6);
    a3[2](a3);
  }

  return result;
}

uint64_t sub_100022D40(uint64_t (*a1)(void, void))
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
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Handle journaled sharing entries by scheduling background generation", v10, 0xCu);
    sub_10000493C(v11);

    (*(v20 + 8))(v6, v19);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  sub_10001C3A8(1);
  return a1(1, 0);
}

uint64_t sub_100022F5C(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021260(0, &qword_100042280, type metadata accessor for SummaryTabForegroundFeedPopulationOperation.HighlightsGenerationConfiguration);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  sub_1000227E8(a1, v12);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v9;
    v21 = a2;
    v22 = v20;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v22 = 136446466;
    v23 = sub_10002C4F0(v21);
    v36 = v13;
    v25 = sub_100004364(v23, v24, &v38);
    v35 = v14;
    v26 = v37;
    v27 = v25;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    (*(v4 + 16))(v7, &v12[*(v33 + 36)], v26);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    sub_1000220AC(v12);
    v31 = sub_100004364(v28, v30, &v38);

    *(v22 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s]: Foreground spinner picking ending because %{public}s seconds have passed without a Highlights generator", v22, 0x16u);
    swift_arrayDestroy();

    return (*(v35 + 8))(v17, v36);
  }

  else
  {

    sub_1000220AC(v12);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_1000232A4(uint64_t a1)
{
  sub_100007100(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023350()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100023454(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TransactionRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + v4);
  v8 = *(v1 + v5);
  v9 = *v7;
  v10 = v7[1];

  return a1(v6, v1 + v3, v9, v10, v8);
}

uint64_t sub_100023508()
{
  v1 = type metadata accessor for TransactionRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000235E8(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_100014CA8(a1, *(v1 + 16), v1 + v4, *v5);
}

uint64_t sub_100023680()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10002371C()
{
  result = qword_100042388;
  if (!qword_100042388)
  {
    sub_100004210(255, &qword_100041D38, NSObject_ptr);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100042388);
  }

  return result;
}

void sub_100023774(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100023804()
{
  v1 = *(v0 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_1000238C4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v73 = *v3;
  v7 = type metadata accessor for Logger();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v68[-v12];
  v14 = v3[8];
  dispatch thunk of UnfairLock.lock()();
  v15 = sub_100024BF0();
  dispatch thunk of UnfairLock.unlock()();
  if (!v15)
  {
LABEL_7:
    static Logger.general.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77 = v71;
      *v27 = 136315650;
      v76 = v73;
      swift_getMetatypeMetadata();
      v28 = String.init<A>(describing:)();
      v30 = sub_100004364(v28, v29, &v77);
      v72 = a3;
      v31 = v30;

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v76 = v4[2];
      sub_100025C28(0, &qword_100042540, &type metadata accessor for ProfileDashboardsFeedPopulationListener, &type metadata accessor for Optional);
      v32 = a2;

      v33 = String.init<A>(describing:)();
      v35 = sub_100004364(v33, v34, &v77);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2080;
      dispatch thunk of UnfairLock.lock()();
      v36 = sub_100024BF0();
      dispatch thunk of UnfairLock.unlock()();
      v76 = v36;
      a2 = v32;
      sub_100025C28(0, &qword_100042548, &type metadata accessor for SummaryTabFeedPopulationManager, &type metadata accessor for Optional);
      v37 = String.init<A>(describing:)();
      v39 = sub_100004364(v37, v38, &v77);

      *(v27 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s]: Cannot pick because dependencies unavailable: profileDashboardsFeedPopulationListener=%s, summaryTabFeedPopulationManager=%s", v27, 0x20u);
      swift_arrayDestroy();
    }

    v40 = (*(v74 + 8))(v11, v75);
    return a2(v40);
  }

  v16 = v3[2];
  if (!v16)
  {
LABEL_6:

    goto LABEL_7;
  }

  v17 = v3[2];

  v18 = dispatch thunk of SummaryTabFeedPopulationManager.managedFeedKinds.getter();
  v19 = sub_100029FC8(v18);

  v21 = sub_100029FC8(v20);

  v22 = sub_100029120(v21, v19);

  v23 = *(v22 + 16);
  if (v23)
  {
    v11 = sub_100025B1C(*(v22 + 16), 0);
    v24 = sub_100029A70(&v76, v11 + 32, v23, v22);
    sub_100007AF8();
    if (v24 != v23)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v42 = dispatch thunk of ProfileDashboardsFeedPopulationListener.managedFeedKinds.getter();
  v43 = sub_100029FC8(v42);

  v45 = sub_100029FC8(v44);

  v46 = sub_100029120(v45, v43);

  v47 = *(v46 + 16);
  if (!v47)
  {
    goto LABEL_14;
  }

  v48 = sub_100025B1C(*(v46 + 16), 0);
  v49 = sub_100029A70(&v76, v48 + 32, v47, v46);
  sub_100007AF8();
  if (v49 != v47)
  {
    __break(1u);
LABEL_14:

    v48 = _swiftEmptyArrayStorage;
  }

  v51 = sub_100029FC8(v50);

  v76 = v11;

  sub_1000286F4(v52);
  v53 = sub_1000287E0(v76, v51);

  if (v53[2])
  {
    static Logger.personalization.getter();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v69 = v55;
      v57 = v56;
      v70 = swift_slowAlloc();
      v77 = v70;
      *v57 = 136315394;
      v76 = v73;
      swift_getMetatypeMetadata();
      v58 = String.init<A>(describing:)();
      v72 = a3;
      v60 = sub_100004364(v58, v59, &v77);
      v71 = a2;
      v61 = v60;

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      sub_10002A050();
      v62 = Set.description.getter();
      v64 = v63;

      v65 = v62;
      a3 = v72;
      v66 = sub_100004364(v65, v64, &v77);
      a2 = v71;

      *(v57 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v54, v69, "[%s]: We've been asked to populate a feed that we don't know how to: %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v74 + 8))(v13, v75);
  }

  else
  {
  }

  v67 = swift_allocObject();
  v67[2] = v11;
  v67[3] = v16;
  v67[4] = v48;
  v67[5] = v15;
  v67[6] = a2;
  v67[7] = a3;
  v67[8] = v73;

  dispatch thunk of BaseFeedPopulationManager.populateFeed(feedKinds:completion:)();
}

uint64_t sub_10002401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a7;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = a2;
    v37[0] = v20;
    *v19 = 136315394;
    v37[1] = v36;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    v33 = a3;
    v23 = sub_100004364(v21, v22, v37);
    v32 = a4;
    v24 = v23;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_100004364(v25, v26, v37);
    a3 = v33;

    *(v19 + 14) = v27;
    a4 = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: populateFeedsIfAvailable() finished summary tab feedKinds: %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v15, v31);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a4;
  v29 = v36;
  v28[4] = v35;
  v28[5] = a6;
  v28[6] = v29;

  dispatch thunk of ProfileDashboardsFeedPopulationListener.populateAllFeeds(feedKinds:completion:)();
}

uint64_t sub_1000242DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v7;
    v15 = v14;
    v25 = swift_slowAlloc();
    v27[0] = v25;
    v27[1] = a5;
    *v15 = 136315394;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = a3;
    v19 = sub_100004364(v16, v17, v27);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = Array.description.getter();
    v22 = sub_100004364(v20, v21, v27);
    a3 = v18;

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: populateFeedsIfAvailable() finished profile dashboard feedKinds: %s", v15, 0x16u);
    swift_arrayDestroy();

    v23 = (*(v8 + 8))(v11, v26);
  }

  else
  {

    v23 = (*(v8 + 8))(v11, v7);
  }

  return a3(v23);
}

uint64_t sub_10002451C()
{
  type metadata accessor for FeedPopulationManagerOracle();
  DebuggingResponder.deregisterForDebuggingRequests()();
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  swift_weakDestroy();
  v3 = *(v0 + 64);

  return v0;
}

uint64_t sub_100024574()
{
  sub_10002451C();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000245CC(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  sub_100007A94(a1, v27);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a2;
    v14 = v13;
    v26 = swift_slowAlloc();
    *v14 = 136315394;
    v25[0] = v5;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(describing:)();
    v17 = sub_100004364(v15, v16, &v26);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_100007A94(v27, v25);
    sub_100004308(0, &qword_100041C60);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    sub_10000493C(v27);
    v21 = sub_100004364(v18, v20, &v26);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s]: createSummaryTabFeedPopulationManager() readyHealthExperienceStore: %s", v14, 0x16u);
    swift_arrayDestroy();

    a2 = v24;
  }

  else
  {

    sub_10000493C(v27);
  }

  (*(v7 + 8))(v10, v6);
  type metadata accessor for SummaryTabFeedPopulationManager();
  sub_100007A94(a1, v27);
  v22 = a2;
  return SummaryTabFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:)();
}

uint64_t sub_100024870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100025B94();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  sub_100007A94(a1, v36);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33[2] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33[1] = a3;
    v35 = v19;
    *v18 = 136315394;
    v34[0] = v7;
    swift_getMetatypeMetadata();
    v20 = String.init<A>(describing:)();
    v22 = sub_100004364(v20, v21, &v35);
    v33[0] = v10;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    sub_100007A94(v36, v34);
    sub_100004308(0, &qword_100041C60);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_10000493C(v36);
    v28 = sub_100004364(v25, v27, &v35);

    *(v18 + 14) = v28;
    a1 = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s]: createProfileDashboardFeedPopulationListener() readyHealthExperienceStore: %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v14, v33[0]);
  }

  else
  {

    sub_10000493C(v36);
    (*(v11 + 8))(v14, v10);
  }

  sub_100007A94(a1, v36);
  sub_10000E524();
  sub_10002A110(&qword_100042278, sub_10000E524);
  static FeedPopulationListenerSchedulerConfiguration.realtime(queue:)();
  v29 = type metadata accessor for ProfileDashboardsFeedPopulationListener();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  return ProfileDashboardsFeedPopulationListener.init<A>(sourceProfilePublisher:healthExperienceStore:submissionScheduler:)();
}

uint64_t sub_100024BF0()
{
  v1 = v0;
  v2 = *(v0 + 64);
  dispatch thunk of UnfairLock.assertOwner()();
  result = swift_weakLoadStrong();
  if (!result)
  {
    v4 = *(v1 + 24);
    dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
    if (v7)
    {
      sub_1000030A0(&v6, v8);
      v5 = sub_1000245CC(v8, *(v1 + 32));
      sub_10000493C(v8);
      swift_weakAssign();
      return v5;
    }

    else
    {
      sub_10000A920(&v6);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100024C88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v32 - v9;
  v11 = Notification.oracle.getter();
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();

  if (v35)
  {
    sub_1000030A0(&v34, v36);
    static Logger.daemon.getter();
    sub_100007A94(v36, &v34);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v14 = 136315394;
      v32[0] = v2;
      swift_getMetatypeMetadata();
      v15 = String.init<A>(describing:)();
      v17 = sub_100004364(v15, v16, &v33);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      sub_100007A94(&v34, v32);
      sub_100004308(0, &qword_100041C60);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000493C(&v34);
      v21 = sub_100004364(v18, v20, &v33);

      *(v14 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%s]: storeDidUpdate(from:) healthExperienceStore: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000493C(&v34);
    }

    (*(v4 + 8))(v10, v3);
    v30 = sub_100024870(v36, v1[6], v1[5]);
    sub_10000493C(v36);
    v31 = v1[2];
    v1[2] = v30;
  }

  else
  {
    sub_10000A920(&v34);
    static Logger.daemon.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v34 = v25;
      *v24 = 136315138;
      v36[0] = v2;
      swift_getMetatypeMetadata();
      v26 = String.init<A>(describing:)();
      v28 = sub_100004364(v26, v27, &v34);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s]: storeDidUpdate(from:) no store", v24, 0xCu);
      sub_10000493C(v25);
    }

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_100025160()
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

uint64_t sub_10002541C()
{
  v1 = v0;
  _StringGuts.grow(_:)(84);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = *v0;
  sub_100025634();
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v6._object = 0x80000001000325F0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v6);
  v7 = [v0[3] description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD00000000000002BLL;
  v12._object = 0x80000001000333E0;
  String.append(_:)(v12);
  v16 = v1[2];
  sub_100025C28(0, &qword_100042540, &type metadata accessor for ProfileDashboardsFeedPopulationListener, &type metadata accessor for Optional);

  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

unint64_t sub_100025634()
{
  result = qword_100042538;
  if (!qword_100042538)
  {
    type metadata accessor for FeedPopulationManagerOracle();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100042538);
  }

  return result;
}

void *sub_100025678(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000E410(0, a5, a6, a7, &type metadata accessor for _ContiguousArrayStorage);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004308(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1000257E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002A360(0, &qword_100042230);
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

char *sub_1000258D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002A360(0, &qword_100042588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000259FC(uint64_t a1, uint64_t a2)
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

  sub_100025C28(0, &qword_100042250, &type metadata accessor for GenerationPhase, &type metadata accessor for _ContiguousArrayStorage);
  v4 = *(type metadata accessor for GenerationPhase() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100025B1C(uint64_t a1, uint64_t a2)
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

  sub_10002A360(0, &qword_100042230);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_100025B94()
{
  if (!qword_100042270)
  {
    sub_10000E524();
    sub_10002A110(&qword_100042278, sub_10000E524);
    v0 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_100042270);
    }
  }
}

void sub_100025C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100025C8C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for GenerationPhase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10002A110(&qword_100042568, &type metadata accessor for GenerationPhase);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100026E18(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100025F6C(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Feed.Kind.rawValue.getter();
  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + v10);
      v13 = Feed.Kind.rawValue.getter();
      v15 = v14;
      if (v13 == Feed.Kind.rawValue.getter() && v15 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1000270BC(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000260F4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100027294(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100026244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100020FE8(*(v6 + 48) + 40 * v9, v17);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100020F94(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100020F94(a2);
    sub_100020FE8(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100020FE8(a2, v17);
    v16 = *v3;
    sub_100027414(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100026390(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for GenerationPhase();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10002A158();
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1000266E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002A0B4();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100026940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002A284(0, &qword_100042578);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100026BAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002A284(0, &qword_100042580);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100026E18(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for GenerationPhase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100026390(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10002758C();
      goto LABEL_12;
    }

    sub_100027BD4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_10002A110(&qword_100042568, &type metadata accessor for GenerationPhase);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000270BC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1000266E0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000277B4();
      goto LABEL_16;
    }

    sub_100027EE4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Feed.Kind.rawValue.getter();
  String.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2);
      v14 = Feed.Kind.rawValue.getter();
      v16 = v15;
      if (v14 == Feed.Kind.rawValue.getter() && v16 == v17)
      {
        goto LABEL_19;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100027294(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100026940(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000278E8();
      goto LABEL_16;
    }

    sub_100028114(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100027414(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100026BAC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100027A50();
      goto LABEL_12;
    }

    sub_100028358(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100020FE8(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_100020F94(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002758C()
{
  v1 = v0;
  v2 = type metadata accessor for GenerationPhase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A158();
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_1000277B4()
{
  v1 = v0;
  sub_10002A0B4();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000278E8()
{
  v1 = v0;
  sub_10002A284(0, &qword_100042578);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100027A50()
{
  v1 = v0;
  sub_10002A284(0, &qword_100042580);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100020FE8(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100027BD4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for GenerationPhase();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10002A158();
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100027EE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002A0B4();
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100028114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002A284(0, &qword_100042578);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100028358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002A284(0, &qword_100042580);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_100020FE8(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_1000285C8(void *result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  v13 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v17 = v7 + v5;
  }

  else
  {
    v17 = v7;
  }

  result = sub_100025678(result, v17, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004308(0, a3);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v14 = v6[2];
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    v6[2] = v16;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000286F4(uint64_t result)
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

  result = sub_1000257E0(result, v12, 1, v3);
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

void *sub_1000287E0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v60[0] = a1;
    v55 = *(a1 + 16);
    if (v55)
    {
      v3 = a2 + 7;
      v4 = a1 + 32;
      v56 = a1;

      v5 = 0;
      v57 = v4;
      v58 = v3;
      while (1)
      {
        v6 = *(v4 + v5++);
        v7 = v2[5];
        Hasher.init(_seed:)();
        Feed.Kind.rawValue.getter();
        String.hash(into:)();

        v8 = Hasher._finalize()();
        v9 = v2;
        v10 = -1 << *(v2 + 32);
        v11 = v8 & ~v10;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & v3[v11 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        v2 = v9;
        v4 = v57;
        v3 = v58;
        if (v5 == v55)
        {
          goto LABEL_20;
        }
      }

      v14 = ~v10;
      while (1)
      {
        v15 = *(v9[6] + v11);
        v16 = Feed.Kind.rawValue.getter();
        v18 = v17;
        if (v16 == Feed.Kind.rawValue.getter() && v18 == v19)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_16;
        }

        v11 = (v11 + 1) & v14;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & v58[v11 >> 6]) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_16:
      v60[1] = v5;
      v23 = v9;
      v24 = *(v9 + 32);
      v52 = ((1 << v24) + 63) >> 6;
      v25 = 8 * v52;
      v26 = v56;
      if ((v24 & 0x3Fu) > 0xD)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v53 = &v51;
        __chkstk_darwin(v22);
        v11 = &v51 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v11, v58, v27);
        v28 = *(v23 + 16);
        *(v11 + 8 * v12) &= ~v13;
        v54 = v11;
        v55 = v28 - 1;
        v29 = *(v26 + 16);
        if (v5 == v29)
        {
          break;
        }

        v12 = v58;
        v13 = v9;
        while (v5 < v29)
        {
          v31 = *(v57 + v5);
          v32 = *(v13 + 40);
          Hasher.init(_seed:)();
          Feed.Kind.rawValue.getter();
          String.hash(into:)();

          v11 = &v59;
          v33 = Hasher._finalize()();
          v34 = -1 << *(v13 + 32);
          v23 = v33 & ~v34;
          v35 = v23 >> 6;
          v36 = 1 << v23;
          if (((1 << v23) & *(v12 + 8 * (v23 >> 6))) != 0)
          {
            v37 = ~v34;
            while (1)
            {
              v38 = *(*(v13 + 48) + v23);
              v39 = Feed.Kind.rawValue.getter();
              v12 = v40;
              v42 = Feed.Kind.rawValue.getter();
              v43 = v39;
              v11 = v41;
              if (v43 == v42 && v12 == v41)
              {
                break;
              }

              v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v13)
              {
                goto LABEL_36;
              }

              v23 = (v23 + 1) & v37;
              v35 = v23 >> 6;
              v12 = v58;
              v36 = 1 << v23;
              v13 = v9;
              if (((1 << v23) & v58[v23 >> 6]) == 0)
              {
                v26 = v56;
                goto LABEL_24;
              }
            }

LABEL_36:
            v45 = v54[v35];
            v54[v35] = v45 & ~v36;
            v26 = v56;
            if ((v45 & v36) == 0)
            {
              v12 = v58;
              v13 = v9;
              goto LABEL_24;
            }

            v46 = v55 - 1;
            if (__OFSUB__(v55, 1))
            {
              goto LABEL_42;
            }

            v13 = v9;
            v12 = v58;
            --v55;
            if (!v46)
            {

              v2 = &_swiftEmptySetSingleton;
              goto LABEL_20;
            }
          }

LABEL_24:
          ++v5;
          v29 = *(v26 + 16);
          if (v5 == v29)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v47 = v25;

        v48 = v47;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v49 = swift_slowAlloc();
          memcpy(v49, v58, v48);
          v50 = sub_100028CD4(v49, v52, v23, v11, v60);

          return v50;
        }
      }

      v13 = v9;
LABEL_19:
      v2 = sub_100028F08(v54, v52, v55, v13);
LABEL_20:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100028CD4(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v30 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_2:

    return sub_100028F08(v28, a2, v30, a3);
  }

  else
  {
    v10 = a5;
    v31 = a3 + 56;
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= v9)
      {
        goto LABEL_23;
      }

      v11 = *(v7 + v8 + 32);
      v10[1] = v8 + 1;
      v12 = *(a3 + 40);
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(a3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v31 + 8 * (v14 >> 6))) != 0)
      {
        v17 = ~v13;
        while (1)
        {
          v18 = *(*(a3 + 48) + v14);
          v19 = Feed.Kind.rawValue.getter();
          v21 = v20;
          if (v19 == Feed.Kind.rawValue.getter() && v21 == v22)
          {
            break;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_18;
          }

          v14 = (v14 + 1) & v17;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v31 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

LABEL_18:
        v25 = v28[v15];
        v28[v15] = v25 & ~v16;
        if ((v25 & v16) == 0)
        {
LABEL_4:
          v10 = a5;
          goto LABEL_5;
        }

        v10 = a5;
        v26 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_24;
        }

        --v30;
        if (!v26)
        {
          return &_swiftEmptySetSingleton;
        }
      }

LABEL_5:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_100028F08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10002A0B4();
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = v9[5];
    Hasher.init(_seed:)();
    Feed.Kind.rawValue.getter();
    String.hash(into:)();

    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100029120(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_100029374(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1000292E4(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_1000292E4(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100029374(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_100029374(Swift::Int result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v53 = result;
  v60 = a4;
  if (a4[2] >= *(a3 + 16))
  {
    v29 = 0;
    v30 = a3 + 56;
    v31 = 1 << *(a3 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v56 = 0;
    v58 = v32 & *(a3 + 56);
    v51 = (v31 + 63) >> 6;
    v33 = a4 + 7;
LABEL_28:
    while (v58)
    {
      v34 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v35 = v34 | (v29 << 6);
      v4 = a3;
LABEL_35:
      v55 = v35;
      v38 = *(*(v4 + 48) + v35);
      v39 = a4[5];
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      a4 = v60;
      v40 = ~(-1 << *(v60 + 32));
      v41 = result & v40;
      if ((*(v33 + (((result & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v40)))
      {
        while (1)
        {
          v42 = *(a4[6] + v41);
          v43 = Feed.Kind.rawValue.getter();
          v45 = v44;
          if (v43 == Feed.Kind.rawValue.getter() && v45 == v46)
          {
            break;
          }

          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v48)
          {
            goto LABEL_44;
          }

          v41 = (v41 + 1) & v40;
          a4 = v60;
          if (((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v53 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
        a4 = v60;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_49;
        }

        ++v56;
      }
    }

    v36 = v29;
    v4 = a3;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v51)
      {
LABEL_46:

        return sub_100028F08(v53, a2, v56, v4);
      }

      v37 = *(v30 + 8 * v29);
      ++v36;
      if (v37)
      {
        v58 = (v37 - 1) & v37;
        v35 = __clz(__rbit64(v37)) | (v29 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
    v8 = a4[7];
    v6 = a4 + 7;
    v7 = v8;
    v9 = 1 << *(v6 - 24);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v54 = v10 & v7;
    v56 = 0;
    v49 = (v9 + 63) >> 6;
    v50 = v6;
    v57 = a3 + 56;
LABEL_6:
    while (v54)
    {
      v11 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v12 = v11 | (v5 << 6);
      v13 = v60;
LABEL_13:
      v16 = *(v13[6] + v12);
      v17 = *(v4 + 40);
      Hasher.init(_seed:)();
      Feed.Kind.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v18 = ~(-1 << *(v4 + 32));
      v19 = result & v18;
      v20 = (result & v18) >> 6;
      v21 = 1 << (result & v18);
      if ((v21 & *(v57 + 8 * v20)) != 0)
      {
        while (1)
        {
          v22 = *(*(v4 + 48) + v19);
          v23 = Feed.Kind.rawValue.getter();
          v25 = v24;
          if (v23 == Feed.Kind.rawValue.getter() && v25 == v26)
          {
            break;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            goto LABEL_22;
          }

          v19 = (v19 + 1) & v18;
          v20 = v19 >> 6;
          v4 = a3;
          v21 = 1 << v19;
          if (((1 << v19) & *(v57 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v53[v20] |= v21;
        v4 = a3;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_50;
        }

        ++v56;
      }
    }

    v14 = v5;
    v13 = v60;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v49)
      {
        goto LABEL_46;
      }

      v15 = v50[v5];
      ++v14;
      if (v15)
      {
        v54 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) | (v5 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1000297CC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for GenerationPhase();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100029A70(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_100029B6C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0;
  swift_weakInit();
  v16 = type metadata accessor for UnfairLock();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v4[8] = UnfairLock.init()();
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a4;
  v4[6] = a3;
  v19 = a1;
  v20 = a2;
  v21 = a4;

  dispatch thunk of HealthExperienceStoreOracle.register(observer:)();

  v22 = v4[3];
  dispatch thunk of HealthExperienceStoreOracle.readyHealthExperienceStore.getter();
  if (v34)
  {
    sub_1000030A0(&v33, v35);
    v23 = sub_100024870(v35, a3, v21);
    sub_10000493C(v35);
    v24 = v5[2];
    v5[2] = v23;
  }

  else
  {
    sub_10000A920(&v33);
  }

  static Logger.general.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v33 = v28;
    *v27 = 136315138;
    v35[0] = v10;
    swift_getMetatypeMetadata();
    v29 = String.init<A>(describing:)();
    v31 = sub_100004364(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s init()", v27, 0xCu);
    sub_10000493C(v28);
  }

  (*(v12 + 8))(v15, v11);
  type metadata accessor for FeedPopulationManagerOracle();
  DebuggingResponder.registerForDebuggingRequests()();
  return v5;
}

uint64_t sub_100029E2C(uint64_t a1)
{
  v2 = type metadata accessor for GenerationPhase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100025C8C(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100029FC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002A050();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100025F6C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10002A050()
{
  result = qword_100042550;
  if (!qword_100042550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042550);
  }

  return result;
}

void sub_10002A0B4()
{
  if (!qword_100042558)
  {
    sub_10002A050();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100042558);
    }
  }
}

uint64_t sub_10002A110(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002A158()
{
  if (!qword_100042570)
  {
    type metadata accessor for GenerationPhase();
    sub_10002A110(&qword_100042560, &type metadata accessor for GenerationPhase);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100042570);
    }
  }
}

uint64_t sub_10002A1EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000260F4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_10002A284(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _SetStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10002A2D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100020FE8(v4, v5);
      sub_100026244(v6, v5);
      sub_100020F94(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_10002A360(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _ContiguousArrayStorage();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for SummaryTabForegroundFeedPopulationOperation()
{
  result = qword_1000425B8;
  if (!qword_1000425B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446210;
    v26 = ObjectType;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_100004364(v12, v13, &v25);
    v24 = v3;
    v15 = ObjectType;
    v16 = v14;

    *(v10 + 4) = v16;
    ObjectType = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s]: Beginning to watch generation to pick a new feed", v10, 0xCu);
    sub_10000493C(v11);

    (*(v4 + 8))(v7, v24);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v26 = *(v1 + qword_1000425A0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10002B78C();
  sub_10002B858(&qword_100042610, sub_10002B78C);

  v17 = Publisher<>.sink(receiveValue:)();

  v26 = *(v1 + qword_1000425A8);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = ObjectType;
  sub_10002B7FC();
  sub_10002B858(&qword_100042620, sub_10002B7FC);

  v20 = Publisher.sink(receiveCompletion:receiveValue:)();

  v22 = *(v1 + qword_1000425B0);
  __chkstk_darwin(v21);
  *(&v24 - 2) = v17;
  *(&v24 - 1) = v20;
  os_unfair_lock_lock((v22 + 32));
  sub_10002B8A0((v22 + 16));
  os_unfair_lock_unlock((v22 + 32));
}

uint64_t sub_10002A834()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + qword_100042590);
    v2 = result;

    type metadata accessor for SummaryTabFeedPopulationManager();
    FeedPopulationManaging<>.handleUpdatedFeedItems(_:)();
  }

  return result;
}

uint64_t sub_10002A8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    static Logger.personalization.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136446210;
      v20[4] = a3;
      swift_getMetatypeMetadata();
      v15 = String.init<A>(describing:)();
      v19 = v4;
      v17 = sub_100004364(v15, v16, v20);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s]: Highlights generation publisher completed; sending request to repopulate feed", v13, 0xCu);
      sub_10000493C(v14);

      (*(v5 + 8))(v8, v19);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v18 = *&v10[qword_100042590];
    *(swift_allocObject() + 16) = a3;

    dispatch thunk of SummaryTabFeedPopulationManager.generateHighlightsFeedIfAppropriate(completion:)();
  }

  return result;
}

uint64_t sub_10002AB24(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    v19[1] = a2;
    *v11 = 136446466;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_100004364(v12, v13, v19);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    if (a1)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (a1)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_100004364(v15, v16, v19);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s]: Highlights repopulated: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10002AD38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  a1[1] = a2;
  v7 = *a1;

  *a1 = a3;
  return result;
}

void sub_10002ADA0(void *a1)
{
  v1 = a1;
  sub_10002A450();
}

uint64_t sub_10002ADE8@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v61 = type metadata accessor for ContentKind();
  v1 = *(v61 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v61);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v60 = &v43 - v5;
  v53 = type metadata accessor for GeneratorDomain();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v53);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B92C();
  v51 = v9;
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B9F8();
  v13 = GeneratorPipelineManager.GenerationState.outstandingGenerators.getter();
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v50 = (v6 + 8);
  v49 = enum case for ContentKind.highlight(_:);
  v48 = (v1 + 104);
  v56 = v1 + 16;
  v43 = v1;
  v58 = (v1 + 8);
  v54 = v13;

  v20 = 0;
  v45 = v18;
  v46 = v14;
  v47 = v12;
  while (v17)
  {
LABEL_11:
    v22 = __clz(__rbit64(v17)) | (v20 << 6);
    v23 = v54;
    v24 = *(v54 + 48);
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 16))(v12, v24 + *(*(v25 - 8) + 72) * v22, v25);
    v26 = *(v23 + 56);
    sub_10002B9A0();
    (*(*(v27 - 8) + 16))(&v12[*(v51 + 48)], v26 + *(*(v27 - 8) + 72) * v22, v27);
    swift_getKeyPath();
    v28 = v52;
    GeneratorPipelineManagerWrapper.subscript.getter();

    v29 = GeneratorDomain.contentKinds.getter();
    (*v50)(v28, v53);
    (*v48)(v60, v49, v61);
    v59 = v29;
    if (*(v29 + 16))
    {
      v30 = v59;
      v31 = *(v59 + 40);
      sub_10002B858(&qword_100042648, &type metadata accessor for ContentKind);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v30 + 32);
      v34 = v32 & ~v33;
      v55 = v30 + 56;
      if ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        v36 = *(v43 + 72);
        v37 = *(v43 + 16);
        while (1)
        {
          v38 = v57;
          v39 = v61;
          v37(v57, *(v59 + 48) + v36 * v34, v61);
          sub_10002B858(qword_100042650, &type metadata accessor for ContentKind);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v41 = *v58;
          (*v58)(v38, v39);
          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v41(v60, v61);
        sub_10002BA8C(v47);
        v42 = 1;
LABEL_19:

        *v44 = v42;
        return result;
      }
    }

LABEL_5:
    v17 &= v17 - 1;

    (*v58)(v60, v61);
    v12 = v47;
    result = sub_10002BA8C(v47);
    v18 = v45;
    v14 = v46;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      v42 = 0;
      goto LABEL_19;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  sub_100007A48(0, &qword_100042628);
  sub_10002B8C4();
  result = Sequence<>.contains(_:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10002B3C4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.personalization.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SummaryTabForegroundFeedPopulationOperation removing registration for feedItemSubmissionOccurred", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + qword_1000425B0);
  os_unfair_lock_lock((v10 + 32));
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  os_unfair_lock_unlock((v10 + 32));
  if (v11)
  {

    AnyCancellable.cancel()();
  }

  if (v12)
  {

    AnyCancellable.cancel()();
  }
}

uint64_t sub_10002B59C()
{
  v1 = *(v0 + qword_100042590);

  v2 = *(v0 + qword_100042598);

  v3 = *(v0 + qword_1000425A0);

  v4 = *(v0 + qword_1000425A8);

  v5 = *(v0 + qword_1000425B0);
}

id sub_10002B60C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryTabForegroundFeedPopulationOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002B644(uint64_t a1)
{
  v2 = *(a1 + qword_100042590);

  v3 = *(a1 + qword_100042598);

  v4 = *(a1 + qword_1000425A0);

  v5 = *(a1 + qword_1000425A8);

  v6 = *(a1 + qword_1000425B0);
}

uint64_t sub_10002B6C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10002B724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_10002B78C()
{
  if (!qword_100042608)
  {
    type metadata accessor for FeedItemChangeDomain();
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_100042608);
    }
  }
}

void sub_10002B7FC()
{
  if (!qword_100042618)
  {
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_100042618);
    }
  }
}

uint64_t sub_10002B858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002B8C4()
{
  result = qword_100042630;
  if (!qword_100042630)
  {
    sub_100007A48(255, &qword_100042628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042630);
  }

  return result;
}

void sub_10002B92C()
{
  if (!qword_100042638)
  {
    type metadata accessor for UUID();
    sub_10002B9A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100042638);
    }
  }
}

void sub_10002B9A0()
{
  if (!qword_100042640)
  {
    sub_100007660();
    v0 = type metadata accessor for GeneratorPipelineManagerWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_100042640);
    }
  }
}

void sub_10002B9F8()
{
  if (!qword_100042290)
  {
    sub_100007538();
    sub_10002B858(&qword_100042298, sub_100007538);
    v0 = type metadata accessor for GeneratorPipelineManager.GenerationState();
    if (!v1)
    {
      atomic_store(v0, &qword_100042290);
    }
  }
}

uint64_t sub_10002BA8C(uint64_t a1)
{
  sub_10002B92C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002BAF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10002BC2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v36 = v6;
  if (v8 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v6)
  {
    v12 = v6;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v5 + 64) + v13;
  v19 = v14 + v13;
  v20 = v14 + v15;
  v21 = a1;
  if (a2 > v12)
  {
    v22 = v17 + ((v20 + ((v19 + (v18 & ~v13)) & ~v13)) & ~v15);
    v23 = 8 * v22;
    if (v22 <= 3)
    {
      v25 = ((a2 - v12 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v25))
      {
        v24 = *(a1 + v22);
        if (!v24)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 > 0xFF)
      {
        v24 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 < 2)
      {
LABEL_33:
        if (v12)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_33;
    }

LABEL_20:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v12 + (v28 | v26) + 1;
  }

LABEL_34:
  if (v36 == v12)
  {
    v29 = *(v5 + 48);
    v30 = v36;
    v31 = v4;
  }

  else
  {
    v33 = ~v13;
    v21 = ((a1 + v18) & v33);
    if (v8 != v12)
    {
      v34 = (*(v10 + 48))((v20 + ((v21 + v19) & v33)) & ~v15);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    v29 = *(v7 + 48);
    v30 = v8;
    v31 = AssociatedTypeWitness;
  }

  return v29(v21, v30, v31);
}

void sub_10002BFC4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(v4 - 8);
  v46 = v5;
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v5 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = v14 + v17;
  v19 = (v14 + v17) & ~v17;
  v20 = *(v7 + 64);
  v21 = v20 + v17;
  v22 = (v20 + v17 + v19) & ~v17;
  v23 = *(v11 + 80);
  v24 = v20 + v23;
  v25 = (v20 + v23 + v22) & ~v23;
  v26 = *(v11 + 64);
  if (v13)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  v28 = v25 + v27;
  if (a3 > v16)
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v16 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
      if (HIWORD(v29))
      {
        v10 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v10 = v30;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v16 < a2)
  {
    v31 = ~v16 + a2;
    if (v28 < 4)
    {
      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v34 = v31 & ~(-1 << (8 * v28));
        bzero(a1, v25 + v27);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v34;
            if (v10 > 1)
            {
LABEL_65:
              if (v10 == 2)
              {
                *&a1[v28] = v32;
              }

              else
              {
                *&a1[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v10 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v10 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v25 + v27);
      *a1 = v31;
      v32 = 1;
      if (v10 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v10)
    {
      a1[v28] = v32;
    }

    return;
  }

  v33 = a1;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v28] = 0;
  }

  else if (v10)
  {
    a1[v28] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v6 == v16)
  {
    v35 = *(v46 + 56);
    v36 = a2;
    v37 = v6;
    v38 = v4;

LABEL_42:
    v35(v33, v36, v37, v38);
    return;
  }

  v33 = (&a1[v18] & ~v17);
  if (v8 == v16)
  {
    v35 = *(v7 + 56);
    v36 = a2;
    v37 = v8;
    v38 = AssociatedTypeWitness;

    goto LABEL_42;
  }

  v39 = v24 + (&v33[v21] & ~v17);
  v40 = (v39 & ~v23);
  if (v15 >= a2)
  {
    v44 = *(v12 + 56);

    v44(v39 & ~v23, a2 + 1);
  }

  else
  {
    if (v27 <= 3)
    {
      v41 = ~(-1 << (8 * v27));
    }

    else
    {
      v41 = -1;
    }

    if (v27)
    {
      v42 = v41 & (~v15 + a2);
      if (v27 <= 3)
      {
        v43 = v27;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v27);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

uint64_t sub_10002C4F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "foregroundCompletion";
  v4 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v2 == 1)
  {
    v6 = "foregroundCompletion";
  }

  else
  {
    v6 = "initialUnlockFeedItemsOnly";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_1000323F0;
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = "initialUnlockFeedItemsOnly";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = &unk_1000323F0;
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10002C5CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002C668()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10002C6F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002C788@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002EA98(*a1);
  *a2 = result;
  return result;
}

void sub_10002C7B8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "foregroundCompletion";
  v4 = 0xD00000000000001ALL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = "initialUnlockFeedItemsOnly";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = &unk_1000323F0;
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_10002C824(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v78 = type metadata accessor for LogCategory();
  v74 = *(v78 - 8);
  v12 = *(v74 + 64);
  __chkstk_darwin(v78);
  v77 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Logger();
  v14 = *(v76 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v76);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities;
  *&v6[v18] = sub_10002E9B0(_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate____lazy_storage___availablePlugins] = 0;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle] = a1;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle] = a2;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager] = a5;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle] = a4;
  *&v6[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle] = a3;
  v19 = type metadata accessor for DaemonListenerDelegate();
  v83.receiver = v6;
  v83.super_class = v19;
  v65 = a1;
  v66 = a2;

  v67 = a5;

  v68 = a4;

  v69 = a3;

  v79 = objc_msgSendSuper2(&v83, "init");
  static Logger.daemon.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v80 = v23;
    *v22 = 136315138;
    aBlock[0] = ObjectType;
    swift_getMetatypeMetadata();
    v24 = String.init<A>(describing:)();
    v26 = sub_100004364(v24, v25, &v80);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%s] init()", v22, 0xCu);
    sub_10000493C(v23);
  }

  (*(v14 + 8))(v17, v76);
  v27 = v79;
  DebuggingResponder.registerForDebuggingRequests()();
  v64 = OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities;
  v28 = *&v27[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities];
  LODWORD(v76) = enum case for LogCategory.generation(_:);
  v29 = v74;
  v74 += 8;
  ObjectType = (v29 + 104);
  v73 = v82;

  v30 = 0;
  v71 = "@?<v@?q@NSError>24";
  v72 = "background.after_unlock_feed";
  v70 = ", feedPopulationManagerOracle: ";
  while (1)
  {
    v33 = *(&off_10003D978 + v30++ + 32);
    if (v33 == 1)
    {
      v34 = 0xD00000000000003CLL;
    }

    else
    {
      v34 = 0xD00000000000003BLL;
    }

    v35 = v71;
    if (v33 != 1)
    {
      v35 = v70;
    }

    v36 = v33 ? v34 : 0xD00000000000003BLL;
    v37 = v72;
    if (v33)
    {
      v37 = v35;
    }

    v38 = v37 | 0x8000000000000000;
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v33;
    *(v40 + 24) = v36;
    *(v40 + 32) = v38;
    *(v40 + 40) = v39;

    v41 = sub_1000030B8();
    v42 = v77;
    v43 = v78;
    (*ObjectType)(v77, v76, v78);
    v44 = LogCategory.logHandle.getter();
    (*v74)(v42, v43);
    v45 = objc_allocWithZone(HDXPCGatedActivity);
    v46 = String._bridgeToObjectiveC()();

    v82[2] = sub_10002F3B8;
    v82[3] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v82[0] = sub_10002E434;
    v82[1] = &unk_10003E9E0;
    v47 = _Block_copy(aBlock);
    v48 = [v45 initWithName:v46 criteria:v41 loggingCategory:v44 handler:v47];
    swift_unknownObjectRelease();

    _Block_release(v47);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v28;
    v50 = sub_10001F6BC(v33);
    v52 = v28[2];
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      break;
    }

    v56 = v51;
    if (v28[3] >= v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v60 = v50;
      sub_10002E860();
      v50 = v60;
      v28 = aBlock[0];
      if (v56)
      {
        goto LABEL_4;
      }

LABEL_21:
      v28[(v50 >> 6) + 8] |= 1 << v50;
      *(v28[6] + v50) = v33;
      *(v28[7] + 8 * v50) = v48;
      v58 = v28[2];
      v54 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v54)
      {
        goto LABEL_28;
      }

      v28[2] = v59;
      if (v30 == 3)
      {
LABEL_26:

        v61 = v79;
        v62 = *&v79[v64];
        *&v79[v64] = v28;

        return v61;
      }
    }

    else
    {
      sub_10002E57C(v55, isUniquelyReferenced_nonNull_native);
      v50 = sub_10001F6BC(v33);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_29;
      }

LABEL_20:
      v28 = aBlock[0];
      if ((v56 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_4:
      v31 = v28[7];
      v32 = *(v31 + 8 * v50);
      *(v31 + 8 * v50) = v48;

      if (v30 == 3)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002CF6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v86 = a8;
  v87 = a3;
  v12 = type metadata accessor for DateInterval();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  __chkstk_darwin(v12);
  v81 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v80 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v85 = &v78 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v78 - v23;
  __chkstk_darwin(v22);
  v26 = &v78 - v25;
  static Logger.daemon.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v90 = v15;
  v91 = a6;
  v88 = a4;
  v89 = a5;
  if (v29)
  {
    v84 = v16;
    v30 = 0xD000000000000014;
    v31 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v31 = 136446466;
    if (a5)
    {
      if (a5 == 1)
      {
        v30 = 0xD00000000000001ALL;
      }

      else
      {
        v30 = 0xD000000000000016;
      }

      if (a5 == 1)
      {
        a5 = "foregroundCompletion";
      }

      else
      {
        a5 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      a5 = &unk_1000323F0;
    }

    v34 = sub_100004364(v30, a5 | 0x8000000000000000, v93);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_100004364(v91, a7, v93);
    _os_log_impl(&_mh_execute_header, v27, v28, "Background generation of type %{public}s with identifier %{public}s received callback from gated activity handler", v31, 0x16u);
    swift_arrayDestroy();

    v33 = v84;
    v32 = *(v84 + 8);
    v15 = v90;
    v32(v26, v90);
    LOBYTE(a5) = v89;
  }

  else
  {

    v32 = *(v16 + 8);
    v32(v26, v15);
    v33 = v16;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    static Logger.daemon.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v79 = v32;
    if (v39)
    {
      a5 = v15;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v92 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_100004364(v91, a7, &v92);
      _os_log_impl(&_mh_execute_header, v37, v38, "Executing activity identifier %{public}s", v40, 0xCu);
      sub_10000493C(v41);

      v42 = v24;
      v43 = a5;
      LOBYTE(a5) = v89;
    }

    else
    {

      v42 = v24;
      v43 = v15;
    }

    v32(v42, v43);
    v50 = *&v36[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle];
    v51 = *&v36[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle];
    v52 = *&v36[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle];
    v53 = *&v36[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager];
    v54 = *&v36[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle];

    v55 = sub_10002E9B0(_swiftEmptyArrayStorage);
    v56 = objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
    v57 = sub_10000F204(v54, v50, v51, v52, v53, v55);
    v58 = v85;
    static Logger.daemon.getter();

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = 0xD000000000000014;
      v62 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v62 = 136446466;
      v84 = v33;
      if (a5)
      {
        if (a5 == 1)
        {
          v61 = 0xD00000000000001ALL;
        }

        else
        {
          v61 = 0xD000000000000016;
        }

        if (a5 == 1)
        {
          a5 = "foregroundCompletion";
        }

        else
        {
          a5 = "initialUnlockFeedItemsOnly";
        }
      }

      else
      {
        a5 = &unk_1000323F0;
      }

      v67 = sub_100004364(v61, a5 | 0x8000000000000000, &v92);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2082;
      v63 = v91;
      *(v62 + 14) = sub_100004364(v91, a7, &v92);
      _os_log_impl(&_mh_execute_header, v59, v60, "Running background generation of type %{public}s with identifier %{public}s", v62, 0x16u);
      swift_arrayDestroy();

      v79(v85, v90);
      v64 = v88;
      LOBYTE(a5) = v89;
    }

    else
    {

      v79(v58, v90);
      v63 = v91;
      v64 = v88;
    }

    v68 = v81;
    static DateInterval.allTimeInterval.getter();
    v69 = qword_1000323F8[a5];
    v70 = swift_allocObject();
    *(v70 + 16) = v57;
    *(v70 + 24) = a5;
    *(v70 + 32) = v63;
    *(v70 + 40) = a7;
    *(v70 + 48) = v87;
    *(v70 + 56) = v64;

    v71 = v57;

    v72 = sub_1000108AC(v68, _swiftEmptyArrayStorage, a5 != 1, v69, sub_10002F4A8, v70);

    return (*(v82 + 8))(v68, v83);
  }

  else
  {
    v44 = v80;
    static Logger.daemon.getter();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = 0xD000000000000014;
      v48 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v48 = 136446466;
      if (a5)
      {
        if (a5 == 1)
        {
          v47 = 0xD00000000000001ALL;
        }

        else
        {
          v47 = 0xD000000000000016;
        }

        if (a5 == 1)
        {
          v49 = "foregroundCompletion";
        }

        else
        {
          v49 = "initialUnlockFeedItemsOnly";
        }
      }

      else
      {
        v49 = &unk_1000323F0;
      }

      v74 = v91;
      v75 = sub_100004364(v47, v49 | 0x8000000000000000, &v92);

      *(v48 + 4) = v75;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_100004364(v74, a7, &v92);
      _os_log_impl(&_mh_execute_header, v45, v46, "Background generation of type %{public}s with identifier %{public}s error: DaemonListenerDelegate was deallocated", v48, 0x16u);
      swift_arrayDestroy();

      v65 = v80;
      v66 = v90;
    }

    else
    {

      v65 = v44;
      v66 = v15;
    }

    v32(v65, v66);
    sub_10002F454();
    v76 = swift_allocError();
    *v77 = 0;
    v87(1, v76);
  }
}

uint64_t sub_10002D8E4(int a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v35 = a4;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v31 = v12;
    v32 = a1;
    v33 = a7;
    v34 = a6;
    v19 = 0xD000000000000014;
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v20 = 136446722;
    if (a3)
    {
      if (a3 == 1)
      {
        v19 = 0xD00000000000001ALL;
      }

      else
      {
        v19 = 0xD000000000000016;
      }

      if (a3 == 1)
      {
        v21 = "foregroundCompletion";
      }

      else
      {
        v21 = "initialUnlockFeedItemsOnly";
      }
    }

    else
    {
      v21 = &unk_1000323F0;
    }

    v25 = sub_100004364(v19, v21 | 0x8000000000000000, &v36);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_100004364(v35, a5, &v36);
    *(v20 + 22) = 2080;
    v26 = v32;
    if (v32)
    {
      v27 = 0x2E73736563637573;
    }

    else
    {
      v27 = 0x2E6572756C696166;
    }

    v28 = sub_100004364(v27, 0xE800000000000000, &v36);

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Background generation of type %{public}s with identifier %{public}s completion received: %s", v20, 0x20u);
    swift_arrayDestroy();
    v29 = v26;

    (*(v13 + 8))(v16, v31);
    a6 = v34;
    if (v29)
    {
      goto LABEL_16;
    }
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    if (a1)
    {
LABEL_16:
      v22 = 0;
      v24 = 0;
      goto LABEL_17;
    }
  }

  sub_10002F454();
  v22 = swift_allocError();
  *v23 = 2;
  v24 = 1;
LABEL_17:
  a6(v24, v22);
}

uint64_t sub_10002DC60()
{
  _StringGuts.grow(_:)(69);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getObjectType();
  sub_10002EAE4();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v16 = v0;
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x80000001000335C0;
  v5._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v5);
  v6 = [*(v0 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle) description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x80000001000335E0;
  String.append(_:)(v11);
  v12 = *(v16 + OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle);
  v13._countAndFlagsBits = sub_10002541C();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

id sub_10002DE30()
{
  v1 = type metadata accessor for DaemonListenerDelegate();
  DebuggingResponder.deregisterForDebuggingRequests()();
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002DFC0()
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

void sub_10002E2C0()
{
  if (!qword_1000427A8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000427A8);
    }
  }
}

unint64_t sub_10002E314()
{
  result = qword_1000427B0;
  if (!qword_1000427B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427B0);
  }

  return result;
}

Swift::Int sub_10002E37C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002E3F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10002E434(uint64_t a1, void *a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v10 = a2;
  swift_unknownObjectRetain();
  v7(v10, a3, sub_10002F44C, v9);

  swift_unknownObjectRelease();
}

void sub_10002E50C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10002E57C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10002F3E0();
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

id sub_10002E860()
{
  v1 = v0;
  sub_10002F3E0();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10002E9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002F3E0();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_10001F6BC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10002EA98(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10003D9A0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002EAE4()
{
  result = qword_1000427B8;
  if (!qword_1000427B8)
  {
    type metadata accessor for DaemonListenerDelegate();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1000427B8);
  }

  return result;
}

uint64_t sub_10002EB28(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v80 = type metadata accessor for Logger();
  v5 = *(v80 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v80);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v79 = &v75 - v11;
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = type metadata accessor for HealthPluginHostEntitlement();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for HealthPluginHostEntitlement.allowed(_:), v14);
  sub_10002F324(&unk_1000427C0, &type metadata accessor for HealthPluginHostEntitlement);
  v19 = NSXPCConnection.value<A>(for:)();
  (*(v15 + 8))(v18, v14);
  if (v19 && (v82 = v19, swift_dynamicCast()) && (v81 & 1) != 0)
  {
    static Logger.daemon.getter();
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v78 = v20;
    if (v23)
    {
      v24 = swift_slowAlloc();
      LODWORD(v76) = v22;
      v25 = v24;
      v77 = swift_slowAlloc();
      v81 = v77;
      v82 = ObjectType;
      *v25 = 136315394;
      swift_getMetatypeMetadata();
      v26 = String.init<A>(describing:)();
      v28 = sub_100004364(v26, v27, &v81);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = v20;
      v30 = [v29 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_100004364(v31, v33, &v81);

      *(v25 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v21, v76, "[%s] listener:shouldAcceptNewConnection: Allowing connection: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v77 = *(v5 + 8);
    v77(v13, v80);
    v35 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_healthExperienceStoreOracle];
    v36 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_feedPopulationManagerOracle];
    v37 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_longRunningProcessOracle];
    v38 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_countryOracle];
    v39 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_transactionBuilderManager];
    v76 = OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities;
    v40 = *&v2[OBJC_IVAR____TtC10healthappd22DaemonListenerDelegate_backgroundGenerationActivities];
    objc_allocWithZone(type metadata accessor for HealthPluginHostService(0));
    v41 = v35;

    v42 = sub_10000F204(v41, v36, v37, v38, v39, v40);
    v43 = v79;
    static Logger.daemon.getter();
    v44 = v2;
    v45 = v42;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v82 = v75;
      *v48 = 136446466;
      v49 = *&v2[v76];
      sub_10002F36C();
      sub_1000208B4();

      v50 = Dictionary.Keys.description.getter();
      v52 = v51;

      v53 = sub_100004364(v50, v52, &v82);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = v45;
      v55 = [v54 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_100004364(v56, v58, &v82);

      *(v48 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v46, v47, "Background generation activities %{public}s for connectionResponder %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    v77(v43, v80);
    sub_10000F8C8(v78);

    return 1;
  }

  else
  {
    static Logger.daemon.getter();
    v61 = a1;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = ObjectType;
      *v64 = 136315650;
      swift_getMetatypeMetadata();
      v65 = String.init<A>(describing:)();
      v67 = sub_100004364(v65, v66, &v81);

      *(v64 + 4) = v67;
      *(v64 + 12) = 1024;
      v68 = [v61 processIdentifier];

      *(v64 + 14) = v68;
      *(v64 + 18) = 2080;
      v69 = v61;
      v70 = [v69 description];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = sub_100004364(v71, v73, &v81);

      *(v64 + 20) = v74;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%s] listener:shouldAcceptNewConnection: NO ENTITLEMENT! NOT ALLOWING PROCESS %d: %s", v64, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v5 + 8))(v9, v80);
    return 0;
  }
}

uint64_t sub_10002F324(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002F36C()
{
  result = qword_1000421F0;
  if (!qword_1000421F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000421F0);
  }

  return result;
}

uint64_t sub_10002F3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002F3E0()
{
  if (!qword_1000427D8)
  {
    sub_10002F36C();
    sub_1000208B4();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000427D8);
    }
  }
}

unint64_t sub_10002F454()
{
  result = qword_1000427E0;
  if (!qword_1000427E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427E0);
  }

  return result;
}

uint64_t sub_10002F4BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002F54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002F610()
{
  result = qword_1000427E8;
  if (!qword_1000427E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000427E8);
  }

  return result;
}