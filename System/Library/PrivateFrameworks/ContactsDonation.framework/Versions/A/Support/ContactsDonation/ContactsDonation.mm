int main(int argc, const char **argv, const char **envp)
{
  qword_100046240 = 0;
  qword_100046248 = 0;
  v3 = objc_autoreleasePoolPush();
  sub_100001C80();
  objc_autoreleasePoolPop(v3);
  v4 = [objc_opt_self() currentRunLoop];
  [v4 run];

  v5 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  [v5 agentWillStop];
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_100001C80()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v81 = *(v0 - 8);
  v1 = *(v81 + 64);
  __chkstk_darwin(v0, v2);
  v79 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DispatchQoS();
  v78 = *(v80 - 8);
  v4 = *(v78 + 64);
  __chkstk_darwin(v80, v5);
  v77 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = [objc_opt_self() defaultProvider];
  [objc_msgSend(v76 "agentLogger")];
  swift_unknownObjectRelease();
  v7 = type metadata accessor for ProductionEnvironment();
  aBlock = 0u;
  v85 = 0u;
  v86 = 0;
  v8 = [objc_allocWithZone(v7) init];
  v9 = objc_allocWithZone(type metadata accessor for ProductionInfoProvider());
  v10 = v8;
  v11 = sub_1000030F0(v10, &aBlock, [v9 init]);

  v12 = *&v11[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v86 = sub_1000037E0;
  v87 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v85 = sub_10001EB44;
  *(&v85 + 1) = &unk_10003D168;
  v14 = _Block_copy(&aBlock);
  v15 = v11;

  [v12 performSynchronousWriterBlock:v14];
  _Block_release(v14);
  sub_10001FEF0();
  v16 = objc_allocWithZone(NSXPCListener);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithMachServiceName:v17];

  v19 = qword_100046240;
  qword_100046240 = v18;

  v20 = objc_allocWithZone(v7);
  v21 = v15;
  v22 = [v20 init];
  *(&v85 + 1) = v7;
  v86 = &off_10003DCF0;
  *&aBlock = v22;
  v23 = objc_allocWithZone(type metadata accessor for DonationAgentEntitlementDecorator());
  v24 = *(&v85 + 1);
  v25 = sub_100003800(&aBlock, *(&v85 + 1));
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25, v25);
  v28 = (&v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = sub_1000032CC(*v28, v21, sub_10000AD3C, 0, v23);
  sub_100003850(&aBlock);
  v31 = type metadata accessor for DonationListenerDelegate();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC21contactsdonationagent24DonationListenerDelegate_agent] = v30;
  v83.receiver = v32;
  v83.super_class = v31;
  v33 = objc_msgSendSuper2(&v83, "init");
  v34 = qword_100046248;
  qword_100046248 = v33;

  result = qword_100046240;
  if (qword_100046240)
  {
    if (!qword_100046248)
    {
      __break(1u);
      return result;
    }

    [qword_100046240 setDelegate:?];
    if (qword_100046240)
    {
      [qword_100046240 resume];
    }
  }

  v75 = v0;
  v36 = objc_opt_self();
  v37 = [v36 globalAsyncScheduler];
  v38 = swift_allocObject();
  *(v38 + 16) = v21;
  v86 = sub_10000389C;
  v87 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v85 = sub_10001EB44;
  *(&v85 + 1) = &unk_10003D1B8;
  v39 = _Block_copy(&aBlock);
  v40 = v21;

  v41 = [v37 afterDelay:v39 performBlock:2.0];
  _Block_release(v39);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (MGGetSInt32Answer() == 1)
  {
    v42 = objc_allocWithZone(CNDSIMCardMonitor);
    v43 = v40;
    v44 = [v42 init];
    v45 = type metadata accessor for SIMCardMonitor();
    v46 = objc_allocWithZone(v45);
    *&v46[OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_token] = 0;
    *&v46[OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_agent] = v43;
    *&v46[OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_phoneNumberMonitor] = v44;
    v82.receiver = v46;
    v82.super_class = v45;
    v47 = objc_msgSendSuper2(&v82, "init");
    v48 = [v36 globalAsyncScheduler];
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    v86 = sub_1000038D8;
    v87 = v49;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v85 = sub_10001EB44;
    *(&v85 + 1) = &unk_10003D2F8;
    v50 = _Block_copy(&aBlock);
    v51 = v47;

    v52 = [v48 afterDelay:v50 performBlock:5.0];
    _Block_release(v50);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v53 = [objc_allocWithZone(type metadata accessor for AnalysisService()) init];
  v54 = *&v53[OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_activityIdentifier];
  v55 = *&v53[OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_activityIdentifier + 8];
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  v86 = sub_1000038C0;
  v87 = v56;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v85 = sub_1000029C4;
  *(&v85 + 1) = &unk_10003D208;
  v57 = v40;
  v58 = _Block_copy(&aBlock);
  v74 = v53;

  v59 = String.utf8CString.getter();
  xpc_activity_register((v59 + 32), XPC_ACTIVITY_CHECK_IN, v58);

  _Block_release(v58);
  v60 = [objc_allocWithZone(type metadata accessor for ManagedDuplicateService()) init];
  v61 = *&v60[OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_activityIdentifier];
  v62 = *&v60[OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_activityIdentifier + 8];
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  v86 = sub_1000038C8;
  v87 = v63;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v85 = sub_1000029C4;
  *(&v85 + 1) = &unk_10003D258;
  v64 = _Block_copy(&aBlock);
  v65 = v60;

  v66 = String.utf8CString.getter();
  xpc_activity_register((v66 + 32), XPC_ACTIVITY_CHECK_IN, v64);

  _Block_release(v64);
  sub_1000038E8(0, &qword_100044C88, OS_dispatch_source_ptr);
  sub_1000038E8(0, &unk_100044C90, OS_dispatch_queue_ptr);
  v67 = static OS_dispatch_queue.main.getter();
  static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v68 = swift_allocObject();
  *(v68 + 16) = v57;
  v86 = sub_1000038D0;
  v87 = v68;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v85 = sub_10001EB44;
  *(&v85 + 1) = &unk_10003D2A8;
  v69 = _Block_copy(&aBlock);
  v70 = v57;
  v71 = v77;
  static DispatchQoS.unspecified.getter();
  v72 = v79;
  sub_100002868();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v69);
  (*(v81 + 8))(v72, v75);
  (*(v78 + 8))(v71, v80);

  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000026C0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_phoneNumberMonitor];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v9[4] = sub_1000038E0;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100002A24;
  v9[3] = &unk_10003D348;
  v4 = _Block_copy(v9);
  v5 = a1;

  v6 = [v2 addInfoChangeHandler:v4];
  _Block_release(v4);
  v7 = *&v5[OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_token];
  *&v5[OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_token] = v6;
  return swift_unknownObjectRelease();
}

void sub_1000027C8()
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FBD0;
  *(v0 + 56) = &type metadata for String;
  strcpy((v0 + 32), "Hup hup hup!!");
  *(v0 + 46) = -4864;
  print(_:separator:terminator:)();

  sub_100023CDC();
}

uint64_t sub_100002868()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003930();
  sub_100003760(&qword_100044CA8, &qword_10002FCA8);
  sub_100003988();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id sub_100002980()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DonationListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000029C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100002A24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1000038E8(0, &qword_1000458E0, CNDSIMCardItem_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void type metadata accessor for CNDonationPostalAddressStyle()
{
  if (!qword_100044C60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100044C60);
    }
  }
}

void *sub_100002B58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_100002B74(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = type metadata accessor for ProductionEnvironment();
  v60 = v8;
  v61 = &off_10003DCF0;
  v59[0] = a1;
  v58[3] = type metadata accessor for ProductionInfoProvider();
  v58[4] = &off_10003DCD0;
  v58[0] = a3;
  v9 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  *&a4[v9] = sub_1000287E8(&_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_contact;
  *&a4[v10] = [objc_allocWithZone(CNContact) init];
  a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup] = 0;
  v11 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountLogger;
  v12 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  *&a4[v11] = v12;
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountDonationReceiver] = 0;
  v13 = &a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_notYetExpired];
  *v13 = sub_10001FBD0;
  v13[1] = 0;
  v14 = &a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_readyForRenewal];
  *v14 = sub_10001FCF8;
  v14[1] = 0;
  v15 = &a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_indexDonationByIdentifierReduction];
  *v15 = sub_10001FE2C;
  v15[1] = 0;
  a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] = 0;
  v16 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_internalBundleIdentifiers;
  sub_100003760(&qword_100044CC0, &unk_100030940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002FBE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v19;
  v20 = sub_100016C4C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *&a4[v16] = v20;
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_bundleIDVersions] = 0;
  v21 = *sub_100003A34(v59, v8);
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donationPreferences] = sub_1000144E0();
  v22 = *sub_100003A34(v59, v60);
  v23 = sub_1000144E0();
  v24 = *sub_100003A34(v59, v60);
  v25 = sub_100014558();
  v26 = *sub_100003A34(v59, v60);
  v27 = sub_1000143A8();
  v28 = objc_allocWithZone(type metadata accessor for DonationPreferencesMonitor());
  v29 = sub_10000F2DC(v23, v25, v27);
  swift_unknownObjectRelease();

  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_preferencesMonitor] = v29;
  v30 = *sub_100003A34(v59, v60);
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_dataProxy] = sub_1000144CC();
  sub_100003A78(a2, &v53);
  if (v54)
  {
    sub_100003B50(&v53, &v55);
  }

  else
  {
    v31 = *sub_100003A34(v59, v60);
    v32 = sub_1000144CC();
    v33 = type metadata accessor for DonationPersistence();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtC21contactsdonationagent19DonationPersistence_dataProxy] = v32;
    v52.receiver = v34;
    v52.super_class = v33;
    v35 = objc_msgSendSuper2(&v52, "init");
    v56 = v33;
    v57 = &off_10003D980;
    *&v55 = v35;
    if (v54)
    {
      sub_100003AE8(&v53);
    }
  }

  sub_100003B50(&v55, &a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence]);
  v36 = *sub_100003A34(v59, v60);
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_feedbackStore] = sub_1000145D4();
  sub_100003B68(v58, &a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider]);
  v37 = *sub_100003A34(v59, v60);
  v38 = sub_1000143A8();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 newReaderWriterSchedulerWithName:v39];

  swift_unknownObjectRelease();
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock] = v40;
  v41 = *sub_100003A34(v59, v60);
  v42 = sub_1000143A8();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 newSerialSchedulerWithName:v43];

  swift_unknownObjectRelease();
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_diskScheduler] = v44;
  v45 = *sub_100003A34(v59, v60);
  v46 = [sub_1000143A8() backgroundScheduler];
  swift_unknownObjectRelease();
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler] = v46;
  v47 = *sub_100003A34(v59, v60);
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] = sub_100014428();
  sub_100003B68(v59, &a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_environment]);
  v48 = *sub_100003A34(v59, v60);
  *&a4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_distributedNotificationCenter] = sub_100014558();
  v51.receiver = a4;
  v51.super_class = type metadata accessor for DonationAgent();
  v49 = objc_msgSendSuper2(&v51, "init");
  sub_100003AE8(a2);
  sub_100003850(v58);
  sub_100003850(v59);
  return v49;
}

id sub_1000030F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductionEnvironment();
  v24[3] = v6;
  v24[4] = &off_10003DCF0;
  v24[0] = a1;
  v22 = type metadata accessor for ProductionInfoProvider();
  v23 = &off_10003DCD0;
  v21[0] = a3;
  v7 = objc_allocWithZone(type metadata accessor for DonationAgent());
  v8 = sub_100003800(v24, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8, v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v22;
  v14 = sub_100003800(v21, v22);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14, v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_100002B74(*v11, a2, *v17, v7);
  sub_100003850(v21);
  sub_100003850(v24);
  return v19;
}

id sub_1000032CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = type metadata accessor for ProductionEnvironment();
  v16[3] = v10;
  v16[4] = &off_10003DCF0;
  v16[0] = a1;
  a5[OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator____lazy_storage___connectionHasEntitlement] = 2;
  *&a5[OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator____lazy_storage___entitlementError] = 0;
  *&a5[OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent] = a2;
  v11 = *sub_100003A34(v16, v10);
  *&a5[OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_logger] = sub_100014428();
  v12 = &a5[OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_connectionProvider];
  *v12 = a3;
  v12[1] = a4;
  v15.receiver = a5;
  v15.super_class = type metadata accessor for DonationAgentEntitlementDecorator();
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_100003850(v16);
  return v13;
}

