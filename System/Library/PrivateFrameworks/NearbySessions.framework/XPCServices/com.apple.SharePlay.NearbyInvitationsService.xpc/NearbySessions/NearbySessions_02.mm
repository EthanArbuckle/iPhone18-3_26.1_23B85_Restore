uint64_t NearbyInvitationsScanner.lostDevices()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  (*(v1 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

void closure #1 in NearbyInvitationsScanner.lostDevices()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 48);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices();
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
  aBlock[3] = &block_descriptor_205;
  v13 = _Block_copy(aBlock);

  [v9 setDeviceLostHandler:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  v7 = [a1 idsDeviceID];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v13 = *(Strong + 24);

  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v15 = *&v13[v14];

  if (!*(v15 + 16))
  {
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
  v17 = v16;

  if (v17)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, log);

    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001000CE670, &v29);
      *(v23 + 12) = 2112;
      *(v23 + 14) = v20;
      *v24 = v20;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s: Lost unfiltered device: %@", v23, 0x16u);
      outlined destroy of Any?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    v29 = v20;
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
    AsyncStream.Continuation.yield(_:)();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

Swift::Void __swiftcall NearbyInvitationsScanner.foundDeviceInRange(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  *&v93 = identifier._countAndFlagsBits;
  v86[1] = *v1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v95 = *(v88 - 8);
  isa = v95[8].isa;
  __chkstk_darwin(v88);
  v86[0] = v86 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v86 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v90 = v86 - v10;
  v87 = v1;
  v92 = v1[6];
  v11 = [v92 discoveredDevices];
  v91 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v89 = v7;
  if (v12 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = [v15 idsDeviceID];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (v20 == v93 && v22 == object)
        {

LABEL_17:
          if (([v16 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(v16, "nearbyInfoV2InvitationCounter"))
          {

            v25 = v16;
            v26 = specialized NearbyInvitationRangedHost.init(with:)(v25);
            if (v27)
            {
              v29 = v26;
              v30 = v27;
              v31 = v28;
              if (one-time initialization token for log != -1)
              {
                swift_once();
              }

              v32 = type metadata accessor for Logger();
              __swift_project_value_buffer(v32, log);

              v33 = object;

              v34 = Logger.logObject.getter();
              v35 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                v98 = swift_slowAlloc();
                *v36 = 136315650;
                v37 = _typeName(_:qualified:)();
                v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v98);
                v92 = v25;
                v40 = v31;
                v41 = v39;

                *(v36 + 4) = v41;
                *(v36 + 12) = 2080;
                v96[0] = v29;
                v96[1] = v30;
                v97 = v40;

                v42 = String.init<A>(reflecting:)();
                v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v98);

                *(v36 + 14) = v44;
                v31 = v40;
                v25 = v92;
                v45 = v93;
                *(v36 + 22) = 2080;
                *(v36 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v33, &v98);
                _os_log_impl(&_mh_execute_header, v34, v35, "%s: Found ranged device: %s with identifier: %s", v36, 0x20u);
                swift_arrayDestroy();
              }

              v46 = v95;
              v48 = v89;
              v47 = v90;
              v49 = v87;
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(&v98, v29, v30, v31);
              swift_endAccess();

              (*(*v49 + 296))(v50);
              v51 = v88;
              if ((v46[6].isa)(v48, 1, v88))
              {

                outlined destroy of Any?(v48, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
                v52 = 1;
              }

              else
              {
                v59 = v86[0];
                (v46[2].isa)(v86[0], v48, v51);
                outlined destroy of Any?(v48, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
                v96[0] = v25;
                AsyncStream.Continuation.yield(_:)();
                (v46[1].isa)(v59, v51);
                v52 = 0;
              }

              v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
              (*(*(v60 - 8) + 56))(v47, v52, 1, v60);
              outlined destroy of Any?(v47, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GSgMR);
            }

            else
            {
              if (one-time initialization token for log != -1)
              {
                swift_once();
              }

              v53 = type metadata accessor for Logger();
              __swift_project_value_buffer(v53, log);
              v54 = v25;
              v95 = Logger.logObject.getter();
              v55 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v95, v55))
              {
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                *v56 = 138412290;
                *(v56 + 4) = v54;
                *v57 = v54;
                object = v54;
                _os_log_impl(&_mh_execute_header, v95, v55, "Failed to get Bluetooth device after ranging: %@", v56, 0xCu);
                outlined destroy of Any?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

                v58 = object;
              }

              else
              {

                v58 = v95;
              }
            }

            return;
          }

          goto LABEL_4;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_17;
        }
      }

LABEL_4:

      ++v14;
      if (v17 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:

  if (one-time initialization token for log != -1)
  {
    goto LABEL_57;
  }

LABEL_42:
  v61 = type metadata accessor for Logger();
  v62 = __swift_project_value_buffer(v61, log);
  v63 = object;

  v95 = v62;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v96[0] = v67;
    *v66 = 136315138;
    *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v63, v96);
    _os_log_impl(&_mh_execute_header, v64, v65, "Failed to find ranged device %s in bluetooth's discovered devices:", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
  }

  v68 = [v92 discoveredDevices];
  v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v69 >> 62))
  {
    v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v71)
    {
      goto LABEL_59;
    }

    goto LABEL_46;
  }

  v71 = _CocoaArrayWrapper.endIndex.getter();
  if (v71)
  {
LABEL_46:
    v72 = 0;
    v73 = v69 & 0xC000000000000001;
    v74 = v69 & 0xFFFFFFFFFFFFFF8;
    *&v70 = 138412290;
    v93 = v70;
    object = v69;
    do
    {
      if (v73)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v76 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v72 >= *(v74 + 16))
        {
          goto LABEL_56;
        }

        v75 = *(v69 + 8 * v72 + 32);
        v76 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          swift_once();
          goto LABEL_42;
        }
      }

      v77 = v75;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = v73;
        v81 = v71;
        v82 = swift_slowAlloc();
        v83 = v74;
        v84 = swift_slowAlloc();
        *v82 = v93;
        *(v82 + 4) = v77;
        *v84 = v77;
        v85 = v77;
        _os_log_impl(&_mh_execute_header, v78, v79, "device: %@", v82, 0xCu);
        outlined destroy of Any?(v84, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v74 = v83;

        v71 = v81;
        v73 = v80;
        v69 = object;
      }

      ++v72;
    }

    while (v76 != v71);
  }

LABEL_59:
}

uint64_t NearbyInvitationsScanner.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  return v0;
}

uint64_t NearbyInvitationsScanner.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id NearbyInvitationsInviteAdvertiser.publicAssertions.didset()
{
  v1 = v0;
  if (one-time initialization token for log != -1)
  {
LABEL_23:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    v7 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions;
    swift_beginAccess();
    v8 = *(v1 + v7);
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);

    v9 = Dictionary.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v33);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "new assertions: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v13 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_lock);
  Lock.assertOwned()();
  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = *(v1 + v14);

  v21 = 0;
  if (!v18)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_7:
    while (1)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * v22)));
      if (v23)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_9;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v26 = *(&_swiftEmptyArrayStorage + 2);
    v25 = *(&_swiftEmptyArrayStorage + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v27 = v26 + 1;
    }

    *(&_swiftEmptyArrayStorage + 2) = v27;
    *(&_swiftEmptyArrayStorage + v26 + 4) = v23;
  }

  while (v18);
  while (1)
  {
LABEL_9:
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v24 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v24);
    ++v21;
    if (v18)
    {
      v21 = v24;
      goto LABEL_7;
    }
  }

  v28 = *(&_swiftEmptyArrayStorage + 2);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 67109120;
    *(v31 + 4) = v28 != 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "NearbyInvitationsInviteAdvertiser: Re-calculated needsPublicBit: %{BOOL}d", v31, 8u);
  }

  return [*(v1 + 16) setNearbyInfoV2Flags:4 * (v28 != 0)];
}

id NearbyInvitationsInviteAdvertiser.publicAssertions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  return NearbyInvitationsInviteAdvertiser.publicAssertions.didset();
}

id (*NearbyInvitationsInviteAdvertiser.publicAssertions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return NearbyInvitationsInviteAdvertiser.publicAssertions.modify;
}

id NearbyInvitationsInviteAdvertiser.publicAssertions.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return NearbyInvitationsInviteAdvertiser.publicAssertions.didset();
  }

  return result;
}

uint64_t *NearbyInvitationsInviteAdvertiser.init(invitation:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_lock;
  v10 = type metadata accessor for Lock();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v1 + v9) = Lock.init()();
  *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions) = &_swiftEmptyDictionarySingleton;
  NearbyInvitationsAdvertiser.init()();
  v13 = v1[2];
  swift_retain_n();
  [v13 setAdvertiseRate:42];
  [v2[2] setUseCase:131091];
  v14 = v2[2];
  [v14 setNearbyInfoV2InvitationRouteType:NearbyAdvertisementRequest.route.getter()];

  v15 = v2[2];
  NearbyAdvertisementRequest.identifier.getter();
  LOBYTE(v13) = UUID.hashValue.getter();
  (*(v5 + 8))(v8, v4);
  [v15 setNearbyInfoV2InvitationCounter:v13];

  v16 = v2[2];
  NearbyAdvertisementRequest.activityType.getter();
  LODWORD(v13) = NearbyInvitationActivityType.rawValue.getter();
  [v16 setNearbyInfoV2DecryptedFlags:v13 == NearbyInvitationActivityType.rawValue.getter()];

  v17 = v2[2];
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsInviteAdvertiser.init(invitation:);
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_52;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  [v20 setAdvertisingAddressChangedHandler:v19];
  _Block_release(v19);

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, log);
  swift_retain_n();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315906;
    v26 = *v2;
    v27 = _typeName(_:qualified:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);

    *(v24 + 4) = v29;
    *(v24 + 12) = 256;
    v30 = [v2[2] nearbyInfoV2InvitationRouteType];

    *(v24 + 14) = v30;

    *(v24 + 15) = 256;
    v31 = [v2[2] nearbyInfoV2InvitationCounter];

    *(v24 + 17) = v31;

    *(v24 + 18) = 256;
    v32 = [v2[2] nearbyInfoV2DecryptedFlags];

    *(v24 + 20) = v32;

    _os_log_impl(&_mh_execute_header, v22, v23, "%s: Begin advertising with parameters: routeType=%hhu counter=%hhu types=%hhu", v24, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
  }

  return v2;
}

uint64_t closure #1 in NearbyInvitationsInviteAdvertiser.init(invitation:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 192))(result);
  }

  return result;
}

uint64_t NearbyInvitationsInviteAdvertiser.assertPublic(rotations:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_lock);
  type metadata accessor for UUID();
  return Lock.withLock<A>(_:)();
}

uint64_t closure #1 in NearbyInvitationsInviteAdvertiser.assertPublic(rotations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UUID.init()();
  (*(v7 + 16))(v10, a3, v6);
  v11 = (*(*a1 + 160))(v18);
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v13;
  *v13 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v10, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v10, v6);
  v16 = *v13;
  *v13 = v19;

  return v11(v18, 0);
}

uint64_t closure #1 in NearbyInvitationsInviteAdvertiser.addressChanged()(uint64_t a1)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    (*(*a1 + 144))();
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v7 = Dictionary.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Notified about address rotation, assertions: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v11 = (*(*a1 + 144))();
  v12 = specialized Dictionary.compactMapValues<A>(_:)(v11);

  return (*(*a1 + 152))(v12);
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Su5valuetMd, &_s10Foundation4UUIDV3key_Su5valuetMR);
  v2 = *(*(v53 - 8) + 64);
  v3 = __chkstk_darwin(v53);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v46 - v6;
  __chkstk_darwin(v5);
  v52 = &v46 - v8;
  v49 = &_swiftEmptyDictionarySingleton;
  v55 = &_swiftEmptyDictionarySingleton;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v54 = a1;

  v15 = 0;
  v50 = a1 + 64;
  v51 = v7;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v15 = v16;
LABEL_10:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v15 << 6);
      v19 = v54;
      v20 = *(v54 + 48);
      v21 = type metadata accessor for UUID();
      v22 = *(v21 - 8);
      v23 = v22;
      v24 = *(v22 + 72);
      v25 = v20 + v24 * v18;
      v26 = v52;
      (*(v22 + 16))(v52, v25, v21);
      v27 = *(*(v19 + 56) + 8 * v18);
      v28 = v53;
      *(v26 + *(v53 + 48)) = v27;
      v29 = v51;
      outlined init with take of (key: UUID, value: UInt)(v26, v51);
      v30 = *(v29 + *(v28 + 48));
      if (v30 >= 2)
      {
        break;
      }

      result = outlined destroy of Any?(v29, &_s10Foundation4UUIDV3key_Su5valuetMd, &_s10Foundation4UUIDV3key_Su5valuetMR);
      v16 = v15;
      v9 = v50;
      if (!v12)
      {
LABEL_7:
        while (1)
        {
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v15 >= v13)
          {

            return v49;
          }

          v12 = *(v9 + 8 * v15);
          ++v16;
          if (v12)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v46 = v24;
    v47 = v23;
    outlined init with take of (key: UUID, value: UInt)(v29, v48);
    v31 = v49[2];
    if (v49[3] <= v31)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31 + 1, 1);
    }

    v32 = v55;
    v33 = v55[5];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = v32 + 8;
    v49 = v32;
    v35 = -1 << *(v32 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~v32[(v36 >> 6) + 8]) == 0)
    {
      break;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~v32[(v36 >> 6) + 8])) | v36 & 0x7FFFFFFFFFFFFFC0;
    v40 = v46;
    v39 = v47;
