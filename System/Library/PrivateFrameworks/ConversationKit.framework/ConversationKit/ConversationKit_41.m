void specialized ContiguousArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v7 + 24) >> 1, v12 < v8 + v6))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v7 = *v4;
    v12 = *(*v4 + 24) >> 1;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_13:
      swift_unknownObjectRelease();
      *v4 = v7;
      return;
    }

    __break(1u);
  }

  v13 = *(v7 + 16);
  if (v12 - v13 < v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  memcpy((v7 + 16 * v13 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
    goto LABEL_13;
  }

  v14 = *(v7 + 16);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 16) = v16;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

{
  v39 = a2;
  v8 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  v18 = a4 >> 1;
  v40 = a3;
  v19 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v35[1] = a1;
  v20 = *v4;
  v21 = *(*v4 + 16);
  if (__OFADD__(v21, v19))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v41 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v20;
  if (!isUniquelyReferenced_nonNull_native || (v23 = v20, v24 = *(v20 + 24) >> 1, v24 < v21 + v19))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v23 = *v4;
    v24 = *(*v4 + 24) >> 1;
  }

  v25 = v24 - *(v23 + 16);
  if (v41 != v40)
  {
    if (v25 >= v19)
    {
      v27 = v23;
      swift_arrayInitWithCopy();
      if (v19 <= 0)
      {
        v26 = v41;
        v23 = v27;
        goto LABEL_14;
      }

      v28 = *(v27 + 16);
      v29 = __OFADD__(v28, v19);
      v30 = v28 + v19;
      v26 = v41;
      if (!v29)
      {
        v23 = v27;
        *(v27 + 16) = v30;
        goto LABEL_14;
      }

LABEL_41:
      __break(1u);
      return;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v19 > 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = 0;
  v26 = v40;
LABEL_14:
  v38 = v23;
  if (v19 == v25)
  {
    v31 = *(v23 + 16);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v8);
    v36 = v14;
    v37 = v4;
    while (1)
    {
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
      {
        break;
      }

      outlined destroy of CallControlsService?(v14, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
      if (v31 + 1 > *(v38 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v32 = *v4;
      v43 = *(*v4 + 24) >> 1;
      v38 = v32;
      while (1)
      {
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
        if (__swift_getEnumTagSinglePayload(v11, 1, v8) == 1)
        {
          outlined destroy of CallControlsService?(v11, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
          goto LABEL_33;
        }

        outlined init with take of Collaboration();
        if (v31 >= v43)
        {
          break;
        }

        outlined destroy of CallControlsService?(v17, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
        outlined init with take of Collaboration();
        if (v26 == v41)
        {
          v33 = 1;
          v26 = v41;
        }

        else
        {
          if (v26 < v40 || v26 >= v41)
          {
            __break(1u);
            goto LABEL_37;
          }

          _s15ConversationKit11ParticipantVWOcTm_8();
          v33 = 0;
          ++v26;
        }

        __swift_storeEnumTagSinglePayload(v17, v33, 1, v8);
        ++v31;
      }

      _s15ConversationKit11ParticipantVWOhTm_10();
LABEL_33:
      v4 = v37;
      *(v38 + 16) = v31;
      v14 = v36;
    }

    outlined destroy of CallControlsService?(v17, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
    swift_unknownObjectRelease();
    outlined destroy of CallControlsService?(v14, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v4 = v38;
}

unint64_t *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v8);
    specialized closure #1 in _NativeSet.intersection(_:)(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v12, v6, a2, a1);

    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  return v10;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(a1 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v53, v5);
        return;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      a1[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
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
}

id outlined bridged method (mnnnnbnn) of @objc static IMUserNotification.userNotification(withIdentifier:timeout:alertLevel:displayFlags:displayInformation:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [a6 userNotificationWithIdentifier:a1 timeout:a2 alertLevel:a3 displayFlags:isa displayInformation:a4];

  return v12;
}

uint64_t outlined bridged method (pb) of @objc TUNearbyDeviceHandle.name.getter(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a2;
  v41 = a4;
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  (*(v8 + 32))(&v39 - v13, v15, v16, v12);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  swift_unknownObjectWeakInit();
  v47 = 0;
  swift_unknownObjectWeakInit();
  v17 = objc_opt_self();
  swift_unknownObjectRetain();
  v18 = [v17 sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v19 = swift_allocObject();
  v44 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v45 = &protocol witness table for TUIDSLookupManager;
  v43[0] = v18;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v20 = MEMORY[0x1E69E7CC0];
  v19[2] = Dictionary.init(dictionaryLiteral:)();
  v19[3] = Dictionary.init(dictionaryLiteral:)();
  v19[5] = 0;
  swift_unknownObjectWeakInit();
  v19[6] = v20;
  outlined init with copy of IDSLookupManager(v43, (v19 + 7));
  v21 = [objc_opt_self() defaultCenter];
  [v21 addObserver:v19 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v18];

  __swift_destroy_boxed_opaque_existential_1(v43);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = static Defaults.shared;
  v23 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(&v48, &v42);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v46, v43);
  (*(v8 + 16))(v10, v14, a5);
  swift_retain_n();
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(a1, v40, v10, &v42, v43, 0, &v49, 0, v19, v22, &protocol witness table for Defaults, v23, a5, v39, v39, v40, v41, v42, v43[0], v43[1], v43[2], v44, v45, v46, v47, v48);
  v25 = v24;
  outlined destroy of DefaultParticipantCaptionsProviderCreator(&v46);
  outlined destroy of DefaultParticipantMediaProviderCreator(&v48);
  v26 = type metadata accessor for EntitlementsChecker();
  v27 = swift_allocObject();
  v39 = a1;
  v40 = a5;
  v28 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v29 = v25;
  *(v27 + 16) = [v28 init];
  *(&v50 + 1) = v26;
  v51 = &protocol witness table for EntitlementsChecker;
  *&v49 = v27;
  v30 = [objc_opt_self() sharedInstance];
  v31 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v32 = (*(v41 + 2624))(v29, &v49, v22, &protocol witness table for Defaults, v30, v31);
  v33 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v34 = v32;
  v35 = [v33 init];
  swift_unknownObjectRelease();

  (*(v8 + 8))(v14, v40);
  v36 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  swift_beginAccess();
  v37 = *&v34[v36];
  *&v34[v36] = v35;

  return v34;
}

void *specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v185 = a6;
  v179 = a5;
  v180 = a4;
  v184 = a3;
  v178 = a1;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v181 = &v148 - v12;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMd);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v148 - v13;
  v174 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v174);
  v172 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v173 = &v148 - v16;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMd);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v148 - v17;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMd);
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v148 - v18;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22TUCallTransmissionModeVGMd);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v148 - v19;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMd);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v148 - v20;
  v159 = type metadata accessor for PushToTalkChannelState();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v155 = &v148 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMd);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v148 - v24;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7TURouteCSgGMd);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v151 = &v148 - v25;
  v156 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v150 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v149 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v27);
  v148.super_class = (&v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v196[3] = a8;
  v196[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v196);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a2, a8);
  v31 = MEMORY[0x1E69E7CC0];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_ignoredScreenSharingRequestUUIDs] = MEMORY[0x1E69E7CC0];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_initiallyActiveParticipantIdentifiers] = MEMORY[0x1E69E7CD0];
  v32 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_coreAnalyticsReporter;
  *&a7[v32] = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  v33 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator;
  *&a7[v33] = [objc_allocWithZone(type metadata accessor for ConversationControlsNoticeCoordinator()) init];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor] = 0;
  v34 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentContactCard];
  *v34 = TPNumberPadCharacter.rawValue.getter;
  v34[1] = 0;
  v35 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentAddParticipantSheet];
  *v35 = TPNumberPadCharacter.rawValue.getter;
  v35[1] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isOnScreenSubscription] = 0;
  v36 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v37 = static Features.shared;
  *&a7[v36] = static Features.shared;
  v38 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_notificationCenter;
  v39 = objc_opt_self();
  v40 = v37;
  *&a7[v38] = [v39 defaultCenter];
  v41 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_observation];
  *v41 = 0u;
  v41[1] = 0u;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_minReactionCountForNotice] = 1;
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_canPostReactionNotice] = 0;
  swift_unknownObjectWeakInit();
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_hasInitializedCallControlsService] = 0;
  v42 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___callControlsService];
  *(v42 + 1) = 0;
  *(v42 + 2) = 0;
  *v42 = 0;
  *(v42 + 24) = xmmword_1BC4C9460;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemBannerPresenter + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemConversationControlsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemAudioConversationControlsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallDetailsViewControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_handoffCompletedDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager] = 0;
  v43 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v193 = v31;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v150 + 104))(v149, *MEMORY[0x1E69E8090], v156);
  *&a7[v43] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v44 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *&a7[v44] = PassthroughSubject.init()();
  v45 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v46 = static HUDActivityManager.shared;
  *&a7[v45] = static HUDActivityManager.shared;
  v47 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_bannerActivityManager;
  v48 = one-time initialization token for shared;
  v49 = v46;
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = static BannerActivityManager.shared;
  *&a7[v47] = static BannerActivityManager.shared;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingScreenSharingRequestActivity] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_podcastRecordingConsentRequestActivity] = 0;
  v51 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__audioRoute;
  v193 = 0;
  v52 = v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7TURouteCSgMd);
  v54 = v151;
  v156 = v53;
  Published.init(initialValue:)();
  (*(v186 + 32))(&a7[v51], v54, v187);
  v55 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__bluetoothAudioFormat;
  v193 = 0;
  LOBYTE(v194) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26TUCallBluetoothAudioFormatVSgMd);
  v56 = v152;
  Published.init(initialValue:)();
  (*(v153 + 32))(&a7[v55], v56, v154);
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_cancellables] = MEMORY[0x1E69E7CC0];
  v57 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__pttChannelState;
  v58 = v158;
  v59 = v155;
  v60 = v159;
  (*(v158 + 104))(v155, *MEMORY[0x1E6995F20], v159);
  (*(v58 + 16))(v157, v59, v60);
  v61 = v160;
  Published.init(initialValue:)();
  (*(v58 + 8))(v59, v60);
  (*(v161 + 32))(&a7[v57], v61, v162);
  v62 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__pttChannelTransmissionMode;
  v193 = 1;
  type metadata accessor for TUCallTransmissionMode(0);
  v63 = v163;
  Published.init(initialValue:)();
  (*(v164 + 32))(&a7[v62], v63, v165);
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttViewModel] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject] = 0;
  v64 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingTransmissionReceivedSubject;
  LOBYTE(v193) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  swift_allocObject();
  *&a7[v64] = CurrentValueSubject.init(_:)();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallStatusUpdateCancellable] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallIncomingTransmissionReceivedCancellable] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert] = 0;
  v65 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__foregroundApp;
  v193 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13ForegroundAppCSgMd);
  v66 = v166;
  Published.init(initialValue:)();
  (*(v167 + 32))(&a7[v65], v66, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMd);
  Cache.init(countLimit:)();
  type metadata accessor for ForegroundCollaborationState(0);
  swift_storeEnumTagMultiPayload();
  v67 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__ephemeralAlert;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14EphemeralAlertVSgMd);
  v68 = v169;
  Published.init(initialValue:)();
  (*(v170 + 32))(&a7[v67], v68, v171);
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_shouldShowDelayedLMIBanner] = 0;
  a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityLaunchTimer] = 0;
  v69 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_tccServer;
  *&a7[v69] = tcc_server_create();
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_applicationState] = 0;
  v70 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__secondaryPillButtonType;
  swift_storeEnumTagMultiPayload();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v71 = v175;
  Published.init(initialValue:)();
  _s15ConversationKit11ParticipantVWOhTm_10();
  (*(v176 + 32))(&a7[v70], v71, v177);
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_updateForegroundCollaborationStateTask] = 0;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer] = 0;
  v72 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_participantStateDidChangeSubject;
  swift_allocObject();
  *&a7[v72] = PassthroughSubject.init()();
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, &static Logger.conversationControls);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1BBC58000, v74, v75, "CCM init", v76, 2u);
    MEMORY[0x1BFB23DF0](v76, -1, -1);
  }

  v77 = v178;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController] = v178;
  type metadata accessor for ConversationControlsJoinCountdownActionController();
  swift_allocObject();
  v78 = v77;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_countdownController] = ConversationControlsJoinCountdownActionController.init()();
  v79 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v80 = [v79 gameControllerSystemButton];

  v81 = 0;
  if ((v80 & 1) == 0)
  {
    type metadata accessor for CallGameController();
    swift_allocObject();
    v81 = CallGameController.init()();
  }

  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController] = v81;
  v82 = [objc_allocWithZone(MEMORY[0x1E69D8BF0]) init];
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController] = v82;
  v83 = v179;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter] = v179;
  v84 = v83;
  v85 = [v84 conversationManager];
  type metadata accessor for CollaborationInitiationManager();
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_collaborationInitiationManager] = v86;
  ConversationController.hasMessageCapableRemoteParticipants.getter();
  LOBYTE(v85) = v87;
  swift_beginAccess();
  v192 = v85 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v88 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  v89 = *&v78[v88];
  v90 = 1;
  if (v89 != 3)
  {
    v91 = &v78[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    swift_beginAccess();
    v92 = *(v91 + 1);
    ObjectType = swift_getObjectType();
    v179 = v78;
    v94 = v84;
    v95 = v51;
    v96 = ObjectType;
    v97 = *(v92 + 152);
    swift_unknownObjectRetain();
    v98 = v96;
    v51 = v95;
    v84 = v94;
    v78 = v179;
    v90 = v97(v98, v92);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  LOBYTE(v191) = v90 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v99 = ConversationController.audioRoute.getter();
  swift_beginAccess();
  (*(v186 + 8))(&a7[v51], v187);
  v191 = v99;
  Published.init(initialValue:)();
  swift_endAccess();
  v100 = &v78[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  swift_beginAccess();
  v101 = *(v100 + 1);
  v102 = swift_getObjectType();
  v103 = *(v101 + 376);
  swift_unknownObjectRetain();
  LOBYTE(v101) = v103(v102, v101);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v189 = (v101 & 1) == 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v104 = ConversationController.localVideoSupported.getter();
  v105 = *(v100 + 1);
  v106 = swift_getObjectType();
  v107 = *(v105 + 328);
  swift_unknownObjectRetain();
  LOBYTE(v105) = v107(v106, v105);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v189 = v104 & 1;
  v190 = v105 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  outlined init with copy of IDSLookupManager(v196, &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_entitlementsChecker]);
  v108 = &a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults];
  v109 = v180;
  *v108 = v184;
  v108[1] = v109;
  v110 = v185;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags] = v185;
  *&a7[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_reactionNoticeHistory] = MEMORY[0x1E69E7CC0];
  v111 = type metadata accessor for ConversationControlsManager(0);
  v188.receiver = a7;
  v188.super_class = v111;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v112 = objc_msgSendSuper2(&v188, sel_init);
  v113 = objc_allocWithZone(type metadata accessor for ConduitApprovalDelegate());
  v114 = v112;
  v115 = ConduitApprovalDelegate.init(_:)();
  v116 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate;
  v117 = *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate);
  *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate) = v115;

  v118 = [v84 neighborhoodActivityConduit];
  [v118 setApprovalDelegate_];

  if ([v110 lagunaEnabled])
  {
    v119 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
    v120 = *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue);
    v121 = objc_opt_self();
    v122 = v114;
    v123 = v120;
    v124 = [v121 sharedInstance];
    v125 = objc_allocWithZone(type metadata accessor for ConduitLagunaNoticeManager(0));
    ConduitLagunaNoticeManager.init(_:queue:callCenter:)(v122, v123, v124, v125, v126, v127, v128, v129, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
    v131 = v130;
    v132 = [v84 neighborhoodActivityConduit];
    [v132 addDelegate:v131 queue:*(v114 + v119)];

    v133 = [v84 conversationManager];
    [v133 addDelegate:v131 queue:*(v114 + v119)];

    v134 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager;
    swift_beginAccess();
    v135 = *(v122 + v134);
    *(v122 + v134) = v131;
  }

  v136 = ConversationControlsManager.updateShareButtonState()();
  v137 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v114) + 0xA30))(v136);
  ConversationControlsManager.setupConversationControllerObservers()();
  v138 = *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator);
  v139 = *((*v137 & *v138) + 0xA0);
  v140 = v138;
  v141 = v181;
  v139();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Published<Notice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd);
  v142 = v183;
  v143 = Publisher<>.sink(receiveValue:)();

  (*(v182 + 8))(v141, v142);
  *(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable) = v143;

  if (*(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController))
  {
    v144 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v145 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v146 = GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(partial apply for closure #2 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v144, partial apply for closure #3 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v145);
    specialized CallGameController.addEvent(_:)(v146);
  }

  [*(v114 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController) setDelegate_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v196);
  return v114;
}

char *specialized ConversationControlsManager.__allocating_init(activeCall:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_385();
  v0 = [objc_opt_self() sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_217_0();
  }

  v1 = static PlaceholderCallCenter.shared;
  objc_allocWithZone(type metadata accessor for CallCenter());
  v2 = v1;
  v3 = OUTLINED_FUNCTION_170();
  CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v3, v4, 0, 0);
  OUTLINED_FUNCTION_49();

  return specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(v5, v6, v7, v8, v9);
}

char *_s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tg5Tf4enn_nSo6TUCallC_Tt1g5()
{
  OUTLINED_FUNCTION_6_7();
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  swift_unknownObjectWeakInit();
  v30 = 0;
  swift_unknownObjectWeakInit();
  v0 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v1 = swift_allocObject();
  v28[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v28[4] = &protocol witness table for TUIDSLookupManager;
  v28[0] = v0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_11_67();
  lazy protocol witness table accessor for type URL and conformance URL(v2, v3);
  v4 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_8();
  v1[2] = Dictionary.init(dictionaryLiteral:)();
  v1[3] = Dictionary.init(dictionaryLiteral:)();
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[6] = v4;
  outlined init with copy of IDSLookupManager(v28, (v1 + 7));
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v1 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v0];

  __swift_destroy_boxed_opaque_existential_1(v28);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v6 = static Defaults.shared;
  v7 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(v31, v27);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(v29, v28);
  swift_retain_n();
  v8 = OUTLINED_FUNCTION_38_2();
  v13 = specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v8, v9, v10, v11, 0, v12, 0, v1, v6, v7);
  outlined destroy of DefaultParticipantCaptionsProviderCreator(v29);
  outlined destroy of DefaultParticipantMediaProviderCreator(v31);
  type metadata accessor for EntitlementsChecker();
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  v15 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v16 = v13;
  *(v14 + 16) = [v15 init];
  v17 = [objc_opt_self() sharedInstance];
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v18 = objc_allocWithZone(type metadata accessor for ConversationControlsManager(0));
  OUTLINED_FUNCTION_46();
  specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)();
  v20 = v19;
  v21 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v22 = v20;
  v23 = [v21 init];

  v24 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  OUTLINED_FUNCTION_3_5();
  v25 = *&v22[v24];
  *&v22[v24] = v23;

  return v22;
}

char *specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(char *a1, uint64_t a2, uint64_t a3)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  swift_unknownObjectWeakInit();
  v28 = 0;
  swift_unknownObjectWeakInit();
  v6 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v7 = swift_allocObject();
  v26[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v26[4] = &protocol witness table for TUIDSLookupManager;
  v26[0] = v6;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = Dictionary.init(dictionaryLiteral:)();
  v7[3] = Dictionary.init(dictionaryLiteral:)();
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[6] = v8;
  outlined init with copy of IDSLookupManager(v26, (v7 + 7));
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v7 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v6];

  __swift_destroy_boxed_opaque_existential_1(v26);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static Defaults.shared;
  v11 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(v29, v25);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(v27, v26);
  swift_retain_n();
  v12 = specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(a1, a2, v25, v26, 0, &v30, 0, v7, v10, v11);
  outlined destroy of DefaultParticipantCaptionsProviderCreator(v27);
  outlined destroy of DefaultParticipantMediaProviderCreator(v29);
  v13 = type metadata accessor for EntitlementsChecker();
  v14 = swift_allocObject();
  v15 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v16 = v12;
  *(v14 + 16) = [v15 init];
  *(&v31 + 1) = v13;
  v32 = &protocol witness table for EntitlementsChecker;
  *&v30 = v14;
  v17 = [objc_opt_self() sharedInstance];
  v18 = (*(a3 + 2624))(v16, &v30, v10, &protocol witness table for Defaults, v17, [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init]);
  v19 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v20 = v18;
  v21 = [v19 init];

  v22 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  swift_beginAccess();
  v23 = *&v20[v22];
  *&v20[v22] = v21;

  return v20;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  swift_unknownObjectWeakInit();
  v36 = 0;
  swift_unknownObjectWeakInit();
  v10 = [objc_opt_self() sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v11 = swift_allocObject();
  v33 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v34 = &protocol witness table for TUIDSLookupManager;
  v32[0] = v10;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v12 = MEMORY[0x1E69E7CC0];
  v11[2] = Dictionary.init(dictionaryLiteral:)();
  v11[3] = Dictionary.init(dictionaryLiteral:)();
  v11[5] = 0;
  swift_unknownObjectWeakInit();
  v11[6] = v12;
  outlined init with copy of IDSLookupManager(v32, (v11 + 7));
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v11 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v10];

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static Defaults.shared;
  v15 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(&v37, &v31);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v35, v32);
  swift_retain_n();
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(a1, a2, &v31, v32, 0, &v38, 0, v11, v14, v15, a4, a5, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35, v36, v37, v38, *(&v38 + 1));
  v17 = v16;
  outlined destroy of DefaultParticipantCaptionsProviderCreator(&v35);
  outlined destroy of DefaultParticipantMediaProviderCreator(&v37);
  v18 = type metadata accessor for EntitlementsChecker();
  v19 = swift_allocObject();
  v20 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v21 = v17;
  *(v19 + 16) = [v20 init];
  *(&v39 + 1) = v18;
  v40 = &protocol witness table for EntitlementsChecker;
  *&v38 = v19;
  v22 = [objc_opt_self() sharedInstance];
  v23 = (*(a3 + 2624))(v21, &v38, v14, &protocol witness table for Defaults, v22, [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init]);
  v24 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v25 = v23;
  v26 = [v24 init];

  v27 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  swift_beginAccess();
  v28 = *&v25[v27];
  *&v25[v27] = v26;

  return v25;
}