void sub_1000033B0(void *a1)
{
  v2 = [a1 classesForSelector:"donateMeCardValues:completionHandler:" argumentIndex:0 ofReply:0];
  if (v2)
  {
    v3 = v2;
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    v4 = v3;
    sub_100003760(&qword_100044C70, &qword_10002FC98);
    v5 = [v4 setByAddingObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    static Set._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Set._bridgeToObjectiveC()().super.isa;
    [a1 setClasses:isa forSelector:"donateMeCardValues:completionHandler:" argumentIndex:0 ofReply:0];

    v7 = [a1 classesForSelector:"changeFromAccount:toAccount:completionHandler:" argumentIndex:0 ofReply:0];
    if (v7)
    {
      v8 = v7;

      sub_1000038E8(0, &qword_100044C78, ACAccount_ptr);
      v9 = v8;
      sub_100003760(&qword_100044C80, &qword_10002FCA0);
      v10 = [v9 setByAddingObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();

      static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = Set._bridgeToObjectiveC()().super.isa;
      [a1 setClasses:v11 forSelector:"changeFromAccount:toAccount:completionHandler:" argumentIndex:0 ofReply:0];

      v12 = Set._bridgeToObjectiveC()().super.isa;

      [a1 setClasses:v12 forSelector:"changeFromAccount:toAccount:completionHandler:" argumentIndex:1 ofReply:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000364C(void *a1)
{
  v3 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  [v3 acceptingConnectionFromProcess:{objc_msgSend(a1, "processIdentifier")}];
  swift_unknownObjectRelease();
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DonationAgentProtocol];
  sub_1000033B0(v4);
  [a1 setExportedInterface:v4];

  [a1 setExportedObject:*(v1 + OBJC_IVAR____TtC21contactsdonationagent24DonationListenerDelegate_agent)];
  [a1 resume];
  return 1;
}

uint64_t sub_100003760(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000037A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000037E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003800(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100003850(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000038E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100003930()
{
  result = qword_100044CA0;
  if (!qword_100044CA0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044CA0);
  }

  return result;
}

unint64_t sub_100003988()
{
  result = qword_100044CB0;
  if (!qword_100044CB0)
  {
    sub_1000039EC(&qword_100044CA8, &qword_10002FCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044CB0);
  }

  return result;
}

uint64_t sub_1000039EC(uint64_t *a1, uint64_t *a2)
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

void *sub_100003A34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100044CC8, &unk_10002FCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003AE8(uint64_t a1)
{
  v2 = sub_100003760(&qword_100044CC8, &unk_10002FCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003B50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100003B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100003C18()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_oldAccount);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v3 identifier];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      String.append(_:)(v9);
      v10 = OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_identifiersToRemove;
      swift_beginAccess();
      v11 = *(v2 + v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v10) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_10002642C(0, *(v11 + 2) + 1, 1, v11);
        *(v2 + v10) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_10002642C((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = 0x3A656D616ELL;
      *(v15 + 5) = 0xE500000000000000;
      *(v2 + v10) = v11;
      swift_endAccess();
      v16._countAndFlagsBits = v6;
      v16._object = v8;
      String.append(_:)(v16);

      swift_beginAccess();
      v17 = *(v2 + v10);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v10) = v17;
      if ((v18 & 1) == 0)
      {
        v17 = sub_10002642C(0, *(v17 + 2) + 1, 1, v17);
        *(v2 + v10) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_10002642C((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      v21 = &v17[16 * v20];
      *(v21 + 4) = 0x3A6C69616D65;
      *(v21 + 5) = 0xE600000000000000;
      *(v2 + v10) = v17;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100003E34(void *a1)
{
  v3 = [a1 accountType];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 identifier];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_dataClassBlacklist);
      v32 = v6;
      v33 = v8;
      __chkstk_darwin(v10, v11);
      v31 = &v32;
      v13 = sub_10000A700(sub_100004AE0, v30, v12);
      if (v13)
      {
        goto LABEL_12;
      }

      v15 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_activeRatherThanEnabledDataClasses);
      v32 = v6;
      v33 = v8;
      __chkstk_darwin(v13, v14);
      v31 = &v32;
      v17 = sub_10000A700(sub_100004AE0, v30, v16);

      if (v17)
      {
        return [a1 isActive];
      }
    }
  }

  result = [a1 enabledDataclasses];
  if (result)
  {
    v19 = result;
    v20 = [result count];

    if (v20 > 0)
    {
      return 1;
    }

    v21 = [a1 accountStore];
    if (v21)
    {

      return 0;
    }

    sub_100003760(&unk_100044F20, &unk_10002FCB0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10002FBD0;
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v32 = 0xD00000000000002ELL;
    v33 = 0x8000000100031230;
    v23 = [a1 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28 = v32;
    v29 = v33;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 32) = v28;
    *(v22 + 40) = v29;
    print(_:separator:terminator:)();
LABEL_12:

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1000040F0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v22 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_newAccount);
  if (v12)
  {
    v23 = v12;
    if (sub_100003E34(v23))
    {
      Date.init()();
      Date.init(timeIntervalSinceNow:)();
      v13 = type metadata accessor for AccountPropertyParser();
      v14 = objc_allocWithZone(v13);
      v15 = v3[2];
      v15(&v14[OBJC_IVAR____TtC21contactsdonationagent21AccountPropertyParser_donationDate], v11, v2);
      v15(&v14[OBJC_IVAR____TtC21contactsdonationagent21AccountPropertyParser_expirationDate], v8, v2);
      v24.receiver = v14;
      v24.super_class = v13;
      v16 = objc_msgSendSuper2(&v24, "init");
      v17 = v3[1];
      v17(v8, v2);
      v17(v11, v2);
      sub_10001C0E0(v23);
      v19 = v18;

      v20 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations);
      *(v1 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations) = v19;
    }

    else
    {
      v21 = v23;
    }
  }
}

uint64_t sub_100004318()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations;
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations);
  if (v2 >> 62)
  {
LABEL_32:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v4 = *(v0 + v1);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v33 = *(v0 + v1);
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v43 = _swiftEmptyArrayStorage;

    result = sub_10002678C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v6 = v43;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 origin];
      v11 = [v10 donationIdentifier];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v43 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_10002678C((v15 > 1), v16 + 1, 1);
        v6 = v43;
      }

      ++v7;
      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v5 != v7);

    v0 = v38;
  }

  v18 = OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_identifiersToRemove;
  swift_beginAccess();
  v37 = v18;
  v19 = *(v0 + v18);
  v20 = *(v19 + 16);

  if (v20)
  {
    v23 = 0;
    v24 = v19 + 40;
    v40 = v20;
    v35 = v20 - 1;
    v39 = _swiftEmptyArrayStorage;
    v36 = v19 + 40;
    do
    {
      v0 = (v24 + 16 * v23);
      v1 = v23;
      while (1)
      {
        if (v1 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v26 = *(v0 - 1);
        v25 = *v0;
        v23 = v1 + 1;
        v41[0] = v26;
        v41[1] = v25;
        __chkstk_darwin(isUniquelyReferenced_nonNull_native, v22);
        v34[2] = v41;

        if ((sub_10000A700(sub_100004AC0, v34, v6) & 1) == 0)
        {
          break;
        }

        v0 += 2;
        ++v1;
        if (v40 == v23)
        {
          v0 = v38;
          goto LABEL_29;
        }
      }

      v27 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v27;
      v42 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_10002678C(0, v27[2] + 1, 1);
        v28 = v42;
      }

      v0 = v38;
      v30 = v28[2];
      v29 = v28[3];
      if (v30 >= v29 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10002678C((v29 > 1), v30 + 1, 1);
        v0 = v38;
        v28 = v42;
      }

      v28[2] = v30 + 1;
      v39 = v28;
      v31 = &v28[2 * v30];
      v31[4] = v26;
      v31[5] = v25;
      v24 = v36;
    }

    while (v35 != v1);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

LABEL_29:

  v32 = *(v0 + v37);
  *(v0 + v37) = v39;
}

void sub_100004694()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations;
  v2 = *&v0[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations];
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v2 < 0)
  {
    v9 = *&v0[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations];
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= 1)
  {
LABEL_3:
    v3 = *&v0[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_store];
    if (v3)
    {
      v4 = *&v0[v1];
      sub_100004A1C();

      isa = Array._bridgeToObjectiveC()().super.isa;

      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      v10[4] = sub_100004AA0;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10001F18C;
      v10[3] = &unk_10003D398;
      v7 = _Block_copy(v10);
      v8 = v0;

      [v3 donateMeCardValues:isa completionHandler:v7];
      _Block_release(v7);
    }
  }
}

void sub_1000047F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_logger);
    if (v2)
    {
      v3 = _convertErrorToNSError(_:)();
      [v2 donationFailedWithError:v3];
    }
  }
}

void sub_10000486C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_logger);
    if (v3)
    {
      v4 = _convertErrorToNSError(_:)();
      [v3 removalFailedWithError:v4];
    }
  }
}

id sub_100004918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountChangeAnalyzer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100004A1C()
{
  result = qword_100044C68;
  if (!qword_100044C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100044C68);
  }

  return result;
}

uint64_t sub_100004A68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100004AFC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v195 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v194 = &v192 - v12;
  v14 = __chkstk_darwin(v11, v13);
  v206 = &v192 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v196 = &v192 - v18;
  __chkstk_darwin(v17, v19);
  v205 = &v192 - v20;
  v21 = sub_100003760(&qword_100044F50, &qword_100030240);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  v204 = &v192 - v24;
  v25 = sub_100003760(&qword_100044F58, &qword_100030248);
  v26 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25 - 8, v27);
  v202 = &v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28, v30);
  v200 = &v192 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v201 = &v192 - v35;
  __chkstk_darwin(v34, v36);
  v199 = &v192 - v37;
  v38 = type metadata accessor for CharacterSet();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38, v41);
  v43 = &v192 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = a2;
  Logger.init(subsystem:category:)();
  v44 = type metadata accessor for ContactDetails();
  v45 = *(v44 + 96);
  v46 = v44;
  v207 = v5;
  v47 = *(v5 + 56);
  v203 = v45;
  v47(a2 + v45, 1, 1, v4);
  v48 = v46;
  v193 = v46[25];
  v208 = v4;
  v209 = v47;
  v210 = v5 + 56;
  v47(a2 + v193, 1, 1, v4);
  v49 = [a1 givenName];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v215 = v50;
  v216 = v52;
  static CharacterSet.whitespacesAndNewlines.getter();
  v53 = sub_1000061D8();
  v54 = StringProtocol.trimmingCharacters(in:)();
  v56 = v55;
  v57 = *(v39 + 8);
  v213 = v38;
  v57(v43, v38);

  v58 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v58 = v54 & 0xFFFFFFFFFFFFLL;
  }

  *(v214 + v48[5]) = v58 != 0;
  v212 = a1;
  v59 = [a1 middleName];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v215 = v60;
  v216 = v62;
  static CharacterSet.whitespacesAndNewlines.getter();
  v63 = StringProtocol.trimmingCharacters(in:)();
  v65 = v64;
  v57(v43, v38);

  v66 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v66 = v63 & 0xFFFFFFFFFFFFLL;
  }

  *(v214 + v48[6]) = v66 != 0;
  v67 = [a1 familyName];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v215 = v68;
  v216 = v70;
  static CharacterSet.whitespacesAndNewlines.getter();
  v71 = StringProtocol.trimmingCharacters(in:)();
  v73 = v72;
  v74 = v213;
  v57(v43, v213);
  v198 = v57;

  v75 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v75 = v71 & 0xFFFFFFFFFFFFLL;
  }

  v76 = v214;
  *(v214 + v48[7]) = v75 != 0;
  v77 = [v212 nickname];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v215 = v78;
  v216 = v80;
  static CharacterSet.whitespacesAndNewlines.getter();
  v81 = StringProtocol.trimmingCharacters(in:)();
  v83 = v82;
  v57(v43, v74);

  v84 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v84 = v81 & 0xFFFFFFFFFFFFLL;
  }

  v85 = v48[8];
  v197 = v48;
  *(v76 + v85) = v84 != 0;
  v86 = v212;
  v87 = [v212 organizationName];
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v215 = v88;
  v216 = v90;
  static CharacterSet.whitespacesAndNewlines.getter();
  v211 = v53;
  v91 = StringProtocol.trimmingCharacters(in:)();
  v93 = v92;
  v94 = v74;
  v95 = v198;
  v198(v43, v94);

  v96 = HIBYTE(v93) & 0xF;
  if ((v93 & 0x2000000000000000) == 0)
  {
    v96 = v91 & 0xFFFFFFFFFFFFLL;
  }

  *(v76 + v48[9]) = v96 != 0;
  v97 = v76;
  v98 = [v86 phoneticGivenName];
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;

  v215 = v99;
  v216 = v101;
  static CharacterSet.whitespacesAndNewlines.getter();
  v102 = StringProtocol.trimmingCharacters(in:)();
  v104 = v103;
  v105 = v213;
  v95(v43, v213);

  v106 = HIBYTE(v104) & 0xF;
  if ((v104 & 0x2000000000000000) == 0)
  {
    v106 = v102 & 0xFFFFFFFFFFFFLL;
  }

  v107 = v197;
  *(v97 + v197[10]) = v106 != 0;
  v108 = [v86 phoneticMiddleName];
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  v215 = v109;
  v216 = v111;
  static CharacterSet.whitespacesAndNewlines.getter();
  v112 = StringProtocol.trimmingCharacters(in:)();
  v114 = v113;
  v95(v43, v105);

  v115 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v115 = v112 & 0xFFFFFFFFFFFFLL;
  }

  *(v97 + v107[11]) = v115 != 0;
  v116 = [v86 phoneticFamilyName];
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v118;

  v215 = v117;
  v216 = v119;
  static CharacterSet.whitespacesAndNewlines.getter();
  v120 = StringProtocol.trimmingCharacters(in:)();
  v122 = v121;
  v95(v43, v213);
  v123 = v97;
  v124 = v107;

  v125 = HIBYTE(v122) & 0xF;
  if ((v122 & 0x2000000000000000) == 0)
  {
    v125 = v120 & 0xFFFFFFFFFFFFLL;
  }

  *(v123 + v107[12]) = v125 != 0;
  v126 = [v86 birthday];
  v127 = v199;
  if (v126)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v128 = 0;
  }

  else
  {
    v128 = 1;
  }

  v129 = v126 != 0;
  v130 = type metadata accessor for DateComponents();
  v131 = *(v130 - 8);
  v132 = *(v131 + 56);
  v133 = 1;
  v132(v127, v128, 1, v130);
  v134 = v127;
  v135 = v124[13];
  sub_10000630C(v134, &qword_100044F58, &qword_100030248);
  *(v214 + v135) = v129;
  v136 = v86;
  v137 = [v86 birthday];
  if (v137)
  {
    v138 = v200;
    v139 = v137;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = 0;
    v140 = v207;
    v141 = v202;
  }

  else
  {
    v140 = v207;
    v141 = v202;
    v138 = v200;
  }

  v132(v138, v133, 1, v130);
  v142 = v201;
  sub_10000622C(v138, v201);
  if ((*(v131 + 48))(v142, 1, v130) == 1)
  {
    sub_10000630C(v142, &qword_100044F58, &qword_100030248);
    v143 = 0;
  }

  else
  {
    DateComponents.year.getter();
    v145 = v144;
    (*(v131 + 8))(v142, v130);
    v143 = v145 ^ 1;
  }

  v146 = v208;
  v147 = v140;
  *(v214 + v124[14]) = v143 & 1;
  v148 = [v136 nonGregorianBirthday];
  if (v148)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v149 = 0;
  }

  else
  {
    v149 = 1;
  }

  v132(v141, v149, 1, v130);
  v150 = v141;
  v151 = v124[15];
  v152 = v124[16];
  v153 = v124[17];
  sub_10000630C(v150, &qword_100044F58, &qword_100030248);
  v154 = v214;
  *(v214 + v151) = v148 != 0;
  *(v154 + v152) = [v136 imageDataAvailable];
  [v136 cropRect];
  v218.origin.x = 0.0;
  v218.origin.y = 0.0;
  v218.size.width = 0.0;
  v218.size.height = 0.0;
  *(v154 + v153) = !CGRectEqualToRect(v217, v218);
  v155 = [v136 memojiMetadata];
  if (v155)
  {
    v156 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;

    sub_10000636C(v156, v158);
  }

  *(v214 + v124[18]) = v155 != 0;
  v159 = [v136 phoneNumbers];
  sub_100003760(&unk_100045B80, &unk_100030250);
  v160 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v161 = v206;
  if (v160 >> 62)
  {
    v162 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v162 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v214 + v124[19]) = v162;
  v163 = [v136 emailAddresses];
  v164 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v164 >> 62)
  {
    v165 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v165 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v214 + v124[20]) = v165;
  v166 = [v136 postalAddresses];
  v167 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v167 >> 62)
  {
    v168 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v168 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v214 + v124[21]) = v168;
  v169 = [v136 socialProfiles];
  v170 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v170 >> 62)
  {
    v171 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v171 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v172 = v205;

  *(v214 + v124[22]) = v171;
  v173 = [v136 contactRelations];
  v174 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v174 >> 62)
  {
    v175 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v175 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v214 + v124[23]) = v175;
  v176 = [v136 creationDate];
  if (v176)
  {
    v177 = v204;
    v178 = v176;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v179 = 0;
  }

  else
  {
    v179 = 1;
    v177 = v204;
  }

  v209(v177, v179, 1, v146);
  sub_10000629C(v177, v214 + v203);
  v180 = [v136 creationDate];
  if (v180)
  {
    v181 = v196;
    v182 = v180;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v183 = *(v147 + 32);
    v183(v172, v181, v146);
    v184 = [v136 modificationDate];
    if (v184)
    {
      v185 = v194;
      v186 = v184;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v183(v161, v185, v146);
      v187 = v195;
      static Date.+ infix(_:_:)();
      LOBYTE(v186) = static Date.> infix(_:_:)();

      v188 = v172;
      v189 = *(v147 + 8);
      v189(v187, v146);
      v189(v188, v146);
      if (v186)
      {
        v190 = v193;
        v191 = v214;
        sub_10000630C(v214 + v193, &qword_100044F50, &qword_100030240);
        v183((v191 + v190), v161, v146);
        v209(v191 + v190, 0, 1, v146);
      }

      else
      {
        v189(v161, v146);
      }
    }

    else
    {
      (*(v147 + 8))(v172, v146);
    }
  }

  else
  {
  }
}