LABEL_25:
    *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v45 = v49;
    result = (*(v39 + 32))(v49[6] + v38 * v40, v48, v21);
    *(v45[7] + 8 * v38) = v30 - 1;
    ++v45[2];
    v9 = v50;
  }

  v41 = 0;
  v42 = (63 - v35) >> 6;
  v40 = v46;
  v39 = v47;
  while (++v37 != v42 || (v41 & 1) == 0)
  {
    v43 = v37 == v42;
    if (v37 == v42)
    {
      v37 = 0;
    }

    v41 |= v43;
    v44 = v34[v37];
    if (v44 != -1)
    {
      v38 = __clz(__rbit64(~v44)) + (v37 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t NearbyInvitationsInviteAdvertiser.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_lock);

  v2 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions);
}

uint64_t NearbyInvitationsInviteAdvertiser.deinit()
{
  NearbyInvitationsAdvertiser.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_lock);

  v2 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions);

  return v0;
}

uint64_t NearbyInvitationsInviteAdvertiser.__deallocating_deinit()
{
  NearbyInvitationsAdvertiser.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_lock);

  v2 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService33NearbyInvitationsInviteAdvertiser_publicAssertions);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t key path setter for NearbyInvitationsInviteScanner.lostInvitations : NearbyInvitationsInviteScanner(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (String, Any)(a1, &v9 - v6, &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  return (*(**a2 + 448))(v7);
}

uint64_t NearbyInvitationsScanner.deviceFoundContinuation.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of (String, Any)(v4 + v8, a4, a2, a3);
}

uint64_t NearbyInvitationsScanner.deviceFoundContinuation.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t NearbyInvitationsInviteAdvertiser.publicAssertions.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t NearbyInvitationsInviteScanner.advertisements.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NearbyInvitationsInviteScanner.init(ignoringDistance:)(char a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements) = &_swiftEmptyDictionarySingleton;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, 1, 1, v6);
  NearbyInvitationsScanner.init(ignoringDistance:)(a1);
  v8 = *(v1 + 48);

  [v8 setUseCase:131092];
  [*(v1 + 48) addDiscoveryType:21];

  return v1;
}

uint64_t NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v30 = a2;
  v31 = a1;
  v28 = *v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D13AdvertisementC__GMR);
  v33 = *(v26 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v26);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v27 = *(v29 - 8);
  v16 = *(v27 + 64);
  __chkstk_darwin(v29);
  v18 = &v25 - v17;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v19 = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  (*(v12 + 104))(v15, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v11);
  AsyncStream.init(_:bufferingPolicy:_:)();
  type metadata accessor for NearbyAdvertisement();
  v20 = *(v33 + 104);
  v33 += 104;
  v21 = v26;
  v20(v6, v19, v26);
  v22 = v28;
  v39 = v3;
  v40 = v28;
  AsyncStream.init(_:bufferingPolicy:_:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  (*(*v3 + 448))(v10);
  v20(v6, v19, v21);
  v34 = v3;
  v35 = v18;
  v36 = v30;
  v37 = v31;
  v38 = v22;
  AsyncStream.init(_:bufferingPolicy:_:)();
  return (*(v27 + 8))(v18, v29);
}

uint64_t closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v55 = a6;
  v53 = a5;
  v51 = a3;
  v56 = a2;
  v46 = a1;
  v60 = type metadata accessor for UUID();
  v58 = *(v60 - 8);
  v52 = *(v58 + 64);
  __chkstk_darwin(v60);
  v59 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v9 = *(v8 - 8);
  v50 = v9[8];
  __chkstk_darwin(v8);
  v57 = &v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v49);
  v48 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v43 - v16;
  v47 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v43 - v20;
  v22 = v9[2];
  v23 = a1;
  v24 = v8;
  v22(&v43 - v20, v23, v8);
  v25 = v9;
  v26 = v9[7];
  v45 = v8;
  v26(v21, 0, 1, v8);
  v27 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v28 = v56;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v21, v28 + v27, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  swift_endAccess();
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  v30 = v11;
  v44 = v11;
  v31 = *(v11 + 16);
  v32 = v48;
  v33 = v49;
  v31(v48, v51, v49);
  v22(v57, v46, v24);
  v34 = v58;
  (*(v58 + 16))(v59, v53, v60);
  v35 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v36 = (v12 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = v25;
  v38 = (*(v25 + 80) + v36 + 8) & ~*(v25 + 80);
  v39 = (v50 + *(v34 + 80) + v38) & ~*(v34 + 80);
  v40 = (v52 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = v56;
  (*(v44 + 32))(&v41[v35], v32, v33);
  *&v41[v36] = v54;
  (v37[4])(&v41[v38], v57, v45);
  (*(v58 + 32))(&v41[v39], v59, v60);
  *&v41[v40] = v55;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v47, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:), v41);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v25;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMR);
  v8[14] = v10;
  v11 = *(v10 - 8);
  v8[15] = v11;
  v12 = *(v11 + 64) + 15;
  v8[16] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v8[17] = v13;
  v14 = *(v13 - 8);
  v8[18] = v14;
  v15 = *(v14 + 64) + 15;
  v8[19] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo8CBDeviceC_GMd, &_sScS8IteratorVySo8CBDeviceC_GMR);
  v8[20] = v16;
  v17 = *(v16 - 8);
  v8[21] = v17;
  v18 = *(v17 + 64) + 15;
  v8[22] = swift_task_alloc();
  v22 = (*a4 + 328);
  v23 = (*v22 + **v22);
  v19 = (*v22)[1];
  v20 = swift_task_alloc();
  v8[23] = v20;
  *v20 = v8;
  v20[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:);

  return v23();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[22];
    v6 = v2[19];
    v7 = v2[16];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:), 0, 0);
  }
}

{
  v1 = v0[22];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:);
  v5 = v0[22];
  v6 = v0[20];

  return AsyncStream.Iterator.next(isolation:)(v0 + 6, 0, 0, v6);
}

{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:), 0, 0);
}

{
  v73 = v0;
  v2 = v0 + 48;
  v1 = *(v0 + 48);
  if (v1)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, log);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v1;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "!!! Found device %@", v7, 0xCu);
      outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v10 = *(v0 + 80);

    v11 = [v4 nearbyInfoV2DecryptedFlags] & 1;
    if (specialized Sequence<>.contains(_:)(v11, v10))
    {
      v12 = [v4 stableIdentifier];
      if (v12)
      {
        v14 = *(v0 + 144);
        v13 = *(v0 + 152);
        v15 = *(v0 + 136);
        v16 = *(v0 + 96);
        v17 = v12;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        type metadata accessor for NearbyAdvertisement();
        (*(v14 + 16))(v13, v16, v15);
        v20 = v4;
        v21 = NearbyAdvertisement.init(id:device:)(v13, v20);
        if (v21)
        {
          v22 = v21;
          v70 = v20;
          v23 = *(**(v0 + 64) + 480);
          v24 = v21;
          v25 = v23(v0 + 16);
          specialized Dictionary.subscript.setter(v22, v71, v19);
          v25(v0 + 16, 0);
          v26 = v24;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = *(v0 + 104);
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v72 = v32;
            *v30 = 136315394;
            v33 = _typeName(_:qualified:)();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v72);

            *(v30 + 4) = v35;
            *(v30 + 12) = 2112;
            *(v30 + 14) = v26;
            *v31 = v22;
            v36 = v26;
            _os_log_impl(&_mh_execute_header, v27, v28, "%s: !!! Yielded invite %@", v30, 0x16u);
            outlined destroy of Any?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

            __swift_destroy_boxed_opaque_existential_0Tm(v32);
          }

          v37 = *(v0 + 120);
          v38 = *(v0 + 128);
          v39 = *(v0 + 112);
          v40 = *(v0 + 88);
          *(v0 + 56) = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
          v2 = v0 + 48;
          AsyncStream.Continuation.yield(_:)();

          (*(v37 + 8))(v38, v39);
          goto LABEL_26;
        }

        v56 = v20;
        v46 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();

        v2 = v0 + 48;
        if (os_log_type_enabled(v46, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v64 = 138412290;
          *(v64 + 4) = v56;
          *v65 = v1;
          v4 = v56;
          _os_log_impl(&_mh_execute_header, v46, v63, "Unable to create NearbyAdvertisement from device: %@", v64, 0xCu);
          outlined destroy of Any?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          goto LABEL_17;
        }
      }

      else
      {
        v56 = v4;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 138412290;
          *(v59 + 4) = v56;
          *v60 = v1;
          v61 = v56;
          _os_log_impl(&_mh_execute_header, v57, v58, "Device contains invitation, but no stableIdentifier. device: %@", v59, 0xCu);
          outlined destroy of Any?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        }

        v62 = *(v0 + 88);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
        AsyncStream.Continuation.finish()();
      }

      goto LABEL_26;
    }

    v45 = *(v0 + 80);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v46, v47))
    {
LABEL_18:

LABEL_26:
      v66 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v67 = swift_task_alloc();
      *(v0 + 192) = v67;
      *v67 = v0;
      v67[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:);
      v68 = *(v0 + 176);
      v69 = *(v0 + 160);

      return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v69);
    }

    v48 = *(v0 + 80);
    v49 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v49 = 136315394;
    v50 = Array.description.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v72);

    *(v49 + 4) = v52;
    v2 = v0 + 48;
    *(v49 + 12) = 2080;
    *(v0 + 200) = v11;
    v53 = String.init<A>(reflecting:)();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v72);

    *(v49 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "Ignoring device. Activity types don't match. Looking for activities: %s but got %s", v49, 0x16u);
    swift_arrayDestroy();

LABEL_17:

    goto LABEL_18;
  }

  v41 = *(v0 + 152);
  v42 = *(v0 + 128);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

  v43 = *(v0 + 8);

  return v43();
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    v7 = NearbyInvitationActivityType.rawValue.getter();
  }

  while (v7 != NearbyInvitationActivityType.rawValue.getter());
  return v4 != 0;
}

uint64_t NearbyAdvertisement.init(id:device:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = [a2 stableIdentifier];
  if (v13)
  {
    v40 = a1;
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [a2 nearbyInfoV2InvitationCounter];
    v38 = [a2 nearbyInfoV2DecryptedFlags];
    v37 = [a2 nearbyInfoV2InvitationRouteType];
    v19 = [a2 deviceFlags];
    v39 = v2;
    if ((v19 & 0x80) != 0)
    {
      type metadata accessor for NearbyAdvertisement();
      v25 = static NearbyAdvertisement.meContactID.getter();
      v35 = v26;
      v36 = v25;
    }

    else
    {
      v20 = [a2 contactID];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v23;
        v36 = v22;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }
    }

    v27 = v6[2];
    v27(v12, v40, v5);
    v27(v10, v12, v5);
    v42[0] = v15;
    v42[1] = v17;
    v28._countAndFlagsBits = 45;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v41 = v18;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30 = [a2 accountID];
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    LOBYTE(v42[0]) = v37;
    _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v42, v42 + 1);
    v24 = dispatch thunk of NearbyAdvertisement.__allocating_init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();

    v32 = v6[1];
    v32(v40, v5);
    v32(v12, v5);
  }

  else
  {
    (v6[1])(a1, v5);

    return 0;
  }

  return v24;
}

uint64_t closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = *(v6 + 16);
  v18(&v24 - v16, a1, v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v17, a2 + v19, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  swift_endAccess();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v18(v9, v25, v5);
  v21 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  (*(v6 + 32))(&v22[v21], v9, v5);
  *&v22[(v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v26;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations(), v22);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMR);
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo8CBDeviceC_GMd, &_sScS8IteratorVySo8CBDeviceC_GMR);
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations(), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  (*(**(v0 + 72) + 392))();
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations();
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);

  return AsyncStream.Iterator.next(isolation:)(v0 + 48, 0, 0, v8);
}

{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations(), 0, 0);
}

