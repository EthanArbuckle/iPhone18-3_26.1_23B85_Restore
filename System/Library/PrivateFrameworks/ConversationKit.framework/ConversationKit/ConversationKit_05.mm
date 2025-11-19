unint64_t OUTLINED_FUNCTION_345(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_345_0(uint64_t result)
{
  v2[8] = result;
  v2[4] = v1;
  v2[5] = v3;
  return result;
}

id ConversationControlsNoticeCoordinator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator_conversationManager;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  *&v0[v7] = v9;
  *&v0[OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator_unblockTimer] = 0;
  v10 = OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator__activeNotice;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  outlined init with copy of Notice?(v18, v17, &_s15ConversationKit6Notice_pSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pSgMd);
  Published.init(initialValue:)();
  OUTLINED_FUNCTION_158();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, v12);
  (*(v3 + 32))(&v0[v10], v6, v1);
  *&v0[OBJC_IVAR____TtC15ConversationKit37ConversationControlsNoticeCoordinator____lazy_storage___noticeQueue] = 0;
  v13 = type metadata accessor for ConversationControlsNoticeCoordinator();
  v16.receiver = v0;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t outlined init with copy of Notice?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t outlined init with copy of (CGFloat, AutoplayCandidate)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_446()
{

  return outlined init with take of TapInteractionHandler((v0 - 168), v0 - 128);
}

void OUTLINED_FUNCTION_341(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_433()
{
}

id OUTLINED_FUNCTION_200(uint64_t a1)
{

  return [v2 (v4 + 2040)];
}

uint64_t OUTLINED_FUNCTION_200_3()
{

  return outlined destroy of CallControlsService?(v1 - 160, v0);
}

uint64_t ConversationControlsJoinCountdownActionController.init()()
{
  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  type metadata accessor for ConversationControlsJoinCountdownActionController.CountdownInfo(0);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v1 = swift_allocObject();
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = [objc_allocWithZone(MEMORY[0x1E69D8C28]) initWithObject_];

  *(v0 + 16) = v9;
  return v0;
}

uint64_t CallGameController.init()()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  *(v0 + 16) = 1;
  v9 = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v9;
  v10 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  v11 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v8, v2);
  *(v1 + 24) = v11;

  return v1;
}

uint64_t sub_1BBCB3AA8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

void ConversationController.hasMessageCapableRemoteParticipants.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  ConversationController.remoteAndAssociatedParticipants.getter();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    OUTLINED_FUNCTION_40_3();
    v9 = *(v3 + 28);
    do
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        JUMPOUT(0x1BBCB3DE0);
      }

      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v10, v1);
      v11 = *(v1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      v12 = [v11 value];
      if (!v12)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = MEMORY[0x1BFB209B0](v13);
      }

      v14 = [v12 destinationIdIsTemporary];

      if (v14)
      {
LABEL_16:
        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v1, v24);
      }

      else
      {
LABEL_27:
        OUTLINED_FUNCTION_12_97();
        v15 = OUTLINED_FUNCTION_206();
        _s15ConversationKit11ParticipantVWOcTm_17(v15, v16);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v23 + 8))(v0);
            goto LABEL_16;
          case 4u:
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
            v26 = *(v25 + 48);
            OUTLINED_FUNCTION_37((v0 + *(v25 + 64)));
            outlined destroy of Participant.MediaInfo(v0 + v26);
            goto LABEL_9;
          case 6u:
            goto LABEL_10;
          default:
LABEL_9:
            type metadata accessor for Date();
            OUTLINED_FUNCTION_15_1();
            (*(v17 + 8))(v0);
LABEL_10:
            v18 = *(v1 + v9);
            if (!v18)
            {

              OUTLINED_FUNCTION_0_222();
              _s15ConversationKit11ParticipantVWOhTm_18(v1, v27);
              goto LABEL_22;
            }

            v19 = [v18 value];
            if (!v19)
            {
              v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = MEMORY[0x1BFB209B0](v20);
            }

            v21 = [v19 destinationIdIsPseudonym];

            OUTLINED_FUNCTION_0_222();
            _s15ConversationKit11ParticipantVWOhTm_18(v1, v22);
            if ((v21 & 1) == 0)
            {
              goto LABEL_14;
            }

            break;
        }
      }

      ++v8;
    }

    while (v7 != v8);
  }

LABEL_14:

LABEL_22:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.remoteAndAssociatedParticipants.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_10();
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = v6 + v8;
    v10 = *(v3 + 72);

    do
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v9, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(v0, v11 + v8);

      specialized Array.append<A>(contentsOf:)(v12);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v0, v13);
      specialized Array.append<A>(contentsOf:)(v11);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_30_0();
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  specialized Sequence._copySequenceContents(initializing:)();
}

{
  OUTLINED_FUNCTION_29();
  v40 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_17_1();
  v10 = v9(v8);
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_4();
  v38 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v33 - v13;
  v14 = v3 + 56;
  v15 = -1 << *(v3 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v3 + 56);
  if (!v7)
  {
    v18 = 0;
LABEL_20:
    *v0 = v3;
    v0[1] = v14;
    v0[2] = ~v15;
    v0[3] = v18;
    v0[4] = v17;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!v5)
  {
    v18 = 0;
    goto LABEL_20;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v3 + 32);
    v35 = v0;
    OUTLINED_FUNCTION_7_29();
    v22 = (v20 - v21) >> 6;
    v36 = v5;
    v23 = v40;
    while (v19 < v5)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_24;
      }

      if (!v17)
      {
        while (1)
        {
          v25 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v25 >= v22)
          {
            v17 = 0;
            v15 = v34;
            v0 = v35;
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v25);
          ++v18;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v25 = v18;
LABEL_15:
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v27 = v3;
      v28 = *(v3 + 48);
      v29 = v38;
      v30 = *(v39 + 72);
      outlined init with copy of RecentsCallItem(v28 + v30 * (v26 | (v25 << 6)), v38, v23);
      v31 = v29;
      v32 = v37;
      outlined init with take of RecentsCallItem(v31, v37, v23);
      outlined init with take of RecentsCallItem(v32, v7, v23);
      v5 = v36;
      if (v24 == v36)
      {
        v18 = v25;
        v15 = v34;
        v0 = v35;
        v3 = v27;
        goto LABEL_20;
      }

      v7 += v30;
      v19 = v24;
      v18 = v25;
      v3 = v27;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_18();
  if (!v4)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_16_20(v8);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    OUTLINED_FUNCTION_7_29();
    v11 = (v10 - v2) >> 6;
    while (v9 < v6)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v13);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      v14 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v15 = *(*(v0 + 56) + ((v13 << 9) | (8 * v14)));
      *v7 = v15;
      if (v12 == v6)
      {
        v17 = v15;
        v8 = v13;
        goto LABEL_17;
      }

      ++v7;
      v16 = v15;
      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_4_18();
  if (!v4)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_16_20(v8);
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    OUTLINED_FUNCTION_7_29();
    v11 = (v10 - v2) >> 6;
    while (v9 < v6)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v13);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      v14 = (*(v0 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v3)))));
      v15 = v14[1];
      v3 &= v3 - 1;
      *v7 = *v14;
      v7[1] = v15;
      if (v12 == v6)
      {

        v8 = v13;
        goto LABEL_17;
      }

      v7 += 2;

      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_17_1();
  v9 = v8(v7);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - v13;
  v15 = v2 + 56;
  v14 = *(v2 + 56);
  v40 = -1 << *(v2 + 32);
  if (-v40 < 64)
  {
    v16 = ~(-1 << -v40);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!v6)
  {
    v19 = 0;
LABEL_22:
    v33 = ~v40;
    *v0 = v2;
    v0[1] = v15;
    v0[2] = v33;
    v0[3] = v19;
    v0[4] = v17;
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!v4)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v35 = v0;
    v36 = v2 + 56;
    OUTLINED_FUNCTION_7_29();
    v22 = (v21 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = v18;
    while (v20 < v18)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v36;
        while (1)
        {
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v17 = 0;
            v0 = v35;
            goto LABEL_22;
          }

          v17 = *(v36 + 8 * v23);
          ++v19;
          if (v17)
          {
            v45 = v20 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v19;
LABEL_17:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v2;
      v26 = *(v2 + 48);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v32 = v41;
      v31(v41, v30, v28);
      v31(v6, v32, v28);
      v18 = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v19 = v23;
        v0 = v35;
        v15 = v36;
        v2 = v25;
        goto LABEL_22;
      }

      v6 += v29;
      v19 = v23;
      v2 = v25;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t ConversationController.audioRoute.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_26_53(v1, v10);
  v3(v2);
  v4 = OUTLINED_FUNCTION_62_0();
  v6 = v5(v4);
  v7 = OUTLINED_FUNCTION_15_14();
  v8(v7);
  return v6;
}

id CallCenter.audioRoute.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) routeController];
  v2 = [v1 pickedRoute];

  return v2;
}

void OUTLINED_FUNCTION_216_0()
{
}

uint64_t OUTLINED_FUNCTION_216_1()
{
}

uint64_t OUTLINED_FUNCTION_216_4()
{

  return swift_dynamicCast();
}

uint64_t ConversationController.localVideoSupported.getter()
{
  v3 = v0;
  if (dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter())
  {
    return 0;
  }

  result = [objc_opt_self() supportsDisplayingFaceTimeAudioCalls];
  if (result)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_490();
    v5 = *(v2 + 136);
    swift_unknownObjectRetain();
    v6 = OUTLINED_FUNCTION_33_0();
    v5(v6);
    OUTLINED_FUNCTION_530();
    if (v1)
    {
      return 1;
    }

    else
    {
      v7 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      return *(v3 + v7) == 3;
    }
  }

  return result;
}

id ConduitApprovalDelegate.init(_:)()
{
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_382();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t OUTLINED_FUNCTION_407(uint64_t a1, unsigned __int16 a2)
{
  v3 = a2 | 0xED00006465740000;

  return ConversationControlsManager.invalidateCallWaitingSystemApertureAssertionIfNeeded(reason:)(a1, v3);
}

void ConduitLagunaNoticeManager.init(_:queue:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_272();
  a18 = v22;
  a19 = v23;
  v25 = v24;
  OUTLINED_FUNCTION_15_25();
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_queue] = v20;
  *&v19[OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_callCenter] = v25;
  a9.receiver = v19;
  a9.super_class = ObjectType;
  objc_msgSendSuper2(&a9, sel_init);

  OUTLINED_FUNCTION_194_0();
}

void OUTLINED_FUNCTION_191(uint64_t a1@<X8>)
{
  *(v2 - 248) = *(a1 + 3);
  *(v2 - 244) = v1;
  *(v2 - 252) = *(a1 + 4);
}

void *OUTLINED_FUNCTION_191_0(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xE8uLL);
}

uint64_t sub_1BBCB4C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t ConversationControlsManager.updateShareButtonState()()
{
  v2 = v0;
  v3 = [*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled];
  v4 = MEMORY[0x1E69E7D40];
  if (!v3)
  {
    v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((*(v12 + v1) & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_160();
    v6 = *(v13 + 672);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_293();
  v5 += 84;
  v6 = *v5;
  (*v5)();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_236_0();
  v7();
  v8 = OUTLINED_FUNCTION_280_0();
  if (v1 == 1)
  {
    (v6)(v8);
    v9 = OUTLINED_FUNCTION_255();
    (*(v1 + 152))(v9, v1);
    v10 = OUTLINED_FUNCTION_280_0();
LABEL_9:
    (v6)(v10);
    v15 = OUTLINED_FUNCTION_255();
    (*(v1 + 144))(v15, v1);
    OUTLINED_FUNCTION_280_0();
    v16 = v1 ^ 1;
    goto LABEL_11;
  }

  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if ((*(v11 + v1) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
LABEL_8:
    v6();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_311_0();
    v14();
    v10 = OUTLINED_FUNCTION_280_0();
    if (v1)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  v74 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v17 = v74 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v18 = *(v17 + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 120);
  swift_unknownObjectRetain();
  v21 = OUTLINED_FUNCTION_33_0();
  v20(v21);
  OUTLINED_FUNCTION_212();
  swift_unknownObjectRelease();
  if (v18)
  {
    v75 = v16;
    OUTLINED_FUNCTION_293();
    (*(v22 + 672))();
    OUTLINED_FUNCTION_175_0();
    v23 = swift_getObjectType();
    ObjectType = (*(v18 + 56))(v23, v18);
    v25 = v24;
    swift_unknownObjectRelease();
    v26 = *(v17 + 8);
    v27 = swift_getObjectType();
    v28 = *(v26 + 56);
    swift_unknownObjectRetain();
    v29 = v28(v27, v26);
    v31 = v30;
    swift_unknownObjectRelease();
    if (ObjectType == v29 && v25 == v31)
    {

      v4 = MEMORY[0x1E69E7D40];
      v16 = v75;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_33_0();
    ObjectType = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = MEMORY[0x1E69E7D40];
    v16 = v75;
    if (ObjectType)
    {
      goto LABEL_23;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
  v34 = v2;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v36))
  {
    swift_slowAlloc();
    v77[0] = OUTLINED_FUNCTION_16_8();
    *ObjectType = 67110146;
    *(ObjectType + 4) = v16 & 1;
    v73 = v35;
    *(ObjectType + 8) = 1024;
    v76 = v16;
    v37 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    v38 = swift_beginAccess();
    *(ObjectType + 10) = (*(v74 + v37) & 0xFFFFFFFFFFFFFFFELL) == 2;
    *(ObjectType + 14) = 1024;
    v39 = *((*v4 & *v34) + 0x2A0);
    (v39)(v38);
    OUTLINED_FUNCTION_250();
    v40 = swift_getObjectType();
    LOBYTE(v37) = (*(v37 + 120))(v40, v37);
    swift_unknownObjectRelease();
    *(ObjectType + 16) = v37 & 1;

    *(ObjectType + 20) = 2080;
    v39();
    v41 = OUTLINED_FUNCTION_351();
    v42 = (v34[7])(v41, v34);
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v77);

    *(ObjectType + 22) = v45;
    *(ObjectType + 30) = 2080;
    v46 = *(v17 + 8);
    v47 = swift_getObjectType();
    v48 = *(v46 + 56);
    swift_unknownObjectRetain();
    v49 = v48(v47, v46);
    v16 = v76;
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v77);

    *(ObjectType + 32) = v53;
    OUTLINED_FUNCTION_130_1();
    _os_log_impl(v54, v55, v56, v57, v58, 0x28u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

LABEL_23:
  OUTLINED_FUNCTION_160();
  (*(v59 + 1808))();
  v61 = v60;
  v63 = v62;
  if (v16)
  {
    OUTLINED_FUNCTION_160();
    (*(v64 + 672))();
    OUTLINED_FUNCTION_87();
    v65 = swift_getObjectType();
    (*(ObjectType + 352))(v65, ObjectType);
    OUTLINED_FUNCTION_288();
    v66 = swift_unknownObjectRelease();
    v67 = (*((*v4 & *v2) + 0x988))(v66);
    if (v67)
    {
      v68 = v67;
      v69 = [v67 state] == 1;

      v70 = v69 << 8;
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
    LOBYTE(ObjectType) = 0;
  }

  if (ObjectType)
  {
    v71 = 256;
  }

  else
  {
    v71 = 0;
  }

  return (*((*v4 & *v2) + 0x718))(v71 & 0xFFFFFFFE | v16 & 1, v61, v70 | v63 & 1u);
}

uint64_t ConversationControlsManager.activeCall.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t @nonobjc TUCall.callUUID.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t ConversationControlsManager.shareMenuButtonState.getter()
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31();
  }

  CurrentValueSubject.value.getter();

  return v1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t ConversationControlsManager.shareMenuButtonState.setter()
{
  if (one-time initialization token for screenSharingControlStateManager != -1)
  {
    OUTLINED_FUNCTION_27_31();
  }

  CurrentValueSubject.send(_:)();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for MainActor();
}

id outlined copy of Participant.RemoteIdentifiers?(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_184_0()
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
}

id OUTLINED_FUNCTION_184_1()
{

  return [v0 (v1 + 2808)];
}

void ConversationController.update(with:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_240_0();
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, static Logger.conversationController);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v90, &_s15ConversationKit0A0_pSgMd);
  v8 = OUTLINED_FUNCTION_276_2();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v9, &_s15ConversationKit0A0_pSgMd);
  v10 = v0;
  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_23();
    v85 = OUTLINED_FUNCTION_13_31();
    *v14 = 136315650;
    LOBYTE(v82[0]) = v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v15 = String.init<A>(reflecting:)();
    v17 = OUTLINED_FUNCTION_449(v15, v16);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v90, v82, &_s15ConversationKit0A0_pSgMd);
    if (v83)
    {
      OUTLINED_FUNCTION_359_0(v82);
      v18 = OUTLINED_FUNCTION_114_2();
      v19(v18);
      type metadata accessor for UUID();
      v20 = OUTLINED_FUNCTION_127_2();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v82);
    }

    else
    {
      outlined destroy of CallControlsService?(v82, &_s15ConversationKit0A0_pSgMd);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    }

    specialized >> prefix<A>(_:)(v1, v24, v25, v26, v27, v28, v29, v30, v82[0], v82[1], v82[2], v83, v84, v85, v86, v87, v88, v89);
    OUTLINED_FUNCTION_250();
    outlined destroy of CallControlsService?(v1, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CallControlsService?(v90, &_s15ConversationKit0A0_pSgMd);
    v35 = OUTLINED_FUNCTION_334();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v37);
    OUTLINED_FUNCTION_239_4();

    *(v14 + 14) = v11;
    *(v14 + 22) = 2080;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v86, v82, &_s15ConversationKit0A0_pSgMd);
    if (v83)
    {
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v38 = OUTLINED_FUNCTION_9_40();
      v40 = v39(v38);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v82[0] = v40;
      type metadata accessor for TUConversationState(0);
      v41 = String.init<A>(reflecting:)();
      v43 = v42;
      outlined destroy of CallControlsService?(&v86, &_s15ConversationKit0A0_pSgMd);
    }

    else
    {
      outlined destroy of CallControlsService?(v82, &_s15ConversationKit0A0_pSgMd);
      outlined destroy of CallControlsService?(&v86, &_s15ConversationKit0A0_pSgMd);
      v43 = 0xE300000000000000;
      v41 = 7104878;
    }

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v85);
    OUTLINED_FUNCTION_344_0();

    *(v14 + 24) = v41;
    _os_log_impl(&dword_1BBC58000, v12, v13, "[%s] updating with conversation: %s state: %s", v14, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    outlined destroy of CallControlsService?(&v86, &_s15ConversationKit0A0_pSgMd);
    outlined destroy of CallControlsService?(v90, &_s15ConversationKit0A0_pSgMd);
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v90, &_s15ConversationKit0A0_pSgMd);
  if (v91)
  {
    OUTLINED_FUNCTION_2_167(v90);
    v44 = OUTLINED_FUNCTION_0_212();
    v46 = v45(v44);
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
    outlined destroy of CallControlsService?(v90, &_s15ConversationKit0A0_pSgMd);
    v46 = 0;
  }

  ConversationController.conversationState.setter(v46);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v90, &_s15ConversationKit0A0_pSgMd);
  if (v91)
  {
    OUTLINED_FUNCTION_2_167(v90);
    v47 = OUTLINED_FUNCTION_0_212();
    v49 = v48(v47);
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
    outlined destroy of CallControlsService?(v90, &_s15ConversationKit0A0_pSgMd);
    v49 = 0;
  }

  ConversationController.conversationLetMeInRequestState.setter(v49);
  v50 = OUTLINED_FUNCTION_276_2();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v51, v52);
  if (!v89)
  {
    outlined destroy of CallControlsService?(&v86, &_s15ConversationKit0A0_pSgMd);
LABEL_38:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_335();
  v53 = v10;
  v54 = ConversationController.isOneToOneModeEnabled.getter() & 1;
  OUTLINED_FUNCTION_82_0(v90);
  v55 = OUTLINED_FUNCTION_2_14();
  if (v54 != (v56(v55) & 1))
  {
    v57 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v10[v57], &v86);
    v53 = v10;
    ConversationController.callCenter(_:oneToOneModeChangedFor:)();
    __swift_destroy_boxed_opaque_existential_1(&v86);
  }

  if (v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode] == 1)
  {
    v58 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController;
    if (!*&v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController])
    {
      OUTLINED_FUNCTION_82_0(v90);
      v59 = OUTLINED_FUNCTION_2_14();
      v61 = v60(v59);
      if (TUConversationState.shouldHaveAudioFrequencyController.getter(v61))
      {
        OUTLINED_FUNCTION_82_0(v90);
        v62 = OUTLINED_FUNCTION_2_14();
        if (v63(v62) != -1)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          OUTLINED_FUNCTION_37_22();
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_1BC4BA940;
          v65 = v91;
          OUTLINED_FUNCTION_184_2(v90);
          v66 = OUTLINED_FUNCTION_84_9();
          v86 = v67(v66);
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_87();
          *(v64 + 56) = MEMORY[0x1E69E6158];
          *(v64 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v64 + 32) = v53;
          *(v64 + 40) = v65;
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_3_94();

          v68 = [objc_allocWithZone(MEMORY[0x1E69D8A38]) initWithDelegate:v10 queue:*&v10[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue]];
          v69 = *&v10[v58];
          *&v10[v58] = v68;

          v70 = *&v10[v58];
          if (v70)
          {
            v71 = v92;
            OUTLINED_FUNCTION_113_5(v90);
            v72 = *(v71 + 72);
            v73 = v70;
            v74 = OUTLINED_FUNCTION_62_0();
            [v73 registerParticipantPowerSpectrum_];
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_82_0(v90);
  v75 = OUTLINED_FUNCTION_2_14();
  v77 = v76(v75);
  if (v77 < 3)
  {
LABEL_37:
    ConversationController.updateParticipants(with:)(v90);
    __swift_destroy_boxed_opaque_existential_1(v90);
    goto LABEL_38;
  }

  if (v77 == 4)
  {
    ConversationController.stopRecordingLocalVideo()();
    ConversationController.unregisterForMoments()();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_8_5();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v78 + 152))();
    goto LABEL_37;
  }

  if (v77 == 3)
  {
    ConversationController.registerForMoments()();
    goto LABEL_37;
  }

  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  MEMORY[0x1BFB20B10](0xD00000000000003BLL, 0x80000001BC522E50);
  OUTLINED_FUNCTION_97_8(v90);
  v79 = OUTLINED_FUNCTION_4_38();
  v85 = v80(v79);
  v81 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v81);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_275_0()
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t ConversationController.ControlsMode.debugDescription.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6F72746E6F632ELL;
  }

  if (a1 == 1)
  {
    return 0x69566F696475612ELL;
  }

  return 0x536E65657263732ELL;
}