uint64_t sub_100005B10()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD10;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 56) = result;
  qword_100046250 = v0;
  return result;
}

uint64_t sub_100005BA4()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD20;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_100046258 = v0;
  return result;
}

uint64_t sub_100005C28()
{
  sub_100003760(&unk_100044F40, &qword_10002FEF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD30;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *(v0 + 64) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *(v0 + 96) = v11;
  *(v0 + 104) = v13;
  *(v0 + 112) = v14;
  *(v0 + 120) = v15;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  *(v0 + 128) = v16;
  *(v0 + 136) = v18;
  *(v0 + 144) = v19;
  *(v0 + 152) = v20;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  *(v0 + 160) = v21;
  *(v0 + 168) = v23;
  *(v0 + 176) = v24;
  *(v0 + 184) = v25;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  *(v0 + 192) = v26;
  *(v0 + 200) = v28;
  *(v0 + 208) = v29;
  *(v0 + 216) = v30;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  *(v0 + 224) = v31;
  *(v0 + 232) = v33;
  *(v0 + 240) = v34;
  *(v0 + 248) = v35;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  v39 = swift_getKeyPath();
  v40 = swift_getKeyPath();
  *(v0 + 256) = v36;
  *(v0 + 264) = v38;
  *(v0 + 272) = v39;
  *(v0 + 280) = v40;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  *(v0 + 288) = v41;
  *(v0 + 296) = v43;
  *(v0 + 304) = v44;
  *(v0 + 312) = v45;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  v49 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  *(v0 + 320) = v46;
  *(v0 + 328) = v48;
  *(v0 + 336) = v49;
  *(v0 + 344) = v50;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  v54 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  *(v0 + 352) = v51;
  *(v0 + 360) = v53;
  *(v0 + 368) = v54;
  *(v0 + 376) = v55;
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  *(v0 + 384) = v56;
  *(v0 + 392) = v58;
  *(v0 + 400) = v59;
  *(v0 + 408) = v60;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;
  v64 = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 416) = v61;
  *(v0 + 424) = v63;
  *(v0 + 432) = v64;
  *(v0 + 440) = result;
  qword_100046260 = v0;
  return result;
}

uint64_t sub_100005F90()
{
  sub_100003760(&qword_100044F30, &qword_10002FD60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD40;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = KeyPath;
  *(v0 + 56) = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *(v0 + 64) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *(v0 + 96) = v11;
  *(v0 + 104) = v13;
  *(v0 + 112) = v14;
  *(v0 + 120) = v15;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  *(v0 + 128) = v16;
  *(v0 + 136) = v18;
  *(v0 + 144) = v19;
  *(v0 + 152) = v20;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 160) = v21;
  *(v0 + 168) = v23;
  *(v0 + 176) = v24;
  *(v0 + 184) = result;
  qword_100046268 = v0;
  return result;
}

uint64_t sub_100006118()
{
  sub_100003760(&qword_100044F38, &qword_10002FEA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FBD0;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 32) = KeyPath;
  *(v0 + 40) = result;
  qword_100046270 = v0;
  return result;
}

uint64_t type metadata accessor for ContactDetails()
{
  result = qword_100045140;
  if (!qword_100045140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000061D8()
{
  result = qword_100044F60;
  if (!qword_100044F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044F60);
  }

  return result;
}

uint64_t sub_10000622C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100044F58, &qword_100030248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000629C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100044F50, &qword_100030240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000630C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003760(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000636C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000063C0()
{
  result = sub_1000063E0();
  qword_100046278 = result;
  return result;
}

uint64_t sub_1000063E0()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD50;
  v1 = CNContactCreationDateKey;
  v2 = CNContactModificationDateKey;
  *(v0 + 32) = CNContactCreationDateKey;
  *(v0 + 40) = v2;
  v3 = qword_1000446C8;
  v4 = v1;
  v5 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v6 = qword_100046268;
  v7 = *(qword_100046268 + 16);
  if (v7)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = (v6 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      String._bridgeToObjectiveC()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 4;
      --v7;
    }

    while (v7);
  }

  sub_10000669C(_swiftEmptyArrayStorage);
  v14 = v0;
  if (qword_1000446C0 != -1)
  {
    swift_once();
  }

  v15 = qword_100046260;
  v16 = *(qword_100046260 + 16);
  if (v16)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v17 = (v15 + 56);
    do
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      String._bridgeToObjectiveC()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  sub_10000669C(_swiftEmptyArrayStorage);
  return v14;
}

uint64_t sub_10000669C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10000678C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000068B4(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10000678C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t (*sub_10000682C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1000068AC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000068B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100006A40();
          for (i = 0; i != v6; ++i)
          {
            sub_100003760(&qword_100044FD8, &qword_100030268);
            v9 = sub_10000682C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003760(&qword_100044FD0, &qword_100030260);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100006A40()
{
  result = qword_100044FE0[0];
  if (!qword_100044FE0[0])
  {
    sub_1000039EC(&qword_100044FD8, &qword_100030268);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100044FE0);
  }

  return result;
}

uint64_t sub_100006AA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100006AEC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006AF8(uint64_t *a1, int a2)
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

uint64_t sub_100006B40(uint64_t result, int a2, int a3)
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

__n128 sub_100006B98(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100006C00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100006C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100003760(&qword_100044F50, &qword_100030240);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 96);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100006E40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_100003760(&qword_100044F50, &qword_100030240);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 96);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100006F6C()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_10000702C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000702C()
{
  if (!qword_100045150)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100045150);
    }
  }
}

id sub_10000712C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaintenanceAgent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t CNDonationValue.value()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v17 - v7;
  v9 = _s11ValueCasterCMa(0);
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  v12 = type metadata accessor for CNDonationValue.Value(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(&v10[v11], 1, 1, v12);
  v18.receiver = v10;
  v18.super_class = v9;
  v14 = objc_msgSendSuper2(&v18, "init");
  [v2 acceptDonationValueVisitor:v14];
  v15 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_100008050(v14 + v15, v8);

  result = (*(v13 + 48))(v8, 1, v12);
  if (result != 1)
  {
    return sub_1000080C0(v8, a1);
  }

  __break(1u);
  return result;
}

id sub_100007A20()
{
  v2.receiver = v0;
  v2.super_class = _s11ValueCasterCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _sSo15CNDonationValueC21contactsdonationagentE0B0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v2 = type metadata accessor for PersonNameComponents();
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v74 - v9;
  v11 = type metadata accessor for CNDonationValue.Value(0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11, v13);
  v16 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v14, v17);
  v20 = (&v74 - v19);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (&v74 - v23);
  __chkstk_darwin(v22, v25);
  v27 = &v74 - v26;
  v28 = sub_100003760(&qword_100045310, &qword_100030418);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v33 = &v74 - v32;
  v34 = (&v74 + *(v31 + 56) - v32);
  sub_10000844C(v76, &v74 - v32);
  sub_10000844C(v77, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v46 = v75;
    if (!EnumCaseMultiPayload)
    {
      sub_10000844C(v33, v27);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v46 + 8))(v27, v2);
        goto LABEL_31;
      }

      v68 = *(v46 + 32);
      v68(v10, v27, v2);
      v68(v7, v34, v2);
      v44 = static PersonNameComponents.== infix(_:_:)();
      v69 = *(v46 + 8);
      v69(v7, v2);
      v69(v10, v2);
      v70 = v33;
LABEL_49:
      sub_1000084B0(v70);
      return v44 & 1;
    }

    v47 = v33;
    sub_10000844C(v33, v24);
    v59 = *v24;
    v58 = v24[1];
    v61 = v24[2];
    v60 = v24[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = *v34;
      v63 = v34[1];
      v65 = v34[2];
      v64 = v34[3];
      if (v59 == v62 && v58 == v63)
      {
      }

      else
      {
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v44 = 0;
        if ((v67 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (v61 != v65 || v60 != v64)
      {
LABEL_44:
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_46:

        v70 = v47;
        goto LABEL_49;
      }

LABEL_45:
      v44 = 1;
      goto LABEL_46;
    }

LABEL_29:

    v33 = v47;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v47 = v33;
    sub_10000844C(v33, v20);
    v49 = *v20;
    v48 = v20[1];
    v51 = v20[2];
    v50 = v20[3];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v52 = *v34;
      v53 = v34[1];
      v55 = v34[2];
      v54 = v34[3];
      if (v49 == v52 && v48 == v53)
      {
      }

      else
      {
        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v44 = 0;
        if ((v57 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (v51 != v55 || v50 != v54)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_10000844C(v33, v16);
    v36 = *v16;
    v38 = v16[2];
    v37 = v16[3];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v77 = v33;
      v39 = v16[1];
      v40 = *v34;
      v41 = v34[1];
      v42 = v34[2];
      v43 = v34[3];
      sub_1000038E8(0, &qword_100045318, NSObject_ptr);
      v44 = 0;
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && v39 == v41)
      {
        if (v38 == v42 && v37 == v43)
        {
          v44 = 1;
        }

        else
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      v70 = v77;
      goto LABEL_49;
    }
  }

LABEL_31:
  sub_10000630C(v33, &qword_100045310, &qword_100030418);
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_100008018(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008050(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100045200, &qword_1000303D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000080C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNDonationValue.Value(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100008178()
{
  type metadata accessor for PersonNameComponents();
  if (v0 <= 0x3F)
  {
    sub_100008208();
    if (v1 <= 0x3F)
    {
      sub_100008264();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100008208()
{
  if (!qword_100045290)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100045290);
    }
  }
}

void sub_100008264()
{
  if (!qword_100045298)
  {
    sub_1000038E8(255, &unk_1000452A0, CNPostalAddress_ptr);
    type metadata accessor for CNDonationPostalAddressStyle();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100045298);
    }
  }
}

void sub_1000082F4()
{
  sub_100008384();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100008384()
{
  if (!qword_100045308)
  {
    type metadata accessor for CNDonationValue.Value(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100045308);
    }
  }
}

uint64_t sub_1000083DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100045200, &qword_1000303D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000844C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNDonationValue.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000084B0(uint64_t a1)
{
  v2 = type metadata accessor for CNDonationValue.Value(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10000850C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003760(&qword_100044F50, &qword_100030240);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_lock);
  [v8 lock];
  v9 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_defaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_10000630C(&v19, &unk_100045370, &unk_100030510);
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    goto LABEL_8;
  }

  v12 = type metadata accessor for Date();
  v13 = swift_dynamicCast();
  v14 = *(v12 - 8);
  (*(v14 + 56))(v7, v13 ^ 1u, 1, v12);
  if ((*(v14 + 48))(v7, 1, v12) == 1)
  {
LABEL_8:
    sub_10000630C(v7, &qword_100044F50, &qword_100030240);
    static Date.distantPast.getter();
    return [v8 unlock];
  }

  (*(v14 + 32))(a1, v7, v12);
  return [v8 unlock];
}

id sub_100008778()
{
  v1 = &v0[OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_activityIdentifier];
  *v1 = 0xD00000000000002DLL;
  *(v1 + 1) = 0x8000000100031440;
  v2 = OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_logger;
  v3 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_defaults;
  *&v0[v4] = [objc_opt_self() standardUserDefaults];
  v5 = OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_lock;
  *&v0[v5] = [objc_allocWithZone(CNUnfairLock) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ManagedDuplicateService();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1000088A4(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_activityIdentifier);
  v6 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_activityIdentifier + 8);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 os_transactionInhibitorWithLabel:v7];

  [v8 start];
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    sub_1000089B0();
  }

  else if (!state)
  {
    v10 = xpc_activity_copy_criteria(a1);
    v11 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_logger);
    if (v10)
    {
      [v11 managedDuplicateServiceCriteria:v10];
      swift_unknownObjectRelease();
    }

    else
    {
      [v11 managedDuplicateServiceCheckingIn];
    }
  }

  [v8 stop];

  return swift_unknownObjectRelease();
}

uint64_t sub_1000089B0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v27 - v11;
  __chkstk_darwin(v10, v13);
  v15 = &v27 - v14;
  Date.init()();
  sub_10000850C(v8);
  static Date.+ infix(_:_:)();
  v16 = *(v3 + 8);
  v16(v8, v2);
  v17 = static Date.> infix(_:_:)();
  v16(v12, v2);
  v16(v15, v2);
  if (v17)
  {
    Date.init()();
    v18 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_lock);
    [v18 lock];
    v19 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_defaults);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = String._bridgeToObjectiveC()();
    [v19 setObject:isa forKey:v21];

    [v18 unlock];
    v16(v15, v2);
    v22 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_logger);
    [v22 willRefreshDuplicates];
    v23 = [objc_allocWithZone(CNContactStore) init];
    type metadata accessor for DuplicateContactsManager();
    static DuplicateContactsManager.performRefreshManagedDuplicates(with:)();

    [v22 didRefreshDuplicates];
    sub_100008CF0();
    return 1;
  }

  else
  {
    v24 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_logger);
    sub_10000850C(v15);
    v25 = Date._bridgeToObjectiveC()().super.isa;
    v16(v15, v2);
    [v24 didSkipRefreshDuplicates:v25];

    return 0;
  }
}

