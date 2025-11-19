char *specialized NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v134[1] = a6;
  v137 = a5;
  v147 = a4;
  v150 = a3;
  v152 = a1;
  ObjectType = swift_getObjectType();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v145 = *(v146 - 8);
  v9 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = v134 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v142 = v14;
  v143 = v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v151 = v134 - v17;
  v139 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v138 = *(v139 - 8);
  v18 = v138[8];
  __chkstk_darwin(v139);
  v135 = v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v134[2] = v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMd, &_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMR);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = v134 - v28;
  v30 = &v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_transaction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo17OS_os_transaction_pSgSo0D14_unfair_lock_sVGMd, &_ss13ManagedBufferCySo17OS_os_transaction_pSgSo0D14_unfair_lock_sVGMR);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 16) = 0;
  *&v7[v31] = v32;
  v33 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost__state;
  LOBYTE(v157) = 0;
  Published.init(initialValue:)();
  (*(v26 + 32))(&v7[v33], v29, v25);
  *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection] = 0;
  *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_incomingMessageListenerTask] = 0;
  *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_cancellables] = &_swiftEmptySetSingleton;
  *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_firewall] = 0;
  v148 = v12;
  v149 = v11;
  v34 = *(v12 + 16);
  v141 = v12 + 16;
  v140 = v34;
  v34(&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_id], v152, v11);
  v35 = [objc_opt_self() anonymousListener];
  *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_listener] = v35;
  swift_beginAccess();
  v156[0] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
  Published.init(initialValue:)();
  swift_endAccess();

  type metadata accessor for OS_dispatch_queue();
  v157 = _typeName(_:qualified:)();
  v158 = v36;
  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v38);

  static DispatchQoS.unspecified.getter();
  v157 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v39 = v137;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v138[13])(v135, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v139);
  *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40 = v147;
  *&v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_idsService] = v147;
  outlined init with copy of PseudonymProtocol(v150, &v7[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMember]);
  v41 = type metadata accessor for NearbyGroupHost();
  v154.receiver = v7;
  v154.super_class = v41;
  v139 = v41;
  v138 = v40;
  v42 = objc_msgSendSuper2(&v154, "init");
  v43 = v42;
  if (v39)
  {
    v44 = *((swift_isaMask & *v42) + 0x108);
    v45 = v42;
    v46 = outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(v39);
    v47 = v44(v46);
    v48 = v39(v47);
    v50 = v49;
    _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v39);

    v51 = (v45 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken);
    swift_beginAccess();
    v52 = v51[1];
    *v51 = v48;
    v51[1] = v50;
  }

  else
  {
    v53 = v42;
    if (_TUIsInternalInstall() && (v157 = 0, IMGetConferenceSettings(), (v54 = v157) != 0))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v54;
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = 0;
    }

    v55 = APSConnectionOverrideNamedDelegatePort;
    v56 = *(v53 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
    v57 = objc_allocWithZone(APSConnection);
    v58 = v55;
    v59 = v56;
    v60 = String._bridgeToObjectiveC()();

    v61 = [v57 initWithEnvironmentName:v60 namedDelegatePort:v58 queue:v59];

    if (v61 && (v62 = [v61 publicToken]) != 0)
    {
      v63 = v62;
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      outlined copy of Data._Representation(v64, v66);
      v67.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v62 = outlined consume of Data._Representation(v64, v66);
    }

    else
    {
      v67.super.isa = 0;
      v64 = 0;
      v66 = 0xF000000000000000;
    }

    (*((swift_isaMask & *v53) + 0x108))(v62);
    v68 = String._bridgeToObjectiveC()();

    v69 = IDSCopyIDForTokenWithID();

    if (v69)
    {
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      outlined consume of Data?(v64, v66);
    }

    else
    {

      outlined consume of Data?(v64, v66);
      v70 = 0;
      v72 = 0;
    }

    v73 = (v53 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken);
    swift_beginAccess();
    v74 = v73[1];
    *v73 = v70;
    v73[1] = v72;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  v76 = __swift_project_value_buffer(v75, static Log.host);
  v77 = v43;
  v147 = v76;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v155[0] = v81;
    *v80 = 136315138;
    v82 = &v77[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken];
    swift_beginAccess();
    v83 = v82[1];
    if (v83)
    {
      v156[0] = *v82;
      v156[1] = v83;

      v84 = String.init<A>(reflecting:)();
      v86 = v85;
    }

    else
    {
      v86 = 0xE300000000000000;
      v84 = 7104878;
    }

    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v155);

    *(v80 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v78, v79, "Provisioning token for localMember %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
  }

  else
  {
  }

  v88 = [objc_allocWithZone(NSLock) init];
  [v88 lock];
  v89 = v77;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v156[0] = v93;
    *v92 = 136315138;
    v155[0] = v89;
    v94 = v89;
    v95 = String.init<A>(reflecting:)();
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v156);

    *(v92 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v90, v91, "%s Setting up incomingMessageListener", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
  }

  v98 = type metadata accessor for TaskPriority();
  v99 = *(v98 - 8);
  v100 = *(v99 + 56);
  v137 = v98;
  ObjectType = v100;
  v135 = (v99 + 56);
  (v100)(v151, 1, 1);
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = v143;
  v103 = v149;
  v140(v143, v152, v149);
  v104 = v89;
  v105 = v148;
  v106 = (*(v148 + 80) + 48) & ~*(v148 + 80);
  v107 = (v142 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  *(v108 + 2) = 0;
  *(v108 + 3) = 0;
  *(v108 + 4) = v88;
  v109 = v88;
  v110 = v138;
  *(v108 + 5) = v138;
  (*(v105 + 32))(&v108[v106], v102, v103);
  *&v108[v107] = v101;
  v111 = v110;
  v112 = v104;
  v113 = v109;
  v114 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v151, &async function pointer to partial apply for closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:), v108);
  v115 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_incomingMessageListenerTask;
  swift_beginAccess();
  v116 = *&v112[v115];
  *&v112[v115] = v114;

  [v113 lock];
  v117 = v112;
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v155[0] = v121;
    *v120 = 136315138;
    v153 = v117;
    v122 = v117;
    v123 = String.init<A>(reflecting:)();
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, v155);

    *(v120 + 4) = v125;
    _os_log_impl(&_mh_execute_header, v118, v119, "%s Finished setting up incomingMessageListener", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v121);
  }

  v126 = [v113 unlock];
  v127 = v144;
  (*((swift_isaMask & *v117) + 0xD8))(v126);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<NearbyGroupMember>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v128 = v146;
  Publisher<>.sink(receiveValue:)();

  (*(v145 + 8))(v127, v128);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v129 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_listener;
  [*&v117[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_listener] setDelegate:v117];
  [*&v117[v129] resume];
  v130 = v151;
  ObjectType(v151, 1, 1, v137);
  v131 = swift_allocObject();
  v131[2] = 0;
  v131[3] = 0;
  v131[4] = v117;
  v131[5] = v111;
  v132 = v111;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v130, &async function pointer to partial apply for closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:), v131);

  __swift_destroy_boxed_opaque_existential_0Tm(v150);
  (*(v148 + 8))(v152, v149);
  return v117;
}

uint64_t sub_100002EC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002F00()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100002FE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t protocol witness for PseudonymProtocol.handle.getter in conformance Pseudonym()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 16) URI];
  v3 = [v2 prefixedURI];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