uint64_t ConversationController.conversationLetMeInRequestState.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  result = swift_beginAccess();
  v12 = *(v2 + v10);
  if (v12 != a1)
  {
    if (a1 == 1 && v12 == 2)
    {
      v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      swift_beginAccess();
      v24 = _s15ConversationKit11ParticipantVWOcTm_17(v2 + v15, v7);
      Participant.asRequestedApproval()(v24, v25, v26, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    }

    else
    {
      if (a1 != 2 || v12 != 3)
      {
        goto LABEL_14;
      }

      v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      swift_beginAccess();
      v16 = _s15ConversationKit11ParticipantVWOcTm_17(v2 + v15, v7);
      Participant.asReceivedApproval()(v16, v17, v18, v19, v20, v21, v22, v23, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v7, type metadata accessor for Participant);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v9, v2 + v15);
    swift_endAccess();
LABEL_14:
    v32 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
    result = swift_beginAccess();
    v33 = *v32;
    if (*v32)
    {
      v34 = *(v2 + v10);

      v33(v34);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v33);
    }
  }

  return result;
}

uint64_t IDSCapabilitiesChecker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall ConversationController.updateIDSStatusForVideoMessaging()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_28_6();
  v7 = type metadata accessor for Participant(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_7();
  v9 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v10 = *(v9 + 8);
  swift_getObjectType();
  v11 = *(v10 + 208);
  swift_unknownObjectRetain();
  v12 = OUTLINED_FUNCTION_2_125();
  LODWORD(v10) = v11(v12);
  swift_unknownObjectRelease();
  if (v10 == 3)
  {
    v13 = *(v9 + 8);
    swift_getObjectType();
    v14 = *(v13 + 128);
    swift_unknownObjectRetain();
    v15 = OUTLINED_FUNCTION_157();
    LOBYTE(v13) = v14(v15);
    swift_unknownObjectRelease();
    if (v13)
    {
      v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v17 = *(v3 + v16);
      if (*(v17 + 16) == 1)
      {
        specialized Collection.first.getter(v17, v1);
        v18 = OUTLINED_FUNCTION_29_5();
        OUTLINED_FUNCTION_115(v18, v19, v7);
        if (v20)
        {
          outlined destroy of CallControlsService?(v1, &_s15ConversationKit11ParticipantVSgMd);
        }

        else
        {
          OUTLINED_FUNCTION_4_150();
          v21 = OUTLINED_FUNCTION_62_0();
          _s15ConversationKit11ParticipantVWObTm_8(v21, v22);
          ConversationController.updateVideoMessagingIDSStatusForParticipant(_:)();
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v2, v23);
        }
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    outlined init with copy of ConversationControlsAction(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_4_27();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_1BBCB6828()
{
  OUTLINED_FUNCTION_248_0();
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_29_2();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + v2[8]) = (v0 - 1);
        return;
      }

      v6 = type metadata accessor for Participant.CountdownInfo(0);
      v10 = v2[14];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void ConversationController.updateVideoMessagingIDSStatusForParticipant(_:)()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_77_2();
  v4 = type metadata accessor for Participant(v3);
  v5 = *(v1 + *(v4 + 28));
  if (!v5)
  {
    return;
  }

  v6 = v4;
  v7 = one-time initialization token for videoMessaging;
  v8 = v5;
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, &static Logger.videoMessaging);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_42();
    v46 = OUTLINED_FUNCTION_23();
    v47 = v46;
    *v13 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    v14 = v10;
    v15 = String.init<A>(reflecting:)();
    v17 = v6;
    v18 = v10;
    v19 = v1;
    v20 = v2;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v47);

    *(v13 + 4) = v21;
    v2 = v20;
    v1 = v19;
    v10 = v18;
    v6 = v17;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Checking IDS capabilities for %s for video messaging", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_104_2();
  }

  v22 = *(v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker);
  v23 = (*(*v22 + 224))(v10);
  if (v23 == 2)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v31))
    {
      v32 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v32);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_18();
    }

    goto LABEL_17;
  }

  if (v23 != 3)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v39))
    {
      v40 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v40);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      OUTLINED_FUNCTION_18();
    }

    (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController)) + 0x1C0))((v23 >> 40) & 1);
LABEL_17:

    return;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_33();
    *v26 = 0;
    _os_log_impl(&dword_1BBC58000, v24, v25, "Updating IDS capabilities to determine video messaging eligibility", v26, 2u);
    OUTLINED_FUNCTION_2_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
  v27 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v1, v29 + v27);
  (*(*v22 + 232))(v28);
}

uint64_t IDSCapabilitiesChecker.capabilitiesForHandle(_:)()
{
  v1 = TUCopyIDSCanonicalAddressForHandle();
  if (!v1)
  {
    return 3;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  OUTLINED_FUNCTION_4_5();
  if (!*(*(v0 + 24) + 16))
  {
LABEL_7:

    return 3;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
  if ((v6 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_22();
  v9 = v7 | (v8 << 32);
  swift_bridgeObjectRelease_n();

  return v9;
}

Swift::Void __swiftcall IDSCapabilitiesChecker.update(withParticipants:)(Swift::OpaquePointer withParticipants)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22IDSCapabilitiesCheckerC22ParticipantDestination33_CDCD3D0B33FE10A11E29AF4D631CB8CALLVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v136 - v3);
  v143 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v153 = type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination();
  OUTLINED_FUNCTION_1();
  v144 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v151 = v13 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v142 = v136 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v136 - v18;
  v20 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v147 = v22 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v136 - v26;
  v136[2] = withParticipants._rawValue;
  v28 = *(withParticipants._rawValue + 2);
  v148 = v25;
  v149 = v4;
  v136[1] = v29;
  if (v28)
  {
    v141 = v10;
    v146 = *(v20 + 28);
    OUTLINED_FUNCTION_27_17();
    v32 = v30 + v31;
    v145 = *(v33 + 72);
    v140 = (v6 + 16);
    v137 = (v6 + 32);
    v34 = MEMORY[0x1E69E7CC0];
    v35 = v28;
    v139 = v28;
    v138 = v27;
    while (1)
    {
      OUTLINED_FUNCTION_10_33();
      _s15ConversationKit11ParticipantVWOcTm_5(v32, v27, v36);
      v10 = *&v27[v146];
      if (v10)
      {
        v37 = v19;
        v38 = v141;
        v39 = v143;
        (*v140)(v141, &v27[*(v20 + 20)], v143);
        v40 = v10;
        v41 = TUCopyIDSCanonicalAddressForHandle();
        if (!v41)
        {
          __break(1u);
LABEL_61:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v42 = v41;
        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        OUTLINED_FUNCTION_4_54();
        _s15ConversationKit11ParticipantVWOhTm_7(v27, v45);
        v46 = v142;
        (*v137)(v142, v38, v39);
        v47 = (v46 + *(v153 + 20));
        *v47 = v152;
        v47[1] = v44;
        v19 = v37;
        outlined init with take of IDSCapabilitiesChecker.ParticipantDestination(v46, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v51;
        }

        v20 = v148;
        v28 = v139;
        v10 = *(v34 + 16);
        v27 = v138;
        if (v10 >= *(v34 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v52;
        }

        *(v34 + 16) = v10 + 1;
        OUTLINED_FUNCTION_7_49();
        outlined init with take of IDSCapabilitiesChecker.ParticipantDestination(v37, v34 + v48 + *(v49 + 72) * v10);
        v4 = v149;
      }

      else
      {
        OUTLINED_FUNCTION_4_54();
        _s15ConversationKit11ParticipantVWOhTm_7(v27, v50);
      }

      v32 += v145;
      if (!--v35)
      {
        goto LABEL_14;
      }
    }
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v53 = v150;
  *(v150 + 48) = v34;

  if (v28)
  {
    v152 = 0;
    OUTLINED_FUNCTION_27_17();
    v56 = v54 + v55;
    v146 = *(v57 + 72);
    v58 = MEMORY[0x1E69E7CC8];
    v59 = v153;
    v60 = v147;
    do
    {
      OUTLINED_FUNCTION_10_33();
      v62 = _s15ConversationKit11ParticipantVWOcTm_5(v56, v60, v61);
      v10 = *(v53 + 48);
      MEMORY[0x1EEE9AC00](v62);
      v136[-2] = v60;

      v63 = v152;
      specialized Sequence.first(where:)(partial apply for closure #1 in closure #2 in IDSCapabilitiesChecker.update(withParticipants:), v10, v4);
      v152 = v63;

      if (__swift_getEnumTagSinglePayload(v4, 1, v59) == 1)
      {
        outlined destroy of IDSCapabilitiesChecker.ParticipantDestination?(v4);
        v60 = v147;
      }

      else
      {
        v64 = (v4 + *(v59 + 20));
        v65 = *v64;
        v66 = v64[1];

        OUTLINED_FUNCTION_3_73();
        _s15ConversationKit11ParticipantVWOhTm_7(v4, v67);
        v68 = v58;
        v69 = *(v53 + 80);
        v70 = *(v53 + 88);
        __swift_project_boxed_opaque_existential_1((v53 + 56), v69);
        (*(v70 + 16))(v65, v66, v69, v70);

        v10 = *(v148 + 20);
        swift_isUniquelyReferenced_nonNull_native();
        v155[0] = v68;
        v60 = v147;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
        v58 = v155[0];
        v4 = v149;
      }

      OUTLINED_FUNCTION_4_54();
      _s15ConversationKit11ParticipantVWOhTm_7(v60, v71);
      v56 += v146;
      --v28;
    }

    while (v28);
  }

  else
  {
    v152 = 0;
    v58 = MEMORY[0x1E69E7CC8];
    v59 = v153;
  }

  v147 = v58;
  v72 = *(v53 + 48);
  v73 = *(v72 + 16);
  v74 = MEMORY[0x1E69E7CC0];
  if (v73)
  {
    v155[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v74 = v155[0];
    OUTLINED_FUNCTION_7_49();
    v4 = (v72 + v75);
    v77 = *(v76 + 72);
    do
    {
      OUTLINED_FUNCTION_9_39();
      v78 = v151;
      _s15ConversationKit11ParticipantVWOcTm_5(v4, v151, v79);
      v80 = (v78 + *(v59 + 20));
      v82 = *v80;
      v81 = v80[1];

      _s15ConversationKit11ParticipantVWOhTm_7(v78, v10);
      v155[0] = v74;
      v10 = v74[2];
      if (v10 >= v74[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v74 = v155[0];
      }

      v74[2] = v10 + 1;
      v83 = &v74[2 * v10];
      v83[4] = v82;
      v83[5] = v81;
      v4 = (v4 + v77);
      --v73;
      v59 = v153;
    }

    while (v73);

    v53 = v150;
  }

  v84 = 0;
  v149 = v74[2];
  v85 = v74 + 5;
  v86 = MEMORY[0x1E69E7CC8];
  v148 = v74;
  while (v149 != v84)
  {
    if (v84 >= v74[2])
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_0_6();
      goto LABEL_48;
    }

    v4 = *(v85 - 1);
    v87 = *v85;
    v88 = v85;
    v89 = *(v53 + 80);
    v90 = *(v53 + 88);
    __swift_project_boxed_opaque_existential_1((v53 + 56), v89);
    v53 = *(v90 + 16);

    v91 = (v53)(v4, v87, v89, v90);
    if (v91 == 3)
    {
      v92 = 0;
    }

    else
    {
      v92 = WORD2(v91);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v155[0] = v86;
    v94 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v87);
    v96 = *(v86 + 16);
    v97 = (v95 & 1) == 0;
    v98 = v96 + v97;
    if (__OFADD__(v96, v97))
    {
      goto LABEL_57;
    }

    v99 = v94;
    v53 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v98))
    {
      v100 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v87);
      if ((v53 & 1) != (v101 & 1))
      {
        goto LABEL_61;
      }

      v99 = v100;
    }

    v86 = v155[0];
    if (v53)
    {
      OUTLINED_FUNCTION_22_22(v92);
    }

    else
    {
      *(v155[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
      v102 = (*(v86 + 48) + 16 * v99);
      *v102 = v4;
      v102[1] = v87;
      OUTLINED_FUNCTION_22_22(v92);
      v103 = *(v86 + 16);
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_58;
      }

      *(v86 + 16) = v105;
    }

    v85 = v88 + 2;
    v84 = (v84 + 1);
    v53 = v150;
    v74 = v148;
  }

  v4 = *(*v53 + 120);
  v107 = (v4)(v106);
  v108 = v147;
  v109 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4UUIDV_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOTt1g5(v147, v107);

  if (v109)
  {

    goto LABEL_49;
  }

  swift_beginAccess();
  *(v53 + 16) = v108;

  swift_beginAccess();
  *(v53 + 24) = v86;

  if ((*(*v53 + 168))(v110))
  {
    v112 = v111;
    ObjectType = swift_getObjectType();
    v4();
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAF15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO_GTt0g5();
    (*(v112 + 8))(v53, v114, ObjectType, v112);

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_59;
  }

LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1BC4BA940;
  v155[0] = (v4)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd);
  v107 = String.init<A>(reflecting:)();
  v117 = v116;
  *(v115 + 56) = MEMORY[0x1E69E6158];
  *(v115 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v115 + 32) = v107;
  *(v115 + 40) = v117;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
LABEL_49:

  outlined init with copy of IDSLookupManager(v53 + 56, v155);
  v118 = v156;
  v119 = v157;
  v120 = __swift_project_boxed_opaque_existential_1(v155, v156);
  v121 = *(v53 + 48);
  v122 = *(v121 + 16);
  v123 = MEMORY[0x1E69E7CC0];
  if (v122)
  {
    v149 = v120;
    v152 = v118;
    v154 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v123 = v154;
    OUTLINED_FUNCTION_7_49();
    v125 = v121 + v124;
    v127 = *(v126 + 72);
    do
    {
      OUTLINED_FUNCTION_9_39();
      v128 = v151;
      _s15ConversationKit11ParticipantVWOcTm_5(v125, v151, v129);
      v130 = (v128 + *(v153 + 20));
      v131 = *v130;
      v132 = v130[1];

      _s15ConversationKit11ParticipantVWOhTm_7(v128, v107);
      v154 = v123;
      v107 = *(v123 + 16);
      if (v107 >= *(v123 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v123 = v154;
      }

      *(v123 + 16) = v107 + 1;
      v133 = v123 + 16 * v107;
      *(v133 + 32) = v131;
      *(v133 + 40) = v132;
      v125 += v127;
      --v122;
    }

    while (v122);

    v53 = v150;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v123);
  (*(v119 + 8))();

  __swift_destroy_boxed_opaque_existential_1(v155);
  v134 = [objc_opt_self() defaultCenter];
  v135 = *MEMORY[0x1E69D8FA0];
  __swift_project_boxed_opaque_existential_1((v53 + 56), *(v53 + 80));
  [v134 addObserver:v53 selector:sel_handleLookupManagerDidChangeNotification_ name:v135 object:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v19 = a3(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_100();
  v11 = 0;
  v12 = *(a2 + 16);
  while (1)
  {
    if (v12 == v11)
    {
      v16 = 1;
      v17 = a5;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v19);
    }

    OUTLINED_FUNCTION_40_3();
    OUTLINED_FUNCTION_82_1();
    _s15ConversationKit11ParticipantVWOcTm_1(v13, v14);
    v15 = a1(v6);
    if (v5)
    {
      return _s15ConversationKit11ParticipantVWOhTm_1(v6, a4);
    }

    if (v15)
    {
      break;
    }

    _s15ConversationKit11ParticipantVWOhTm_1(v6, a4);
    ++v11;
  }

  v17 = a5;
  _s15ConversationKit15RecentsCallItemVWObTm_0(v6, a5);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v19);
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination, type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for Participant, type metadata accessor for Participant, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for ParticipantGridView.IdentifiableParticipantTile, type metadata accessor for ParticipantGridView.IdentifiableParticipantTile, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for RecentsCallItem, type metadata accessor for RecentsCallItem, a3);
}

{
  return specialized Sequence.first(where:)(a1, a2, type metadata accessor for ParticipantReaction, type metadata accessor for ParticipantReaction, a3);
}

uint64_t sub_1BBCB7CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)()
{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  v9 = *(v0 + 56) + 6 * v2;
  *(v9 + 4) = WORD2(v1);
  *v9 = v1;
  OUTLINED_FUNCTION_8_51();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v10;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  v9 = *(v0 + 56);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_20_3();
  (*(v10 + 32))(v9 + *(v10 + 72) * v2, v1);
  OUTLINED_FUNCTION_8_51();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v11;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  memcpy((*(v0 + 56) + 80 * v2), v1, 0x4BuLL);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v9;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  v3 = v2;
  v7 = OUTLINED_FUNCTION_0_84(v2, v4, v5, v6);
  *(*(v8 + 48) + 8 * v7) = v9;
  v10 = *(v8 + 56);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
  outlined init with take of (key: UUID, value: IDSCapabilitiesChecker.Capabilities)?(v1, v10 + *(*(v11 - 8) + 72) * v3, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
  OUTLINED_FUNCTION_8_51();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

{
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v3, v4, v5, v6);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v7 = OUTLINED_FUNCTION_17_31();
  v8(v7);
  *(*(v0 + 56) + 8 * v2) = v1;
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v9;
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4UUIDV_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOTt1g5(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for UUID();
  v56 = *(v61 - 8);
  v4 = MEMORY[0x1EEE9AC00](v61);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v58 = &v48 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v53 = a1;
  v14 = *(a1 + 64);
  v49 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v52 = v56 + 16;
  v59 = (v56 + 32);
  v54 = (v56 + 8);
  v51 = xmmword_1BC4C74D0;
  v50 = xmmword_1BC4C74E0;
  v62 = v10;
  while (v17)
  {
    v60 = (v17 - 1) & v17;
    v19 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_12:
    v22 = v53;
    v23 = v55;
    v24 = v56;
    v25 = v61;
    (*(v56 + 16))(v55, *(v53 + 48) + *(v56 + 72) * v19, v61);
    v26 = *(v22 + 56) + 6 * v19;
    v27 = *v26;
    LOWORD(v22) = *(v26 + 4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMd);
    v29 = &v62[*(v28 + 48)];
    (*(v24 + 32))(v62, v23, v25);
    *(v29 + 2) = v22;
    *v29 = v27;
    v10 = v62;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v28);
LABEL_13:
    v30 = v10;
    v31 = v58;
    outlined init with take of (key: UUID, value: IDSCapabilitiesChecker.Capabilities)?(v30, v58, &_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetSgMd);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
    v34 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v34;
    }

    v35 = (v31 + *(v32 + 48));
    v36 = v57;
    v37 = v31;
    v38 = v61;
    (*v59)(v57, v37, v61);
    v39 = *(v35 + 2);
    v40 = *v35;
    v41 = specialized __RawDictionaryStorage.find<A>(_:)();
    LOBYTE(v35) = v42;
    result = (*v54)(v36, v38);
    if ((v35 & 1) == 0)
    {
      return v34;
    }

    v43 = v40 | (v39 << 32);
    v44 = *(*(a2 + 56) + 6 * v41) | (*(*(a2 + 56) + 6 * v41 + 4) << 32);
    if (*(*(a2 + 56) + 6 * v41) == 2)
    {
      v10 = v62;
      v17 = v60;
      if (v40 != 2)
      {
        return v34;
      }
    }

    else
    {
      v10 = v62;
      if (v40 == 2)
      {
        return v34;
      }

      v45 = vdupq_n_s64(v44);
      v46 = vdupq_n_s64(v43);
      if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v45, v51)), vceqzq_s64(vandq_s8(v45, v50))), vuzp1q_s32(vceqzq_s64(vandq_s8(v46, v51)), vceqzq_s64(vandq_s8(v46, v50)))))), 0xFuLL))) & 1) == 0)
      {
        return v34;
      }

      if ((*(*(a2 + 56) + 6 * v41) ^ v40))
      {
        return v34;
      }

      v17 = v60;
      if (((v43 & 0x10000000000) == 0) == ((v44 >> 40) & 1))
      {
        return v34;
      }
    }
  }

  while (1)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO5valuetMd);
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v47);
      v60 = 0;
      goto LABEL_13;
    }

    v21 = *(v49 + 8 * v20);
    ++v13;
    if (v21)
    {
      v60 = (v21 - 1) & v21;
      v19 = __clz(__rbit64(v21)) | (v20 << 6);
      v13 = v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAF15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesO_GTt0g5()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v10, v11);
  v12 = OUTLINED_FUNCTION_15_14();
  v13 = MEMORY[0x1BFB21140](v12);
  v14 = 0;
  v28 = v1;
  v29 = v13;
  v15 = v1 + 64;
  OUTLINED_FUNCTION_33_2();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v27[2] = v4 + 32;
  v27[3] = v4 + 16;
  v27[1] = v4 + 8;
  if ((v17 & v16) != 0)
  {
    do
    {
      v21 = v14;
LABEL_7:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v4 + 16))(v9, *(v28 + 48) + *(v4 + 72) * (v22 | (v21 << 6)), v2);
      v23 = OUTLINED_FUNCTION_258_0();
      v24(v23);
      OUTLINED_FUNCTION_7_8();
      specialized Set._Variant.insert(_:)();
      v25 = OUTLINED_FUNCTION_2_40();
      v26(v25);
    }

    while (v18);
  }

  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      OUTLINED_FUNCTION_30_0();
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v14;
    if (v18)
    {
      v14 = v21;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void OUTLINED_FUNCTION_156_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0x16u);
}