uint64_t sub_100008CF0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  v7 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_lock);
  [v7 lock];
  v8 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent23ManagedDuplicateService_defaults);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v10];

  [v7 unlock];
  return (*(v2 + 8))(v6, v1);
}

id sub_100008E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedDuplicateService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008F0C(unint64_t a1)
{
  v2 = sub_100028C60(_swiftEmptyArrayStorage);
  if (a1 >> 62)
  {
LABEL_44:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v2;
  }

LABEL_3:
  v4 = 0;
  v53 = a1 & 0xFFFFFFFFFFFFFF8;
  v54 = a1 & 0xC000000000000001;
  v51 = v3;
  v52 = a1;
  while (1)
  {
    if (v54)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v53 + 16))
      {
        goto LABEL_39;
      }

      v8 = *(a1 + 8 * v4 + 32);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v10 = [v8 origin];
    v11 = [v10 bundleIdentifier];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v2[2])
    {
      v15 = sub_100026A0C(v12, v14);
      if (v16)
      {
        v55 = *(v2[7] + 8 * v15);
        v17 = v9;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v18 = v17;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a1 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v12;
        v21 = sub_100026A0C(v12, v14);
        v23 = v2[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_42;
        }

        v27 = v22;
        if (v2[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = v21;
            sub_100027B94();
            v21 = v46;
            if (v27)
            {
              goto LABEL_30;
            }

            goto LABEL_35;
          }
        }

        else
        {
          sub_10002718C(v26, isUniquelyReferenced_nonNull_native);
          v21 = sub_100026A0C(v20, v14);
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_46;
          }
        }

        if (v27)
        {
LABEL_30:
          v43 = v2[7];
          v44 = *(v43 + 8 * v21);
          *(v43 + 8 * v21) = v55;

LABEL_37:

          v7 = v4 + 1;
          a1 = v52;
          goto LABEL_6;
        }

LABEL_35:
        v2[(v21 >> 6) + 8] |= 1 << v21;
        v47 = (v2[6] + 16 * v21);
        *v47 = v20;
        v47[1] = v14;
        *(v2[7] + 8 * v21) = v55;

        v48 = v2[2];
        v25 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v25)
        {
          goto LABEL_43;
        }

        v2[2] = v49;
        goto LABEL_37;
      }
    }

    sub_100003760(&unk_100045620, &unk_100030750);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_100030440;
    *(a1 + 32) = v9;
    v29 = v9;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v12;
    v33 = sub_100026A0C(v12, v14);
    v34 = v2[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_40;
    }

    v37 = v32;
    if (v2[3] < v36)
    {
      break;
    }

    if (v30)
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_100027B94();
      if ((v37 & 1) == 0)
      {
LABEL_26:
        v2[(v33 >> 6) + 8] |= 1 << v33;
        v40 = (v2[6] + 16 * v33);
        *v40 = v31;
        v40[1] = v14;
        *(v2[7] + 8 * v33) = a1;

        v41 = v2[2];
        v25 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v25)
        {
          goto LABEL_41;
        }

        v2[2] = v42;
        goto LABEL_5;
      }
    }

LABEL_4:
    v5 = v2[7];
    v6 = *(v5 + 8 * v33);
    *(v5 + 8 * v33) = a1;

LABEL_5:

    a1 = v52;
    v3 = v51;
    v7 = v4 + 1;
LABEL_6:
    ++v4;
    if (v7 == v3)
    {
      return v2;
    }
  }

  sub_10002718C(v36, v30);
  v38 = sub_100026A0C(v31, v14);
  if ((v37 & 1) == (v39 & 1))
  {
    v33 = v38;
    if ((v37 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_1000093B4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent16FavoritesDetails_favoritesEntries);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_22:
    v16 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v16;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v20 = v3;
      v3 = 0;
      v5 = *a1;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          a1 = *(v2 + 8 * v3 + 32);
        }

        v7 = a1;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v9 = [a1 bundleIdentifier];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
        {
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v15 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a1 = specialized ContiguousArray._endMutation()();
LABEL_6:
        ++v3;
        if (v8 == v4)
        {
          v3 = v20;
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v17 = _swiftEmptyArrayStorage[2];

    if (!v3)
    {
      goto LABEL_26;
    }

LABEL_29:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18 <= 0)
    {
      return 0.0;
    }

    return v17 / v18;
  }

LABEL_28:
  v17 = _CocoaArrayWrapper.endIndex.getter();

  if (v3)
  {
    goto LABEL_29;
  }

LABEL_26:
  v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 <= 0)
  {
    return 0.0;
  }

  return v17 / v18;
}

uint64_t sub_1000095F0()
{
  sub_100003760(&qword_100044CC0, &unk_100030940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100030450;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v3;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v4;
  v5 = sub_10000990C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v6 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent16FavoritesDetails_favoritesEntries);
  v25 = v6;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v9 = v5 + 56;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v25 + 32 + 8 * v8);
      }

      v11 = v10;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v13 = [v10 bundleIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (!*(v5 + 16) || (v17 = *(v5 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v18 = Hasher._finalize()(), v19 = -1 << *(v5 + 32), v20 = v18 & ~v19, ((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0))
      {
LABEL_20:

        return 1;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22 == v14 && v22[1] == v16;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v8 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  return 0;
}

id sub_1000098A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritesDetails();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10000990C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003760(&qword_1000453B0, ".V");
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100009A74()
{
  sub_100003760(&unk_1000453E0, &unk_1000304C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100030490;
  *(v0 + 32) = sub_100009CC4;
  *(v0 + 40) = 0;
  *(v0 + 48) = sub_100009CDC;
  *(v0 + 56) = 0;
  if (qword_1000446E8 != -1)
  {
    swift_once();
  }

  v2 = qword_100046288;
  v1 = unk_100046290;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 64) = sub_10000A618;
  *(v0 + 72) = v3;
  v4 = qword_1000446F0;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100046298;
  v5 = unk_1000462A0;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v0 + 80) = sub_10000A9D0;
  *(v0 + 88) = v7;
  v8 = qword_1000446F8;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1000462A8;
  v9 = unk_1000462B0;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *(v0 + 96) = sub_10000A9D0;
  *(v0 + 104) = v11;
  v12 = qword_100044700;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1000462B8;
  v13 = unk_1000462C0;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v0 + 112) = sub_10000A9D0;
  *(v0 + 120) = v15;
  qword_100046280 = v0;
}

uint64_t sub_100009CF4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

id sub_100009D28(void *a1)
{
  v2 = [a1 accountType];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = [v2 identifier];

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v18[0] = v5;
  v18[1] = v7;
  __chkstk_darwin(v8, v9);
  v17[2] = v18;
  v10 = sub_10000A700(sub_10000A9D4, v17, &off_10003D0B0);

  if ((v10 & 1) == 0)
  {
LABEL_4:
    result = [a1 username];
    if (!result)
    {
      return result;
    }

    v12 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = [objc_allocWithZone(CNEmailAddressScanner) init];
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 firstEmailAddressInString:v14];

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v16;
    }
  }

  return 0;
}

uint64_t sub_100009EFC(void *a1)
{
  strcpy(&v8, "primaryEmail");
  BYTE13(v8) = 0;
  HIWORD(v8) = -5120;
  v2 = [a1 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v7;
      *&v8 = 0x6449656C707061;
      *(&v8 + 1) = 0xE700000000000000;
      v4 = [a1 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v4)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = 0u;
        v9 = 0u;
      }

      v10 = v8;
      v11 = v9;
      if (*(&v9 + 1))
      {
        if (swift_dynamicCast())
        {
LABEL_15:

          return 0;
        }
      }

      else
      {
        sub_10000A698(&v10);
      }

      v5._object = 0x80000001000315A0;
      v5._countAndFlagsBits = 0xD000000000000011;
      if (!String.hasSuffix(_:)(v5))
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v3;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10000A698(&v10);
  }

  return 0;
}

void *sub_10000A110()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000014;
  result[4] = 0x8000000100031580;
  qword_100046288 = sub_10000A9CC;
  unk_100046290 = result;
  return result;
}

void *sub_10000A184()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0x656D614E72657375;
  result[4] = 0xE800000000000000;
  qword_100046298 = sub_10000A9CC;
  unk_1000462A0 = result;
  return result;
}

void *sub_10000A1F4()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000011;
  result[4] = 0x8000000100031560;
  qword_1000462A8 = sub_10000A9CC;
  unk_1000462B0 = result;
  return result;
}

void *sub_10000A268()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000015;
  result[4] = 0x8000000100031540;
  qword_1000462B8 = sub_10000A68C;
  unk_1000462C0 = result;
  return result;
}

uint64_t sub_10000A2DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 accountType];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v7 identifier];

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *&v25[0] = v10;
  *(&v25[0] + 1) = v12;
  __chkstk_darwin(v13, v14);
  v22[2] = v25;
  v15 = sub_10000A700(sub_10000A940, v22, &off_10003D0B0);

  if ((v15 & 1) == 0)
  {
LABEL_4:
    *&v23 = a3;
    *(&v23 + 1) = a4;

    v16 = [a1 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        v17 = [objc_allocWithZone(CNEmailAddressScanner) init];
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 firstEmailAddressInString:v18];

        if (v19)
        {
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          return v20;
        }
      }
    }

    else
    {
      sub_10000A698(v25);
    }
  }

  return 0;
}

id sub_10000A584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountPropertyEmailParser();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A5E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A61C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t sub_10000A654()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A698(uint64_t a1)
{
  v2 = sub_100003760(&unk_100045370, &unk_100030510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A700(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10000A7AC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_10000A8E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000A95C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000A9F0()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator____lazy_storage___connectionHasEntitlement;
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator____lazy_storage___connectionHasEntitlement);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_10000AA34(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_10000AA34(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_connectionProvider + 8);
  v3 = (*(a1 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_connectionProvider))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (sub_10000AB14(0xD00000000000001ALL, 0x80000001000316C0, v3) & 1) != 0 || (sub_10000AB14(0xD000000000000026, 0x80000001000316E0, v4))
  {
    v5 = 1;
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_logger) denyingRequestFromProcess:{objc_msgSend(v4, "processIdentifier")}];
    v5 = 0;
  }

  return v5;
}

id sub_10000AB14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_1000038E8(0, &qword_100045450, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v8 BOOLValue];

      return v6;
    }
  }

  else
  {
    sub_10000630C(v11, &unk_100045370, &unk_100030510);
  }

  return 0;
}

id sub_10000AC18()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator____lazy_storage___entitlementError;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator____lazy_storage___entitlementError))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator____lazy_storage___entitlementError);
  }

  else
  {
    v3 = sub_1000289FC(&off_10003D0E0);
    sub_10000630C(&unk_10003D100, &unk_100045440, &qword_100030508);
    v4 = NSCocoaErrorDomain;
    sub_10000C700(v3);

    v5 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v5 initWithDomain:v4 code:4097 userInfo:isa];

    v7 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_errorRetain();
  }

  swift_errorRetain();
  return v2;
}

id sub_10000AD3C()
{
  v0 = [objc_opt_self() currentConnection];

  return v0;
}

void sub_10000AF70(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10000B014(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000B094(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10000B258(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  _Block_copy(v13);
  v17 = a1;
  sub_10000BDAC(v14, v16, v17, v13, a5, a6, a7, a8);
  _Block_release(v13);
  _Block_release(v13);
}

void sub_10000B334(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

id sub_10000B3E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DonationAgentEntitlementDecorator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000B4A8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (sub_10000A9F0())
  {
    v6 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10[4] = sub_10000C168;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10001F18C;
    v10[3] = &unk_10003D8E0;
    v8 = _Block_copy(v10);

    [v6 donateMeCardValues:isa completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    sub_10000AC18();
    v9 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v9);
  }
}

void sub_10000B648(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (sub_10000A9F0())
  {
    v6 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10[4] = sub_10000C100;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10001F1F8;
    v10[3] = &unk_10003D890;
    v8 = _Block_copy(v10);

    [v6 removeDonatedMeCardValuesForIdentifiers:isa completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    sub_10000AC18();
    v9 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v9);
  }
}

uint64_t sub_10000B7D8(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (sub_10000A9F0())
  {
    v5 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    v9[4] = sub_10000C0F8;
    v9[5] = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10000AF70;
    v9[3] = &unk_10003D840;
    v6 = _Block_copy(v9);

    [v5 fetchDonatedMeCard:v6];
    _Block_release(v6);
  }

  else
  {
    sub_10000AC18();
    v8 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v8);
  }
}

void sub_10000B93C(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (sub_10000A9F0())
  {
    v5 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    aBlock[4] = sub_10000C0F0;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B014;
    aBlock[3] = &unk_10003D7F0;
    v6 = _Block_copy(aBlock);

    [v5 synchronousDonatedMeCard:v6];
    _Block_release(v6);
  }

  else
  {
    sub_10000AC18();
    v7 = _convertErrorToNSError(_:)();

    v8 = [objc_opt_self() eitherWithRight:v7];

    (a2)[2](a2, v8);
  }
}

uint64_t sub_10000BACC(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (sub_10000A9F0())
  {
    v5 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    v9[4] = sub_10000C0E8;
    v9[5] = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10000B094;
    v9[3] = &unk_10003D7A0;
    v6 = _Block_copy(v9);

    [v5 meCardDonations:v6];
    _Block_release(v6);
  }

  else
  {
    sub_10000AC18();
    v8 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v8);
  }
}

uint64_t sub_10000BC30(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (sub_10000A9F0())
  {
    v9 = *(a3 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    v13[4] = sub_10000C168;
    v13[5] = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10001F18C;
    v13[3] = &unk_10003D750;
    v10 = _Block_copy(v13);

    [v9 changeFromAccount:a1 toAccount:a2 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    sub_10000AC18();
    v12 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v12);
  }
}

void sub_10000BDAC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  _Block_copy(a4);
  if (sub_10000A9F0())
  {
    v14 = *(a3 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    v15 = String._bridgeToObjectiveC()();
    v18[4] = a6;
    v18[5] = v13;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10001F18C;
    v18[3] = a7;
    v16 = _Block_copy(v18);

    [v14 *a8];
    _Block_release(v16);
  }

  else
  {
    sub_10000AC18();
    v17 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v17);
  }
}

uint64_t sub_10000BF30(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (sub_10000A9F0())
  {
    v5 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent33DonationAgentEntitlementDecorator_agent);
    v9[4] = sub_10000C0C8;
    v9[5] = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10001F18C;
    v9[3] = &unk_10003D660;
    v6 = _Block_copy(v9);

    [v5 removeAllRejectionsWithCompletionHandler:v6];
    _Block_release(v6);
  }

  else
  {
    sub_10000AC18();
    v8 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v8);
  }
}