{
  v71 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = [*(v0 + 48) stableIdentifier];
    if (v2)
    {
      v3 = *(v0 + 72);
      v4 = v2;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = (*(*v3 + 480))(v0 + 16);
      v10 = v9;
      v11 = *v9;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      if (v13)
      {
        v14 = v12;
        v15 = *v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 56) = *v10;
        *v10 = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }

        v17 = *(v0 + 56);
        v18 = *(*(v17 + 48) + 16 * v14 + 8);

        v19 = *(*(v17 + 56) + 8 * v14);
        specialized _NativeDictionary._delete(at:)(v14, v17);
        *v10 = v17;

        v8(v0 + 16, 0);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, log);
        v21 = v19;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = *(v0 + 88);
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v70 = v68;
          *v25 = 136315394;
          v27 = _typeName(_:qualified:)();
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v70);

          *(v25 + 4) = v29;
          *(v25 + 12) = 2112;
          *(v25 + 14) = v21;
          *v26 = v21;
          v30 = v21;
          _os_log_impl(&_mh_execute_header, v22, v23, "%s lost advertisement %@ because of BT device being lost.", v25, 0x16u);
          outlined destroy of Any?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          __swift_destroy_boxed_opaque_existential_0Tm(v68);
        }

        v32 = *(v0 + 104);
        v31 = *(v0 + 112);
        v33 = *(v0 + 96);
        v34 = *(v0 + 80);
        *(v0 + 64) = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
        AsyncStream.Continuation.yield(_:)();

        (*(v32 + 8))(v31, v33);
        v35 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
        v36 = swift_task_alloc();
        *(v0 + 168) = v36;
        *v36 = v0;
        v36[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations();
        v37 = *(v0 + 160);
        v38 = *(v0 + 144);

        return AsyncStream.Iterator.next(isolation:)(v0 + 48, 0, 0, v38);
      }

      v8(v0 + 16, 0);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, log);
      v40 = v1;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();

      v56 = os_log_type_enabled(v41, v42);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v46 = *(v0 + 144);
      if (v56)
      {
        v69 = *(v0 + 160);
        v57 = *(v0 + 88);
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v70 = v66;
        *v48 = 136315394;
        v58 = _typeName(_:qualified:)();
        v67 = v46;
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v70);

        *(v48 + 4) = v60;
        *(v48 + 12) = 2112;
        *(v48 + 14) = v40;
        *v49 = v1;
        v53 = v40;
        v54 = "%s Lost device %@ didn't have an advertisement.";
        goto LABEL_22;
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, log);
      v40 = v1;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      v43 = os_log_type_enabled(v41, v42);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v46 = *(v0 + 144);
      if (v43)
      {
        v69 = *(v0 + 160);
        v47 = *(v0 + 88);
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v70 = v66;
        *v48 = 136315394;
        v50 = _typeName(_:qualified:)();
        v67 = v46;
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v70);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2112;
        *(v48 + 14) = v40;
        *v49 = v1;
        v53 = v40;
        v54 = "%s Don't have a stableIdentifier for device: %@, can't tell if it had an advertisement.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v41, v42, v54, v48, 0x16u);
        outlined destroy of Any?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0Tm(v66);

        (*(v45 + 8))(v69, v67);
        goto LABEL_24;
      }
    }

    (*(v45 + 8))(v44, v46);
    goto LABEL_24;
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
LABEL_24:
  v61 = *(v0 + 160);
  v62 = *(v0 + 136);
  v63 = *(v0 + 112);

  v64 = *(v0 + 8);

  return v64();
}

Swift::Void __swiftcall NearbyInvitationsInviteScanner.stopScan()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v11 - v8;
  v10 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v0 + v10, v9, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    outlined destroy of Any?(v9, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    outlined destroy of Any?(v9, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
    AsyncStream.Continuation.finish()();
    (*(v2 + 8))(v5, v1);
  }

  NearbyInvitationsScanner.stopScan()();
}

uint64_t closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations(), v15);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo8CBDeviceC_GMd, &_sScS8IteratorVySo8CBDeviceC_GMR);
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations(), 0, 0);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  (*(**(v0 + 32) + 384))();
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations();
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v8);
}

{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations(), 0, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 32);
    NearbyInvitationsInviteScanner.handleChanged(device:)(*(v0 + 16));
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 32);
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, log);

    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v9 = 136315394;
      v11 = *v8;
      v12 = _typeName(_:qualified:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v29);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v5;
      *v10 = v1;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: found filtered invitation device: %@", v9, 0x16u);
      outlined destroy of Any?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    *(v0 + 24) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v17 + 8))(v16, v19);
    v20 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v21 = swift_task_alloc();
    *(v0 + 120) = v21;
    *v21 = v0;
    v21[1] = closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations();
    v22 = *(v0 + 112);
    v23 = *(v0 + 96);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v23);
  }

  else
  {
    v24 = *(v0 + 88);
    v25 = *(v0 + 64);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v26 = *(v0 + 8);

    return v26();
  }
}

void NearbyInvitationsInviteScanner.handleChanged(device:)(void *a1)
{
  v2 = v1;
  v66 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D13AdvertisementC__GMR);
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  __chkstk_darwin(v4);
  v67 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v70 = &v64 - v14;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, log);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Device changed: %@", v19, 0xCu);
    outlined destroy of Any?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v22 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v2 + v22, v10, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Any?(v10, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
    v23 = v16;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not able to tell anyone about lost device: %@", v26, 0xCu);
      outlined destroy of Any?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }
  }

  else
  {
    (*(v12 + 32))(v70, v10, v11);
    v29 = [v16 stableIdentifier];
    if (v29)
    {
      v65 = v12;
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = (*(*v2 + 480))(v71);
      v35 = specialized Dictionary._Variant.removeValue(forKey:)(v31, v33);

      v34(v71, 0);
      if (v35)
      {
        v36 = v16;
        v37 = v35;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        v64 = v38;
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v71[0] = v42;
          *v40 = 136315650;
          v43 = _typeName(_:qualified:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v71);

          *(v40 + 4) = v45;
          *(v40 + 12) = 2112;
          *(v40 + 14) = v36;
          *(v40 + 22) = 2112;
          *(v40 + 24) = v37;
          *v41 = v36;
          v41[1] = v35;
          v46 = v36;
          v47 = v37;
          v48 = v64;
          _os_log_impl(&_mh_execute_header, v64, v39, "%s: Lost device: %@ with advertisement: %@", v40, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();

          __swift_destroy_boxed_opaque_existential_0Tm(v42);
        }

        else
        {
        }

        v61 = v65;
        v71[0] = v37;
        v62 = v67;
        v63 = v70;
        AsyncStream.Continuation.yield(_:)();
        (*(v68 + 8))(v62, v69);
        (*(v61 + 8))(v63, v11);
      }

      else
      {
        v55 = v16;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          *(v58 + 4) = v55;
          *v59 = v55;
          v60 = v55;
          _os_log_impl(&_mh_execute_header, v56, v57, "No stored advertisement found for %@", v58, 0xCu);
          outlined destroy of Any?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        }

        (*(v65 + 8))(v70, v11);
      }
    }

    else
    {
      v49 = v16;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        *(v52 + 4) = v49;
        *v53 = v49;
        v54 = v49;
        _os_log_impl(&_mh_execute_header, v50, v51, "Couldn't find a stableIdentifier for device: %@", v52, 0xCu);
        outlined destroy of Any?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      (*(v12 + 8))(v70, v11);
    }
  }
}

uint64_t NearbyInvitationsInviteScanner.__ivar_destroyer()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations, &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  return outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
}

uint64_t NearbyInvitationsInviteScanner.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations, &_sScSy14NearbySessions0A13AdvertisementCGSgMd, &_sScSy14NearbySessions0A13AdvertisementCGSgMR);
  v3 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GSgMR);
  return v0;
}

uint64_t NearbyInvitationsInviteScanner.__deallocating_deinit()
{
  NearbyInvitationsInviteScanner.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NISessionDelegate.NIDevice()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return NISessionDelegate.NIDevice.description.getter(*v0, *(v0 + 8), v1 | *(v0 + 16), *(v0 + 24));
}

uint64_t protocol witness for Identifiable.id.getter in conformance NISessionDelegate.NIDevice@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t NISessionDelegate.sessionDidStartRunning(_:)(void *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "NISession %s Running", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 360))(result);
  }

  return result;
}

uint64_t NISessionDelegate.session(_:didFailWithError:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a1;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v11 = v5;
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "NISession %s Failed: %@", v8, 0x16u);
    outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v16 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v17 = *(v2 + v16);
  *(v2 + v16) = &_swiftEmptyDictionarySingleton;
}

uint64_t NISessionDelegate.session(_:didInvalidateWith:)(void *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = a1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v9 = v3;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "NISession %s Invalidated: %@", v6, 0x16u);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 368))(result);
  }

  return result;
}

uint64_t NISessionDelegate.session(_:suspensionReasonEnded:isNoLongerSuspended:)(void *a1, uint64_t a2, char a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315650;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a2;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "NISession %s Suspension Ended: %ld, isActive: %{BOOL}d", v10, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 368))(Strong);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 376))(result);
  }

  return result;
}

id NISessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NISessionDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NearbyInvitationsInviteAdvertiser.__allocating_init(invitation:)(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

uint64_t *NearbyInvitationsAcceptInviteAdvertiser.init(to:)(void *a1)
{
  v2 = v1;
  NearbyInvitationsAdvertiser.init()();
  v4 = one-time initialization token for log;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, log);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = *v2;

    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Advertising AcceptInvite", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
  }

  [v2[2] setUseCase:131092];
  [v2[2] setNearbyActionType:56];
  [v2[2] setNearbyActionFlags:640];
  [v2[2] setAdvertiseRate:60];
  v14 = v2[2];

  v15 = [a1 nearbyInfoV2AuthTagData];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v17, v19);
  }

  else
  {
    v20.super.isa = 0;
  }

  [v14 setNearbyActionTargetData:v20.super.isa];

  return v2;
}

uint64_t NearbyInvitationsAdvertiser.__deallocating_deinit()
{
  NearbyInvitationsAdvertiser.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, log);
  v1 = __swift_project_value_buffer(v0, log);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Log.host);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyInvitationMessageType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationMessageType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

id CBDevice.invitationContactID.getter()
{
  if (([v0 deviceFlags] & 0x80) != 0)
  {
    type metadata accessor for NearbyAdvertisement();
    return static NearbyAdvertisement.meContactID.getter();
  }

  else
  {
    result = [v0 contactID];
    if (result)
    {
      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(a1, v5, v4);
}

uint64_t partial apply for closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(a1, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors);
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(a1, v6, v1 + v5);
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(a1, v6, v1 + v5);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = v14 + 24 * v12;
      v16 = *(v15 + 16);
      v17 = *v15 == a2 && *(v15 + 8) == a3;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v16 == a4)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v21 = *(v8 + 48) + 24 * v12;
    v23 = *v21;
    v22 = *(v21 + 8);
    LOBYTE(v21) = *(v21 + 16);
    *a1 = v23;
    *(a1 + 8) = v22;
    *(a1 + 16) = v21;

    return 0;
  }

  else
  {
LABEL_11:
    v18 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NearbyGroupMember();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for NearbyGroupMember();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      specialized _NativeSet.resize(capacity:)(v19 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  v10 = *(v6 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_22:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v16 = ~v14;
  v30 = v10;
  v17 = *(v10 + 48);
  while (1)
  {
    v18 = (v17 + 32 * v15);
    v20 = v18[2];
    v19 = v18[3];
    v21 = *v18 == a2 && v18[1] == a3;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v19)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_7:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!a5)
  {
    goto LABEL_7;
  }

  v22 = v20 == a4 && v19 == a5;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:

  v23 = (*(v30 + 48) + 32 * v15);
  v24 = v23[1];
  v26 = v23[2];
  v25 = v23[3];
  *a1 = *v23;
  a1[1] = v24;
  a1[2] = v26;
  a1[3] = v25;

  return 0;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
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
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      v36 = v21;
      String.hash(into:)();
      if (v23)
      {
        Hasher._combine(_:)(1u);
        v25 = v22;
        String.hash(into:)();
      }

      else
      {
        v25 = v22;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v36;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  v4 = *(a2 + 40);
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v9 = result;
  v10 = a3;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_18;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *v19 == v9 && *(v19 + 8) == a2;
      if (v21 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v20 == v10)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v9;
  *(v23 + 8) = a2;
  *(v23 + 16) = v10;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NearbyGroupMember();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_28;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      result = *v20;
      v22 = v20[2];
      v21 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v21)
        {
          if (a4)
          {
            v24 = v22 == a3 && v21 == a4;
            if (v24 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
LABEL_27:
              result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_27;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_28:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMR);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMR);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G20InvitationRangedHostVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMd, &_ss11_SetStorageCy14NearbySessions0C11GroupMemberCGMR);
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
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
      *(*(v6 + 48) + 8 * v13) = v18;
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMd, &_ss11_SetStorageCy44com_apple_SharePlay_NearbyInvitationsService0G19GroupHostIDSServiceC12MessageEventO6MemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();

      v35 = v20;
      String.hash(into:)();
      if (v23)
      {
        Hasher._combine(_:)(1u);
        v25 = v22;
        String.hash(into:)();
      }

      else
      {
        v25 = v22;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      v3 = v34;
      *v15 = v35;
      v15[1] = v21;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
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

uint64_t partial apply for closure #1 in NearbyInvitationsAdvertiser.start()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsAdvertiser.start()(a1, v1);
}

uint64_t partial apply for closure #1 in NearbyInvitationsAdvertiser.stop()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in NearbyInvitationsAdvertiser.stop()(a1, v1);
}

uint64_t specialized NearbyInvitationRangedHost.init(with:)(void *a1)
{
  v2 = [a1 stableIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 nearbyInfoV2InvitationCounter];
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, log);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device: %@ doesn't have a stableIdentifier, can't create rangedHost object.", v9, 0xCu);
      outlined destroy of Any?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

const char *CBScanRateToString(int a1)
{
  if (a1 > 34)
  {
    if (a1 > 49)
    {
      if (a1 == 50)
      {
        return "High";
      }

      if (a1 == 60)
      {
        return "Max";
      }
    }

    else
    {
      if (a1 == 35)
      {
        return "MediumLow";
      }

      if (a1 == 40)
      {
        return "Medium";
      }
    }
  }

  else if (a1 > 19)
  {
    if (a1 == 20)
    {
      return "Background";
    }

    if (a1 == 30)
    {
      return "Low";
    }
  }

  else
  {
    if (!a1)
    {
      return "Default";
    }

    if (a1 == 10)
    {
      return "Periodic";
    }
  }

  return "?";
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors);
  }

  return result;
}