void specialized ConversationControlsManager.post(notice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_385();
  a13 = v29(0);
  a14 = v28;
  v30 = __swift_allocate_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_206();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v26(v30, *(v22 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator));
  OUTLINED_FUNCTION_23_0();
  if ((*((*MEMORY[0x1E69E7D40] & v31) + 0x4E8))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_394();
    (*(v32 + 136))(&a10);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_52_5();
}

uint64_t specialized ConversationControlsManager.post(notice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))();
  specialized ConversationControlsNoticeCoordinator.post(notice:)();
  if ((*((*MEMORY[0x1E69E7D40] & *a2) + 0x4E8))())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 136))(v10, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t specialized ConversationControlsManager.presentActivity(activity:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v77 = a2;
  v78 = a3;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
  v82[4] = &protocol witness table for TUConversationActivitySession;
  v82[0] = a1;
  v8 = one-time initialization token for conversationControls;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v82, aBlock);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v81 = v14;
    *v13 = 136315138;
    outlined init with copy of IDSLookupManager(aBlock, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v81);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Launching activity: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  v19 = [v9 activity];
  v20 = [v19 isSupported];

  if (v20)
  {
    outlined init with copy of IDSLookupManager(v82, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
    if (swift_dynamicCast())
    {
      v21 = *&v80[0];
      v22 = [*&v80[0] activity];
      v23 = [v22 isScreenSharingActivity];

      if ((v23 & 1) != 0 && [v21 isLocallyInitiated])
      {
        outlined init with copy of IDSLookupManager(v82, aBlock);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v81 = v27;
          *v26 = 136315138;
          outlined init with copy of IDSLookupManager(aBlock, v80);
          v28 = String.init<A>(describing:)();
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v81);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_1BBC58000, v24, v25, "Unsupported activity: %s, cannot open screenshare for host", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x1BFB23DF0](v27, -1, -1);
          MEMORY[0x1BFB23DF0](v26, -1, -1);

          return __swift_destroy_boxed_opaque_existential_1(v82);
        }

LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return __swift_destroy_boxed_opaque_existential_1(v82);
      }

      if (![*(a4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled])
      {
        goto LABEL_31;
      }

      v51 = MEMORY[0x1E69E7D40];
      v52 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x2A0);
      v52();
      v54 = v53;
      ObjectType = swift_getObjectType();
      LOBYTE(v54) = (*(v54 + 152))(ObjectType, v54);
      v56 = swift_unknownObjectRelease();
      if ((v54 & 1) == 0)
      {
        goto LABEL_31;
      }

      v57 = (*((*v51 & *a4) + 0x2C0))(v56);
      if (!v57)
      {
        goto LABEL_31;
      }

      v58 = v57;
      if ([v57 state] == 3)
      {

LABEL_31:
        v43 = [*(a4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
        outlined init with copy of IDSLookupManager(v82, v80);
        v68 = swift_allocObject();
        outlined init with take of TapInteractionHandler(v80, v68 + 16);
        v70 = v77;
        v69 = v78;
        *(v68 + 56) = v77;
        *(v68 + 64) = v69;
        aBlock[4] = partial apply for closure #1 in ConversationControlsManager.presentActivity(activity:completion:);
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_613;
        v71 = _Block_copy(aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v70);

        [v43 launchApplicationForActivitySession:v21 completionHandler:v71];
        _Block_release(v71);

        goto LABEL_32;
      }

      v52();
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (!v59)
      {

        swift_unknownObjectRelease();
        goto LABEL_31;
      }

      v60 = v59;
      v61 = [objc_opt_self() remoteMembersForCall_];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUJoinConversationRequest);
      v62 = TUJoinConversationRequest.__allocating_init(remoteMembers:)();
      v63 = [v60 uniqueProxyIdentifierUUID];
      v64 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v75 + 8))(v64, v76);
      [v62 setUUID_];

      v66 = [v21 activity];
      [v62 setActivity_];

      v67 = [v58 provider];
      [v62 setProvider_];

      v43 = [*(a4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
      [v43 joinConversationWithRequest:v62];

      swift_unknownObjectRelease();
    }

    else
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v43, v44))
      {

        goto LABEL_24;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v81 = v46;
      *v45 = 136315138;
      outlined init with copy of IDSLookupManager(aBlock, v80);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v81);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_1BBC58000, v43, v44, "Activity: %s, is not a valid activity session", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFB23DF0](v46, -1, -1);
      MEMORY[0x1BFB23DF0](v45, -1, -1);
    }

LABEL_32:

    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v32 = outlined bridged method (ob) of @objc TUConversationActivity.bundleIdentifier.getter([v9 activity]);
  if (v33)
  {
    v34 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x898))(v32);

    if ((v34 & 1) == 0)
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v81 = v38;
        *v37 = 136315138;
        outlined init with copy of IDSLookupManager(aBlock, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
        v39 = String.init<A>(describing:)();
        v41 = v40;
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v81);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1BBC58000, v35, v36, "Unsupported activity: %s, presenting App Store", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1BFB23DF0](v38, -1, -1);
        MEMORY[0x1BFB23DF0](v37, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      ConversationControlsManager.presentAppStore()();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t specialized ConversationControlsManager.presentActivity(activity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v77 = a3;
  v78 = a4;
  v76 = a2;
  v75 = type metadata accessor for UUID();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82[3] = a5;
  v82[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v82, aBlock);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v81 = v15;
    *v14 = 136315138;
    outlined init with copy of IDSLookupManager(aBlock, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v81);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BBC58000, v12, v13, "Launching activity: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  if ((*(a6 + 40))(a5, a6))
  {
    outlined init with copy of IDSLookupManager(v82, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
    if (swift_dynamicCast())
    {
      v20 = *&v80[0];
      v21 = [*&v80[0] activity];
      v22 = [v21 isScreenSharingActivity];

      if ((v22 & 1) != 0 && [v20 isLocallyInitiated])
      {
        outlined init with copy of IDSLookupManager(v82, aBlock);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v81 = v26;
          *v25 = 136315138;
          outlined init with copy of IDSLookupManager(aBlock, v80);
          v27 = String.init<A>(describing:)();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v81);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_1BBC58000, v23, v24, "Unsupported activity: %s, cannot open screenshare for host", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          MEMORY[0x1BFB23DF0](v26, -1, -1);
          MEMORY[0x1BFB23DF0](v25, -1, -1);

          return __swift_destroy_boxed_opaque_existential_1(v82);
        }

LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return __swift_destroy_boxed_opaque_existential_1(v82);
      }

      v50 = v78;
      if (![*(v78 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled])
      {
        goto LABEL_31;
      }

      v51 = MEMORY[0x1E69E7D40];
      v52 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x2A0);
      v52();
      v54 = v53;
      ObjectType = swift_getObjectType();
      LOBYTE(v54) = (*(v54 + 152))(ObjectType, v54);
      v56 = swift_unknownObjectRelease();
      if ((v54 & 1) == 0)
      {
        goto LABEL_31;
      }

      v57 = (*((*v51 & *v50) + 0x2C0))(v56);
      if (!v57)
      {
        goto LABEL_31;
      }

      v58 = v57;
      if ([v57 state] == 3)
      {

LABEL_31:
        v42 = [*(v50 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
        outlined init with copy of IDSLookupManager(v82, v80);
        v68 = swift_allocObject();
        outlined init with take of TapInteractionHandler(v80, v68 + 16);
        v70 = v76;
        v69 = v77;
        *(v68 + 56) = v76;
        *(v68 + 64) = v69;
        aBlock[4] = closure #1 in ConversationControlsManager.presentActivity(activity:completion:)partial apply;
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_660;
        v71 = _Block_copy(aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v70);

        [v42 launchApplicationForActivitySession:v20 completionHandler:v71];
        _Block_release(v71);

        goto LABEL_32;
      }

      v52();
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (!v59)
      {

        swift_unknownObjectRelease();
        goto LABEL_31;
      }

      v60 = v59;
      v61 = [objc_opt_self() remoteMembersForCall_];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUJoinConversationRequest);
      v62 = TUJoinConversationRequest.__allocating_init(remoteMembers:)();
      v63 = [v60 uniqueProxyIdentifierUUID];
      v64 = v73;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v74 + 8))(v64, v75);
      [v62 setUUID_];

      v66 = [v20 activity];
      [v62 setActivity_];

      v67 = [v58 provider];
      [v62 setProvider_];

      v42 = [*(v50 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
      [v42 joinConversationWithRequest:v62];

      swift_unknownObjectRelease();
    }

    else
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v42, v43))
      {

        goto LABEL_24;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v81 = v45;
      *v44 = 136315138;
      outlined init with copy of IDSLookupManager(aBlock, v80);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v81);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1BBC58000, v42, v43, "Activity: %s, is not a valid activity session", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1BFB23DF0](v45, -1, -1);
      MEMORY[0x1BFB23DF0](v44, -1, -1);
    }

LABEL_32:

    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v31 = (*(a6 + 32))(a5, a6);
  if (v32)
  {
    v33 = (*((*MEMORY[0x1E69E7D40] & *v78) + 0x898))(v31);

    if ((v33 & 1) == 0)
    {
      outlined init with copy of IDSLookupManager(v82, aBlock);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v81 = v37;
        *v36 = 136315138;
        outlined init with copy of IDSLookupManager(aBlock, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
        v38 = String.init<A>(describing:)();
        v40 = v39;
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v81);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1BBC58000, v34, v35, "Unsupported activity: %s, presenting App Store", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1BFB23DF0](v37, -1, -1);
        MEMORY[0x1BFB23DF0](v36, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      ConversationControlsManager.presentAppStore()();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t outlined assign with copy of ForegroundCollaborationState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForegroundCollaborationState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized CoalescingNoticeQueue.push(notice:)(uint64_t a1, uint64_t *a2)
{
  v50[3] = type metadata accessor for ReactionNotice(0);
  v50[4] = &protocol witness table for ReactionNotice;
  __swift_allocate_boxed_opaque_existential_1(v50);
  _s15ConversationKit11ParticipantVWOcTm_8();
  v3 = 0;
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *a2 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v3)
    {

      *a2 = v7;
      specialized BidirectionalCollection.last.getter(v7, &v44);
      if (v45)
      {
        outlined init with take of TapInteractionHandler(&v44, &v47);
        v12 = v48;
        v13 = v49;
        __swift_mutable_project_boxed_opaque_existential_1(&v47, v48);
        if ((*(v13 + 208))(v50, v12, v13))
        {
          if (one-time initialization token for conversationControls != -1)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        __swift_destroy_boxed_opaque_existential_1(&v47);
      }

      else
      {
        outlined destroy of CallControlsService?(&v44, &_s15ConversationKit6Notice_pSgMd);
      }

      outlined init with copy of IDSLookupManager(v50, &v47);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = *(*a2 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v28);
      v29 = __swift_mutable_project_boxed_opaque_existential_1(&v47, v48);
      MEMORY[0x1EEE9AC00](v29);
      v31 = &v42[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v32 + 16))(v31);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v31, a2);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      return __swift_destroy_boxed_opaque_existential_1(v50);
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(v6, &v47);
    v8 = v48;
    v9 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, v48);
    if ((*(v9 + 40))(v8, v9))
    {
      __swift_destroy_boxed_opaque_existential_1(&v47);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v47, &v44);
      v43[0] = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
        v7 = v43[0];
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v7 = v43[0];
      }

      *(v7 + 16) = v11 + 1;
      outlined init with take of TapInteractionHandler(&v44, v7 + 40 * v11 + 32);
    }

    v6 += 40;
    ++v3;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_15:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v50, &v44);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43[0] = v18;
    *v17 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    v19 = ReactionNotice.description.getter();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v44);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v43);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    swift_beginAccess();
    v23 = v48;
    v24 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, v48);
    v25 = (*(v24 + 120))(v23, v24);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v43);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1BBC58000, v15, v16, "Coalesced notice:%s into existingNotice:%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v18, -1, -1);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  specialized RangeReplaceableCollection<>.removeLast()(&v44);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(&v47, &v44);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v33 = *(*a2 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v33);
  v34 = v45;
  v35 = v46;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(&v44, v45);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v42[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v39 + 16))(v38);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v33, v38, a2, v34, v35);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  v40 = *a2;
  __swift_destroy_boxed_opaque_existential_1(&v47);
  *a2 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t specialized ConversationControlsManager.shouldShowCollaborationNotice(for:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Collaboration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15ConversationKit11ParticipantVWOcTm_8();
  v7 = v5[16];
  if (v7 == 2 || v7 == 3)
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
    return 0;
  }

  if (v5[*(v3 + 48)] == 1 && (v9 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2C0))(v6)) != 0)
  {
    v10 = v9;
    v11 = [v9 resolvedAudioVideoMode];

    _s15ConversationKit11ParticipantVWOhTm_10();
    if (v11 == 1)
    {
      return 0;
    }
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  return 1;
}

uint64_t specialized ConversationControlsManager.shouldShowCollaborationNotice(for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Collaboration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a3, v16);
  (*(a4 + 112))(a3, a4);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit13CollaborationVSgMd);
    goto LABEL_3;
  }

  v20 = outlined init with take of Collaboration();
  v21 = v13[16];
  if (v21 == 2 || v21 == 3)
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
    goto LABEL_7;
  }

  if (v13[*(v11 + 48)] != 1 || (v23 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2C0))(v20)) == 0)
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
    goto LABEL_3;
  }

  v24 = v23;
  v25 = [v23 resolvedAudioVideoMode];

  _s15ConversationKit11ParticipantVWOhTm_10();
  if (v25 == 1)
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

LABEL_3:
  v19 = 1;
LABEL_8:
  (*(v14 + 8))(v18, a3);
  return v19;
}

void specialized ConversationControlsManager.updatePTTChannelState(call:)(void *a1)
{
  v2 = type metadata accessor for PushToTalkChannelState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.conversationControls);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Update PTT Channel state for call called", v9, 2u);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  v10 = a1;
  if (![v10 isPTT])
  {

    (*(v3 + 104))(v5, *MEMORY[0x1E6995F20], v2);
    ConversationControlsManager.pttChannelState.setter();
    return;
  }

  if (![v10 serviceStatus])
  {
    v11 = [v10 provider];
    v12 = [v11 audioSessionID];

    if (v12)
    {
      v13 = [v10 status];
      if (v13)
      {
        if (v13 == 1)
        {
          if ([v10 isReceivingTransmission] & 1) != 0 && (objc_msgSend(v10, sel_isSendingTransmission))
          {
            v14 = MEMORY[0x1E6995F30];
          }

          else if ([v10 isReceivingTransmission])
          {
            v14 = MEMORY[0x1E6995F40];
          }

          else
          {
            if (([v10 isSendingTransmission] & 1) == 0)
            {
LABEL_23:
              [v10 transmissionMode];
              ConversationControlsManager.pttChannelTransmissionMode.setter();
              goto LABEL_24;
            }

            v14 = MEMORY[0x1E6995F28];
          }

LABEL_22:
          (*(v3 + 104))(v5, *v14, v2);
          ConversationControlsManager.pttChannelState.setter();
          goto LABEL_23;
        }

        if (v13 != 2)
        {
          v14 = MEMORY[0x1E6995F20];
          goto LABEL_22;
        }
      }

      v14 = MEMORY[0x1E6995F38];
      goto LABEL_22;
    }
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E6995F20], v2);
  ConversationControlsManager.pttChannelState.setter();
LABEL_24:
}