uint64_t sub_10000C090()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C2B4()
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FBD0;

  sub_100003760(&qword_1000454E8, &qword_1000305E0);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0x6F666E69204D4953;
  *(v0 + 40) = 0xEA0000000000203ALL;
  print(_:separator:terminator:)();

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002FBD0;
  swift_errorRetain();
  sub_100003760(&qword_1000454F0, &qword_1000305E8);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0x203A726F727245;
  *(v2 + 40) = 0xE700000000000000;
  print(_:separator:terminator:)();
}

uint64_t sub_10000C458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10000C6B4();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_10000C534(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000C5A0()
{
  result = sub_10000C670();
  if (result)
  {
    v1 = objc_opt_self();
    v4[4] = sub_10000C2B4;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10000C458;
    v4[3] = &unk_10003D938;
    v2 = _Block_copy(v4);
    v3 = [v1 infoWithCompletion:v2];
    _Block_release(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000C69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C6B4()
{
  result = qword_1000458E0;
  if (!qword_1000458E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000458E0);
  }

  return result;
}

unint64_t sub_10000C700(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003760(&qword_100045538, &qword_1000306A8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_10000E95C(&v27, v29);
        sub_10000E95C(v29, v30);
        sub_10000E95C(v30, &v28);
        result = sub_100026A0C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100003850(v12);
          result = sub_10000E95C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_10000E95C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10000C958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003760(&unk_100045570, &unk_1000306E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000EC48(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E95C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E95C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E95C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000E95C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10000CC20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_100003760(&qword_100045538, &qword_1000306A8);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v15);
    ++v10;
    if (v7)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v17 = v16 | (v15 << 6);
        v18 = (*(a1 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v28 = *(*(a1 + 56) + 8 * v17);

        sub_100003760(a2, a3);
        swift_dynamicCast();
        sub_10000E95C(&v29, v31);
        sub_10000E95C(v31, v32);
        sub_10000E95C(v32, &v30);
        result = sub_100026A0C(v20, v19);
        if (v21)
        {
          v11 = (v4[6] + 16 * result);
          v12 = v11[1];
          *v11 = v20;
          v11[1] = v19;
          v13 = result;

          v14 = (v4[7] + 32 * v13);
          sub_100003850(v14);
          result = sub_10000E95C(&v30, v14);
          v10 = v15;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v4[2] >= v4[3])
          {
            goto LABEL_20;
          }

          *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v4[6] + 16 * result);
          *v22 = v20;
          v22[1] = v19;
          result = sub_10000E95C(&v30, (v4[7] + 32 * result));
          v23 = v4[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v4[2] = v25;
          v10 = v15;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v15 = v10;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_10000CE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC21contactsdonationagent19DonationPersistence_dataProxy);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC21contactsdonationagent19DonationPersistence_dataProxy);
  v8 = v7;
  v9 = [v6 dataWithContentsOfURL:v7];

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v20 = sub_10000EC2C;
  v21 = v10;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10000ECC8;
  v19 = &unk_10003DA28;
  v11 = _Block_copy(&v16);

  v12 = [v9 flatMap:v11];
  _Block_release(v11);

  v20 = sub_10000D40C;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10000D488;
  v19 = &unk_10003DA50;
  v13 = _Block_copy(&v16);

  v14 = [v12 recover:v13];
  _Block_release(v13);

  return v14;
}

id sub_10000D040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC21contactsdonationagent19DonationPersistence_dataProxy);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC21contactsdonationagent19DonationPersistence_dataProxy);
  v8 = v7;
  v9 = [v6 dataWithContentsOfURL:v7];

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v20 = sub_10000ECCC;
  v21 = v10;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10000ECC8;
  v19 = &unk_10003DAA0;
  v11 = _Block_copy(&v16);

  v12 = [v9 flatMap:v11];
  _Block_release(v11);

  v20 = sub_10000D418;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10000D488;
  v19 = &unk_10003DAC8;
  v13 = _Block_copy(&v16);

  v14 = [v12 recover:v13];
  _Block_release(v13);

  return v14;
}

id sub_10000D208(uint64_t a1, uint64_t (*a2)())
{
  v11[0] = 0;
  if (![objc_opt_self() objectWithData:a1 error:v11])
  {
    v5 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = _convertErrorToNSError(_:)();
    v4 = [objc_opt_self() futureWithError:v6];

    return v4;
  }

  v3 = v11[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003760(&qword_100045560, &qword_1000306D0);
  if (swift_dynamicCast())
  {
    v4 = a2();

    return v4;
  }

  result = [NSError errorWithDomain:CNDonationErrorDomain code:502 userInfo:0];
  if (result)
  {
    v8 = result;
    v9 = _convertErrorToNSError(_:)();
    v10 = [objc_opt_self() futureWithError:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000D424(uint64_t a1, Class *a2)
{
  v2 = [objc_allocWithZone(*a2) init];
  v3 = [objc_opt_self() futureWithResult:v2];

  return v3;
}

id sub_10000D490()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v17 - v8;
  v10 = objc_allocWithZone(NSString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = [v12 stringByExpandingTildeInPath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v1 + 8);
  v14(v6, v0);
  v15 = sub_10000D040(v9, sub_10000D684, 0);
  v14(v9, v0);
  return v15;
}

uint64_t sub_10000D684(uint64_t a1)
{
  v19 = &_swiftEmptyArrayStorage;
  if (*(a1 + 16))
  {
    v2 = sub_100026A0C(0x6E6F6974616E6F64, 0xE900000000000073);
    if (v3)
    {
      sub_10000EC48(*(a1 + 56) + 32 * v2, v18);
      sub_100003760(&qword_100045568, &qword_1000306D8);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = *(v17 + 16);
        if (v5)
        {
          v6 = 0;
          do
          {
            v7 = v6;
            while (1)
            {
              if (v7 >= v5)
              {
                __break(1u);
LABEL_19:
                __break(1u);
                return result;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_19;
              }

              v8 = *(v17 + 32 + 8 * v7);

              sub_10000C958(v9);
              v10 = objc_allocWithZone(CNDonationValue);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              v12 = [v10 initWithPropertyListRepresentation:isa];

              if (v12)
              {
                break;
              }

              ++v7;
              if (v6 == v5)
              {
                goto LABEL_17;
              }
            }

            v13 = v12;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v14 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          while (v6 != v5);
        }

LABEL_17:
      }
    }
  }

  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  v15 = Array._bridgeToObjectiveC()().super.isa;
  v16 = [objc_opt_self() futureWithResult:v15];

  return v16;
}

id sub_10000D904()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v17 - v8;
  v10 = objc_allocWithZone(NSString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = [v12 stringByExpandingTildeInPath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v1 + 8);
  v14(v6, v0);
  v15 = sub_10000CE78(v9, sub_10000DAF4, 0);
  v14(v9, v0);
  return v15;
}

uint64_t sub_10000DAF4(uint64_t a1)
{
  v2 = sub_1000288EC(_swiftEmptyArrayStorage);
  if (!*(a1 + 16) || (v3 = sub_100026A0C(0x736E6F6973726576, 0xE800000000000000), (v4 & 1) == 0) || (sub_10000EC48(*(a1 + 56) + 32 * v3, &v45), sub_100003760(&qword_100045560, &qword_1000306D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_33:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v38 = [objc_opt_self() futureWithResult:isa];

    return v38;
  }

  v5 = 0;
  v6 = v42;
  v7 = 1 << *(v42 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v42 + 64;
  v10 = v8 & *(v42 + 64);
  v11 = (v7 + 63) >> 6;
  while (1)
  {
    v12 = v5;
    if (!v10)
    {
      break;
    }

    v13 = v5;
LABEL_16:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_10000EC48(*(v6 + 56) + 32 * v16, v41);
    *&v42 = v19;
    *(&v42 + 1) = v18;
    sub_10000E95C(v41, &v43);

    v5 = v13;
LABEL_17:
    v45 = v42;
    v46[0] = v43;
    v46[1] = v44;
    v20 = *(&v42 + 1);
    if (!*(&v42 + 1))
    {

      goto LABEL_33;
    }

    v21 = v45;
    sub_10000E95C(v46, &v42);
    if (swift_dynamicCast())
    {
      v40 = *&v41[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v42 = v2;
      v23 = sub_100026A0C(v21, v20);
      v25 = v2[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_35;
      }

      if (v2[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v24 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v32 = v23;
          v33 = v24;
          sub_1000278C0();
          v23 = v32;
          if ((v33 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

LABEL_28:
        v31 = v23;

        v2 = v42;
        *(*(v42 + 56) + 8 * v31) = v40;
      }

      else
      {
        v29 = v24;
        sub_100026C48(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_100026A0C(v21, v20);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_37;
        }

        if (v29)
        {
          goto LABEL_28;
        }

LABEL_30:
        v2 = v42;
        *(v42 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v34 = (v2[6] + 16 * v23);
        *v34 = v21;
        v34[1] = v20;
        *(v2[7] + 8 * v23) = v40;
        v35 = v2[2];
        v27 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v27)
        {
          goto LABEL_36;
        }

        v2[2] = v36;
      }
    }

    else
    {
    }
  }

  if (v11 <= v5 + 1)
  {
    v14 = v5 + 1;
  }

  else
  {
    v14 = v11;
  }

  v5 = v14 - 1;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      v10 = 0;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      goto LABEL_17;
    }

    v10 = *(v9 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10000DE90()
{
  v1 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v24[0] = 0;
  v3 = [v1 dataWithObject:isa error:v24];

  v4 = v24[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = *&v0[OBJC_IVAR____TtC21contactsdonationagent19DonationPersistence_dataProxy];
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = v0;
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    v14 = [v8 writeData:v9 toURL:v12 options:1];

    v15 = swift_allocObject();
    v15[2] = v10;
    v24[4] = sub_10000E9A4;
    v24[5] = v15;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_10000ECC8;
    v24[3] = &unk_10003D9D8;
    v16 = _Block_copy(v24);
    v17 = v10;

    v18 = [v14 flatMap:v16];
    sub_10000636C(v5, v7);

    _Block_release(v16);
    return v18;
  }

  else
  {
    v20 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    result = [NSError errorWithDomain:CNDonationErrorDomain code:501 userInfo:0];
    if (result)
    {
      v21 = result;
      v22 = _convertErrorToNSError(_:)();
      v23 = [objc_opt_self() futureWithError:v22];

      return v23;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10000E15C()
{
  sub_10000E9C4();
  sub_1000038E8(0, &qword_100045450, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = [objc_opt_self() futureWithResult:isa];

  return v1;
}

id sub_10000E1DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void *sub_10000E250(unint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v35 - v11;
  sub_100003760(&qword_100045548, &qword_1000306B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002FBD0;
  *(inited + 32) = 0x6E6F6974616E6F64;
  v14 = inited + 32;
  v39 = inited;
  *(inited + 40) = 0xE900000000000073;
  if (a1 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = _swiftEmptyArrayStorage;
  v41 = v9;
  v42 = v12;
  v40 = v14;
  if (!v15)
  {
LABEL_13:
    v25 = v39;
    *(v39 + 48) = v16;
    v26 = sub_100028B10(v25);
    swift_setDeallocating();
    sub_10000630C(v40, &qword_100045550, &qword_1000306C0);
    v27 = objc_allocWithZone(NSString);
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 initWithString:v28];

    v30 = [v29 stringByExpandingTildeInPath];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v41;
    URL.init(fileURLWithPath:isDirectory:)();

    v32 = v42;
    URL.appendingPathComponent(_:isDirectory:)();
    v33 = *(v4 + 8);
    v33(v31, v3);
    sub_10000CC20(v26, &qword_100045558, &qword_1000306C8);

    v34 = sub_10000DE90();

    v33(v32, v3);
    return v34;
  }

  v43 = _swiftEmptyArrayStorage;
  result = sub_1000267AC(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v36 = v4;
    v37 = v1;
    v38 = v3;
    v18 = 0;
    v16 = v43;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 propertyListRepresentation];
      v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000267AC((v23 > 1), v24 + 1, 1);
        v16 = v43;
      }

      ++v18;
      v16[2] = v24 + 1;
      v16[v24 + 4] = v22;
    }

    while (v15 != v18);
    v3 = v38;
    v4 = v36;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_10000E62C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v21 - v10;
  sub_100003760(&qword_100045528, &qword_100030698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002FBD0;
  *(inited + 32) = 0x736E6F6973726576;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;

  v13 = sub_1000289E8(inited);
  swift_setDeallocating();
  sub_10000630C(inited + 32, &qword_100045530, &qword_1000306A0);
  v14 = objc_allocWithZone(NSString);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithString:v15];

  v17 = [v16 stringByExpandingTildeInPath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();
  v18 = *(v3 + 8);
  v18(v8, v2);
  sub_10000CC20(v13, &qword_100045540, &qword_1000306B0);

  v19 = sub_10000DE90();

  v18(v11, v2);
  return v19;
}

id sub_10000E8F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DonationPersistence();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_OWORD *sub_10000E95C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E96C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E9C4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URLResourceValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  v12 = objc_allocWithZone(NSString);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithString:v13];

  v15 = [v14 stringByExpandingTildeInPath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.setResourceValues(_:)();
  (*(v1 + 8))(v5, v0);
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_10000EBF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EC48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000ECD0()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_notificationToken;
  v2 = *&v0[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_notificationToken];
  if (v2)
  {
    [v2 cancel];
  }

  v3 = *&v0[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_observable];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v12[4] = sub_10000F21C;
  v12[5] = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001F570;
  v12[3] = &unk_10003DB18;
  v6 = _Block_copy(v12);
  v7 = v0;

  v8 = [v4 observerWithResultBlock:v6];
  _Block_release(v6);
  v9 = [v3 subscribe:v8];
  swift_unknownObjectRelease();
  v10 = *&v0[v1];
  *&v0[v1] = v9;
  return swift_unknownObjectRelease();
}

void *sub_10000EE24(uint64_t a1, char *a2)
{
  sub_10000EC48(a1, aBlock);
  sub_10000F23C();
  swift_dynamicCast();
  v3 = v20;
  v4 = [v20 BOOLValue];

  v5 = *&a2[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress];
  if (v5)
  {
    v6 = *&a2[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress + 8];

    v5(v4 ^ 1);
    sub_10000F288(v5);
  }

  v7 = OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_delayToken;
  result = *&a2[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_delayToken];
  if (!v4)
  {
    if (result)
    {
      [result cancel];
    }

    v10 = [*&a2[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_schedulerProvider] backgroundScheduler];
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = 0;
    aBlock[4] = sub_10000F2D0;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001EB44;
    aBlock[3] = &unk_10003DB68;
    v12 = _Block_copy(aBlock);
    v13 = a2;

    v14 = [v10 afterDelay:v12 performBlock:30.0];
    swift_unknownObjectRelease();
    _Block_release(v12);
    v15 = *&a2[v7];
    *&a2[v7] = v14;
    return swift_unknownObjectRelease();
  }

  if (result)
  {
    [result cancel];
    v9 = *&a2[v7];
    *&a2[v7] = 0;
    return swift_unknownObjectRelease();
  }

  v16 = &a2[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable];
  v17 = *&a2[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable];
  if (v17)
  {
    v18 = *(v16 + 1);

    v17(1);
    return sub_10000F288(v17);
  }

  return result;
}

uint64_t sub_10000F04C(uint64_t result, char a2)
{
  v2 = *(result + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable);
  if (v2)
  {
    v4 = *(result + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable + 8);

    v2(a2 & 1);

    return sub_10000F288(v2);
  }

  return result;
}

id sub_10000F0F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DonationPreferencesMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F1E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000F23C()
{
  result = qword_100045450;
  if (!qword_100045450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045450);
  }

  return result;
}

uint64_t sub_10000F288(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000F298()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10000F2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_notificationToken] = 0;
  *&v3[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_delayToken] = 0;
  swift_getObjectType();
  v9 = [swift_getObjCClassFromMetadata() observableWithPreferences:a1 notificationCenter:a2 schedulerProvider:a3];
  *&v3[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_observable] = v9;
  *&v3[OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_schedulerProvider] = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for DonationPreferencesMonitor();
  return objc_msgSendSuper2(&v11, "init");
}

void sub_10000F3AC(unint64_t a1, char *a2)
{
  if (sub_100014168(a1, _swiftEmptyArrayStorage))
  {
    v4 = *&a2[OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_agent];
    v5 = CNDonationSIMCardBundleIdentifier;
    aBlock[4] = sub_10000F598;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001F1F8;
    aBlock[3] = &unk_10003DB90;
    v6 = _Block_copy(aBlock);
    v7 = v5;
    [v4 removeDonatedMeCardValuesWithBundleIdentifier:v7 completionHandler:v6];
    _Block_release(v6);
  }

  else
  {
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = OBJC_IVAR____TtC21contactsdonationagent14SIMCardMonitor_agent;
      v14 = a2;
      if (!i)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(a1 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_10000FADC(v11, *&a2[v9]);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }
}

void sub_10000F598(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    sub_100003760(&unk_100044F20, &unk_10002FCB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10002FBD0;
    _StringGuts.grow(_:)(43);
    v4._object = 0x8000000100031B90;
    v4._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v4);
    if (a2)
    {
      sub_100003760(&qword_100045F70, &qword_100030DB0);
      _print_unlocked<A, B>(_:_:)();
      *(v3 + 56) = &type metadata for String;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0xE000000000000000;
      print(_:separator:terminator:)();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10000F6AC(uint64_t result)
{
  if (result)
  {
    sub_100003760(&unk_100044F20, &unk_10002FCB0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10002FBD0;
    _StringGuts.grow(_:)(38);
    v2._object = 0x8000000100031BE0;
    v2._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v2);
    sub_100003760(&qword_100045F70, &qword_100030DB0);
    _print_unlocked<A, B>(_:_:)();
    *(v1 + 56) = &type metadata for String;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

  return result;
}

id sub_10000F7EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIMCardMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000F8A0()
{
  v0 = sub_100003760(&qword_100044F50, &qword_100030240);
  v1 = *(*(v0 - 8) + 64);
  v3 = __chkstk_darwin(v0 - 8, v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - v7;
  v9 = CNDonationSIMCardBundleIdentifier;
  Date.init()();
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  static Date.distantFuture.getter();
  v12(v5, 0, 1, v10);
  v13 = String._bridgeToObjectiveC()();
  v14 = *(v11 + 48);
  isa = 0;
  if (v14(v8, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
  }

  if (v14(v5, 1, v10) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v5, v10);
  }

  v17 = [objc_allocWithZone(CNDonationOrigin) initWithBundleIdentifier:v9 donationIdentifier:v13 donationDate:isa expirationDate:v16];

  return v17;
}

void sub_10000FADC(void *a1, void *a2)
{
  v4 = [a1 value];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = [objc_allocWithZone(CNPhoneNumber) initWithStringValue:v4];

  if (v5)
  {
    v6 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10000F8A0();

    v8 = [objc_opt_self() donationValueWithPhoneNumber:v5 label:CNLabelPhoneNumberiPhone origin:v7];
    sub_100003760(&unk_100045620, &unk_100030750);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100030440;
    *(v9 + 32) = v8;
    sub_100004A1C();
    v10 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19[4] = sub_10000F6AC;
    v19[5] = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10001F18C;
    v19[3] = &unk_10003DBB8;
    v12 = _Block_copy(v19);
    [a2 donateMeCardValues:isa completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    sub_100003760(&unk_100044F20, &unk_10002FCB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10002FBD0;
    _StringGuts.grow(_:)(33);

    v14 = [a1 value];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = 0xD00000000000001FLL;
    *(v13 + 40) = 0x8000000100031BC0;
    print(_:separator:terminator:)();
  }
}

uint64_t sub_10000FDE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000FE08()
{
  [*&v0[OBJC_IVAR____TtC21contactsdonationagent18MaintenanceService_logger] maintenanceServiceWillStop];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaintenanceService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000FFB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaintenanceService.ListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000FFF4()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent18MaintenanceService_listener;
  v2 = objc_allocWithZone(NSXPCListener);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithMachServiceName:v3];

  *&v0[v1] = v4;
  *&v0[OBJC_IVAR____TtC21contactsdonationagent18MaintenanceService_listenerDelegate] = 0;
  v5 = OBJC_IVAR____TtC21contactsdonationagent18MaintenanceService_agent;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for MaintenanceAgent()) init];
  v6 = OBJC_IVAR____TtC21contactsdonationagent18MaintenanceService_logger;
  v7 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  *&v0[v6] = v7;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MaintenanceService();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100010180(void *a1)
{
  v3 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  [v3 acceptingConnectionFromProcess:{objc_msgSend(a1, "processIdentifier")}];
  swift_unknownObjectRelease();
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DonationMaintenanceProtocol];
  [a1 setExportedInterface:v4];

  [a1 setExportedObject:*(v1 + OBJC_IVAR____TtCC21contactsdonationagent18MaintenanceService16ListenerDelegate_agent)];
  [a1 resume];
  return 1;
}

uint64_t sub_100010290()
{
  v1 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v104 = &v90 - v4;
  v103 = type metadata accessor for CNDonationValue.Value(0);
  v5 = *(v103 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v103, v7);
  v102 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v101 = &v90 - v11;
  v105 = type metadata accessor for NameSuppressionStatus(0);
  v12 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105, v13);
  v109 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003760(&qword_1000457A8, "W");
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v100 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v90 - v21;
  v23 = type metadata accessor for CollectedSuppressionResult(0);
  v24 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23, v25);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v26, v29);
  v32 = &v90 - v31;
  __chkstk_darwin(v30, v33);
  v111 = &v90 - v34;
  v93 = v0;
  sub_100011DB8(v0 + OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_curatedName, v22, &qword_1000457A8, "W");
  *&v32[*(v23 + 20)] = &_swiftEmptySetSingleton;
  v110 = v23;
  *&v32[*(v23 + 24)] = &_swiftEmptySetSingleton;
  v35 = type metadata accessor for PersonNameComponents();
  v36 = *(v35 - 8);
  v37 = *(v36 + 6);
  v98 = v36 + 48;
  v97 = v37;
  if (v37(v22, 1, v35) == 1)
  {
    sub_100011CE8(v22);
  }

  else
  {
    (*(v36 + 4))(v32, v22, v35);
  }

  v99 = v35;
  swift_storeEnumTagMultiPayload();
  result = sub_100011E20(v32, v111, type metadata accessor for CollectedSuppressionResult);
  v91 = OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_filteredDonations;
  v39 = *(v93 + OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_filteredDonations);
  if (v39 >> 62)
  {
    goto LABEL_62;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (2)
    {
      v39 = *(v93 + v91);
      sub_100011D50(v111, v28, type metadata accessor for CollectedSuppressionResult);
      v113 = &_swiftEmptyArrayStorage;
      if (v39 >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v44)
      {
        v88 = &_swiftEmptyArrayStorage;
LABEL_59:
        sub_100011E88(v28, type metadata accessor for CollectedSuppressionResult);

        sub_100011E88(v111, type metadata accessor for CollectedSuppressionResult);
        v89 = *(v93 + v91);
        *(v93 + v91) = v88;
      }

      v45 = 0;
      v107 = v39 & 0xFFFFFFFFFFFFFF8;
      v108 = v39 & 0xC000000000000001;
      v90 = v39;
      v106 = v39 + 32;
      v96 = (v5 + 56);
      v95 = (v5 + 48);
      v94 = (v36 + 56);
      v92 = (v36 + 32);
      while (1)
      {
        if (v108)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v45 >= *(v107 + 16))
          {
            goto LABEL_61;
          }

          v47 = *(v106 + 8 * v45);
        }

        v36 = v47;
        if (__OFADD__(v45++, 1))
        {
          break;
        }

        v5 = v44;
        v49 = *&v28[*(v110 + 20)];
        v50 = [v47 origin];
        v51 = [v50 bundleIdentifier];

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        if (*(v49 + 16))
        {
          v55 = *(v49 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v56 = Hasher._finalize()();
          v57 = -1 << *(v49 + 32);
          v58 = v56 & ~v57;
          if ((*(v49 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
          {
            v39 = ~v57;
            do
            {
              v59 = (*(v49 + 48) + 16 * v58);
              v60 = *v59 == v52 && v59[1] == v54;
              if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_52;
              }

              v58 = (v58 + 1) & v39;
            }

            while (((*(v49 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0);
          }
        }

        v61 = [v36 origin];
        v62 = [v61 clusterIdentifier];

        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        if ((v63 || v65 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v66 = *&v28[*(v110 + 24)];
          if (*(v66 + 16))
          {
            v67 = *(v66 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v68 = Hasher._finalize()();
            v69 = -1 << *(v66 + 32);
            v70 = v68 & ~v69;
            if ((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
            {
              v39 = ~v69;
              while (1)
              {
                v71 = (*(v66 + 48) + 16 * v70);
                v72 = *v71 == v63 && v71[1] == v65;
                if (v72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v70 = (v70 + 1) & v39;
                if (((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
                {
                  goto LABEL_45;
                }
              }

LABEL_52:

              goto LABEL_19;
            }
          }
        }

LABEL_45:

        sub_100011D50(v28, v109, type metadata accessor for NameSuppressionStatus);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            sub_100011E88(v109, type metadata accessor for NameSuppressionStatus);
LABEL_49:
            v74 = _s11ValueCasterCMa(0);
            v75 = objc_allocWithZone(v74);
            v76 = v103;
            (*v96)(&v75[OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value], 1, 1, v103);
            v112.receiver = v75;
            v112.super_class = v74;
            v77 = objc_msgSendSuper2(&v112, "init");
            [v36 acceptDonationValueVisitor:v77];
            v78 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
            swift_beginAccess();
            v79 = v77 + v78;
            v80 = v104;
            sub_100011DB8(v79, v104, &qword_100045200, &qword_1000303D0);

            result = (*v95)(v80, 1, v76);
            if (result == 1)
            {
              goto LABEL_66;
            }

            v81 = v80;
            v82 = v101;
            sub_100011E20(v81, v101, type metadata accessor for CNDonationValue.Value);
            v83 = v82;
            v84 = v102;
            sub_100011E20(v83, v102, type metadata accessor for CNDonationValue.Value);
            v85 = swift_getEnumCaseMultiPayload();
            v39 = v100;
            v86 = v99;
            if (v85)
            {
              (*v94)(v100, 1, 1, v99);
              sub_100011E88(v84, type metadata accessor for CNDonationValue.Value);
            }

            else
            {
              (*v92)(v100, v84, v99);
              (*v94)(v39, 0, 1, v86);
            }

            v87 = v97(v39, 1, v86);
            sub_100011CE8(v39);
            if (v87 != 1)
            {

              goto LABEL_19;
            }

            goto LABEL_18;
          }

          sub_100011E88(v109, type metadata accessor for NameSuppressionStatus);
        }

LABEL_18:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = v113[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_19:
        v44 = v5;
        if (v45 == v5)
        {
          v88 = v113;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = _CocoaArrayWrapper.endIndex.getter();
      v40 = result;
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_6:
    if (v40 >= 1)
    {

      for (i = 0; i != v40; ++i)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v42 = *(v39 + 8 * i + 32);
        }

        v43 = v42;
        sub_10002CAD0(v42);
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_100010DA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_curatedEmailAddresses);
  v2 = type metadata accessor for ContactRebuilder.EmailAddressCollector();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations] = _swiftEmptyArrayStorage;
  sub_100011948(v1);
  *&v3[OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_blacklistedEmailAddresses] = v4;
  v18.receiver = v3;
  v18.super_class = v2;
  v5 = objc_msgSendSuper2(&v18, "init");
  v17 = OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_filteredDonations;
  v6 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_filteredDonations);
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v8 = v5;

    if (!v7)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v6 + 8 * v9 + 32);
      }

      v10 = v5;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v5 acceptDonationValueVisitor:v8];

      ++v9;
      if (v11 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v16 = v5;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v16;
  }

LABEL_12:

  v12 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
  swift_beginAccess();
  v13 = *&v8[v12];

  v14 = *(v0 + v17);
  *(v0 + v17) = v13;
}

uint64_t sub_100010F5C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ContactBuilder()) init];
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_filteredDonations);
  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = OBJC_IVAR____TtC21contactsdonationagent14ContactBuilder_donations;
    v19 = v1;

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      swift_beginAccess();
      v9 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_14:

  v10 = [objc_allocWithZone(type metadata accessor for ContactBuilder.DonationVisitor()) init];
  result = swift_beginAccess();
  v12 = *(v1 + v4);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_27:

LABEL_28:
    v17 = *&v10[OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact];

    return v17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (v13 >= 1)
  {

    for (j = 0; j != v13; ++j)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v12 + 8 * j + 32);
      }

      v16 = v15;
      [v15 acceptDonationValueVisitor:v10];
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

id sub_10001173C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ContactRebuilder()
{
  result = qword_1000456F0;
  if (!qword_1000456F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001182C()
{
  sub_1000118CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000118CC()
{
  if (!qword_100045700)
  {
    type metadata accessor for PersonNameComponents();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100045700);
    }
  }
}

void sub_100011948(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = CNEmailAddressExpandAliasedDomains;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v7 = String._bridgeToObjectiveC()();
      v8 = (*(v3 + 16))(v3, v7);

      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = *(v9 + 16);
      v11 = *(v2 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= *(v2 + 3) >> 1)
      {
        if (!*(v9 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v2 = sub_10002642C(isUniquelyReferenced_nonNull_native, v14, 1, v2);
        if (!*(v9 + 16))
        {
LABEL_3:

          if (v10)
          {
            goto LABEL_27;
          }

          goto LABEL_4;
        }
      }

      if ((*(v2 + 3) >> 1) - *(v2 + 2) < v10)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v15 = *(v2 + 2);
        v16 = __OFADD__(v15, v10);
        v17 = v15 + v10;
        if (v16)
        {
          goto LABEL_29;
        }

        *(v2 + 2) = v17;
      }

LABEL_4:
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  v18 = *(v2 + 2);
  if (v18)
  {
    v19 = CNEmailAddressNormalize;
    sub_10002678C(0, v18, 0);
    v20 = 0;
    v21 = (v2 + 40);
    while (v20 < *(v2 + 2))
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      v24 = String._bridgeToObjectiveC()();
      v25 = (*(v19 + 16))(v19, v24);

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v30 = *(&_swiftEmptyArrayStorage + 2);
      v29 = *(&_swiftEmptyArrayStorage + 3);
      if (v30 >= v29 >> 1)
      {
        sub_10002678C((v29 > 1), v30 + 1, 1);
      }

      ++v20;
      *(&_swiftEmptyArrayStorage + 2) = v30 + 1;
      v31 = &_swiftEmptyArrayStorage + 16 * v30;
      *(v31 + 4) = v26;
      *(v31 + 5) = v28;
      v21 += 2;
      if (v18 == v20)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_24:

    sub_100016C4C(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100011C18(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_10001F270(a2, a3, *(v4 + OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_blacklistedEmailAddresses));
  if ((result & 1) == 0)
  {
    v7 = OBJC_IVAR____TtCC21contactsdonationagent16ContactRebuilderP33_2C692544C68117D64033B26435CA0EDA21EmailAddressCollector_donations;
    swift_beginAccess();
    v8 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v4 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((*(v4 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100011CE8(uint64_t a1)
{
  v2 = sub_100003760(&qword_1000457A8, "W");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011DB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003760(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id CNMetricsAnalyzerEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNMetricsAnalyzerEngine.init()()
{
  Logger.init(subsystem:category:)();
  v1 = [objc_allocWithZone(CNContactStore) init];
  *&v0[OBJC_IVAR____TtC21contactsdonationagent23CNMetricsAnalyzerEngine_contactStore] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CNMetricsAnalyzerEngine();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t type metadata accessor for CNMetricsAnalyzerEngine()
{
  result = qword_1000457E0;
  if (!qword_1000457E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NSMutableDictionary __swiftcall CNMetricsAnalyzerEngine.contactsAnalysis()()
{
  v0 = sub_1000124AC();
  v1.super.super.isa = CNMetricsAnalyzerEngine.favoritesAnalysis()().super.super.isa;
  sub_100012B2C();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000140CC;
  *(v5 + 24) = v4;
  v18 = sub_100013730;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100012358;
  v17 = &unk_10003DC30;
  v6 = _Block_copy(&v14);
  v7 = v3;

  [v0 enumerateKeysAndObjectsUsingBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100013770;
    *(v10 + 24) = v9;
    v18 = sub_1000140D4;
    v19 = v10;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100012358;
    v17 = &unk_10003DCA8;
    v11 = _Block_copy(&v14);
    v12 = v7;

    [(objc_class *)v1.super.super.isa enumerateKeysAndObjectsUsingBlock:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[3] = swift_getObjectType();
  v11[0] = a2;
  v10[3] = swift_getObjectType();
  v10[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8(v11, v10, a4);
  sub_100003850(v10);
  return sub_100003850(v11);
}

void sub_1000123F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100003A34(a2, a2[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000EC48(a1, v8);
  swift_dynamicCast();
  v7 = String._bridgeToObjectiveC()();

  [a4 setValue:v6 forKey:v7];
  swift_unknownObjectRelease();
}

id sub_1000124AC()
{
  v0 = type metadata accessor for ContactDetails();
  v1 = *(*(v0 - 1) + 64);
  __chkstk_darwin(v0, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableDictionary) init];
  if (qword_1000446D8 != -1)
  {
    swift_once();
    v6 = sub_100013DD4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v5 setValue:isa forKey:CNMetricsKeyMeCardSet];

    return v5;
  }

  v6 = sub_100013DD4();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = v6;
  sub_100004AFC(v7, v4);
  v8 = *&v4[v0[20]] > 0;
  v9 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v9 forKey:CNMetricsKeyMeCardEmailSet];

  LODWORD(v9) = *&v4[v0[19]] > 0;
  v10 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v10 forKey:CNMetricsKeyMeCardPhoneSet];

  LODWORD(v10) = *&v4[v0[21]] > 0;
  v11 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v11 forKey:CNMetricsKeyMeCardPostalAddressSet];

  v12 = v4[v0[7]];
  v13 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v13 forKey:CNMetricsKeyMeCardFamilyNameSet];

  v14 = v4[v0[5]];
  v15 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v15 forKey:CNMetricsKeyMeCardGivenNameSet];

  v16 = v4[v0[13]];
  v17 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v17 forKey:CNMetricsKeyMeCardBirthdaySet];

  v18 = v4[v0[14]];
  v19 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v19 forKey:CNMetricsKeyMeCardBirthdayWithYearSet];

  v20 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v20 forKey:CNMetricsKeyMeCardEmailPhoneSet];

  v21 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v21 forKey:CNMetricsKeyMeCardEmailPhonePostalSet];

  v22 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v22 forKey:CNMetricsKeyMeCardEmailPhonePostalBirthdaySet];

  v23 = *&v4[v0[23]];
  v24 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v24 forKey:CNMetricsKeyMeCardRelationshipsSet];

  v25 = Int._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v25 forKey:CNMetricsKeyMeCardRelationshipsCount];

  v26 = v4[v0[16]];
  v27 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v27 forKey:CNMetricsKeyMeCardPhotoSet];

  v28 = v4[v0[18]];
  v29 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:v29 forKey:CNMetricsKeyMeCardMemojiMetadataSet];

  sub_100013D74(v4, type metadata accessor for ContactDetails);
  return v5;
}

NSMutableDictionary __swiftcall CNMetricsAnalyzerEngine.favoritesAnalysis()()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  v2 = [objc_allocWithZone(CNFavorites) initWithContactStore:*(v0 + OBJC_IVAR____TtC21contactsdonationagent23CNMetricsAnalyzerEngine_contactStore)];
  v3 = [v2 entries];
  sub_10001378C();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_7:

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v1 setValue:isa forKey:CNMetricsKeyFavoritesCount];

    return v1;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = type metadata accessor for FavoritesDetails();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC21contactsdonationagent16FavoritesDetails_favoritesEntries] = v4;
  v19.receiver = v6;
  v19.super_class = v5;
  v7 = objc_msgSendSuper2(&v19, "init");
  v8 = v7;
  v9 = *&v7[OBJC_IVAR____TtC21contactsdonationagent16FavoritesDetails_favoritesEntries];
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v18 = *&v7[OBJC_IVAR____TtC21contactsdonationagent16FavoritesDetails_favoritesEntries];
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = Int._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v11 forKey:CNMetricsKeyFavoritesCount];

  sub_100009390();
  v12 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v12 forKey:CNMetricsKeyFavoritesPhoneFraction];

  sub_10000939C();
  v13 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v13 forKey:CNMetricsKeyFavoritesFaceTimeFraction];

  sub_1000093A8();
  v14 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v14 forKey:CNMetricsKeyFavoritesMessageFraction];

  sub_1000095F0();
  v15 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v15 forKey:CNMetricsKeyFavoritesHasNonPhone];

  return v1;
}

void sub_100012B2C()
{
  v1 = type metadata accessor for ContactDetails();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AllContactsInBatches(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AddressBookDetails(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = [objc_allocWithZone(NSMutableDictionary) init];
  v113 = "ssing entitlement";
  Logger.init(subsystem:category:)();
  v106 = v13[7];
  *&v17[v106] = 0;
  *&v17[v13[8]] = 0;
  v99 = v13[9];
  *&v17[v99] = 0;
  v103 = v13[10];
  *&v17[v103] = 0;
  *&v17[v13[11]] = 0;
  *&v17[v13[12]] = 0;
  *&v17[v13[13]] = 0;
  *&v17[v13[14]] = 0;
  v98 = v13[15];
  *&v17[v98] = 0;
  *&v17[v13[16]] = 0;
  *&v17[v13[17]] = 0;
  *&v17[v13[18]] = 0;
  v107 = v13[19];
  *&v17[v107] = 0;
  v104 = v13[20];
  *&v17[v104] = 0;
  v97 = v13[21];
  *&v17[v97] = 0;
  v100 = v13[22];
  *&v17[v100] = 0;
  v101 = v13[23];
  *&v17[v101] = 0;
  v102 = v13[24];
  *&v17[v102] = 0;
  v18 = &v17[v13[25]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v108 = v18;
  v19 = &v17[v13[26]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v109 = v19;
  v20 = &v17[v13[27]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v110 = v20;
  v21 = &v17[v13[28]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v105 = v21;
  v22 = &v17[v13[29]];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v111 = v22;
  v23 = v13[30];
  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 56);
  v25(&v17[v23], 1, 1, v24);
  v25(&v17[v13[31]], 1, 1, v24);
  v26 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent23CNMetricsAnalyzerEngine_contactStore);
  Logger.init(subsystem:category:)();
  v27 = &v11[v7[7]];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *&v11[v7[8]] = v26;
  *&v11[v7[9]] = 50;
  v28 = sub_100016E28();
  if (v28)
  {
    v29 = v28;
    do
    {
      if (v29 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
        if (!v30)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v30)
        {
          goto LABEL_3;
        }
      }

      if (v30 < 1)
      {
        __break(1u);
        goto LABEL_45;
      }

      v31 = 0;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v32 = *(v29 + 8 * v31 + 32);
        }

        ++v31;
        v33 = v32;
        sub_100004AFC(v33, v5);
        sub_1000177B8(v5);

        sub_100013D74(v5, type metadata accessor for ContactDetails);
      }

      while (v30 != v31);
LABEL_3:

      v29 = sub_100016E28();
    }

    while (v29);
  }

  sub_100013D74(v11, type metadata accessor for AllContactsInBatches);
  v34 = *&v17[v106];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v36 = v112;
  [v112 setValue:isa forKey:CNMetricsKeyContactsCount];

  v37 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v36 setValue:v37 forKey:CNMetricsKeyHasNoContacts];

  if (v34)
  {
    v38 = *&v17[v98] / v34;
    v39 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v39 forKey:CNMetricsKeyCompanyContactFraction];

    v40 = *&v17[v99] / v34;
  }

  else
  {
    v41 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v41 forKey:CNMetricsKeyCompanyContactFraction];
  }

  v43 = v110;
  v42 = v111;
  v45 = v108;
  v44 = v109;
  v46 = Double._bridgeToObjectiveC()().super.super.isa;
  [v36 setValue:v46 forKey:CNMetricsKeyCompanyDetailsFraction];

  if (v34)
  {
    v47 = *&v17[v100] / v34;
    v48 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v48 forKey:CNMetricsKeyPhotoFraction];

    v49 = *&v17[v101] / v34;
  }

  else
  {
    v50 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v50 forKey:CNMetricsKeyPhotoFraction];
  }

  v51 = Double._bridgeToObjectiveC()().super.super.isa;
  [v36 setValue:v51 forKey:CNMetricsKeyCustomCropRectFraction];

  if (v34)
  {
    v52 = *&v17[v103] / v34;
    v53 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v53 forKey:CNMetricsKeyHasPhoneticNameFraction];

    v54 = *&v17[v102] / v34;
  }

  else
  {
    v55 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v55 forKey:CNMetricsKeyHasPhoneticNameFraction];
  }

  v56 = Double._bridgeToObjectiveC()().super.super.isa;
  [v36 setValue:v56 forKey:CNMetricsKeyMemojiMetadataFraction];

  v57 = *&v17[v107];
  v58 = Double._bridgeToObjectiveC()().super.super.isa;
  [v36 setValue:v58 forKey:CNMetricsKeyHasBirthdayFraction];

  if (v57 >= 1 && __OFSUB__(v57, *&v17[v104]))
  {
LABEL_45:
    __break(1u);
  }

  else
  {
    v59 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v59 forKey:CNMetricsKeyHasBirthdayYearlessFraction];

    if (v34)
    {
      v60 = *&v17[v97] / v34;
    }

    v61 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v61 forKey:CNMetricsKeyHasNonGregorianBirthdayFraction];

    v62 = v45[2];
    v63 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v63 forKey:CNMetricsKeyEmailFraction];

    v64 = v45[1];
    if (v62)
    {
      v65 = *v45 / v62;
    }

    v66 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v66 forKey:CNMetricsKeyEmailAverageCount];

    v67 = Int._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v67 forKey:CNMetricsKeyEmailMaxCount];

    v68 = v44[2];
    v69 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v69 forKey:CNMetricsKeyPhoneFraction];

    v70 = v44[1];
    if (v68)
    {
      v71 = *v44 / v68;
    }

    v72 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v72 forKey:CNMetricsKeyPhoneAverageCount];

    v73 = Int._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v73 forKey:CNMetricsKeyPhoneMaxCount];

    v74 = v43[2];
    v75 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v75 forKey:CNMetricsKeyPostalFraction];

    v76 = v43[1];
    if (v74)
    {
      v77 = *v43 / v74;
    }

    v78 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v78 forKey:CNMetricsKeyPostalAverageCount];

    v79 = Int._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v79 forKey:CNMetricsKeyPostalMaxCount];

    v80 = v42[2];
    v81 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v81 forKey:CNMetricsKeySocialsFraction];

    v82 = v42[1];
    if (v80)
    {
      v83 = *v42 / v80;
    }

    v84 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v84 forKey:CNMetricsKeySocialsAverageCount];

    v85 = Int._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v85 forKey:CNMetricsKeySocialsMaxCount];

    v86 = v105;
    v87 = v105[2];
    v88 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v88 forKey:CNMetricsKeyRelationsFraction];

    v89 = v86[1];
    if (v87)
    {
      v90 = *v86 / v87;
    }

    v91 = Double._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v91 forKey:CNMetricsKeyRelationsAverageCount];

    v92 = Int._bridgeToObjectiveC()().super.super.isa;
    [v36 setValue:v92 forKey:CNMetricsKeyRelationsMaxCount];

    sub_100017428();
    if (v93)
    {
      v94 = 0;
    }

    else
    {
      v94 = Int._bridgeToObjectiveC()().super.super.isa;
    }

    [v36 setValue:v94 forKey:CNMetricsKeyOldestContactAge];
    swift_unknownObjectRelease();
    sub_1000175F0();
    if (v95)
    {
      v96 = 0;
    }

    else
    {
      v96 = Int._bridgeToObjectiveC()().super.super.isa;
    }

    [v36 setValue:v96 forKey:CNMetricsKeyLatestEditAge];
    swift_unknownObjectRelease();
    sub_100013D74(v17, type metadata accessor for AddressBookDetails);
  }
}