uint64_t partial apply for closure #1 in NearbyInvitationsInviteAdvertiser.releasePublicAssertion(identifier:)()
{
  v1 = *(v0 + 24);
  v2 = (*(**(v0 + 16) + 160))(v4);
  specialized Dictionary.removeValue(forKey:)(v1);
  return v2(v4, 0);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost;
  if (!lazy protocol witness table cache variable for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationRangedHost and conformance NearbyInvitationRangedHost);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationError and conformance NearbyInvitationError()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationError and conformance NearbyInvitationError;
  if (!lazy protocol witness table cache variable for type NearbyInvitationError and conformance NearbyInvitationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationError and conformance NearbyInvitationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType;
  if (!lazy protocol witness table cache variable for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationMessageType and conformance NearbyInvitationMessageType);
  }

  return result;
}

uint64_t type metadata completion function for NearbyInvitationServiceBluetoothController()
{
  result = type metadata accessor for AsyncSerialQueue();
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

uint64_t type metadata completion function for NearbyInvitationsAdvertiser()
{
  result = type metadata accessor for AsyncSerialQueue();
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyInvitationRangedHost(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for NearbyInvitationRangedHost(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for NearbyInvitationsScanner()
{
  type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<CBDevice>?, &_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<CBDevice>.Continuation?, &_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for NearbyInvitationsInviteScanner()
{
  type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<NearbyAdvertisement>?, &_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for AsyncStream<CBDevice>?(319, &lazy cache variable for type metadata for AsyncStream<NearbyAdvertisement>.Continuation?, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<CBDevice>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NISessionDelegate.NIDevice(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NISessionDelegate.NIDevice(uint64_t result, int a2, int a3)
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

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
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

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
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

void specialized NISessionDelegate.session(_:suspendedWith:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NISession, NISession_ptr);
    v9 = v5;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "NISession %s Suspended: %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }
}

uint64_t specialized NISessionDelegate.nearbyDeviceID(_:)(void *a1)
{
  v1 = [a1 deviceIdentifer];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Nearby Device: (nil)", v7, 2u);
    }

    return 0;
  }

  return v3;
}

uint64_t specialized NISessionDelegate.session(_:didDiscover:)(void *a1)
{
  v2 = v1;
  result = specialized NISessionDelegate.nearbyDeviceID(_:)(a1);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = v4;
  v7 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {
    v9 = *(v2 + v7);

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
    if (v11)
    {
      v12 = *(v8 + 56) + 32 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      HIDWORD(v44) = *(v12 + 16);
      v15 = *(v12 + 17);
      v16 = *(v12 + 24);
      v17 = v16;

      v18 = v15 == 0;
      v19 = v16;
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = 256;
      }

      LODWORD(v44) = v20;
      goto LABEL_10;
    }
  }

  v44 = 0;
  v19 = 0;
  v14 = v5;
  v13 = v6;
LABEL_10:
  *v43 = v14;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.default);
  v22 = v19;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v47 = v22;

  if (os_log_type_enabled(v23, v24))
  {
    v42 = v6;
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v25 = 136315138;
    v45 = v44 | HIDWORD(v44);

    v26 = v22;
    v46 = v24;
    v27 = NISessionDelegate.NIDevice.description.getter(v43[0], v13, v45, v19);
    v40 = v19;
    v28 = v5;
    v29 = v27;
    v31 = v30;

    v32 = v29;
    v5 = v28;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v49);
    v34 = *v43;
    v35 = v40;

    *(v25 + 4) = v33;
    v36 = v45;
    _os_log_impl(&_mh_execute_header, v23, v46, "Device Discovered: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);

    v6 = v42;
  }

  else
  {

    v36 = v44 | WORD2(v44);
    v35 = v19;
    v34 = *v43;
  }

  swift_beginAccess();

  v37 = v47;
  v38 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v13, v36, v35, v5, v6, isUniquelyReferenced_nonNull_native);

  *(v2 + v7) = v48;
  swift_endAccess();
}

uint64_t specialized NISessionDelegate.session(_:object:didUpdateRegion:previousRegion:)(void *a1, void *a2)
{
  v3 = v2;
  result = specialized NISessionDelegate.nearbyDeviceID(_:)(a1);
  if (!v6)
  {
    return result;
  }

  v7 = result;
  v8 = v6;
  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v70 = v9;
  v10 = *&v3[v9];
  if (!*(v10 + 16))
  {
    goto LABEL_6;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  if ((v12 & 1) == 0)
  {

LABEL_6:

    v17 = 0;
    v16 = 0;
    v15 = 0;
    v72 = v7;
    v73 = v8;
    goto LABEL_7;
  }

  v13 = *(v10 + 56) + 32 * v11;
  v14 = *(v13 + 8);
  v72 = *v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 17);
  v17 = *(v13 + 24);
  v18 = v17;
  v73 = v14;

LABEL_7:
  v71 = v7;
  v69 = v3;
  if (a2)
  {
    v19 = [a2 name];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v20 == 0x72656E6E69 && v22 == 0xE500000000000000;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v24 = v8;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, log);
      v26 = v3;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v75[0] = swift_slowAlloc();
        *v29 = 136315394;
        swift_getObjectType();
        v30 = _typeName(_:qualified:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v75);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        v33 = v73;

        v34 = v72;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v75);

        *(v29 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Found inner device: %s", v29, 0x16u);
        swift_arrayDestroy();

        v8 = v24;
      }

      else
      {

        v8 = v24;
        v34 = v72;
        v33 = v73;
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v37 = *(*Strong + 400);

        v37(v34, v33);
      }

      v16 = 1;
      v15 = 1;
    }

    else if (v20 == 0x726574756FLL && v22 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = 0;
      v16 = 1;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Log.default);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v68 = v8;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v75[0] = v64;
        *v63 = 136446210;
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v75);

        *(v63 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "Unexpected Region: %{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);

        v8 = v68;
      }

      else
      {
      }
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Log.default);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v67 = v8;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v75[0] = v42;
    *v41 = 136315138;
    if (v16)
    {
      v43 = 256;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 | v15;
    v66 = v43 | v15;
    v45 = v73;

    v46 = v17;
    v47 = v72;
    v48 = NISessionDelegate.NIDevice.description.getter(v72, v73, v44, v17);
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v75);

    *(v41 + 4) = v51;
    v52 = v17;
    v53 = v40;
    v54 = v66;
    _os_log_impl(&_mh_execute_header, v39, v53, "Region updated: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);

    v8 = v67;
  }

  else
  {

    if (v16)
    {
      v55 = 256;
    }

    else
    {
      v55 = 0;
    }

    v54 = v55 | v15;
    v52 = v17;
    v46 = v17;
    v47 = v72;
    v45 = v73;
  }

  swift_beginAccess();

  v56 = v46;
  v57 = *&v69[v70];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *&v69[v70];
  *&v69[v70] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v45, v54, v52, v71, v8, isUniquelyReferenced_nonNull_native);

  *&v69[v70] = v74;
  swift_endAccess();
  v59 = swift_weakLoadStrong();
  if (v59)
  {
    (*(*v59 + 352))(v59);
  }

  else
  {
  }
}

void specialized NISessionDelegate.session(_:didUpdateAlgorithmState:for:)(void *a1, void *a2)
{
  v4 = specialized NISessionDelegate.nearbyDeviceID(_:)(a2);
  if (!v5)
  {
    return;
  }

  v6 = v4;
  v7 = v5;
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16))
  {

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    if (v11)
    {
      v12 = *(v9 + 56) + 32 * v10;
      v6 = *v12;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 17);
      v16 = *(v12 + 24);

      if (v15)
      {
        v17 = 256;
      }

      else
      {
        v17 = 0;
      }

      LODWORD(v7) = v13;
      goto LABEL_10;
    }
  }

  v17 = 0;
  v14 = 0;
  v16 = 0;
LABEL_10:
  v18 = a1;

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    v18 = v18;

    v24 = NISessionDelegate.NIDevice.description.getter(v6, v7, v17 | v14, a1);
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v28);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Algorithm state updated: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }
}

uint64_t outlined assign with take of AsyncStream<CBDevice>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(v1 + v6);
  v16 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsInviteScanner.findInvitations(scannerID:for:)(a1, v12, v13, v14, v1 + v5, v15, v1 + v8, v1 + v11);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsInviteScanner.trackLostInvitations()(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in NearbyInvitationsInviteScanner.findDevicesWithInvitations()(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with take of (key: UUID, value: UInt)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Su5valuetMd, &_s10Foundation4UUIDV3key_Su5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices()(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR) - 8) + 80);
  v4 = *(v1 + 16);

  return closure #1 in closure #1 in NearbyInvitationsScanner.lostDevices()(a1);
}

void __swiftcall Pseudonym.Configuration.init(featureID:minimumExpirationInSeconds:refreshSkewInSeconds:reuseIdentifier:)(com_apple_SharePlay_NearbyInvitationsService::Pseudonym::Configuration *__return_ptr retstr, Swift::String featureID, Swift::Double minimumExpirationInSeconds, Swift::Double refreshSkewInSeconds, Swift::String_optional reuseIdentifier)
{
  retstr->featureID = featureID;
  retstr->minimumExpirationInSeconds = minimumExpirationInSeconds;
  retstr->refreshSkewInSeconds = refreshSkewInSeconds;
  retstr->reuseIdentifier = reuseIdentifier;
}

uint64_t static Pseudonym.reusable(for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  return _swift_task_switch(static Pseudonym.reusable(for:reuseIdentifier:), 0, 0);
}

uint64_t static Pseudonym.reusable(for:reuseIdentifier:)()
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(*(v0 + 128), 1, (v0 + 64));
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  *(v0 + 152) = v6;
  *(v0 + 112) = *(v0 + 96);
  outlined destroy of Any?(v0 + 112, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = static Pseudonym.reusable(for:reuseIdentifier:);
  v8 = *(v0 + 128);

  return specialized static Pseudonym.reusable(for:configuration:)(v8, v0 + 16);
}

{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t static Pseudonym.reusable(for:reuseIdentifier:)(uint64_t a1)
{
  v4 = *(*v2 + 160);
  v5 = *v2;
  v5[21] = v1;

  if (v1)
  {

    return _swift_task_switch(static Pseudonym.reusable(for:reuseIdentifier:), 0, 0);
  }

  else
  {
    v7 = v5[18];
    v6 = v5[19];

    v8 = v5[1];

    return v8(a1);
  }
}

Swift::Int Pseudonym.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t Pseudonym.Configuration.featureID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Pseudonym.Configuration.featureID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Pseudonym.Configuration.reuseIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Pseudonym.Configuration.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Pseudonym.Configuration.description.getter()
{
  _StringGuts.grow(_:)(51);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x72756769666E6F43;
  v2._object = 0xED00006E6F697461;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x657275746165663ALL;
  v3._object = 0xEB000000003D4449;
  String.append(_:)(v3);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 0x3D70786520;
  v4._object = 0xE500000000000000;
  String.append(_:)(v4);
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 0x3D77656B7320;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  object = v0[1]._object;
  Double.write<A>(to:)();
  v8._object = 0x80000001000CE6D0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v10 = v0[2]._countAndFlagsBits;
  v9 = v0[2]._object;
  if (v9)
  {
    v11 = v0[2]._countAndFlagsBits;
  }

  else
  {
    v11 = 0x3E454E4F4E3CLL;
  }

  if (v9)
  {
    v12 = v0[2]._object;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

id Pseudonym.pseudonym.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void Pseudonym.pseudonym.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t Pseudonym.handle.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) URI];
  v2 = [v1 prefixedURI];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void Pseudonym.expirationDate.getter()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) properties];
  v2 = [v1 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t Pseudonym.refreshTask.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t Pseudonym.refreshTask.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t Pseudonym.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 88);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
}