uint64_t specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v349 = a8;
  v350 = a6;
  LODWORD(v352) = a7;
  HIDWORD(v339) = a5;
  v363 = a1;
  ObjectType = swift_getObjectType();
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  MEMORY[0x1EEE9AC00](v369);
  v372 = (&v335 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v368 = &v335 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v367 = &v335 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v371 = &v335 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v342 = &v335 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v336 = &v335 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v335 = &v335 - v25;
  v366 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v366);
  v356 = (&v335 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  *&v365 = &v335 - v28;
  v370 = type metadata accessor for UUID();
  v348 = *(v370 - 8);
  MEMORY[0x1EEE9AC00](v370);
  v360 = &v335 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v359 = &v335 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v358 = &v335 - v33;
  v347 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v347);
  v357 = &v335 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for Participant(0);
  v341 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v364 = &v335 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v354 = &v335 - v37;
  v353 = type metadata accessor for Date();
  v351 = *(v353 - 8);
  MEMORY[0x1EEE9AC00](v353);
  v355 = &v335 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v346 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v345 = &v335 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v40);
  v344 = &v335 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v42 - 8);
  v361 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  v393 = type metadata accessor for CallCenter();
  v394 = &protocol witness table for CallCenter;
  v392[0] = a2;
  v391[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  v391[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  v391[0] = swift_allocObject();
  outlined init with take of DefaultParticipantMediaProviderCreator(a3, v391[0] + 16);
  v390[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  v390[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  v390[0] = swift_allocObject();
  outlined init with take of DefaultParticipantCaptionsProviderCreator(a4, v390[0] + 16);
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v343 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  *&v386 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v346)[13](v345, *MEMORY[0x1E69E8090], v362);
  *(v343 + a10) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v43 = v370;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  v44 = a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes;
  v395 = 1;
  *(v44 + 64) = 0u;
  *(v44 + 80) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 96) = 1;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v45 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v46 = MEMORY[0x1E69E7CC0];
  *(a10 + v45) = Dictionary.init(dictionaryLiteral:)();
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  v47 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForRemoteScreenShareAttributes;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd);
  __swift_storeEnumTagSinglePayload(a10 + v47, 1, 1, v48);
  v49 = a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate;
  *(v49 + 48) = 0;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *v49 = 0u;
  v50 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v51 = v353;
  *(a10 + v50) = Dictionary.init(dictionaryLiteral:)();
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v344 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = 1;
  v52 = a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v52 = 0;
  *(v52 + 8) = 1;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v53 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a10 + v53) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  v54 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  *v54 = 0;
  v54[1] = 0;
  v55 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  *v55 = 0;
  v55[1] = 0;
  v56 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  *v56 = 0;
  v56[1] = 0;
  v57 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  *v57 = 0;
  v57[1] = 0;
  v58 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  *v58 = 0;
  v58[1] = 0;
  v59 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  *v59 = 0;
  v59[1] = 0;
  v60 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  *v60 = 0;
  v60[1] = 0;
  v61 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  *v61 = 0;
  v61[1] = 0;
  v62 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  *v62 = 0;
  v62[1] = 0;
  v63 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  *v63 = 0;
  v63[1] = 0;
  v64 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  *v64 = 0;
  v64[1] = 0;
  v65 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  *v65 = 0;
  v65[1] = 0;
  v66 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  *v66 = 0;
  v66[1] = 0;
  v67 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  *v67 = 0;
  v67[1] = 0;
  v68 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  *v68 = 0;
  v68[1] = 0;
  v69 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  *v69 = 0;
  v69[1] = 0;
  v70 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  *v70 = 0;
  v70[1] = 0;
  v71 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  *v71 = 0;
  v71[1] = 0;
  v72 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  *v72 = 0;
  v72[1] = 0;
  v73 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  *v73 = 0;
  v73[1] = 0;
  v74 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  *v74 = 0;
  v74[1] = 0;
  v75 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  *v75 = 0;
  v75[1] = 0;
  v76 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  *v76 = 0;
  v76[1] = 0;
  v77 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  *v77 = 0;
  v77[1] = 0;
  v78 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  *v78 = 0;
  v78[1] = 0;
  v79 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  *v79 = 0;
  v79[1] = 0;
  v80 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  *v80 = 0;
  v80[1] = 0;
  v81 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  *v81 = 0;
  v81[1] = 0;
  v82 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  *v82 = 0;
  v82[1] = 0;
  v83 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  *v83 = 0;
  v83[1] = 0;
  v84 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  *v84 = 0;
  v84[1] = 0;
  v85 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  *v85 = 0;
  v85[1] = 0;
  v86 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  *v86 = 0;
  v86[1] = 0;
  v87 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  *v87 = 0;
  v87[1] = 0;
  v88 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  *v88 = 0;
  v88[1] = 0;
  v89 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  *v89 = 0;
  v89[1] = 0;
  v90 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  *v90 = 0;
  v90[1] = 0;
  v91 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  *v91 = 0;
  v91[1] = 0;
  v92 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  *v92 = 0;
  v92[1] = 0;
  v93 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  *v93 = 0;
  v93[1] = 0;
  v94 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  *v94 = 0;
  v94[1] = 0;
  v95 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  *v95 = 0;
  v95[1] = 0;
  v96 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  *v96 = 0;
  v96[1] = 0;
  v97 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  *v97 = 0;
  v97[1] = 0;
  v98 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  *v98 = 0;
  v98[1] = 0;
  v99 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  *v99 = 0;
  v99[1] = 0;
  v100 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  *v100 = 0;
  v100[1] = 0;
  v101 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  *v101 = 0;
  v101[1] = 0;
  v102 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  *v102 = 0;
  v102[1] = 0;
  v103 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  *v103 = 0;
  v103[1] = 0;
  v104 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  *v104 = 0;
  v104[1] = 0;
  v105 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  *v105 = 0;
  v105[1] = 0;
  v106 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  *v106 = 0;
  v106[1] = 0;
  v107 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  *v107 = 0;
  v107[1] = 0;
  v108 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  *v108 = 0;
  v108[1] = 0;
  v109 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  *v109 = 0;
  v109[1] = 0;
  v110 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  *v110 = 0;
  v110[1] = 0;
  v111 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  *v111 = 0;
  v111[1] = 0;
  v112 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  *v112 = 0;
  v112[1] = 0;
  v113 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  *v113 = 0;
  v113[1] = 0;
  v114 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  *v114 = 0;
  v114[1] = 0;
  v115 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  *v115 = 0;
  v115[1] = 0;
  v116 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  *v116 = 0;
  v116[1] = 0;
  v117 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  *v117 = 0;
  v117[1] = 0;
  v118 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  *v118 = 0;
  v118[1] = 0;
  v119 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  *v119 = 0;
  v119[1] = 0;
  v120 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  *v120 = 0;
  v120[1] = 0;
  v121 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  *v121 = 0;
  v121[1] = 0;
  v122 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  *v122 = 0;
  v122[1] = 0;
  v123 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  *v123 = 0;
  v123[1] = 0;
  v124 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  *v124 = 0;
  v124[1] = 0;
  v125 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  *v125 = 0;
  v125[1] = 0;
  v126 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  *v126 = 0;
  v126[1] = 0;
  v127 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  *v127 = 0;
  v127[1] = 0;
  v128 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  *v128 = 0;
  v128[1] = 0;
  v129 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  *v129 = 0;
  v129[1] = 0;
  v130 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  *v130 = 0;
  v130[1] = 0;
  v131 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  *v131 = 0;
  v131[1] = 0;
  v132 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  *v132 = 0;
  v132[1] = 0;
  v133 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *v133 = 0;
  v133[1] = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  __swift_storeEnumTagSinglePayload(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID, 1, 1, v43);
  __swift_storeEnumTagSinglePayload(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID, 1, 1, v43);
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v46;
  v134 = MEMORY[0x1E69E7CD0];
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v134;
  v135 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  *(a10 + v135) = Dictionary.init(dictionaryLiteral:)();
  __swift_storeEnumTagSinglePayload(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio, 1, 1, v43);
  v136 = (a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  *v136 = 0;
  v136[1] = 0;
  v137 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a10;
  *(v137 + 4) = 0;
  *v137 = 0u;
  *(v137 + 1) = 0u;
  v338 = v137;
  v138 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  v139 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  *(a10 + v138) = CPCarPlayObserver.init(queue:)();
  v140 = v355;
  Date.init()();
  v141 = [v363 remoteParticipantHandles];
  v142 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  v346 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  v143 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v144 = specialized Set.count.getter(v143);

  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v144 == 1;
  v362 = a10;
  *(a10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v352;
  (*(v351 + 16))(v357, v140, v51);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v347 = v142;
    v145 = static Defaults.shared;
    LODWORD(v345) = (*(*static Defaults.shared + 592))();
    v146 = (*(*v145 + 168))();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v147 = static Colors.ParticipantGradients.default;
    __swift_storeEnumTagSinglePayload(v365, 1, 1, v366);
    v148 = v393;
    v149 = v394;
    __swift_project_boxed_opaque_existential_1(v392, v393);
    v150 = v149[13];

    v150(&v386, v363, v361, v148, v149);
    if (v388)
    {
      __swift_project_boxed_opaque_existential_1(&v386, v388);
      v151 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v386);
    }

    else
    {
      outlined destroy of CallControlsService?(&v386, &_s15ConversationKit0A0_pSgMd);
      v151 = 0;
    }

    v152 = v370;
    v153 = type metadata accessor for ParticipantContactDetailsCache();
    v154 = v153;
    if (one-time initialization token for queue != -1)
    {
      v153 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v153);
    v155 = v363;
    *(&v335 - 4) = v154;
    *(&v335 - 3) = v155;
    *(&v335 - 2) = v361;
    v343 = v154;
    OS_dispatch_queue.sync<A>(execute:)();
    v337 = 0;
    v156 = v386;
    v157 = v373;
    v158 = v364;
    v159 = &v364[*(v373 + 28)];
    *(v159 + 4) = 0;
    *v159 = 0u;
    *(v159 + 1) = 0u;
    v160 = &v158[v157[9]];
    v158[v157[10]] = 0;
    *&v158[v157[11]] = MEMORY[0x1E69E7CD0];
    *&v158[v157[12]] = 0;
    outlined init with take of Collaboration();
    v161 = &v158[v157[5]];
    v162 = v358;
    v357 = *(v348 + 32);
    v358 = (v348 + 32);
    (v357)(v161, v162, v152);
    v163 = &v158[v157[6]];
    *v163 = v345 & 1;
    *(v163 + 1) = 257;
    v163[3] = 0;
    v163[4] = v146 & 1;
    outlined consume of Participant.RemoteIdentifiers?(*v159);
    *(v159 + 4) = 0;
    *v159 = 0u;
    *(v159 + 1) = 0u;
    *&v158[v157[8]] = v147;
    *v160 = 0;
    *(v160 + 1) = 0;
    v158[v157[15]] = v151;
    v158[v157[13]] = 0;
    v164 = v365;
    v165 = v366;
    if (__swift_getEnumTagSinglePayload(v365, 1, v366) == 1)
    {
      v166 = v353;
      __swift_storeEnumTagSinglePayload(v335, 1, 1, v353);
      __swift_storeEnumTagSinglePayload(v336, 1, 1, v166);
      v167 = v356;
      __swift_storeEnumTagSinglePayload(v356, 1, 1, v166);
      __swift_storeEnumTagSinglePayload(&v167[*(v165 + 20)], 1, 1, v166);
      outlined assign with take of RecentsCallItem?();
      outlined assign with take of RecentsCallItem?();
      v167[*(v165 + 24)] = 0;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v164, 1, v165);
      v169 = &selRef_isRecordingAllowed;
      v142 = v346;
      if (EnumTagSinglePayload != 1)
      {
        outlined destroy of CallControlsService?(v164, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      v167 = v356;
      outlined init with take of Collaboration();
      v169 = &selRef_isRecordingAllowed;
      v142 = v346;
    }

    v170 = v373;
    v171 = v364;
    outlined init with take of Collaboration();
    *&v171[*(v170 + 64)] = v156;
    outlined init with take of Collaboration();
    outlined init with take of Collaboration();
    v172 = [v363 v169[86]];
    v173 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v174 = specialized Set.count.getter(v173);
    if (v174)
    {
      break;
    }

    v200 = MEMORY[0x1E69E7CC0];
LABEL_43:
    MEMORY[0x1EEE9AC00](v199);
    v201 = v355;
    *(&v335 - 4) = v355;
    *(&v335 - 3) = v392;
    v202 = v363;
    v203 = v361;
    *(&v335 - 2) = v363;
    *(&v335 - 1) = v203;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:), (&v335 - 6), v200);
    v205 = v204;

    *(v362 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v205;
    v206 = v393;
    v207 = v394;
    __swift_project_boxed_opaque_existential_1(v392, v393);
    (v207[13])(&v386, v202, v203, v206, v207);
    v208 = v388;
    if (v388)
    {
      v209 = v389;
      __swift_project_boxed_opaque_existential_1(&v386, v388);
      v210 = (v209[19])(v208, v209);
      MEMORY[0x1EEE9AC00](v210);
      *(&v335 - 4) = v201;
      *(&v335 - 3) = v392;
      *(&v335 - 2) = v202;
      *(&v335 - 1) = v203;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #3 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:), (&v335 - 6), v210);
      v212 = v211;

      __swift_destroy_boxed_opaque_existential_1(&v386);
    }

    else
    {
      outlined destroy of CallControlsService?(&v386, &_s15ConversationKit0A0_pSgMd);
      v212 = MEMORY[0x1E69E7CC0];
    }

    v213 = v362;
    *(v362 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v212;
    outlined init with copy of IDSLookupManager(v392, v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v214 = (v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v214 = v202;
    v214[1] = v203;
    outlined init with copy of IDSLookupManager(v391, v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of IDSLookupManager(v390, v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v339) & 1;
    outlined init with copy of IDSLookupManager(v392, &v386);
    v215 = v344;
    swift_beginAccess();
    v216 = *(v213 + v215);
    v354 = v202;
    v217 = _s15ConversationKit17BroadcastingStateO4call0E6Center17deviceOrientation28shouldMaintainCameraPositionAcA4Call_p_AA0mF8Provider_pSo09CNKDeviceH0VSbtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v354, &v386, v216, 0);
    v218 = v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v218 = v217;
    *(v218 + 8) = v219;
    *(v218 + 16) = v220;
    *(v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = v349;
    v221 = (v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v221 = a9;
    v221[1] = &protocol witness table for Defaults;
    outlined init with copy of IDSLookupManager(v392, &v386);
    v222 = objc_opt_self();

    *&v365 = v222;
    v223 = [v222 defaultCenter];
    v224 = objc_allocWithZone(type metadata accessor for VideoMessageController());
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v213 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v225;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v347 = a9;
    if (v384)
    {
      outlined init with take of TapInteractionHandler(&v382, &v386);
    }

    else
    {
      v388 = &type metadata for SingleDisplaySharingSession;
      v389 = &protocol witness table for SingleDisplaySharingSession;
      v226 = swift_allocObject();
      *&v386 = v226;
      v226[1] = 0u;
      v226[2] = 0u;
      v226[3] = 0u;
      v226[4] = 0u;
      v226[5] = 0u;
      v226[6] = 0u;
    }

    LODWORD(v142) = v352;
    swift_beginAccess();
    outlined assign with take of RecentsCallItem?();
    swift_endAccess();
    swift_beginAccess();
    v227 = 0;
    if (*(v218 + 16) < 0 && v142 == 1)
    {
      v228 = v393;
      v229 = v394;
      __swift_project_boxed_opaque_existential_1(v392, v393);
      v230 = (v229[10])(v228, v229);
      v227 = [v230 isPreviewRunning];
    }

    v231 = v362;
    *(v362 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v227;
    v381.receiver = v231;
    v381.super_class = ObjectType;
    v232 = objc_msgSendSuper2(&v381, sel_init);
    v233 = *&v232[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type ConversationController and conformance ConversationController, type metadata accessor for ConversationController);
    v234 = v232;
    v235 = v233;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    v236 = v393;
    v237 = v394;
    __swift_project_boxed_opaque_existential_1(v392, v393);
    (v237[13])(&v382, v354, v203, v236, v237);
    if (v384)
    {
      outlined init with take of TapInteractionHandler(&v382, &v386);
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v386);
    }

    else
    {
      outlined destroy of CallControlsService?(&v382, &_s15ConversationKit0A0_pSgMd);
    }

    v238 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v239 = &v234[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    swift_beginAccess();
    v240 = *v239;
    *v239 = partial apply for closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:);
    v239[1] = v238;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v240);

    if ((v142 - 1) <= 1)
    {
      v241 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(&v234[v241], &v386);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd);
      if (swift_dynamicCast())
      {
        v380 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v379, &v378);
        swift_unknownObjectWeakAssign();
        v388 = &type metadata for DefaultParticipantMediaProviderCreator;
        v389 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        *&v386 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v378, v386 + 16);
        swift_beginAccess();
        __swift_destroy_boxed_opaque_existential_1(&v234[v241]);
        outlined init with take of TapInteractionHandler(&v386, &v234[v241]);
        swift_endAccess();
      }

      else
      {
        v379 = 0;
        v380 = 1;
        outlined destroy of CallControlsService?(&v379, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd);
      }
    }

    v242 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(&v234[v242], &v386);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v378, v377);
      v377[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v388 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v389 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      *&v386 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v377, v386 + 16);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(&v234[v242]);
      outlined init with take of TapInteractionHandler(&v386, &v234[v242]);
      swift_endAccess();
    }

    else
    {
      v378 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v378, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v243 = &v234[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    swift_beginAccess();
    v244 = *v243;
    v245 = *(v243 + 8);
    v366 = v243;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(v244, v245, *(v243 + 16), 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v386, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v246 = &v234[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v247 = *(v246 + 24);
    v248 = *(v246 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v246, v247);
    v249 = *(v248 + 56);
    v250 = v234;
    v249(v232, &protocol witness table for ConversationController, v247, v248);
    swift_endAccess();
    v251 = *(**&v250[OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker] + 176);
    v169 = v250;

    v251(v232, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    v252 = [v354 screenShareAttributes];
    ConversationController.updateScreenSharingSession(with:)(v252);

    LOBYTE(v246) = ConversationController.updateIsUsingIPadExternalCamera()();
    v253 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    *(v169 + v253) = v246 & 1;
    v167 = [v365 defaultCenter];
    v175 = &off_1E7FE9000;
    [v167 addObserver:v169 selector:sel_handleLocalVideoPreviewFirstFrameArrived_ name:*MEMORY[0x1E69D90D8] object:0];

    [v167 addObserver:v169 selector:sel_handleLocalVideoAttributesChanged_ name:*MEMORY[0x1E69D90C8] object:0];
    [v167 addObserver:v169 selector:sel_handleSendingVideoChanged_ name:*MEMORY[0x1E69D8E98] object:0];
    [v167 addObserver:v169 selector:sel_handleAudioUplinkChange_ name:*MEMORY[0x1E69D8EB0] object:0];
    [v167 addObserver:v169 selector:sel_handleCallSharePlayCapabilityDidChange_ name:*MEMORY[0x1E69D8EA0] object:0];
    [v167 addObserver:v169 selector:sel_handleAnyRemoteSupportsRequestToScreenShareDidChange_ name:*MEMORY[0x1E69D8DE0] object:0];
    if (v142 == 1)
    {
      [v167 addObserver:v169 selector:sel_handleCameraZoomBecameAvailable_ name:*MEMORY[0x1E69D90F0] object:0];
      [v167 addObserver:v169 selector:sel_handleCameraZoomBecameUnavailable_ name:*MEMORY[0x1E69D90F8] object:0];
      [v167 addObserver:v169 selector:sel_handlelocalCameraUIDDidChange_ name:*MEMORY[0x1E69D9078] object:0];
      [v167 addObserver:v169 selector:sel_handleCameraCinematicFramingAvailabilityChanged_ name:*MEMORY[0x1E69D9058] object:0];
      [v167 addObserver:v169 selector:sel_handleCameraCinematicFramingEnabledChanged_ name:*MEMORY[0x1E69D9060] object:0];
      [v167 addObserver:v169 selector:sel_handleCameraReactionEffectsEnabledChanged_ name:*MEMORY[0x1E69D90D0] object:0];
      [v167 addObserver:v169 selector:sel_handleCameraStudioLightEnabledChanged_ name:*MEMORY[0x1E69D90E0] object:0];
      [v167 addObserver:v169 selector:sel_handleCameraBlurEnabledChanged_ name:*MEMORY[0x1E69D9050] object:0];
      [v167 addObserver:v169 selector:sel_handleCameraListDidChange_ name:*MEMORY[0x1E69D9098] object:0];
      [v167 addObserver:v169 selector:sel_handleSystemPreferredCameraChanged_ name:*MEMORY[0x1E69D90E8] object:0];
    }

    [v167 addObserver:v169 selector:sel_handleScreenSharingDidChange_ name:*MEMORY[0x1E69D8EA8] object:0];
    [v167 addObserver:v169 selector:sel_handleVideoCallStatusDidChange_ name:*MEMORY[0x1E69D8E58] object:0];
    [v167 addObserver:v169 selector:sel_handleCallStatusDidChange_ name:*MEMORY[0x1E69D8E08] object:0];
    [v167 addObserver:v169 selector:sel_handleCallConnected_ name:*MEMORY[0x1E69D8DF0] object:0];
    [v167 addObserver:v169 selector:sel_handleCallStartedConnecting_ name:*MEMORY[0x1E69D8E00] object:0];
    if (!v142)
    {
      [v167 addObserver:v169 selector:sel_handleBluetoothAudioFormatChanged_ name:*MEMORY[0x1E69D8DE8] object:0];
    }

    [v167 addObserver:v169 selector:sel_handleCallConversationChanged_ name:*MEMORY[0x1E69D8E68] object:0];
    [v167 addObserver:v169 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9088] object:0];
    [v167 addObserver:v169 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9080] object:0];
    [v167 addObserver:v169 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9090] object:0];
    if (Features.nudityDetectionEnabled.getter())
    {
      v254 = MEMORY[0x1BFB209B0](0xD000000000000042, 0x80000001BC509370);
      [v167 addObserver:v169 selector:sel_handleLocalSensitiveContentAnalysisChanged_ name:v254 object:0];
    }

    [v167 addObserver:v169 selector:sel_handleHoldMusicDidChange_ name:*MEMORY[0x1E69D8E18] object:0];
    [v167 addObserver:v169 selector:sel_handleScreenSharingAttributesChanged_ name:*MEMORY[0x1E69D8ED8] object:0];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_75;
    }

    v176 = sel_handleWindowDidFinishResize_;
    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_104;
    }

LABEL_74:
    [v167 *(v175 + 3712)];
    v255 = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC509350);
    [v167 *(v175 + 3712)];