uint64_t OUTLINED_FUNCTION_170_2()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

BOOL OUTLINED_FUNCTION_170_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void ConversationController.idsCapabilitiesChecker(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_443();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.conversationController);
  OUTLINED_FUNCTION_28_0();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_42();
    v32 = OUTLINED_FUNCTION_23();
    a10 = v32;
    *v31 = 136315138;
    (*(*v27 + 120))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd);
    v33 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &a10);
    OUTLINED_FUNCTION_344_0();

    *(v31 + 4) = v23;
    OUTLINED_FUNCTION_383();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_2_2();
  }

  ConversationController.isRemoteParticipantEligibleForVideoMessaging.getter();
  OUTLINED_FUNCTION_23_0();
  (*((*MEMORY[0x1E69E7D40] & v40) + 0x1C0))(v41 & 1);
  v42 = (v22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  OUTLINED_FUNCTION_104_7();
  v43 = *v42;
  if (*v42)
  {
    v44 = *(*v27 + 120);

    v44(v45);
    v43();
    v46 = OUTLINED_FUNCTION_62_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v46);
  }

  OUTLINED_FUNCTION_7_17();
}

uint64_t getEnumTagSinglePayload for IDSCapabilitiesChecker.Capabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTag for ButtonsStackViewModel.LocalVideoButton.ButtonType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t ConversationController.isRemoteParticipantEligibleForVideoMessaging.getter()
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v1 = *v0;
  if (*v0)
  {

    v3 = v1(v2);
    v4 = OUTLINED_FUNCTION_44_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t VideoMessageController.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  static Published.subscript.getter();

  return v1;
}

uint64_t VideoMessageController.State.rawValue.getter(char a1)
{
  result = 0x616C696176616E75;
  switch(a1)
  {
    case 1:
      result = 0x7964616552746F6ELL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x7964616572;
      break;
    case 4:
      v3 = 1836212599;
      goto LABEL_11;
    case 5:
      result = 0x6552657669746361;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6F4364726F636572;
      break;
    case 8:
      v3 = 1684956531;
LABEL_11:
      result = v3 | 0x676E6900000000;
      break;
    case 9:
      result = 1953391987;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x1BFB21140](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(v8, v7, v6);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationController.setupScreenSharingSessionCallbacks()()
{
  OUTLINED_FUNCTION_11_97();
  v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + v0;
  OUTLINED_FUNCTION_30_2();
  if (*(v1 + 3))
  {
    OUTLINED_FUNCTION_20();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_278(v2);
    swift_unknownObjectWeakInit();
    v3 = OUTLINED_FUNCTION_101_5();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    OUTLINED_FUNCTION_74_5();
    v5 = OUTLINED_FUNCTION_81_7();
    v6(v5);
    if (*(v1 + 3))
    {
      OUTLINED_FUNCTION_20();
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_278(v7);
      swift_unknownObjectWeakInit();
      v8 = OUTLINED_FUNCTION_101_5();
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      OUTLINED_FUNCTION_74_5();
      v10 = OUTLINED_FUNCTION_81_7();
      v11(v10);
      if (*(v1 + 3))
      {
        OUTLINED_FUNCTION_20();
        v12 = swift_allocObject();
        OUTLINED_FUNCTION_278(v12);
        swift_unknownObjectWeakInit();
        v13 = OUTLINED_FUNCTION_101_5();
        __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
        OUTLINED_FUNCTION_74_5();
        v15 = OUTLINED_FUNCTION_81_7();
        v16(v15);
        if (*(v1 + 3))
        {
          OUTLINED_FUNCTION_20();
          v17 = swift_allocObject();
          OUTLINED_FUNCTION_278(v17);
          swift_unknownObjectWeakInit();
          v18 = OUTLINED_FUNCTION_101_5();
          __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
          OUTLINED_FUNCTION_74_5();
          v20 = OUTLINED_FUNCTION_81_7();
          v21(v20);
          if (*(v1 + 3))
          {
            OUTLINED_FUNCTION_20();
            v22 = swift_allocObject();
            OUTLINED_FUNCTION_278(v22);
            swift_unknownObjectWeakInit();
            v23 = OUTLINED_FUNCTION_101_5();
            __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
            OUTLINED_FUNCTION_74_5();
            v25 = OUTLINED_FUNCTION_81_7();
            v26(v25);
            if (*(v1 + 3))
            {
              OUTLINED_FUNCTION_20();
              v27 = swift_allocObject();
              OUTLINED_FUNCTION_278(v27);
              swift_unknownObjectWeakInit();
              v28 = OUTLINED_FUNCTION_44_0();
              __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
              OUTLINED_FUNCTION_123_2();
              v30();
            }
          }
        }
      }
    }
  }

  swift_endAccess();
  OUTLINED_FUNCTION_10_84();
}

uint64_t sub_1BBCB93DC()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidEnd.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeContent.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeAttributes.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionPickerCanceled.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_246_1()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t ConversationController.updateScreenSharingSession(with:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v9 + v1, &v25, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
  if (!v26)
  {
    return outlined destroy of CallControlsService?(&v25, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&v25, v27);
  if (a1)
  {
    v10 = [a1 windowUUID];
    if (v10)
    {
      v11 = v10;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v18 = type metadata accessor for UUID();
    __swift_storeEnumTagSinglePayload(v2, v12, 1, v18);
    v19 = OUTLINED_FUNCTION_309();
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v19, v20, v21);
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_113_5(v27);
  v22 = OUTLINED_FUNCTION_44_0();
  v23(v22);
  outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

void OUTLINED_FUNCTION_110()
{
}

uint64_t OUTLINED_FUNCTION_110_2@<X0>(char a1@<W8>)
{
  *(v1 + 240) = a1;

  return type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
}

uint64_t OUTLINED_FUNCTION_110_4()
{
  *(v0 + *(v1 + 2304)) = 0;

  return VideoMessageController.updateState()();
}

void *OUTLINED_FUNCTION_110_5()
{

  return memcpy((v0 + 80), (v1 + 16), 0x4BuLL);
}

uint64_t OUTLINED_FUNCTION_110_7()
{

  return swift_once();
}

Swift::Bool __swiftcall ConversationController.updateIsUsingIPadExternalCamera()()
{
  v3 = OUTLINED_FUNCTION_129();
  v4 = type metadata accessor for Participant(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v6 + 624))(ObjectType, v6) & 1) == 0)
  {
    return 0;
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 1)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v0 + v10, v2);
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v2, v11);
  if (!v14)
  {
    return 0;
  }

  v16 = v14;
  memcpy(v17, v15, sizeof(v17));
  v12 = Participant.VideoInfo.cameraType.getter();
  outlined destroy of CallControlsService?(&v14, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  return v12 == 1;
}

uint64_t TUConversationState.debugDescription.getter(uint64_t a1)
{
  result = 0x64656E696F6A2ELL;
  switch(a1)
  {
    case 0:
      v3 = 0x69746961772ELL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 1:
      return 0x697261706572702ELL;
    case 2:
      return 0x676E696E696F6A2ELL;
    case 3:
      return result;
    case 4:
      v3 = 0x697661656C2ELL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    default:
      _StringGuts.grow(_:)(57);
      MEMORY[0x1BFB20B10](0xD000000000000037, 0x80000001BC4F6EE0);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v4);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x1BBCB9AE0);
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t Participant.RemoteIdentifiers.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_104_6();
  _StringGuts.grow(_:)(55);
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  v4 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_229_2();

  MEMORY[0x1BFB20B10](0x3D4449736469202CLL, 0xE800000000000000);
  if (v2)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = String.init<A>(reflecting:)();
    v5 = v7;
  }

  MEMORY[0x1BFB20B10](v6, v5);

  OUTLINED_FUNCTION_2_67();
  OUTLINED_FUNCTION_224_1();
  if (v3)
  {

    String.init<A>(reflecting:)();
  }

  v8 = OUTLINED_FUNCTION_44_0();
  MEMORY[0x1BFB20B10](v8);

  return v10;
}

void ConversationController.fetchExistingScreenSharingAttributes()()
{
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_5(v2);
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_101();
  (*(v4 + 16))(v1);
  v6 = OUTLINED_FUNCTION_62_0();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_206();
  v10(v9);
  OUTLINED_FUNCTION_20();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ConversationController.fetchExistingScreenSharingAttributes();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  aBlock[3] = &block_descriptor_1185;
  v12 = _Block_copy(aBlock);

  [v8 getLatestRemoteScreenShareAttributesWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t outlined assign with take of ScreenSharingStateMonitorConversationProviderProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in ConversationController.fetchExistingScreenSharingAttributes()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationController.fetchExistingScreenSharingAttributes();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_1191;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

uint64_t sub_1BBCBA2E8()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t Features.isIncomingCallBannerEnabled.getter()
{
  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI();
    v0 = isFeatureEnabled(_:)();
    OUTLINED_FUNCTION_8_68(v0);
  }

  return 1;
}

id BannerPresentationManager.activeCall.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter);
  if ([v1 currentAudioAndVideoCallCount] <= 0)
  {
    result = [v1 frontmostBargeCall];
    if (!result)
    {
      return result;
    }
  }

  v3 = OUTLINED_FUNCTION_175_3();
  result = [v3 v4];
  if (!result)
  {
    v5 = [v1 screeningCall];
    if (!v5 || (v6 = v5, v7 = [v5 resolvedCallStatus], v6, v7 != 4) || (result = objc_msgSend(v1, sel_screeningCall)) == 0)
    {
      v8 = OUTLINED_FUNCTION_175_3();
      result = [v8 v9];
      if (!result)
      {
        v10 = OUTLINED_FUNCTION_175_3();
        result = [v10 v11];
        if (!result)
        {
          v12 = OUTLINED_FUNCTION_175_3();
          result = [v12 v13];
          if (!result)
          {
            return [v1 frontmostBargeCall];
          }
        }
      }
    }
  }

  return result;
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

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSQAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_245_0()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_214_2()
{

  return String.init<A>(reflecting:)();
}

void OUTLINED_FUNCTION_276_0()
{

  JUMPOUT(0x1BFB20B10);
}

void *OUTLINED_FUNCTION_276_1(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_423()
{

  return swift_getObjectType();
}

void *OUTLINED_FUNCTION_423_0()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 144), v0);
}

uint64_t OUTLINED_FUNCTION_406()
{
  *(v0 + 8) = v1;

  return swift_unknownObjectWeakAssign();
}

unint64_t specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (((*(a6 + 328))(a5, a6) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 152))())
  {
    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v17 = a2[3];
      v18 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v17);
      v19 = [(*(v18 + 24))(v17 v18)];
      swift_unknownObjectRelease();
      type metadata accessor for TUCall();
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = specialized Array.count.getter(v20);

      v10 = v21 < 2;
    }

    v22 = OUTLINED_FUNCTION_0_240();
    v24 = v23(v22);
    if (v10)
    {
      v25 = 0;
    }

    else
    {
      v26 = a2[3];
      v27 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v26);
      (*(v27 + 32))(v34, v26, v27);
      v28 = v35;
      v29 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v30 = (*(v29 + 8))(v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v25 = v30 << 8;
    }

    v31 = OUTLINED_FUNCTION_0_240();
    v32(v31);
    swift_unknownObjectRelease();
    v16 = v25 | v24 & 1;
  }

  else
  {
LABEL_7:
    v11 = OUTLINED_FUNCTION_0_240();
    v13 = v12(v11);
    v14 = (*(a6 + 352))(a5, a6);
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t OUTLINED_FUNCTION_503(uint64_t result, uint64_t a2)
{
  *(v2 - 312) = result;
  *(v2 - 304) = a2;
  return result;
}

id @nonobjc TUCall.screenShareAttributes.getter()
{
  v1 = [v0 screenShareAttributes];

  return v1;
}

void OUTLINED_FUNCTION_352()
{
  v0[73] = 0;
  v0[72] = 0;
  v0[74] = 0;
  v0[75] = 1;

  bzero(v0 + 76, 0xB1uLL);
}

uint64_t OUTLINED_FUNCTION_325@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
}

id OUTLINED_FUNCTION_424(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_424_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for UUID();
}

uint64_t OUTLINED_FUNCTION_269()
{

  return Publisher<>.sink(receiveValue:)();
}

uint64_t OUTLINED_FUNCTION_269_0()
{
}

uint64_t OUTLINED_FUNCTION_269_1()
{
  *(v0 + 8) = v1;

  return outlined destroy of Participant.MediaInfo(v0 + 304);
}

void OUTLINED_FUNCTION_269_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_154_1(float a1)
{
  *v1 = a1;
  v4 = (*(v2 + 144) + 24);

  os_unfair_lock_lock(v4);
}

uint64_t OUTLINED_FUNCTION_293_1()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_449(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_509()
{

  return os_log(_:dso:log:type:_:)();
}

void OUTLINED_FUNCTION_93_4()
{
  outlined copy of RemoteControlState(*(v0 + 16));

  os_unfair_lock_unlock((v0 + 24));
}

uint64_t OUTLINED_FUNCTION_93_6(double a1)
{
  *(v1 - 120) = a1;

  return specialized >> prefix<A>(_:)(v1 - 168);
}

void OUTLINED_FUNCTION_93_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_93_8()
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t OUTLINED_FUNCTION_448()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 16) = v11;
  *(a1 + 24) = a11;

  return outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, a11);
}

uint64_t OUTLINED_FUNCTION_106_5()
{

  return _print_unlocked<A, B>(_:_:)();
}

void specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v206 = v2;
  v205 = v3;
  v210 = v4;
  v6 = v5;
  v204 = v7;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd);
  OUTLINED_FUNCTION_1();
  v208 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v10);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMd);
  OUTLINED_FUNCTION_1();
  v202 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v14 = OUTLINED_FUNCTION_16(v13);
  v201 = type metadata accessor for ConversationControlsSecondaryPillButtonType(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v200 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10(&v179 - v18);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit14EphemeralAlertVSgGMd);
  OUTLINED_FUNCTION_1();
  v198 = v19;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v21);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit13ForegroundAppCSgGMd);
  OUTLINED_FUNCTION_1();
  v196 = v22;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v24);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22TUCallTransmissionModeVGMd);
  OUTLINED_FUNCTION_1();
  v194 = v25;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v27);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20CommunicationsUICore22PushToTalkChannelStateOGMd);
  OUTLINED_FUNCTION_1();
  v190 = v28;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v30);
  v188 = type metadata accessor for PushToTalkChannelState();
  OUTLINED_FUNCTION_1();
  v187 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  v186 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_10(&v179 - v35);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo26TUCallBluetoothAudioFormatVSgGMd);
  OUTLINED_FUNCTION_1();
  v183 = v36;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v38);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7TURouteCSgGMd);
  OUTLINED_FUNCTION_1();
  v211 = v39;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v41);
  v192 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v180 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16(v45 - v44);
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16(v48 - v47);
  v49 = type metadata accessor for DispatchQoS();
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_92_7();
  v51 = type metadata accessor for EntitlementsChecker();
  v221[4] = &protocol witness table for EntitlementsChecker;
  v52 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_ignoredScreenSharingRequestUUIDs] = MEMORY[0x1E69E7CC0];
  v221[3] = v51;
  v221[0] = v6;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_initiallyActiveParticipantIdentifiers] = MEMORY[0x1E69E7CD0];
  v53 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_coreAnalyticsReporter;
  *&v1[v53] = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  v54 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator;
  *&v1[v54] = [objc_allocWithZone(type metadata accessor for ConversationControlsNoticeCoordinator()) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable] = 0;
  OUTLINED_FUNCTION_197_3();
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor] = 0;
  v55 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentContactCard];
  *v55 = TPNumberPadCharacter.rawValue.getter;
  v55[1] = 0;
  v56 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_presentAddParticipantSheet];
  *v56 = TPNumberPadCharacter.rawValue.getter;
  v56[1] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isOnScreenSubscription] = 0;
  v57 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v58 = static Features.shared;
  *&v1[v57] = static Features.shared;
  v59 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_notificationCenter;
  v60 = objc_opt_self();
  v61 = v58;
  *&v1[v59] = [v60 defaultCenter];
  v62 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_observation];
  *v62 = 0u;
  v62[1] = 0u;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_minReactionCountForNotice] = 1;
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_canPostReactionNotice] = 0;
  OUTLINED_FUNCTION_197_3();
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_hasInitializedCallControlsService] = 0;
  v63 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___callControlsService];
  *v63 = 0;
  *(v63 + 1) = 0;
  *(v63 + 2) = 0;
  *(v63 + 24) = xmmword_1BC4C9460;
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemBannerPresenter);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemConversationControlsDelegate);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_systemAudioConversationControlsDelegate);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate);
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallDetailsViewControllerDelegate);
  OUTLINED_FUNCTION_197_3();
  OUTLINED_FUNCTION_197_3();
  OUTLINED_FUNCTION_88_7(OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_handoffCompletedDelegate);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager] = 0;
  v64 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v218 = v52;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v65, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v180 + 104))(v179.super_class, *MEMORY[0x1E69E8090], v192);
  *&v1[v64] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v66 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *&v1[v66] = PassthroughSubject.init()();
  v67 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityManager;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_20_57();
  }

  v68 = static HUDActivityManager.shared;
  *&v1[v67] = static HUDActivityManager.shared;
  v69 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_bannerActivityManager;
  v70 = one-time initialization token for shared;
  v71 = v68;
  if (v70 != -1)
  {
    OUTLINED_FUNCTION_32_27();
  }

  v72 = static BannerActivityManager.shared;
  *&v1[v69] = static BannerActivityManager.shared;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingScreenSharingRequestActivity] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_podcastRecordingConsentRequestActivity] = 0;
  v73 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__audioRoute;
  v218 = 0;
  v74 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7TURouteCSgMd);
  OUTLINED_FUNCTION_155_2();
  v75 = v181;
  v192 = v76;
  Published.init(initialValue:)();
  (*(v211 + 32))(&v1[v73], v75, v212);
  v218 = 0;
  LOBYTE(v219) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26TUCallBluetoothAudioFormatVSgMd);
  OUTLINED_FUNCTION_155_2();
  v77 = v182;
  Published.init(initialValue:)();
  v78 = OUTLINED_FUNCTION_141_2();
  v79(v78, v77, v184);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_cancellables] = MEMORY[0x1E69E7CC0];
  v80 = v187;
  v81 = v185;
  v82 = v188;
  (*(v187 + 104))(v185, *MEMORY[0x1E6995F20], v188);
  (*(v80 + 16))(v186, v81, v82);
  v83 = v189;
  Published.init(initialValue:)();
  (*(v80 + 8))(v81, v82);
  v84 = OUTLINED_FUNCTION_141_2();
  v85(v84, v83, v191);
  v218 = 1;
  type metadata accessor for TUCallTransmissionMode(0);
  OUTLINED_FUNCTION_155_2();
  v86 = v193;
  Published.init(initialValue:)();
  v87 = OUTLINED_FUNCTION_141_2();
  v88(v87, v86, v195);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttViewModel] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject] = 0;
  v89 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingTransmissionReceivedSubject;
  LOBYTE(v218) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  OUTLINED_FUNCTION_84();
  *&v1[v89] = CurrentValueSubject.init(_:)();
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallStatusUpdateCancellable] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallIncomingTransmissionReceivedCancellable] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert] = 0;
  v218 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13ForegroundAppCSgMd);
  OUTLINED_FUNCTION_155_2();
  Published.init(initialValue:)();
  v90 = OUTLINED_FUNCTION_94_9();
  v91(v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit0A15ControlsManagerC19CollaborationPrompt33_437EB4956F8C313AB56D9B5E6A4F0C8CLLOGMd);
  Cache.init(countLimit:)();
  type metadata accessor for ForegroundCollaborationState(0);
  swift_storeEnumTagMultiPayload();
  v218 = 0;
  v219 = 0;
  v220 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14EphemeralAlertVSgMd);
  OUTLINED_FUNCTION_155_2();
  Published.init(initialValue:)();
  v92 = OUTLINED_FUNCTION_94_9();
  v93(v92);
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_shouldShowDelayedLMIBanner] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activityLaunchTimer] = 0;
  v94 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_tccServer;
  *&v1[v94] = tcc_server_create();
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_applicationState] = 0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_189_1();
  outlined init with copy of FaceIDUnavailableNotice(v95, v80 + 8);
  Published.init(initialValue:)();
  outlined destroy of HUDActivityManager.BannerUpdate();
  v96 = OUTLINED_FUNCTION_94_9();
  v97(v96);
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_updateForegroundCollaborationStateTask] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer] = 0;
  v98 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_participantStateDidChangeSubject;
  swift_allocObject();
  *&v1[v98] = PassthroughSubject.init()();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v99 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v99, &static Logger.conversationControls);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v101))
  {
    v102 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v102);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v103, v104, "CCM init");
    OUTLINED_FUNCTION_26();
  }

  v105 = v204;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController] = v204;
  type metadata accessor for ConversationControlsJoinCountdownActionController();
  swift_allocObject();
  v106 = v105;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_countdownController] = ConversationControlsJoinCountdownActionController.init()();
  v107 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v108 = [v107 gameControllerSystemButton];

  v109 = 0;
  if ((v108 & 1) == 0)
  {
    type metadata accessor for CallGameController();
    OUTLINED_FUNCTION_37_0();
    v107 = swift_allocObject();
    v109 = CallGameController.init()();
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController] = v109;
  v110 = [objc_allocWithZone(MEMORY[0x1E69D8BF0]) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController] = v110;
  v111 = v205;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter] = v205;
  v112 = v111;
  v113 = [v112 conversationManager];
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for CollaborationInitiationManager();
  OUTLINED_FUNCTION_20();
  v114 = swift_allocObject();
  *(v114 + 16) = v107;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_collaborationInitiationManager] = v114;
  ConversationController.hasMessageCapableRemoteParticipants.getter();
  v116 = v115;
  OUTLINED_FUNCTION_30_2();
  v217 = v116 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v117 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v118 = *&v106[v117];
  v119 = 1;
  if (v118 != 3)
  {
    v120 = &v106[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v121 = *(v120 + 1);
    ObjectType = swift_getObjectType();
    v123 = v106;
    v124 = v112;
    v125 = v73;
    v126 = *(v121 + 152);
    swift_unknownObjectRetain();
    v127 = v126(ObjectType, v121);
    v73 = v125;
    v112 = v124;
    v106 = v123;
    v119 = v127;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_2();
  LOBYTE(v216) = v119 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v128 = ConversationController.audioRoute.getter();
  OUTLINED_FUNCTION_30_2();
  (*(v211 + 8))(&v1[v73], v212);
  v216 = v128;
  Published.init(initialValue:)();
  swift_endAccess();
  v129 = &v106[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v130 = *(v129 + 1);
  v131 = swift_getObjectType();
  v132 = *(v130 + 376);
  swift_unknownObjectRetain();
  LOBYTE(v130) = v132(v131, v130);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_30_2();
  v214 = (v130 & 1) == 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v133 = ConversationController.localVideoSupported.getter();
  v134 = *(v129 + 1);
  v135 = swift_getObjectType();
  v136 = *(v134 + 328);
  swift_unknownObjectRetain();
  LOBYTE(v134) = v136(v135, v134);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_30_2();
  v214 = v133 & 1;
  v215 = v134 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  outlined init with copy of IDSLookupManager(v221, &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_entitlementsChecker]);
  v137 = &v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults];
  *v137 = v210;
  v137[1] = &protocol witness table for Defaults;
  v138 = v206;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags] = v206;
  *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_reactionNoticeHistory] = MEMORY[0x1E69E7CC0];
  v139 = type metadata accessor for ConversationControlsManager(0);
  v213.receiver = v1;
  v213.super_class = v139;

  v140 = v138;
  objc_msgSendSuper2(&v213, sel_init);
  OUTLINED_FUNCTION_24_1();
  v141 = objc_allocWithZone(type metadata accessor for ConduitApprovalDelegate());
  v142 = sel_init;
  v143 = ConduitApprovalDelegate.init(_:)();
  v144 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate;
  v145 = *&v142[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate];
  *&v142[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate] = v143;

  v146 = [v112 neighborhoodActivityConduit];
  [v146 setApprovalDelegate_];

  if ([v140 lagunaEnabled])
  {
    v147 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue;
    v148 = *&v142[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_lagunaQueue];
    v149 = objc_opt_self();
    v150 = v142;
    v151 = v148;
    v152 = [v149 sharedInstance];
    v153 = OUTLINED_FUNCTION_24_1();
    v154 = objc_allocWithZone(type metadata accessor for ConduitLagunaNoticeManager(v153));
    v155 = OUTLINED_FUNCTION_43_0();
    ConduitLagunaNoticeManager.init(_:queue:callCenter:)(v155, v156, v149, v157, v158, v159, v160, v161, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
    v163 = v162;
    v164 = [v112 neighborhoodActivityConduit];
    [v164 addDelegate:v163 queue:*&v142[v147]];

    v165 = [v112 conversationManager];
    [v165 addDelegate:v163 queue:*&v142[v147]];

    v166 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conduitLagunaNoticeManager;
    OUTLINED_FUNCTION_3_5();
    v167 = *&v150[v166];
    *&v150[v166] = v163;
  }

  ConversationControlsManager.updateShareButtonState()();
  v168 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_108_4();
  (*(v169 + 2608))();
  ConversationControlsManager.setupConversationControllerObservers()();
  v170 = *&v142[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator];
  v171 = *((*v168 & *v170) + 0xA0);
  v172 = v170;
  v173 = v207;
  v171();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Published<Notice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit6Notice_pSg_GMd);
  v174 = v209;
  v175 = Publisher<>.sink(receiveValue:)();

  (*(v208 + 8))(v173, v174);
  *&v142[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeNoticeCancellable] = v175;

  if (*&v142[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameController])
  {
    OUTLINED_FUNCTION_20();
    v176 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_20();
    v177 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v178 = GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(partial apply for closure #2 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v176, partial apply for closure #3 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:), v177);
    specialized CallGameController.addEvent(_:)(v178);
  }

  [*&v142[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController] setDelegate_];

  __swift_destroy_boxed_opaque_existential_1(v221);
  OUTLINED_FUNCTION_30_0();
}

void *OUTLINED_FUNCTION_65_2()
{

  return memcpy((v2 + v1), (v0 + 712), 0xACuLL);
}

id OUTLINED_FUNCTION_65_3(void *a1)
{

  return [a1 conversationKit];
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t result)
{
  v4 = (v2 + *(*(v3 - 128) + 44));
  *v4 = v1;
  v4[1] = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_65_10()
{

  return lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors();
}

uint64_t OUTLINED_FUNCTION_81()
{
}

void OUTLINED_FUNCTION_65_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 180);

  _os_log_impl(a1, v4, v8, a4, v5, 0x26u);
}

uint64_t OUTLINED_FUNCTION_65_17()
{
  *(v1 - 88) = 7;

  return static ConversationControlsType.== infix(_:_:)(v0, v1 - 128);
}

uint64_t type metadata accessor for ConversationControlsNoticeCoordinator()
{
  result = type metadata singleton initialization cache for ConversationControlsNoticeCoordinator;
  if (!type metadata singleton initialization cache for ConversationControlsNoticeCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Defaults.sharePlayAvailable.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 conversationManager];

  v4 = [v3 *a1];
  return v4;
}

void *OUTLINED_FUNCTION_279_0(void *a1)
{

  return memcpy(a1, (v1 + v2), 0xE8uLL);
}

uint64_t ConversationControlsManager.isWaitingOnFirstRemoteFrame.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

id OUTLINED_FUNCTION_371_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 120) = v2;

  return v2;
}

uint64_t ConversationController.isOneToOneModeEnabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) & 1) != 0 || (ConversationController.isOneToOneModeInferred.getter())
  {
    v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void ConversationControlsManager.controlsMode.getter()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v5 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v164 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v165 = v15;
  OUTLINED_FUNCTION_13_2();
  v166 = *((*MEMORY[0x1E69E7D40] & v16) + 0x2C0);
  v17 = v166();
  v163 = v12;
  if (v17)
  {
    v18 = v17;
    v169 = [v17 state];
  }

  else
  {
    v169 = 0;
  }

  v19 = OUTLINED_FUNCTION_417();
  v20 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
  if ((*(v1 + 680))(v19, v1))
  {
    OUTLINED_FUNCTION_109_3();
    (*(v21 + 672))();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_311_0();
    v22();
    v23 = OUTLINED_FUNCTION_280_0();
    if ((v1 & 1) != 0 && !v169)
    {
      v1 = (v166)(v23);
      v24 = [v1 handoffEligibility];

      if (v24)
      {

        OUTLINED_FUNCTION_256_0();
        if (!v39)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v25 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v25, &static Logger.conversationControls);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_25(v27))
        {
          v28 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_50_0(v28);
          OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v29, v30, "ConversationControlsManager: handoffEligible");
          OUTLINED_FUNCTION_26();
        }

        goto LABEL_98;
      }
    }
  }

  OUTLINED_FUNCTION_109_3();
  v32 = v31 + 672;
  v167 = *(v31 + 672);
  v167();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_311_0();
  v33();
  v34 = OUTLINED_FUNCTION_280_0();
  if (v1)
  {
    v1 = (v166)(v34);
    v35 = [v1 link];

    if (v35)
    {

      v36 = *(v4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
      v1 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
      OUTLINED_FUNCTION_3_0();
      v34 = swift_beginAccess();
      if ((*(v36 + v1) - 1) <= 1)
      {
        goto LABEL_98;
      }
    }
  }

  (v167)(v34);
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_236_0();
  v37();
  v38 = OUTLINED_FUNCTION_280_0();
  v39 = v1 == 4 && v169 == 3;
  if (v39)
  {
    goto LABEL_98;
  }

  v161 = v8;
  v40 = (v167)(v38);
  ConversationControlsManager.shouldShowCallAgainHUD(forCall:)(v40, v41);
  OUTLINED_FUNCTION_375();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_256_0();
  v162 = v32;
  if (!v39)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, &static Logger.conversationControls);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v44))
  {
    v20 = OUTLINED_FUNCTION_18_18();
    *v20 = 67109120;
    *(v20 + 4) = v8 & 1;
    OUTLINED_FUNCTION_85();
    _os_log_impl(v45, v46, v47, v48, v20, 8u);
    OUTLINED_FUNCTION_239();
  }

  if (v8)
  {
    goto LABEL_98;
  }

  v49 = Features.receptionistEnabled.getter();
  v50 = MEMORY[0x1E6995E98];
  v51 = MEMORY[0x1E6995EA0];
  if (v49)
  {
    v173 = &type metadata for ScreeningStatusOverride;
    v174 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    OUTLINED_FUNCTION_24();
    swift_allocObject();
    v171 = Defaults.init()();
    CallScreeningService.init(overrides:)();
    OUTLINED_FUNCTION_227_0();
    v40();
    v52 = OUTLINED_FUNCTION_254_0();
    (*(v20 + 48))(&v171, v52, v20);
    swift_unknownObjectRelease();
    CallScreeningService.screeningStatusForCall(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v171);
    OUTLINED_FUNCTION_23_26();
    v53(v2, v5);
    v54 = v164;
  }

  else
  {
    OUTLINED_FUNCTION_227_0();
    v40();
    v55 = OUTLINED_FUNCTION_254_0();
    (*(v20 + 144))(v55, v20);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    if (v20)
    {
      v56 = v51;
    }

    else
    {
      v56 = v50;
    }

    LODWORD(v20) = v164;
    (*(v161 + 104))(v3, *v56, v164);
    v57 = OUTLINED_FUNCTION_270_0();
    v54 = v164;
    v58(v57);
  }

  OUTLINED_FUNCTION_226_1();
  v40();
  objc_opt_self();
  OUTLINED_FUNCTION_170();
  v59 = swift_dynamicCastObjCClass();
  if (v59)
  {
    [v59 isWaitOnHoldActive];
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    if (v20)
    {
      (*(v161 + 8))(v165, v54);
      (*(v161 + 104))(v165, *v50, v54);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v60 = v161;
  v61 = v163;
  (*(v161 + 16))(v163, v165, v54);
  v62 = (*(v161 + 88))(v163, v54);
  if (v62 == *MEMORY[0x1E6995EA8])
  {
    v60 = v161 + 8;
    v63 = *(v161 + 8);
    v63(v163, v54);
    v64 = OUTLINED_FUNCTION_355();
    v65 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v65))
    {
      v61 = OUTLINED_FUNCTION_33();
      *v61 = 0;
      OUTLINED_FUNCTION_85();
      _os_log_impl(v66, v67, v68, v69, v61, 2u);
      OUTLINED_FUNCTION_239();
    }

    if (v49)
    {
      v70 = OUTLINED_FUNCTION_270_0();
      (v63)(v70);
LABEL_98:
      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  else
  {
    v40 = v62;
    if (v62 != *v50)
    {
      if (v62 == *v51)
      {
        v91 = OUTLINED_FUNCTION_355();
        v92 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_163(v92))
        {
          v93 = OUTLINED_FUNCTION_33();
          *v93 = 0;
          OUTLINED_FUNCTION_85();
          _os_log_impl(v94, v95, v96, v97, v93, 2u);
          OUTLINED_FUNCTION_239();
        }

        OUTLINED_FUNCTION_23_26();
        v98 = OUTLINED_FUNCTION_270_0();
        v99(v98);
        goto LABEL_98;
      }

      v61 = *MEMORY[0x1E6995EB0];
      v60 = OUTLINED_FUNCTION_355();
      if (v40 == v61)
      {
        v110 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v110))
        {
          v61 = OUTLINED_FUNCTION_33();
          *v61 = 0;
          _os_log_impl(&dword_1BBC58000, v60, v110, "Showing controls for CallScreening", v61, 2u);
          OUTLINED_FUNCTION_239();
        }

        if (v49)
        {
          OUTLINED_FUNCTION_23_26();
          v111 = OUTLINED_FUNCTION_270_0();
          v112(v111);
          goto LABEL_98;
        }
      }

      else
      {
        v113 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v60, v113))
        {
          OUTLINED_FUNCTION_42();
          v114 = OUTLINED_FUNCTION_38_3();
          v171 = v114;
          *v49 = 136315138;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          OUTLINED_FUNCTION_190();
          lazy protocol witness table accessor for type URL and conformance URL(v115, v116);
          v117 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v118;
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v171);
          OUTLINED_FUNCTION_28_0();

          *(v49 + 4) = v165;
          OUTLINED_FUNCTION_302(&dword_1BBC58000, v60, v113, "ConversationControlsManager found unknown screening status: %s");
          __swift_destroy_boxed_opaque_existential_1(v114);
          v54 = v164;
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_4();
        }

        (*(v161 + 8))(v163, v54);
      }
    }
  }

  v167();
  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_154();
  v72 = v71();
  swift_unknownObjectRelease();
  v73 = OUTLINED_FUNCTION_355();
  v74 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v74))
  {
    OUTLINED_FUNCTION_30_1();
    v60 = OUTLINED_FUNCTION_16_8();
    v171 = v60;
    *v49 = 136315394;
    v75 = v169;
    v175 = v169;
    type metadata accessor for TUConversationState(0);
    v76 = >> prefix<A>(_:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v171);
    OUTLINED_FUNCTION_397();

    *(v49 + 4) = v40;
    *(v49 + 12) = 2080;
    LODWORD(v175) = v72;
    type metadata accessor for TUCallStatus(0);
    v78 = >> prefix<A>(_:)();
    v61 = v79;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v171);
    OUTLINED_FUNCTION_397();

    *(v49 + 14) = v40;
    OUTLINED_FUNCTION_130_1();
    _os_log_impl(v80, v81, v82, v83, v84, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v75 = v169;
  }

  if (v75 - 2 < 3)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    if ((*(v85 + 624))())
    {
      v86 = v166();
      if (v86)
      {
        v87 = v86;
        if ([v86 isContinuitySession])
        {
          v88 = [v87 avMode];

          if (!v88)
          {
LABEL_51:
            v89 = OUTLINED_FUNCTION_270_0();
            v90(v89);
            goto LABEL_98;
          }
        }

        else
        {
        }
      }
    }

    OUTLINED_FUNCTION_109_3();
    (*(v119 + 896))();
    v120 = OUTLINED_FUNCTION_270_0();
    v121(v120);
    goto LABEL_98;
  }

  if (v75 <= 1)
  {
    v100 = *(v4 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    v101 = v100;
    if (ConversationController.shouldShowJoinCountdown.getter())
    {
      OUTLINED_FUNCTION_109_3();
      v101 = v4;
      if ((*(v102 + 1256))())
      {
        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_159_0();
        v103();
        OUTLINED_FUNCTION_247();
        swift_unknownObjectRelease();
        if (v61)
        {
          goto LABEL_51;
        }
      }
    }

    OUTLINED_FUNCTION_227_0();
    v40();
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_154();
    v104();
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    if (v61 == 3 || (OUTLINED_FUNCTION_226_1(), v40(), OUTLINED_FUNCTION_254_0(), OUTLINED_FUNCTION_154(), v105(), OUTLINED_FUNCTION_247(), swift_unknownObjectRelease(), v61 == 4))
    {
      OUTLINED_FUNCTION_226_1();
      v40();
      v106 = OUTLINED_FUNCTION_254_0();
      (*(v61 + 192))(v106, v61);
      OUTLINED_FUNCTION_247();
      swift_unknownObjectRelease();
      specialized Set.count.getter(v61);
      OUTLINED_FUNCTION_28_0();

      if (v101 > 1 || (OUTLINED_FUNCTION_226_1(), v40(), OUTLINED_FUNCTION_254_0(), OUTLINED_FUNCTION_154(), v108(), OUTLINED_FUNCTION_247(), v107 = swift_unknownObjectRelease(), v61 != 3) || (v61 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState, OUTLINED_FUNCTION_3_0(), v107 = swift_beginAccess(), *(v100 + v61)))
      {
LABEL_79:
        v122 = v162;
        (v40)(v107);
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_154();
        v170 = v123();
        v124 = swift_unknownObjectRelease();
        (v40)(v124);
        v125 = OUTLINED_FUNCTION_254_0();
        (*(v61 + 192))(v125, v61);
        OUTLINED_FUNCTION_247();
        swift_unknownObjectRelease();
        v168 = specialized Set.count.getter(v61);

        v127 = v166;
        v128 = (v166)(v126);
        if (v128)
        {
          v129 = v128;
          v130 = [v128 mergedActiveRemoteParticipants];

          OUTLINED_FUNCTION_30_20();
          v122 = type metadata accessor for NSObject(v131, v132);
          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_30_20();
          v127 = v166;
          lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v133, v134);
          v135 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Set.count.getter(v135);
          OUTLINED_FUNCTION_359();
        }

        else
        {
          v60 = -1;
        }

        v136 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
        OUTLINED_FUNCTION_3_0();
        v137 = swift_beginAccess();
        v138 = *(v100 + v136);
        v139 = (v127)(v137);
        if (v139)
        {
          v140 = v139;
          v141 = [v139 localParticipantAssociation];

          if (v141)
          {
            v142 = [v141 identifier];
          }

          else
          {
            v142 = 0;
          }

          v127 = v166;
        }

        else
        {
          v142 = 0;
        }

        v143 = v127();
        if (v143 && (v144 = v143, v145 = [v143 link], v144, v145) && (v146 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v145), v147))
        {
          v148 = v146;
          v149 = v147;
        }

        else
        {

          v149 = 0xE300000000000000;
          v148 = 7104878;
        }

        v150 = OUTLINED_FUNCTION_355();
        v151 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v150, v151))
        {
          swift_slowAlloc();
          v152 = OUTLINED_FUNCTION_38_3();
          v176 = v152;
          *v122 = 67241474;
          *(v122 + 4) = v170;
          *(v122 + 8) = 2050;
          *(v122 + 10) = v168;
          *(v122 + 18) = 2050;
          *(v122 + 20) = v60;
          *(v122 + 28) = 2050;
          *(v122 + 30) = v138;
          *(v122 + 38) = 2080;
          v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, &v176);

          *(v122 + 40) = v153;
          *(v122 + 48) = 2048;
          *(v122 + 50) = v142;
          OUTLINED_FUNCTION_130_1();
          _os_log_impl(v154, v155, v156, v157, v158, 0x3Au);
          __swift_destroy_boxed_opaque_existential_1(v152);
          OUTLINED_FUNCTION_239();
          OUTLINED_FUNCTION_4_4();
        }

        else
        {
        }

        OUTLINED_FUNCTION_23_26();
        v159(v165, v164);
        goto LABEL_98;
      }

      v61 = (v166)(v107);
      v109 = [v61 link];

      if (v109)
      {
        v40 = v167;
LABEL_78:

        goto LABEL_79;
      }

      v61 = v166();
      v109 = [v61 localParticipantAssociation];

      v40 = v167;
      if (v109)
      {
        goto LABEL_78;
      }
    }

    (*(v161 + 8))(v165, v164);
    goto LABEL_98;
  }

  v171 = 0;
  v172 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v171 = 0xD00000000000001FLL;
  v172 = 0x80000001BC508330;
  v175 = v75;
  type metadata accessor for TUConversationState(0);
  v160 = >> prefix<A>(_:)();
  MEMORY[0x1BFB20B10](v160);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id OUTLINED_FUNCTION_330_0(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t ConversationControlsManager.conversation.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
    v0 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    OUTLINED_FUNCTION_310_0(v0, v1, v2, v3, v4, v5, v6, v7, v9);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v11, &_s15ConversationKit0A0_pSgMd);
    return 0;
  }
}