uint64_t sub_1000136E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100013758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001378C()
{
  result = qword_1000457B0;
  if (!qword_1000457B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000457B0);
  }

  return result;
}

NSMutableDictionary __swiftcall CNMetricsAnalyzerEngine.postersAnalysis()()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent23CNMetricsAnalyzerEngine_contactStore);
  v3 = type metadata accessor for PosterDetailsDataProvider();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = v2;
  Logger.init(subsystem:category:)();
  *(v6 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___meCard) = 1;
  v8 = v6 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___numberOfContacts;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper) = 0;
  *(v6 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_store) = v7;

  v10 = sub_100013BE8(v9);
  sub_10001A4B0();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:isa forKey:CNMetricsKeyPosterMeCardType];

  v12 = sub_10001A564();
  if (v12 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = Int._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v14 forKey:CNMetricsKeyPosterCount];

  v15 = *&v10[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata];
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v26 = *&v10[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata];
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = *&v10[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 24];
  v18 = *&v10[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 32];
  sub_100003A34(&v10[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider], v17);
  (*(v18 + 16))(v17, v18);
  v19 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v19 forKey:CNMetricsKeyPosterFractionWithAny];

  sub_1000199EC();
  v20 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v20 forKey:CNMetricsKeyPosterFractionMemoji];

  sub_100019C28();
  v21 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v21 forKey:CNMetricsKeyPosterFractionPhoto];

  sub_100019E64();
  v22 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v22 forKey:CNMetricsKeyPosterFractionMonogram];

  sub_10001A0A0();
  v23 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v23 forKey:CNMetricsKeyPosterFractionCustom];

  sub_10001A2A8();
  v24 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setValue:v24 forKey:CNMetricsKeyPosterFractionAutoUpdating];

  return v1;
}

id CNMetricsAnalyzerEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNMetricsAnalyzerEngine();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100013BE8(uint64_t a1)
{
  v7[3] = type metadata accessor for PosterDetailsDataProvider();
  v7[4] = &off_10003DDD8;
  v7[0] = a1;
  v2 = type metadata accessor for PosterDetails();
  v3 = objc_allocWithZone(v2);
  Logger.init(subsystem:category:)();
  v3[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___meCardPosterType] = 5;
  *&v3[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata] = 0;
  sub_100003B68(v7, &v3[OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider]);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100003850(v7);
  return v4;
}

uint64_t sub_100013CD8()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100013D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100013DD4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent23CNMetricsAnalyzerEngine_contactStore);
  if (qword_1000446D8 != -1)
  {
    swift_once();
  }

  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21 = 0;
  v9 = [v7 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v21];

  v10 = v21;
  if (!v9)
  {
    v11 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC21contactsdonationagent23CNMetricsAnalyzerEngine_logger, v1);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_10001DC5C(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not fetch Me Card %s", v14, 0xCu);
      sub_100003850(v15);
    }

    else
    {
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  return v9;
}

uint64_t sub_1000140D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100014168(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10000C6B4();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id sub_1000143A8()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___schedulerProvider;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___schedulerProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___schedulerProvider);
  }

  else
  {
    v2 = [objc_opt_self() defaultProvider];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_100014428()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___logger;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___logger))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___logger);
  }

  else
  {
    v2 = [objc_msgSend(objc_opt_self() "defaultProvider")];
    swift_unknownObjectRelease();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_1000144E0()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___donationPreferences;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___donationPreferences))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___donationPreferences);
  }

  else
  {
    v3 = [objc_allocWithZone(CNDDonationPreferences) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v2 = v3;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_100014558()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___distributedNotificationCenter;
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___distributedNotificationCenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___distributedNotificationCenter);
  }

  else
  {
    v4 = [objc_opt_self() defaultCenter];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000145E8()
{
  *&v0[OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___schedulerProvider] = 0;
  *&v0[OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___logger] = 0;
  *&v0[OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___dataProxy] = 0;
  *&v0[OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___donationPreferences] = 0;
  *&v0[OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___distributedNotificationCenter] = 0;
  *&v0[OBJC_IVAR____TtC21contactsdonationagent21ProductionEnvironment____lazy_storage___feedbackStore] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductionEnvironment();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100014764(uint64_t *a1, Class *a2)
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

void sub_1000147D0()
{
  v6 = sub_1000148A4();
  v1 = sub_100014A44(v6);
  v2 = sub_10001507C(v6);
  if (v1 & 1) != 0 || (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_changeHandler);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_changeHandler + 8);

      v3(v5);
      sub_10000F288(v3);
    }
  }
}