LABEL_75:
    LODWORD(v365) = v142;
    [v167 *(v175 + 3712)];
    [v167 *(v175 + 3712)];
    [v167 *(v175 + 3712)];
    [v167 *(v175 + 3712)];
    [v167 *(v175 + 3712)];
    [v167 *(v175 + 3712)];
    [v167 *(v175 + 3712)];
    v256 = *MEMORY[0x1E69D8D68];
    v257 = *(v175 + 3712);
    v346 = v167;
    [v167 v257];
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v258 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v259 = swift_allocObject();
    *(v259 + 16) = xmmword_1BC4BB990;
    swift_beginAccess();
    v352 = v169;
    v260 = v342;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    specialized >> prefix<A>(_:)(v260, v261, v262, v263, v264, v265, v266, v267, v335, v336, v337, v338, v339, ObjectType, v341, v342, v343, v344);
    v269 = v268;
    v271 = v270;
    v272 = v260;
    v273 = v352;
    outlined destroy of CallControlsService?(v272, &_s10Foundation4UUIDVSgMd);
    v274 = MEMORY[0x1E69E6158];
    *(v259 + 56) = MEMORY[0x1E69E6158];
    v275 = lazy protocol witness table accessor for type String and conformance String();
    *(v259 + 64) = v275;
    *(v259 + 32) = v269;
    *(v259 + 40) = v271;
    v276 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    *&v386 = *(v273 + v276);
    type metadata accessor for TUConversationState(0);
    v277 = String.init<A>(reflecting:)();
    *(v259 + 96) = v274;
    *(v259 + 104) = v275;
    *(v259 + 72) = v277;
    *(v259 + 80) = v278;
    v279 = *(v366 + 16);
    v386 = *v366;
    v387 = v279;
    v280 = String.init<A>(reflecting:)();
    *(v259 + 136) = v274;
    *(v259 + 144) = v275;
    *(v259 + 112) = v280;
    *(v259 + 120) = v281;
    LOBYTE(v386) = v365;
    v282 = String.init<A>(reflecting:)();
    *(v259 + 176) = v274;
    *(v259 + 184) = v275;
    v344 = v275;
    *(v259 + 152) = v282;
    *(v259 + 160) = v283;
    static os_log_type_t.default.getter();
    v345 = v258;
    os_log(_:dso:log:type:_:)();

    v284 = swift_allocObject();
    v365 = xmmword_1BC4BA940;
    v343 = v284;
    *(v284 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v285 = (*(v341 + 80) + 32) & ~*(v341 + 80);
    v366 = *(v341 + 72);
    v286 = swift_allocObject();
    *(v286 + 16) = v365;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_8();
    swift_beginAccess();
    *&v386 = v286;

    specialized Array.append<A>(contentsOf:)(v287);
    v288 = v386;
    v289 = *(v386 + 16);
    if (!v289)
    {

      v293 = MEMORY[0x1E69E7CC0];
LABEL_92:
      *&v386 = v293;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v323 = BidirectionalCollection<>.joined(separator:)();
      v325 = v324;

      *&v386 = v323;
      *(&v386 + 1) = v325;
      v326 = MEMORY[0x1E69E6158];
      v327 = String.init<A>(reflecting:)();
      v329 = v343;
      v328 = v344;
      v343[7] = v326;
      v329[8] = v328;
      v329[4] = v327;
      v329[5] = v330;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      ConversationController.fetchExistingScreenSharingAttributes()();
      if (*(v273 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) == 1)
      {
        v331 = v393;
        v332 = v394;
        __swift_project_boxed_opaque_existential_1(v392, v393);
        v333 = (v332[10])(v331, v332);
        [v333 startPreview];

        outlined destroy of CallControlsService?(v350, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
      }

      else
      {
        outlined destroy of CallControlsService?(v350, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
      }

      v334 = v355;
      __swift_destroy_boxed_opaque_existential_1(v390);
      __swift_destroy_boxed_opaque_existential_1(v391);
      (*(v351 + 8))(v334, v353);
      __swift_destroy_boxed_opaque_existential_1(v392);
      return v273;
    }

    v376 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v290 = 0;
    v291 = *(v288 + 2);
    v364 = v288;
    *&v365 = v291;
    v292 = &v288[v285];
    v293 = v376;
    v294 = (v348 + 16);
    v356 = (v348 + 8);
    v362 = v348 + 16;
    v363 = v289;
    v142 = &_s10Foundation4UUIDVSgMR;
    while (v365 != v290)
    {
      if (v290 >= *(v288 + 2))
      {
        goto LABEL_98;
      }

      v295 = v369;
      _s15ConversationKit11ParticipantVWOcTm_8();
      v296 = v372;
      *v372 = v290;
      v297 = v296 + *(v295 + 48);
      outlined init with take of Collaboration();
      *&v386 = v290;
      v374 = dispatch thunk of CustomStringConvertible.description.getter();
      v375 = v298;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v299 = *v294;
      v301 = v370;
      v300 = v371;
      (*v294)(v371, &v297[*(v373 + 20)], v370);
      __swift_storeEnumTagSinglePayload(v300, 0, 1, v301);
      v302 = v367;
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      if (__swift_getEnumTagSinglePayload(v302, 1, v301) == 1)
      {
        outlined destroy of CallControlsService?(v302, &_s10Foundation4UUIDVSgMd);
        v303 = 0xE300000000000000;
        v304 = 7104878;
      }

      else
      {
        v361 = v293;
        v305 = v359;
        (v357)(v359, v302, v301);
        v299(v360, v305, v301);
        v304 = String.init<A>(reflecting:)();
        v306 = v301;
        v303 = v307;
        v308 = v305;
        v293 = v361;
        (*v356)(v308, v306);
      }

      outlined destroy of CallControlsService?(v371, &_s10Foundation4UUIDVSgMd);
      MEMORY[0x1BFB20B10](v304, v303);

      MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
      v309 = &v297[*(v373 + 28)];
      v310 = *v309;
      if (*v309)
      {
        v312 = *(v309 + 3);
        v311 = *(v309 + 4);
        v313 = *(v309 + 4);
        v314 = *(v309 + 1);
        *&v386 = v310;
        *(&v386 + 1) = v314;
        v387 = v313 & 1;
        v388 = v312;
        v389 = v311;

        v315 = v310;
        v316 = String.init<A>(reflecting:)();
        v318 = v317;
      }

      else
      {
        v318 = 0xE300000000000000;
        v316 = 7104878;
      }

      MEMORY[0x1BFB20B10](v316, v318);

      v319 = v374;
      v320 = v375;
      outlined destroy of CallControlsService?(v372, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
      v376 = v293;
      v321 = *(v293 + 16);
      if (v321 >= *(v293 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v293 = v376;
      }

      *(v293 + 16) = v321 + 1;
      v322 = v293 + 16 * v321;
      *(v322 + 32) = v319;
      *(v322 + 40) = v320;
      ++v290;
      v292 += v366;
      v288 = v364;
      v294 = v362;
      if (v363 == v290)
      {

        v273 = v352;
        goto LABEL_92;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
  }

  v175 = v174;
  v385 = MEMORY[0x1E69E7CC0];
  v176 = &v385;
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v382 = specialized Set.startIndex.getter(v173);
  *(&v382 + 1) = v177;
  v383 = v178 & 1;
  if (v175 < 0)
  {
    __break(1u);
LABEL_104:
    swift_once();
    goto LABEL_74;
  }

  v179 = 0;
  v366 = v173 & 0xC000000000000001;
  if (v173 < 0)
  {
    v180 = v173;
  }

  else
  {
    v180 = v173 & 0xFFFFFFFFFFFFFF8;
  }

  v364 = (v173 + 56);
  *&v365 = v180;
  v356 = (v173 + 64);
  while (1)
  {
    v181 = __OFADD__(v179, 1);
    v179 = (v179 + 1);
    if (v181)
    {
      __break(1u);
      goto LABEL_97;
    }

    v182 = v382;
    v183 = v383;
    specialized Set.subscript.getter(v382, SDWORD2(v382), v383, v173);
    v142 = v184;
    v185 = TUNormalizedHandleForTUHandle();
    if (v185)
    {
      v186 = v185;

      v142 = v186;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v366)
    {
      break;
    }

    if (v183)
    {
      goto LABEL_106;
    }

    if ((v182 & 0x8000000000000000) != 0)
    {
      goto LABEL_99;
    }

    v188 = 1 << *(v173 + 32);
    if (v182 >= v188)
    {
      goto LABEL_99;
    }

    v189 = v182 >> 6;
    v190 = *&v364[8 * (v182 >> 6)];
    if (((v190 >> v182) & 1) == 0)
    {
      goto LABEL_100;
    }

    if (*(v173 + 36) != DWORD2(v182))
    {
      goto LABEL_101;
    }

    v191 = v190 & (-2 << (v182 & 0x3F));
    if (v191)
    {
      v188 = __clz(__rbit64(v191)) | v182 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v193 = v189 << 6;
      v194 = v189 + 1;
      v195 = &v356[v189];
      while (v194 < (v188 + 63) >> 6)
      {
        v197 = *v195++;
        v196 = v197;
        v193 += 64;
        ++v194;
        if (v197)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v182, *(&v182 + 1), 0);
          v188 = __clz(__rbit64(v196)) + v193;
          goto LABEL_39;
        }
      }

      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v182, *(&v182 + 1), 0);
    }

LABEL_39:
    v198 = *(v173 + 36);
    *&v382 = v188;
    *(&v382 + 1) = v198;
    v383 = 0;
LABEL_40:
    if (v179 == v175)
    {

      v199 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v382, *(&v382 + 1), v383);
      v200 = v385;
      goto LABEL_43;
    }
  }

  if (v183)
  {
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
    v192 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v192(&v386, 0);
    goto LABEL_40;
  }

  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

void *specialized ConversationControlsManager.__allocating_init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(void *a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a5;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for ConversationControlsManager(0));
  (*(v15 + 16))(v17, a2, a9);
  v19 = specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(a1, v17, a3, a10, a4, v22, v18, a9, a11);
  (*(v15 + 8))(a2, a9);
  return v19;
}

uint64_t partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ConversationControlsManager.updateForegroundCollaborationState()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #2 in ConversationControlsManager.secondaryPillButtonTapped(completion:)(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return v2(1);
    }
  }

  return result;
}

void partial apply for closure #1 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)()
{
  v1 = type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v3 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + v5);
  v7 = v0[4];

  closure #1 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(v3, v4, v7, v0 + v2, v6);
}

uint64_t partial apply for closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(uint64_t a1)
{
  v3 = type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_9_0(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();

  return closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(a1, v14, v13, v7, v8, v9, v1 + v5, v10);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.acceptScreenShareRequestTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.acceptScreenShareRequestTapped(button:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.stopLocalScreenSharingTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.stopLocalScreenSharingTapped(button:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.cancelScreenShareRequestTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.cancelScreenShareRequestTapped(button:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(v5, v6, v7, v0, v8);
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  OUTLINED_FUNCTION_369();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(v5, v6, v7, v0, v8);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.rejectCallButtonTapped()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.rejectCallButtonTapped()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.acceptPodcastRecording()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in ConversationControlsManager.acceptPodcastRecording()(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.declinePodcastRecording()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.declinePodcastRecording()(v3, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for ControlsHUDUpdate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 41);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlsHUDUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for ConversationControlsManager()
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<TURoute?>, &_sSo7TURouteCSgMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<TUCallBluetoothAudioFormat?>, &_sSo26TUCallBluetoothAudioFormatVSgMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<ControlsActionState>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for Published<PushToTalkChannelState>, MEMORY[0x1E6995F48], MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for Published<TUCallTransmissionMode>, type metadata accessor for TUCallTransmissionMode, MEMORY[0x1E695C070]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<ForegroundApp?>, &_s15ConversationKit13ForegroundAppCSgMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Cache<String, [ConversationControlsManager.CollaborationPrompt]>();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ForegroundCollaborationState(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Published<TURoute?>(319, &lazy cache variable for type metadata for Published<EphemeralAlert?>, &_s15ConversationKit14EphemeralAlertVSgMd);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for Published<ConversationControlsSecondaryPillButtonType>, type metadata accessor for ConversationControlsSecondaryPillButtonType, MEMORY[0x1E695C070]);
                      if (v10 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Published<PushToTalkChannelState>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_108_0();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for Cache<String, [ConversationControlsManager.CollaborationPrompt]>()
{
  if (!lazy cache variable for type metadata for Cache<String, [ConversationControlsManager.CollaborationPrompt]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMd);
    v0 = type metadata accessor for Cache();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Cache<String, [ConversationControlsManager.CollaborationPrompt]>);
    }
  }
}

void type metadata accessor for Published<TURoute?>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_314(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_170();
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for ConduitLagunaNoticeManager()
{
  type metadata accessor for Published<PushToTalkChannelState>(319, &lazy cache variable for type metadata for ConduitLagunaNoticeManager.PushBannerInfo?, type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata completion function for ConduitLagunaNoticeManager.PushBannerInfo()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUNearbySuggestion);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConversationControlsManager.CollaborationPrompt(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConversationControlsManager.CollaborationPrompt(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for ConversationControlsManager.CollaborationPrompt(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ConversationControlsManager.CollaborationPrompt(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt()
{
  result = lazy protocol witness table cache variable for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt;
  if (!lazy protocol witness table cache variable for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsManager.CollaborationPrompt and conformance ConversationControlsManager.CollaborationPrompt);
  }

  return result;
}

uint64_t outlined assign with copy of ConduitLagunaNoticeManager.PushBannerInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TranscriptionViewModel.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionViewModel.Caption(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(int a1, void *a2)
{
  v5 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  OUTLINED_FUNCTION_9_0(v5);
  OUTLINED_FUNCTION_11_7();
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)()
{
  v1 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);
  v6 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return closure #1 in closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(v3, v0 + v2, v5, v7, v8);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()(v3, v4, v5, v6);
}

void partial apply for closure #2 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  v1 = type metadata accessor for URL();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);

  closure #2 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(v3, v0 + v2, v5);
}

uint64_t outlined consume of SessionActionNotice.NoticeType?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 2 != 0xFFFFFFFF)
  {
    return outlined consume of SessionActionNotice.NoticeType(result, a2, a3);
  }

  return result;
}

uint64_t partial apply for closure #3 in closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #3 in closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(v3, v4, v5, v6);
}

void partial apply for closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  v1 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(v3, v4);
}

uint64_t partial apply for closure #1 in ConversationControlsManager.addPodcastRecordingConsentRequestActivity()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ConversationControlsManager.addPodcastRecordingConsentRequestActivity()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_9_0(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v0 + 16);
  v9 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return closure #1 in closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(v8, v0 + v3, v9);
}

uint64_t partial apply for closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(v3, v4, v5, v6);
}

uint64_t objectdestroy_94Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(v3, v4, v5, v6);
}

uint64_t objectdestroy_118Tm(void (*a1)(void))
{
  if (*(v1 + 16))
  {
  }

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in ConversationControlsManager.presentActivity(activity:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(*(v0 + 32) == 0);
  }
}

uint64_t partial apply for closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:)()
{
  OUTLINED_FUNCTION_44();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_0(v5);

  return closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:)(v7, v8, v9, v1, v2, v3);
}

void partial apply for closure #1 in ConversationControlsManager.presentCollaboration(_:completion:)(char a1)
{
  v3 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_9_0(v3);
  OUTLINED_FUNCTION_11_7();
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v9 = *&v1[v8];

  closure #1 in ConversationControlsManager.presentCollaboration(_:completion:)(a1, v5, v6, v7, &v1[v4], v9);
}

uint64_t objectdestroy_609Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationControlsManager.startWaitOnHoldSession()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();

  return closure #1 in closure #1 in ConversationControlsManager.startWaitOnHoldSession()();
}

double OUTLINED_FUNCTION_67_7@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_139_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_217_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_255()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_266()
{
  *v2 = v0;
  v2[1] = v1;
}

uint64_t OUTLINED_FUNCTION_280_0()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_286_0(uint64_t result, __n128 a2)
{
  *(result + 120) = v2;
  *(result + 128) = 18;
  *(result + 136) = a2;
  *(result + 152) = a2;
  *(result + 168) = v2;
  return result;
}

double OUTLINED_FUNCTION_303()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_316_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = v13[4];
  a9 = v13[3];
  a10 = v15;
  *(&a10 + 9) = *(v13 + 73);

  return static ConversationControlsType.== infix(_:_:)(&a13, &a9);
}

uint64_t OUTLINED_FUNCTION_340()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_343()
{

  return UUID.init()();
}

uint64_t OUTLINED_FUNCTION_346()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_347()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 2080;
  *(v0 + 120) = v2;

  return type metadata accessor for HUDActivity(0);
}

uint64_t OUTLINED_FUNCTION_348()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_350()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_351()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_355()
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_356()
{
  *v2 = v0;
  v2[1] = v1;
}

uint64_t OUTLINED_FUNCTION_359()
{
}

unint64_t OUTLINED_FUNCTION_360(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

void OUTLINED_FUNCTION_361(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_365(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_370@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[2] = v2;
  result[3] = a2;
  result[4] = v3;
  return result;
}

double OUTLINED_FUNCTION_387()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_410(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_412(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_413()
{

  return swift_unknownObjectWeakAssign();
}

uint64_t OUTLINED_FUNCTION_417()
{

  return swift_getObjectType();
}

id static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v7 = objc_opt_self();
  [v6 pointSize];
  v8 = [v7 systemFontOfSize_weight_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v10 = v9;
  if (a3)
  {
    v11 = [v9 scaledFontForFont_];
  }

  else
  {
    v11 = [v9 scaledFontForFont:v8 maximumPointSize:*&a2];
  }

  v12 = v11;

  return v12;
}

UIFont __swiftcall UIFont.withTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = *&a1;
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {

    return v7;
  }
}

id ParticipantVideoCameraView.__allocating_init(style:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = a1 & 1;
  v11.receiver = v3;
  v11.super_class = v1;
  return OUTLINED_FUNCTION_0_131(v3, sel_initWithFrame_, v4, v5, v6, v7, v8, v9, v11);
}

id ParticipantVideoCameraView.videoLayer.getter()
{
  v1 = [v0 layer];

  return v1;
}

Swift::Int ParticipantVideoCameraView.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantVideoCameraView.Style()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ParticipantVideoCameraView.Style.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

id ParticipantVideoCameraView.init(style:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = a1 & 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return OUTLINED_FUNCTION_0_131(ObjectType, sel_initWithFrame_, v4, v5, v6, v7, v8, v9, v11);
}

id ParticipantVideoCameraView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ParticipantVideoCameraView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantVideoCameraView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style()
{
  result = lazy protocol witness table cache variable for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style;
  if (!lazy protocol witness table cache variable for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantVideoCameraView.Style and conformance ParticipantVideoCameraView.Style);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantVideoCameraView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void ParticipantBorderView.borderWidth.didset()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView) maskView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
    [v3 setBorderWidth_];
  }
}

double ParticipantBorderView.borderWidth.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_borderWidth;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

uint64_t (*ParticipantBorderView.borderWidth.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantBorderView.borderWidth.modify;
}

BOOL ParticipantBorderView.shouldUseConcentricRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_localParticipant) & 1) != 0;
}

void ParticipantBorderView.customCornerRadius.didset()
{
  if (!ParticipantBorderView.shouldUseConcentricRadius.getter())
  {
    v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView) maskView];
    if (v1)
    {
      v2 = v1;
      v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
      swift_beginAccess();
      [v2 _setContinuousCornerRadius_];
    }
  }
}

double ParticipantBorderView.customCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

uint64_t ParticipantBorderView.borderWidth.setter(uint64_t *a1, uint64_t (*a2)(uint64_t), double a3)
{
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v3 + v6) = a3;
  return a2(v7);
}

uint64_t (*ParticipantBorderView.customCornerRadius.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantBorderView.customCornerRadius.modify;
}

uint64_t key path setter for ParticipantBorderView.concentricCornerStyle : ParticipantBorderView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xB8))(v7);
}

void ParticipantBorderView.concentricCornerStyle.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (ParticipantBorderView.shouldUseConcentricRadius.getter())
  {
    v4 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView) maskView];
    if (v4)
    {
      v5 = v4;
      v6 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
      swift_beginAccess();
      v7 = type metadata accessor for _UICornerMaskingConfiguration();
      (*(*(v7 - 8) + 16))(v3, v0 + v6, v7);
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
      UIView.cornerMaskingConfiguration.setter();
    }
  }
}

uint64_t ParticipantBorderView.concentricCornerStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
  OUTLINED_FUNCTION_4_5();
  type metadata accessor for _UICornerMaskingConfiguration();
  OUTLINED_FUNCTION_7_0();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t ParticipantBorderView.concentricCornerStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  ParticipantBorderView.concentricCornerStyle.didset();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*ParticipantBorderView.concentricCornerStyle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantBorderView.concentricCornerStyle.modify;
}

uint64_t ParticipantBorderView.borderWidth.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *ParticipantBorderView.init(localParticipant:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  *&v1[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_borderWidth] = 0x4008000000000000;
  v7 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  *&v1[v7] = (*(*static Defaults.shared + 400))();
  static _UICornerMaskingConfiguration.unspecified.getter();
  v8 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView;
  v9 = [objc_opt_self() effectWithStyle_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v2[v8] = v10;
  v2[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_localParticipant] = a1 & 1;
  v11 = type metadata accessor for ParticipantBorderView();
  v35.receiver = v2;
  v35.super_class = v11;
  v12 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  v16 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView;
  v17 = *&v14[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView];
  [v14 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v17 setFrame_];
  [v14 addSubview_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v27 = [v26 layer];
  closure #1 in ParticipantBorderView.init(localParticipant:)(v27, v14);

  v28 = [v13 clearColor];
  [v26 setBackgroundColor_];

  if (ParticipantBorderView.shouldUseConcentricRadius.getter())
  {
    v29 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_concentricCornerStyle;
    swift_beginAccess();
    v30 = type metadata accessor for _UICornerMaskingConfiguration();
    OUTLINED_FUNCTION_7_0();
    (*(v31 + 16))(v6, &v14[v29], v30);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v30);
    UIView.cornerMaskingConfiguration.setter();
  }

  else
  {
    v32 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
    swift_beginAccess();
    [v26 _setContinuousCornerRadius_];
  }

  [*&v14[v16] setMaskView_];

  return v14;
}

id closure #1 in ParticipantBorderView.init(localParticipant:)(void *a1, void *a2)
{
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [a1 setBorderColor_];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x78))();

  return [a1 setBorderWidth_];
}

id ParticipantBorderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantBorderView.init(coder:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_borderWidth) = 0x4008000000000000;
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_customCornerRadius;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3_15();
    a1 = swift_once();
  }

  *(v1 + v3) = (*(*static Defaults.shared + 400))(a1);
  static _UICornerMaskingConfiguration.unspecified.getter();
  v4 = OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(v2 + v4) = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantBorderView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ParticipantBorderView();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantBorderView._layout()();
}