uint64_t one-time initialization function for provider()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = type metadata accessor for UserDefaultsPseudonymStorage();
  v2 = swift_allocObject();
  v3 = type metadata accessor for Lock();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = Lock.init()();
  v2[3] = v0;
  v2[4] = &_swiftEmptySetSingleton;
  v2[2] = v6;
  v10 = v1;
  v11 = &protocol witness table for UserDefaultsPseudonymStorage;
  *&v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProviderCyAA0H0CGMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProviderCyAA0H0CGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0x4014000000000000;
  *(v7 + 24) = [objc_allocWithZone(NSRecursiveLock) init];
  *(v7 + 72) = &_swiftEmptyDictionarySingleton;
  result = outlined init with take of PseudonymProtocol(&v9, v7 + 32);
  static Pseudonym.provider = v7;
  return result;
}

uint64_t PseudonymProvider.__allocating_init(storage:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PseudonymProvider.init(storage:)(a1);
  return v2;
}

uint64_t static Pseudonym.markUsed(handle:for:reuseIdentifier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_project_boxed_opaque_existential_1(a3, v10);

  return specialized static Pseudonym.markUsed(handle:for:reuseIdentifier:)(a1, a2, v12, a4, a5, v5, v10, v11);
}

uint64_t static Pseudonym.reusable(for:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Pseudonym.reusable(for:configuration:);

  return specialized static Pseudonym.reusable(for:configuration:)(a1, a2);
}

uint64_t Pseudonym.__allocating_init(service:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = Pseudonym.__allocating_init(service:configuration:);

  return specialized Pseudonym.__allocating_init(service:configuration:)(a1, a2);
}

uint64_t Pseudonym.__allocating_init(service:configuration:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t static Pseudonym.existing(for:reuseIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(a1, 1, v12);
  if (!v3)
  {
    v8 = v12[2];
    v7 = v12[3];
    v10 = v12[0];
    v9 = v12[1];
    v14 = v13;
    outlined destroy of Any?(&v14, &_sSSSgMd, &_sSSSgMR);
    *&v15 = v10;
    *(&v15 + 1) = v9;
    v16 = v8;
    v17 = v7;
    v18 = a2;
    v19 = a3;

    v6 = specialized static Pseudonym.existing(for:configuration:)(v6, &v15);
  }

  return v6;
}

uint64_t Pseudonym.__allocating_init(service:)(uint64_t a1)
{
  *(v1 + 104) = a1;
  return _swift_task_switch(Pseudonym.__allocating_init(service:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = Pseudonym.__allocating_init(service:);
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = Pseudonym.__allocating_init(service:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t Pseudonym.__allocating_init(service:)()
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(v0[13], 0, v0 + 2);
  outlined init with copy of PseudonymProtocol(v0[13], (v0 + 8));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = Pseudonym.__allocating_init(service:);

  return specialized Pseudonym.__allocating_init(service:configuration:)((v0 + 8), (v0 + 2));
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 104));
  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 104));
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t Pseudonym.__allocating_init(service:pseudonym:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(a1, 0, v9);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    outlined init with copy of PseudonymProtocol(a1, v8);
    a3 = specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(v8, a2, a3, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return a3;
}

uint64_t Pseudonym.__allocating_init(service:pseudonym:configuration:)(uint64_t *a1, void *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  Pseudonym.init(service:pseudonym:configuration:)(a1, a2, a3);
  return v6;
}

uint64_t Pseudonym.init(service:pseudonym:configuration:)(uint64_t *a1, void *a2, __int128 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26[-v10];
  *(v3 + 24) = 0;
  v12 = (v3 + 24);
  *(v3 + 120) = 0;
  outlined init with copy of PseudonymProtocol(a1, v3 + 32);
  v13 = *a3;
  v14 = a3[1];
  v27 = a3[2];
  v15 = v27;
  v28 = v13;
  *(v3 + 72) = v13;
  *(v3 + 88) = v14;
  *(v3 + 104) = v15;
  *(v3 + 16) = a2;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v18 = *(v3 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v18;
  v20 = a3[1];
  *(v19 + 40) = *a3;
  *(v19 + 56) = v20;
  *(v19 + 72) = a3[2];
  *(v19 + 88) = v17;
  outlined init with copy of String(&v28, v26);
  outlined init with copy of (String, Any)(&v27, v26, &_sSSSgMd, &_sSSSgMR);
  v21 = a2;
  v22 = v18;
  v23 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in Pseudonym.init(service:pseudonym:configuration:), v19);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
  swift_beginAccess();
  v24 = *v12;
  *v12 = v23;

  return v4;
}

uint64_t closure #1 in Pseudonym.init(service:pseudonym:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Pseudonym.init(service:pseudonym:configuration:), 0, 0);
}

uint64_t closure #1 in Pseudonym.init(service:pseudonym:configuration:)()
{
  static Task<>.checkCancellation()();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = [*(v0 + 40) properties];
  v8 = [v7 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v2, v3);
  v11(v1, v3);
  v12 = v10 - *(v6 + 24);
  v13 = static Duration.seconds(_:)();
  v15 = v14;
  static Clock<>.continuous.getter();
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = closure #1 in Pseudonym.init(service:pseudonym:configuration:);
  v17 = *(v0 + 80);

  return specialized Clock.sleep(for:tolerance:)(v13, v15, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = closure #1 in Pseudonym.init(service:pseudonym:configuration:);
  }

  else
  {
    v5 = closure #1 in Pseudonym.init(service:pseudonym:configuration:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[16];
  static Task<>.checkCancellation()();
  if (v1 || (v7 = v0[7], swift_beginAccess(), Strong = swift_weakLoadStrong(), (v0[17] = Strong) == 0))
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = closure #1 in Pseudonym.init(service:pseudonym:configuration:);

    return Pseudonym.refreshPseudonym()();
  }
}

{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in Pseudonym.init(service:pseudonym:configuration:), 0, 0);
  }

  else
  {
    v4 = v3[17];

    v6 = v3[13];
    v5 = v3[14];
    v7 = v3[10];

    v8 = v3[1];

    return v8();
  }
}

{
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t Pseudonym.refreshPseudonym()()
{
  *(v1 + 88) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 96) = swift_task_alloc();

  return _swift_task_switch(Pseudonym.refreshPseudonym(), 0, 0);
}

{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.group);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_beginAccess();
    v8 = *(v5 + 16);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to refresh pseudonym %@", v6, 0xCu);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v10 = v0[11];
  v11 = v10[7];
  v12 = v10[8];
  __swift_project_boxed_opaque_existential_1(v10 + 4, v11);
  swift_beginAccess();
  v13 = v10[2];
  v0[13] = v13;
  v14 = v10[11];
  v0[14] = v14;
  v15 = *(v12 + 32);
  v16 = v13;
  v21 = (v15 + *v15);
  v17 = v15[1];
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = Pseudonym.refreshPseudonym();
  v19.n128_u64[0] = v14;

  return v21(v16, v11, v12, v19);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v20 = v3;
  v4 = v2[2];
  v2[2] = v0[17];

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v8 = v2[9];
  v7 = v2[10];
  v9 = v2[12];
  v11 = v2[13];
  v10 = v2[14];
  v12 = v2[2];
  swift_beginAccess();
  v13 = v2[3];
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = v12;
  v14[6] = v8;
  v14[7] = v7;
  v14[8] = v1;
  v14[9] = v9;
  v14[10] = v11;
  v14[11] = v10;
  v14[12] = v6;

  v15 = v12;
  v16 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in Pseudonym.refreshPseudonym(), v14);
  outlined destroy of Any?(v20, &_sScPSgMd, &_sScPSgMR);
  v17 = v2[3];
  v2[3] = v16;

  v18 = v0[1];

  return v18();
}

{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2();
}

uint64_t Pseudonym.refreshPseudonym()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = Pseudonym.refreshPseudonym();
  }

  else
  {

    *(v4 + 136) = a1;
    v7 = Pseudonym.refreshPseudonym();
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of (String, Any)(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t Pseudonym.description.getter()
{
  v1 = *v0;
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3D49525520;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  swift_beginAccess();
  v4 = [v0[2] URI];
  v5 = [v4 prefixedURI];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 60;
}

Swift::Void __swiftcall Pseudonym.markUsed()()
{
  v1 = *v0;
  *(v0 + 120) = 1;
  v2 = v0[14];
  if (v2)
  {
    v3 = v0;
    v4 = v0[13];
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.group);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, &v30);
      *(v8 + 12) = 2080;
      v31 = 60;
      v32 = 0xE100000000000000;
      v9._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 0x3D49525520;
      v10._object = 0xE500000000000000;
      String.append(_:)(v10);
      swift_beginAccess();
      v11 = [v0[2] URI];
      v12 = [v11 prefixedURI];

      v13 = v4;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v4 = v13;
      v17._object = v16;
      String.append(_:)(v17);

      v18._countAndFlagsBits = 62;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v30);

      *(v8 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Marked reusable pseudonym with identifier: %s as used: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v20 = static Pseudonym.provider;
    swift_beginAccess();
    v21 = [v3[2] URI];
    v22 = [v21 prefixedURI];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = v3[7];
    v27 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v26);
    v28 = (*(v27 + 8))(v26, v27);
    if (v29)
    {
      (*(*v20 + 176))(v23, v25, v28, v29, v4, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in Pseudonym.refreshPseudonym()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Pseudonym.refreshPseudonym(), 0, 0);
}

uint64_t closure #1 in Pseudonym.refreshPseudonym()()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = async function pointer to Task.value.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v3 = v0;
    v3[1] = closure #1 in Pseudonym.refreshPseudonym();

    return Task.value.getter(v4, v1, &type metadata for () + 8, v4, &protocol self-conformance witness table for Error);
  }

  else
  {
    static Task<>.checkCancellation()();
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = *(v0 + 56);
    v11 = [*(v0 + 48) properties];
    v12 = [v11 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.init()();
    Date.timeIntervalSince(_:)();
    v14 = v13;
    v15 = *(v8 + 8);
    v15(v6, v7);
    v15(v5, v7);
    v16 = v14 - *(v10 + 24);
    v17 = static Duration.seconds(_:)();
    v19 = v18;
    static Clock<>.continuous.getter();
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = closure #1 in Pseudonym.refreshPseudonym();
    v21 = *(v0 + 88);

    return specialized Clock.sleep(for:tolerance:)(v17, v19, 0, 0, 1);
  }
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v3 = closure #1 in Pseudonym.refreshPseudonym();
  }

  else
  {
    v3 = closure #1 in Pseudonym.refreshPseudonym();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 136);
  static Task<>.checkCancellation()();
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  if (v1)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 120);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = *(v0 + 56);
    v12 = [*(v0 + 48) properties];
    v13 = [v12 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.init()();
    Date.timeIntervalSince(_:)();
    v15 = v14;
    v16 = *(v9 + 8);
    v16(v3, v8);
    v16(v2, v8);
    v17 = v15 - *(v11 + 24);
    v18 = static Duration.seconds(_:)();
    v20 = v19;
    static Clock<>.continuous.getter();
    v21 = swift_task_alloc();
    *(v0 + 144) = v21;
    *v21 = v0;
    v21[1] = closure #1 in Pseudonym.refreshPseudonym();
    v22 = *(v0 + 88);

    return specialized Clock.sleep(for:tolerance:)(v18, v20, 0, 0, 1);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = closure #1 in Pseudonym.refreshPseudonym();
  }

  else
  {
    v5 = closure #1 in Pseudonym.refreshPseudonym();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[19];
  static Task<>.checkCancellation()();
  if (v1 || (v7 = v0[8], swift_beginAccess(), Strong = swift_weakLoadStrong(), (v0[20] = Strong) == 0))
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[11];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = closure #1 in Pseudonym.refreshPseudonym();

    return Pseudonym.refreshPseudonym()();
  }
}

{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in Pseudonym.refreshPseudonym(), 0, 0);
  }

  else
  {
    v4 = v3[20];

    v6 = v3[14];
    v5 = v3[15];
    v7 = v3[11];

    v8 = v3[1];

    return v8();
  }
}

{
  static Task<>.checkCancellation()();
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = [*(v0 + 48) properties];
  v8 = [v7 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v2, v3);
  v11(v1, v3);
  v12 = v10 - *(v6 + 24);
  v13 = static Duration.seconds(_:)();
  v15 = v14;
  static Clock<>.continuous.getter();
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = closure #1 in Pseudonym.refreshPseudonym();
  v17 = *(v0 + 88);

  return specialized Clock.sleep(for:tolerance:)(v13, v15, 0, 0, 1);
}

{
  v1 = v0[20];

  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t *Pseudonym.deinit()
{
  v22 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  v6 = [v0[2] URI];
  v7 = [v6 prefixedURI];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = v0[2];
  swift_beginAccess();
  v12 = v0[3];
  v13 = *(v0 + 120);
  v14 = v0[13];
  v15 = v0[14];
  outlined init with copy of PseudonymProtocol((v0 + 4), v23);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  *(v16 + 56) = v13;
  *(v16 + 64) = v11;
  *(v16 + 72) = v8;
  *(v16 + 80) = v10;
  outlined init with take of PseudonymProtocol(v23, v16 + 88);
  *(v16 + 128) = v22;

  v17 = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in Pseudonym.deinit, v16);

  v18 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v19 = v0[10];
  v20 = v0[14];

  return v0;
}