uint64_t NearbyGroupHost.localMemberHandle.getter()
{
  (*((swift_isaMask & *v0) + 0xF0))(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PseudonymProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t NearbyGroupHost.localMember.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMember;
  swift_beginAccess();
  return outlined init with copy of PseudonymProtocol(v1 + v3, a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v9 = *(*(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation(0) - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v10 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  v7[21] = v10;
  v11 = *(v10 - 8);
  v7[22] = v11;
  v12 = *(v11 + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  v7[28] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v7[29] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:), 0, 0);
}

uint64_t _PublisherElements.Iterator.Inner.receive(subscription:)(void *a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v16, v1 + 4, v7);
  v9 = v17;
  (*(v8 + 8))(v16, v7);
  if (v9)
  {
    os_unfair_lock_unlock(v4);
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = *(v10 + 8);
    return dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    outlined init with copy of PseudonymProtocol(a1, v16);
    swift_beginAccess();
    (*(v8 + 40))(v1 + 4, v16, v7);
    swift_endAccess();
    swift_beginAccess();
    v13 = v1[9];
    v1[9] = static Subscribers.Demand.none.getter();
    os_unfair_lock_unlock(v4);
    v14 = static Subscribers.Demand.none.getter();
    static Subscribers.Demand.unlimited.getter();
    if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0 || (static Subscribers.Demand.unlimited.getter(), result = static Subscribers.Demand.== infix(_:_:)(), (result & 1) == 0))
    {
      static Subscribers.Demand.unlimited.getter();
      if ((static Subscribers.Demand.== infix(_:_:)() & 1) != 0 || (static Subscribers.Demand.unlimited.getter(), result = static Subscribers.Demand.== infix(_:_:)(), (result & 1) == 0) && v14 < v13)
      {
        v15 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        return dispatch thunk of Subscription.request(_:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)()
{
  v5 = *(v0 + 136);
  v1 = *(v0 + 120);
  [*(v0 + 112) unlock];
  *(v0 + 72) = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_incomingMessages);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *(v2 + 24) = &_swiftEmptyArrayStorage;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = static Subscribers.Demand.none.getter();
  *v3 = 0;
  *(v0 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  Publisher.subscribe<A>(_:)();

  *(v0 + 64) = v2;
  swift_beginAccess();

  return _swift_task_switch(closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:), 0, 0);
}

{
  v1 = v0[8];
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = v0 + 8;
  v3 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:);
  v6 = v0[28];
  v5 = v0[29];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v2, partial apply for specialized closure #1 in _PublisherElements.Iterator.next(), v1, 0, 0, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 240);
    v7 = *(v2 + 248);

    return _swift_task_switch(closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:), 0, 0);
  }
}

{
  v74 = v0;
  v1 = v0[29];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[8];

    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v4 = v0[17];
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Log.host);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[17];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v73 = v10;
        *v9 = 136315138;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v0[11] = Strong;
          type metadata accessor for NearbyGroupHost();
          v12 = String.init<A>(reflecting:)();
          v14 = v13;
        }

        else
        {
          v12 = 7104878;
          v14 = 0xE300000000000000;
        }

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v73);

        *(v9 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v6, v7, "%s stopped listening for incoming messages. This shouldn't ever happen until cancellation.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
      }
    }

    goto LABEL_29;
  }

  v15 = *(v1 + *(v2 + 48));
  outlined init with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v1, v0[27], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  v16 = voucher_copy();
  if (v15)
  {
    v17 = v15;
  }

  v18 = v0[21];
  outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v0[27], v0[26], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v0[26];
  if (EnumCaseMultiPayload != 1)
  {
LABEL_19:
    outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v20, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    goto LABEL_20;
  }

  v21 = v0[16];
  outlined init with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v20, v0[20], type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (v22 = v0[17], (v23 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v0[20], type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
    v47 = v0[27];
    if (v16)
    {
      v48 = v16;

      outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v47, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    }

    else
    {
      outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v0[27], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    }

    v49 = v0[8];

LABEL_29:
    v51 = v0[29];
    v52 = v0[26];
    v53 = v0[27];
    v55 = v0[24];
    v54 = v0[25];
    v56 = v0[23];
    v58 = v0[19];
    v57 = v0[20];
    v59 = v0[18];

    v60 = v0[1];

    return v60();
  }

  v24 = v0[33];
  v25 = v0[20];
  v26 = *(v23 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  v27 = v23;
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  v29 = v26;
  OS_dispatch_queue.sync<A>(execute:)();
  v30 = v0[20];

  outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v30, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.MembershipMutation);
  if (v24)
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v31 = v0[27];
    v32 = v0[25];
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.group);
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v31, v32, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[25];
    if (v36)
    {
      v71 = v35;
      v72 = v34;
      v39 = v0[21];
      v38 = v0[22];
      v40 = v0[18];
      v41 = v0[19];
      v42 = swift_slowAlloc();
      v0[12] = swift_slowAlloc();
      *v42 = 136315394;
      outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v37, v41, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      (*(v38 + 56))(v41, 0, 1, v39);
      outlined init with copy of (String, Any)(v41, v40, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR);
      if ((*(v38 + 48))(v40, 1, v39) == 1)
      {
        v43 = 7104878;
        v44 = 0xE300000000000000;
      }

      else
      {
        v63 = v0[23];
        v62 = v0[24];
        v64 = v0[21];
        outlined init with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v0[18], v62, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
        outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(v62, v63, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
        v43 = String.init<A>(reflecting:)();
        v44 = v65;
        outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v62, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      }

      v66 = v0[25];
      outlined destroy of Any?(v0[19], &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR);
      outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v66, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v0 + 12);

      *(v42 + 4) = v67;
      *(v42 + 12) = 2080;
      v0[13] = v24;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v68 = String.init<A>(reflecting:)();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v0 + 12);

      *(v42 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v72, v71, "Failed to handle event: %s, reason: %s", v42, 0x16u);
      swift_arrayDestroy();

      v45 = v0[27];
      if (!v16)
      {
        goto LABEL_35;
      }

      goto LABEL_21;
    }

    v20 = v37;
    goto LABEL_19;
  }

LABEL_20:
  v45 = v0[27];
  if (!v16)
  {
LABEL_35:
    outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v45, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);

    goto LABEL_36;
  }

LABEL_21:
  v46 = v16;

  outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v45, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
LABEL_36:

  return _swift_task_switch(closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:), 0, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t type metadata accessor for NearbyInvitationsInviteScanner(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NearbyInvitationAdvertiser.$connections.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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

void *NearbyGroupHost.connection.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(a1, v4, v5, v7, v6);
}

uint64_t closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)()
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v1, static Log.group);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching firewall", v4, 2u);
  }

  v6 = v0[8];
  v5 = v0[9];

  outlined init with copy of PseudonymProtocol(v5 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service, (v0 + 2));
  type metadata accessor for NearbyGroupFirewall();
  swift_allocObject();
  v7 = v6;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:);
  v9 = v0[8];

  return NearbyGroupFirewall.init(group:service:)(v9, (v0 + 2));
}

{
  v1 = *(v0 + 80);
  (*((swift_isaMask & **(v0 + 64)) + 0x1C0))(*(v0 + 104));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched firewall", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v15 = v0;
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[7] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch firewall, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    v11 = v0[12];
  }

  v12 = v0[1];

  return v12();
}

uint64_t specialized NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  v4[31] = v1;

  v7 = v4[15];
  if (v1)
  {
    v8 = specialized NearbyGroupHostManager.createGroup(id:generator:);
  }

  else
  {
    v4[32] = a1;
    v8 = specialized NearbyGroupHostManager.createGroup(id:generator:);
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t specialized NearbyGroupHostManager.createGroup(id:generator:)()
{
  v1 = v0[32];
  v39 = v0[29];
  v37 = v0[28];
  v29 = v0[27];
  v32 = v0[26];
  v26 = v0[25];
  v38 = v0[24];
  v35 = v0[22];
  v36 = v0[21];
  v33 = v0[20];
  v28 = v0[19];
  v30 = v0[18];
  v31 = v0[23];
  v2 = v0[15];
  v34 = v0[16];
  v3 = v0[14];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  v25 = v2;
  v5 = static Published.subscript.modify();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v7;
  *v7 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v3, isUniquelyReferenced_nonNull_native);
  *v7 = v40;
  v5(v0 + 2, 0);

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v39, 1, 1, v10);
  v24 = swift_allocObject();
  v11 = swift_weakInit();
  (*((swift_isaMask & *v4) + 0x158))(v11);
  v12 = v26 + 32;
  v27 = *(v26 + 32);
  v27(v29, v37, v38);
  (*(v28 + 16))(v31, v3, v30);
  v13 = (*(v12 + 48) + 32) & ~*(v12 + 48);
  v14 = (v32 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v28 + 80) + v14 + 8) & ~*(v28 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v27(v16 + v13, v29, v38);
  *(v16 + v14) = v24;
  (*(v28 + 32))(v16 + v15, v31, v30);
  v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v39, &closure #1 in NearbyGroupHostManager.createGroup(id:generator:)partial apply, v16);
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  v19 = *(v25 + v18);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v25 + v18);
  *(v25 + v18) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v3, v20);
  *(v25 + v18) = v41;
  swift_endAccess();

  v21 = v0[1];
  v22 = v0[32];

  return v21(v22);
}

{
  v56 = v0;
  v1 = v0[15];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0[12] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0[14]);
    v3 = v2;

    if (v3)
    {
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v4 = v0[21];
      v5 = v0[18];
      v6 = v0[19];
      v7 = v0[14];
      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Log.host);
      (*(v6 + 16))(v4, v7, v5);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[21];
      v13 = v0[18];
      v14 = v0[19];
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v55[0] = v16;
        *v15 = 136315138;
        lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v14 + 8))(v12, v13);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v55);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v9, v10, "Trying to create a NearbyGroup with %s when one already exists.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }

      else
      {

        (*(v14 + 8))(v12, v13);
      }

      v44 = 0;
LABEL_20:
      v45 = v0[16];
      lazy protocol witness table accessor for type NearbyGroupHostManager.Errors and conformance NearbyGroupHostManager.Errors();
      swift_allocError();
      *v46 = v44;
      swift_willThrow();

      v48 = v0[28];
      v47 = v0[29];
      v49 = v0[27];
      v51 = v0[22];
      v50 = v0[23];
      v52 = v0[21];

      v53 = v0[1];

      return v53();
    }
  }

  else
  {
    v21 = v0[12];
  }

  v22 = v0[15];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = *(v0[13] + 16);

  v24 = specialized NearbyGroupServerBag.numericConfig(for:)(3u);
  v25 = [v24 integerValue];

  if (v23 >= v25)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v27 = v0[22];
    v28 = v0[18];
    v29 = v0[19];
    v30 = v0[14];
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.host);
    (*(v29 + 16))(v27, v30, v28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[22];
    v36 = v0[18];
    v37 = v0[19];
    if (v34)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55[0] = v39;
      *v38 = 136315138;
      lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v37 + 8))(v35, v36);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v55);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to create new NearbyGroupHost with %s due to group count limit", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    else
    {

      (*(v37 + 8))(v35, v36);
    }

    v44 = 1;
    goto LABEL_20;
  }

  v26 = v0[17];

  return _swift_task_switch(specialized NearbyGroupHostManager.createGroup(id:generator:), v26, 0);
}