void ParticipantBorderView._layout()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantBorderView_blurView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = [v1 maskView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

id ParticipantBorderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantBorderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantBorderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParticipantBorderView()
{
  result = type metadata singleton initialization cache for ParticipantBorderView;
  if (!type metadata singleton initialization cache for ParticipantBorderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ParticipantBorderView()
{
  result = type metadata accessor for _UICornerMaskingConfiguration();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Collaboration.title.getter()
{
  if (*(v0 + 56) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 64);

  return v1;
}

uint64_t static StagedCollaboration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = type metadata accessor for StagedCollaboration(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_42();
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *v7 == *v8 && v5 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_42();
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = *v12 == *v13 && v10 == v11;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v15 = *(v4 + 36);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (v17)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v18 = v17;
      v19 = v16;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        return static NSObject.== infix(_:_:)() & 1;
      }
    }
  }

  else if (!v17)
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

id UIImage.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData_];

  outlined consume of Data._Representation(a1, a2);
  return v6;
}

uint64_t StagedCollaboration.init(foregroundApp:shareableContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 2;
  v6 = type metadata accessor for StagedCollaboration(0);
  UUID.init()();
  *a3 = a1;
  *(a3 + v6[10]) = a2;
  v7 = a1;
  v8 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter([a2 metadata], &selRef_title);
  v9 = (a3 + v6[7]);
  *v9 = v8;
  v9[1] = v10;
  v11 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x68))();
  v13 = v12;

  v14 = (a3 + v6[8]);
  *v14 = v11;
  v14[1] = v13;
  result = ActivityType.placeholderImage.getter();
  *(a3 + v6[9]) = result;
  return result;
}

uint64_t Collaboration.State.init(highlightState:)(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 3;
  }

  else
  {
    return 0x201u >> (8 * a1);
  }
}

Swift::Int Collaboration.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Collaboration.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Collaboration.State.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void *Collaboration.Metadata.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id Collaboration.Metadata.init(localizedApplicationName:title:imageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  if (a6 >> 60 == 15)
  {
    result = 0;
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    result = UIImage.__allocating_init(data:)(a5, a6);
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = result;
  return result;
}

uint64_t static Collaboration.Metadata.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10)
  {
    if (v11)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v12 = v11;
      v13 = v10;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

void Collaboration.Metadata.hash(into:)()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[3])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v1 = v0[4];
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    OUTLINED_FUNCTION_19_33();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int Collaboration.Metadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  Collaboration.Metadata.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Collaboration.Metadata()
{
  Hasher.init(_seed:)();
  Collaboration.Metadata.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Collaboration.highlightURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Collaboration(0) + 44);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void Collaboration.init(highlight:state:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 17) = 2;
  *(a3 + 24) = 0;
  v6 = [a1 collaborationIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = a2;
  SWCollaborationHighlight.applicationRecord.getter();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v12, &selRef_bundleIdentifier);
    v15 = v14;
    v16 = [v12 localizedName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v13 = 0;
    v15 = 0;
  }

  *(a3 + 32) = v13;
  *(a3 + 40) = v15;
  v20 = outlined bridged method (pb) of @objc SWCollaborationHighlight.title.getter(a1);
  *(a3 + 48) = v17;
  *(a3 + 56) = v19;
  *(a3 + 64) = v20;
  *(a3 + 72) = v21;
  *(a3 + 80) = 0;
  *(a3 + 88) = SWCollaborationHighlight.messagesIdentifier.getter();
  *(a3 + 96) = v22;
  v23 = [a1 URL];
  v24 = type metadata accessor for Collaboration(0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = objc_opt_self();
  v26 = [v25 sharedInstance];
  v27 = [v26 frontmostAudioOrVideoCall];

  if (v27)
  {
    v28 = [v25 sharedInstance];
    v29 = [v28 activeConversationForCall_];

    if (v29)
    {
      v30 = [v25 sharedInstance];
      v31 = [v30 conversationManager];

      v32 = [v31 collaborationManager];
      if (v32)
      {
        v33 = [v32 isCollaborationLocallyInitiatedForConversation_];

        *(a3 + *(v24 + 48)) = v33;
        return;
      }
    }

    else
    {
      v29 = v27;
    }
  }

  *(a3 + *(v24 + 48)) = 0;
}

void SWCollaborationHighlight.applicationRecord.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedManager];
  v7 = [v1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v11 = [v6 lsAppRecordForURL_];

  if (v11)
  {
    v12 = v11;
    v13 = outlined bridged method (ob) of @objc TUConversationActivityMetadata.title.getter(v12, &selRef_bundleIdentifier);
    if (v14)
    {
      if (v13 == 0xD00000000000001CLL && v14 == 0x80000001BC509AB0)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          return;
        }
      }

      v17 = [objc_opt_self() sharedInstance];
      v18 = [v17 conversationManager];

      v19 = [v1 collaborationIdentifier];
      if (!v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = MEMORY[0x1BFB209B0](v20);
      }

      v21 = [v18 ckBundleIDForCollaborationIdentifier_];

      if (v21)
      {
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = 0;
          v25 = (v22 + 40);
          while (v24 < *(v22 + 16))
          {
            v27 = *(v25 - 1);
            v26 = *v25;
            objc_allocWithZone(MEMORY[0x1E69635F8]);

            if (!@nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v27, v26, 1))
            {
              ++v24;
              v25 += 2;
              if (v23 != v24)
              {
                continue;
              }
            }

            goto LABEL_18;
          }

          __break(1u);
        }

        else
        {
LABEL_18:
        }
      }

      else
      {
      }
    }
  }
}

uint64_t SWCollaborationHighlight.messagesIdentifier.getter()
{
  v1 = [v0 attributions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SLAttribution);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1BFB22010](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 uniqueIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t Collaboration.subtitle.getter()
{
  if (*(v0 + 56) == 1)
  {
    return 0;
  }

  v1 = *(v0 + 48);

  return v1;
}

uint64_t Collaboration.image.getter()
{
  v1 = *(v0 + 80);
  if (*(v0 + 56) == 1 || v1 == 0)
  {
    return ActivityType.placeholderImage.getter();
  }

  v3 = v1;
  return v1;
}

uint64_t Collaboration.icon.getter()
{
  v1 = 0;
  switch(*(v0 + 17))
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        OUTLINED_FUNCTION_12_54();
      }

      v2 = &static ActivityType.Icon.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        OUTLINED_FUNCTION_6_77();
      }

      v2 = &static ActivityType.Icon.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        OUTLINED_FUNCTION_4_98();
      }

      v2 = &static ActivityType.Icon.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        OUTLINED_FUNCTION_7_72();
      }

      v2 = &static ActivityType.Icon.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        OUTLINED_FUNCTION_2_114();
      }

      v2 = &static ActivityType.Icon.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        OUTLINED_FUNCTION_8_70();
      }

      v2 = &static ActivityType.Icon.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        OUTLINED_FUNCTION_3_107();
      }

      v2 = &static ActivityType.Icon.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        OUTLINED_FUNCTION_11_68();
      }

      v2 = &static ActivityType.Icon.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        OUTLINED_FUNCTION_10_57();
      }

      v2 = &static ActivityType.Icon.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        OUTLINED_FUNCTION_5_92();
      }

      v2 = &static ActivityType.Icon.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        OUTLINED_FUNCTION_9_65();
      }

      v2 = &static ActivityType.Icon.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

uint64_t Collaboration.concatenatedDescription.getter()
{
  if (v0[7] == 1 || v0[9] == 0)
  {
    v2 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_4();
    v3.super.isa = v2;
    v6 = OUTLINED_FUNCTION_17_0(0xD000000000000016, 0x80000001BC5099F0, v4, v5, v3);
  }

  else
  {
    v6 = v0[8];
  }

  return v6;
}

uint64_t Collaboration.ongoingDescription.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_4();
  v1.super.isa = v0;
  v4 = OUTLINED_FUNCTION_17_0(0xD00000000000002BLL, 0x80000001BC509A10, v2, v3, v1);

  return v4;
}

uint64_t Collaboration.metadataHash.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationV8MetadataVSgMd);
  lazy protocol witness table accessor for type Collaboration.Metadata and conformance Collaboration.Metadata();
  return Optional<A>.hashValue.getter();
}

uint64_t protocol witness for Activity.uniqueIdentifier.getter in conformance Collaboration()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for Activity.bundleIdentifier.getter in conformance Collaboration()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t StagedCollaboration.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StagedCollaboration(0) + 24);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StagedCollaboration.title.getter()
{
  type metadata accessor for StagedCollaboration(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t StagedCollaboration.subtitle.getter()
{
  type metadata accessor for StagedCollaboration(0);

  return OUTLINED_FUNCTION_46();
}

void *StagedCollaboration.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for StagedCollaboration(0) + 36));
  v2 = v1;
  return v1;
}

id StagedCollaboration.shareableContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for StagedCollaboration(0) + 40));

  return v1;
}

uint64_t StagedCollaboration.description.getter()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(80);
  MEMORY[0x1BFB20B10](0xD00000000000002CLL, 0x80000001BC509A40);
  v11 = *v0;
  type metadata accessor for ForegroundApp();
  v2 = v11;
  v3 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v3);

  MEMORY[0x1BFB20B10](0x6974202020200A2CLL, 0xED0000203A656C74);
  v4 = type metadata accessor for StagedCollaboration(0);
  if (*(v0 + *(v4 + 28) + 8))
  {

    v5 = String.init<A>(reflecting:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1BFB20B10](v5, v7);

  MEMORY[0x1BFB20B10](0xD000000000000010, 0x80000001BC509A70);
  if (*(v0 + *(v4 + 32) + 8))
  {

    v1 = String.init<A>(reflecting:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x1BFB20B10](v1, v9);

  MEMORY[0x1BFB20B10](62, 0xE100000000000000);
  return 0;
}

void StagedCollaboration.hash(into:)()
{
  v1 = type metadata accessor for StagedCollaboration(0);
  if (*(v0 + v1[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v1[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = *(v0 + v1[9]);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    OUTLINED_FUNCTION_19_33();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StagedCollaboration()
{
  Hasher.init(_seed:)();
  StagedCollaboration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t StagedCollaboration.icon.getter()
{
  v1 = 0;
  switch(*(v0 + 8))
  {
    case 1:
    case 2:
      if (one-time initialization token for collaboration != -1)
      {
        OUTLINED_FUNCTION_12_54();
      }

      v2 = &static ActivityType.Icon.collaboration;
      goto LABEL_35;
    case 3:
      if (one-time initialization token for listenTogether != -1)
      {
        OUTLINED_FUNCTION_6_77();
      }

      v2 = &static ActivityType.Icon.listenTogether;
      goto LABEL_35;
    case 4:
      if (one-time initialization token for watchTogether != -1)
      {
        OUTLINED_FUNCTION_4_98();
      }

      v2 = &static ActivityType.Icon.watchTogether;
      goto LABEL_35;
    case 5:
      if (one-time initialization token for workoutTogether != -1)
      {
        OUTLINED_FUNCTION_7_72();
      }

      v2 = &static ActivityType.Icon.workoutTogether;
      goto LABEL_35;
    case 6:
    case 0xD:
      return v1;
    case 7:
      if (one-time initialization token for playTogether != -1)
      {
        OUTLINED_FUNCTION_2_114();
      }

      v2 = &static ActivityType.Icon.playTogether;
      goto LABEL_35;
    case 8:
      if (one-time initialization token for shopTogether != -1)
      {
        OUTLINED_FUNCTION_8_70();
      }

      v2 = &static ActivityType.Icon.shopTogether;
      goto LABEL_35;
    case 9:
      if (one-time initialization token for readTogether != -1)
      {
        OUTLINED_FUNCTION_3_107();
      }

      v2 = &static ActivityType.Icon.readTogether;
      goto LABEL_35;
    case 0xA:
      if (one-time initialization token for exploreTogether != -1)
      {
        OUTLINED_FUNCTION_11_68();
      }

      v2 = &static ActivityType.Icon.exploreTogether;
      goto LABEL_35;
    case 0xB:
      if (one-time initialization token for learnTogether != -1)
      {
        OUTLINED_FUNCTION_10_57();
      }

      v2 = &static ActivityType.Icon.learnTogether;
      goto LABEL_35;
    case 0xC:
      if (one-time initialization token for createTogether != -1)
      {
        OUTLINED_FUNCTION_5_92();
      }

      v2 = &static ActivityType.Icon.createTogether;
      goto LABEL_35;
    default:
      if (one-time initialization token for other != -1)
      {
        OUTLINED_FUNCTION_9_65();
      }

      v2 = &static ActivityType.Icon.other;
LABEL_35:
      v1 = *v2;
      v3 = *v2;
      return v1;
  }
}

uint64_t StagedCollaboration.concatenatedDescription.getter()
{
  if (!*(v0 + *(type metadata accessor for StagedCollaboration(0) + 28) + 8))
  {
    v1 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_4();
    v2.super.isa = v1;
    OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC509A90, v3, v4, v2);
  }

  return OUTLINED_FUNCTION_46();
}

Swift::Int StagedCollaboration.hashValue.getter()
{
  Hasher.init(_seed:)();
  StagedCollaboration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Collaboration.collaboration.getter@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  outlined init with copy of Collaboration(v6, a3, a1);
  v8 = a2(0);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v8);
}

uint64_t protocol witness for Activity.title.getter in conformance StagedCollaboration(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t protocol witness for Activity.subtitle.getter in conformance StagedCollaboration(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

void *protocol witness for Activity.image.getter in conformance StagedCollaboration(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

uint64_t outlined bridged method (pb) of @objc SWCollaborationHighlight.title.getter(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with copy of Collaboration.Metadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationV8MetadataVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Metadata and conformance Collaboration.Metadata()
{
  result = lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata;
  if (!lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata;
  if (!lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Metadata and conformance Collaboration.Metadata);
  }

  return result;
}

uint64_t outlined init with copy of Collaboration(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Collaboration.State and conformance Collaboration.State()
{
  result = lazy protocol witness table cache variable for type Collaboration.State and conformance Collaboration.State;
  if (!lazy protocol witness table cache variable for type Collaboration.State and conformance Collaboration.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.State and conformance Collaboration.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StagedCollaboration and conformance StagedCollaboration()
{
  result = lazy protocol witness table cache variable for type StagedCollaboration and conformance StagedCollaboration;
  if (!lazy protocol witness table cache variable for type StagedCollaboration and conformance StagedCollaboration)
  {
    type metadata accessor for StagedCollaboration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StagedCollaboration and conformance StagedCollaboration);
  }

  return result;
}

uint64_t type metadata completion function for Collaboration()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Collaboration.Metadata?);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = type metadata accessor for URL();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for Collaboration.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Collaboration.Metadata(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Collaboration.Metadata(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata completion function for StagedCollaboration()
{
  type metadata accessor for ForegroundApp();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIImage?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for NSObject(319, &lazy cache variable for type metadata for SWShareableContent);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for UIImage?()
{
  if (!lazy cache variable for type metadata for UIImage?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImage);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIImage?);
    }
  }
}

void specialized Array.subscript.getter(uint64_t a1, uint64_t a2)
{
  specialized Array.subscript.getter(a1, a2);
}

{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_31();
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    OUTLINED_FUNCTION_22(v7);
    OUTLINED_FUNCTION_30_23();
    return;
  }

LABEL_10:
  __break(1u);
}

{
  specialized Array.subscript.getter(a1, a2);
}

{
  specialized Array.subscript.getter(a1, a2);
}

{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_24_31();
  if (v6)
  {
    v7 = v5 < v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = v4(0);
    OUTLINED_FUNCTION_22(v8);
    OUTLINED_FUNCTION_30_23();
    return;
  }

LABEL_10:
  __break(1u);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2, a3);
  *a1 = v6;
  return result;
}

Swift::String __swiftcall RecentsCollectionViewSection.title()()
{
  object = 0xE000000000000000;
  countAndFlagsBits = 0;
  switch(*v1)
  {
    case 3:
      v4 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE600000000000000;
      goto LABEL_10;
    case 4:
      v11 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE800000000000000;
      goto LABEL_10;
    case 5:
      v10 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE500000000000000;
      goto LABEL_10;
    case 6:
      v13 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_12_55();
      OUTLINED_FUNCTION_5_5();
      v8 = v14 + 14;
      goto LABEL_10;
    case 7:
    case 8:
      v12 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xE90000000000006BLL;
      goto LABEL_10;
    case 9:
    case 0xA:
      v17 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
      v8 = 0xEA00000000006874;
      goto LABEL_10;
    case 0xB:
    case 0xC:
      v15 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_12_55();
      OUTLINED_FUNCTION_5_5();
      v8 = v16 + 7;
      goto LABEL_10;
    case 0xD:
      v9 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_5();
LABEL_10:
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = 0;
      v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v6, v0, v18, *(&v24 - 1));
      countAndFlagsBits = v20._countAndFlagsBits;
      object = v20._object;

      break;
    default:
      break;
  }

  v21 = countAndFlagsBits;
  v22 = object;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

ConversationKit::RecentsCollectionViewSection_optional __swiftcall RecentsCollectionViewSection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RecentsCollectionViewSection@<X0>(uint64_t *a1@<X8>)
{
  result = RecentsCollectionViewSection.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t RecentsCollectionViewModel.init(with:now:upcomingSectionItemLimit:suggestedContact:)@<X0>(uint64_t a1@<X1>, void *a2@<X3>, void *a3@<X8>)
{
  static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)();
  v7 = v6;

  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  result = (*(v8 + 8))(a1);
  *a3 = v7;
  return result;
}

void static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)()
{
  OUTLINED_FUNCTION_29();
  v199 = v1;
  v212 = v2;
  v214 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v11);
  v12 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v211 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_32_18();
  v204 = type metadata accessor for RecentsCallItemType(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40();
  v213 = v20;
  v203 = type metadata accessor for RecentsCallItemStyle();
  OUTLINED_FUNCTION_1();
  v198 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  v202 = v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32();
  v205 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  v32 = OUTLINED_FUNCTION_16(v31);
  v206 = type metadata accessor for RecentsCallItem(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  v197 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_32();
  v215 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit32RecentsCollectionViewSectionable_pGMd);
  v38 = lazy protocol witness table accessor for type RecentsCollectionViewSection and conformance RecentsCollectionViewSection();
  v201 = v37;
  v200 = v38;
  v39 = Dictionary.init(dictionaryLiteral:)();
  v222 = v39;
  if (!*(v5 + 16))
  {
    goto LABEL_133;
  }

  v194 = v29;
  v207 = v12;
  v210 = v9;
  v40 = static RecentsCollectionViewSection.callItemCases.getter();
  v41 = v40;
  v42 = *(v40 + 16);
  if (v42)
  {
    v195 = v14;
    v196 = v5;
    v14 = 0;
    v216 = (v40 + 32);
    while (v14 < v41[2])
    {
      v5 = *(v216 + v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219[0] = v39;
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      v46 = *(v39 + 16);
      v47 = (v45 & 1) == 0;
      v39 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_145;
      }

      v48 = v44;
      v49 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd);
      OUTLINED_FUNCTION_34_24();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39))
      {
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if ((v49 & 1) != (v51 & 1))
        {
LABEL_160:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return;
        }

        v48 = v50;
      }

      v39 = v219[0];
      if (v49)
      {
        *(*(v219[0] + 56) + 8 * v48) = MEMORY[0x1E69E7CC0];
      }

      else
      {
        *(v219[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
        *(*(v39 + 48) + v48) = v5;
        *(*(v39 + 56) + 8 * v48) = MEMORY[0x1E69E7CC0];
        v52 = *(v39 + 16);
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_146;
        }

        *(v39 + 16) = v54;
      }

      if (v42 == ++v14)
      {
        v222 = v39;
        v5 = v196;
        v14 = v195;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
  }

  else
  {
LABEL_15:

    v42 = v207;
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  if ((Features.isFaceTimeLaunchPageEnabled.getter() & 1) == 0)
  {
    v219[0] = v5;

    specialized MutableCollection<>.sort(by:)(v219, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
    v199 = 0;
    v103 = v219[0];
    v104 = *(v219[0] + 16);
    v105 = static RecentsCollectionViewSection.callItemCases.getter();
    v106 = 0;
    v107 = 0;
    v205 = *(v105 + 16);
    v206 = v105;
    v203 = v105 + 32;
    v216 = (v14 + 8);
    v202 = v103 + 32;
    v108 = v212;
    v213 = v104;
    v204 = v103;
    while (1)
    {
      if (v107 == v205)
      {
LABEL_113:

        v152 = static RecentsCollectionViewSection.callItemCases.getter();
        v153 = *(v152 + 16);
        if (v153)
        {
          v154 = v222;
          v155 = 32;
          do
          {
            if (v154[2])
            {
              v156 = *(v152 + v155);
              v157 = specialized __RawDictionaryStorage.find<A>(_:)(v156);
              if ((v158 & 1) != 0 && !*(*(v154[7] + 8 * v157) + 16))
              {
                specialized __RawDictionaryStorage.find<A>(_:)(v156);
                if (v159)
                {
                  v160 = swift_isUniquelyReferenced_nonNull_native();
                  v219[0] = v154;
                  v161 = v154[3];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd);
                  OUTLINED_FUNCTION_34_24();
                  _NativeDictionary.ensureUnique(isUnique:capacity:)(v160, v161);
                  v154 = v219[0];

                  OUTLINED_FUNCTION_42_19();
                }
              }
            }

            ++v155;
            --v153;
          }

          while (v153);
        }

        goto LABEL_132;
      }

      if (v107 >= *(v206 + 16))
      {
        goto LABEL_148;
      }

      if (v104 < v106)
      {
        goto LABEL_149;
      }

      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_150;
      }

      v109 = *(v103 + 16);
      if (v109 < v106 || v109 < v104)
      {
        goto LABEL_151;
      }

      if (v104 <= v106)
      {
        goto LABEL_113;
      }

      LODWORD(v5) = *(v203 + v107);
      v208 = v107 + 1;

      v39 = v202 + 40 * v106;
      LODWORD(v215) = v5;
      while (1)
      {
        outlined init with copy of IDSLookupManager(v39, v219);
        LOBYTE(v217[0]) = v5;
        static Calendar.current.getter();
        static RecentsCollectionViewModel.section(_:includes:now:calendar:)();
        v112 = v111;
        v14 = *v216;
        (*v216)(v0, v42);
        if ((v112 & 1) != 0 && v5 == 4)
        {
          OUTLINED_FUNCTION_28_32();
          specialized Dictionary.subscript.modify();
          OUTLINED_FUNCTION_29_23();
          if (v114)
          {
            v115 = v113;
            outlined init with copy of IDSLookupManager(v219, v217);
            v116 = *v115;
            v117 = *(*v115 + 16);
            v118 = swift_isUniquelyReferenced_nonNull_native();
            *v115 = v116;
            if (!v118 || v117 >= v116[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v116 = v119;
              *v115 = v119;
            }

            v104 = v213;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
            swift_arrayDestroy();
            v120 = v116[2];
            memmove(v116 + 9, v116 + 4, 40 * v120);
            v116[2] = v120 + 1;
            outlined init with copy of IDSLookupManager(v217, (v116 + 4));
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v217, &_ss15CollectionOfOneVy15ConversationKit07RecentsA15ViewSectionable_pGMd);
          }

          goto LABEL_83;
        }

        v122 = v220;
        v123 = v221;
        __swift_project_boxed_opaque_existential_1(v219, v220);
        (v123[5])(v217, v122, v123);
        if (LOBYTE(v217[0]) != 15)
        {
          if (LOBYTE(v217[0]) != 4)
          {
            OUTLINED_FUNCTION_28_32();
            specialized Dictionary.subscript.modify();
            OUTLINED_FUNCTION_29_23();
            if (v130)
            {
              goto LABEL_100;
            }

            goto LABEL_106;
          }

          if (v108 >= 1)
          {
            OUTLINED_FUNCTION_28_32();
            specialized Dictionary.subscript.modify();
            OUTLINED_FUNCTION_29_23();
            v104 = v213;
            if (v125)
            {
              v126 = v124;
              --v108;
              goto LABEL_101;
            }

            v149 = OUTLINED_FUNCTION_16_46();
            (v112)(v149);
            --v108;
            goto LABEL_107;
          }
        }

        if ((v112 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_28_32();
        v5 = v215;
        specialized Dictionary.subscript.modify();
        OUTLINED_FUNCTION_29_23();
        if (v128)
        {
          goto LABEL_100;
        }

        v129 = OUTLINED_FUNCTION_16_46();
        (v112)(v129);
        v104 = v213;
LABEL_108:
        ++v106;
        __swift_destroy_boxed_opaque_existential_1(v219);
        v39 += 40;
        if (v104 == v106)
        {
          v103 = v204;

          v106 = v104;
          goto LABEL_111;
        }
      }

      v212 = v108;
      static Calendar.current.getter();
      v131 = v221;
      __swift_project_boxed_opaque_existential_1(v219, v220);
      v132 = v210;
      v133 = OUTLINED_FUNCTION_28_0();
      v134(v133, v131);
      v135 = type metadata accessor for Date();
      OUTLINED_FUNCTION_57(v132);
      if (v97)
      {
        v136 = v220;
        v137 = v221;
        __swift_project_boxed_opaque_existential_1(v219, v220);
        OUTLINED_FUNCTION_132_0();
        v138(v136, v137);
        v139 = v42;
        v42 = v207;
        OUTLINED_FUNCTION_57(v132);
        v104 = v213;
        if (!v97)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v210, &_s10Foundation4DateVSgMd);
        }
      }

      else
      {
        v139 = v209;
        (*(*(v135 - 8) + 32))(v209, v132, v135);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v140, v141, v142, v135);
        v104 = v213;
      }

      __swift_getEnumTagSinglePayload(v139, 1, v135);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v139, &_s10Foundation4DateVSgMd);
      v5 = v221;
      __swift_project_boxed_opaque_existential_1(v219, v220);
      v143 = OUTLINED_FUNCTION_28_0();
      v112 = v144(v143, v5);
      (v14)(v211, v42);
      v108 = v212;
      if (v112)
      {
        OUTLINED_FUNCTION_28_32();
        specialized Dictionary.subscript.modify();
        OUTLINED_FUNCTION_29_23();
        if (v145)
        {
LABEL_100:
          v126 = v127;
LABEL_101:
          outlined init with copy of IDSLookupManager(v219, v217);
          v146 = *v126;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          *v126 = v146;
          if ((v147 & 1) == 0)
          {
            OUTLINED_FUNCTION_43();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v146 = v150;
            *v126 = v150;
          }

          v14 = *(v146 + 16);
          if (v14 >= *(v146 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v146 = v151;
            *v126 = v151;
          }

          *(v146 + 16) = v14 + 1;
          outlined init with take of ImageName(v217, v146 + 40 * v14 + 32);
LABEL_106:
          v148 = OUTLINED_FUNCTION_16_46();
          (v112)(v148);
          v104 = v213;
LABEL_107:
          v5 = v215;
          goto LABEL_108;
        }

LABEL_83:
        v121 = OUTLINED_FUNCTION_16_46();
        (v112)(v121);
        goto LABEL_107;
      }

      v103 = v204;

      __swift_destroy_boxed_opaque_existential_1(v219);
LABEL_111:
      v107 = v208;
    }
  }

  v219[0] = v5;

  specialized MutableCollection<>.sort(by:)(v219, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  v42 = v219[0];

  swift_isUniquelyReferenced_nonNull_native();
  v219[0] = v39;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v55 = v219[0];
  v222 = v219[0];
  v56 = static RecentsCollectionViewSection.callItemCases.getter();
  v41 = v56;
  v57 = *(v56 + 16);
  v209 = v42;
  if (v57)
  {
    v39 = 0;
    v42 = (v56 + 32);
    do
    {
      if (v39 >= v41[2])
      {
        goto LABEL_147;
      }

      v5 = *(v42 + v39);
      if (v5 != 4)
      {
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v219[0] = v55;
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        v61 = v55[2];
        v62 = (v60 & 1) == 0;
        v0 = (v61 + v62);
        if (__OFADD__(v61, v62))
        {
          goto LABEL_153;
        }

        v63 = v59;
        v14 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd);
        OUTLINED_FUNCTION_34_24();
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v58, v0))
        {
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
          if ((v14 & 1) != (v65 & 1))
          {
            goto LABEL_160;
          }

          v63 = v64;
        }

        v55 = v219[0];
        if (v14)
        {
          *(*(v219[0] + 56) + 8 * v63) = MEMORY[0x1E69E7CC0];
        }

        else
        {
          *(v219[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
          *(v55[6] + v63) = v5;
          *(v55[7] + 8 * v63) = MEMORY[0x1E69E7CC0];
          v66 = v55[2];
          v53 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v53)
          {
            goto LABEL_154;
          }

          v55[2] = v67;
        }
      }

      ++v39;
    }

    while (v57 != v39);
    v222 = v55;
    OUTLINED_FUNCTION_132_0();
  }

  if (!v199)
  {
    goto LABEL_123;
  }

  v216 = v42[2];
  if (!v216)
  {
    goto LABEL_123;
  }

  LODWORD(v196) = *MEMORY[0x1E69D8918];
  v68 = v198 + 104;
  LODWORD(v195) = *MEMORY[0x1E69D8928];
  v69 = *MEMORY[0x1E69D8920];
  v212 = (v198 + 8);
  v207 = v199;
  v70 = 0;
  v5 = 72;
  v0 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMR;
  v214 = v68;
  v71 = v68 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v211 = v71;
  OUTLINED_FUNCTION_9_66();
  while (1)
  {
    if (v70 >= v42[2])
    {
      goto LABEL_152;
    }

    outlined init with copy of IDSLookupManager(v42 + v5 - 40, v219);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
    v39 = v208;
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v71);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s15ConversationKit15RecentsCallItemVSgMd);
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
    OUTLINED_FUNCTION_0_132();
    v75 = v215;
    _s15ConversationKit15RecentsCallItemVWObTm_2(v39, v215, v76);
    OUTLINED_FUNCTION_15_43();
    v77 = v75;
    v78 = v213;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v77, v213, v79);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v39 = v203;
    v210 = v14;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v100 = OUTLINED_FUNCTION_23_35();
        v78(v100, v195, v39);
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v213, v101);
        break;
      case 2:
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v213, v87);
        v82 = OUTLINED_FUNCTION_23_35();
        v83 = v196;
        goto LABEL_40;
      default:
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v213, v81);
        v82 = OUTLINED_FUNCTION_23_35();
        v83 = v69;
LABEL_40:
        v78(v82, v83, v39);
        break;
    }

    v14 = v202;
    v88 = v69;
    v78(v202, v69, v39);
    v71 = static RecentsCallItemStyle.== infix(_:_:)();
    v89 = v41;
    v41 = *v212;
    v90 = OUTLINED_FUNCTION_20_36();
    (v41)(v90);
    (v41)(v89, v39);
    if ((v71 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_123();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v215, v99);
      OUTLINED_FUNCTION_9_66();
      v69 = v88;
      v0 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMR;
      goto LABEL_61;
    }

    v71 = *(v215 + *(v206 + 48));
    v0 = &_s15ConversationKit32RecentsCollectionViewSectionable_pMR;
    if (v71 >> 62)
    {
      if (v71 < 0)
      {
        v41 = *(v215 + *(v206 + 48));
      }

      else
      {
        v41 = (v71 & 0xFFFFFFFFFFFFFF8);
      }

      v69 = v88;
      if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
      {
LABEL_60:
        OUTLINED_FUNCTION_0_123();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v215, v102);
        OUTLINED_FUNCTION_9_66();
        goto LABEL_61;
      }
    }

    else
    {
      v69 = v88;
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_60;
      }
    }

    if ((v71 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x1BFB22010](0, v71);
    }

    else
    {
      if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_157:
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v42 = v192;
        goto LABEL_136;
      }

      v91 = *(v71 + 32);
    }

    v71 = v91;
    v92 = [v91 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v93;

    v94 = [v207 identifier];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v96;

    v97 = v14 == v95 && v42 == v41;
    if (v97)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    OUTLINED_FUNCTION_0_123();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v215, v98);
    OUTLINED_FUNCTION_132_0();
    OUTLINED_FUNCTION_9_66();
    v69 = v88;
    if (v39)
    {
      goto LABEL_135;
    }