uint64_t ConversationControlsManager.shouldShowCallAgainHUD(forCall:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (((*(a2 + 544))(ObjectType, a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
  v6 = swift_getObjectType();
  return (*(v5 + 600))(v6, v5) & 1;
}

uint64_t TUCall.cnk_eligibleForRedial.getter()
{
  v1 = [v0 handle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo24TUCallDisconnectedReasonV_Tt0g5();
      v9 = v8;
      if (([v0 service] == 3 || objc_msgSend(v0, sel_service) == 2) && (v10 = objc_msgSend(v0, sel_remoteParticipantHandles), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle), OUTLINED_FUNCTION_1_65(), lazy protocol witness table accessor for type TUCall and conformance TUCall(v11, &lazy cache variable for type metadata for TUHandle), v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v10, v13 = specialized Set.count.getter(v12), , v13 == 1) && objc_msgSend(v0, sel_status) == 6)
      {
        v14 = specialized Set.contains(_:)([v0 disconnectedReason], v9);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo24TUCallDisconnectedReasonV_Tt0g5()
{
  OUTLINED_FUNCTION_42_4();
  v4 = v3;
  if (*(v3 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo24TUCallDisconnectedReasonVGMd), v5 = OUTLINED_FUNCTION_38_8(), (v6 = *(v4 + 16)) != 0))
  {
    OUTLINED_FUNCTION_84_0();
    while (v0 < *(v4 + 16))
    {
      v7 = *(v2 + 4 * v0++);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      Hasher._finalize()();
      while (1)
      {
        OUTLINED_FUNCTION_78_1();
        if (v12)
        {
          break;
        }

        if (*(*(v5 + 48) + 4 * v8) == v7)
        {
          goto LABEL_11;
        }
      }

      *(v1 + 8 * v9) = v11 | v10;
      *(*(v5 + 48) + 4 * v8) = v7;
      OUTLINED_FUNCTION_52_2();
      if (v14)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v13;
LABEL_11:
      if (v0 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_43_6();
  }
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return outlined init with take of CaptionSectioner.SpeakerSection?();
}

uint64_t OUTLINED_FUNCTION_100_2()
{
}

uint64_t OUTLINED_FUNCTION_100_6(unint64_t *a1)
{

  return lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(a1, v1);
}

uint64_t Features.receptionistEnabled.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 && (v0 = [v0 currentDevice], v3 = objc_msgSend(v0, sel_userInterfaceIdiom), v0, v3 != 1))
  {
    LOBYTE(v0) = 0;
  }

  else
  {
    lazy protocol witness table accessor for type Features.TelephonyUtilities and conformance Features.TelephonyUtilities();
    v4 = OUTLINED_FUNCTION_12_53();
    OUTLINED_FUNCTION_8_68(v4);
  }

  return v0 & 1;
}

void OUTLINED_FUNCTION_236(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_236_3()
{

  return _s15ConversationKit11ParticipantVWObTm_6();
}

id OUTLINED_FUNCTION_277_0(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

uint64_t OUTLINED_FUNCTION_277_1()
{

  return type metadata accessor for DispatchPredicate();
}

double OUTLINED_FUNCTION_297_1()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

BOOL @objc TUCall.isWaitOnHoldActive()(void *a1)
{
  v1 = a1;
  v2 = TUCall.isWaitOnHoldActive()();

  return v2;
}

Swift::Bool __swiftcall TUCall.isWaitOnHoldActive()()
{
  v1 = [v0 smartHoldingSession];
  if (v1)
  {
    v2 = v1;
    v3 = specialized Sequence<>.contains(_:)([v1 state], &outlined read-only object #0 of TUCall.isWaitOnHoldActive());

    LOBYTE(v1) = v3;
  }

  return v1;
}

id OUTLINED_FUNCTION_157_1()
{
  *(v3 + 4) = v0;
  *(v3 + 12) = 2080;
  *(v1 + 48) = v2;

  return v2;
}

void *OUTLINED_FUNCTION_157_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x200], 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_378(uint64_t a1)
{

  return outlined destroy of CallControlsService?(a1, v1);
}

uint64_t ConversationController.shouldShowJoinCountdown.getter()
{
  v2 = v1;
  v3 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_10();
  ConversationController.lookupActiveConversation()();
  if (!v15)
  {
    outlined destroy of CallControlsService?(&v14, &_s15ConversationKit0A0_pSgMd);
    goto LABEL_8;
  }

  outlined init with take of TapInteractionHandler(&v14, v16);
  OUTLINED_FUNCTION_184_2(v16);
  v5 = OUTLINED_FUNCTION_84_9();
  v7 = v6(v5);
  if (!v7 || (v7, v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v2 + v8) != 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_8:
    v10 = 0;
    return v10 & 1;
  }

  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v2 + v9, v0);
  if (*(v0 + *(v3 + 28)))
  {
    v10 = 0;
  }

  else
  {
    Participant.CountdownInfo.shouldShowJoinCountdown.getter();
    v10 = v12;
  }

  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v0, v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v10 & 1;
}

void *ConversationControlsManager.isOneToOneConversation.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  if (result)
  {
    v2 = result;
    v3 = [result mergedRemoteMembers];
    OUTLINED_FUNCTION_41();
    type metadata accessor for NSObject(v4, v5);
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_41();
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v6, v7);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.count.getter(v8);
    OUTLINED_FUNCTION_6_4();

    if (v3 == 1)
    {
      v9 = [v2 mergedActiveRemoteParticipants];
      OUTLINED_FUNCTION_41();
      type metadata accessor for NSObject(v10, v11);
      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_41();
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v12, v13);
      v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Set.count.getter(v14);
      OUTLINED_FUNCTION_6_4();

      return (v9 < 2);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_296_0()
{

  return swift_beginAccess();
}

uint64_t ConversationControlsManager.pttChannelState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();
}

{
  return ConversationControlsManager.pttChannelState.getter();
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerObservers()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v3);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_18();
  }

  ConversationControlsManager.setupConversationControllerLocalStateObservers()();
  ConversationControlsManager.setupConversationControllerConversationStateObservers()();
  ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()();
  ConversationControlsManager.setupConversationControllerSharePlayStateObservers()();
  ConversationControlsManager.setupConversationControllerGondolaStateObservers()();
  ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()();

  ConversationControlsManager.setupGreenTea3PStateObservers()();
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerLocalStateObservers()()
{
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v0 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v0);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_356();
  v1 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
}

uint64_t OUTLINED_FUNCTION_254_0()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_208_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v1 = *v3;
  v1[1] = v5;
  v1[2] = v6;
  return result;
}

void *OUTLINED_FUNCTION_208_3(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x150uLL);
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v5);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
  }

  if ([*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled])
  {
    v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    OUTLINED_FUNCTION_20();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_278(v12);
    swift_unknownObjectWeakInit();
    v13 = (v11 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
    OUTLINED_FUNCTION_3_5();
    *v13 = partial apply for closure #1 in ConversationControlsManager.setupConversationControllerConversationStateObservers();
    v13[1] = v3;

    v14 = OUTLINED_FUNCTION_40_2();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);
  }

  v15 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  OUTLINED_FUNCTION_36();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v16);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v17);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v18);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v19);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v20);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v21);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v22);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v23);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v24);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v25);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_36();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_278(v26);
  swift_unknownObjectWeakInit();
  v27 = (v15 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  OUTLINED_FUNCTION_3_5();
  *v27 = partial apply for closure #12 in ConversationControlsManager.setupConversationControllerConversationStateObservers();
  v27[1] = &unk_1F3ADF248;

  v28 = OUTLINED_FUNCTION_40_2();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v28);

  if (one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification != -1)
  {
    swift_once();
  }

  v29 = OUTLINED_FUNCTION_211_0();
  [v29 v30];
  v31 = OUTLINED_FUNCTION_211_0();
  [v31 v32];
  if (one-time initialization token for MoreMenuRemoteAlertViewPresentAddParticipant != -1)
  {
    swift_once();
  }

  v33 = OUTLINED_FUNCTION_211_0();
  [v33 v34];
  if (one-time initialization token for MoreMenuRemoteAlertViewPresentContactCard != -1)
  {
    swift_once();
  }

  v35 = OUTLINED_FUNCTION_211_0();
  [v35 v36];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v37 = static Defaults.shared;
  OUTLINED_FUNCTION_20();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v38);
  swift_unknownObjectWeakInit();
  v39 = *(*v37 + 864);

  v40 = OUTLINED_FUNCTION_28_3();
  v39(v40);
  OUTLINED_FUNCTION_6_4();

  if (v37)
  {
    type metadata accessor for Defaults.Observation();
  }

  OUTLINED_FUNCTION_30_2();
  outlined assign with take of RecentsCallItem?();
  swift_endAccess();
}

id Defaults.screeningStatusOverrideObservation(onUpdate:)(uint64_t a1, uint64_t a2)
{
  if ((Defaults.isInternalInstall.getter() & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = objc_allocWithZone(type metadata accessor for Defaults.Observation());

  return Defaults.Observation.init(userDefault:key:onChange:)();
}

uint64_t sub_1BBCBF42C()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

id Defaults.isInternalInstall.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isInternalInstall];

  return v2;
}

id Defaults.Observation.init(userDefault:key:onChange:)()
{
  OUTLINED_FUNCTION_11_102();
  ObjectType = swift_getObjectType();
  v7 = &v1[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_key];
  *v7 = v4;
  *(v7 + 1) = v3;
  *&v1[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_userDefault] = v5;
  v8 = &v1[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_onChange];
  *v8 = v2;
  *(v8 + 1) = v0;
  v13.receiver = v1;
  v13.super_class = ObjectType;

  v9 = v5;

  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = MEMORY[0x1BFB209B0](v4, v3);

  [v9 addObserver:v10 forKeyPath:v11 options:0 context:{0, v13.receiver, v13.super_class}];

  return v10;
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v0 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v0);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_356();
  v1 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v0 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v0);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_356();
  v1 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
}

Swift::Void __swiftcall ConversationControlsManager.setupConversationControllerGondolaStateObservers()()
{
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_84_5();
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_50_14();
  v0 = OUTLINED_FUNCTION_3_54();
  OUTLINED_FUNCTION_247_0(v0);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_356();
  v1 = OUTLINED_FUNCTION_62_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
}

uint64_t ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v43 - v3;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15ConversationKit4Call_pGMd);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAhI_ps5NeverOGGMd);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAjK_ps5NeverOGGANySbAPGGMd);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAlM_ps5NeverOGGAPySbARGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGMd);
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAnO_ps5NeverOGGARySbATGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGSo17OS_dispatch_queueCGMd);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v43 - v21;
  v22 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = (v22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  swift_beginAccess();
  v25 = *v24;
  *v24 = partial apply for closure #1 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers();
  v24[1] = v23;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v25);

  v59 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v26);
  v60 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
  Just.init(_:)();
  v59 = ConversationControlsManager.pttCallUpdateSubject.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Just<Call> and conformance Just<A>, &_s7Combine4JustVy15ConversationKit4Call_pGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Call, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMd);
  v28 = v43;
  Publisher.merge<A>(with:)();

  (*(v45 + 8))(v7, v28);
  v59 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_incomingTransmissionReceivedSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAhI_ps5NeverOGGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  v29 = v46;
  Publisher.combineLatest<A>(_:)();
  (*(v47 + 8))(v11, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>>, CurrentValueSubject<Bool, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAjK_ps5NeverOGGANySbAPGGMd);
  v30 = v44;
  v31 = v48;
  Publisher.compactMap<A>(_:)();
  (*(v49 + 8))(v15, v31);
  v32 = v53;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v33 = static OS_dispatch_queue.main.getter();
  v59 = v33;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v35 = v56;
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v34);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.CombineLatest<Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>>, CurrentValueSubject<Bool, Never>>, (call: TUCall, activeRemoteParticipant: TUParticipant?, isIncomingTransmission: Bool)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAlM_ps5NeverOGGAPySbARGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGMd);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v37 = v50;
  v36 = v51;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of CallControlsService?(v35, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v57 + 8))(v32, v58);
  (*(v52 + 8))(v30, v36);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for closure #3 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers();
  *(v39 + 24) = v38;
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.CompactMap<Publishers.CombineLatest<Publishers.Merge<Just<Call>, CurrentValueSubject<Call, Never>>, CurrentValueSubject<Bool, Never>>, (call: TUCall, activeRemoteParticipant: TUParticipant?, isIncomingTransmission: Bool)>, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC10CompactMapVy_AC0A6LatestVy_AC5MergeVy_AA4JustVy15ConversationKit4Call_pGAA19CurrentValueSubjectCyAnO_ps5NeverOGGARySbATGGSo6TUCallC4call_So13TUParticipantCSg23activeRemoteParticipantSb22isIncomingTransmissiontGSo17OS_dispatch_queueCGMd);
  v40 = v54;
  v41 = Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v37, v40);
  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_pttCallStatusUpdateCancellable) = v41;
}

uint64_t sub_1BBCC05AC()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t ConversationControlsManager.pttCallUpdateSubject.getter()
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject))
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager____lazy_storage___pttCallUpdateSubject);
  }

  else
  {
    OUTLINED_FUNCTION_262();
    (*((*MEMORY[0x1E69E7D40] & v4) + 0x2A0))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit4Call_ps5NeverOGMd);
    swift_allocObject();
    v3 = CurrentValueSubject.init(_:)();
    *(v0 + v2) = v3;
  }

  return v3;
}