{
  v2 = v0[16];
  v1 = v0[17];
  type metadata accessor for NearbyGroupHost();
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = specialized NearbyGroupHostManager.createGroup(id:generator:);
  v7 = v0[16];

  return NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:)(v7, v5, 0, 0);
}

{

  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100004A10()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t NearbyGroupHost.members.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100004AC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_100004B20(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xC8);

  return v3(v4);
}

void NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v136 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v127 - v12;
  __chkstk_darwin(v11);
  v15 = &v127 - v14;
  v149 = type metadata accessor for NearbyGroup_Group(0);
  v16 = *(*(v149 - 1) + 64);
  v17 = __chkstk_darwin(v149);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v127 - v20;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      v144 = a2;
      v145 = v7;
      v22 = *a1;
      v146 = v15;
      v142 = *((swift_isaMask & v22) + 0x108);
      v141 = (swift_isaMask & v22) + 264;
      v23 = v142();
      v148 = v21;
      (*((swift_isaMask & *a1) + 0x110))(v23);
      v134 = type metadata accessor for NearbyGroupMember();
      v24 = objc_allocWithZone(v134);
      v25 = v148;
      v26 = NearbyGroupMember.init(handle:tokenID:)();
      v139 = __chkstk_darwin(v26);
      v140 = lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroup_Group and conformance NearbyGroup_Group, type metadata accessor for NearbyGroup_Group);
      v27 = v147;
      static Message.with(_:)();
      v135 = v27;
      v28 = v146;
      UUID.init()();
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      v30 = __swift_project_value_buffer(v29, static Log.host);
      v31 = v145;
      v32 = *(v145 + 16);
      v132 = v145 + 16;
      v131 = v32;
      v32(v13, v28, v6);
      outlined init with copy of NearbyGroup_Group(v25, v19, type metadata accessor for NearbyGroup_Group);
      v33 = v3;
      v34 = a1;

      v133 = v30;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      v37 = os_log_type_enabled(v35, v36);
      v143 = v6;
      v138 = v33;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v127 = v34;
        v39 = v38;
        v40 = swift_slowAlloc();
        v130 = v35;
        v41 = v40;
        v128 = v40;
        v137 = swift_slowAlloc();
        v151[0] = v137;
        *v39 = 138413314;
        *(v39 + 4) = v33;
        *v41 = v33;
        *(v39 + 12) = 2080;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v42 = v33;
        v43 = v31;
        v44 = v42;
        v129 = v36;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v147 = *(v43 + 8);
        v147(v13, v6);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v151);

        *(v39 + 14) = v48;
        *(v39 + 22) = 2080;
        v49 = Message.debugDescription.getter();
        v51 = v50;
        outlined destroy of NearbyGroup_Group(v19, type metadata accessor for NearbyGroup_Group);
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v151);

        *(v39 + 24) = v52;
        *(v39 + 32) = 2080;
        v53 = v127;
        v54 = [v127 description];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v151);

        *(v39 + 34) = v58;
        *(v39 + 42) = 2080;
        lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);
        v59 = Set.description.getter();
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v151);

        *(v39 + 44) = v61;
        v62 = v130;
        _os_log_impl(&_mh_execute_header, v130, v129, "%@ Distributing initialization event (%s) %s to %s and members %s", v39, 0x34u);
        outlined destroy of Any?(v128, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        swift_arrayDestroy();

        v34 = v53;
      }

      else
      {

        outlined destroy of NearbyGroup_Group(v19, type metadata accessor for NearbyGroup_Group);
        v147 = *(v31 + 8);
        v147(v13, v6);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000CAB00;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v71;
      *(inited + 48) = Int._bridgeToObjectiveC()();
      *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 64) = v72;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(1);
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v73;
      v74 = v142;
      v142();
      v75 = String._bridgeToObjectiveC()();

      v76 = IDSCopyBestGuessIDForID();

      if (v76)
      {
        *(inited + 96) = v76;
        v137 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
        swift_arrayDestroy();
        v77 = v138;
        v78 = &v138[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service];
        v79 = *&v138[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32];
        __swift_project_boxed_opaque_existential_1(&v138[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service], *&v138[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24]);
        v80 = v74();
        v81 = (*(v79 + 64))(v80);

        if (v81)
        {
          v82 = v137;
          outlined init with copy of PseudonymProtocol(v78, v151);
          v84 = v152;
          v83 = v153;
          v142 = __swift_project_boxed_opaque_existential_1(v151, v152);
          v85 = v148;
          v86 = v135;
          v87 = Message.serializedData(partial:)();
          v89 = v143;
          if (v86)
          {

            v147(v146, v89);
            outlined destroy of NearbyGroup_Group(v85, type metadata accessor for NearbyGroup_Group);
            __swift_destroy_boxed_opaque_existential_0Tm(v151);
          }

          else
          {
            v104 = v87;
            v105 = v88;
            v106 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v82);

            v150 = 0;
            (*(v83 + 56))(v104, v105, v81, v144, 300, v106, &v150, v84, v83);
            v149 = v81;

            outlined consume of Data._Representation(v104, v105);
            v107 = v150;
            __swift_destroy_boxed_opaque_existential_0Tm(v151);
            v108 = v136;
            v109 = v146;
            v110 = v143;
            v131(v136, v146, v143);

            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v111, v112))
            {
              LODWORD(v142) = v112;
              v113 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v151[0] = v141;
              *v113 = 136315650;
              lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
              v114 = dispatch thunk of CustomStringConvertible.description.getter();
              v116 = v115;
              v147(v108, v110);
              v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v151);

              *(v113 + 4) = v117;
              *(v113 + 12) = 2080;
              if (v107)
              {
                v150 = v107;
                type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
                v118 = v107;
                v119 = String.init<A>(reflecting:)();
                v121 = v120;
              }

              else
              {
                v121 = 0xE300000000000000;
                v119 = 7104878;
              }

              v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v151);

              *(v113 + 14) = v123;
              *(v113 + 22) = 2080;
              lazy protocol witness table accessor for type NearbyGroup_Group and conformance NearbyGroup_Group(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);
              v124 = Set.description.getter();
              v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v151);

              *(v113 + 24) = v126;
              _os_log_impl(&_mh_execute_header, v111, v142, "Distribution of initialization event (%s) sent with ID %s and to members: %s", v113, 0x20u);
              swift_arrayDestroy();

              v147(v146, v143);
            }

            else
            {

              v122 = v147;
              v147(v108, v110);
              v122(v109, v110);
            }

            outlined destroy of NearbyGroup_Group(v148, type metadata accessor for NearbyGroup_Group);
          }
        }

        else
        {

          v90 = v77;
          v91 = v34;
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v151[0] = v96;
            *v94 = 138412546;
            *(v94 + 4) = v90;
            *v95 = v90;
            *(v94 + 12) = 2080;
            v97 = v90;
            v98 = (v142)(v97);
            v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v151);

            *(v94 + 14) = v100;
            _os_log_impl(&_mh_execute_header, v92, v93, "%@ couldn't find account to send message from with handle: %s", v94, 0x16u);
            outlined destroy of Any?(v95, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

            __swift_destroy_boxed_opaque_existential_0Tm(v96);
          }

          v101 = v143;
          v102 = v148;
          lazy protocol witness table accessor for type NearbyGroupHostIDSService.Errors and conformance NearbyGroupHostIDSService.Errors();
          swift_allocError();
          *v103 = 1;
          swift_willThrow();

          v147(v146, v101);
          outlined destroy of NearbyGroup_Group(v102, type metadata accessor for NearbyGroup_Group);
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  else if (*(a2 + 16))
  {
    goto LABEL_3;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Log.host);
  v64 = v3;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138412290;
    *(v67 + 4) = v64;
    *v68 = v64;
    v69 = v64;
    _os_log_impl(&_mh_execute_header, v65, v66, "%@ asked to distribute initialization to nobody else.", v67, 0xCu);
    outlined destroy of Any?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
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

void closure #3 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.group);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v8 = 138412802;
      *(v8 + 4) = v5;
      v23 = v9;
      *v9 = v3;
      *(v8 + 12) = 2080;
      v10 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v24);

      *(v8 + 14) = v13;
      *(v8 + 22) = 2080;
      if ((*((swift_isaMask & *v10) + 0x170))(v14))
      {
        type metadata accessor for NearbyGroupHostConnection();
        v15 = String.init<A>(reflecting:)();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

      *(v8 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "%@ learned about updated members: %s, updating client %s", v8, 0x20u);
      outlined destroy of Any?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }

    else
    {
    }

    v19 = (*((swift_isaMask & *v5) + 0x170))();
    if (v19)
    {
      v20 = v19;
      XPCHostConnection.clientObject.getter();

      v21 = v24;
      type metadata accessor for NearbyGroupMember();
      lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);
      isa = Set._bridgeToObjectiveC()().super.isa;
      [v21 setMembers:isa];

      swift_unknownObjectRelease();
    }
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

char *NearbyGroupHost.__allocating_init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = specialized NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(a1, a2, a3, a4, a5, a6);
  _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(a5);

  return v14;
}