LABEL_61:
    ++v70;
    v5 += 40;
    if (v216 == v70)
    {

      goto LABEL_123;
    }
  }

  OUTLINED_FUNCTION_0_123();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v215, v175);
  OUTLINED_FUNCTION_132_0();
LABEL_135:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_157;
  }

LABEL_136:
  v176 = v42[2];
  if (v176 <= v70)
  {
    __break(1u);
LABEL_159:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v218 = v193;
LABEL_142:
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();

    OUTLINED_FUNCTION_0_123();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v176, v188);
    goto LABEL_123;
  }

  outlined init with take of ImageName(v42 + v5 - 40, v219);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v42 + v5, ~v70 + v176, v42 + v5 - 40);
  v42[2] = (v176 - 1);
  v177 = v194;
  v178 = v206;
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v178);
    OUTLINED_FUNCTION_0_132();
    v182 = v177;
    v176 = v197;
    _s15ConversationKit15RecentsCallItemVWObTm_2(v182, v197, v183);
    RecentsCallItem.hasAudioMessage.getter();
    if ((v184 & 1) == 0)
    {
      RecentsCallItem.hasVideoMessage.getter();
      if ((v185 & 1) == 0)
      {
        *(v176 + *(v178 + 60)) = 1;
      }
    }

    v220 = v178;
    v221 = &protocol witness table for RecentsCallItem;
    __swift_allocate_boxed_opaque_existential_1(v219);
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v176, v186, v187);
    outlined init with take of ImageName(v219, v217);
    v218 = v42;
    if (v42[2] < v42[3] >> 1)
    {
      goto LABEL_142;
    }

    goto LABEL_159;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v189, v190, v191, v178);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v177, &_s15ConversationKit15RecentsCallItemVSgMd);
LABEL_123:

  v162 = v222;
  swift_isUniquelyReferenced_nonNull_native();
  v219[0] = v162;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v163 = v219[0];
  v222 = v219[0];
  v164 = static RecentsCollectionViewSection.callItemCases.getter();
  v165 = *(v164 + 16);
  if (v165)
  {
    v166 = (v164 + 32);
    do
    {
      v168 = *v166++;
      v167 = v168;
      if (*(v163 + 16))
      {
        v169 = specialized __RawDictionaryStorage.find<A>(_:)(v167);
        if ((v170 & 1) != 0 && !*(*(*(v163 + 56) + 8 * v169) + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v167);
          if (v171)
          {
            v172 = v222;
            v173 = swift_isUniquelyReferenced_nonNull_native();
            v219[0] = v172;
            v174 = *(v172 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit28RecentsCollectionViewSectionOSayAC0efG11Sectionable_pGGMd);
            OUTLINED_FUNCTION_34_24();
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v173, v174);
            v163 = v219[0];

            OUTLINED_FUNCTION_20_36();
            OUTLINED_FUNCTION_42_19();
            v222 = v163;
          }
        }
      }

      --v165;
    }

    while (v165);
  }

LABEL_132:

LABEL_133:
  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsCollectionViewModel.sectionable(for:identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  if (*(v6 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(*result), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * result);
    v11 = *(v10 + 16);
    v12 = v10 + 32;

    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {

        goto LABEL_13;
      }

      if (i >= *(v10 + 16))
      {
        break;
      }

      outlined init with copy of IDSLookupManager(v12, v19);
      v14 = v20;
      v15 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if ((*(v15 + 24))(v14, v15) == a2 && v16 == a3)
      {

LABEL_15:

        return outlined init with take of ImageName(v19, a4);
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_15;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v19);
      v12 += 40;
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void RecentsCollectionViewModel.sectionable(with:)()
{
  OUTLINED_FUNCTION_29();
  v75 = v1;
  v81 = v2;
  v74 = v3;
  v79 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v78 = v5;
  v77 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  v8 = OUTLINED_FUNCTION_16(v7);
  v84 = type metadata accessor for RecentsCallItemType(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  v87 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v85 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v86 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  v22 = *v0 + 64;
  OUTLINED_FUNCTION_2_55();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v82 = v28;

  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v83 = v15;
  v80 = v21;
  do
  {
    while (1)
    {
      if (v25)
      {
        goto LABEL_7;
      }

      do
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return;
        }

        if (v31 >= v27)
        {
          goto LABEL_18;
        }

        v25 = *(v22 + 8 * v31);
        ++v29;
      }

      while (!v25);
      v29 = v31;
LABEL_7:
      v32 = *(*(v82 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v25)))));
      v33 = *(v32 + 16);
      v34 = v30[2];
      if (__OFADD__(v34, v33))
      {
        goto LABEL_53;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v34 + v33 > v30[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v30 = v35;
      }

      v21 = v80;
      v25 &= v25 - 1;
      v15 = v83;
      if (!*(v32 + 16))
      {
        break;
      }

      if ((v30[3] >> 1) - v30[2] < v33)
      {
        goto LABEL_54;
      }

      v36 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
      v21 = v36;
      v15 = v83;
      swift_arrayInitWithCopy();

      if (v33)
      {
        v37 = v30[2];
        v38 = __OFADD__(v37, v33);
        v39 = v37 + v33;
        if (v38)
        {
          goto LABEL_55;
        }

        v30[2] = v39;
      }
    }
  }

  while (!v33);
  __break(1u);
LABEL_18:

  v40 = v30[2];
  if (v40)
  {
    v41 = (v30 + 4);
    v42 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of IDSLookupManager(v41, v89);
      outlined init with take of ImageName(v89, &v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
      v43 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v14, v43 ^ 1u, 1, v15);
      if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit15RecentsCallItemVSgMd);
      }

      else
      {
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v14, v21, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v48;
        }

        v45 = *(v42 + 16);
        if (v45 >= *(v42 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v49;
        }

        *(v42 + 16) = v45 + 1;
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v21, v46, v47);
      }

      v41 += 40;
      --v40;
    }

    while (v40);
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v42 + 16);
  v51 = v75;
  if (!v50)
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v15);

    goto LABEL_50;
  }

  v52 = 0;
  while (2)
  {
    if (v52 >= *(v42 + 16))
    {
      goto LABEL_52;
    }

    ++v52;
    v53 = v86;
    OUTLINED_FUNCTION_14_45();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v54, v53, v55);
    OUTLINED_FUNCTION_15_43();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_1(v53, v87, v56);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v58 = v78;
        _s15ConversationKit15RecentsCallItemVWObTm_2(v87, v78, type metadata accessor for RecentOngoingConversationMetadata);
        OUTLINED_FUNCTION_26_31(*(v79 + 28));
        v59 = type metadata accessor for RecentOngoingConversationMetadata;
        goto LABEL_38;
      case 2u:
        v30 = *v87;
        goto LABEL_39;
      case 3u:
      case 4u:
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v87, v57);
        goto LABEL_44;
      default:
        v58 = v76;
        _s15ConversationKit15RecentsCallItemVWObTm_2(v87, v76, type metadata accessor for RecentCallRecentItemMetadata);
        OUTLINED_FUNCTION_26_31(*(v77 + 44));
        v59 = type metadata accessor for RecentCallRecentItemMetadata;
LABEL_38:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v58, v59);
        if (!v30)
        {
          goto LABEL_44;
        }

LABEL_39:

        v60 = [v30 pseudonym];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v62;

        if (v61 != v81 || v30 != v51)
        {
          OUTLINED_FUNCTION_46();
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v64)
          {
            goto LABEL_48;
          }

LABEL_44:
          OUTLINED_FUNCTION_0_123();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v86, v65);
          if (v50 == v52)
          {

            v66 = v74;
            v67 = 1;
            goto LABEL_49;
          }

          continue;
        }

LABEL_48:

        OUTLINED_FUNCTION_0_132();
        v71 = v74;
        _s15ConversationKit15RecentsCallItemVWObTm_2(v86, v74, v72);
        v66 = v71;
        v67 = 0;
LABEL_49:
        __swift_storeEnumTagSinglePayload(v66, v67, 1, v15);
LABEL_50:
        OUTLINED_FUNCTION_30_0();
        return;
    }
  }
}

void RecentsCollectionViewModel.videoMessageCallItem(withUUID:)()
{
  OUTLINED_FUNCTION_29();
  v45 = v1;
  v47 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  v46 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0 + 64;
  OUTLINED_FUNCTION_2_55();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v49 = v18;

  v19 = 0;
  v44 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v50 = v11;
  v48 = v8;
  do
  {
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v17)
          {
            goto LABEL_18;
          }

          v15 = *(v12 + 8 * v21);
          ++v19;
          if (v15)
          {
            v19 = v21;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_7:
      v22 = *(*(v49 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v15)))));
      v23 = *(v22 + 16);
      v24 = *(v20 + 2);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_35;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v20 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v20 = v25;
      }

      v11 = v50;
      v15 &= v15 - 1;
      if (!*(v22 + 16))
      {
        break;
      }

      if ((*(v20 + 3) >> 1) - *(v20 + 2) < v23)
      {
        goto LABEL_36;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
      v11 = v50;
      swift_arrayInitWithCopy();

      if (v23)
      {
        v26 = *(v20 + 2);
        v27 = __OFADD__(v26, v23);
        v28 = v26 + v23;
        if (v27)
        {
          goto LABEL_37;
        }

        *(v20 + 2) = v28;
      }
    }
  }

  while (!v23);
  __break(1u);