void *specialized thunk for @escaping @callee_guaranteed (@guaranteed Call, @unowned Bool) -> (@owned (call: TUCall, activeRemoteParticipant: TUParticipant?, isIncomingTransmission: Bool)?)@<X0>(uint64_t a1@<X8>)
{
  result = closure #2 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

void *closure #2 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    swift_unknownObjectRetain();
    if ([v0 isPTT])
    {
      if ([v0 isReceivingTransmission])
      {
        v1 = [v0 activeRemoteParticipant];
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return v0;
}

Swift::Void __swiftcall ConversationControlsManager.setupGreenTea3PStateObservers()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v1 = [v0 groupConversations];

  if (v1)
  {
    if (TUDeviceHasChinaSKU())
    {
      OUTLINED_FUNCTION_20();
      v2 = swift_allocObject();
      OUTLINED_FUNCTION_247_0(v2);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_356();
      v3 = OUTLINED_FUNCTION_62_0();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
    }
  }
}

uint64_t ConversationControlsNoticeCoordinator.$activeNotice.getter()
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit6Notice_pSgGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

void closure #1 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (v28)
    {
      outlined init with take of TapInteractionHandler(&v27, v31);
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v2 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
      outlined init with copy of IDSLookupManager(v31, &v27);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = OUTLINED_FUNCTION_42();
        v26 = OUTLINED_FUNCTION_23();
        *v5 = 136315138;
        v6 = v28;
        v7 = v29;
        v8 = __swift_project_boxed_opaque_existential_1(&v27, v28);
        (*(v7 + 120))(v6, v7);
        OUTLINED_FUNCTION_264();
        __swift_destroy_boxed_opaque_existential_1(&v27);
        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v6, &v26);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_1BBC58000, v3, v4, "Present activeNotice: %s", v5, 0xCu);
        OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_18();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v27);
      }

      OUTLINED_FUNCTION_293();
      if ((*(v22 + 1256))())
      {
        v23 = OUTLINED_FUNCTION_255();
        outlined init with copy of IDSLookupManager(v31, &v27);
        v30 = 1;
        (*(v3 + 80))(&v27, 0, 0, v23, v3);
        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsType(&v27);
      }

      OUTLINED_FUNCTION_293();
      if ((*(v24 + 1184))())
      {
        OUTLINED_FUNCTION_255();
        outlined init with copy of IDSLookupManager(v31, &v27);
        v30 = 1;
        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_3_0();
        v25();
        swift_unknownObjectRelease();

        outlined destroy of ConversationControlsType(&v27);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      outlined destroy of CallControlsService?(&v27, &_s15ConversationKit6Notice_pSgMd);
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v10 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v12))
      {
        v13 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v13);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_18();
      }

      type metadata completion function for SyncedScreeningAlphaGradientView();
      OUTLINED_FUNCTION_380();
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v19, v20, v21);
    }
  }
}

uint64_t ConversationControlsManager.notifyDelegates(about:forceUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0))();
    a2 = v9;
  }

  ObjectType = swift_getObjectType();
  v11 = *(a2 + 96);
  swift_unknownObjectRetain();
  if (v11(ObjectType, a2))
  {
    ConversationControlsManager.controlsHUDUpdate(for:)(v8, a2, v12, v13, v14, v15, v16, v17, v29[0], v29[1], v29[2], v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v33, v34);
    ConversationController.lookupActiveConversation()();
    v18 = v30;
    if (v30)
    {
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = Conversation.isContinuitySession.getter(v18, v19);
      v21 = __swift_destroy_boxed_opaque_existential_1(v29);
      if (v20)
      {
LABEL_14:
        if ((*((*v6 & *v4) + 0x4E8))(v21))
        {
          v27 = v26;
          v28 = swift_getObjectType();
          (*(v27 + 80))(v32, BYTE2(v33), a3 & 1, v28, v27);
          swift_unknownObjectRelease();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
        Subject<>.send()();
        swift_unknownObjectRelease();
        return outlined destroy of ControlsHUDUpdate(v32);
      }
    }

    else
    {
      v21 = outlined destroy of CallControlsService?(v29, &_s15ConversationKit0A0_pSgMd);
    }

    v21 = (*((*v6 & *v4) + 0x4B8))(v21);
    if (v21)
    {
      v24 = v23;
      v25 = swift_getObjectType();
      (*(v24 + 16))(v32, BYTE1(v33), v25, v24);
      v21 = swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  return swift_unknownObjectRelease();
}

void ConversationControlsManager.controlsHUDUpdate(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v196 = v25;
  v27 = v26;
  v29 = v28;
  v191 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v190 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v189 = v33 - v32;
  OUTLINED_FUNCTION_4_24();
  v34 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17();
  v194 = (v38 - v39);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v40);
  v188 = &v183 - v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v183 - v43;
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v45) + 0x4E8))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_222_0();
    v46();
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    v47 = v20 ^ 1u;
  }

  else
  {
    v47 = 1;
  }

  v48 = *(v21 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features);
  v49 = v48;
  if (Features.isIncomingCallBannerEnabled.getter())
  {
    v49 = v48;
    LODWORD(v197) = !Features.shouldShowFullScreenCallWaiting.getter() | v47;
  }

  else
  {
    LODWORD(v197) = 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_108_0();
  v50 = swift_dynamicCastObjCClass();
  if (!v50)
  {
    goto LABEL_31;
  }

  v47 = v50;
  objc_opt_self();
  OUTLINED_FUNCTION_6_4();
  swift_unknownObjectRetain();
  v51 = [v49 sharedInstance];
  v52 = [v51 activeConversationForCall_];

  v187 = v52;
  if (!v52)
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v24) + 0x620))())
  {
  }

  else if ([v187 state] != 2)
  {
LABEL_16:
    swift_unknownObjectRelease();

    goto LABEL_31;
  }

  if ([v47 status] != 1)
  {
    goto LABEL_16;
  }

  v193 = v27;
  v195 = v44;
  v192 = v36;
  v198 = v29;
  v53 = [v187 screenSharingRequests];
  v54 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v55, &lazy cache variable for type metadata for TUScreenSharingRequest);
  OUTLINED_FUNCTION_243();
  v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v186 = v34;
  v184 = v56;
  v185 = v54;
  if ((v56 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v47 = v206;
    v57 = v207;
    v58 = v208;
    v59 = v209;
    v60 = v210;
  }

  else
  {
    v47 = v56;
    v57 = (v56 + 56);
    v58 = ~(-1 << *(v56 + 32));
    OUTLINED_FUNCTION_56();
    v60 = (v61 & v62);

    v59 = 0;
  }

  v183 = v58;
  v63 = (v58 + 64) >> 6;
  if (v47 < 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v64 = v59;
  v65 = v59;
  if (!v60)
  {
    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v65 >= v63)
      {
        goto LABEL_30;
      }

      ++v64;
      if (v57[v65])
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_98:
    OUTLINED_FUNCTION_0_0();
LABEL_69:
    v123 = type metadata accessor for Logger();
    v191 = __swift_project_value_buffer(v123, &static Logger.conversationControls);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = OUTLINED_FUNCTION_42();
      v127 = OUTLINED_FUNCTION_23();
      v202 = v127;
      *v126 = v54[289];
      LOBYTE(v200) = v60;
      v128 = >> prefix<A>(_:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, &v202);
      OUTLINED_FUNCTION_17_2();
      *(v126 + 4) = v57;
      OUTLINED_FUNCTION_325_0();
      _os_log_impl(v130, v131, v132, v133, v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v127);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_3_83();
    }

    if (!(v60 & 1 | ((v197 & 1) == 0)))
    {
      v134 = OUTLINED_FUNCTION_113_1();
      v136 = v135(v134);
      v137 = [v136 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = String.count.getter();
      v139 = v194;

      if (v138 >= 1)
      {
        v140 = OUTLINED_FUNCTION_113_1();
        v141 = v139(v140);
        v142 = [v141 isFaceTimeProvider];

        if ((v142 & 1) == 0)
        {
          v159 = OUTLINED_FUNCTION_113_1();
          if (v160(v159) & 1) != 0 || (v161 = OUTLINED_FUNCTION_113_1(), (v162(v161)) || (v163 = OUTLINED_FUNCTION_113_1(), v165 = v164(v163), ((v165 | v190)))
          {
            v166 = OUTLINED_FUNCTION_113_1();
            v167 = v139(v166);
            v168 = [v167 isSystemProvider];

            v169 = 8;
            if (v168)
            {
              v169 = 6;
            }

            v202 = v169;
            v203 = 0u;
            v204 = 0u;
            v205 = 7;
            swift_unknownObjectRetain();
            v170 = Logger.logObject.getter();
            static os_log_type_t.default.getter();
            OUTLINED_FUNCTION_375();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v170, v139))
            {
              v171 = OUTLINED_FUNCTION_30_1();
              v197 = swift_slowAlloc();
              v199 = v197;
              *v171 = 136315394;
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v172 = >> prefix<A>(_:)();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, &v199);
              OUTLINED_FUNCTION_242();

              *(v171 + 4) = v24;
              *(v171 + 12) = 2080;
              v174 = (v139)(v63, v196);
              v175 = [v174 identifier];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              OUTLINED_FUNCTION_264();

              v200 = v174;
              v201 = v24;
              >> prefix<A>(_:)();
              OUTLINED_FUNCTION_175_0();

              v176 = OUTLINED_FUNCTION_208();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v177, v178);
              OUTLINED_FUNCTION_246();

              *(v171 + 14) = v174;
              OUTLINED_FUNCTION_325_0();
              _os_log_impl(v179, v180, v181, v182, v171, 0x16u);
              OUTLINED_FUNCTION_111_1(&a17);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_3_83();
              OUTLINED_FUNCTION_104_2();
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v29 = v198;
            outlined init with copy of ConversationControlsType(&v202, v198);
            outlined destroy of ConversationControlsType(&v202);
            goto LABEL_92;
          }
        }
      }
    }

    if ((SBUIIsSystemApertureEnabled() & 1) != 0 || !ConversationControlsManager.shouldPresentCollaborationHUD.getter())
    {
      v29 = v198;
      (*((*MEMORY[0x1E69E7D40] & *v24) + 0x930))();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v143 = static ConversationControlsManager.shouldShowAVLessLeaveConfirmation;
      OUTLINED_FUNCTION_38_19();
      OUTLINED_FUNCTION_400();
      v144();
      v113 = 0;
      *(v29 + 41) = v143;
      goto LABEL_95;
    }

    v29 = v198;
    OUTLINED_FUNCTION_31_25(10);
    OUTLINED_FUNCTION_38_19();
    OUTLINED_FUNCTION_400();
    goto LABEL_77;
  }

LABEL_23:
  OUTLINED_FUNCTION_7_1();
  v54 = (v67 & v66);
  v58 = *(*(v47 + 48) + ((v65 << 9) | (8 * v68)));
  if (v58)
  {
    while ([v58 type] != 4)
    {

      v59 = v65;
      v60 = v54;
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_25:
      v58 = v47 & 0x7FFFFFFFFFFFFFFFLL;
      v69 = __CocoaSet.Iterator.next()();
      if (v69)
      {
        v200 = v69;
        swift_dynamicCast();
        v58 = v202;
        v65 = v59;
        v54 = v60;
        if (v202)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_297_0();
    outlined consume of Set<TUHandle>.Iterator._Variant();

    v29 = v198;
    *v198 = 26;
    *(v29 + 1) = 0u;
    *(v29 + 3) = 0u;
    *(v29 + 20) = 263;
    v113 = 1;
    goto LABEL_95;
  }

LABEL_30:

  OUTLINED_FUNCTION_111_1(&a13);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_297_0();
  v27 = v58;
  outlined consume of Set<TUHandle>.Iterator._Variant();

  v29 = v198;
  v34 = v186;
  v36 = v192;
  v44 = v195;
LABEL_31:
  if (v197)
  {
    ObjectType = swift_getObjectType();
    if ((*(v196 + 208))(ObjectType) == 4)
    {
      (*((*MEMORY[0x1E69E7D40] & *v24) + 0x2A0))();
      OUTLINED_FUNCTION_254_0();
      OUTLINED_FUNCTION_307_0();
      v72 = v71();
      static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)(v72, v29);
      swift_unknownObjectRelease();

LABEL_94:
      v113 = 1;
      *(v29 + 41) = 1;
      goto LABEL_95;
    }
  }

  v198 = v29;
  v193 = v27;
  v73 = Features.receptionistEnabled.getter();
  v74 = MEMORY[0x1E6995E98];
  v75 = MEMORY[0x1E6995EA0];
  v76 = MEMORY[0x1E69E7D40];
  LODWORD(v187) = v73;
  if (v73)
  {
    v77 = MEMORY[0x1E6995E98];
    *&v204 = &type metadata for ScreeningStatusOverride;
    *(&v204 + 1) = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    OUTLINED_FUNCTION_24();
    swift_allocObject();
    v202 = Defaults.init()();
    v78 = v189;
    v79 = CallScreeningService.init(overrides:)();
    (*((*v76 & *v24) + 0x2A0))(v79);
    v80 = OUTLINED_FUNCTION_254_0();
    (*(v47 + 48))(&v202, v80, v47);
    swift_unknownObjectRelease();
    CallScreeningService.screeningStatusForCall(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v202);
    OUTLINED_FUNCTION_23_26();
    v81 = v78;
    v75 = MEMORY[0x1E6995EA0];
    v82(v81, v191);
  }

  else
  {
    OUTLINED_FUNCTION_143_1();
    (*(v83 + 672))();
    v84 = OUTLINED_FUNCTION_254_0();
    (*(v47 + 144))(v84, v47);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    v77 = v74;
    if (v47)
    {
      v85 = v75;
    }

    else
    {
      v85 = v74;
    }

    v86 = v188;
    (*(v36 + 104))(v188, *v85, v34);
    (*(v36 + 32))(v44, v86, v34);
  }

  OUTLINED_FUNCTION_143_1();
  (*(v87 + 672))();
  objc_opt_self();
  v88 = swift_dynamicCastObjCClass();
  if (v88)
  {
    v89 = [v88 isWaitOnHoldActive];
    swift_unknownObjectRelease();
    v90 = v77;
    if (v89)
    {
      (*(v36 + 8))(v44, v34);
      (*(v36 + 104))(v44, *v77, v34);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v90 = v77;
  }

  v91 = *(v36 + 16);
  v92 = v194;
  v195 = v44;
  v91(v194, v44, v34);
  v93 = OUTLINED_FUNCTION_208();
  v95 = v94(v93);
  v96 = v36;
  v57 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
  v54 = &unk_1BC4BA000;
  v97 = v95 == *MEMORY[0x1E6995EA8];
  v29 = v198;
  v192 = v96;
  if (v97)
  {
    v98 = v92;
    v99 = *(v96 + 8);
    v99(v98, v34);
    if (v187)
    {
      v100 = OUTLINED_FUNCTION_31_25(21);
      (v99)(v195, v34, v100);
      goto LABEL_94;
    }
  }

  else if (v95 != *v90)
  {
    if (v95 == *v75)
    {
      OUTLINED_FUNCTION_31_25(20);
      v116 = OUTLINED_FUNCTION_38_19();
      v118 = v34;
LABEL_77:
      v117(v116, v118);
      v113 = 0;
      *(v29 + 41) = 0;
      goto LABEL_95;
    }

    if (v95 == *MEMORY[0x1E6995EB0])
    {
      if (v187)
      {
        OUTLINED_FUNCTION_31_25(22);
        v120 = OUTLINED_FUNCTION_38_19();
        v122 = v34;
LABEL_93:
        v121(v120, v122);
        goto LABEL_94;
      }
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v145 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v145, &static Logger.conversationControls);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = OUTLINED_FUNCTION_42();
        v149 = OUTLINED_FUNCTION_23();
        v202 = v149;
        *v148 = 136315138;
        OUTLINED_FUNCTION_111_1(&a15);
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_190();
        lazy protocol witness table accessor for type URL and conformance URL(v150, v151);
        v152 = dispatch thunk of CustomStringConvertible.description.getter();
        v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, &v202);

        *(v148 + 4) = v154;
        OUTLINED_FUNCTION_325_0();
        _os_log_impl(v155, v156, v157, v158, v148, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v149);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_26();
      }

      (*(v192 + 8))(v194, v34);
    }
  }

  v186 = v34;
  OUTLINED_FUNCTION_111_1(&a13);
  v63 = swift_getObjectType();
  v101 = *(v196 + 184);
  v102 = v101(v63, v196);
  v103 = [v102 supportsDynamicSystemUI];

  if (v103)
  {
    v104 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v105 = [v104 groupConversations];

    if (v105)
    {
      if (TUDeviceHasChinaSKU())
      {
        v106 = OUTLINED_FUNCTION_308();
        v108 = v107(v106);
        v109 = 23;
        if (v108 != 4)
        {
          v109 = 24;
        }

        v29 = v198;
        OUTLINED_FUNCTION_31_25(v109);
LABEL_92:
        OUTLINED_FUNCTION_38_19();
        OUTLINED_FUNCTION_400();
        goto LABEL_93;
      }
    }
  }

  v110 = OUTLINED_FUNCTION_308();
  if ((v111(v110) & 1) == 0)
  {
    v114 = OUTLINED_FUNCTION_308();
    if (v115(v114) == 1)
    {
      LODWORD(v190) = SBSIsSystemApertureAvailable() ^ 1;
    }

    else
    {
      LODWORD(v190) = 0;
    }

    type metadata accessor for PlaceholderCall();
    OUTLINED_FUNCTION_170();
    v119 = swift_dynamicCastClass();
    if (v119)
    {
      LOBYTE(v60) = *(v119 + 16) == 3;
    }

    else
    {
      LOBYTE(v60) = 0;
    }

    v194 = v101;
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_69;
    }

    goto LABEL_98;
  }

  v29 = v198;
  OUTLINED_FUNCTION_31_25(2);
  OUTLINED_FUNCTION_38_19();
  OUTLINED_FUNCTION_400();
  v112();
  v113 = 0;
  *(v29 + 41) = 1;
LABEL_95:
  *(v29 + 42) = v113;
  v29[6] = 0;
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationControlsManager.systemBannerPresenter.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

{
  return ConversationControlsManager.systemBannerPresenter.getter();
}

BOOL Features.shouldShowFullScreenCallWaiting.getter()
{
  result = 0;
  if ((!SBUIIsSystemApertureEnabled() || (Features.callManagerEnabled.getter() & 1) == 0) && ((Features.isIncomingCallBannerEnabled.getter() & 1) == 0 || (Features.shouldEmbedSwapBanner.getter() & 1) == 0))
  {
    lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI();
    v1 = OUTLINED_FUNCTION_12_53();
    OUTLINED_FUNCTION_8_68(v1);
    if ((v0 & 1) == 0 && (Features.callManagerEnabled.getter() & 1) == 0)
    {
      return 1;
    }

    if ((SBUIIsSystemApertureEnabled() & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for PlaceholderCall()
{
  result = type metadata singleton initialization cache for PlaceholderCall;
  if (!type metadata singleton initialization cache for PlaceholderCall)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_349()
{

  return Publisher.eraseToAnyPublisher()();
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit0A12ControlsTypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t ConversationControlsType.debugDescription.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v27);
  v1 = v27;
  switch(v28)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v27, &v23);
      *&v26 = 0x28656369746F6ELL;
      *(&v26 + 1) = 0xE700000000000000;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      v17 = OUTLINED_FUNCTION_44_0();
      v19 = v18(v17);
      MEMORY[0x1BFB20B10](v19);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);
      __swift_destroy_boxed_opaque_existential_1(&v23);
      return OUTLINED_FUNCTION_38_2();
    case 2:
      OUTLINED_FUNCTION_45_13();
      _StringGuts.grow(_:)(19);

      OUTLINED_FUNCTION_19_24();
      v23 = v3 - 11;
      v24 = v2;
      if (*(&v1 + 1))
      {
        v26 = v1;
        v4 = String.init<A>(reflecting:)();
        v6 = v5;
      }

      else
      {
        v6 = 0xE300000000000000;
        v4 = 7104878;
      }

      MEMORY[0x1BFB20B10](v4, v6);
      goto LABEL_20;
    case 3:
      OUTLINED_FUNCTION_45_13();
      _StringGuts.grow(_:)(19);

      OUTLINED_FUNCTION_19_24();
      v23 = v8 - 11;
      v24 = v7;
      *&v26 = v1;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestion);
      v9 = v1;
      v10 = String.init<A>(reflecting:)();
      MEMORY[0x1BFB20B10](v10);

LABEL_20:

      return OUTLINED_FUNCTION_38_2();
    case 4:
      outlined destroy of ConversationControlsType(&v27);
      goto LABEL_84;
    case 5:
      OUTLINED_FUNCTION_45_13();
      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_19_24();
      v23 = v21;
      v24 = v20;
      MEMORY[0x1BFB20B10](v21 + 36, 0x80000001BC5021A0);
      return OUTLINED_FUNCTION_38_2();
    case 6:
      outlined destroy of ConversationControlsType(&v27);
      return OUTLINED_FUNCTION_38_2();
    case 7:
      OUTLINED_FUNCTION_47_11();
      if (!v14)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      v15 = v11 | *(&v1 + 1) | v12 | v13;
      if (v1 == 1 && v15 == 0)
      {
        goto LABEL_81;
      }

      if (v1 == 2 && !v15 || v1 == 3 && !v15)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      if (v1 == 4 && !v15)
      {
        goto LABEL_81;
      }

      if (v1 == 5 && !v15)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      if (v1 == 6 && !v15 || v1 == 7 && !v15 || v1 == 8 && !v15 || v1 == 9 && !v15 || v1 == 10 && !v15 || v1 == 11 && !v15 || v1 == 12 && !v15)
      {
        goto LABEL_81;
      }

      if (v1 == 13 && !v15)
      {
        return OUTLINED_FUNCTION_38_2();
      }

      if (v1 == 14 && !v15 || v1 == 15 && !v15 || v1 == 16 && !v15 || v1 == 17 && !v15 || v1 == 18 && !v15 || v1 == 19 && !v15 || v1 == 20 && !v15 || v1 == 21 && !v15 || v1 == 22 && !v15 || v1 == 23 && !v15 || v1 == 24 && !v15)
      {
        goto LABEL_81;
      }

      if (v1 == 25 && !v15 || v1 == 26 && !v15)
      {
        goto LABEL_84;
      }

      if (v1 != 27 || v15)
      {
        if (v1 != 28 || v15)
        {
LABEL_84:
          OUTLINED_FUNCTION_27_4();
        }
      }

      else
      {
LABEL_81:
        OUTLINED_FUNCTION_3_85();
      }

      return OUTLINED_FUNCTION_38_2();
    default:
      goto LABEL_81;
  }
}