uint64_t _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:)()
{
  v1 = v0[38];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v14 = v0[34];
  v15 = v0[26];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  v0[17] = type metadata accessor for Pseudonym();
  v0[18] = lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type Pseudonym and conformance Pseudonym, type metadata accessor for Pseudonym);
  v0[14] = v1;
  v7 = *(v3 + 464);
  v8 = v6;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(v5);
  v9 = v7(v2, v14, v0 + 14, v8, v5, v4);
  v10 = *((swift_isaMask & *v9) + 0x200);
  v11 = v9;
  v10();
  _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v5);

  v12 = v0[1];

  return v12(v11);
}

{
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  NearbyGroupCreationRequest.id.getter();
  *(v0 + 272) = NearbyGroupCreationRequest.members.getter();
  v4 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 24);
  v5 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service + 32);
  v6 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service), v4);
  *(v0 + 176) = v4;
  *(v0 + 184) = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)((v0 + 152), 1, (v0 + 64));
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  *(v0 + 280) = v11;
  *(v0 + 192) = *(v0 + 96);
  outlined destroy of Any?(v0 + 192, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 32) = v9;
  *(v0 + 40) = v8;
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x80000001000CEBB0;
  v12 = swift_task_alloc();
  *(v0 + 288) = v12;
  *v12 = v0;
  v12[1] = NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:);

  return specialized static Pseudonym.reusable(for:configuration:)(v0 + 152, v0 + 16);
}

{
  v1 = v0[35];

  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  (*(v0[32] + 8))(v0[33], v0[31]);

  _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);

  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall NearbyGroupHost.distributeGroupInitialization()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in NearbyGroupHost.distributeGroupInitialization();
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_100006A20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return _swift_task_switch(closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:), 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

{
  v1 = *(a1 + 40);
  return (*(a1 + 32))();
}

void closure #1 in NearbyGroupHost.distributeGroupInitialization()(uint64_t *a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_idsService);
  v3 = (*((swift_isaMask & *a1) + 0xC0))();
  NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(a1, v3);

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.group);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = a1;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "%@ Successfully distributed groupInitialization", v7, 0xCu);
    outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSuGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSuGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v57 = type metadata accessor for NWBrowser.Result();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV7Network9NWBrowserC6ResultVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7Network9NWBrowserC6ResultVGMR);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVy14NearbySessions22InvitationJoinResponseCSg_s5Error_pSgtcGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVy14NearbySessions22InvitationJoinResponseCSg_s5Error_pSgtcGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t type metadata accessor for NearbyGroupHost()
{
  result = type metadata singleton initialization cache for NearbyGroupHost;
  if (!type metadata singleton initialization cache for NearbyGroupHost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for NWBrowser.Result();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t closure #1 in closure #1 in NearbyInvitationsProviderDataSource.init()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = 1 << *(v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        (*(*v3 + 640))(&_swiftEmptyArrayStorage);
      }

      v6 = *(v1 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        do
        {
LABEL_9:
          v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
          v11 = *((swift_isaMask & *v10) + 0x208);
          v12 = v10;
          v11();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v13 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v6 &= v6 - 1;
          result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v6);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NearbyGroupHost.connectionInfo.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = (*(v4 + 16))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_id);
  v6 = (*((swift_isaMask & *v0) + 0xB8))(v5);
  (*((swift_isaMask & *v0) + 0x108))(v6);
  v7 = objc_allocWithZone(type metadata accessor for NearbyGroupConnectionInfo());
  return NearbyGroupConnectionInfo.init(id:endpoint:localMember:)();
}

id NearbyGroupHost.endpoint.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_listener) endpoint];

  return v1;
}

Swift::Void __swiftcall NearbyInvitationsProviderDataSource.didUpdateGroups(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v16);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = v2[4];
  v13 = swift_allocObject();
  v13[2]._rawValue = v2;
  v13[3]._rawValue = a1._rawValue;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsProviderDataSource.didUpdateGroups(_:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_102;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v16);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOyx___G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t NearbyGroupFirewall.init(group:service:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMR);
  v3[19] = v8;
  v9 = *(v8 - 8);
  v3[20] = v9;
  v3[21] = *(v9 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupFirewall.init(group:service:), 0, 0);
}

uint64_t partial apply for specialized closure #2 in _PublisherElements.Iterator.next()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

uint64_t specialized closure #2 in _PublisherElements.Iterator.next()()
{
  *(v0 + 96) = **(v0 + 88);

  return _swift_task_switch(specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

{
  v1 = v0[12];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = specialized closure #2 in _PublisherElements.Iterator.next();
  v3 = swift_continuation_init();
  specialized closure #1 in _PublisherElements.Iterator.Inner.next()(v3, v1);

  return _swift_continuation_await(v0 + 2);
}

{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t specialized closure #2 in _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

void specialized closure #1 in _PublisherElements.Iterator.Inner.next()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = a2[2];
  os_unfair_lock_lock(v8);
  swift_beginAccess();
  outlined init with copy of (String, Any)((a2 + 4), &v22, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG___GMR);
  if (!v23)
  {
    swift_beginAccess();
    v10 = a2[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2[3] = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      a2[3] = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = a1;
    a2[3] = v10;
    swift_endAccess();
    swift_beginAccess();
    v14 = a2[9];
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_12;
    }

    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_12:
      v15 = static Subscribers.Demand.unlimited.getter();
    }

    a2[9] = v15;
    swift_endAccess();
    os_unfair_lock_unlock(v8);
    return;
  }

  if (v23 == 1)
  {
    os_unfair_lock_unlock(v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    outlined init with take of (NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext)?(v7, *(*(a1 + 64) + 40));
    swift_continuation_resume();
  }

  else
  {
    outlined init with take of PseudonymProtocol(&v22, v21);
    swift_beginAccess();
    v16 = a2[3];
    v17 = swift_isUniquelyReferenced_nonNull_native();
    a2[3] = v16;
    if ((v17 & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      a2[3] = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    *&v16[8 * v19 + 32] = a1;
    a2[3] = v16;
    swift_endAccess();
    os_unfair_lock_unlock(v8);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of PseudonymProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySccy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AE0N7ContextVtSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AE0N7ContextVtSgs5NeverOGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO6MemberVGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO6MemberVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t NearbyGroupFirewall.init(group:service:)()
{
  v24 = v0;
  v1 = v0[14];
  v2 = v0[12];
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (one-time initialization token for firewall != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v4 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v4, static Log.firewall);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v0[11] = v8;
    type metadata accessor for NearbyGroupHost();
    v11 = v8;
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching firewall for service: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v15 = v0[13];
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(v17 + 24);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = NearbyGroupFirewall.init(group:service:);

  return (v22)(v0 + 2, v16, v17);
}

{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = NearbyGroupFirewall.init(group:service:);
  }

  else
  {
    v3 = NearbyGroupFirewall.init(group:service:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v17 = *(v0 + 176);
  v18 = *(v0 + 168);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v16 = *(v0 + 152);
  v7 = *(v0 + 96);
  v19 = *(v0 + 104);
  v8 = outlined init with take of PseudonymProtocol((v0 + 16), *(v0 + 112) + 24);
  (*((swift_isaMask & *v7) + 0xD8))(v8);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<NearbyGroupMember>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  Publisher<>.values.getter();
  (*(v4 + 8))(v3, v5);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v17, v1, v16);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v2 + 32))(v12 + v11, v17, v16);
  *(v12 + ((v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in NearbyGroupFirewall.init(group:service:), v12);

  outlined destroy of TaskPriority?(v6);
  (*(v2 + 8))(v1, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);

  v13 = *(v0 + 8);
  v14 = *(v0 + 112);

  return v13(v14);
}

{
  v23 = v0;
  v1 = v0[26];
  v2 = v0[24];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v0[10] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch firewall, reason: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v11 = v0[26];
  v12 = v0[22];
  v13 = v0[23];
  v14 = v0[18];
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  swift_willThrow();

  swift_unknownObjectWeakDestroy();
  type metadata accessor for NearbyGroupFirewall();
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  v19 = v0[1];
  v20 = v0[26];

  return v19();
}

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

void type metadata completion function for NearbyGroup_Group()
{
  type metadata accessor for NearbyGroup_Group.OneOf_Event?(319, &lazy cache variable for type metadata for NearbyGroup_Group.OneOf_Event?, type metadata accessor for NearbyGroup_Group.OneOf_Event, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for NearbyGroup_Group.OneOf_Event?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for NearbyGroup_Group.OneOf_Event()
{
  result = type metadata accessor for NearbyGroup_Group.Initialization(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NearbyGroup_Group.MemberAdded(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NearbyGroup_Group.MemberRemoved(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NearbyGroup_Group.MemberLeft(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void type metadata completion function for NearbyGroup_Group.Initialization()
{
  type metadata accessor for NearbyGroup_Group.OneOf_Event?(319, &lazy cache variable for type metadata for [NearbyGroup_Member], type metadata accessor for NearbyGroup_Member, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for NearbyGroup_Member()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t IDSService.firewall.getter(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(IDSService.firewall.getter, 0, 0);
}

uint64_t protocol witness for IDSServiceProtocol.firewall.getter in conformance IDSService(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return IDSService.firewall.getter(a1);
}

uint64_t IDSService.firewall.getter()
{
  v1 = v0[20];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.main.getter();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = IDSService.firewall.getter;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo11IDSFirewallCs5Error_pGMd, &_sSccySo11IDSFirewallCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPseudonym?, @unowned NSError?) -> () with result type IDSPseudonym;
  v0[13] = &block_descriptor_7;
  v0[14] = v3;
  [v1 retrieveFirewallWithQueue:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = IDSService.firewall.getter;
  }

  else
  {
    v3 = IDSService.firewall.getter;
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v2[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSFirewall, IDSFirewall_ptr);
  v2[4] = &protocol witness table for IDSFirewall;
  *v2 = v3;

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void type metadata completion function for NearbyGroup_Group.MemberAdded()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NearbyGroup_Group.OneOf_Event?(319, &lazy cache variable for type metadata for NearbyGroup_Member?, type metadata accessor for NearbyGroup_Member, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for NearbyGroup_Group.MemberLeft()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NearbyInvitationsProviderDataSource.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.didUpdateGroups(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 208))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall NearbyInvitationServiceHost.didUpdateGroups(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    rawValue = a1._rawValue;
    v17 = v8;
    *v7 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14NearbySessions0A19GroupConnectionInfoCGMd, &_sSay14NearbySessions0A19GroupConnectionInfoCGMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "NearbyInvitationServiceHost: Updating clients about groups: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v12 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_connection;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13)
  {
    v14 = v13;
    XPCHostConnection.clientObject.getter();

    type metadata accessor for NearbyGroupConnectionInfo();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [rawValue didReceiveUpdatedGroups:isa];

    swift_unknownObjectRelease();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  v22 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v29 = *v4;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for NWBrowser.Result();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAF0I13RangingFilterCGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerCyAF0I13RangingFilterCGGMR);
}

uint64_t closure #1 in NearbyGroupHostManager.createGroup(id:generator:)partial apply(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyGroupHostManager.createGroup(id:generator:)(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t closure #1 in NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for UUID();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostC5StateO_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostC5StateO_GGMR);
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMR);
  v6[16] = v13;
  v14 = *(v13 - 8);
  v6[17] = v14;
  v15 = *(v14 + 64) + 15;
  v6[18] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyGroupHostManager.createGroup(id:generator:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 72);
  v7 = *v2;
  v4[13] = v1;

  v8 = (v6 + 8);
  v9 = v4[11];
  v10 = v4[10];
  v11 = v4[8];

  if (v1)
  {
    (*v8)(v10, v11);
    v12 = closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:);
  }

  else
  {
    v4[14] = a1;
    (*v8)(v10, v11);
    v12 = closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:);
  }

  return _swift_task_switch(v12, v9, 0);
}

uint64_t closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:)()
{
  v1 = *(v0 + 112);
  *(v0 + 120) = (*((swift_isaMask & *v1) + 0x208))();

  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:), 0, 0);
}

{
  v1 = v0[15];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(*(v0 + 24) + 64);
  *(v0 + 88) = v1;
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:), v1, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];
  NearbyGroupCreationRequest.id.getter();
  v4 = v3;

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:);
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[4];

  return specialized NearbyGroupHostManager.createGroup(id:generator:)(v7, v6, v8, v6);
}

{
  return _swift_task_switch(closure #1 in NearbyInvitationsProviderDataSource.createGroup(with:response:), 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_errorRetain();
  v3(0, v1);
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 128) == 1)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 104);
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.host);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    if (v8)
    {
      v10 = *(v0 + 56);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      *v11 = 136315650;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v23);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001000CF2F0, v23);
      *(v11 + 22) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v16;
      *v12 = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s %s - Suppressing report of error: %@", v11, 0x20u);
      outlined destroy of Any?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }

    else
    {
    }

    v21 = *(v0 + 80);

    v19 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);
    swift_willThrow();

    v19 = *(v0 + 8);
    v20 = *(v0 + 104);
  }

  return v19();
}