LABEL_18:
  v50 = v20;

  v29 = *(v50 + 2);
  if (v29)
  {
    v30 = (v50 + 32);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = v46;
    do
    {
      outlined init with copy of IDSLookupManager(v30, v52);
      outlined init with take of ImageName(v52, &v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
      v33 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v6, v33 ^ 1u, 1, v32);
      if (__swift_getEnumTagSinglePayload(v6, 1, v32) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit15RecentsCallItemVSgMd);
      }

      else
      {
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v6, v11, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v31 = v38;
        }

        v35 = *(v31 + 16);
        if (v35 >= *(v31 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v31 = v39;
        }

        *(v31 + 16) = v35 + 1;
        OUTLINED_FUNCTION_0_132();
        _s15ConversationKit15RecentsCallItemVWObTm_2(v11, v36, v37);
      }

      v30 += 40;
      --v29;
    }

    while (v29);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
    v32 = v46;
  }

  if (*(v31 + 16))
  {
    MEMORY[0x1EEE9AC00](v40);
    *(&v44 - 2) = v45;
    specialized Sequence.first(where:)(partial apply for closure #3 in RecentsCollectionViewModel.videoMessageCallItem(withUUID:), v31, v47);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v32);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #3 in RecentsCollectionViewModel.videoMessageCallItem(withUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v20)
  {
    v21 = v20;
    v33 = v10;
    v22 = a2;
    v23 = [v20 messageUUID];

    if (v23)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v16, v24, 1, v3);
    outlined init with take of UUID?(v16, v19);
    a2 = v22;
    v10 = v33;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v3);
  }

  v25 = v35;
  (*(v35 + 16))(v13, a2, v3);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
  v26 = *(v5 + 48);
  outlined init with copy of UUID?(v19, v7);
  outlined init with copy of UUID?(v13, &v7[v26]);
  if (__swift_getEnumTagSinglePayload(v7, 1, v3) != 1)
  {
    outlined init with copy of UUID?(v7, v10);
    if (__swift_getEnumTagSinglePayload(&v7[v26], 1, v3) != 1)
    {
      v28 = &v7[v26];
      v29 = v34;
      (*(v25 + 32))(v34, v28, v3);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v25 + 8);
      v30(v29, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
      v30(v10, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSgMd);
      return v27 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
    (*(v25 + 8))(v10, v3);
    goto LABEL_12;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(&v7[v26], 1, v3) != 1)
  {
LABEL_12:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSg_ADtMd);
    v27 = 0;
    return v27 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSgMd);
  v27 = 1;
  return v27 & 1;
}

uint64_t closure #1 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v41 = (&v34 - v9);
  v40 = type metadata accessor for Date();
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = a1;
  v43 = &v34 - v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v39 = *(v14 + 32);
  v15 = v39(v13, v14) & 1;
  v16 = a2[3];
  v17 = a2[4];
  v35 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v16);
  if (v15 != ((*(v17 + 32))(v16, v17) & 1))
  {
    return v39(v13, v14) & 1;
  }

  v19 = v42;
  v20 = v42[3];
  v21 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v20);
  v22 = v41;
  (*(v21 + 8))(v20, v21);
  v23 = v40;
  if (__swift_getEnumTagSinglePayload(v22, 1, v40) != 1)
  {
    v24 = v36;
    v41 = *(v36 + 32);
    v41(v43, v22, v23);
    v25 = v35[3];
    v26 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v25);
    v22 = v37;
    (*(v26 + 8))(v25, v26);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      v31 = v34;
      v41(v34, v22, v23);
      v32 = v43;
      v30 = static Date.> infix(_:_:)();
      v33 = *(v24 + 8);
      v33(v31, v23);
      v33(v32, v23);
      return v30 & 1;
    }

    (*(v24 + 8))(v43, v23);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation4DateVSgMd);
  v27 = v19[3];
  v28 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v27);
  v29 = v38;
  (*(v28 + 8))(v27, v28);
  v30 = __swift_getEnumTagSinglePayload(v29, 1, v23) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s10Foundation4DateVSgMd);
  return v30 & 1;
}

uint64_t closure #2 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(void *a1, void *a2)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v29 - v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = *(v17 + 8);
  v34 = v19;
  v35 = v20;
  v20(v18, v17);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v8 = v11;
  }

  else
  {
    v30 = v13;
    v31 = v2;
    v29 = *(v13 + 32);
    v29(v37, v11, v12);
    v22 = v33[3];
    v21 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v22);
    (*(v21 + 8))(v22, v21);
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
    {
      v25 = v32;
      v29(v32, v8, v12);
      v26 = v37;
      v24 = static Date.> infix(_:_:)();
      v27 = *(v30 + 8);
      v27(v25, v12);
      v27(v26, v12);
      return v24 & 1;
    }

    (*(v30 + 8))(v37, v12);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4DateVSgMd);
  v23 = v36;
  v35(v18, v17);
  v24 = __swift_getEnumTagSinglePayload(v23, 1, v12) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s10Foundation4DateVSgMd);
  return v24 & 1;
}

void closure #1 in static RecentsCollectionViewModel.== infix(_:_:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v71 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v63 - v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  if (v15 == (*(v19 + 24))(v18, v19) && v17 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  outlined init with copy of IDSLookupManager(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
  v23 = v71;
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v23);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit15RecentsCallItemVSgMd);
    return;
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
  v24 = v70;
  _s15ConversationKit15RecentsCallItemVWObTm_2(v9, v70, type metadata accessor for RecentsCallItem);
  outlined init with copy of IDSLookupManager(a2, v72);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit15RecentsCallItemVSgMd);
    v32 = v24;
    goto LABEL_64;
  }

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v23);
  v25 = v69;
  _s15ConversationKit15RecentsCallItemVWObTm_2(v6, v69, type metadata accessor for RecentsCallItem);
  v26 = v23[8];
  v27 = (v24 + v26);
  v28 = *(v24 + v26 + 8);
  v29 = (v25 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_63;
    }

    v31 = *v27 == *v29 && v28 == v30;
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (v30)
  {
    goto LABEL_63;
  }

  v33 = RecentsCallItem.isRead.getter();
  if (((v33 ^ RecentsCallItem.isRead.getter()) & 1) != 0 || *(v24 + v23[15]) != *(v25 + v23[15]))
  {
    goto LABEL_63;
  }

  v34 = v23[12];
  v35 = *(v24 + v34);
  v36 = *(v25 + v34);
  v37 = specialized Array.count.getter(v35);
  v38 = specialized Array.count.getter(v36);
  v39 = 0;
  v40 = 0;
  v67 = v35 & 0xC000000000000001;
  v68 = v38;
  v64 = v35;
  v65 = v35 + 32;
  v66 = v35 & 0xFFFFFFFFFFFFFF8;
  while (v40 == v37)
  {
    if (v68 == v39)
    {
      goto LABEL_47;
    }

    v41 = 0;
    v40 = v37;
LABEL_33:
    if ((v36 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1BFB22010](v39, v36);
    }

    else
    {
      if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v44 = *(v36 + 8 * v39 + 32);
    }

    v45 = v44;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return;
    }

    if (!v41)
    {
      if (v44)
      {

        goto LABEL_63;
      }

      goto LABEL_47;
    }

    if (!v44)
    {
      goto LABEL_46;
    }

    v46 = [v41 isEqualIgnoringIdentifiers_];

    ++v39;
    if ((v46 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  if (v67)
  {
    v42 = MEMORY[0x1BFB22010](v40, v64);
  }

  else
  {
    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    if (v40 >= *(v66 + 16))
    {
      goto LABEL_70;
    }

    v42 = *(v65 + 8 * v40);
  }

  v41 = v42;
  if (__OFADD__(v40++, 1))
  {
    goto LABEL_69;
  }

  if (v68 != v39)
  {
    goto LABEL_33;
  }

  if (v42)
  {
LABEL_46:

    goto LABEL_63;
  }

LABEL_47:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo9CNContactC_Tt1g5(v64, v36);
  if ((v47 & 1) == 0)
  {
    goto LABEL_63;
  }

  v48 = v70;
  v49 = v71;
  v50 = *(v71 + 20);
  v51 = (v70 + v50);
  v52 = *(v70 + v50 + 8);
  v53 = v69;
  v54 = (v69 + v50);
  v55 = v54[1];
  if (v52)
  {
    if (v55)
    {
      v56 = *v51 == *v54 && v52 == v55;
      if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    if (v55)
    {
      goto LABEL_63;
    }

LABEL_55:
    v57 = *(v49 + 24);
    v58 = (v48 + v57);
    v59 = *(v48 + v57 + 8);
    v60 = (v53 + v57);
    v61 = v60[1];
    if (v59 && v61 && (*v58 != *v60 || v59 != v61))
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_63:
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v69, type metadata accessor for RecentsCallItem);
  v32 = v70;
LABEL_64:
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_3(v32, type metadata accessor for RecentsCallItem);
}

unint64_t lazy protocol witness table accessor for type [RecentsCollectionViewSection] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RecentsCollectionViewSection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RecentsCollectionViewSection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit28RecentsCollectionViewSectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RecentsCollectionViewSection] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecentsCollectionViewSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32RecentsCollectionViewSectionable_pMd);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      type metadata accessor for Participant(0);
      OUTLINED_FUNCTION_40_3();
      v12[0] = v10 + v11;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v147 = a4;
  v148 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v169 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v146 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v146 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v146 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v146 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v146 - v18;
  v173 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v173);
  v160 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v146 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v159 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_102;
  }

  v152 = &v146 - v25;
  v163 = v26;
  v28 = 0;
  v170 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v164 = (v24 + 8);
  v165 = v12;
  v172 = v9;
  while (1)
  {
    v30 = v28++;
    v151 = v30;
    if (v28 < v27)
    {
      break;
    }

LABEL_27:
    v64 = v159[1];
    if (v28 >= v64)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v28, v151))
    {
      goto LABEL_134;
    }

    if (v28 - v151 >= v147)
    {
      goto LABEL_35;
    }

    v65 = v151 + v147;
    if (__OFADD__(v151, v147))
    {
      goto LABEL_135;
    }

    if (v65 >= v64)
    {
      v65 = v159[1];
    }

    if (v65 < v151)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v28 == v65)
    {
LABEL_35:
      v66 = v161;
      goto LABEL_36;
    }

    v154 = v29;
    v171 = *v159;
    v111 = v171 + 40 * v28;
    v112 = (v151 - v28);
    v150 = v65;
    do
    {
      v162 = v28;
      v156 = v112;
      v113 = v112;
      v157 = v111;
      do
      {
        v181 = v113;
        outlined init with copy of IDSLookupManager(v111, &v178);
        v174 = (v111 - 40);
        outlined init with copy of IDSLookupManager(v111 - 40, v175);
        v114 = v179;
        v115 = v180;
        v116 = __swift_project_boxed_opaque_existential_1(&v178, v179);
        v117 = *(v115 + 8);
        v117(v114, v115);
        v118 = v173;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v173);
        v120 = v12;
        if (EnumTagSinglePayload == 1)
        {
          goto LABEL_92;
        }

        v167 = v116;
        v168 = v117;
        v121 = v163;
        v166 = *v170;
        v166(v163, v12, v118);
        v122 = v176;
        v123 = v177;
        __swift_project_boxed_opaque_existential_1(v175, v176);
        v124 = v122;
        v125 = v172;
        (*(v123 + 8))(v124, v123);
        if (__swift_getEnumTagSinglePayload(v125, 1, v118) == 1)
        {
          (*v164)(v121, v118);
          v120 = v125;
          v12 = v165;
          v117 = v168;
LABEL_92:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v120, &_s10Foundation4DateVSgMd);
          v126 = v12;
          v127 = v169;
          v117(v114, v115);
          v128 = __swift_getEnumTagSinglePayload(v127, 1, v118);
          v129 = v127;
          v12 = v126;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s10Foundation4DateVSgMd);
          __swift_destroy_boxed_opaque_existential_1(v175);
          __swift_destroy_boxed_opaque_existential_1(&v178);
          if (v128 == 1)
          {
            break;
          }

          goto LABEL_95;
        }

        v130 = v160;
        v166(v160, v125, v118);
        v131 = static Date.> infix(_:_:)();
        v132 = *v164;
        (*v164)(v130, v118);
        v132(v121, v118);
        __swift_destroy_boxed_opaque_existential_1(v175);
        __swift_destroy_boxed_opaque_existential_1(&v178);
        v12 = v165;
        if ((v131 & 1) == 0)
        {
          break;
        }

LABEL_95:
        v133 = v181;
        if (!v171)
        {
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
          return;
        }

        outlined init with take of ImageName(v111, &v178);
        v134 = v174;
        v135 = v174[1];
        *v111 = *v174;
        *(v111 + 16) = v135;
        *(v111 + 32) = *(v134 + 4);
        outlined init with take of ImageName(&v178, v134);
        v111 = v134;
        v136 = __CFADD__(v133, 1);
        v113 = v133 + 1;
      }

      while (!v136);
      v28 = v162 + 1;
      v111 = v157 + 40;
      v112 = (v156 - 1);
    }

    while (v162 + 1 != v150);
    v28 = v150;
    v66 = v161;
    v29 = v154;
LABEL_36:
    if (v28 < v151)
    {
      goto LABEL_133;
    }

    v161 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v137;
    }

    v67 = *(v29 + 16);
    v68 = v67 + 1;
    if (v67 >= *(v29 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v138;
    }

    *(v29 + 16) = v68;
    v69 = v29 + 32;
    v70 = (v29 + 32 + 16 * v67);
    *v70 = v151;
    v70[1] = v28;
    v181 = *v148;
    if (!v181)
    {
      goto LABEL_143;
    }

    if (v67)
    {
      while (1)
      {
        v71 = v68 - 1;
        v72 = (v69 + 16 * (v68 - 1));
        v73 = (v29 + 16 * v68);
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v74 = *(v29 + 32);
          v75 = *(v29 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_56:
          if (v77)
          {
            goto LABEL_120;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_123;
          }

          v93 = v72[1];
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_128;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v68 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        if (v68 < 2)
        {
          goto LABEL_122;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_71:
        if (v92)
        {
          goto LABEL_125;
        }

        v98 = *v72;
        v97 = v72[1];
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_127;
        }

        if (v99 < v91)
        {
          goto LABEL_85;
        }

LABEL_78:
        if (v71 - 1 >= v68)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_136;
        }

        if (!*v159)
        {
          goto LABEL_140;
        }

        v103 = v28;
        v104 = (v69 + 16 * (v71 - 1));
        v105 = *v104;
        v106 = v69 + 16 * v71;
        v107 = *(v106 + 8);
        v108 = v161;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v159 + 40 * *v104), (*v159 + 40 * *v106), (*v159 + 40 * v107), v181);
        if (v108)
        {
          goto LABEL_112;
        }

        if (v107 < v105)
        {
          goto LABEL_115;
        }

        v109 = *(v29 + 16);
        if (v71 > v109)
        {
          goto LABEL_116;
        }

        *v104 = v105;
        v104[1] = v107;
        if (v71 >= v109)
        {
          goto LABEL_117;
        }

        v161 = 0;
        v68 = v109 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v106 + 16), v109 - 1 - v71, (v69 + 16 * v71));
        *(v29 + 16) = v109 - 1;
        v110 = v109 > 2;
        v12 = v165;
        v28 = v103;
        if (!v110)
        {
          goto LABEL_85;
        }
      }

      v78 = v69 + 16 * v68;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_118;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_119;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_121;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_124;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = v72[1];
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_132;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_56;
    }

LABEL_85:
    v27 = v159[1];
    if (v28 >= v27)
    {
LABEL_102:
      v181 = *v148;
      if (v181)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_104;
      }

      goto LABEL_144;
    }
  }

  v31 = *v159;
  outlined init with copy of IDSLookupManager(*v159 + 40 * v28, &v178);
  outlined init with copy of IDSLookupManager(v31 + 40 * v30, v175);
  v32 = v161;
  LODWORD(v171) = closure #2 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(&v178, v175);
  v161 = v32;
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(v175);
    __swift_destroy_boxed_opaque_existential_1(&v178);

    return;
  }

  v154 = v29;
  __swift_destroy_boxed_opaque_existential_1(v175);
  __swift_destroy_boxed_opaque_existential_1(&v178);
  v156 = 40 * v30;
  v33 = v31 + 40 * v30 + 80;
  v34 = (v30 + 2);
  v168 = v27;
  while (1)
  {
    v35 = v34;
    if (v28 + 1 >= v27)
    {
      break;
    }

    v181 = v34;
    v162 = v28;
    outlined init with copy of IDSLookupManager(v33, &v178);
    v174 = v33;
    outlined init with copy of IDSLookupManager(v33 - 40, v175);
    v29 = v179;
    v36 = v180;
    v37 = __swift_project_boxed_opaque_existential_1(&v178, v179);
    v38 = *(v36 + 8);
    v39 = v158;
    v38(v29, v36);
    v40 = v173;
    if (__swift_getEnumTagSinglePayload(v39, 1, v173) != 1)
    {
      v166 = v37;
      v157 = v36;
      v167 = v38;
      v41 = v152;
      v42 = *v170;
      (*v170)(v152, v158, v40);
      v44 = v176;
      v43 = v177;
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v45 = v44;
      v46 = v153;
      (*(v43 + 8))(v45, v43);
      if (__swift_getEnumTagSinglePayload(v46, 1, v40) != 1)
      {
        v49 = v41;
        v50 = v149;
        v42(v149, v46, v40);
        v48 = static Date.> infix(_:_:)();
        v51 = *v164;
        (*v164)(v50, v40);
        v51(v49, v40);
        goto LABEL_12;
      }

      (*v164)(v41, v40);
      v39 = v46;
      v38 = v167;
      v36 = v157;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4DateVSgMd);
    v47 = v155;
    v38(v29, v36);
    v48 = __swift_getEnumTagSinglePayload(v47, 1, v40) != 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation4DateVSgMd);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v175);
    __swift_destroy_boxed_opaque_existential_1(&v178);
    v52 = v171 ^ v48;
    v33 = v174 + 40;
    v28 = v162 + 1;
    v35 = v181;
    v34 = v181 + 1;
    v12 = v165;
    v27 = v168;
    if (v52)
    {
      goto LABEL_15;
    }
  }

  v28 = v27;
LABEL_15:
  if ((v171 & 1) == 0)
  {
LABEL_26:
    v29 = v154;
    goto LABEL_27;
  }

  v53 = v151;
  if (v28 >= v151)
  {
    if (v151 < v28)
    {
      if (v27 >= v35)
      {
        v54 = v35;
      }

      else
      {
        v54 = v27;
      }

      v55 = 40 * v54 - 40;
      v56 = v28;
      v57 = v156;
      do
      {
        if (v53 != --v56)
        {
          v58 = *v159;
          if (!*v159)
          {
            goto LABEL_142;
          }

          v59 = v58 + v57;
          v60 = v58 + v55;
          v61 = v57;
          outlined init with take of ImageName(v58 + v57, &v178);
          v62 = *(v60 + 32);
          v63 = *(v60 + 16);
          *v59 = *v60;
          *(v59 + 16) = v63;
          *(v59 + 32) = v62;
          outlined init with take of ImageName(&v178, v60);
          v57 = v61;
        }

        ++v53;
        v55 -= 40;
        v57 += 40;
      }

      while (v53 < v56);
    }

    goto LABEL_26;
  }

LABEL_137:
  __break(1u);
LABEL_138:
  v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
LABEL_104:
  v154 = v29;
  v139 = (v29 + 16);
  v140 = *(v29 + 16);
  v141 = v161;
  while (v140 >= 2)
  {
    if (!*v159)
    {
      goto LABEL_141;
    }

    v142 = (v154 + 16 * v140);
    v143 = *v142;
    v144 = &v139[2 * v140];
    v29 = *(v144 + 1);
    specialized _merge<A>(low:mid:high:buffer:by:)((*v159 + 40 * *v142), (*v159 + 40 * *v144), (*v159 + 40 * v29), v181);
    if (v141)
    {
      break;
    }

    if (v29 < v143)
    {
      goto LABEL_129;
    }

    if (v140 - 2 >= *v139)
    {
      goto LABEL_130;
    }

    *v142 = v143;
    v142[1] = v29;
    v145 = *v139 - v140;
    if (*v139 < v140)
    {
      goto LABEL_131;
    }

    v140 = *v139 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v144 + 16, v145, v144);
    *v139 = v140;
  }

LABEL_112:
}