uint64_t closure #1 in Pseudonym.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 64) = v15;
  *(v8 + 48) = v14;
  *(v8 + 128) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for Date();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(closure #1 in Pseudonym.deinit, 0, 0);
}

uint64_t closure #1 in Pseudonym.deinit()
{
  v67 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    Task.cancel()();
    v3 = async function pointer to Task.value.getter[1];
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = closure #1 in Pseudonym.deinit;
    v5 = &type metadata for () + 8;
    v6 = v1;
    v7 = v2;
    v8 = &protocol self-conformance witness table for Error;

    return Task.value.getter(v4, v6, v5, v7, v8);
  }

  v9 = *(v0 + 32);
  if (v9 && (*(v0 + 128) & 1) == 0)
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 40);
    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Log.group);

    v50 = v48;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 40);
      v54 = *(v0 + 24);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66 = v57;
      *v55 = 136315394;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v9, &v66);
      *(v55 + 12) = 2112;
      *(v55 + 14) = v53;
      *v56 = v53;
      v58 = v53;
      _os_log_impl(&_mh_execute_header, v51, v52, "Not revoking unused reusable pseudonym with reuse identifier %s: %@", v55, 0x16u);
      outlined destroy of Any?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v57);
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v59 = *(v0 + 64);
    v60 = static Pseudonym.provider;
    v61 = v59[3];
    v62 = v59[4];
    __swift_project_boxed_opaque_existential_1(v59, v61);
    v4 = (*(v62 + 8))(v61, v62);
    if (!v6)
    {
      __break(1u);
      return Task.value.getter(v4, v6, v5, v7, v8);
    }

    (*(*v60 + 192))(*(v0 + 48), *(v0 + 56), v4, v6, *(v0 + 24), v9);
  }

  else
  {
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 72);
    v13 = [*(v0 + 40) properties];
    v14 = [v13 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.timeIntervalSinceNow.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    if (v16 > 0.0)
    {
      if (one-time initialization token for group != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 40);
      v18 = type metadata accessor for Logger();
      *(v0 + 104) = __swift_project_value_buffer(v18, static Log.group);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 40);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v22;
        *v24 = v22;
        v25 = v22;
        _os_log_impl(&_mh_execute_header, v20, v21, "Revoking pseudonym: %@", v23, 0xCu);
        outlined destroy of Any?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      v26 = *(v0 + 64);

      v27 = v26[3];
      v28 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v29 = *(v28 + 40);
      v65 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 112) = v31;
      *v31 = v0;
      v31[1] = closure #1 in Pseudonym.deinit;
      v32 = *(v0 + 40);

      return v65(v32, v27, v28);
    }

    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 40);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.group);
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 40);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v39;
      *v41 = v39;
      v42 = v39;
      _os_log_impl(&_mh_execute_header, v37, v38, "Not revoking expired pseudonym: %@", v40, 0xCu);
      outlined destroy of Any?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v44 = *(v0 + 56);
    v43 = *(v0 + 64);
    v45 = *(v0 + 48);
    v47 = *(v0 + 24);
    v46 = *(v0 + 32);

    specialized $defer #1 () in closure #1 in Pseudonym.deinit(v47, v46, v45, v44, v43);
  }

  v63 = *(v0 + 88);

  v64 = *(v0 + 8);

  return v64();
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;

  if (v0)
  {

    v3 = closure #1 in Pseudonym.deinit;
  }

  else
  {
    v3 = closure #1 in Pseudonym.deinit;
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v60 = v0;
  v1 = *(v0 + 32);
  if (v1 && (*(v0 + 128) & 1) == 0)
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 40);
    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.group);

    v42 = v40;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 40);
      v46 = *(v0 + 24);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v59 = v49;
      *v47 = 136315394;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v1, &v59);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v45;
      *v48 = v45;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v43, v44, "Not revoking unused reusable pseudonym with reuse identifier %s: %@", v47, 0x16u);
      outlined destroy of Any?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v49);
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 64);
    v52 = static Pseudonym.provider;
    v53 = v51[3];
    v54 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v53);
    result = (*(v54 + 8))(v53, v54);
    if (!v55)
    {
      __break(1u);
      return result;
    }

    (*(*v52 + 192))(*(v0 + 48), *(v0 + 56), result, v55, *(v0 + 24), v1);
  }

  else
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = [*(v0 + 40) properties];
    v6 = [v5 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    Date.timeIntervalSinceNow.getter();
    v8 = v7;
    (*(v3 + 8))(v2, v4);
    if (v8 > 0.0)
    {
      if (one-time initialization token for group != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 40);
      v10 = type metadata accessor for Logger();
      *(v0 + 104) = __swift_project_value_buffer(v10, static Log.group);
      v11 = v9;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 40);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v14;
        *v16 = v14;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v12, v13, "Revoking pseudonym: %@", v15, 0xCu);
        outlined destroy of Any?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      v18 = *(v0 + 64);

      v19 = v18[3];
      v20 = v18[4];
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v21 = *(v20 + 40);
      v58 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 112) = v23;
      *v23 = v0;
      v23[1] = closure #1 in Pseudonym.deinit;
      v24 = *(v0 + 40);

      return v58(v24, v19, v20);
    }

    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 40);
    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.group);
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 40);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v31;
      *v33 = v31;
      v34 = v31;
      _os_log_impl(&_mh_execute_header, v29, v30, "Not revoking expired pseudonym: %@", v32, 0xCu);
      outlined destroy of Any?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v36 = *(v0 + 56);
    v35 = *(v0 + 64);
    v37 = *(v0 + 48);
    v39 = *(v0 + 24);
    v38 = *(v0 + 32);

    specialized $defer #1 () in closure #1 in Pseudonym.deinit(v39, v38, v37, v36, v35);
  }

  v56 = *(v0 + 88);

  v57 = *(v0 + 8);

  return v57();
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = closure #1 in Pseudonym.deinit;
  }

  else
  {
    v3 = closure #1 in Pseudonym.deinit;
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully revoked used pseudonym %@", v6, 0xCu);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  specialized $defer #1 () in closure #1 in Pseudonym.deinit(*(v0 + 24), *(v0 + 32), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v9 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to revoke used pseudonym %@, reason: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  else
  {
  }

  specialized $defer #1 () in closure #1 in Pseudonym.deinit(*(v0 + 24), *(v0 + 32), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v13 = *(v0 + 88);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t Pseudonym.__deallocating_deinit()
{
  Pseudonym.deinit();

  return swift_deallocClassInstance();
}

void protocol witness for PseudonymProtocol.expirationDate.getter in conformance Pseudonym()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 16) properties];
  v3 = [v2 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t protocol witness for PseudonymProtocol.configuration.getter in conformance Pseudonym@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 112);
  *a1 = *(*v1 + 72);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 88);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