uint64_t closure #1 in NearbyGroupHostManager.createGroup(id:generator:)()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[7];
  v6 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<NearbyGroupHost.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v7 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroupHost.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMR);
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = closure #1 in NearbyGroupHostManager.createGroup(id:generator:);
  v10 = v0[18];
  v11 = v0[16];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 22, v11, v7);
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = closure #1 in NearbyGroupHostManager.createGroup(id:generator:);
  }

  else
  {
    v3 = closure #1 in NearbyGroupHostManager.createGroup(id:generator:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  *(v0 + 177) = *(v0 + 176);
  return _swift_task_switch(closure #1 in NearbyGroupHostManager.createGroup(id:generator:), 0, 0);
}

{
  v34 = v0;
  v1 = *(v0 + 177);
  if (v1 != 2)
  {
    if (v1 != 3)
    {
      v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroupHost.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMR);
      v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v4 = swift_task_alloc();
      *(v0 + 152) = v4;
      *v4 = v0;
      v4[1] = closure #1 in NearbyGroupHostManager.createGroup(id:generator:);
      v5 = *(v0 + 144);
      v6 = *(v0 + 128);

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 176, v6, v2);
    }

    goto LABEL_11;
  }

  v7 = *(v0 + 64);
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (!Strong)
  {
LABEL_11:
    v29 = *(v0 + 120);
    v30 = *(v0 + 96);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v31 = *(v0 + 8);

    return v31();
  }

  v9 = Strong;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.host);
  (*(v11 + 16))(v10, v13, v12);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v0 + 80);
  if (v17)
  {
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v21 = 136315394;
    *(v0 + 48) = v9;
    type metadata accessor for NearbyGroupHostManager();

    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v33);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v19 + 8))(v18, v20);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s learned that NearbyGroup %s invalidated.", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  return _swift_task_switch(closure #1 in NearbyGroupHostManager.createGroup(id:generator:), v9, 0);
}

{
  *(v0 + 40) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v1 = *(v0 + 168);
  NearbyGroupHostManager.removeGroup(groupID:)(*(v0 + 72));

  return _swift_task_switch(closure #1 in NearbyGroupHostManager.createGroup(id:generator:), 0, 0);
}

{
  v1 = v0[21];

  v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroupHost.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostC5StateO_G_GMR);
  v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = closure #1 in NearbyGroupHostManager.createGroup(id:generator:);
  v5 = v0[18];
  v6 = v0[16];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 22, v6, v2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NearbyGroupConnectionInfo?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t storeEnumTagSinglePayload for Pseudonym.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Pseudonym.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_9Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  v5 = *(v1 + 56);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsProviderDataSource.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsProviderDataSource.init()(a1, v4, v5, v6);
}

uint64_t objectdestroy_98Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t specialized NearbyGroupHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.group);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Asked to accept new connection from %@", v7, 0xCu);
    outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v36 = 0;
  v10 = *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  v11 = swift_allocObject();
  v11[2] = &v36;
  v11[3] = v4;
  v11[4] = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in NearbyGroupHost.listener(_:shouldAcceptNewConnection:);
  *(v12 + 24) = v11;
  v34 = partial apply for thunk for @callee_guaranteed () -> ();
  v35 = v12;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_49;
  v13 = _Block_copy(&aBlock);
  v14 = v4;
  v15 = v1;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    v17 = v36;
    if (v36)
    {
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v17;
      v19 = swift_allocObject();
      v14 = partial apply for closure #2 in NearbyGroupHost.listener(_:shouldAcceptNewConnection:);
      *(v19 + 16) = partial apply for closure #2 in NearbyGroupHost.listener(_:shouldAcceptNewConnection:);
      *(v19 + 24) = v18;
      v34 = thunk for @callee_guaranteed () -> ()partial apply;
      v35 = v19;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed () -> ();
      v33 = &block_descriptor_59;
      v20 = _Block_copy(&aBlock);
      v21 = v17;
      v22 = v15;
      v23 = v21;

      dispatch_sync(v10, v20);

      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_13:
        v29 = v36;

        _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v14);
        return v17 != 0;
      }

      __break(1u);
    }

    v25 = v14;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = [v25 processIdentifier];

      _os_log_impl(&_mh_execute_header, v26, v27, "NearbyGroupHostConnection could not be created; rejecting connection from PID %d.", v28, 8u);
    }

    else
    {

      v26 = v25;
    }

    v14 = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B098()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B0E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t closure #1 in NearbyGroupHost.listener(_:shouldAcceptNewConnection:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  v6 = objc_allocWithZone(type metadata accessor for NearbyGroupHostConnection());
  swift_unknownObjectWeakInit();
  v7 = v5;
  v8 = a2;
  v9 = XPCHostConnection.init(connection:queue:)();
  v10 = *a1;
  *a1 = v9;

  return _objc_release_x1();
}

uint64_t type metadata accessor for NearbyGroupHostConnection()
{
  result = type metadata singleton initialization cache for NearbyGroupHostConnection;
  if (!type metadata singleton initialization cache for NearbyGroupHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B2B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_10000B300(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_10000B354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000B3A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 216);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_10000B410()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B458()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000B4EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 288);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_10000B558()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B59C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B5E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B618()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_10000B6A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000B738@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_10000B878@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_10000B8C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_10000B968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}

uint64_t sub_10000B9BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 472);

  return v3(v4);
}