{
  v160 = a4;
  v162 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v179 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v159 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v182 = &v159 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v165 = &v159 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v164 = &v159 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v159 - v16;
  v17 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v17);
  v172 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v159 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v173 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v192 = *v162;
    if (!v192)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_111;
  }

  v163 = &v159 - v25;
  v181 = v23;
  v28 = 0;
  v177 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v176 = (v24 + 8);
  v174 = v26;
  while (1)
  {
    v30 = v28 + 1;
    v167 = v28;
    if (v28 + 1 >= v27)
    {
      goto LABEL_30;
    }

    v31 = v28;
    v32 = *v173;
    v33 = v28 + 1;
    outlined init with copy of IDSLookupManager(*v173 + 40 * (v28 + 1), &v189);
    outlined init with copy of IDSLookupManager(v32 + 40 * v31, v186);
    v34 = v178;
    LODWORD(v184) = closure #1 in static RecentsCollectionViewModel.sections(from:now:upcomingSectionItemLimit:suggestedContact:)(&v189, v186);
    v178 = v34;
    if (v34)
    {
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      goto LABEL_121;
    }

    __swift_destroy_boxed_opaque_existential_1(v186);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    v170 = 40 * v31;
    v35 = v32 + 40 * v31 + 80;
    v36 = (v31 + 2);
    v30 = v33;
    v171 = v29;
    v183 = v27;
    while (1)
    {
      v37 = v36;
      if (v30 + 1 >= v27)
      {
        break;
      }

      v192 = v36;
      v180 = v30;
      outlined init with copy of IDSLookupManager(v35, &v189);
      v185 = v35;
      outlined init with copy of IDSLookupManager(v35 - 40, v186);
      v38 = v190;
      v39 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v40 = *(v39 + 32);
      v41 = v40(v38, v39);
      v42 = v187;
      v43 = v188;
      __swift_project_boxed_opaque_existential_1(v186, v187);
      if ((v41 ^ (*(v43 + 32))(v42, v43)))
      {
        v44 = v40(v38, v39);
        v29 = v171;
        v27 = v183;
      }

      else
      {
        v45 = v190;
        v46 = v191;
        __swift_project_boxed_opaque_existential_1(&v189, v190);
        v47 = v168;
        (*(v46 + 8))(v45, v46);
        v48 = v181;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v181);
        v29 = v171;
        v27 = v183;
        if (EnumTagSinglePayload != 1)
        {
          v50 = *v177;
          v51 = v163;
          (*v177)(v163, v168, v48);
          v52 = v187;
          v53 = v188;
          __swift_project_boxed_opaque_existential_1(v186, v187);
          v54 = v52;
          v55 = v164;
          (*(v53 + 8))(v54, v53);
          if (__swift_getEnumTagSinglePayload(v55, 1, v48) != 1)
          {
            v59 = v161;
            v50(v161, v55, v48);
            v44 = static Date.> infix(_:_:)();
            v60 = *v176;
            (*v176)(v59, v48);
            v60(v51, v48);
            goto LABEL_14;
          }

          (*v176)(v51, v48);
          v47 = v55;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation4DateVSgMd);
        v56 = v190;
        v57 = v191;
        __swift_project_boxed_opaque_existential_1(&v189, v190);
        v58 = v165;
        (*(v57 + 8))(v56, v57);
        v44 = __swift_getEnumTagSinglePayload(v58, 1, v48) != 1;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s10Foundation4DateVSgMd);
      }

LABEL_14:
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v35 = v185 + 40;
      v30 = v180 + 1;
      v37 = v192;
      v36 = v192 + 1;
      if ((v184 ^ v44))
      {
        goto LABEL_17;
      }
    }

    v30 = v27;
LABEL_17:
    if ((v184 & 1) == 0)
    {
      v28 = v167;
      goto LABEL_30;
    }

    v28 = v167;
    if (v30 < v167)
    {
      goto LABEL_145;
    }

    if (v167 < v30)
    {
      if (v27 >= v37)
      {
        v61 = v37;
      }

      else
      {
        v61 = v27;
      }

      v62 = 40 * v61 - 40;
      v28 = v167;
      v63 = v30;
      v64 = v167;
      v65 = v170;
      do
      {
        if (v64 != --v63)
        {
          v66 = *v173;
          if (!*v173)
          {
            goto LABEL_150;
          }

          v67 = v30;
          v68 = v66 + v65;
          v69 = v66 + v62;
          outlined init with take of ImageName(v66 + v65, &v189);
          v70 = *(v69 + 32);
          v71 = *(v69 + 16);
          *v68 = *v69;
          *(v68 + 16) = v71;
          *(v68 + 32) = v70;
          outlined init with take of ImageName(&v189, v69);
          v30 = v67;
          v28 = v167;
        }

        ++v64;
        v62 -= 40;
        v65 += 40;
      }

      while (v64 < v63);
    }

LABEL_30:
    v72 = v173[1];
    if (v30 < v72)
    {
      v124 = __OFSUB__(v30, v28);
      v73 = v30 - v28;
      if (v124)
      {
        goto LABEL_142;
      }

      if (v73 >= v160)
      {
LABEL_56:
        v28 = v167;
        goto LABEL_57;
      }

      if (__OFADD__(v167, v160))
      {
        goto LABEL_143;
      }

      if (v167 + v160 >= v72)
      {
        v74 = v173[1];
      }

      else
      {
        v74 = v167 + v160;
      }

      if (v74 < v167)
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
LABEL_111:
        v151 = (v29 + 16);
        v152 = *(v29 + 16);
        while (v152 >= 2)
        {
          if (!*v173)
          {
            goto LABEL_149;
          }

          v153 = v29;
          v154 = (v29 + 16 * v152);
          v155 = *v154;
          v156 = &v151[2 * v152];
          v29 = *(v156 + 1);
          v157 = v178;
          specialized _merge<A>(low:mid:high:buffer:by:)((*v173 + 40 * *v154), (*v173 + 40 * *v156), *v173 + 40 * v29, v192);
          v178 = v157;
          if (v157)
          {
            break;
          }

          if (v29 < v155)
          {
            goto LABEL_137;
          }

          if (v152 - 2 >= *v151)
          {
            goto LABEL_138;
          }

          *v154 = v155;
          v154[1] = v29;
          v158 = *v151 - v152;
          if (*v151 < v152)
          {
            goto LABEL_139;
          }

          v152 = *v151 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v156 + 16, v158, v156);
          *v151 = v152;
          v29 = v153;
        }

LABEL_121:

        return;
      }

      v28 = v167;
      if (v30 != v74)
      {
        break;
      }
    }

LABEL_57:
    if (v30 < v28)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v149;
    }

    v105 = *(v29 + 16);
    v104 = *(v29 + 24);
    v106 = v105 + 1;
    v107 = v167;
    v180 = v30;
    if (v105 >= v104 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v107 = v167;
      v29 = v150;
    }

    *(v29 + 16) = v106;
    v108 = v29 + 32;
    v109 = (v29 + 32 + 16 * v105);
    *v109 = v107;
    v109[1] = v180;
    v110 = *v162;
    if (!*v162)
    {
      goto LABEL_151;
    }

    if (v105)
    {
      while (1)
      {
        v111 = v106 - 1;
        v112 = (v108 + 16 * (v106 - 1));
        v113 = (v29 + 16 * v106);
        if (v106 >= 4)
        {
          break;
        }

        if (v106 == 3)
        {
          v114 = *(v29 + 32);
          v115 = *(v29 + 40);
          v124 = __OFSUB__(v115, v114);
          v116 = v115 - v114;
          v117 = v124;
LABEL_77:
          if (v117)
          {
            goto LABEL_128;
          }

          v129 = *v113;
          v128 = v113[1];
          v130 = __OFSUB__(v128, v129);
          v131 = v128 - v129;
          v132 = v130;
          if (v130)
          {
            goto LABEL_131;
          }

          v133 = v112[1];
          v134 = v133 - *v112;
          if (__OFSUB__(v133, *v112))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v131, v134))
          {
            goto LABEL_136;
          }

          if (v131 + v134 >= v116)
          {
            if (v116 < v134)
            {
              v111 = v106 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v106 < 2)
        {
          goto LABEL_130;
        }

        v136 = *v113;
        v135 = v113[1];
        v124 = __OFSUB__(v135, v136);
        v131 = v135 - v136;
        v132 = v124;
LABEL_92:
        if (v132)
        {
          goto LABEL_133;
        }

        v138 = *v112;
        v137 = v112[1];
        v124 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v124)
        {
          goto LABEL_135;
        }

        if (v139 < v131)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v111 - 1 >= v106)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v173)
        {
          goto LABEL_148;
        }

        v143 = (v108 + 16 * (v111 - 1));
        v144 = *v143;
        v145 = v108 + 16 * v111;
        v146 = *(v145 + 8);
        v147 = v178;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v173 + 40 * *v143), (*v173 + 40 * *v145), *v173 + 40 * v146, v110);
        v178 = v147;
        if (v147)
        {
          goto LABEL_121;
        }

        if (v146 < v144)
        {
          goto LABEL_123;
        }

        v148 = *(v29 + 16);
        if (v111 > v148)
        {
          goto LABEL_124;
        }

        *v143 = v144;
        v143[1] = v146;
        if (v111 >= v148)
        {
          goto LABEL_125;
        }

        v106 = v148 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v145 + 16), v148 - 1 - v111, (v108 + 16 * v111));
        *(v29 + 16) = v148 - 1;
        if (v148 <= 2)
        {
          goto LABEL_106;
        }
      }

      v118 = v108 + 16 * v106;
      v119 = *(v118 - 64);
      v120 = *(v118 - 56);
      v124 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      if (v124)
      {
        goto LABEL_126;
      }

      v123 = *(v118 - 48);
      v122 = *(v118 - 40);
      v124 = __OFSUB__(v122, v123);
      v116 = v122 - v123;
      v117 = v124;
      if (v124)
      {
        goto LABEL_127;
      }

      v125 = v113[1];
      v126 = v125 - *v113;
      if (__OFSUB__(v125, *v113))
      {
        goto LABEL_129;
      }

      v124 = __OFADD__(v116, v126);
      v127 = v116 + v126;
      if (v124)
      {
        goto LABEL_132;
      }

      if (v127 >= v121)
      {
        v141 = *v112;
        v140 = v112[1];
        v124 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v124)
        {
          goto LABEL_140;
        }

        if (v116 < v142)
        {
          v111 = v106 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v27 = v173[1];
    v28 = v180;
    if (v180 >= v27)
    {
      goto LABEL_109;
    }
  }

  v171 = v29;
  v183 = *v173;
  v75 = v183 + 40 * v30;
  v76 = v167 - v30;
  v166 = v74;
  while (2)
  {
    v180 = v30;
    v169 = v76;
    v77 = v76;
    v170 = v75;
LABEL_41:
    v185 = v77;
    outlined init with copy of IDSLookupManager(v75, &v189);
    v192 = v75;
    v184 = (v75 - 40);
    outlined init with copy of IDSLookupManager(v75 - 40, v186);
    v78 = v190;
    v79 = v191;
    __swift_project_boxed_opaque_existential_1(&v189, v190);
    v80 = *(v79 + 32);
    v81 = v80(v78, v79);
    v83 = v187;
    v82 = v188;
    __swift_project_boxed_opaque_existential_1(v186, v187);
    if ((v81 ^ (*(v82 + 32))(v83, v82)))
    {
      v84 = v80(v78, v79);
LABEL_43:
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v85 = v192;
      if ((v84 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v86 = v190;
      v87 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v88 = v182;
      (*(v87 + 8))(v86, v87);
      v89 = v181;
      if (__swift_getEnumTagSinglePayload(v88, 1, v181) != 1)
      {
        v90 = *v177;
        v91 = v174;
        (*v177)(v174, v182, v89);
        v92 = v187;
        v93 = v188;
        __swift_project_boxed_opaque_existential_1(v186, v187);
        v94 = v92;
        v95 = v175;
        (*(v93 + 8))(v94, v93);
        if (__swift_getEnumTagSinglePayload(v95, 1, v89) != 1)
        {
          v102 = v172;
          v90(v172, v95, v89);
          v84 = static Date.> infix(_:_:)();
          v103 = *v176;
          (*v176)(v102, v89);
          v103(v91, v89);
          goto LABEL_43;
        }

        (*v176)(v91, v89);
        v88 = v95;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s10Foundation4DateVSgMd);
      v96 = v190;
      v97 = v191;
      __swift_project_boxed_opaque_existential_1(&v189, v190);
      v98 = v179;
      (*(v97 + 8))(v96, v97);
      LODWORD(v96) = __swift_getEnumTagSinglePayload(v98, 1, v89);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s10Foundation4DateVSgMd);
      __swift_destroy_boxed_opaque_existential_1(v186);
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v85 = v192;
      if (v96 == 1)
      {
        goto LABEL_54;
      }
    }

    v99 = v185;
    if (v183)
    {
      outlined init with take of ImageName(v85, &v189);
      v75 = v184;
      v100 = v184[1];
      *v85 = *v184;
      *(v85 + 1) = v100;
      *(v85 + 4) = *(v75 + 32);
      outlined init with take of ImageName(&v189, v75);
      v101 = __CFADD__(v99, 1);
      v77 = v99 + 1;
      if (v101)
      {
LABEL_54:
        v30 = v180 + 1;
        v75 = v170 + 40;
        v76 = v169 - 1;
        if (v180 + 1 == v166)
        {
          v30 = v166;
          v29 = v171;
          goto LABEL_56;
        }

        continue;
      }

      goto LABEL_41;
    }

    break;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v97 = v7;
        v9 = (*a3 + 16 * v6);
        v11 = *v9;
        v10 = v9[1];
        v12 = *a3 + 16 * v8;
        v13 = 16 * v8;
        v104 = v11;
        v105 = v10;
        lazy protocol witness table accessor for type String and conformance String();
        v4 = &v104;
        v14 = StringProtocol.localizedStandardCompare<A>(_:)();
        v15 = v12 + 24;
        v98 = v8;
        v16 = v8 + 2;
        while (1)
        {
          v17 = v16;
          if (++v6 >= v5)
          {
            break;
          }

          v19 = v15 + 16;
          v18 = *(v15 + 16);
          v104 = *(v15 + 8);
          v105 = v18;
          v4 = &v104;
          v20 = (v14 == -1) ^ (StringProtocol.localizedStandardCompare<A>(_:)() != -1);
          v16 = v17 + 1;
          v15 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v14 == -1)
        {
          if (v6 < v98)
          {
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
            return;
          }

          if (v98 >= v6)
          {
            v7 = v97;
            v8 = v98;
          }

          else
          {
            if (v5 >= v17)
            {
              v21 = v17;
            }

            else
            {
              v21 = v5;
            }

            v22 = 16 * v21;
            v23 = v6;
            v24 = v98;
            v7 = v97;
            v8 = v98;
            do
            {
              if (v24 != --v23)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v26 = (v25 + v13);
                v27 = v25 + v22;
                v28 = *v26;
                v29 = v26[1];
                *v26 = *(v27 - 16);
                *(v27 - 16) = v28;
                *(v27 - 8) = v29;
              }

              ++v24;
              v22 -= 16;
              v13 += 16;
            }

            while (v24 < v23);
          }
        }

        else
        {
          v7 = v97;
          v8 = v98;
        }
      }

      v30 = a3[1];
      if (v6 < v30)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_123;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_124;
          }

          if (v8 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v8 + a4;
          }

          if (v31 < v8)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v6 != v31)
          {
            v32 = *a3;
            lazy protocol witness table accessor for type String and conformance String();
            v33 = (v32 + 16 * v6);
            v99 = v8;
            v34 = v8 - v6;
            v101 = v31;
            do
            {
              v35 = (v32 + 16 * v6);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v104 = v36;
                v105 = v37;
                v4 = &v104;
                if (StringProtocol.localizedStandardCompare<A>(_:)() != -1)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_128;
                }

                v36 = *v39;
                v37 = v39[1];
                *v39 = *(v39 - 1);
                *(v39 - 1) = v37;
                *(v39 - 2) = v36;
                v39 -= 2;
              }

              while (!__CFADD__(v38++, 1));
              ++v6;
              v33 += 2;
              --v34;
            }

            while (v6 != v101);
            v6 = v101;
            v8 = v99;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v86;
      }

      v41 = *(v7 + 2);
      v42 = v41 + 1;
      if (v41 >= *(v7 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v87;
      }

      *(v7 + 2) = v42;
      v4 = v7 + 32;
      v43 = &v7[16 * v41 + 32];
      *v43 = v8;
      *(v43 + 1) = v6;
      v102 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v41)
      {
        while (1)
        {
          v44 = v42 - 1;
          v45 = &v4[16 * v42 - 16];
          v46 = &v7[16 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v47 = *(v7 + 4);
            v48 = *(v7 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_60:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = *(v46 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = *(v45 + 1);
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v42 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v42 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = *(v46 + 1);
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_75:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = *(v45 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v44 - 1 >= v42)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v76 = v7;
          v77 = &v4[16 * v44 - 16];
          v78 = *v77;
          v79 = v44;
          v7 = &v4[16 * v44];
          v80 = *(v7 + 1);
          v81 = v106;
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v77), (*a3 + 16 * *v7), (*a3 + 16 * v80), v102);
          v106 = v81;
          if (v81)
          {
            goto LABEL_91;
          }

          if (v80 < v78)
          {
            goto LABEL_104;
          }

          v82 = v6;
          v83 = v4;
          v4 = *(v76 + 2);
          if (v79 > v4)
          {
            goto LABEL_105;
          }

          *v77 = v78;
          *(v77 + 1) = v80;
          if (v79 >= v4)
          {
            goto LABEL_106;
          }

          v84 = v79;
          v42 = (v4 - 1);
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7 + 16, &v4[-v84 - 1], v7);
          v7 = v76;
          *(v76 + 2) = v4 - 1;
          v85 = v4 > 2;
          v4 = v83;
          v6 = v82;
          if (!v85)
          {
            goto LABEL_89;
          }
        }

        v51 = &v4[16 * v42];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = *(v46 + 1);
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = *(v45 + 1);
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_121;
          }

          if (v49 < v75)
          {
            v44 = v42 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_93;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_93:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v88 = (v7 + 16);
  for (i = *(v7 + 2); i >= 2; *v88 = i)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v90 = &v7[16 * i];
    v91 = *v90;
    v92 = &v88[2 * i];
    v93 = *(v92 + 1);
    v94 = v106;
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v90), (*a3 + 16 * *v92), (*a3 + 16 * v93), v4);
    v106 = v94;
    if (v94)
    {
      break;
    }

    if (v93 < v91)
    {
      goto LABEL_118;
    }

    if (i - 2 >= *v88)
    {
      goto LABEL_119;
    }

    *v90 = v91;
    *(v90 + 1) = v93;
    v95 = *v88 - i;
    if (*v88 < i)
    {
      goto LABEL_120;
    }

    i = *v88 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v92 + 16, v95, v92);
  }

LABEL_91:
}

{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v91, *a1, a3);
LABEL_102:
}

{
  v95 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = *a3;
        v10 = *a3 + 40 * i;
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);
        v13 = *a3 + 40 * v8;
        if (v11 == *(v13 + 16) && v12 == *(v13 + 24))
        {
          v15 = 0;
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v16 = (v9 + 40 * v8 + 104);
        for (i = v8 + 2; i < v5; ++i)
        {
          if (*(v16 - 1) == *(v16 - 6) && *v16 == *(v16 - 5))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          v16 += 5;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_122;
        }

        if (v8 < i)
        {
          v18 = 40 * i - 16;
          v19 = 40 * v8 + 24;
          v20 = i;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 24);
              v25 = v22 + v18;
              v26 = *(v23 - 1);
              v27 = *v23;
              v28 = *(v25 + 8);
              v29 = *(v25 - 8);
              *(v23 - 24) = *(v25 - 24);
              *(v23 - 8) = v29;
              *(v23 + 1) = v28;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
            }

            ++v21;
            v18 -= 40;
            v19 += 40;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (i < v30)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_121;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v8 + a4;
          }

          if (v31 < v8)
          {
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
            return;
          }

          if (i != v31)
          {
            v32 = *a3;
            v33 = *a3 + 40 * i - 40;
            v34 = v8 - i;
            do
            {
              v35 = v32 + 40 * i;
              v36 = *(v35 + 16);
              v37 = *(v35 + 24);
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *(v39 + 16) && v37 == *(v39 + 24);
                if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 48);
                v36 = *(v39 + 56);
                v42 = *(v39 + 16);
                v44 = *(v39 + 32);
                v43 = *(v39 + 40);
                *(v39 + 40) = *v39;
                v45 = *(v39 + 64);
                *(v39 + 56) = v42;
                *(v39 + 72) = v44;
                *(v39 + 24) = v45;
                v37 = v45;
                *v39 = v43;
                *(v39 + 8) = v41;
                *(v39 + 16) = v36;
                v39 -= 40;
              }

              while (!__CFADD__(v38++, 1));
              ++i;
              v33 += 40;
              --v34;
            }

            while (i != v31);
            i = v31;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v89;
      }

      v47 = v7[2];
      v48 = v47 + 1;
      if (v47 >= v7[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v90;
      }

      v7[2] = v48;
      v49 = v7 + 4;
      v50 = &v7[2 * v47 + 4];
      *v50 = v8;
      v50[1] = i;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v7[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v7[4];
            v55 = v7[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_69:
            if (v57)
            {
              goto LABEL_110;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_113;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_118;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v48 < 2)
          {
            goto LABEL_112;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_84:
          if (v72)
          {
            goto LABEL_115;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_117;
          }

          if (v79 < v71)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v51 - 1 >= v48)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v83 = v7;
          v84 = &v49[2 * v51 - 2];
          v85 = *v84;
          v86 = &v49[2 * v51];
          v87 = v86[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v84), (*a3 + 40 * *v86), *a3 + 40 * v87, v93);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v87 < v85)
          {
            goto LABEL_105;
          }

          v88 = v83[2];
          if (v51 > v88)
          {
            goto LABEL_106;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v51 >= v88)
          {
            goto LABEL_107;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v86 + 2, 16 * (v88 - 1 - v51));
          v7 = v83;
          v83[2] = v88 - 1;
          if (v88 <= 2)
          {
            goto LABEL_98;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_108;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_109;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_111;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_114;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_119;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (i >= v5)
      {
        v95 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v95, *a1, a3);
LABEL_103:
}