unint64_t protocol witness for static PseudonymProtocol.create(service:pseudonym:configuration:) in conformance Pseudonym@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, unint64_t *a5@<X8>)
{
  outlined init with copy of PseudonymProtocol(a1, v12);
  v14 = *a4;
  v13 = a4[2];

  outlined init with copy of String(&v14, v11);
  outlined init with copy of (String, Any)(&v13, v11, &_sSSSgMd, &_sSSSgMR);
  result = specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(v12, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t static Pseudonym.create(service:pseudonym:configuration:)(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  outlined init with copy of PseudonymProtocol(a1, v9);
  v11 = *a4;
  v10 = a4[2];

  outlined init with copy of String(&v11, v8);
  outlined init with copy of (String, Any)(&v10, v8, &_sSSSgMd, &_sSSSgMR);
  return specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(v9, a2, a3, a4);
}

uint64_t protocol witness for PseudonymServiceManager.serviceIdentifier.getter in conformance IDSService()
{
  v1 = [*v0 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for PseudonymServiceManager.accounts.getter in conformance IDSService()
{
  v1 = [*v0 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
  lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for PseudonymServiceManager.pseudonym(forPseudonymURI:) in conformance IDSService(uint64_t a1)
{
  v2 = [*v1 pseudonymForPseudonymURI:a1];

  return v2;
}

uint64_t protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService(uint64_t a1, double a2)
{
  *(v3 + 160) = a2;
  *(v3 + 152) = a1;
  *(v3 + 168) = *v2;
  return _swift_task_switch(protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService, 0, 0);
}

uint64_t protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService()
{
  v1 = *(v0 + 21);
  v2 = v0[20];
  v3 = *(v0 + 19);
  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = protocol witness for PseudonymServiceManager.renewPseudonym(_:forUpdatedDuration:) in conformance IDSService;
  v4 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo12IDSPseudonymCs5Error_pGMd, &_sSccySo12IDSPseudonymCs5Error_pGMR);
  *(v0 + 10) = _NSConcreteStackBlock;
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPseudonym?, @unowned NSError?) -> () with result type IDSPseudonym;
  *(v0 + 13) = &block_descriptor_62;
  *(v0 + 14) = v4;
  [v1 renewPseudonym:v3 forUpdatedDuration:v0 + 10 completion:v2];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPseudonym?, @unowned NSError?) -> () with result type IDSPseudonym(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
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

uint64_t protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService, 0, 0);
}

uint64_t protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = protocol witness for PseudonymServiceManager.revokePseudonym(_:) in conformance IDSService;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [v1 revokePseudonym:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v0 + 160);
    v3 = *(v1 + 8);
    v5 = *v0;
  }

  return v3(v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return _swift_task_switch(protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService, 0, 0);
}

uint64_t protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = protocol witness for PseudonymServiceManager.provisionPseudonym(for:with:) in conformance IDSService;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo12IDSPseudonymCs5Error_pGMd, &_sSccySo12IDSPseudonymCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSPseudonym?, @unowned NSError?) -> () with result type IDSPseudonym;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v1 provisionPseudonymForURI:v3 withProperties:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void *UserDefaultsPseudonymStorage.__allocating_init(userDefaults:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for Lock();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = Lock.init()();
  v2[3] = a1;
  v2[4] = &_swiftEmptySetSingleton;
  v2[2] = v6;
  return v2;
}

void *UserDefaultsPseudonymStorage.init(userDefaults:)(uint64_t a1)
{
  v3 = type metadata accessor for Lock();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = Lock.init()();
  v1[3] = a1;
  v1[4] = &_swiftEmptySetSingleton;
  v1[2] = v6;
  return v1;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.push(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a3, a4);
  swift_endAccess();

  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = (*a1 + 40);
  v10 = v8 + 1;
  while (--v10)
  {
    result = *(v9 - 1);
    if (result != a3 || *v9 != a4)
    {
      v9 += 2;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *a1 = v7;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserDefaultsPseudonymStorage.pop(serviceIdentifier:reuseIdentifier:)(Swift::String serviceIdentifier, Swift::String reuseIdentifier)
{
  v3 = *(v2 + 16);
  Lock.withLock<A>(_:)();
  v4 = 0;
  v5 = 0;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.pop(serviceIdentifier:reuseIdentifier:)(uint64_t *a1, Swift::Int *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  result = swift_beginAccess();
  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = (v5 + 32 + 16 * v8);
      v11 = *v9;
      v10 = v9[1];
      v12 = *(a3 + 32);
      if (!*(v12 + 16))
      {

        goto LABEL_15;
      }

      v13 = *(v12 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(v12 + 32);
      v16 = v14 & ~v15;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
LABEL_14:

LABEL_15:
        v20 = a2[1];
        *a2 = v11;
        a2[1] = v10;

        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v22, v11, v10);
        swift_endAccess();
      }

      ++v8;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(v12 + 48) + 16 * v16);
        v19 = *v18 == v11 && v18[1] == v10;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (v8 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v21 = a2[1];
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.register(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v16, a3, a4);
  swift_endAccess();

  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = (*a1 + 40);
  v10 = v8 + 1;
  while (--v10)
  {
    result = *(v9 - 1);
    if (result != a3 || *v9 != a4)
    {
      v9 += 2;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *a1 = v7;
  return result;
}

unint64_t closure #1 in UserDefaultsPseudonymStorage.markUsed(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a3, a4);
  swift_endAccess();

  v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a3, a4);

  v9 = *(*a1 + 16);
  if (v9 >= v7)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(v7, v9);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in UserDefaultsPseudonymStorage.setPendingRevoke(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = (*a1 + 40);
  v9 = v7 + 1;
  while (--v9)
  {
    result = *(v8 - 1);
    if (result != a2 || *v8 != a3)
    {
      v8 += 2;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v6);
    v6 = result;
  }

  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v13 + 1;
  v14 = v6 + 16 * v13;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *a1 = v6;
  return result;
}

void *UserDefaultsPseudonymStorage.getPendingRevoke(serviceIdentifier:reuseIdentifier:)()
{
  v1 = *(v0 + 16);
  Lock.withLock<A>(_:)();
  return _swiftEmptyArrayStorage;
}

unint64_t closure #1 in UserDefaultsPseudonymStorage.removePendingRevoke(id:serviceIdentifier:reuseIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2, a3);

  v8 = *(*a1 + 16);
  if (v8 >= v6)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(v6, v8);
  }

  __break(1u);
  return result;
}

void closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_OWORD *))
{
  v12 = *(a1 + 24);
  v13 = String._bridgeToObjectiveC()();
  v27 = v12;
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    outlined destroy of Any?(v30, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSaySSGGGMd, &_sSDySSSDySSSaySSGGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSaySSGGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    goto LABEL_9;
  }

  v15 = v31;
LABEL_9:
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);

    if (!*(v18 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    if (!*(v18 + 16))
    {
LABEL_16:
      *&v30[0] = _swiftEmptyArrayStorage;
      goto LABEL_17;
    }
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a6, a7);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  *&v30[0] = *(*(v18 + 56) + 8 * v19);

LABEL_17:
  a8(v30);
  v21 = *&v30[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a6, a7, isUniquelyReferenced_nonNull_native);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a4, a5, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v25 = String._bridgeToObjectiveC()();
  [v27 setObject:isa forKey:v25];
}

uint64_t UserDefaultsPseudonymStorage.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t UserDefaultsPseudonymStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PseudonymStorage.push(id:serviceIdentifier:reuseIdentifier:) in conformance UserDefaultsPseudonymStorage()
{
  return protocol witness for PseudonymStorage.push(id:serviceIdentifier:reuseIdentifier:) in conformance UserDefaultsPseudonymStorage();
}

{
  v1 = *(*v0 + 16);
  return Lock.withLock<A>(_:)();
}

uint64_t protocol witness for PseudonymStorage.pop(serviceIdentifier:reuseIdentifier:) in conformance UserDefaultsPseudonymStorage()
{
  v1 = *(*v0 + 16);
  Lock.withLock<A>(_:)();
  return 0;
}

uint64_t protocol witness for PseudonymStorage.setPendingRevoke(id:serviceIdentifier:reuseIdentifier:) in conformance UserDefaultsPseudonymStorage()
{
  return protocol witness for PseudonymStorage.setPendingRevoke(id:serviceIdentifier:reuseIdentifier:) in conformance UserDefaultsPseudonymStorage();
}

{
  v1 = *(*v0 + 16);
  return Lock.withLock<A>(_:)();
}

void *protocol witness for PseudonymStorage.getPendingRevoke(serviceIdentifier:reuseIdentifier:) in conformance UserDefaultsPseudonymStorage()
{
  v1 = *(*v0 + 16);
  Lock.withLock<A>(_:)();
  return _swiftEmptyArrayStorage;
}

void *PseudonymProvider.init(storage:)(__int128 *a1)
{
  v1[2] = 0x4014000000000000;
  v1[3] = [objc_allocWithZone(NSRecursiveLock) init];
  v1[9] = &_swiftEmptyDictionarySingleton;
  outlined init with take of PseudonymProtocol(a1, (v1 + 4));
  return v1;
}

id PseudonymProvider.existingPseudonym(for:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v147 = a3;
  v4 = v3;
  v146 = *v3;
  v7 = type metadata accessor for Date();
  isa = v7[-1].isa;
  v144 = v7;
  v8 = *(isa + 8);
  v9 = __chkstk_darwin(v7);
  v142 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v146 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v140 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v141 = &v128 - v17;
  __chkstk_darwin(v16);
  v19 = &v128 - v18;
  [*(v3 + 24) lock];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 8))(v20, v21);
  if (!v23)
  {
    goto LABEL_8;
  }

  v150[0] = *(a2 + 32);
  if (!*(&v150[0] + 1))
  {

LABEL_8:
    (*(v12 + 56))(v147, 1, 1, v11);
    return [*(v4 + 24) unlock];
  }

  v132 = a2;
  v133 = v19;
  v139 = v22;
  v145 = v23;
  v138 = v150[0];
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v136 = v11;
  v137 = a1;
  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Log.group);
  outlined init with copy of (String, Any)(v150, v149, &_sSSSgMd, &_sSSSgMR);
  v26 = v145;

  v135 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  outlined destroy of Any?(v150, &_sSSSgMd, &_sSSSgMR);

  v29 = os_log_type_enabled(v27, v28);
  v134 = v12;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v30 = 136315906;
    v31 = _typeName(_:qualified:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v149);
    v26 = v145;

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v149);
    *(v30 + 22) = 2080;
    v34 = *(&v138 + 1);
    v35 = v138;
    *(v30 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, *(&v138 + 1), v149);
    *(v30 + 32) = 2080;
    v36 = v139;
    *(v30 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v26, v149);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s %s - %s %s ", v30, 0x2Au);
    swift_arrayDestroy();

    v37 = v36;
  }

  else
  {

    v34 = *(&v138 + 1);
    v37 = v139;
    v35 = v138;
  }

  PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(v137, v35, v34);
  v38 = *(v4 + 56);
  v39 = *(v4 + 64);
  __swift_project_boxed_opaque_existential_1((v4 + 32), v38);
  v40 = v148;
  v41 = (*(v39 + 16))(v37, v26, v35, v34, v38, v39);
  v148 = v40;
  if (v40)
  {
    goto LABEL_11;
  }

  v44 = v42;
  if (v42)
  {
    v131 = v41;
    outlined init with copy of (String, Any)(v150, v149, &_sSSSgMd, &_sSSSgMR);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    outlined destroy of Any?(v150, &_sSSSgMd, &_sSSSgMR);

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v129 = v45;
      v48 = v47;
      v149[0] = swift_slowAlloc();
      *v48 = 136316162;
      v49 = v146;
      v50 = _typeName(_:qualified:)();
      v52 = v46;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v149);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v149);
      *(v48 + 22) = 2080;
      v54 = v131;
      *(v48 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v44, v149);
      *(v48 + 32) = 2080;
      *(v48 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, *(&v138 + 1), v149);
      *(v48 + 42) = 2080;
      *(v48 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v26, v149);
      v55 = v129;
      _os_log_impl(&_mh_execute_header, v129, v52, "%s %s - Found reusable pseudonym candidate: %s %s %s", v48, 0x34u);
      swift_arrayDestroy();

      v56 = v133;
    }

    else
    {

      v56 = v133;
      v49 = v146;
      v54 = v131;
    }

    v67 = *(v49 + 88);
    v68 = v136;
    v69 = v148;
    (*(v67 + 48))(v137, v54, v44, v132, v136, v67);
    v148 = v69;
    if (!v69)
    {
      v77 = *(v67 + 24);
      v78 = v142;
      v129 = v67;
      v77(v68, v67);
      Date.timeIntervalSinceNow.getter();
      v80 = v79;
      (*(isa + 1))(v78, v144);
      if (v80 > 5.0)
      {
        v81 = v56;
        outlined init with copy of (String, Any)(v150, v149, &_sSSSgMd, &_sSSSgMR);

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        outlined destroy of Any?(v150, &_sSSSgMd, &_sSSSgMR);

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v149[0] = swift_slowAlloc();
          *v84 = 136316162;
          v85 = _typeName(_:qualified:)();
          v87 = v26;
          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v149);

          *(v84 + 4) = v88;
          *(v84 + 12) = 2080;
          *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v149);
          *(v84 + 22) = 2080;
          v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v44, v149);

          *(v84 + 24) = v89;
          *(v84 + 32) = 2080;
          *(v84 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, *(&v138 + 1), v149);
          *(v84 + 42) = 2080;
          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v87, v149);
          v81 = v133;

          *(v84 + 44) = v90;
          _os_log_impl(&_mh_execute_header, v82, v83, "%s %s - Reusing pseudonym: %s %s %s", v84, 0x34u);
          swift_arrayDestroy();
          v91 = v136;
        }

        else
        {

          v91 = v136;
        }

        v124 = v134;
        v125 = v147;
        (*(v134 + 32))(v147, v81, v91);
        (*(v124 + 56))(v125, 0, 1, v91);
        return [*(v4 + 24) unlock];
      }

      v96 = *(v134 + 16);
      v97 = v141;
      v96(v141, v56, v68);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v130 = v44;
        v101 = v100;
        v146 = swift_slowAlloc();
        v149[0] = v146;
        *v101 = 136315650;
        v102 = _typeName(_:qualified:)();
        v144 = v98;
        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v149);
        LODWORD(isa) = v99;
        v105 = v104;

        *(v101 + 4) = v105;
        *(v101 + 12) = 2080;
        *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v149);
        *(v101 + 22) = 2080;
        v106 = v140;
        v96(v140, v97, v68);
        v107 = *(v134 + 8);
        v107(v97, v68);
        v108 = v129;
        v109 = v129[1].isa;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v107(v106, v68);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v149);

        *(v101 + 24) = v113;
        v114 = v144;
        _os_log_impl(&_mh_execute_header, v144, isa, "%s %s - Reusable pseudonym: %s is expired. Attempting to use next available reusable pseudonym", v101, 0x20u);
        swift_arrayDestroy();

        v44 = v130;
      }

      else
      {
        v107 = *(v134 + 8);
        v107(v97, v68);

        v108 = v129;
      }

      v126 = v133;
      (v108[7].isa)(v68, v108);
      v127 = v148;
      (*(*v4 + 160))(v137, v132);
      v148 = v127;
      if (!v127)
      {
        v107(v126, v68);

        goto LABEL_11;
      }

      v107(v126, v68);
    }

    v146 = v148;
    v130 = v44;
    v71 = *(v4 + 56);
    v70 = *(v4 + 64);
    __swift_project_boxed_opaque_existential_1((v4 + 32), v71);
    v72 = v131;
    v73 = v44;
    v75 = *(&v138 + 1);
    v74 = v139;
    v76 = v138;
    (*(v70 + 32))(v131, v73, v139, v145, v138, *(&v138 + 1), v71, v70);
    v148 = 0;
    v92 = *(v4 + 56);
    v93 = *(v4 + 64);
    __swift_project_boxed_opaque_existential_1((v4 + 32), v92);
    v94 = v130;
    v95 = v148;
    (*(v93 + 48))(v72, v130, v74, v145, v76, v75, v92, v93);
    v148 = v95;
    if (v95)
    {

LABEL_11:

      return [*(v4 + 24) unlock];
    }

    outlined init with copy of (String, Any)(v150, v149, &_sSSSgMd, &_sSSSgMR);

    swift_errorRetain();
    v115 = Logger.logObject.getter();
    v116 = v94;
    v117 = static os_log_type_t.error.getter();

    outlined destroy of Any?(v150, &_sSSSgMd, &_sSSSgMR);

    v144 = v115;
    if (os_log_type_enabled(v115, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v149[0] = swift_slowAlloc();
      *v118 = 136315906;
      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v116, v149);

      *(v118 + 4) = v120;
      *(v118 + 12) = 2080;
      *(v118 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, *(&v138 + 1), v149);
      *(v118 + 22) = 2080;
      v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v145, v149);

      *(v118 + 24) = v121;
      *(v118 + 32) = 2112;
      swift_errorRetain();
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v118 + 34) = v122;
      *v119 = v122;
      v123 = v144;
      _os_log_impl(&_mh_execute_header, v144, v117, "Failed to use reusable pseudonym: %s %s %s: %@", v118, 0x2Au);
      outlined destroy of Any?(v119, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v134 + 56))(v147, 1, 1, v136);
  }

  else
  {
    outlined init with copy of (String, Any)(v150, v149, &_sSSSgMd, &_sSSSgMR);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    outlined destroy of Any?(v150, &_sSSSgMd, &_sSSSgMR);

    v59 = os_log_type_enabled(v57, v58);
    v60 = v136;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v149[0] = swift_slowAlloc();
      *v61 = 136315906;
      v62 = _typeName(_:qualified:)();
      v64 = v26;
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v149);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE6F0, v149);
      *(v61 + 22) = 2080;
      *(v61 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, *(&v138 + 1), v149);
      *(v61 + 32) = 2080;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v64, v149);

      *(v61 + 34) = v66;
      v60 = v136;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s %s - No reusable pseudonyms available for %s %s", v61, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v134 + 56))(v147, 1, 1, v60);
  }

  return [*(v4 + 24) unlock];
}

Swift::Void __swiftcall PseudonymProvider.register(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = a2._object;
  v8 = handle._object;
  v9 = handle._countAndFlagsBits;
  v27 = *v3;
  if (one-time initialization token for group != -1)
  {
    v25 = a2._countAndFlagsBits;
    swift_once();
    a2._countAndFlagsBits = v25;
  }

  v28 = a2._countAndFlagsBits;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v13 = 136316162;
    v14 = _typeName(_:qualified:)();
    v16 = v7;
    v17 = object;
    v18 = countAndFlagsBits;
    v19 = v8;
    v20 = v9;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v29);

    *(v13 + 4) = v21;
    v9 = v20;
    v8 = v19;
    countAndFlagsBits = v18;
    object = v17;
    v7 = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE720, v29);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v29);
    *(v13 + 32) = 2080;
    *(v13 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v29);
    *(v13 + 42) = 2080;
    v22 = v28;
    *(v13 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v16, v29);
    _os_log_impl(&_mh_execute_header, v11, v26, "%s %s - %s %s %s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v28;
  }

  v23 = v4[7];
  v24 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v23);
  (*(v24 + 24))(v9, v8, v22, v7, countAndFlagsBits, object, v23, v24);
}