uint64_t sub_10000BA20()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v18 = (v2 + 40) & ~v2;
  v3 = (*(v1 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v4 = *(v19 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = v2 | v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 32);

  (*(v1 + 8))(v0 + v18, v20);
  v16 = *(v0 + v3);

  (*(v4 + 8))(v0 + v6, v19);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v13 + 8, v12 | 7);
}

uint64_t sub_10000BC3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000BD20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000BDF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000BED8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BF10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000BF68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000BFC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_10000C028()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 10);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10000C088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_10000C0D4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t sub_10000C128()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C160()
{
  v1 = type metadata accessor for NWEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000C23C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000C288(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 136);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_10000C2EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_10000C338(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t sub_10000C394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_10000C3E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);

  return v3(v4);
}

__n128 sub_10000C434@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 152))(v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_10000C4B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v2;
  v9 = *(a1 + 96);
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(**a2 + 160);
  outlined init with copy of BluetoothScanner.Device(v8, v7);
  return v5(v8);
}

uint64_t sub_10000C53C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_10000C588(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t sub_10000C5DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C61C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_10000C7F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x110))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000C85C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x118);

  return v4(v2, v3);
}

uint64_t sub_10000C8DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_10000C940(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x130);

  return v3(v4);
}

uint64_t sub_10000CA0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_10000CA70(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x178);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10000CAE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t sub_10000CB44(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x190);

  return v3(v4);
}

uint64_t sub_10000CBB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_10000CC14(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x1A8);

  return v3(v4);
}

uint64_t sub_10000CC80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

uint64_t sub_10000CCE4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x1C0);

  return v3(v4);
}

uint64_t sub_10000CD50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CD88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CDC0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 64);
  v10 = *(a1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(a1 + 80);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a2 + 80) = v12;
  *(a2 + 32) = v2;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v5;
  *(a2 + 16) = v6;
  return outlined init with copy of (String, Any)(v9, v8, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService15IgnoreEquatableVyACyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
}

__n128 sub_10000CE7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v13[3] = *(a1 + 48);
  v13[4] = v5;
  v14 = *(a1 + 80);
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v13[2] = v4;
  v7 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v7;
  v15[4] = *(a2 + 64);
  v16 = *(a2 + 80);
  v8 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v8;
  outlined init with copy of BluetoothScannerDiscoveryEngineDevice(v13, v12);
  outlined destroy of Any?(v15, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  v9 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v9;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_10000CF38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_10000CF44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 96);

  *(a2 + 88) = v4;
  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_10000CF88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_10000CFD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);

  return v3(v4);
}

uint64_t sub_10000D028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_10000D074(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_10000D0C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for IgnoreHashable();
  return IgnoreHashable.wrappedValue.getter(v5, a3);
}

id sub_10000D130@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 bleScanRate];
  *a2 = result;
  return result;
}

uint64_t sub_10000D188()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D200()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D240()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D288()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000D2C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

uint64_t sub_10000D324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10000D384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10000D3EC()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000D424()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D45C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D494()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D550@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v5 = (a1 + *(result + 20));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_10000D598(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v5 = a2 + *(result + 20);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_10000D5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v5 = (a1 + *(result + 24));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t sub_10000D62C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for NearbyProtoSessionMessage(0);
  v6 = a2 + *(result + 24);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t sub_10000D6C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t sub_10000D7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoJoinRequest(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t sub_10000D8AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  *a2 = *(a1 + *(result + 32)) & 1;
  return result;
}

uint64_t sub_10000D8E8(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NearbyProtoJoinRequest.Content(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_10000DA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_10000DB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 28));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_10000DBE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000DD14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E23ProtoConnectionResponseV7ContentV15OneOf_OperationOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000DE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000DEFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000DFB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000E05C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000E104(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000E234(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E17ProtoJoinResponseV7ContentV15OneOf_OperationOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000E39C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_10000E3F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10000E454()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000E4EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 408);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_10000E560()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000E5B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000E608()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E658()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000E744()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  v11 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10000E850()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E91C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10000EA1C()
{
  v1 = *(v0 + 16);

  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000EA64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EAA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_10000EAF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 312);

  return v3(v4);
}

uint64_t sub_10000EB54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_10000EBA8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 336);

  return v3(v4);
}

uint64_t sub_10000EC04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

uint64_t sub_10000EC58(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 360);

  return v3(v4);
}

uint64_t sub_10000ECB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t sub_10000ED08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 384);

  return v3(v4);
}

uint64_t sub_10000EDB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result;
  return result;
}

uint64_t sub_10000EE08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 456);

  return v3(v4);
}

uint64_t sub_10000EE64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000EEAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000EEFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000EF4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000EFA4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5];

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000F08C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F114()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F168()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F1A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000F288()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F2D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_10000F3B0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000F468@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_10000F51C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000F578(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xC0);

  return v4(v2, v3);
}

uint64_t sub_10000F5F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_10000F644(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

__n128 sub_10000F6A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10000F6B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_10000F6FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_10000F75C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_10000F7A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_10000F808()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F840()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_10000F920()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000FA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000FAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000FB94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000FC50()
{
  v1 = type metadata accessor for NearbyGroup_Group(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v0 + 32);

  v6 = (v0 + v3);
  v7 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_2;
      }

      outlined consume of Data._Representation(*v6, v6[1]);
      v11 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
      goto LABEL_15;
    }

    outlined consume of Data._Representation(*v6, v6[1]);
    v13 = v6[2];

    v12 = type metadata accessor for NearbyGroup_Group.Initialization(0);
LABEL_13:
    v14 = *(v12 + 24);
    v15 = type metadata accessor for UnknownStorage();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_2;
    }

    outlined consume of Data._Representation(*v6, v6[1]);
    v12 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
    goto LABEL_13;
  }

  outlined consume of Data._Representation(*v6, v6[1]);
  v11 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
LABEL_15:
  v16 = v11;
  v17 = *(v11 + 20);
  v18 = type metadata accessor for UnknownStorage();
  v19 = (*(v18 - 8) + 8);
  v25 = *v19;
  (*v19)(v6 + v17, v18);
  v20 = v6 + *(v16 + 24);
  v21 = type metadata accessor for NearbyGroup_Member(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = *(v20 + 1);

    v25(&v20[*(v21 + 20)], v18);
    v23 = *&v20[*(v21 + 24) + 8];
  }

LABEL_2:
  v8 = *(v1 + 20);
  v9 = type metadata accessor for UnknownStorage();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FF2C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010250(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000102FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000103A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001049C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0e6Group_H0V11OneOf_EventOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000105A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000106F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000107A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001084C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010884()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E11GroupMemberCG_GGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100010968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1000109B4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100010AAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010AF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100010B50(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x90);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_100010C94@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_100010CF0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xC0);

  return v3(v4);
}