uint64_t OUTLINED_FUNCTION_71_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return outlined init with copy of IDSLookupManager(&a14, &a9);
}

uint64_t OUTLINED_FUNCTION_71_5()
{
  type metadata accessor for ParticipantGridView.VideoInfoCache(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_71_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *v7 = result;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_7()
{

  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t OUTLINED_FUNCTION_71_8()
{

  return outlined init with take of Collaboration();
}

uint64_t GameControllerIncomingCallEvent.init(acceptCallAction:rejectCallAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit25GameControllerPressActionVGMd);
  v8 = (type metadata accessor for GameControllerPressAction() - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BAA20;
  v12 = v11 + v10;
  static GCButtonElementName.a.getter();
  v13 = (v12 + v8[7]);
  *v13 = a1;
  v13[1] = a2;

  static GCButtonElementName.b.getter();
  v14 = (v12 + v9 + v8[7]);
  *v14 = a3;
  v14[1] = a4;

  return v11;
}

uint64_t type metadata accessor for GameControllerPressAction()
{
  result = type metadata singleton initialization cache for GameControllerPressAction;
  if (!type metadata singleton initialization cache for GameControllerPressAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized CallGameController.addEvent(_:)(uint64_t a1)
{
  v5[3] = &type metadata for GameControllerIncomingCallEvent;
  v5[4] = lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent();
  v5[0] = a1;
  outlined init with copy of IDSLookupManager(v5, v3);
  OUTLINED_FUNCTION_30_2();

  specialized Set._Variant.insert(_:)(v4, v3);
  swift_endAccess();
  outlined destroy of CallGameController.GameControllerEventBox(v4);
  CallGameController.attachAllControllers()();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

BOOL specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_16_7();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v4 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      outlined init with copy of CallGameController.GameControllerEventBox(a2, &v20);
      v19 = *v17;
      specialized _NativeSet.insertNew(_:at:isUnique:)(&v20, v8, isUniquelyReferenced_nonNull_native);
      *v17 = v19;
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      *(a1 + 32) = *(a2 + 32);
      return v9 == 0;
    }

    outlined init with copy of CallGameController.GameControllerEventBox(*(v4 + 48) + 40 * v8, &v20);
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v10 = dispatch thunk of Hashable.hashValue.getter();
    v11 = OUTLINED_FUNCTION_244_1();
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v13 = dispatch thunk of Hashable.hashValue.getter();
    outlined destroy of CallGameController.GameControllerEventBox(&v20);
    if (v10 == v13)
    {
      break;
    }

    v5 = v8 + 1;
  }

  outlined destroy of CallGameController.GameControllerEventBox(a2);
  outlined init with copy of CallGameController.GameControllerEventBox(*(v4 + 48) + 40 * v8, a1);
  return v9 == 0;
}

unint64_t lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent()
{
  result = lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent;
  if (!lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent;
  if (!lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent;
  if (!lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent);
  }

  return result;
}

uint64_t specialized GameControllerEvent.hash(into:)()
{
  v2 = type metadata accessor for GameControllerPressAction();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_6_1();
  v4 = v0[3];
  v5 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      outlined init with copy of GameControllerPressAction(v8, v1);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of GameControllerPressAction(v1);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t outlined init with copy of GameControllerPressAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameControllerPressAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName()
{
  result = lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName;
  if (!lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName)
  {
    type metadata accessor for GCButtonElementName();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName);
  }

  return result;
}

uint64_t outlined destroy of GameControllerPressAction(uint64_t a1)
{
  v2 = type metadata accessor for GameControllerPressAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(__int128 *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v16 = *v3;
      Hasher.init(_seed:)();
      specialized GameControllerEvent.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a2 = v17 & v18;
        if (((*(v16 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        outlined init with copy of CallGameController.GameControllerEventBox(*(v16 + 48) + 40 * a2, v21);
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        v19 = dispatch thunk of Hashable.hashValue.getter();
        __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
        v20 = dispatch thunk of Hashable.hashValue.getter();
        outlined destroy of CallGameController.GameControllerEventBox(v21);
        if (v19 == v20)
        {
          goto LABEL_15;
        }

        v17 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *a1;
  v12 = a1[1];
  *(v10 + 32) = *(a1 + 4);
  *v10 = v11;
  *(v10 + 16) = v12;
  v13 = *(v9 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v15;
  }
}

void CallGameController.attachAllControllers()()
{
  v0 = [objc_opt_self() controllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Array.count.getter(v1);
  swift_retain_n();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB22010](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    CallGameController.attachController(_:)(v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t ConversationControlsManager.systemBannerPresenter.setter()
{
  OUTLINED_FUNCTION_55();
  v3 = v1 + *v2;
  OUTLINED_FUNCTION_51_3();
  *(v3 + 8) = v0;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

{
  return ConversationControlsManager.systemBannerPresenter.setter();
}

uint64_t BannerPresentationManager.presentationDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

{
  return BannerPresentationManager.presentationDelegate.getter();
}

uint64_t ConversationControlsManager.audioRoutingDelegate.setter()
{
  return ConversationControlsManager.audioRoutingDelegate.setter();
}

{
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t SystemBannerHostViewController.delegate.setter()
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

{
  return SystemBannerHostViewController.delegate.setter();
}

uint64_t BannerPresentationManager.inCallConversationControlsDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationControlsManager.inCallConversationControlsDelegate.setter()
{
  OUTLINED_FUNCTION_55();
  v2 = v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate;
  OUTLINED_FUNCTION_84_5();
  *(v2 + 8) = v0;
  OUTLINED_FUNCTION_1_5();
  swift_unknownObjectWeakAssign();
  ConversationControlsManager.inCallConversationControlsDelegate.didset();
  return swift_unknownObjectRelease();
}

uint64_t ConversationControlsManager.inCallConversationControlsDelegate.didset()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_inCallConversationControlsDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(ObjectType, v3);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
    v5 = Publisher<>.sink(receiveValue:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isOnScreenSubscription) = v5;
}

uint64_t sub_1BBCC3BEC()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

void ConversationControlsManager.gameControllerManager.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_75_1();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x358))();
}

Swift::Void __swiftcall ConversationControlsManager.updateGameControllerResponder()()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_153();
  v3 = (*(v2 + 832))();
  if (v3)
  {
    v7 = v3;
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_293();
    (*(v4 + 672))();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_236_0();
    v5();
    OUTLINED_FUNCTION_280_0();
    if (v1 == 4 && SBSIsSystemApertureAvailable() && (OUTLINED_FUNCTION_238_0(), OUTLINED_FUNCTION_293(), (*(v6 + 1184))()))
    {
      swift_unknownObjectRelease();
      specialized GameControllerManager.addResponder(_:)(v0, v7);
    }

    else
    {
      specialized GameControllerManager.removeResponder(_:)(v0, v7);
    }
  }
}

uint64_t ConversationControlsManager.gameControllerManager.getter()
{
  OUTLINED_FUNCTION_19_1();
  return swift_unknownObjectWeakLoadStrong();
}

{
  return ConversationControlsManager.gameControllerManager.getter();
}

void specialized GameControllerManager.removeResponder(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    v6[2] = MEMORY[0x1EEE9AC00](a1);
    v3 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
    swift_beginAccess();
    v4 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in GameControllerManager.removeResponder(_:), v6);
    v5 = specialized Array.count.getter(*(a2 + v3));
    if (v5 < v4)
    {
      __break(1u);
      swift_endAccess();
      __break(1u);
    }

    else
    {
      specialized Array.replaceSubrange<A>(_:with:)(v4, v5);
      swift_endAccess();
      if (!specialized Array.count.getter(*(a2 + v3)))
      {
        GameControllerManager.updateButtonHandlers()();
      }
    }
  }
}

{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = v3;
    v4 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
    swift_beginAccess();
    v5 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in GameControllerManager.removeResponder(_:), v7);
    v6 = specialized Array.count.getter(*(a2 + v4));
    if (v6 < v5)
    {
      __break(1u);
      swift_endAccess();
      __break(1u);
    }

    else
    {
      specialized Array.replaceSubrange<A>(_:with:)(v5, v6);
      swift_endAccess();
      if (!specialized Array.count.getter(*(a2 + v4)))
      {
        GameControllerManager.updateButtonHandlers()();
      }
    }
  }
}

void BannerPresentationManager._conversationControlsManager.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager);
  *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager) = a1;
  v2 = a1;
  BannerPresentationManager._conversationControlsManager.didset(v3);
}

void BannerPresentationManager._conversationControlsManager.didset(void *a1)
{
  if ((Features.isMoreMenuEnabled.getter() & 1) != 0 && a1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
    v14 = a1;
    v2();
    v4 = v3;
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = (*(v4 + 96))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v4)
    {
    }

    else
    {
      type metadata accessor for FTMenuItemRegistry();
      v6 = static FTMenuItemRegistry.shared.getter();
      v2();
      v8 = v7;
      v9 = swift_getObjectType();
      v10 = (*(v8 + 224))(v9, v8);
      v12 = v11;
      swift_unknownObjectRelease();
      v13._countAndFlagsBits = v10;
      v13._object = v12;
      FTMenuItemRegistry.clear(for:)(v13);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Features.CallExperience and conformance Features.CallExperience()
{
  result = lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience;
  if (!lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience;
  if (!lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallExperience and conformance Features.CallExperience);
  }

  return result;
}

const char *Features.CallExperience.feature.getter(char a1)
{
  result = "CallExperience_iPad_InCallUI_Poster";
  switch(a1)
  {
    case 1:
      result = "CallExperience_ICUIRedesign";
      break;
    case 2:
      result = "CallExperience_ICUIRedesign_TV";
      break;
    case 3:
      result = "CallExperience_MoreMenu";
      break;
    default:
      return result;
  }

  return result;
}

void *BannerPresentationManager.presentedSystemApertureElement.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedSystemApertureElement;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t static ConversationControlsType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ConversationControlsType(a1, &v32);
  outlined init with copy of ConversationControlsType(a2, &v34);
  v3 = v32;
  switch(v33)
  {
    case 1:
      if (v37 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_231;
      }

      outlined init with take of TapInteractionHandler(&v32, v29);
      outlined init with take of TapInteractionHandler(&v34, v28);
      v14 = v30;
      v15 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v5 = (*(v15 + 224))(v28, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v28);
      __swift_destroy_boxed_opaque_existential_1(v29);
      return v5 & 1;
    case 2:
      if (v37 != 2)
      {
        goto LABEL_19;
      }

      if (!*(&v32 + 1))
      {
        if (!v35.i64[0])
        {
          goto LABEL_58;
        }

        goto LABEL_65;
      }

      if (!v35.i64[0])
      {
LABEL_65:

        goto LABEL_232;
      }

      if (v32 == v34 && *(&v32 + 1) == v35.i64[0])
      {
LABEL_18:

LABEL_58:
        v5 = 1;
      }

      else
      {
LABEL_9:
        OUTLINED_FUNCTION_44_0();
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v5 & 1;
    case 3:
      if (v37 == 3)
      {
        v7 = v34;
        v5 = [v32 isEqual_];

        return v5 & 1;
      }

      goto LABEL_231;
    case 4:
      if (v37 != 4)
      {
LABEL_19:

        goto LABEL_231;
      }

      v4 = v32 == v34 && v35.i64[0] == *(&v32 + 1);
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    case 5:
      if (v37 != 5)
      {
        goto LABEL_231;
      }

      goto LABEL_58;
    case 6:
      if (v37 != 6)
      {
        swift_unknownObjectRelease();
        goto LABEL_231;
      }

      v16 = v35.i64[0];
      ObjectType = swift_getObjectType();
      v18 = (*(*(&v3 + 1) + 56))(ObjectType, *(&v3 + 1));
      v20 = v19;
      v21 = swift_getObjectType();
      if (v18 == (*(v16 + 56))(v21, v16) && v20 == v22)
      {
        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_2_40();
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v5 & 1;
    case 7:
      OUTLINED_FUNCTION_47_11();
      if (v11)
      {
        v12 = v8 | *(&v3 + 1) | v9 | v10;
        if (v3 == 1 && v12 == 0)
        {
          OUTLINED_FUNCTION_16_38();
          if (!v4 || v34 != 1)
          {
            goto LABEL_231;
          }
        }

        else if (v3 != 2 || v12)
        {
          if (v3 != 3 || v12)
          {
            if (v3 != 4 || v12)
            {
              if (v3 != 5 || v12)
              {
                if (v3 != 6 || v12)
                {
                  if (v3 != 7 || v12)
                  {
                    if (v3 != 8 || v12)
                    {
                      if (v3 != 9 || v12)
                      {
                        if (v3 != 10 || v12)
                        {
                          if (v3 != 11 || v12)
                          {
                            if (v3 != 12 || v12)
                            {
                              if (v3 != 13 || v12)
                              {
                                if (v3 != 14 || v12)
                                {
                                  if (v3 != 15 || v12)
                                  {
                                    if (v3 != 16 || v12)
                                    {
                                      if (v3 != 17 || v12)
                                      {
                                        if (v3 != 18 || v12)
                                        {
                                          if (v3 != 19 || v12)
                                          {
                                            if (v3 != 20 || v12)
                                            {
                                              if (v3 != 21 || v12)
                                              {
                                                if (v3 != 22 || v12)
                                                {
                                                  if (v3 != 23 || v12)
                                                  {
                                                    if (v3 != 24 || v12)
                                                    {
                                                      if (v3 != 25 || v12)
                                                      {
                                                        if (v3 != 26 || v12)
                                                        {
                                                          if (v3 != 27 || v12)
                                                          {
                                                            if (v3 != 28 || v12)
                                                            {
                                                              if (v3 != 29 || v12)
                                                              {
                                                                if (v3 != 30 || v12)
                                                                {
                                                                  OUTLINED_FUNCTION_16_38();
                                                                  if (!v4 || v34 != 31)
                                                                  {
                                                                    goto LABEL_231;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_16_38();
                                                                  if (!v4 || v34 != 30)
                                                                  {
                                                                    goto LABEL_231;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_16_38();
                                                                if (!v4 || v34 != 29)
                                                                {
                                                                  goto LABEL_231;
                                                                }
                                                              }
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_16_38();
                                                              if (!v4 || v34 != 28)
                                                              {
                                                                goto LABEL_231;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_16_38();
                                                            if (!v4 || v34 != 27)
                                                            {
                                                              goto LABEL_231;
                                                            }
                                                          }
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_16_38();
                                                          if (!v4 || v34 != 26)
                                                          {
                                                            goto LABEL_231;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_16_38();
                                                        if (!v4 || v34 != 25)
                                                        {
                                                          goto LABEL_231;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_16_38();
                                                      if (!v4 || v34 != 24)
                                                      {
                                                        goto LABEL_231;
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_16_38();
                                                    if (!v4 || v34 != 23)
                                                    {
                                                      goto LABEL_231;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_16_38();
                                                  if (!v4 || v34 != 22)
                                                  {
                                                    goto LABEL_231;
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_16_38();
                                                if (!v4 || v34 != 21)
                                                {
                                                  goto LABEL_231;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_16_38();
                                              if (!v4 || v34 != 20)
                                              {
                                                goto LABEL_231;
                                              }
                                            }
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_16_38();
                                            if (!v4 || v34 != 19)
                                            {
                                              goto LABEL_231;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_16_38();
                                          if (!v4 || v34 != 18)
                                          {
                                            goto LABEL_231;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_16_38();
                                        if (!v4 || v34 != 17)
                                        {
                                          goto LABEL_231;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_16_38();
                                      if (!v4 || v34 != 16)
                                      {
                                        goto LABEL_231;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_16_38();
                                    if (!v4 || v34 != 15)
                                    {
                                      goto LABEL_231;
                                    }
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_16_38();
                                  if (!v4 || v34 != 14)
                                  {
                                    goto LABEL_231;
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_16_38();
                                if (!v4 || v34 != 13)
                                {
                                  goto LABEL_231;
                                }
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_16_38();
                              if (!v4 || v34 != 12)
                              {
                                goto LABEL_231;
                              }
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_16_38();
                            if (!v4 || v34 != 11)
                            {
                              goto LABEL_231;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_16_38();
                          if (!v4 || v34 != 10)
                          {
                            goto LABEL_231;
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_16_38();
                        if (!v4 || v34 != 9)
                        {
                          goto LABEL_231;
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16_38();
                      if (!v4 || v34 != 8)
                      {
                        goto LABEL_231;
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_38();
                    if (!v4 || v34 != 7)
                    {
                      goto LABEL_231;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16_38();
                  if (!v4 || v34 != 6)
                  {
                    goto LABEL_231;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_16_38();
                if (!v4 || v34 != 5)
                {
                  goto LABEL_231;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_16_38();
              if (!v4 || v34 != 4)
              {
                goto LABEL_231;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_16_38();
            if (!v4 || v34 != 3)
            {
              goto LABEL_231;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_16_38();
          if (!v4 || v34 != 2)
          {
            goto LABEL_231;
          }
        }

        OUTLINED_FUNCTION_61_7(v36, v35);
        if (!v26)
        {
          goto LABEL_58;
        }
      }

      else
      {
        OUTLINED_FUNCTION_16_38();
        if (v4)
        {
          OUTLINED_FUNCTION_11_49(v36, v35);
          if (!(v25 | v24))
          {
            goto LABEL_58;
          }
        }
      }

LABEL_231:
      outlined destroy of ConversationControlsType(&v34);
LABEL_232:
      v5 = 0;
      return v5 & 1;
    default:
      if (!v37)
      {
        goto LABEL_58;
      }

      goto LABEL_231;
  }
}

uint64_t ConversationControlsType.isFirstOrThirdPartyIncomingCall.getter()
{
  OUTLINED_FUNCTION_14_3();
  v10 = OUTLINED_FUNCTION_38_15(v2, v3, v4, v5, v6, v7, v8, v9, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
  OUTLINED_FUNCTION_56_8(v10, v11, v12, v13, v14, v15, v16, v17, v59);
  if (v0)
  {
    v0 = 1;
  }

  else
  {
    v59 = 7;
    v60 = 0u;
    v61 = 0u;
    v62 = 7;
    v18 = static ConversationControlsType.== infix(_:_:)(v1, &v59);
    OUTLINED_FUNCTION_56_8(v18, v19, v20, v21, v22, v23, v24, v25, v59);
    OUTLINED_FUNCTION_14_3();
    v34 = OUTLINED_FUNCTION_38_15(v26, v27, v28, v29, v30, v31, v32, v33, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
    OUTLINED_FUNCTION_56_8(v34, v35, v36, v37, v38, v39, v40, v41, v59);
    OUTLINED_FUNCTION_14_3();
    v51 = OUTLINED_FUNCTION_38_15(v43, v44, v45, v46, v47, v48, v49, v50, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
    OUTLINED_FUNCTION_56_8(v51, v52, v53, v54, v55, v56, v57, v58, v59);
  }

  return v0 & 1;
}

void BannerPresentationManager.updatePresentedHUD(type:replacingNotice:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_17_1();
  v39 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_1();
  v37 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v33 = (v7 - v6);
  OUTLINED_FUNCTION_4_24();
  v38 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v34 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v32 - v12;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v14 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_updateWorkItem;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_updateWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of ConversationControlsType(v0, &v42);
  v16 = swift_allocObject();
  v17 = *v43;
  *(v16 + 24) = v42;
  *(v16 + 16) = v15;
  *(v16 + 40) = v17;
  *(v16 + 49) = *&v43[9];
  *(v16 + 65) = v3 & 1;
  v41[4] = partial apply for closure #1 in BannerPresentationManager.updatePresentedHUD(type:replacingNotice:);
  v41[5] = v16;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v41[2] = v18;
  v41[3] = &block_descriptor_16_0;
  _Block_copy(v41);
  v40 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_85();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v19, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_14_37();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v21, v22);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  OUTLINED_FUNCTION_84();
  v23 = DispatchWorkItem.init(flags:block:)();

  *(v1 + v14) = v23;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = v34;
  static DispatchTime.now()();
  v26 = v33;
  *v33 = 150;
  v27 = v37;
  v28 = v39;
  (*(v37 + 104))(v26, *MEMORY[0x1E69E7F38], v39);
  v29 = v35;
  MEMORY[0x1BFB20700](v25, v26);
  (*(v27 + 8))(v26, v28);
  v30 = *(v36 + 8);
  v31 = v38;
  v30(v25, v38);
  MEMORY[0x1BFB21520](v29, v23);

  v30(v29, v31);
  OUTLINED_FUNCTION_30_0();
}

uint64_t sub_1BBCC4E88()
{

  switch(*(v0 + 64))
  {
    case 1:
      __swift_destroy_boxed_opaque_existential_1(v0 + 24);
      break;
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 6:
      swift_unknownObjectRelease();
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1BBCC4F34()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

void @nonobjc TUCall.uniqueProxyIdentifierUUID.getter()
{
  v1 = [v0 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t BannerPresentationManager.setupMoreMenu(with:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_55();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_140_0();
  result = Features.isMoreMenuEnabled.getter();
  if (result)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_6_4();
    swift_unknownObjectRetain();
    v13 = a3;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v4;
    v15[5] = v3;
    v15[6] = v13;
    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  return result;
}

uint64_t sub_1BBCC50EC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Features.SpringBoard and conformance Features.SpringBoard()
{
  result = lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard;
  if (!lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard;
  if (!lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.SpringBoard and conformance Features.SpringBoard);
  }

  return result;
}

uint64_t closure #1 in WaitOnHoldService.init()@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = outlined destroy of TapInteractionHandler?(v5, &_sypSgMd);
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

uint64_t @objc BannerPresentationManager.handleCallStatusDidChange(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a4(v4);

  return (*(v9 + 8))(v4, v7);
}

void BannerPresentationManager.handleCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  v25 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v28 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v26 = v5;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_92_7();
  v6 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v14 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_278(v15);
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v12, v25, v6);
  v16 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  (*(v8 + 32))(v17 + v16, v12, v6);
  v29[4] = partial apply for closure #1 in BannerPresentationManager.handleCallStatusDidChange(_:);
  v29[5] = v17;
  OUTLINED_FUNCTION_5_73();
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v29[2] = v18;
  v29[3] = &block_descriptor_52;
  v19 = _Block_copy(v29);

  static DispatchQoS.unspecified.getter();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_85();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v22, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OUTLINED_FUNCTION_11_70();
  _Block_release(v19);

  v23 = OUTLINED_FUNCTION_309();
  v24(v23);
  (*(v26 + 8))(v0, v27);
  OUTLINED_FUNCTION_30_0();
}

uint64_t sub_1BBCC56B4()
{
  v1 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t @objc CallScreeningRTTHelper.callStatusChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v11);

  return (*(v7 + 8))(v11, v5);
}

void CallScreeningRTTHelper.callStatusChanged(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_4();
  Notification.object.getter();
  if (v14)
  {
    type metadata accessor for TUCall();
    if (OUTLINED_FUNCTION_15_35())
    {
      v4 = [v12 callUUID];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if ([v12 isActive])
      {
      }

      else
      {
        static TaskPriority.userInitiated.getter();
        v8 = type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_19_28(v8);

        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        v11 = MEMORY[0x1E69E85E0];
        v10[2] = v9;
        v10[3] = v11;
        v10[4] = v1;
        v10[5] = v5;
        v10[6] = v7;
        OUTLINED_FUNCTION_11_57();
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
      }
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_sypSgMd);
  }
}

unint64_t type metadata accessor for TUCall()
{
  result = lazy cache variable for type metadata for TUCall;
  if (!lazy cache variable for type metadata for TUCall)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUCall);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void partial apply for closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(a1, v9, v1 + v8, v11, v12);
}

void closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v67 = a5;
  v68 = a3;
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnsweringMachineCallStatus();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v56 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  Notification.object.getter();
  if (!v70)
  {
    outlined destroy of Any?(v69);
LABEL_7:
    (*(v7 + 16))(v9, a1, v6);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v68 = v19;
      v69[0] = v34;
      v35 = v34;
      *v33 = 136446210;
      v36 = Notification.name.getter();
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      (*(v7 + 8))(v9, v6);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v69);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_1BBC58000, v31, v32, "ignoring %{public}s missing TUCall", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFB23DF0](v35, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return;
  }

  type metadata accessor for TUCall();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = v72;
  v21 = [v72 callUUID];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v23;
  v60 = v22;

  v24 = [v20 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v26;
  v58 = v25;

  v27 = *(v19 + OBJC_IVAR____TtC15ConversationKit17CallStatusService_features);
  v28 = Features.receptionistEnabled.getter();

  if (v28)
  {
    v70 = &type metadata for CallCenterCall;
    v71 = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
    v69[0] = v20;
    v29 = v20;
    v30 = v17;
    callStatus(updateSource:for:)(v66, v67, v69, v17);
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    v30 = v17;
    callStatus(updateSource:for:)(v66, v67, v20, v17);
  }

  v61 = v20;
  if (*(v30 + 32) == 6 && *(v30 + *(v12 + 32)) == 1)
  {
    type metadata accessor for Defaults();
    swift_allocObject();
    v41 = *Defaults.init()();
    (*(v41 + 256))(0);
  }

  v56[1] = *(v19 + OBJC_IVAR____TtC15ConversationKit17CallStatusService_notificationQueue);
  v43 = v63;
  v42 = v64;
  v44 = v65;
  (*(v64 + 16))(v63, v68, v65);
  outlined init with copy of AnsweringMachineCallStatus(v30, v14);
  v45 = v19;
  v46 = (*(v42 + 80) + 56) & ~*(v42 + 80);
  v47 = (v11 + *(v62 + 80) + v46) & ~*(v62 + 80);
  v48 = swift_allocObject();
  v68 = v30;
  v49 = v48;
  v50 = v66;
  v51 = v67;
  v48[2] = v45;
  v48[3] = v50;
  v52 = v59;
  v53 = v60;
  v48[4] = v51;
  v48[5] = v53;
  v48[6] = v52;
  (*(v42 + 32))(v48 + v46, v43, v44);
  outlined init with take of AnsweringMachineCallStatus(v14, v49 + v47);
  v54 = (v49 + ((v13 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  v55 = v57;
  *v54 = v58;
  v54[1] = v55;

  dispatch thunk of TaskQueue.async(_:)();

  outlined destroy of AnsweringMachineCallStatus(v68);
}

uint64_t sub_1BBCC6204()
{
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for AnsweringMachineCallStatus() - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  v9 = v7[9];
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 8))(v0 + v8 + v9);

  return swift_deallocObject();
}

uint64_t type metadata accessor for AnsweringMachineCallStatus()
{
  result = type metadata singleton initialization cache for AnsweringMachineCallStatus;
  if (!type metadata singleton initialization cache for AnsweringMachineCallStatus)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t callStatus(updateSource:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a2;
  v6 = type metadata accessor for CallScreeningStatus();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a3 callUUID];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v13;
  v26 = v12;

  v14 = CallStatus.init(_:)([a3 status]);
  v15 = [a3 isScreening];
  v16 = MEMORY[0x1E6995EA0];
  if (!v15)
  {
    v16 = MEMORY[0x1E6995E98];
  }

  (*(v7 + 104))(v10, *v16, v6);
  v17 = [a3 isScreeningDueToUserInteraction];
  v18 = [a3 isEligibleForScreening];
  v19 = [a3 answeringMachineStreamToken];
  v20 = [a3 screeningAnnouncementHasFinished];
  v21 = v28;
  *a4 = v27;
  *(a4 + 8) = v21;
  v22 = v25;
  *(a4 + 16) = v26;
  *(a4 + 24) = v22;
  *(a4 + 32) = v14;
  v23 = type metadata accessor for AnsweringMachineCallStatus();
  (*(v7 + 32))(a4 + v23[7], v10, v6);
  *(a4 + v23[8]) = v17;
  *(a4 + v23[9]) = v18;
  *(a4 + v23[10]) = v19;
  *(a4 + v23[11]) = v20;
}

{
  v23 = a1;
  v24 = a2;
  v6 = type metadata accessor for CallStatus();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for CallScreeningService();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &type metadata for ScreeningStatusOverride;
  v27 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  v25 = Defaults.init()();
  CallScreeningService.init(overrides:)();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v20 = dispatch thunk of BasicCall.callUUID.getter();
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  dispatch thunk of BasicCall.status.getter();
  v12 = CallStatus.init(_:)();
  v13 = type metadata accessor for AnsweringMachineCallStatus();
  CallScreeningService.screeningStatusForCall(_:)();
  v14 = CallScreeningService.canScreen(_:)();
  v15 = CallScreeningService.token(for:)();
  v16 = CallScreeningService.screeningAnnouncmentFinished(for:)();
  v17 = CallScreeningService.screeningCallDueToUserinteraction(call:)();
  (*(v21 + 8))(v9, v22);
  v18 = v24;
  *a4 = v23;
  *(a4 + 8) = v18;
  *(a4 + 16) = v20;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + v13[8]) = v17 & 1;
  *(a4 + v13[9]) = v14 & 1;
  *(a4 + v13[10]) = v15;
  *(a4 + v13[11]) = v16 & 1;
}

uint64_t CallStatus.init(_:)(uint64_t result)
{
  if (result >= 7)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of AnsweringMachineCallStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnsweringMachineCallStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AnsweringMachineCallStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnsweringMachineCallStatus();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnsweringMachineCallStatus(uint64_t a1)
{
  v2 = type metadata accessor for AnsweringMachineCallStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v22 = *a1;
  v15 = v22;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  v16 = v15;
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    v19 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a3;
    v20[5] = a4;
    v20[6] = a5;
    v20[7] = a6;
    v20[8] = a2;
    v20[9] = v18;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
  }

  return result;
}

uint64_t sub_1BBCC68D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)()
{
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for AnsweringMachineCallStatus();
  OUTLINED_FUNCTION_9_0(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = v0[3];
  v19 = v0[2];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[6];
  v15 = *(v0 + ((*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(v19, v11, v12, v13, v14, v0 + v4, v0 + v9, v15);
}

uint64_t closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  type metadata accessor for AnsweringMachineCallStatus();
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:), v10, v9);
}

uint64_t @objc TUCallCenter.cnk_hasTooManyCallsForCallWaitingBanner.getter(void *a1)
{
  v1 = a1;
  v2 = TUCallCenter.cnk_hasTooManyCallsForCallWaitingBanner.getter();

  return v2 & 1;
}

uint64_t TUCallCenter.cnk_hasTooManyCallsForCallWaitingBanner.getter()
{
  if ([v0 currentAudioAndVideoCallCount] < 3)
  {
    return 0;
  }

  return TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t partial apply for closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[8];
  v6 = v1[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(a1, v4, v5, v7, v6);
}

uint64_t CNKBannerPresentationManager.isMicIndicatorVisible.getter(uint64_t (*a1)(void))
{
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67();
  v4 = *(v1 + v3);
  LOBYTE(a1) = a1();

  return a1 & 1;
}

uint64_t closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:);

    return AudioCallManager.updateWithCall(_:)();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:), 0, 0);
}

uint64_t AudioCallManager.updateWithCall(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x1EEE6DFA0](AudioCallManager.updateWithCall(_:), v4, v3);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[2];
  AudioCallManager.callsCache.getter();
  AudioCallManager.CallsCache.addCall(_:)(v2);

  v3 = (*(*(v1 + 88) + 184))(*(v1 + 80));
  LOBYTE(v2) = [v3 isSystemProvider];

  if ((v2 & 1) == 0)
  {
    AudioCallManager.watchProcessForCall(_:)();
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = AudioCallManager.updateWithCall(_:);

  return AudioCallManager.resolveAndPresent()();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](AudioCallManager.updateWithCall(_:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t BannerPresentationManager.onlyHasPlaceholderCall.getter()
{
  result = PlaceholderCallCenter.activeCall.getter();
  if (result)
  {

    OUTLINED_FUNCTION_293();
    v2 = (*(v1 + 392))();
    if (v2)
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *PlaceholderCallCenter.activeCall.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - v4;
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_2();
  v14 = *&v0[OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue];
  *v1 = v14;
  (*(v12 + 104))(v1, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v12 + 8);
  v16 = (v12 + 8);
  v17(v1, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  PlaceholderCallCenter.conversationNeedingPlaceholderCall.getter(&v40);
  v10 = v40;
  if (!v40)
  {
    return 0;
  }

  v18 = v41;
  HIBYTE(v39) = v41;
  v19 = PlaceholderCallCenter.activeCall(for:purpose:)(v40, &v39 + 7);
  if (v19)
  {
    v1 = v19;

    return v1;
  }

  v16 = &selRef__iconForResourceProxy_format_;
  v20 = [v10 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  BYTE6(v39) = v18;
  type metadata accessor for PlaceholderCall();
  swift_allocObject();
  v21 = v0;
  v1 = PlaceholderCall.init(for:placeholderCallCenter:purpose:)(v9, v21, &v39 + 6);
  v22 = *&v21[OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_activeCalls];

  result = [v10 UUID];
  if (result)
  {
    v24 = result;
    [v22 setObject:v1 forKey:result];

    if (one-time initialization token for conversationKit == -1)
    {
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v25 = OUTLINED_FUNCTION_13_12();
      *(v25 + 16) = xmmword_1BC4BA940;
      v26 = [v10 v16[411]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
      specialized >> prefix<A>(_:)(v5, v27, v28, v29, v30, v31, v32, v33, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      v35 = v34;
      v37 = v36;
      outlined destroy of UUID?(v5);
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v25 + 32) = v35;
      *(v25 + 40) = v37;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return v1;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void PlaceholderCallCenter.conversationNeedingPlaceholderCall.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = PlaceholderCallCenter.avLessConversation.getter();
  if (v9)
  {
    v3 = v9;
    v10 = [v9 presentationContext];
    v11 = [v10 mode];

    if (v11 == 2)
    {
      v18 = 2;
LABEL_16:
      *a1 = v3;
      goto LABEL_17;
    }

    if (v11 == 1)
    {
LABEL_15:
      v18 = 1;
      goto LABEL_16;
    }

    if (v11)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.fault.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BC4BA940;
      v25 = v3;
      type metadata accessor for TUConversation();
      v20 = v3;
      v21 = String.init<A>(reflecting:)();
      v23 = v22;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      goto LABEL_14;
    }

    if (one-time initialization token for conversationKit == -1)
    {
LABEL_7:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BC4BA940;
      v25 = v3;
      type metadata accessor for TUConversation();
      v13 = v3;
      v14 = String.init<A>(reflecting:)();
      v16 = v15;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v12 + 32) = v14;
      *(v12 + 40) = v16;
LABEL_14:
      os_log(_:dso:log:type:_:)();

      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v17 = PlaceholderCallCenter.handoffEligibleConversation.getter();
  if (v17)
  {
    *a1 = v17;
    v18 = 3;
LABEL_17:
    *(a1 + 8) = v18;
    return;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

id PlaceholderCallCenter.avLessConversation.getter()
{
  v1 = v0;
  v38 = type metadata accessor for UUID();
  v2 = *(v38 - 8);
  v3 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (((*(*static Defaults.shared + 904))(v3, v4) & 1) == 0)
    {
      return 0;
    }

    v6 = [*(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager) activeConversations];
    v7 = type metadata accessor for TUConversation();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, type metadata accessor for TUConversation);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = v1;
    v33 = v8;
    if ((v8 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v8 = v42;
      v9 = v43;
      v10 = v44;
      v11 = v45;
      v12 = v46;
    }

    else
    {
      v14 = -1 << *(v8 + 32);
      v9 = v8 + 56;
      v10 = ~v14;
      v15 = -v14;
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v12 = v16 & *(v8 + 56);

      v11 = 0;
    }

    v32 = v10;
    v1 = (v10 + 64) >> 6;
    v34 = (v2 + 1);
    v2 = &selRef_isRecordingAllowed;
    if (v8 < 0)
    {
      break;
    }

LABEL_11:
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (v12)
    {
LABEL_15:
      v20 = (v18 - 1) & v18;
      v13 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (v13)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v1)
      {
        goto LABEL_25;
      }

      v18 = *(v9 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    v3 = swift_once();
  }

  while (1)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21)
    {
      break;
    }

    v40 = v21;
    swift_dynamicCast();
    v13 = v41;
    v19 = v11;
    v20 = v12;
    if (!v41)
    {
      goto LABEL_26;
    }

LABEL_19:
    v39 = v11;
    if ([v13 v2[26]])
    {
      if ([v13 v2[26]] != 4)
      {
        if (![v13 avMode])
        {
          goto LABEL_26;
        }

        v22 = OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_expectedAVLessConversationUUIDs;
        v23 = v35;
        swift_beginAccess();
        v24 = *(v23 + v22);

        v25 = [v13 UUID];
        v36 = v12;
        v26 = v8;
        v27 = v7;
        v28 = v37;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        specialized Set.contains(_:)(v28, v24);
        LOBYTE(v25) = v29;
        v2 = &selRef_isRecordingAllowed;

        v30 = v28;
        v7 = v27;
        v8 = v26;
        (*v34)(v30, v38);
        if (v25)
        {
          goto LABEL_26;
        }
      }
    }

    v11 = v19;
    v12 = v20;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  outlined consume of Set<TUHandle>.Iterator._Variant();

  return v13;
}

unint64_t type metadata accessor for TUConversation()
{
  result = lazy cache variable for type metadata for TUConversation;
  if (!lazy cache variable for type metadata for TUConversation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversation);
  }

  return result;
}

id PlaceholderCallCenter.handoffEligibleConversation.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 608))())
  {
    return [*(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager) handoffEligibleConversation];
  }

  else
  {
    return 0;
  }
}

uint64_t Features.shouldEmbedSwapBanner.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    LOBYTE(v0) = 0;
  }

  else
  {
    lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI();
    v2 = OUTLINED_FUNCTION_12_53();
    OUTLINED_FUNCTION_8_68(v2);
  }

  return v0 & 1;
}

unint64_t lazy protocol witness table accessor for type Features.CallUI and conformance Features.CallUI()
{
  result = lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI;
  if (!lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI;
  if (!lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.CallUI and conformance Features.CallUI);
  }

  return result;
}

const char *Features.CallUI.feature.getter(char a1)
{
  result = "CallUI_DialPad";
  switch(a1)
  {
    case 1:
      result = "CallUI_Banners";
      break;
    case 2:
      result = "CallUI_EmbedSwapBanner";
      break;
    case 3:
      result = "CallUI_DynamicIsland_IncomingBannerOverSixUp";
      break;
    default:
      return result;
  }

  return result;
}

BOOL Features.isHeroImageEnabled.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 != 1;
}

uint64_t TUCallCenter.wantsCallWaiting.getter()
{
  if ([v0 currentAudioAndVideoCallCount] < 2)
  {
    return 0;
  }

  return TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
}

id static NameAndPhotoUtilities.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NameAndPhotoUtilities.shared;

  return v1;
}