Swift::Void __swiftcall PseudonymProvider.markUsed(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  v22 = handle._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v20 = handle._countAndFlagsBits;
  v5 = a2._object;
  v6 = a2._countAndFlagsBits;
  v7 = *v3;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.group);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v11 = 136316162;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v23);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE750, v23);
    *(v11 + 22) = 2080;
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v23);
    *(v11 + 32) = 2080;
    *(v11 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v23);
    *(v11 + 42) = 2080;
    *(v11 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v23);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s %s - %s %s %s", v11, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v4[7];
  v16 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v15);
  (*(v16 + 32))(v20, v22, v6, v5, countAndFlagsBits, object, v15, v16);
  v17 = v4[7];
  v18 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v17);
  (*(v18 + 40))(v20, v22, v6, v5, countAndFlagsBits, object, v17, v18);
}

Swift::Void __swiftcall PseudonymProvider.markRevoked(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = a2._object;
  v8 = handle._object;
  v9 = handle._countAndFlagsBits;
  v27 = *v3;
  if (one-time initialization token for group != -1)
  {
    v25 = a2._countAndFlagsBits;
    swift_once();
    a2._countAndFlagsBits = v25;
  }

  v28 = a2._countAndFlagsBits;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v13 = 136316162;
    v14 = _typeName(_:qualified:)();
    v16 = v7;
    v17 = object;
    v18 = countAndFlagsBits;
    v19 = v8;
    v20 = v9;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v29);

    *(v13 + 4) = v21;
    v9 = v20;
    v8 = v19;
    countAndFlagsBits = v18;
    object = v17;
    v7 = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001000CE780, v29);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v29);
    *(v13 + 32) = 2080;
    *(v13 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v29);
    *(v13 + 42) = 2080;
    v22 = v28;
    *(v13 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v16, v29);
    _os_log_impl(&_mh_execute_header, v11, v26, "%s %s - %s %s %s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v28;
  }

  v23 = v4[7];
  v24 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v23);
  (*(v24 + 48))(v9, v8, v22, v7, countAndFlagsBits, object, v23, v24);
}

Swift::Void __swiftcall PseudonymProvider.release(handle:for:reuseIdentifier:)(Swift::String handle, Swift::String a2, Swift::String reuseIdentifier)
{
  v4 = v3;
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = a2._object;
  v8 = handle._object;
  v9 = handle._countAndFlagsBits;
  v27 = *v3;
  if (one-time initialization token for group != -1)
  {
    v25 = a2._countAndFlagsBits;
    swift_once();
    a2._countAndFlagsBits = v25;
  }

  v28 = a2._countAndFlagsBits;
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v13 = 136316162;
    v14 = _typeName(_:qualified:)();
    v16 = v7;
    v17 = object;
    v18 = countAndFlagsBits;
    v19 = v8;
    v20 = v9;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v29);

    *(v13 + 4) = v21;
    v9 = v20;
    v8 = v19;
    countAndFlagsBits = v18;
    object = v17;
    v7 = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001000CE7B0, v29);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v29);
    *(v13 + 32) = 2080;
    *(v13 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v29);
    *(v13 + 42) = 2080;
    v22 = v28;
    *(v13 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v16, v29);
    _os_log_impl(&_mh_execute_header, v11, v26, "%s %s - %s %s %s", v13, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = v28;
  }

  v23 = v4[7];
  v24 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v23);
  (*(v24 + 8))(v9, v8, v22, v7, countAndFlagsBits, object, v23, v24);
}

uint64_t PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v53 = &v49 - v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  result = (*(v13 + 8))(v12, v13);
  if (!v15)
  {
    return result;
  }

  v16 = result;
  v17 = v15;
  swift_beginAccess();
  v18 = v3[9];
  if (!*(v18 + 16))
  {
    goto LABEL_6;
  }

  v19 = v3[9];

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  if ((v21 & 1) == 0)
  {

LABEL_6:
    v22 = &_swiftEmptySetSingleton;
    v56 = &_swiftEmptySetSingleton;
    goto LABEL_7;
  }

  v22 = *(*(v18 + 56) + 8 * v20);

  v56 = v22;

LABEL_7:
  v23 = specialized Set.contains(_:)(a2, a3, v22);

  if (v23)
  {
    goto LABEL_8;
  }

  v52 = v8;

  specialized Set._Variant.insert(_:)(v54, a2, a3);

  v24 = v56;
  swift_beginAccess();

  v25 = v4[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v4[9];
  v4[9] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v16, v17, isUniquelyReferenced_nonNull_native);

  v4[9] = v55;
  swift_endAccess();
  v27 = v4[7];
  v28 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v27);
  v29 = (*(v28 + 56))(v16, v17, a2, a3, v27, v28);
  v30 = v29;
  if (!*(v29 + 16))
  {
LABEL_8:
  }

  else
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.group);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v52;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v50 = v33;
      v37 = v36;
      v51 = swift_slowAlloc();
      *&v54[0] = v51;
      *v37 = 136316162;
      v38 = _typeName(_:qualified:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v54);
      v49 = v32;
      v41 = v40;

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v54);
      *(v37 + 22) = 2080;
      v42 = Array.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v54);

      *(v37 + 24) = v44;
      *(v37 + 32) = 2080;
      *(v37 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v54);
      *(v37 + 42) = 2080;
      *(v37 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v54);
      v45 = v49;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s %s - Revoking pending pseudonyms: %s for %s %s", v37, 0x34u);
      swift_arrayDestroy();

      v35 = v52;
    }

    else
    {
    }

    v46 = type metadata accessor for TaskPriority();
    v47 = v53;
    (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
    outlined init with copy of PseudonymProtocol(a1, v54);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v30;
    v48[5] = v4;
    v48[6] = v16;
    v48[7] = v17;
    v48[8] = a2;
    v48[9] = a3;
    outlined init with take of PseudonymProtocol(v54, (v48 + 10));
    v48[15] = v35;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v47, &async function pointer to partial apply for closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:), v48);
  }
}

uint64_t closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:), 0, 0);
}

uint64_t closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)()
{
  v43 = v0;
  v1 = *(v0[2] + 16);
  v0[10] = v1;
  if (!v1)
  {
LABEL_12:
    v30 = v0[1];

    return v30();
  }

  v2 = 0;
  while (1)
  {
    v0[11] = v2;
    v39 = v0[6];
    v40 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v12 = v0[2] + 16 * v2;
    v13 = *(v12 + 32);
    v0[12] = v13;
    v14 = *(v12 + 40);
    v0[13] = v14;
    v15 = v11[7];
    v16 = v11[8];
    __swift_project_boxed_opaque_existential_1(v11 + 4, v15);
    v17 = *(v16 + 48);

    v17(v13, v14, v10, v9, v39, v40, v15, v16);
    v18 = objc_allocWithZone(IDSURI);
    v20 = v13;
    v19 = v14;
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 initWithPrefixedURI:v21];
    v0[14] = v22;

    if (v22)
    {
      break;
    }

LABEL_8:
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.group);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v3 = v0[9];
      v4 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v4 = 136315650;
      v5 = _typeName(_:qualified:)();
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v42);

      *(v4 + 4) = v7;
      *(v4 + 12) = 2080;
      *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v42);
      *(v4 + 22) = 2080;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v42);

      *(v4 + 24) = v8;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s %s - Failed to find pending revoke pseudonym: %s", v4, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v2 = v0[11] + 1;
    if (v2 == v0[10])
    {
      goto LABEL_12;
    }
  }

  v23 = v0[8];
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26 = (*(v25 + 24))(v22, v24, v25);
  v0[15] = v26;
  if (!v26)
  {

    goto LABEL_8;
  }

  v32 = v0[8];
  v33 = v32[3];
  v34 = v32[4];
  v35 = v26;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v36 = *(v34 + 40);
  v41 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  v0[16] = v38;
  *v38 = v0;
  v38[1] = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);

  return v41(v35, v33, v34);
}

{
  v58 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Log.group);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v54 = v0[14];
    v55 = v0[15];
    v5 = v0[13];
    v52 = v0[12];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v7 = 136315906;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v57);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v57);
    *(v7 + 22) = 1024;
    *(v7 + 24) = v4;
    *(v7 + 28) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v5, v57);

    *(v7 + 30) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s %s - Revoke returned %{BOOL}d for pending pseudonym: %s", v7, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    v12 = v0[15];
    v13 = v0[13];
  }

  v14 = v0[11] + 1;
  if (v14 == v0[10])
  {
LABEL_7:
    v15 = v0[1];

    return v15();
  }

  v17 = v0[17];
  v49 = v0;
  while (1)
  {
    v0[11] = v14;
    v51 = v0[6];
    v53 = v0[7];
    v24 = v0[4];
    v25 = v0[5];
    v26 = v0[3];
    v27 = v0[2] + 16 * v14;
    v28 = *(v27 + 32);
    v0[12] = v28;
    v29 = *(v27 + 40);
    v0[13] = v29;
    v30 = v26[7];
    v31 = v26[8];
    __swift_project_boxed_opaque_existential_1(v26 + 4, v30);
    v32 = *(v31 + 48);

    v32(v28, v29, v24, v25, v51, v53, v30, v31);
    if (v17)
    {
    }

    v33 = objc_allocWithZone(IDSURI);
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 initWithPrefixedURI:v34];
    v0 = v49;
    v49[14] = v35;

    if (!v35)
    {
      goto LABEL_18;
    }

    v36 = v49[8];
    v37 = v36[3];
    v38 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v39 = (*(v38 + 24))(v35, v37, v38);
    v49[15] = v39;
    if (v39)
    {
      break;
    }

LABEL_18:
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v50, static Log.group);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v18 = v49[9];
      v19 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v19 = 136315650;
      v20 = _typeName(_:qualified:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v57);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v57);
      *(v19 + 22) = 2080;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v57);

      *(v19 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s %s - Failed to find pending revoke pseudonym: %s", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v17 = 0;
    v14 = v49[11] + 1;
    if (v14 == v49[10])
    {
      goto LABEL_7;
    }
  }

  v42 = v49[8];
  v43 = v42[3];
  v44 = v42[4];
  v45 = v39;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v46 = *(v44 + 40);
  v56 = (v46 + *v46);
  v47 = v46[1];
  v48 = swift_task_alloc();
  v49[16] = v48;
  *v48 = v49;
  v48[1] = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);

  return v56(v45, v43, v44);
}

{
  v58 = v0;
  v1 = v0;
  v2 = *(v0 + 120);

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Log.group);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  v8 = *(v0 + 104);
  if (v6)
  {
    v55 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v10 = 136315650;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v57);

    *(v10 + 4) = v13;
    v1 = v0;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v57);
    *(v10 + 22) = 2080;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v8, v57);

    *(v10 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s - Failed to revoke pending pseudonym: %s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 136);
  }

  v16 = v1[11] + 1;
  if (v16 == v1[10])
  {
LABEL_7:
    v17 = v1[1];

    return v17();
  }

  v52 = v1;
  while (1)
  {
    v1[11] = v16;
    v25 = v1[6];
    v54 = v1[7];
    v27 = v1[4];
    v26 = v1[5];
    v28 = v1[3];
    v29 = v1[2] + 16 * v16;
    v30 = *(v29 + 32);
    v1[12] = v30;
    v31 = *(v29 + 40);
    v1[13] = v31;
    v32 = v28[7];
    v33 = v28[8];
    __swift_project_boxed_opaque_existential_1(v28 + 4, v32);
    v34 = *(v33 + 48);

    v34(v30, v31, v27, v26, v25, v54, v32, v33);
    v35 = objc_allocWithZone(IDSURI);
    v36 = v31;
    v37 = String._bridgeToObjectiveC()();
    v38 = [v35 initWithPrefixedURI:v37];
    v1 = v52;
    v52[14] = v38;

    if (v38)
    {
      break;
    }

LABEL_16:
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v53, static Log.group);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v19 = v52[9];
      v20 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v20 = 136315650;
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v57);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001000CE950, v57);
      *(v20 + 22) = 2080;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v36, v57);

      *(v20 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s %s - Failed to find pending revoke pseudonym: %s", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v16 = v52[11] + 1;
    if (v16 == v52[10])
    {
      goto LABEL_7;
    }
  }

  v39 = v52[8];
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v42 = (*(v41 + 24))(v38, v40, v41);
  v52[15] = v42;
  if (!v42)
  {

    goto LABEL_16;
  }

  v45 = v52[8];
  v46 = v45[3];
  v47 = v45[4];
  v48 = v42;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v49 = *(v47 + 40);
  v56 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  v52[16] = v51;
  *v51 = v52;
  v51[1] = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);

  return v56(v48, v46, v47);
}