uint64_t sub_100010D5C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010D94()
{
  v1 = (type metadata accessor for NearbyProtoConnectionRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[8];
  v8 = type metadata accessor for UnknownStorage();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = (v0 + v3 + v1[10]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v10, v11);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_100010ED0()
{
  v1 = type metadata accessor for NearbyProtoConnectionResponse.Content(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v0 + v3 + *(v1 + 24);
  v8 = type metadata accessor for NearbyProtoConnectionResponse.Content.OneOf_Operation(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined consume of Data._Representation(*v7, *(v7 + 8));
      v7 += *(type metadata accessor for NearbyProtoConnectionResponse.Content.ApprovalContent(0) + 20);
    }

    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v10 = *(v1 + 28);
  v11 = type metadata accessor for UnknownStorage();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100011084()
{
  v1 = type metadata accessor for NearbyProtoJoinResponse.Content(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v0 + v3 + *(v1 + 20);
  v7 = type metadata accessor for NearbyProtoJoinResponse.Content.OneOf_Operation(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *(v6 + 8);

      v9 = *(v6 + 16);

      v10 = type metadata accessor for NearbyProtoJoinResponse.Content.ApprovalContent(0);
      v11 = *(v10 + 24);
      v12 = type metadata accessor for UnknownStorage();
      (*(*(v12 - 8) + 8))(v6 + v11, v12);
      v13 = (v6 + *(v10 + 28));
      v14 = v13[1];
      if (v14 >> 60 != 15)
      {
        outlined consume of Data._Representation(*v13, v14);
      }
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      (*(*(v15 - 8) + 8))(v6, v15);
    }
  }

  v16 = *(v1 + 24);
  v17 = type metadata accessor for UnknownStorage();
  (*(*(v17 - 8) + 8))(v0 + v3 + v16, v17);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001129C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  flags = [objc_allocWithZone(CPFeatureFlags) init];
  listener.super.isa = [objc_opt_self() serviceListener];
  host = specialized NearbyInvitationServiceHost.__allocating_init(listener:featureFlags:)(listener.super.isa, flags);
  [*(host + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationServiceHost_listener) resume];
  exit(1);
}

uint64_t variable initialization expression of NearbyInvitationAdvertiser.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of NearbyInvitationServiceBluetoothController.queue()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  return AsyncSerialQueue.init(priority:bufferingPolicy:)();
}

uint64_t variable initialization expression of NearbyInvitationsScanner.$__lazy_storage_$_deviceFoundStream@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t default argument 0 of PseudonymProvider.init(storage:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = type metadata accessor for UserDefaultsPseudonymStorage();
  v4 = swift_allocObject();
  v5 = type metadata accessor for Lock();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = Lock.init()();
  v4[3] = v2;
  v4[4] = &_swiftEmptySetSingleton;
  v4[2] = result;
  a1[3] = v3;
  a1[4] = &protocol witness table for UserDefaultsPseudonymStorage;
  *a1 = v4;
  return result;
}

id default argument 0 of UserDefaultsPseudonymStorage.init(userDefaults:)()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

id variable initialization expression of PseudonymProvider.lock()
{
  v0 = objc_allocWithZone(NSRecursiveLock);

  return [v0 init];
}

uint64_t variable initialization expression of NearbyInvitationScanner.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of NearbyGroupHost.transaction()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo17OS_os_transaction_pSgSo0D14_unfair_lock_sVGMd, &_ss13ManagedBufferCySo17OS_os_transaction_pSgSo0D14_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of NearbyInvitationsProviderDataSource.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of NearbyGroupHostManager.abcReporter()
{
  v0 = type metadata accessor for ABCReporter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return ABCReporter.init(domain:type:)();
}

void default argument 1 of NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:)(void *a1@<X8>)
{
  v2 = objc_allocWithZone(IDSService);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithService:v3];

  if (v4)
  {
    a1[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
    a1[4] = &protocol witness table for IDSService;
    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t variable initialization expression of NearbyInvitationsInviteAdvertiser.lock(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return a2();
}

id variable initialization expression of NearbySession.session()
{
  v0 = objc_allocWithZone(NISession);

  return [v0 init];
}

uint64_t variable initialization expression of FilteredBluetoothScanner._filteredDevices()
{
  type metadata accessor for FilteredBluetoothScanner.FilteredDevice();

  return Array.init()();
}

uint64_t variable initialization expression of NearbyGroupHostIDSService._incomingMessages()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return PassthroughSubject.init()();
}

uint64_t variable initialization expression of _PublisherElements.Iterator.Inner.pending()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();

  return Array.init()();
}

double variable initialization expression of _PublisherElements.Iterator.Inner.state@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of NearbyProtoConnectionResponse.Content.operation@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7Network12NWConnectionCSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_7Network12NWConnectionCSgtMd, &_s10Foundation4UUIDV_7Network12NWConnectionCSgtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV7Network12NWConnectionCSgGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7Network12NWConnectionCSgGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_s10Foundation4UUIDV_7Network12NWConnectionCSgtMd, &_s10Foundation4UUIDV_7Network12NWConnectionCSgtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_44com_apple_SharePlay_NearbyInvitationsService0gH16InviteAdvertiserCtMd, &_s10Foundation4UUIDV_44com_apple_SharePlay_NearbyInvitationsService0gH16InviteAdvertiserCtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_s10Foundation4UUIDV_44com_apple_SharePlay_NearbyInvitationsService0gH16InviteAdvertiserCtMd, &_s10Foundation4UUIDV_44com_apple_SharePlay_NearbyInvitationsService0gH16InviteAdvertiserCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

void type metadata accessor for CBNearbyInfoV2InvitationRouteType(uint64_t a1, unint64_t *a2)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *(i - 7);
      v11 = *i;
      v12 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 32 * result;
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = v9;
      *(v16 + 17) = v10;
      *(v16 + 24) = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSaySSGGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConnectionMessageType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionMessageType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConnectionMessageType@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConnectionMessageType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t one-time initialization function for definition()
{
  type metadata accessor for AdvertisementProtocol();
  lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData(&lazy protocol witness table cache variable for type AdvertisementProtocol and conformance AdvertisementProtocol, v0, type metadata accessor for AdvertisementProtocol);
  v1 = type metadata accessor for NWProtocolFramer.Definition();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)();
  static AdvertisementProtocol.definition = result;
  return result;
}

uint64_t *AdvertisementProtocol.definition.unsafeMutableAddressor()
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  return &static AdvertisementProtocol.definition;
}

uint64_t static AdvertisementProtocol.definition.getter()
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }
}

uint64_t AdvertisementProtocol.__allocating_init(framer:)()
{

  return swift_allocObject();
}

uint64_t AdvertisementProtocol.start(framer:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NWProtocolFramer.StartResult.ready(_:);
  started = type metadata accessor for NWProtocolFramer.StartResult();
  v4 = *(*(started - 8) + 104);

  return v4(a1, v2, started);
}

uint64_t AdvertisementProtocolHeader.init(_:)(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
  }

  return *a1;
}

uint64_t NWProtocolFramer.Message.init(connectionMessageType:)()
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v0 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();

  dispatch thunk of NWProtocolFramer.Message.subscript.setter();

  return v0;
}

void AdvertisementProtocol.handleOutput(framer:message:messageLength:isComplete:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  dispatch thunk of NWProtocolFramer.Message.subscript.getter();
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v4 = v16[0];
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of Any?(&v18, &_sypSgMd, &_sypSgMR);
  }

  v4 = 0;
LABEL_6:
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (HIDWORD(a3))
  {
    goto LABEL_12;
  }

  *v16 = v4;
  __src = a3;
  v18 = specialized Data.InlineData.init(_:)(v16, &v16[4]);
  v19 = v5 & 0xFFFFFFFFFFFFFFLL;
  v6 = specialized Data.InlineData.init(_:)(&__src, &v18);
  v8 = v7;
  Data.append(_:)();
  outlined consume of Data._Representation(v6, v8 & 0xFFFFFFFFFFFFFFLL);
  v9 = v18;
  v10 = v19;
  NWProtocolFramer.Instance.writeOutput(data:)();
  outlined consume of Data._Representation(v9, v10);
  NWProtocolFramer.Instance.writeOutputNoCopy(length:)(a3);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000C8970;
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v13._object = 0x80000001000CDDD0;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    *v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    v14 = v18;
    v15 = v19;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v14;
    *(v12 + 40) = v15;
    print(_:separator:terminator:)();
  }
}

uint64_t NWProtocolFramer.Message.connectionMessageType.getter()
{
  dispatch thunk of NWProtocolFramer.Message.subscript.getter();
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    outlined destroy of Any?(v2, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  return result;
}

uint64_t AdvertisementProtocolHeader.encodedData.getter(uint64_t a1)
{
  v6 = HIDWORD(a1);
  __src = a1;
  v8[0] = specialized Data.InlineData.init(_:)(&__src, v8);
  v8[1] = v1 & 0xFFFFFFFFFFFFFFLL;
  v2 = specialized Data.InlineData.init(_:)(&v6, &__src);
  v4 = v3;
  Data.append(_:)();
  outlined consume of Data._Representation(v2, v4 & 0xFFFFFFFFFFFFFFLL);
  return v8[0];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AdvertisementProtocolHeader.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AdvertisementProtocolHeader.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AdvertisementProtocolHeader.CodingKeys()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AdvertisementProtocolHeader.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AdvertisementProtocolHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AdvertisementProtocolHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AdvertisementProtocolHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy44com_apple_SharePlay_NearbyInvitationsService27AdvertisementProtocolHeaderV10CodingKeys33_BB57DF391DAD469BCCA423D45398D2B3LLOGMd, &_ss22KeyedEncodingContainerVy44com_apple_SharePlay_NearbyInvitationsService27AdvertisementProtocolHeaderV10CodingKeys33_BB57DF391DAD469BCCA423D45398D2B3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AdvertisementProtocolHeader@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized AdvertisementProtocolHeader.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t UserDefaultsPseudonymStorage.inUse.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t UserDefaultsPseudonymStorage.inUse.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t NearbyInvitationAdvertiser.connections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyInvitationAdvertiser.connections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*NearbyInvitationAdvertiser.connections.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t NearbyInvitationAdvertiser.$connections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NearbyInvitationAdvertiser.$connections.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__connections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

uint64_t NearbyInvitationAdvertiser.dataReceived.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyInvitationAdvertiser.dataReceived.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*NearbyInvitationAdvertiser.dataReceived.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return NearbyInvitationAdvertiser.dataReceived.modify;
}

void NearbyInvitationAdvertiser.connections.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t NearbyInvitationAdvertiser.$dataReceived.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NearbyInvitationAdvertiser.$dataReceived.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DataVSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__dataReceived;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$dataReceived.modify;
}

void NearbyInvitationAdvertiser.$connections.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t NearbyInvitationAdvertiser.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t NearbyInvitationAdvertiser.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyInvitationAdvertiser.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return NearbyInvitationAdvertiser.delegate.modify;
}

void NearbyInvitationAdvertiser.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t NearbyInvitationAdvertiser.receiveNextMessage(from:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "*** NearbyInvitationsAdvertiser received data", v7, 2u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v2;

  NWConnection.receiveMessage(completion:)();
}