id sub_1000148A4()
{
  if (qword_100044748 != -1)
  {
    swift_once();
  }

  v9 = qword_100046340;

  v0 = CNContactEmailAddressesKey;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = sub_100014750();
  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = 0;
  v3 = [v1 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v8];

  v4 = v8;
  if (!v3)
  {
    v5 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v3;
}

id sub_100014A44(uint64_t a1)
{
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2, v5);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003760(&unk_1000458C0, qword_100030910);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v52 - v10;
  v12 = sub_100003760(&qword_1000457A8, "W");
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v54 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v52 - v19;
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v52 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v52 - v26;
  v28 = v3[7];
  v28(&v52 - v26, 1, 1, v2);
  if (!a1)
  {
LABEL_4:
    sub_100011DB8(v27, v20, &qword_1000457A8, "W");
    v53 = v3;
    v31 = v3[6];
    v55 = v31(v20, 1, v2);
    sub_10000630C(v20, &qword_1000457A8, "W");
    v32 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedName;
    v33 = v56;
    swift_beginAccess();
    v34 = *(v7 + 48);
    sub_100011DB8(v27, v11, &qword_1000457A8, "W");
    sub_100011DB8(v33 + v32, &v11[v34], &qword_1000457A8, "W");
    if (v31(v11, 1, v2) == 1)
    {
      if (v31(&v11[v34], 1, v2) == 1)
      {
        sub_10000630C(v11, &qword_1000457A8, "W");
        v35 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v36 = v54;
      sub_100011DB8(v11, v54, &qword_1000457A8, "W");
      if (v31(&v11[v34], 1, v2) != 1)
      {
        v38 = v52;
        v37 = v53;
        (v53[4])(v52, &v11[v34], v2);
        sub_100016D60();
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = v37[1];
        v39(v38, v2);
        v39(v36, v2);
        sub_10000630C(v11, &qword_1000457A8, "W");
LABEL_11:
        v40 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_environment;
        v41 = v56;
        swift_beginAccess();
        sub_100011DB8(v41 + v40, v57, &unk_1000458A0, &unk_1000308F0);
        v42 = v58;
        if (v58)
        {
          v43 = v55 != 1;
          v44 = sub_100003A34(v57, v58);
          v45 = *(v42 - 8);
          v46 = *(v45 + 64);
          __chkstk_darwin(v44, v44);
          v48 = (&v52 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v45 + 16))(v48);
          sub_10000630C(v57, &unk_1000458A0, &unk_1000308F0);
          v49 = *v48;
          v50 = sub_100014428();
          (*(v45 + 8))(v48, v42);
          [v50 contactsChangedNotificationFoundName:v43 nameChanged:(v35 ^ 1) & 1];
          swift_unknownObjectRelease();
          if (v35)
          {
LABEL_13:
            sub_10000630C(v27, &qword_1000457A8, "W");
            return ((v35 ^ 1) & 1);
          }
        }

        else
        {
          sub_10000630C(v57, &unk_1000458A0, &unk_1000308F0);
          if (v35)
          {
            goto LABEL_13;
          }
        }

        v51 = v56;
        swift_beginAccess();
        sub_100016CF0(v27, v51 + v32);
        swift_endAccess();
        return ((v35 ^ 1) & 1);
      }

      (v53[1])(v36, v2);
    }

    sub_10000630C(v11, &unk_1000458C0, qword_100030910);
    v35 = 0;
    goto LABEL_11;
  }

  result = [objc_opt_self() componentsForContact:a1];
  if (result)
  {
    v30 = result;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000630C(v27, &qword_1000457A8, "W");
    v28(v24, 0, 1, v2);
    sub_100016DB8(v24, v27);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001507C(void *a1)
{
  v2 = _swiftEmptyArrayStorage;
  if (!a1)
  {
LABEL_20:
    v27 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedEmailAddresses;
    v28 = sub_1000140D8(v2, *(v1 + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedEmailAddresses));
    v29 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_environment;
    swift_beginAccess();
    sub_100011DB8(v1 + v29, &v43, &unk_1000458A0, &unk_1000308F0);
    v30 = v44;
    if (v44)
    {
      v31 = sub_100003A34(&v43, v44);
      v32 = *(v30 - 8);
      v33 = *(v32 + 64);
      __chkstk_darwin(v31, v31);
      v35 = (v41 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v32 + 16))(v35);
      sub_10000630C(&v43, &unk_1000458A0, &unk_1000308F0);
      v36 = v1;
      v37 = *v35;
      v38 = sub_100014428();
      (*(v32 + 8))(v35, v30);
      [v38 contactsChangedNotificationEmailAddressesChanged:(v28 ^ 1) & 1];
      v1 = v36;
      swift_unknownObjectRelease();
      if (v28)
      {
LABEL_23:

        return (v28 ^ 1) & 1;
      }
    }

    else
    {
      sub_10000630C(&v43, &unk_1000458A0, &unk_1000308F0);
      if (v28)
      {
        goto LABEL_23;
      }
    }

    v39 = *(v1 + v27);
    *(v1 + v27) = v2;
    goto LABEL_23;
  }

  v3 = a1;
  v4 = [v3 emailAddresses];
  sub_100003760(&unk_100045B80, &unk_100030250);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:

    v8 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v43 = _swiftEmptyArrayStorage;
  sub_10002678C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v41[0] = v3;
    v7 = 0;
    v8 = v43;
    v9 = CNEmailAddressNormalize;
    v10 = v5;
    v42 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      v12 = v6;
      if (v42)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * v7 + 32);
      }

      v14 = v13;
      v15 = [v13 value];
      v16 = (*(v9 + 16))(v9, v15);

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v43 = v8;
      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_10002678C((v20 > 1), v21 + 1, 1);
        v8 = v43;
      }

      ++v7;
      *(v8 + 2) = v21 + 1;
      v22 = &v8[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v6 = v12;
      v10 = v11;
    }

    while (v12 != v7);

    v3 = v41[0];
LABEL_15:
    v23 = sub_100016C4C(v8);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = sub_100026680(*(v23 + 16), 0);
      v26 = sub_100027D04(&v43, v25 + 4, v24, v23);
      sub_100016CE4();
      if (v26 == v24)
      {
LABEL_19:
        v43 = v25;

        sub_10001605C(&v43);

        v2 = v43;
        v1 = v41[1];
        goto LABEL_20;
      }

      __break(1u);
    }

    v25 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_1000155BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductionInfoProvider()
{
  result = qword_100045888;
  if (!qword_100045888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000156DC()
{
  sub_1000118CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100015798(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100015B48(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000158E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003760(&qword_1000453B0, ".V");
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

Swift::Int sub_100015B48(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000158E8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100015CC8();
      goto LABEL_16;
    }

    sub_100015E24(v8 + 1);
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

void *sub_100015CC8()
{
  v1 = v0;
  sub_100003760(&qword_1000453B0, ".V");
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

uint64_t sub_100015E24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003760(&qword_1000453B0, ".V");
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

Swift::Int sub_10001605C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100016C38(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000160C8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000160C8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100016290(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000161C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000161C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100016290(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100016B20(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10001686C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100016B34(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100016B34((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10001686C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100016B20(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100016A94(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10001686C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}