uint64_t closure #1 in NearbyInvitationAdvertiser.receiveNextMessage(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.client);
  outlined copy of Data?(a1, a2);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);

  if (os_log_type_enabled(v14, v15))
  {
    v55 = a1;
    v56 = a6;
    v54 = a7;
    v16 = 7104878;
    v17 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = a5;
    if (a2 >> 60 == 15)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v59 = v55;
      v60 = a2;
      outlined copy of Data._Representation(v55, a2);
      v20 = String.init<A>(reflecting:)();
      v19 = v21;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v58);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    if (a3)
    {
      v59 = a3;
      type metadata accessor for NWConnection.ContentContext();

      v16 = String.init<A>(reflecting:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    a5 = v18;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v24, &v58);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "*** Received message - with data %s with contentContext %s", v17, 0x16u);
    swift_arrayDestroy();

    a7 = v54;
    a1 = v55;
    a6 = v56;
    if (!a3)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (!a3)
    {
LABEL_42:
      v49 = type metadata accessor for NWError();
      result = (*(*(v49 - 8) + 48))(a5, 1, v49);
      if (result == 1)
      {
        return (*(*a7 + 304))(a6);
      }

      return result;
    }
  }

  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  if (!dispatch thunk of NWConnection.ContentContext.protocolMetadata(definition:)())
  {
    goto LABEL_42;
  }

  outlined copy of Data?(a1, a2);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);
  if (os_log_type_enabled(v26, v27))
  {
    v57 = a6;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v58 = v29;
    *v28 = 136315138;
    v53 = a5;
    if (a2 >> 60 == 15)
    {
      v30 = 7104878;
      v31 = 0xE300000000000000;
    }

    else
    {
      v59 = a1;
      v60 = a2;
      outlined copy of Data._Representation(a1, a2);
      v30 = String.init<A>(reflecting:)();
      v31 = v32;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v58);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "*** Received message - will now send over to delegate %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);

    a6 = v57;
    a5 = v53;
  }

  else
  {
  }

  type metadata accessor for NWProtocolFramer.Message();
  if (swift_dynamicCastClass())
  {

    dispatch thunk of NWProtocolFramer.Message.subscript.getter();
    if (v61)
    {
      if (swift_dynamicCast())
      {
        if (v58 > 2u)
        {

          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "*** Advertiser connection was received or denied", v52, 2u);
          }

          NWConnection.cancel()();
          goto LABEL_41;
        }

        if (v58)
        {
          if (v58 == 1)
          {
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&_mh_execute_header, v34, v35, "*** Advertiser connection was requested", v36, 2u);
            }

            if ((*(*a7 + 280))())
            {
              v38 = v37;
              ObjectType = swift_getObjectType();
              v40 = swift_dynamicCastClassUnconditional();
              (*(v38 + 8))(a1, a2, v40, ObjectType, v38);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            goto LABEL_42;
          }

          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_40;
          }

          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = "Advertiser should not get connectionApproved";
          goto LABEL_39;
        }
      }
    }

    else
    {

      outlined destroy of Any?(&v59, &_sypSgMd, &_sypSgMR);
    }

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v45, v46))
    {
LABEL_40:

LABEL_41:

      goto LABEL_42;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Connection was invalid";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v45, v46, v48, v47, 2u);

    goto LABEL_40;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "*** Could not cast message context", v43, 2u);
  }
}

char *NearbyInvitationAdvertiser.__allocating_init(listenerConfiguration:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v11 = specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(a1, a2, v9, ObjectType, a3);
  swift_unknownObjectRelease();
  return v11;
}

char *NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(a1, a2, v3, ObjectType, a3);
  swift_unknownObjectRelease();
  return v8;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyInvitationAdvertiser.advertise()()
{
  v0 = type metadata accessor for NWListener.Service.Invitation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for NWListener.Service();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for NWListener.Service.Invitation.Route();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v64 - v10;
  v71 = type metadata accessor for NWListener.Service.Invitation.Scope();
  v73 = *(v71 - 8);
  v11 = *(v73 + 64);
  v12 = __chkstk_darwin(v71);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v64 - v15;
  type metadata accessor for NWParameters();
  specialized static NearbyInvitationAdvertiser.createParameters(isBrowsing:)(0);
  v16 = NWParameters.__allocating_init(_:)();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for NWProtocolFramer.Options();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = NWProtocolFramer.Options.init(definition:)();
  v69 = v16;
  NWParameters.defaultProtocolStack.getter();

  v21 = v74;
  v23 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.modify();
  if (*v22 >> 62)
  {
    if (*v22 < 0)
    {
      v62 = *v22;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v20);

  v23(v74, 0);

  v24 = v68[3];
  v25 = NearbyInvitationParameters.browserType.getter();
  if (v25 >= 3)
  {
    LODWORD(v74[0]) = v25;
LABEL_33:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v26 = v73;
  v21 = v71;
  (*(v73 + 104))(v14, **(&off_1000EA578 + v25), v71);
  v27 = v72;
  (*(v26 + 32))(v72, v14, v21);
  v28 = NearbyInvitationParameters.routeType.getter();
  if ((v28 & 0x100000000) != 0)
  {
    if (one-time initialization token for client == -1)
    {
LABEL_13:
      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Log.client);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Client has not implemented listener parameters", v43, 2u);
      }

      else
      {
      }

      (*(v73 + 8))(v72, v21);
      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_13;
  }

  v64 = v20;
  if (v28 >= 3)
  {
    LODWORD(v74[0]) = v28;
    goto LABEL_33;
  }

  v29 = v65;
  v30 = v66;
  (*(v66 + 104))(v9, **(&off_1000EA590 + (v28 & 3)), v65);
  v31 = v67;
  (*(v30 + 32))(v67, v9, v29);
  type metadata accessor for NWListener();
  NearbyInvitationParameters.serviceName.getter();
  static NWListener.Service.Invitation.wrangler(route:scope:)();
  NWListener.Service.init(applicationService:invitation:)();

  v32 = v70;
  v33 = NWListener.__allocating_init(service:using:)();
  if (v32)
  {

    (*(v30 + 8))(v31, v29);
    (*(v73 + 8))(v27, v71);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.client);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Error %@", v37, 0xCu);
      outlined destroy of Any?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }

  else
  {
    v44 = v33;
    swift_allocObject();
    v45 = v68;
    swift_weakInit();

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #1 in NearbyInvitationAdvertiser.advertise());
    NWListener.newConnectionHandler.setter();

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(closure #2 in NearbyInvitationAdvertiser.advertise());
    NWListener.stateUpdateHandler.setter();
    v46 = *(*v45 + 152);

    v47 = v46(v74);
    v49 = v48;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v63 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v47(v74, 0);
    v50 = v45[2];
    NWListener.start(queue:)();
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Log.client);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v67;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v70 = 0;
      v57 = v56;
      v58 = swift_slowAlloc();
      v74[0] = v58;
      *v57 = 136315138;
      v74[5] = v44;

      v59 = String.init<A>(reflecting:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v74);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, "*** Starting new listener, %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);

      (*(v66 + 8))(v67, v29);
    }

    else
    {

      (*(v66 + 8))(v55, v29);
    }

    (*(v73 + 8))(v72, v71);
  }
}

void closure #1 in NearbyInvitationAdvertiser.advertise()(uint64_t a1)
{
  v2 = type metadata accessor for NWEndpoint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.client);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v12 = 136315394;
      NWConnection.endpoint.getter();
      v13 = NWEndpoint.debugDescription.getter();
      v15 = v14;
      (*(v3 + 8))(v6, v2);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v30);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v29 = a1;
      type metadata accessor for NWConnection();

      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v30);

      *(v12 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "*** Received connection [%s] - '%s", v12, 0x16u);
      swift_arrayDestroy();
    }

    v20 = (*(*v8 + 22))(v30);
    v22 = v21;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20(v30, 0);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a1;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #1 in closure #1 in NearbyInvitationAdvertiser.advertise());
    NWConnection.stateUpdateHandler.setter();

    v25 = v8[2];
    NWConnection.start(queue:)();
  }
}

uint64_t closure #1 in closure #1 in NearbyInvitationAdvertiser.advertise()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for NWConnection.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v41 - v18;
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v46 = result;
  if (result)
  {
    v45 = a3;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.client);
    v24 = *(v12 + 16);
    v24(v21, v47, v11);
    v25 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v44))
    {
      v42 = v25;
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48[0] = v41;
      v43 = v26;
      *v26 = 136315138;
      v24(v10, v21, v11);
      (*(v12 + 56))(v10, 0, 1, v11);
      outlined init with copy of (String, Any)(v10, v8, &_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {
        v27 = 0xE300000000000000;
        v28 = 7104878;
      }

      else
      {
        (*(v12 + 32))(v19, v8, v11);
        v24(v16, v19, v11);
        v28 = String.init<A>(reflecting:)();
        v27 = v30;
        (*(v12 + 8))(v19, v11);
      }

      v31 = v42;
      outlined destroy of Any?(v10, &_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
      v29 = *(v12 + 8);
      v29(v21, v11);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v48);

      v33 = v43;
      *(v43 + 1) = v32;
      _os_log_impl(&_mh_execute_header, v31, v44, "*** NearbyInvitationsAdvertiser New Connection - State=%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
    }

    else
    {

      v29 = *(v12 + 8);
      v29(v21, v11);
    }

    v34 = *(v12 + 104);
    v34(v19, enum case for NWConnection.State.ready(_:), v11);
    v35 = static NWConnection.State.== infix(_:_:)();
    v29(v19, v11);
    v36 = v46;
    if (v35)
    {
      (*(*v46 + 304))(v45);
    }

    v34(v19, enum case for NWConnection.State.cancelled(_:), v11);
    v37 = static NWConnection.State.== infix(_:_:)();
    v29(v19, v11);
    if (v37)
    {
      v38 = (*(*v36 + 152))(v48);
      v40 = *v39;
      *v39 = &_swiftEmptyArrayStorage;

      v38(v48, 0);
    }
  }

  return result;
}